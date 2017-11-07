using NordVpn.Application.Native;
using NordVpn.Properties;
using System;
using System.Threading;
using System.Windows;

namespace NordVpn.Application
{
	public static class SingleInstanceHelper
	{
		private static readonly Mutex Mutex = new Mutex(true, "{9BD2DD61-2465-4586-A9B1-4902194BC8B4}");

		public static void EnsureSingleAppInstance()
		{
			if (SingleInstanceHelper.Mutex.WaitOne(TimeSpan.Zero, true))
			{
				return;
			}
			IntPtr intPtr = User32.FindWindow(null, Resources.MainWindowTitle);
			if (intPtr == IntPtr.Zero)
			{
				Application.Current.Shutdown();
				return;
			}
			User32.SetForegroundWindow(intPtr);
			User32.ShowWindow(intPtr, User32.WindowShowStyle.SwRestore);
			Application.Current.Shutdown();
		}

		public static void ReleaseSingleInstanceLock()
		{
			SingleInstanceHelper.Mutex.Dispose();
		}
	}
}
