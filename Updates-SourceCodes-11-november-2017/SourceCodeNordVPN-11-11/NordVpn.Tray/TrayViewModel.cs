using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Settings;
using NordVpn.Expiration;
using NordVpn.Expiration.Messages;
using NordVpn.P2P;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Tray
{
	public class TrayViewModel : AppScreen, IHandle<TrayNotificationCloseRequestedMessage>, IHandle
	{
		private readonly UserContext _userManager;

		private readonly EventFacade _eventFacade;

		private readonly BestVpnServerConnector _connector;

		private readonly ISettings _settings;

		private readonly IApplication _application;

		private readonly IMessageBoxService _messageBoxService;

		private bool _isConnecting;

		private bool _showQuickConnect;

		private bool _showDisconnect;

		private bool _showCancelConnecting;

		private VpnState _vpnState;

		private string _currentConnection;

		private VpnState _previousState;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<TrayNotificationEventArgs> TrayNotificationRequested;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler PopupNotificationRequested;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler PopupCloseRequested;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler ActivateAppRequested;

		public bool IsConnecting
		{
			get
			{
				return this._isConnecting;
			}
			set
			{
				this.Set<bool>(ref this._isConnecting, value, "IsConnecting");
			}
		}

		public bool ShowQuickConnect
		{
			get
			{
				return this._showQuickConnect;
			}
			set
			{
				this.Set<bool>(ref this._showQuickConnect, value, "ShowQuickConnect");
			}
		}

		public bool ShowDisconnect
		{
			get
			{
				return this._showDisconnect;
			}
			set
			{
				this.Set<bool>(ref this._showDisconnect, value, "ShowDisconnect");
			}
		}

		public bool ShowCancelConnecting
		{
			get
			{
				return this._showCancelConnecting;
			}
			set
			{
				this.Set<bool>(ref this._showCancelConnecting, value, "ShowCancelConnecting");
			}
		}

		public string CurrentConnection
		{
			get
			{
				return this._currentConnection;
			}
			set
			{
				this.Set<string>(ref this._currentConnection, value, "CurrentConnection");
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

		public bool CanConnectQuickly
		{
			get
			{
				return !this.IsConnecting;
			}
		}

		public TrayViewModel(BestVpnServerConnector connector, EventFacade eventFacade, UserContext userManager, ISettings settings, ExpiredMembershipObserver expiredMembershipObserver, P2PTrafficStatusObserver p2pTrafficStatusObserver, IApplication application, IMessageBoxService messageBoxService)
		{
			this._connector = connector;
			this._eventFacade = eventFacade;
			this._userManager = userManager;
			this._settings = settings;
			p2pTrafficStatusObserver.P2PTrafficRerouted += new EventHandler(this.OnP2PTrafficRerouted);
			expiredMembershipObserver.ForegroundNotificationNeeded += new EventHandler(this.OnForegroundNotificationNeeded);
			this._application = application;
			this._messageBoxService = messageBoxService;
			this._application.ForegoundStatusChanged += new EventHandler<EventArgs<bool>>(this.OnForegroundStatusChanged);
			this._userManager.add_UserChanged(new EventHandler<UserEventArgs>(this.OnUserChanged));
			this._connector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.OnVpnStatusChanged);
		}

		[AsyncStateMachine(typeof(TrayViewModel.<Disconnect>d__44))]
		public void Disconnect()
		{
			TrayViewModel.<Disconnect>d__44 <Disconnect>d__;
			<Disconnect>d__.<>4__this = this;
			<Disconnect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Disconnect>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Disconnect>d__.<>t__builder;
			<>t__builder.Start<TrayViewModel.<Disconnect>d__44>(ref <Disconnect>d__);
		}

		[AsyncStateMachine(typeof(TrayViewModel.<CancelConnecting>d__45))]
		public void CancelConnecting()
		{
			TrayViewModel.<CancelConnecting>d__45 <CancelConnecting>d__;
			<CancelConnecting>d__.<>4__this = this;
			<CancelConnecting>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<CancelConnecting>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <CancelConnecting>d__.<>t__builder;
			<>t__builder.Start<TrayViewModel.<CancelConnecting>d__45>(ref <CancelConnecting>d__);
		}

		public void ActivateApp()
		{
			EventHandler expr_06 = this.ActivateAppRequested;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}

		[AsyncStateMachine(typeof(TrayViewModel.<ConnectQuickly>d__47))]
		public void ConnectQuickly()
		{
			TrayViewModel.<ConnectQuickly>d__47 <ConnectQuickly>d__;
			<ConnectQuickly>d__.<>4__this = this;
			<ConnectQuickly>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ConnectQuickly>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ConnectQuickly>d__.<>t__builder;
			<>t__builder.Start<TrayViewModel.<ConnectQuickly>d__47>(ref <ConnectQuickly>d__);
		}

		[AsyncStateMachine(typeof(TrayViewModel.<Quit>d__50))]
		public void Quit()
		{
			TrayViewModel.<Quit>d__50 <Quit>d__;
			<Quit>d__.<>4__this = this;
			<Quit>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Quit>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Quit>d__.<>t__builder;
			<>t__builder.Start<TrayViewModel.<Quit>d__50>(ref <Quit>d__);
		}

		public void Handle(TrayNotificationCloseRequestedMessage message)
		{
			this.RaisePopupCloseRequested();
		}

		private void OnVpnStatusChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			this.VpnState = e.State;
			this.ShowQuickConnect = (e.State == null || e.State == 1);
			this.ShowDisconnect = (e.State == 3);
			this.ShowCancelConnecting = (e.State == 2);
			this.CurrentConnection = e.Server.GetConnectionName();
			this.ShowVpnConnectioNotification(e.State, e.Server);
			this._previousState = e.State;
		}

		private void OnForegroundStatusChanged(object sender, EventArgs<bool> e)
		{
			if (e.get_Data())
			{
				this.RaisePopupCloseRequested();
			}
		}

		private void OnUserChanged(object sender, UserEventArgs e)
		{
			this.ShowQuickConnect = this._userManager.get_IsLoggedIn();
		}

		private void OnForegroundNotificationNeeded(object sender, EventArgs e)
		{
			if (!this._application.IsInForeground)
			{
				EventHandler expr_13 = this.PopupNotificationRequested;
				if (expr_13 == null)
				{
					return;
				}
				expr_13(this, EventArgs.Empty);
			}
		}

		private void OnP2PTrafficRerouted(object sender, EventArgs e)
		{
			this.RaiseNotificationRequested("Are you using P2P? If so, click here to improve your connection speed.");
		}

		private void ShowVpnConnectioNotification(VpnState currentState, GeographicalServer currentServer)
		{
			if (!this._settings.Of<AppSettings>().get_ShowNotifications())
			{
				return;
			}
			switch (currentState)
			{
			case 0:
				if (this._previousState != 3)
				{
					return;
				}
				break;
			case 1:
				if (this._previousState != 3)
				{
					return;
				}
				break;
			case 2:
				return;
			case 3:
				this.RaiseNotificationRequested(string.Format("Connected to {0}", currentServer.GetConnectionName()));
				return;
			default:
				return;
			}
			this.RaiseNotificationRequested(string.Format("Disconnected from {0}", currentServer.GetConnectionName()));
		}

		private void RaisePopupCloseRequested()
		{
			EventHandler expr_06 = this.PopupCloseRequested;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}

		private void RaiseNotificationRequested(string message)
		{
			EventHandler<TrayNotificationEventArgs> expr_06 = this.TrayNotificationRequested;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new TrayNotificationEventArgs("NordVPN", message));
		}
	}
}
