using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Timers;
using System.Windows;

namespace NordVpn.Updater
{
	public class WinSparkleUpdater
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly WinSparkleUpdater.<>c <>9 = new WinSparkleUpdater.<>c();

			public static Action <>9__8_0;

			internal void <RequestShutdown>b__8_0()
			{
				Application.Current.Shutdown();
			}
		}

		private readonly object _locker = new object();

		private readonly Timer _timer;

		private readonly WinSparkle.ShutdownRequestCallback _shutdownRequestCallback;

		public WinSparkleUpdater()
		{
			this._timer = new Timer();
			this._timer.Elapsed += new ElapsedEventHandler(this.OnTimerElapsed);
			this._timer.AutoReset = true;
			this._shutdownRequestCallback = new WinSparkle.ShutdownRequestCallback(this.RequestShutdown);
		}

		public void Initialize(string updateUri, TimeSpan updateCheckInterval, TimeSpan periodicUpdateCheckInterval)
		{
			WinSparkle.SetAppcastUrl(updateUri);
			AssemblyName name = Assembly.GetExecutingAssembly().GetName();
			WinSparkle.SetAutomaticCheckForUpdates(true);
			WinSparkle.SetAppDetails(name.Name, name.Name, name.Version.ToString());
			WinSparkle.SetShutdownRequestCallback(this._shutdownRequestCallback);
			WinSparkle.SetUpdateCheckInterval(updateCheckInterval);
			WinSparkle.Init();
			this._timer.Interval = periodicUpdateCheckInterval.TotalMilliseconds;
			this._timer.Start();
		}

		public void CheckForUpdateInBackground()
		{
			WinSparkle.CheckUpdateWithoutUI();
		}

		public void CheckForUpdate()
		{
			WinSparkle.CheckUpdateWithUI();
		}

		public void Cleanup()
		{
			WinSparkle.Cleanup();
		}

		private void RequestShutdown()
		{
			Action arg_1F_0;
			if ((arg_1F_0 = WinSparkleUpdater.<>c.<>9__8_0) == null)
			{
				arg_1F_0 = (WinSparkleUpdater.<>c.<>9__8_0 = new Action(WinSparkleUpdater.<>c.<>9.<RequestShutdown>b__8_0));
			}
			Action method = arg_1F_0;
			Application.Current.Dispatcher.BeginInvoke(method, new object[0]);
		}

		private void OnTimerElapsed(object sender, ElapsedEventArgs e)
		{
			object locker = this._locker;
			lock (locker)
			{
				this.CheckForUpdateInBackground();
			}
		}
	}
}
