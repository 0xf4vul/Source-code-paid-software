using NordVpn.Core.Abstract.Log;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Servers;
using NordVpn.Settings.Storage;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.AppServices
{
	public class AutoConnectManager
	{
		private readonly ILogger _logger;

		private readonly AppSettings _appSettings;

		private readonly BestVpnServerConnector _connector;

		private readonly IServerProvider _serverProvider;

		private readonly IVpnConnectionManager _connectionManager;

		public AutoConnectManager(BestVpnServerConnector connector, IVpnConnectionManager connectionManager, IServerProvider serverProvider, AppSettings appSettings, ILogger logger)
		{
			this._connector = connector;
			this._connectionManager = connectionManager;
			this._serverProvider = serverProvider;
			this._appSettings = appSettings;
			this._logger = logger;
		}

		[AsyncStateMachine(typeof(AutoConnectManager.<InitAutoConnect>d__6))]
		public Task InitAutoConnect()
		{
			AutoConnectManager.<InitAutoConnect>d__6 <InitAutoConnect>d__;
			<InitAutoConnect>d__.<>4__this = this;
			<InitAutoConnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<InitAutoConnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <InitAutoConnect>d__.<>t__builder;
			<>t__builder.Start<AutoConnectManager.<InitAutoConnect>d__6>(ref <InitAutoConnect>d__);
			return <InitAutoConnect>d__.<>t__builder.Task;
		}
	}
}
