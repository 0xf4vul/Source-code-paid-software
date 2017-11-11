using NordVpn.Application;
using NordVpn.AppServices;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Geographical;
using NordVpn.Core.Models.Settings;
using NordVpn.Infrastructure.Api;
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

		private readonly ISettings _settings;

		private readonly UserContext _userContext;

		private readonly EventFacade _eventFacade;

		private ServerViewModel _server;

		private VpnState _vpnState;

		private double _downloadSpeed;

		private double _uploadSpeed;

		private readonly FavouritesManager _favouritesManager;

		private readonly ApiServerProvider _apiServerProvider;

		public ServerViewModel Server
		{
			get
			{
				return this._server;
			}
			set
			{
				this.Set<ServerViewModel>(ref this._server, value, "Server");
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
				this.Set<double>(ref this._downloadSpeed, value, "DownloadSpeed");
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
				this.Set<double>(ref this._uploadSpeed, value, "UploadSpeed");
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
				this.Set<VpnState>(ref this._vpnState, value, "VpnState");
			}
		}

		public ServerSidePanelViewModel(VpnConnector vpnConnector, BestUserServerProvider bestServerProvider, ApiServerProvider apiServerProvider, VpnConnectionSpeedTracker speedTracker, ISettings userSettings, FavouritesManager favouritesManager, UserContext userContext, EventFacade eventFacade)
		{
			this._vpnConnector = vpnConnector;
			this._bestServerProvider = bestServerProvider;
			this._apiServerProvider = apiServerProvider;
			this._settings = userSettings;
			this._favouritesManager = favouritesManager;
			this._userContext = userContext;
			this._eventFacade = eventFacade;
			this._bestServerProvider.ServersChanged += new EventHandler(this.OnServersChanged);
			this._vpnConnector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.OnServerConnectionStatusChanged);
			this._userContext.add_UserChanged(delegate(object s, UserEventArgs e)
			{
				this.UpdateCurrentServerViewModel();
			});
			this._favouritesManager.FavouriteServersChanged += new EventHandler<FavouriteServersChangedEventArgs>(this.ChangeCurrentServerFavouriteStatus);
			speedTracker.SpeedChanged = (EventHandler<VpnConnectionSpeedChangeEventArgs>)Delegate.Combine(speedTracker.SpeedChanged, new EventHandler<VpnConnectionSpeedChangeEventArgs>(this.UpdateSpeeds));
			this._settings.Observe<UserSettings, DistanceUnits>((UserSettings s) => s.DistanceUnits, delegate(DistanceUnits d)
			{
				this.UpdateCurrentServerViewModel();
			});
		}

		[AsyncStateMachine(typeof(ServerSidePanelViewModel.<Connect>d__24))]
		public void Connect()
		{
			ServerSidePanelViewModel.<Connect>d__24 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<ServerSidePanelViewModel.<Connect>d__24>(ref <Connect>d__);
		}

		public void ChangeFavouriteStatus()
		{
			if (this.Server == null)
			{
				return;
			}
			this.Server.ChangeFavouriteStatus();
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this.Server = (VpnStateExtensions.IsUnderConnection(this.VpnState) ? this.CreatedUpdatedCurrentServerViewModel() : this.CreateBestServerViewModel());
		}

		private void OnServersChanged(object sender, EventArgs e)
		{
			this.Server = (VpnStateExtensions.IsUnderConnection(this.VpnState) ? this.CreatedUpdatedCurrentServerViewModel() : this.CreateBestServerViewModel());
		}

		private void OnServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			this.VpnState = e.State;
			GeographicalServer newestServer = this.GetNewestServer(e.Server);
			this.Server = (VpnStateExtensions.IsUnderConnection(this.VpnState) ? this.CreateServerViewModel(newestServer) : this.CreateBestServerViewModel());
		}

		private void UpdateSpeeds(object sender, VpnConnectionSpeedChangeEventArgs e)
		{
			this.DownloadSpeed = e.DownloadSpeed;
			this.UploadSpeed = e.UploadSpeed;
		}

		private void ChangeCurrentServerFavouriteStatus(object sender, FavouriteServersChangedEventArgs e)
		{
			if (this.Server == null)
			{
				return;
			}
			this.Server.ChangeFavouriteStatusWithoutStatusChangeNotify(e.get_Servers().Contains(this.Server.Server));
		}

		private void SaveFavourite(object sender, EventArgs<bool> e)
		{
			ServerViewModel serverViewModel = (ServerViewModel)sender;
			this._favouritesManager.SaveFavourite(serverViewModel.Server, e.get_Data());
		}

		private ServerViewModel CreatedUpdatedCurrentServerViewModel()
		{
			if (this.Server == null)
			{
				return null;
			}
			GeographicalServer newestServer = this.GetNewestServer(this.Server.Server);
			return this.CreateServerViewModel(newestServer);
		}

		private ServerViewModel CreateBestServerViewModel()
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
			expr_0F.FavouriteStatusChanged += new EventHandler<EventArgs<bool>>(this.SaveFavourite);
			return expr_0F;
		}

		private void UpdateCurrentServerViewModel()
		{
			this.Server = this.CreatedUpdatedCurrentServerViewModel();
		}

		private DistanceValue GetDistance(GeographicalServer server)
		{
			return new DistanceValue(server.get_Coordinates().GetDistance(this._userContext.get_CurrentUser().get_Coordinates()), this._settings.Of<UserSettings>().get_DistanceUnits());
		}

		[Obsolete("We always need to get newest server object to display updated server loadsSo ApiServerProvider is used. TODO: we need to remove ApiServerProvider from here.And think how to implement this.")]
		private GeographicalServer GetNewestServer(GeographicalServer server)
		{
			GeographicalServer geographicalServer = this._apiServerProvider.GetServers().FirstOrDefault((GeographicalServer s) => s.Equals(server));
			if (geographicalServer == null)
			{
				return server;
			}
			return geographicalServer;
		}
	}
}
