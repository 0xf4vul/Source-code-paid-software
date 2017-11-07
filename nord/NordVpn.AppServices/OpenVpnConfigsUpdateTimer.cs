using NordVpn.Core.Abstract.Log;
using System;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Timers;

namespace NordVpn.AppServices
{
	public class OpenVpnConfigsUpdateTimer
	{
		private static readonly SemaphoreSlim Semaphore = new SemaphoreSlim(1, 1);

		private readonly System.Timers.Timer _timer;

		private readonly ILogger _logger;

		private readonly OpenVpnConfigsDownloadManager _openVpnConfigsManager;

		public OpenVpnConfigsUpdateTimer(OpenVpnConfigsDownloadManager openVpnConfigsManager, ILogger logger)
		{
			this._openVpnConfigsManager = openVpnConfigsManager;
			this._logger = logger;
			this._timer = new System.Timers.Timer();
			this._timer.AutoReset = true;
			this._timer.Elapsed += new ElapsedEventHandler(this.OnElapsed);
		}

		[AsyncStateMachine(typeof(OpenVpnConfigsUpdateTimer.<OnElapsed>d__5))]
		private void OnElapsed(object sender, ElapsedEventArgs e)
		{
			OpenVpnConfigsUpdateTimer.<OnElapsed>d__5 <OnElapsed>d__;
			<OnElapsed>d__.<>4__this = this;
			<OnElapsed>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnElapsed>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnElapsed>d__.<>t__builder;
			<>t__builder.Start<OpenVpnConfigsUpdateTimer.<OnElapsed>d__5>(ref <OnElapsed>d__);
		}

		public void Start(TimeSpan interval)
		{
			this._timer.Interval = interval.TotalMilliseconds;
			if (!this._timer.Enabled)
			{
				this._timer.Start();
			}
		}

		public void Stop()
		{
			this._timer.Stop();
		}
	}
}
