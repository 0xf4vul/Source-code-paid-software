using NordVpn.Core.Abstract.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Vpn
{
	public class VpnConnectionWatcher
	{
		private readonly IVpnConnectionManager _vpnConnectionManager;

		public VpnConnectionWatcher(IVpnConnectionManager vpnConnectionManager)
		{
			this._vpnConnectionManager = vpnConnectionManager;
		}

		[AsyncStateMachine(typeof(VpnConnectionWatcher.<DelayUntilReturnsStatus>d__2))]
		public Task<VpnConnectionStatus> DelayUntilReturnsStatus()
		{
			VpnConnectionWatcher.<DelayUntilReturnsStatus>d__2 <DelayUntilReturnsStatus>d__;
			<DelayUntilReturnsStatus>d__.<>4__this = this;
			<DelayUntilReturnsStatus>d__.<>t__builder = AsyncTaskMethodBuilder<VpnConnectionStatus>.Create();
			<DelayUntilReturnsStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnConnectionStatus> <>t__builder = <DelayUntilReturnsStatus>d__.<>t__builder;
			<>t__builder.Start<VpnConnectionWatcher.<DelayUntilReturnsStatus>d__2>(ref <DelayUntilReturnsStatus>d__);
			return <DelayUntilReturnsStatus>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnConnectionWatcher.<GetStatus>d__3))]
		private Task<VpnConnectionStatus> GetStatus()
		{
			VpnConnectionWatcher.<GetStatus>d__3 <GetStatus>d__;
			<GetStatus>d__.<>4__this = this;
			<GetStatus>d__.<>t__builder = AsyncTaskMethodBuilder<VpnConnectionStatus>.Create();
			<GetStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnConnectionStatus> <>t__builder = <GetStatus>d__.<>t__builder;
			<>t__builder.Start<VpnConnectionWatcher.<GetStatus>d__3>(ref <GetStatus>d__);
			return <GetStatus>d__.<>t__builder.Task;
		}
	}
}
