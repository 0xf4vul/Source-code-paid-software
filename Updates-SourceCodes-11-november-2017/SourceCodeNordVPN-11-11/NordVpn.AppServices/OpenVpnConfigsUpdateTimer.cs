using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Utilities;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Threading;

namespace NordVpn.AppServices
{
	public class OpenVpnConfigsUpdateTimer
	{
		private static readonly AsyncLock _lock = new AsyncLock();

		private readonly DispatcherTimer _timer;

		private readonly IOpenVpnConfigsFileStorage _openVpnConfigsStorage;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		public OpenVpnConfigsUpdateTimer(IOpenVpnConfigsFileStorage openVpnConfigsStorage)
		{
			this._openVpnConfigsStorage = openVpnConfigsStorage;
			this._timer = new DispatcherTimer();
			this._timer.Tick += new EventHandler(this.UpdateConfigs);
		}

		public void Start(TimeSpan interval)
		{
			this._timer.Interval = interval;
			this._timer.Start();
		}

		public void Stop()
		{
			this._timer.Stop();
		}

		[AsyncStateMachine(typeof(OpenVpnConfigsUpdateTimer.<UpdateConfigs>d__7))]
		private void UpdateConfigs(object sender, EventArgs e)
		{
			OpenVpnConfigsUpdateTimer.<UpdateConfigs>d__7 <UpdateConfigs>d__;
			<UpdateConfigs>d__.<>4__this = this;
			<UpdateConfigs>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpdateConfigs>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpdateConfigs>d__.<>t__builder;
			<>t__builder.Start<OpenVpnConfigsUpdateTimer.<UpdateConfigs>d__7>(ref <UpdateConfigs>d__);
		}
	}
}
