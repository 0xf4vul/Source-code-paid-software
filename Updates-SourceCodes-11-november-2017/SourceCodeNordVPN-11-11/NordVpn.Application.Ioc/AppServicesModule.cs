using Autofac;
using Autofac.Builder;
using Liberation.OS;
using Liberation.OS.Processing;
using Liberation.OS.Win32Services;
using Liberation.ServiceModel.Client;
using NordVpn.Application.Abstract;
using NordVpn.Application.Errors;
using NordVpn.AppServices;
using NordVpn.AppServices.AutoConnect;
using NordVpn.Auth;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using NordVpn.CyberSec;
using NordVpn.Expiration;
using NordVpn.KillSwitch.Services;
using NordVpn.Map.Pins;
using NordVpn.P2P;
using NordVpn.RestrictedLocation;
using NordVpn.Search;
using NordVpn.Settings;
using NordVpn.Settings.Storage;
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
				return new AppStartupLoginHandler(inner, ResolutionExtensions.Resolve<BlockedApiLoginHandler>(ctx), ResolutionExtensions.Resolve<ServersUpdateTimer>(ctx), ResolutionExtensions.Resolve<ServiceWatcher>(ctx), ResolutionExtensions.Resolve<INotificationProvider>(ctx), ResolutionExtensions.Resolve<AutoConnectManager>(ctx), ResolutionExtensions.Resolve<OpenVpnConfigsUpdateTimer>(ctx), ResolutionExtensions.Resolve<VpnConnectionWatcher>(ctx), ResolutionExtensions.Resolve<SettingsServiceClientManager>(ctx), ResolutionExtensions.Resolve<FavouritesManager>(ctx), ResolutionExtensions.Resolve<CyberSecHostsStorage>(ctx));
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
			RegistrationExtensions.RegisterInstance<Settings>(builder, Settings.get_Default());
			RegistrationExtensions.RegisterType<WinSparkleUpdater>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ApplicationEventsLogger>(builder).As<IStartable>().SingleInstance();
			RegistrationExtensions.RegisterType<ServersUpdateTimer>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<PinProvider>(builder).WithResolvedParameter(typeof(IServerProvider), "UserPreferedVpnProtocolServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<ProcessTerminator>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<FaultHandlingDefaultBrowser>(builder).As<IBrowser>().SingleInstance();
			RegistrationExtensions.RegisterType<ProcessStarter>(builder);
			RegistrationExtensions.RegisterType<AppStartupManager>(builder).SingleInstance();
			Func<IComponentContext, AppStartup> arg_E8_1;
			if ((arg_E8_1 = AppServicesModule.<>c.<>9__0_1) == null)
			{
				arg_E8_1 = (AppServicesModule.<>c.<>9__0_1 = new Func<IComponentContext, AppStartup>(AppServicesModule.<>c.<>9.<Load>b__0_1));
			}
			RegistrationExtensions.Register<AppStartup>(builder, arg_E8_1).As<AppStartup>().SingleInstance();
			RegistrationExtensions.RegisterType<ServersSearchFacade>(builder).WithResolvedParameter(typeof(IServerProvider), "UserPreferedVpnProtocolServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<SearchResultVpnConnectionVisitor>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<OpenVpnConfigsUpdateTimer>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ServiceHealthManager>(builder).SingleInstance();
			Func<IComponentContext, Win32ServiceManager> arg_15C_1;
			if ((arg_15C_1 = AppServicesModule.<>c.<>9__0_2) == null)
			{
				arg_15C_1 = (AppServicesModule.<>c.<>9__0_2 = new Func<IComponentContext, Win32ServiceManager>(AppServicesModule.<>c.<>9.<Load>b__0_2));
			}
			RegistrationExtensions.Register<Win32ServiceManager>(builder, arg_15C_1).SingleInstance();
			RegistrationExtensions.WithParameter<ServiceWatcher, ConcreteReflectionActivatorData, SingleRegistrationStyle>(RegistrationExtensions.RegisterType<ServiceWatcher>(builder), "serviceName", AppConfig.WinServiceName).SingleInstance();
			RegistrationExtensions.RegisterType<InprocChannelFactory>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<EncryptedCredentialsStore>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<AutoConnectManager>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsServiceClientManager>(builder);
			RegistrationExtensions.RegisterType<SettingsServiceClient>(builder);
			RegistrationExtensions.RegisterType<AppStartupLoginHandler>(builder).WithResolvedParameter(typeof(IVpnServiceManager), "VpnServiceManagerLoggingDecorator").SingleInstance();
			RegistrationExtensions.RegisterType<ErrorsObserver>(builder).As<IStartable>().SingleInstance();
			RegistrationExtensions.RegisterType<CurrentIpObserver>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<BlockedApiHandlerProtocolPreferencesChangeObserver>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<P2PTrafficStatusObserver>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ExpiredMembershipObserver>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<CyberSecManager>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<CyberSecHostsStorage>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<EventFacade>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<FavouritesManager>(builder).WithResolvedParameter(typeof(IServerProvider), "ApiServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<UserContext>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<LoginHandler>(builder).Named<ILoginHandler>("LoginHandler").SingleInstance();
			Func<IComponentContext, ILoginHandler, ILoginHandler> arg_2A1_1;
			if ((arg_2A1_1 = AppServicesModule.<>c.<>9__0_3) == null)
			{
				arg_2A1_1 = (AppServicesModule.<>c.<>9__0_3 = new Func<IComponentContext, ILoginHandler, ILoginHandler>(AppServicesModule.<>c.<>9.<Load>b__0_3));
			}
			RegistrationExtensions.RegisterDecorator<ILoginHandler>(builder, arg_2A1_1, "LoginHandler", null).Named<ILoginHandler>("AppStartupLoginHandler").SingleInstance();
			RegistrationExtensions.RegisterType<UtmProvider>(builder).SingleInstance();
			Func<IComponentContext, DiagnosticsLauncher> arg_2E2_1;
			if ((arg_2E2_1 = AppServicesModule.<>c.<>9__0_4) == null)
			{
				arg_2E2_1 = (AppServicesModule.<>c.<>9__0_4 = new Func<IComponentContext, DiagnosticsLauncher>(AppServicesModule.<>c.<>9.<Load>b__0_4));
			}
			RegistrationExtensions.Register<DiagnosticsLauncher>(builder, arg_2E2_1).SingleInstance();
			RegistrationExtensions.RegisterType<RestrictedLocationChecker>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<AutoConnector>(builder).WithResolvedParameter(typeof(IServerProvider), "ApiServerProvider").SingleInstance();
		}
	}
}
