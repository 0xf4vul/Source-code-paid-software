using NordVpn.Core.Abstract;
using NordVpn.Core.Models;
using NordVpn.Vpn.OpenVPNService;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Vpn
{
	public class CustomConfigsVpnConnector
	{
		private readonly IVpnServiceManager _vpnServiceManager;

		private readonly IUserContext _userManager;

		public CustomConfigsVpnConnector(IVpnServiceManager vpnServiceManager, IUserContext userManager)
		{
			this._vpnServiceManager = vpnServiceManager;
			this._userManager = userManager;
		}

		[AsyncStateMachine(typeof(CustomConfigsVpnConnector.<Connect>d__3))]
		public Task Connect(CustomConfigurationServer server)
		{
			CustomConfigsVpnConnector.<Connect>d__3 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.server = server;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<CustomConfigsVpnConnector.<Connect>d__3>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}
	}
}
