using NordVpn.Application;
using NordVpn.Common;
using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Geographical;
using NordVpn.Vpn;
using System;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels
{
	public class ServerSidePanelViewModel : AppScreen
	{
		private readonly VpnConnector _vpnConnector;

		private readonly BestUserServerProvider _bestServerProvider;

		private readonly UserPreferences _userPreferences;

		private readonly IUserContext _userContext;

		private readonly EventFacade _eventFacade;

		private ServerViewModel _server;

		private VpnState _vpnState;

		private double _downloadSpeed;

		private double _uploadSpeed;

		public ServerViewModel Server
		{
			get
			{
				return this._server;
			}
			set
			{
				base.Set<ServerViewModel>(ref this._server, value, "Server");
			}
		}

		public double DownloadSpeed
		{
			get
			{
				return this._downloadSpeed;
			}
			set
			{
				base.Set<double>(ref this._downloadSpeed, value, "DownloadSpeed");
			}
		}

		public double UploadSpeed
		{
			get
			{
				return this._uploadSpeed;
			}
			set
			{
				base.Set<double>(ref this._uploadSpeed, value, "UploadSpeed");
			}
		}

		public VpnState VpnState
		{
			get
			{
				return this._vpnState;
			}
			set
			{
				base.Set<VpnState>(ref this._vpnState, value, "VpnState");
			}
		}

		public ServerSidePanelViewModel(VpnConnector vpnConnector, BestUserServerProvider bestServerProvider, VpnConnectionSpeedTracker speedTracker, UserPreferences userPreferences, IUserContext userContext, EventFacade eventFacade)
		{
			this._vpnConnector = vpnConnector;
			this._bestServerProvider = bestServerProvider;
			this._userPreferences = userPreferences;
			this._userContext = userContext;
			this._eventFacade = eventFacade;
			this._bestServerProvider.add_ServersChanged(new EventHandler(this.OnServersChanged));
			this._vpnConnector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.OnServerConnectionStatusChanged);
			this._userPreferences.add_DistanceUnitsChanged(new EventHandler<DistanceUnitsChangedEventArgs>(this.OnDistanceUnitsChanged));
			this._userContext.add_UserChanged(new EventHandler<UserEventArgs>(this.OnUserChanged));
			this._userContext.add_FavouritesChanged(new EventHandler<FavouriteServersChangedEventArgs>(this.OnFavouritesChanged));
			speedTracker.SpeedChanged = (EventHandler<VpnConnectionSpeedChangeEventArgs>)Delegate.Combine(speedTracker.SpeedChanged, new EventHandler<VpnConnectionSpeedChangeEventArgs>(this.OnVpnSpeedChanged));
		}

		[AsyncStateMachine(typeof(ServerSidePanelViewModel.<Connect>d__22))]
		public void Connect()
		{
			ServerSidePanelViewModel.<Connect>d__22 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<ServerSidePanelViewModel.<Connect>d__22>(ref <Connect>d__);
		}

		public void ChangeFavouriteStatus()
		{
			if (this.Server == null)
			{
				return;
			}
			this.Server.ChangeFavouriteStatus();
		}

		private void OnServersChanged(object sender, EventArgs e)
		{
			if (this.VpnState != 3 && this.VpnState != 2)
			{
				this.Server = this.CreateBestUserServerModel();
			}
		}

		private void OnDistanceUnitsChanged(object sender, DistanceUnitsChangedEventArgs e)
		{
			if (this.Server == null)
			{
				return;
			}
			this.Server.Distance = this.GetDistance(this.Server.Server);
			base.NotifyOfPropertyChange<ServerViewModel>(() => this.Server);
		}

		private void OnServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			this.VpnState = e.State;
			if (this.VpnState != 2)
			{
				if (this.VpnState != 3)
				{
					this.Server = this.CreateBestUserServerModel();
					return;
				}
			}
			this.Server = this.CreateServerViewModel(e.Server);
		}

		private void OnVpnSpeedChanged(object sender, VpnConnectionSpeedChangeEventArgs e)
		{
			this.DownloadSpeed = e.DownloadSpeed;
			this.UploadSpeed = e.UploadSpeed;
		}

		private void OnUserChanged(object sender, UserEventArgs e)
		{
			if (this.Server == null)
			{
				return;
			}
			this.Server.Distance = this.GetDistance(this.Server.Server);
		}

		private void OnFavouritesChanged(object sender, FavouriteServersChangedEventArgs e)
		{
			if (this.Server == null)
			{
				return;
			}
			this.Server.ChangeFavouriteStatusWithoutStatusChangeNotify(e.get_Servers().Contains(this.Server.Server));
		}

		private void OnServerFavouriteStatusChanged(object sender, DataEventArgs<bool> e)
		{
			ServerViewModel serverViewModel = (ServerViewModel)sender;
			this._userContext.get_CurrentUser().UpdateFavourite(serverViewModel.Server, e.Data);
		}

		private ServerViewModel CreateBestUserServerModel()
		{
			GeographicalServer bestServer = this._bestServerProvider.GetBestServer();
			if (bestServer == null)
			{
				return null;
			}
			return this.CreateServerViewModel(bestServer);
		}

		private ServerViewModel CreateServerViewModel(GeographicalServer server)
		{
			DistanceValue distance = this.GetDistance(server);
			ServerViewModel expr_0F = new ServerViewModel(server, distance);
			expr_0F.IsFavourite = this._userContext.get_CurrentUser().IsFavourite(server);
			expr_0F.FavouriteStatusChanged += new EventHandler<DataEventArgs<bool>>(this.OnServerFavouriteStatusChanged);
			return expr_0F;
		}

		private DistanceValue GetDistance(GeographicalServer server)
		{
			return new DistanceValue(server.get_Coordinates().GetDistance(this._userContext.get_CurrentUser().get_Coordinates()), this._userPreferences.get_DistanceUnits());
		}
	}
}
