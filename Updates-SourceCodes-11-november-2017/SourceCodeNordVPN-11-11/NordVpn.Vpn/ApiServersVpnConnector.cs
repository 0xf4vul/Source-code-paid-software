using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Settings;
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

		private readonly UserContext _userContext;

		private readonly IOpenVpnConfigsFileStorage _configsFileStorage;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		private readonly ISettings _settings;

		private readonly CyberSecHostsStorage _cyberSecHostsStorage;

		public ApiServersVpnConnector(IVpnServiceManager vpnServiceManager, ISettings settings, UserContext userContext, CyberSecHostsStorage cyberSecHostsStorage, IOpenVpnConfigsFileStorage configsFileStorage)
		{
			this._vpnServiceManager = vpnServiceManager;
			this._settings = settings;
			this._userContext = userContext;
			this._cyberSecHostsStorage = cyberSecHostsStorage;
			this._configsFileStorage = configsFileStorage;
		}

		[AsyncStateMachine(typeof(ApiServersVpnConnector.<Connect>d__7))]
		public Task Connect(GeographicalServer server)
		{
			ApiServersVpnConnector.<Connect>d__7 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.server = server;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<ApiServersVpnConnector.<Connect>d__7>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		private VpnProtocol ChooseVpnProtocol(GeographicalServer server, UserSettings userSettings)
		{
			if (server.get_SupportedProtocols().Contains(userSettings.get_VpnProtocol()))
			{
				return userSettings.get_VpnProtocol();
			}
			return server.get_SupportedProtocols().First<VpnProtocol>();
		}
	}
}
