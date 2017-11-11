using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Users;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Auth
{
	public class BlockedApiLoginHandler
	{
		private readonly ILoginHandler _loginHandler;

		private readonly IVpnConnectionManager _connectionManager;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		private readonly UserContext _userContext;

		public BlockedApiLoginHandler(ILoginHandler loginHandler, IVpnConnectionManager connectionManager)
		{
			this._loginHandler = loginHandler;
			this._userContext = loginHandler.UserContext;
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
			if (e.get_IsAuthorizationError() && !this._userContext.get_Authenticated())
			{
				this._loginHandler.Logout();
				return;
			}
		}
	}
}
