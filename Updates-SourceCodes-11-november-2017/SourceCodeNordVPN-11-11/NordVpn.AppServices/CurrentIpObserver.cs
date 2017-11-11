using NordVpn.Core.Abstract;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.AppServices
{
	public class CurrentIpObserver
	{
		private readonly IIpProvider _ipProvider;

		private readonly VpnConnector _vpnConnector;

		private bool _isIpResolvingInProgress;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler ExternalIpResolveFailed;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<IpResolvedEventArgs> ExternalIpResolved;

		public CurrentIpObserver(IIpProvider ipProvider, VpnConnector vpnConnector)
		{
			this._ipProvider = ipProvider;
			this._vpnConnector = vpnConnector;
		}

		public void Start()
		{
			this._vpnConnector.VpnStateChanged += new EventHandler<VpnStateChangedEventArgs>(this.OnVpnStateChanged);
		}

		[AsyncStateMachine(typeof(CurrentIpObserver.<OnVpnStateChanged>d__11))]
		private void OnVpnStateChanged(object sender, VpnStateChangedEventArgs e)
		{
			CurrentIpObserver.<OnVpnStateChanged>d__11 <OnVpnStateChanged>d__;
			<OnVpnStateChanged>d__.<>4__this = this;
			<OnVpnStateChanged>d__.e = e;
			<OnVpnStateChanged>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnVpnStateChanged>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnVpnStateChanged>d__.<>t__builder;
			<>t__builder.Start<CurrentIpObserver.<OnVpnStateChanged>d__11>(ref <OnVpnStateChanged>d__);
		}

		private void RaiseIpResolved(string ip)
		{
			EventHandler<IpResolvedEventArgs> expr_06 = this.ExternalIpResolved;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new IpResolvedEventArgs(ip));
		}

		private void RaiseIpResolveFailed()
		{
			EventHandler expr_06 = this.ExternalIpResolveFailed;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}
	}
}
