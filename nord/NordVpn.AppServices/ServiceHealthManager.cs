using Liberation.OS;
using Liberation.OS.Processing;
using Liberation.OS.Win32Services;
using NordVpn.Application;
using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;

namespace NordVpn.AppServices
{
	public class ServiceHealthManager
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ServiceHealthManager.<>c <>9 = new ServiceHealthManager.<>c();

			public static Action<bool> <>9__3_0;

			internal void <EnsureServiceHealthy>b__3_0(bool cancelled)
			{
				SingleInstanceHelper.ReleaseSingleInstanceLock();
				Environment.Exit(0);
			}
		}

		private readonly Win32ServiceManager _serviceManager;

		private readonly ProcessStarter _processStarter;

		public ServiceHealthManager(Win32ServiceManager serviceManager, ProcessStarter processStarter)
		{
			this._serviceManager = serviceManager;
			this._processStarter = processStarter;
		}

		public void EnsureServiceHealthy(string serviceExePath)
		{
			if (this._serviceManager.IsServiceRunning())
			{
				return;
			}
			Action<bool> arg_2D_0;
			if ((arg_2D_0 = ServiceHealthManager.<>c.<>9__3_0) == null)
			{
				arg_2D_0 = (ServiceHealthManager.<>c.<>9__3_0 = new Action<bool>(ServiceHealthManager.<>c.<>9.<EnsureServiceHealthy>b__3_0));
			}
			UacHelper.EnsureElevated(arg_2D_0);
			if (this._serviceManager.IsServiceInstalled())
			{
				this._serviceManager.EnsureServiceRunning();
				return;
			}
			this.InstallService(serviceExePath);
		}

		private void InstallService(string serviceExePath)
		{
			if (!this._processStarter.Start(new ProcessStartInfo
			{
				Verb = "runas",
				Arguments = "install",
				FileName = serviceExePath
			}).get_Succeeded())
			{
				throw new Exception("Failed to install service");
			}
		}
	}
}
