using Autofac;
using Autofac.Builder;
using Liberation.CrashReporting;
using Liberation.Logging;
using Liberation.OS;
using Liberation.OS.Processing;
using Liberation.OS.Win32Services;
using Liberation.ServiceModel.Client;
using NordVpn.Application.Abstract;
using NordVpn.Application.Errors;
using NordVpn.AppServices;
using NordVpn.Auth;
using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Log;
using NordVpn.Core.Logic.Servers;
using NordVpn.CrashReporting;
using NordVpn.CyberSec;
using NordVpn.Expiration;
using NordVpn.Infrastructure.Location;
using NordVpn.KillSwitch.Services;
using NordVpn.Logging;
using NordVpn.Map.Pins;
using NordVpn.P2P;
using NordVpn.Search;
using NordVpn.Settings;
using NordVpn.Settings.Storage;
using NordVpn.Settings.Storage.Migration;
using NordVpn.Settings.Storage.Users;
using NordVpn.Updater;
using NordVpn.Vpn;
using NordVpn.Vpn.OpenVPNService;
using System;
using System.Runtime.CompilerServices;
using System.Windows;
using WindowsApp.Properties;

namespace NordVpn.Application.Ioc
{
	public class AppServicesModule : Module
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly AppServicesModule.<>c <>9 = new AppServicesModule.<>c();

			public static Func<IComponentContext, WpfApplication> <>9__0_0;

			public static Func<IComponentContext, AppStartup> <>9__0_1;

			public static Func<IComponentContext, Win32ServiceManager> <>9__0_2;

			public static Func<IComponentContext, ILoginHandler, ILoginHandler> <>9__0_3;

			public static Func<IComponentContext, DiagnosticsLauncher> <>9__0_4;

			internal WpfApplication <Load>b__0_0(IComponentContext c)
			{
				return new WpfApplication(Application.Current);
			}

			internal AppStartup <Load>b__0_1(IComponentContext c)
			{
				return new AppStartup(AppConfig.AppName, AppConfig.ExecutablePath);
			}

			internal Win32ServiceManager <Load>b__0_2(IComponentContext c)
			{
				return new Win32ServiceManager(AppConfig.WinServiceName);
			}

			internal ILoginHandler <Load>b__0_3(IComponentContext ctx, ILoginHandler inner)
			{
				return new AppStartupLoginHandler(inner, ResolutionExtensions.Resolve<BlockedApiLoginHandler>(ctx), ResolutionExtensions.Resolve<ServersUpdateTimer>(ctx), ResolutionExtensions.Resolve<ServiceWatcher>(ctx), ResolutionExtensions.Resolve<INotificationProvider>(ctx), ResolutionExtensions.Resolve<AutoConnectManager>(ctx), ResolutionExtensions.Resolve<OpenVpnConfigsUpdateTimer>(ctx), ResolutionExtensions.Resolve<OpenVpnConfigsDownloadManager>(ctx), ResolutionExtensions.Resolve<VpnConnectionWatcher>(ctx), ResolutionExtensions.Resolve<SettingsServiceClientManager>(ctx), ResolutionExtensions.Resolve<FavouriteServersUpdater>(ctx), ResolutionExtensions.Resolve<CyberSecManager>(ctx), ResolutionExtensions.Resolve<ILogger>(ctx));
			}

