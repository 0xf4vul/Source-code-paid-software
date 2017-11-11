using NordVpn.Core.Abstract.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Threading;

namespace NordVpn.Vpn
{
	public class VpnConnectionSpeedTracker
	{
		private readonly IVpnConnectionObserver _vpnConnectionObserver;

		private readonly DispatcherTimer _timer;

		private double _lastBytesIn;

		private double _lastBytesOut;

		private bool _isSpeedAvailable;

		public EventHandler<VpnConnectionSpeedChangeEventArgs> SpeedChanged;

		public VpnConnectionSpeedTracker(IVpnConnectionManager vpnConnectionManager, IVpnConnectionObserver vpnConnectionObserver)
		{
			this._vpnConnectionObserver = vpnConnectionObserver;
			vpnConnectionManager.add_VpnStatusChanged(new EventHandler<VpnConnectionStatusChangeEventArgs>(this.VpnStatusChanged));
			this._timer = new DispatcherTimer
			{
				Interval = TimeSpan.FromSeconds(1.0)
			};
			this._timer.Tick += new EventHandler(this.UpdateSpeed);
		}

		private void VpnStatusChanged(object sender, VpnConnectionStatusChangeEventArgs e)
		{
			this._isSpeedAvailable = false;
			if (e.get_Status().get_State() == 2)
			{
				this._isSpeedAvailable = false;
			}
			else if (e.get_Status().get_State() == 3)
			{
				this._isSpeedAvailable = true;
			}
			else
			{
				this._isSpeedAvailable = false;
			}
			if (this._isSpeedAvailable)
			{
				this._timer.Start();
			}
			else
			{
				this._timer.Stop();
			}
			this.RaiseSpeedChanged(new VpnConnectionSpeedChangeEventArgs(this._isSpeedAvailable));
		}

		[AsyncStateMachine(typeof(VpnConnectionSpeedTracker.<UpdateSpeed>d__8))]
		private void UpdateSpeed(object sender, EventArgs e)
		{
			VpnConnectionSpeedTracker.<UpdateSpeed>d__8 <UpdateSpeed>d__;
			<UpdateSpeed>d__.<>4__this = this;
			<UpdateSpeed>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpdateSpeed>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpdateSpeed>d__.<>t__builder;
			<>t__builder.Start<VpnConnectionSpeedTracker.<UpdateSpeed>d__8>(ref <UpdateSpeed>d__);
		}

		private void RaiseSpeedChanged(VpnConnectionSpeedChangeEventArgs args)
		{
			EventHandler<VpnConnectionSpeedChangeEventArgs> expr_06 = this.SpeedChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, args);
		}
	}
}
