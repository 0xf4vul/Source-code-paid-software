using Autofac;
using Caliburn.Micro.Autofac;
using NordVpn.Application;
using NordVpn.Application.Ioc;
using NordVpn.AppServices;
using NordVpn.Auth;
using NordVpn.Core.Abstract;
using NordVpn.CrashReporting;
using NordVpn.Expiration;
using NordVpn.P2P;
using NordVpn.Settings.Legacy;
using NordVpn.Settings.Storage;
using NordVpn.Settings.Storage.Users;
using NordVpn.Updater;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;

namespace NordVpn
{
	public class AppBootstrapper : AutofacBootstrapper<ShellViewModel>
	{
		private ISettingsStorage _settingsStorage;

		private CrashReporter _crashReporter;

		private WinSparkleUpdater _updater;

		private AppSettings _appSettings;

		private AppStartupManager _appStartupManager;

		private FirstRunStrategy _firstRunStrategy;

		private UserPreferencesLoader _userPreferencesLoader;

		private IAnalyticsManager _analyticsManager;

		private ILoginHandler _loginHandler;

		private UserConfigSettingsValidator _userConfigValidator;

		private BlockedApiHandlerProtocolPreferencesChangeObserver _blockedApiHandlerProtocolPreferencesChangeObserver;

		private UserPreferencesStorer _userpreferencesStorer;

		private ExpiredMembershipObserver _expiredMembershipObserver;

		private CurrentIpObserver _currentIpObserver;

		private P2PTrafficStatusObserver _p2pTrafficStatusObserver;

		private ServersUpdateTimer _serversUpdateTimer;

		private ShellViewModel _mainViewModel;

		private ServiceHealthManager _serviceHealthManager;

		public AppBootstrapper()
		{
			base.Initialize();
		}

		protected override void ConfigureContainer(ContainerBuilder builder)
		{
			base.ConfigureContainer(builder);
			ModuleRegistrationExtensions.RegisterModule<LegacyModule>(ModuleRegistrationExtensions.RegisterModule<UIModule>(ModuleRegistrationExtensions.RegisterModule<AppServicesModule>(ModuleRegistrationExtensions.RegisterModule<VpnModule>(ModuleRegistrationExtensions.RegisterModule<CoreModule>(ModuleRegistrationExtensions.RegisterModule<InfrastructureModule>(builder))))));
		}

		protected override void ConfigureBootstrapper()
		{
			base.ConfigureBootstrapper();
			base.set_AutoSubscribeEventAggegatorHandlers(true);
		}

		[AsyncStateMachine(typeof(AppBootstrapper.<OnStartup>d__21))]
		protected override void OnStartup(object sender, StartupEventArgs e)
		{
			AppBootstrapper.<OnStartup>d__21 <OnStartup>d__;
			<OnStartup>d__.<>4__this = this;
			<OnStartup>d__.sender = sender;
			<OnStartup>d__.e = e;
			<OnStartup>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnStartup>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnStartup>d__.<>t__builder;
			<>t__builder.Start<AppBootstrapper.<OnStartup>d__21>(ref <OnStartup>d__);
		}

		protected override void OnExit(object sender, EventArgs e)
		{
			base.OnExit(sender, e);
			this._settingsStorage.Save();
			this._updater.Cleanup();
		}

		[AsyncStateMachine(typeof(AppBootstrapper.<ShowMainWindow>d__23))]
		private Task ShowMainWindow()
		{
			AppBootstrapper.<ShowMainWindow>d__23 <ShowMainWindow>d__;
			<ShowMainWindow>d__.<>4__this = this;
			<ShowMainWindow>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ShowMainWindow>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ShowMainWindow>d__.<>t__builder;
			<>t__builder.Start<AppBootstrapper.<ShowMainWindow>d__23>(ref <ShowMainWindow>d__);
			return <ShowMainWindow>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(AppBootstrapper.<ApplyAppConfigurationForFirstOrConsecutiveRun>d__24))]
		private Task ApplyAppConfigurationForFirstOrConsecutiveRun()
		{
			AppBootstrapper.<ApplyAppConfigurationForFirstOrConsecutiveRun>d__24 <ApplyAppConfigurationForFirstOrConsecutiveRun>d__;
			<ApplyAppConfigurationForFirstOrConsecutiveRun>d__.<>4__this = this;
			<ApplyAppConfigurationForFirstOrConsecutiveRun>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ApplyAppConfigurationForFirstOrConsecutiveRun>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ApplyAppConfigurationForFirstOrConsecutiveRun>d__.<>t__builder;
			<>t__builder.Start<AppBootstrapper.<ApplyAppConfigurationForFirstOrConsecutiveRun>d__24>(ref <ApplyAppConfigurationForFirstOrConsecutiveRun>d__);
			return <ApplyAppConfigurationForFirstOrConsecutiveRun>d__.<>t__builder.Task;
		}

		private void LoadUserPreferences()
		{
			this._userPreferencesLoader.Load();
			this._userpreferencesStorer.StartObserving();
			this._blockedApiHandlerProtocolPreferencesChangeObserver.StartObserving();
		}

		private void ResolveServices()
		{
			this._loginHandler = ResolutionExtensions.ResolveNamed<ILoginHandler>(base.get_Container(), "AppStartupLoginHandler");
			this._firstRunStrategy = ResolutionExtensions.Resolve<FirstRunStrategy>(base.get_Container());
			this._appStartupManager = ResolutionExtensions.Resolve<AppStartupManager>(base.get_Container());
			this._appSettings = ResolutionExtensions.Resolve<AppSettings>(base.get_Container());
			this._settingsStorage = ResolutionExtensions.Resolve<ISettingsStorage>(base.get_Container());
			this._crashReporter = ResolutionExtensions.Resolve<CrashReporter>(base.get_Container());
			this._updater = ResolutionExtensions.Resolve<WinSparkleUpdater>(base.get_Container());
			this._userConfigValidator = ResolutionExtensions.Resolve<UserConfigSettingsValidator>(base.get_Container());
			this._userPreferencesLoader = ResolutionExtensions.Resolve<UserPreferencesLoader>(base.get_Container());
			this._userpreferencesStorer = ResolutionExtensions.Resolve<UserPreferencesStorer>(base.get_Container());
			this._blockedApiHandlerProtocolPreferencesChangeObserver = ResolutionExtensions.Resolve<BlockedApiHandlerProtocolPreferencesChangeObserver>(base.get_Container());
			this._analyticsManager = ResolutionExtensions.Resolve<IAnalyticsManager>(base.get_Container());
			this._currentIpObserver = ResolutionExtensions.Resolve<CurrentIpObserver>(base.get_Container());
			this._p2pTrafficStatusObserver = ResolutionExtensions.Resolve<P2PTrafficStatusObserver>(base.get_Container());
			this._expiredMembershipObserver = ResolutionExtensions.Resolve<ExpiredMembershipObserver>(base.get_Container());
			this._serversUpdateTimer = ResolutionExtensions.Resolve<ServersUpdateTimer>(base.get_Container());
			this._mainViewModel = ResolutionExtensions.Resolve<ShellViewModel>(base.get_Container());
			this._serviceHealthManager = ResolutionExtensions.Resolve<ServiceHealthManager>(base.get_Container());
		}
	}
}
