using NordVpn.Core.Abstract.P2P;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Threading;

namespace NordVpn.P2P
{
	public class P2PTrafficStatusObserver
	{
		private readonly VpnConnector _vpnConnector;

		private readonly IP2PTrafficDetector _p2PTraficDetector;

		private readonly DispatcherTimer _timer;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler P2PTrafficRerouted;

		public P2PTrafficStatusObserver(VpnConnector vpnConnector, IP2PTrafficDetector p2PTraficDetector)
		{
			this._vpnConnector = vpnConnector;
			this._p2PTraficDetector = p2PTraficDetector;
			this._timer = new DispatcherTimer();
			this._timer.Interval = TimeSpan.FromMinutes(1.0);
			this._timer.Tick += new EventHandler(this.OnTimeElapsed);
		}

		public void Start()
		{
			this._vpnConnector.VpnStateChangeChanged += new EventHandler<VpnStateChangedEventArgs>(this.OnVpnStateChanged);
		}

		private void OnVpnStateChanged(object sender, VpnStateChangedEventArgs e)
		{
			if (e.VpnState == 3)
			{
				this._timer.Start();
				return;
			}
			this._timer.Stop();
		}

		[AsyncStateMachine(typeof(P2PTrafficStatusObserver.<OnTimeElapsed>d__9))]
		private void OnTimeElapsed(object sender, EventArgs e)
		{
			P2PTrafficStatusObserver.<OnTimeElapsed>d__9 <OnTimeElapsed>d__;
			<OnTimeElapsed>d__.<>4__this = this;
			<OnTimeElapsed>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnTimeElapsed>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnTimeElapsed>d__.<>t__builder;
			<>t__builder.Start<P2PTrafficStatusObserver.<OnTimeElapsed>d__9>(ref <OnTimeElapsed>d__);
		}

		private void RaiseP2PTrafficRerouted()
		{
			EventHandler expr_06 = this.P2PTrafficRerouted;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}
	}
}
