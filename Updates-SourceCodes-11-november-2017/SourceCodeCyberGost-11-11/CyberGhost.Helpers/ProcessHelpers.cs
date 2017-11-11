using CyberGhost.Communication;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;

namespace CyberGhost.Helpers
{
	internal static class ProcessHelpers
	{
		private static List<PeLauncherOptions> _reenableLauncherOperations;

		public static void ReenableProcessWatcherDebugger()
		{
			if (ProcessHelpers._reenableLauncherOperations != null)
			{
				List<PeLauncherOptions> reenableLauncherOperations = ProcessHelpers._reenableLauncherOperations;
				lock (reenableLauncherOperations)
				{
					foreach (PeLauncherOptions current in ProcessHelpers._reenableLauncherOperations)
					{
						ObjectHolder.CyberGhostCom.SetPeLauncherState(current, 1);
					}
					ProcessHelpers._reenableLauncherOperations.Clear();
				}
			}
		}

		public static void StartProcessListAndDisableDebugger(List<ProcessStartInfo> aProcessList)
		{
			using (List<ProcessStartInfo>.Enumerator enumerator = aProcessList.GetEnumerator())
			{
				if (enumerator.MoveNext())
				{
					ProcessStartInfo current = enumerator.Current;
					string fileName = Path.GetFileName(current.FileName);
					current.UseShellExecute = false;
					PeLauncherOptions peLauncherOptions = new PeLauncherOptions
					{
						ExecuteableName = fileName
					};
					ObjectHolder.CyberGhostCom.SetPeLauncherState(peLauncherOptions, 0);
					try
					{
						Process.Start(current);
					}
					catch (Exception)
					{
					}
					if (ProcessHelpers._reenableLauncherOperations == null)
					{
						ProcessHelpers._reenableLauncherOperations = new List<PeLauncherOptions>();
					}
					List<PeLauncherOptions> reenableLauncherOperations = ProcessHelpers._reenableLauncherOperations;
					lock (reenableLauncherOperations)
					{
						ProcessHelpers._reenableLauncherOperations.Add(peLauncherOptions);
					}
				}
			}
		}
	}
}
