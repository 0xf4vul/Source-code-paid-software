using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using NordVpn.ServerList.Messages;
using NordVpn.Shared;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.P2P
{
	public sealed class P2PModalViewModel : AppScreen
	{
		private readonly IBrowser _browser;

		private readonly BestVpnServerConnector _vpnConnector;

		private readonly BestUserServerProvider _serverProvider;

		private readonly EventFacade _eventFacade;

		private GeographicalServer _bestP2PServer;

		public GeographicalServer BestP2PServer
		{
			get
			{
				return this._bestP2PServer;
			}
			set
			{
				base.Set<GeographicalServer>(ref this._bestP2PServer, value, "BestP2PServer");
			}
		}

		public P2PModalViewModel(EventFacade eventFacade, IBrowser browser, BestUserServerProvider serverProvider, BestVpnServerConnector vpnConnector)
		{
			this._eventFacade = eventFacade;
			this._serverProvider = serverProvider;
			this._browser = browser;
			this._vpnConnector = vpnConnector;
			this._serverProvider.add_ServersChanged(new EventHandler(this.OnServersChanged));
			this.set_DisplayName("Slow connection?");
		}

		[AsyncStateMachine(typeof(P2PModalViewModel.<ConnectToBestP2PServer>d__9))]
		public void ConnectToBestP2PServer()
		{
			P2PModalViewModel.<ConnectToBestP2PServer>d__9 <ConnectToBestP2PServer>d__;
			<ConnectToBestP2PServer>d__.<>4__this = this;
			<ConnectToBestP2PServer>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ConnectToBestP2PServer>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ConnectToBestP2PServer>d__.<>t__builder;
			<>t__builder.Start<P2PModalViewModel.<ConnectToBestP2PServer>d__9>(ref <ConnectToBestP2PServer>d__);
		}

		public void OpenServerList()
		{
			P2PServerCategory p2PServerCategory = this._serverProvider.GetCategories().FirstOrDefaultOfType<P2PServerCategory>();
			if (p2PServerCategory == null)
			{
				return;
			}
			this._eventFacade.Publish(new ServerlistRequestMessage());
			this._eventFacade.Publish(new NavigateToServersGroupViewMessage<Category>(p2PServerCategory));
			this.TryClose(null);
		}

		public void OpenArticle()
		{
			this._browser.Open("https://support.nordvpn.com/hc/en-us/articles/206939499-Peer-to-Peer-traffic-with-NordVPN");
		}

		public void Close()
		{
			this.TryClose(null);
		}

		private void OnServersChanged(object sender, EventArgs e)
		{
			this.BestP2PServer = this._serverProvider.GetBestByCategory<P2PServerCategory>();
		}
	}
}
