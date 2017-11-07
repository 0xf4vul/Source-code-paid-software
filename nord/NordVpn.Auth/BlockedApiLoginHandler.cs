using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Log;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Vpn;
using NordVpn.Vpn.OpenVPNService;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Auth
{
	public class BlockedApiLoginHandler
	{
		private readonly ILoginHandler _loginHandler;

		private readonly IUserContext _userContext;

		private readonly ILogger _logger;

		private readonly IVpnConnectionManager _connectionManager;

		public BlockedApiLoginHandler(ILoginHandler loginHandler, IUserContext userContext, ILogger logger, IVpnConnectionManager connectionManager)
		{
			this._loginHandler = loginHandler;
			this._userContext = userContext;
			this._logger = logger;
			this._connectionManager = connectionManager;
		}

		public void Start()
		{
			this._connectionManager.add_VpnStatusChanged(new EventHandler<VpnConnectionStatusChangeEventArgs>(this.OnVpnStatusChanged));
			this._connectionManager.add_VpnErrorOccured(new EventHandler<VpnErrorEventArgs>(this.OnVpnErrorOccured));
		}

		[AsyncStateMachine(typeof(BlockedApiLoginHandler.<OnVpnStatusChanged>d__6))]
		private void OnVpnStatusChanged(object sender, VpnConnectionStatusChangeEventArgs e)
		{
			BlockedApiLoginHandler.<OnVpnStatusChanged>d__6 <OnVpnStatusChanged>d__;
			<OnVpnStatusChanged>d__.<>4__this = this;
			<OnVpnStatusChanged>d__.e = e;
			<OnVpnStatusChanged>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnVpnStatusChanged>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnVpnStatusChanged>d__.<>t__builder;
			<>t__builder.Start<BlockedApiLoginHandler.<OnVpnStatusChanged>d__6>(ref <OnVpnStatusChanged>d__);
		}

		private void OnVpnErrorOccured(object sender, VpnErrorEventArgs e)
		{
			if (((OpenVpnErrorOccuredEventArgs)e).Error == OpenVpnError.AuthorizationError && !this._userContext.get_Authenticated())
			{
				this._loginHandler.Logout();
				return;
			}
		}
	}
}
