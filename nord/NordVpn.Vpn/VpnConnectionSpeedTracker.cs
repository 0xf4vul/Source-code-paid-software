using NordVpn.Core.Abstract.Vpn;
using System;
using System.ServiceModel;
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
			this._timer = new DispatcherTimer();
			this._timer.Interval = TimeSpan.FromSeconds(1.0);
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

		private void UpdateSpeed(object sender, EventArgs e)
		{
			Bandwidth connectionSpeed;
			try
			{
				connectionSpeed = this._vpnConnectionObserver.GetConnectionSpeed();
			}
			catch (CommunicationException)
			{
				return;
			}
			catch (TimeoutException)
			{
				return;
			}
			double bytesIn = connectionSpeed.get_BytesIn();
			double bytesOut = connectionSpeed.get_BytesOut();
			double val = bytesIn - this._lastBytesIn;
			this._lastBytesIn = bytesIn;
			double val2 = bytesOut - this._lastBytesOut;
			this._lastBytesOut = bytesOut;
			this.RaiseSpeedChanged(new VpnConnectionSpeedChangeEventArgs(this._isSpeedAvailable, Math.Max(0.0, val), Math.Max(0.0, val2)));
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