			internal DiagnosticsLauncher <Load>b__0_4(IComponentContext c)
			{
				return new DiagnosticsLauncher(AppConfig.DiagnosticsToolExePath);
			}
		}

		protected override void Load(ContainerBuilder builder)
		{
			base.Load(builder);
			Func<IComponentContext, WpfApplication> arg_27_1;
			if ((arg_27_1 = AppServicesModule.<>c.<>9__0_0) == null)
			{
				arg_27_1 = (AppServicesModule.<>c.<>9__0_0 = new Func<IComponentContext, WpfApplication>(AppServicesModule.<>c.<>9.<Load>b__0_0));
			}
			RegistrationExtensions.Register<WpfApplication>(builder, arg_27_1).As<IApplication>().SingleInstance();
			RegistrationExtensions.RegisterType<ExecutableIconProvider>(builder).SingleInstance();
			RegistrationExtensions.RegisterInstance<Settings>(builder, Settings.Default);
			RegistrationExtensions.RegisterType<UserPreferencesLoader>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<UserPreferencesStorer>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<WinSparkleUpdater>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<FirstRunStrategy>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ApplicationEventsLogger>(builder).As<IStartable>().SingleInstance();
			RegistrationExtensions.RegisterType<ServersUpdateTimer>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<PinFactory>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ProcessTerminator>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<FaultHandlingDefaultBrowser>(builder).As<IBrowser>().SingleInstance();
			RegistrationExtensions.RegisterType<ProcessStarter>(builder);
			RegistrationExtensions.RegisterType<AppStartupManager>(builder).SingleInstance();
			Func<IComponentContext, AppStartup> arg_F8_1;
			if ((arg_F8_1 = AppServicesModule.<>c.<>9__0_1) == null)
			{
				arg_F8_1 = (AppServicesModule.<>c.<>9__0_1 = new Func<IComponentContext, AppStartup>(AppServicesModule.<>c.<>9.<Load>b__0_1));
			}
			RegistrationExtensions.Register<AppStartup>(builder, arg_F8_1).As<AppStartup>().SingleInstance();
			RegistrationExtensions.RegisterType<ServersSearchFacade>(builder).WithResolvedParameter(typeof(IServerProvider), "UserPreferedVpnProtocolServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<AppLoggingConfiguration>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<OpenVpnConfigsUpdateTimer>(builder).SingleInstance();
			RegistrationExtensions.WithParameter<OpenVpnConfigsDownloadManager, ConcreteReflectionActivatorData, SingleRegistrationStyle>(RegistrationExtensions.RegisterType<OpenVpnConfigsDownloadManager>(builder), "openVpnConfigsDirectory", AppConfig.GetOpenvpnConfigPath()).SingleInstance();
			RegistrationExtensions.RegisterType<LoggerFactory>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<Logger>(builder).As<ILogger>().SingleInstance();
			RegistrationExtensions.RegisterType<AppSettings>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ServiceHealthManager>(builder).SingleInstance();
			Func<IComponentContext, Win32ServiceManager> arg_1B0_1;
			if ((arg_1B0_1 = AppServicesModule.<>c.<>9__0_2) == null)
			{
				arg_1B0_1 = (AppServicesModule.<>c.<>9__0_2 = new Func<IComponentContext, Win32ServiceManager>(AppServicesModule.<>c.<>9.<Load>b__0_2));
			}
			RegistrationExtensions.Register<Win32ServiceManager>(builder, arg_1B0_1).SingleInstance();
			RegistrationExtensions.WithParameter<ServiceWatcher, ConcreteReflectionActivatorData, SingleRegistrationStyle>(RegistrationExtensions.RegisterType<ServiceWatcher>(builder), "serviceName", AppConfig.WinServiceName).SingleInstance();
			RegistrationExtensions.RegisterType<InprocChannelFactory>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<EncryptedUserSettingsStorage>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<CrashReportConfirmer>(builder);
			RegistrationExtensions.RegisterType<WpfCrashReporter>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<OSInfo>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsMigrationEngine>(builder);
			RegistrationExtensions.RegisterType<DefaultSettingsMigration>(builder).As<SettingsMigration>();
			RegistrationExtensions.RegisterType<UserPreferencesLoader>(builder);
			RegistrationExtensions.RegisterType<AutoConnectManager>(builder).WithResolvedParameter(typeof(IServerProvider), "ApiServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<SettingsServiceClientManager>(builder);
			RegistrationExtensions.RegisterType<CrashReporter>(builder);
			RegistrationExtensions.RegisterType<SettingsServiceClient>(builder);
			RegistrationExtensions.RegisterType<AppStartupLoginHandler>(builder).WithResolvedParameter(typeof(IVpnServiceManager), "VpnServiceManagerLoggingDecorator");
			RegistrationExtensions.RegisterType<ErrorsObserver>(builder).As<IStartable>().SingleInstance();
			RegistrationExtensions.RegisterType<UserRegionScanner>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<CurrentIpObserver>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<BlockedApiHandlerProtocolPreferencesChangeObserver>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<P2PTrafficStatusObserver>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ExpiredMembershipObserver>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<CyberSecManager>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<EventFacade>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<FavouriteServersUpdater>(builder).WithResolvedParameter(typeof(IServerProvider), "ApiServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<LoginHandler>(builder).Named<ILoginHandler>("LoginHandler").As<IUserContext>().SingleInstance();
			Func<IComponentContext, ILoginHandler, ILoginHandler> arg_33D_1;
			if ((arg_33D_1 = AppServicesModule.<>c.<>9__0_3) == null)
			{
				arg_33D_1 = (AppServicesModule.<>c.<>9__0_3 = new Func<IComponentContext, ILoginHandler, ILoginHandler>(AppServicesModule.<>c.<>9.<Load>b__0_3));
			}
			RegistrationExtensions.RegisterDecorator<ILoginHandler>(builder, arg_33D_1, "LoginHandler", null).Named<ILoginHandler>("AppStartupLoginHandler").SingleInstance();
			RegistrationExtensions.RegisterType<UtmProvider>(builder).SingleInstance();
			Func<IComponentContext, DiagnosticsLauncher> arg_37E_1;
			if ((arg_37E_1 = AppServicesModule.<>c.<>9__0_4) == null)
			{
				arg_37E_1 = (AppServicesModule.<>c.<>9__0_4 = new Func<IComponentContext, DiagnosticsLauncher>(AppServicesModule.<>c.<>9.<Load>b__0_4));
			}
			RegistrationExtensions.Register<DiagnosticsLauncher>(builder, arg_37E_1).SingleInstance();
		}
	}
}
