using NordVpn.Core.Models;
using NordVpn.Shared;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Search.ViewModels
{
	public class ServerSearchResultViewModel : SearchResultViewModel
	{
		private readonly GeographicalServer _server;

		private readonly VpnConnector _connector;

		public bool IsOverloaded
		{
			get
			{
				return this._server.get_IsOverloaded();
			}
		}

		public ServerSearchResultViewModel(GeographicalServer server, VpnConnector connector)
		{
			Guard.NotNull<GeographicalServer>(server, "server");
			this._server = server;
			this._connector = connector;
			base.Name = server.get_Name();
		}

		[AsyncStateMachine(typeof(ServerSearchResultViewModel.<ConnectAsync>d__5))]
		public override Task ConnectAsync()
		{
			ServerSearchResultViewModel.<ConnectAsync>d__5 <ConnectAsync>d__;
			<ConnectAsync>d__.<>4__this = this;
			<ConnectAsync>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ConnectAsync>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ConnectAsync>d__.<>t__builder;
			<>t__builder.Start<ServerSearchResultViewModel.<ConnectAsync>d__5>(ref <ConnectAsync>d__);
			return <ConnectAsync>d__.<>t__builder.Task;
		}
	}
}
