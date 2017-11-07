using NordVpn.AppServices;
using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models;
using NordVpn.CyberSec;
using NordVpn.Vpn.OpenVPNService;
using System;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Vpn
{
	public class ApiServersVpnConnector
	{
		private readonly IVpnServiceManager _vpnServiceManager;

		private readonly IUserContext _userContext;

		private readonly CyberSecManager _cyberSecManager;

		private readonly OpenVpnConfigsDownloadManager _downloadManager;

		private readonly UserPreferences _userPreferences;

		public ApiServersVpnConnector(IVpnServiceManager vpnServiceManager, UserPreferences userPreferences, IUserContext userContext, CyberSecManager cyberSecManager, OpenVpnConfigsDownloadManager downloadManager)
		{
			this._vpnServiceManager = vpnServiceManager;
			this._userPreferences = userPreferences;
			this._userContext = userContext;
			this._cyberSecManager = cyberSecManager;
			this._downloadManager = downloadManager;
		}

		[AsyncStateMachine(typeof(ApiServersVpnConnector.<Connect>d__6))]
		public Task Connect(GeographicalServer server)
		{
			ApiServersVpnConnector.<Connect>d__6 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.server = server;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<ApiServersVpnConnector.<Connect>d__6>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		private VpnProtocol ChooseVpnProtocol(GeographicalServer server)
		{
			if (server.get_SupportedProtocols().Contains(this._userPreferences.get_VpnProtocol()))
			{
				return this._userPreferences.get_VpnProtocol();
			}
			return server.get_SupportedProtocols().First<VpnProtocol>();
		}
	}
}
