using Caliburn.Micro;
using NordVpn.Application.Analytics;
using NordVpn.Auth.Messages;
using NordVpn.Auth.ViewModels;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models.Settings;
using NordVpn.Core.Utilities;
using NordVpn.CyberSec.Messages;
using NordVpn.CyberSec.ViewModels;
using NordVpn.Expiration;
using NordVpn.Header.ViewModels;
using NordVpn.KillSwitch.Messages;
using NordVpn.KillSwitch.ViewModels;
using NordVpn.Map;
using NordVpn.Map.Messages;
using NordVpn.P2P;
using NordVpn.Properties;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels;
using NordVpn.Settings.Messages;
using NordVpn.Settings.ViewModels;
using NordVpn.Tray;
using System;
using System.Collections.Generic;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Application
{
	public class ShellViewModel : Conductor<Screen>.Collection.OneActive, IHandle, IHandle<ShowLoginScreenMessage>, IHandle<MapRequestMessage>, IHandle<ServerlistRequestMessage>, IHandle<SettingsRequestMessage>, IHandle<KillSwitchAppsRequestMessage>, IHandle<ShowCyberSecModalMessage>, IHandle<ShowReconnectDialogMessage>, IHandle<ShowRegistrationScreenMessage>
	{
		private bool _showHeader;

		private bool _showOverlay;

		private readonly UserContext _userContext;

		private readonly HeaderBarViewModel _headerViewModel;

		private readonly SettingsTabViewModel _settingsViewModel;

		private readonly P2PModalViewModel _p2PModalViewModel;

		private readonly CyberSecModalViewModel _cyberSecModalViewModel;

		private readonly AppSelectViewModel _appSelectViewModel;

		private readonly MapViewModel _mapViewModel;

		private readonly ExpiredMembershipViewModel _expiredMembershipViewModel;

		private readonly AppWindowManager _windowManager;

		private readonly ServersContainerViewModel _serversContainerViewModel;

		private readonly HashSet<Type> _quedModals = new HashSet<Type>();

		private readonly AsyncLock _lock = new AsyncLock();

		private readonly CyberSecReconnectViewModel _cyberSectReconnectViewModel;

		private readonly LoadingViewModel _loadingViewModel;

		private readonly LoginViewModel _loginViewModel;

		private readonly RegistrationViewModel _registerViewModel;

		private readonly IPersistedSettings _settings;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler ActivateAppRequested;

		public SubHeaderStripViewModel SubHeaderStrip
		{
			[CompilerGenerated]
			get
			{
				return this.<SubHeaderStrip>k__BackingField;
			}
		}

		public HeaderBarViewModel HeaderBar
		{
			[CompilerGenerated]
			get
			{
				return this.<HeaderBar>k__BackingField;
			}
		}

		public TrayViewModel Tray
		{
			[CompilerGenerated]
			get
			{
				return this.<Tray>k__BackingField;
			}
		}

		public bool ShowOverlay
		{
			get
			{
				return this._showOverlay;
			}
			set
			{
				this.Set<bool>(ref this._showOverlay, value, "ShowOverlay");
			}
		}

		public bool ShowHeader
		{
			get
			{
				return this._showHeader;
			}
			set
			{
				this.Set<bool>(ref this._showHeader, value, "ShowHeader");
			}
		}

		public ShellViewModel(UserContext userContext, ServersContainerViewModel serversContainerViewModel, LoadingViewModel loadingViewModel, LoginViewModel logingViewModel, RegistrationViewModel registerViewModel, HeaderBarViewModel headerViewModel, SettingsTabViewModel settingsViewModel, P2PModalViewModel p2PModalViewModel, CyberSecReconnectViewModel cyberSectReconnectViewModel, CyberSecModalViewModel cyberSecModalViewModel, AppSelectViewModel appSelectViewModel, IPersistedSettings settings, P2PTrafficStatusObserver p2PTrafficStatusObserver, MapViewModel mapViewModel, TrayViewModel trayViewModel, ExpiredMembershipViewModel expiredMembershipViewModel, ExpiredMembershipObserver expiredMembershipObserver, SubHeaderStripViewModel subHeaderStripViewModel, HeaderBarViewModel headerBarViewModel, AppWindowManager windowManager)
		{
			this._userContext = userContext;
			this._headerViewModel = headerViewModel;
			this._settingsViewModel = settingsViewModel;
			this._p2PModalViewModel = p2PModalViewModel;
			this._cyberSectReconnectViewModel = cyberSectReconnectViewModel;
			this._cyberSecModalViewModel = cyberSecModalViewModel;
			this._appSelectViewModel = appSelectViewModel;
			this._settings = settings;
			this._serversContainerViewModel = serversContainerViewModel;
			this._mapViewModel = mapViewModel;
			this._loadingViewModel = loadingViewModel;
			this._loginViewModel = logingViewModel;
			this._registerViewModel = registerViewModel;
			this.<SubHeaderStrip>k__BackingField = subHeaderStripViewModel;
			this.<HeaderBar>k__BackingField = headerBarViewModel;
			p2PTrafficStatusObserver.P2PTrafficRerouted += new EventHandler(this.OnP2PTrafficRerouted);
			this._expiredMembershipViewModel = expiredMembershipViewModel;
			expiredMembershipObserver.ForegroundNotificationNeeded += new EventHandler(this.OnForegroundNotificationNeeded);
			this._windowManager = windowManager;
			this._userContext.add_UserAuthenticated(new EventHandler<UserEventArgs>(this.OnUserAuthenticated));
			this._userContext.add_UserLoggedIn(new EventHandler<UserEventArgs>(this.OnUserLoggedIn));
			this._userContext.add_UserLoggedOut(new EventHandler<UserEventArgs>(this.OnUserLoggedOut));
			this.<Tray>k__BackingField = trayViewModel;
			this.Tray.ActivateAppRequested += new EventHandler(this.TrayOnActivateAppRequested);
			base.get_Items().AddRange(new Screen[]
			{
				serversContainerViewModel,
				mapViewModel,
				settingsViewModel
			});
		}

		public void ShowLoginScreen()
		{
			this.SetCurrentPage(this._loginViewModel);
			this.ShowHeader = false;
		}

		public void Handle(ShowLoginScreenMessage message)
		{
			this.SetCurrentPage(this._loginViewModel);
			this.ShowHeader = false;
		}

		public void Handle(ShowRegistrationScreenMessage message)
		{
			this.SetCurrentPage(this._registerViewModel);
			this.ShowHeader = false;
		}

		public void Handle(MapRequestMessage message)
		{
			this.SetCurrentPage(this._mapViewModel);
		}

		public void Handle(ServerlistRequestMessage message)
		{
			this.SetCurrentPage(this._serversContainerViewModel);
		}

		public void Handle(SettingsRequestMessage message)
		{
			this.SetCurrentPage(this._settingsViewModel);
		}

		[AsyncStateMachine(typeof(ShellViewModel.<Handle>d__44))]
		public void Handle(KillSwitchAppsRequestMessage message)
		{
			ShellViewModel.<Handle>d__44 <Handle>d__;
			<Handle>d__.<>4__this = this;
			<Handle>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Handle>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Handle>d__.<>t__builder;
			<>t__builder.Start<ShellViewModel.<Handle>d__44>(ref <Handle>d__);
		}

		[AsyncStateMachine(typeof(ShellViewModel.<Handle>d__45))]
		public void Handle(ShowCyberSecModalMessage message)
		{
			ShellViewModel.<Handle>d__45 <Handle>d__;
			<Handle>d__.<>4__this = this;
			<Handle>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Handle>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Handle>d__.<>t__builder;
			<>t__builder.Start<ShellViewModel.<Handle>d__45>(ref <Handle>d__);
		}

		[AsyncStateMachine(typeof(ShellViewModel.<Handle>d__46))]
		public void Handle(ShowReconnectDialogMessage message)
		{
			ShellViewModel.<Handle>d__46 <Handle>d__;
			<Handle>d__.<>4__this = this;
			<Handle>d__.message = message;
			<Handle>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Handle>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Handle>d__.<>t__builder;
			<>t__builder.Start<ShellViewModel.<Handle>d__46>(ref <Handle>d__);
		}

		[Analytics, Event]
		protected override void OnInitialize()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(ShellViewModel.OnInitialize()).MethodHandle, typeof(ShellViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			object[] args = new object[0];
			analyticsAttribute.Init(this, methodFromHandle, args);
			analyticsAttribute.OnEntry();
			try
			{
				base.OnInitialize();
				this.ActivateItem(this._loadingViewModel);
				ScreenExtensions.ConductWith<SubHeaderStripViewModel, ShellViewModel>(this.SubHeaderStrip, this);
				this.set_DisplayName(Resources.MainWindowTitle);
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		[AsyncStateMachine(typeof(ShellViewModel.<OnForegroundNotificationNeeded>d__48))]
		private void OnForegroundNotificationNeeded(object sender, EventArgs e)
		{
			ShellViewModel.<OnForegroundNotificationNeeded>d__48 <OnForegroundNotificationNeeded>d__;
			<OnForegroundNotificationNeeded>d__.<>4__this = this;
			<OnForegroundNotificationNeeded>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnForegroundNotificationNeeded>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnForegroundNotificationNeeded>d__.<>t__builder;
			<>t__builder.Start<ShellViewModel.<OnForegroundNotificationNeeded>d__48>(ref <OnForegroundNotificationNeeded>d__);
		}

		private void TrayOnActivateAppRequested(object sender, EventArgs e)
		{
			EventHandler expr_06 = this.ActivateAppRequested;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}

		private void OnUserLoggedIn(object sender, UserEventArgs e)
		{
			this.ShowPreferedApplicationScreen();
		}

		private void OnUserLoggedOut(object sender, UserEventArgs e)
		{
			this.SetCurrentPage(this._loginViewModel);
			this.ShowHeader = false;
		}

		[Obsolete("This will be removed with CyberSec popup"), AsyncStateMachine(typeof(ShellViewModel.<OnUserAuthenticated>d__52))]
		private void OnUserAuthenticated(object sender, UserEventArgs e)
		{
			ShellViewModel.<OnUserAuthenticated>d__52 <OnUserAuthenticated>d__;
			<OnUserAuthenticated>d__.<>4__this = this;
			<OnUserAuthenticated>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnUserAuthenticated>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnUserAuthenticated>d__.<>t__builder;
			<>t__builder.Start<ShellViewModel.<OnUserAuthenticated>d__52>(ref <OnUserAuthenticated>d__);
		}

		[AsyncStateMachine(typeof(ShellViewModel.<OnP2PTrafficRerouted>d__53))]
		private void OnP2PTrafficRerouted(object sender, EventArgs e)
		{
			ShellViewModel.<OnP2PTrafficRerouted>d__53 <OnP2PTrafficRerouted>d__;
			<OnP2PTrafficRerouted>d__.<>4__this = this;
			<OnP2PTrafficRerouted>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnP2PTrafficRerouted>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnP2PTrafficRerouted>d__.<>t__builder;
			<>t__builder.Start<ShellViewModel.<OnP2PTrafficRerouted>d__53>(ref <OnP2PTrafficRerouted>d__);
		}

		[AsyncStateMachine(typeof(ShellViewModel.<ShowModal>d__54))]
		private Task ShowModal(Screen screen)
		{
			ShellViewModel.<ShowModal>d__54 <ShowModal>d__;
			<ShowModal>d__.<>4__this = this;
			<ShowModal>d__.screen = screen;
			<ShowModal>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ShowModal>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ShowModal>d__.<>t__builder;
			<>t__builder.Start<ShellViewModel.<ShowModal>d__54>(ref <ShowModal>d__);
			return <ShowModal>d__.<>t__builder.Task;
		}

		private void SetCurrentPage(Screen screen)
		{
			this._headerViewModel.ActivateButtonByViewModelType(screen.GetType());
			this.ActivateItem(screen);
		}

		private void ShowPreferedApplicationScreen()
		{
			AppSettings appSettings = this._settings.Of<AppSettings>();
			this.ShowHeader = true;
			if (appSettings.get_ShowMap())
			{
				this.SetCurrentPage(this._mapViewModel);
				return;
			}
			if (appSettings.get_ShowServerList())
			{
				this.SetCurrentPage(this._serversContainerViewModel);
				return;
			}
			this.SetCurrentPage(this._settingsViewModel);
		}
	}
}
