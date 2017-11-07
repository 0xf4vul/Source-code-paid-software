using Autofac;
using Autofac.Builder;
using Caliburn.Micro;
using NordVpn.Application.Abstract;
using NordVpn.Auth;
using NordVpn.Auth.ViewModels;
using NordVpn.Core.Logic.Servers;
using NordVpn.CyberSec.ViewModels;
using NordVpn.Expiration;
using NordVpn.Header;
using NordVpn.Header.ViewModels;
using NordVpn.KillSwitch.ViewModels;
using NordVpn.Map;
using NordVpn.Map.Wizzard;
using NordVpn.P2P;
using NordVpn.Search.ViewModels;
using NordVpn.ServerList.ViewModels;
using NordVpn.ServerList.ViewModels.Sort;
using NordVpn.Settings.ViewModels;
using NordVpn.Tray;
using NordVpnControls.Windows;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Application.Ioc
{
	public class UIModule : Module
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly UIModule.<>c <>9 = new UIModule.<>c();

			public static Func<IComponentContext, ServerComparerViewModel> <>9__2_0;

			public static Func<IComponentContext, ServerComparerViewModel> <>9__2_1;

			public static Func<IComponentContext, ServerComparerViewModel> <>9__2_2;

			public static Func<IComponentContext, ServerComparerViewModel> <>9__2_3;

			internal ServerComparerViewModel <RegisterComparers>b__2_0(IComponentContext c)
			{
				return new ServerComparerViewModel(ResolutionExtensions.Resolve<ServerComparerByServerPicker>(c), "The Best Servers for you");
			}

			internal ServerComparerViewModel <RegisterComparers>b__2_1(IComponentContext c)
			{
				return new ServerComparerViewModel(ResolutionExtensions.Resolve<ServerComparerByName>(c), "Alphabetical Order");
			}

			internal ServerComparerViewModel <RegisterComparers>b__2_2(IComponentContext c)
			{
				return new ServerComparerViewModel(ResolutionExtensions.Resolve<ServerComparerByLoad>(c), "Least Loaded");
			}

			internal ServerComparerViewModel <RegisterComparers>b__2_3(IComponentContext c)
			{
				return new ServerComparerViewModel(ResolutionExtensions.Resolve<ServerComparerByDistance>(c), "Closest to you");
			}
		}

		protected override void Load(ContainerBuilder builder)
		{
			base.Load(builder);
			RegistrationExtensions.RegisterType<ShellView>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ShellViewModel>(builder).WithResolvedParameter(typeof(ILoginHandler), "AppStartupLoginHandler").SingleInstance();
			RegistrationExtensions.RegisterType<LoginViewModel>(builder).WithResolvedParameter(typeof(ILoginHandler), "AppStartupLoginHandler").SingleInstance();
			RegistrationExtensions.RegisterType<RegisterViewModel>(builder).WithResolvedParameter(typeof(ILoginHandler), "AppStartupLoginHandler").SingleInstance();
			RegistrationExtensions.RegisterType<MapViewModel>(builder).WithResolvedParameter(typeof(IServerProvider), "UserPreferedVpnProtocolServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<HeaderBarViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<SubHeaderBarViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ConnectButtonViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsTabViewModel>(builder).WithResolvedParameter(typeof(ILoginHandler), "AppStartupLoginHandler").SingleInstance();
			RegistrationExtensions.RegisterType<MyAccountViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<WizardViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<SearchViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsContainerViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<InactiveAccountViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<AppSelectViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<LogViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<AuthViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<TrayViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ServersContainerViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsViewModel>(builder).WithResolvedParameter(typeof(IServerProvider), "ApiServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<ServersViewModel>(builder).WithResolvedParameter(typeof(IServerProvider), "UserPreferedVpnProtocolServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<ServersContainerViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ServerSidePanelViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<P2PModalViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ExpiredMembershipViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<CyberSecModalViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<CyberSecReconnectViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<DetailedServersViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ServersConductorViewModel>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ExpiredMembershipTrayNotificationViewModel>(builder).SingleInstance();
			UIModule.RegisterUIServices(builder);
		}

		private static void RegisterUIServices(ContainerBuilder builder)
		{
			RegistrationExtensions.RegisterType<BrowserOpenFailureWindow>(builder).InstancePerDependency();
			RegistrationExtensions.RegisterType<SubheaderNotificationProvider>(builder).As<INotificationProvider>().SingleInstance();
			RegistrationExtensions.RegisterType<MessageBoxService>(builder).As<IMessageBoxService>().SingleInstance();
			RegistrationExtensions.RegisterType<FileDialogService>(builder).As<IFileDialogService>();
			RegistrationExtensions.AsSelf<AppWindowManager, ConcreteReflectionActivatorData>(RegistrationExtensions.RegisterType<AppWindowManager>(builder).As<IWindowManager>()).SingleInstance();
			RegistrationExtensions.RegisterType<ServerNameAlphaNumericComparer>(builder).SingleInstance();
			UIModule.RegisterComparers(builder);
		}

		private static void RegisterComparers(ContainerBuilder builder)
		{
			RegistrationExtensions.RegisterType<ServerComparerByName>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ServerComparerByDistance>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ServerComparerByLoad>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ServerComparerByServerPicker>(builder).SingleInstance();
			Func<IComponentContext, ServerComparerViewModel> arg_50_1;
			if ((arg_50_1 = UIModule.<>c.<>9__2_0) == null)
			{
				arg_50_1 = (UIModule.<>c.<>9__2_0 = new Func<IComponentContext, ServerComparerViewModel>(UIModule.<>c.<>9.<RegisterComparers>b__2_0));
			}
			RegistrationExtensions.Register<ServerComparerViewModel>(builder, arg_50_1).SingleInstance();
			Func<IComponentContext, ServerComparerViewModel> arg_7B_1;
			if ((arg_7B_1 = UIModule.<>c.<>9__2_1) == null)
			{
				arg_7B_1 = (UIModule.<>c.<>9__2_1 = new Func<IComponentContext, ServerComparerViewModel>(UIModule.<>c.<>9.<RegisterComparers>b__2_1));
			}
			RegistrationExtensions.Register<ServerComparerViewModel>(builder, arg_7B_1).SingleInstance();
			Func<IComponentContext, ServerComparerViewModel> arg_A6_1;
			if ((arg_A6_1 = UIModule.<>c.<>9__2_2) == null)
			{
				arg_A6_1 = (UIModule.<>c.<>9__2_2 = new Func<IComponentContext, ServerComparerViewModel>(UIModule.<>c.<>9.<RegisterComparers>b__2_2));
			}
			RegistrationExtensions.Register<ServerComparerViewModel>(builder, arg_A6_1).SingleInstance();
			Func<IComponentContext, ServerComparerViewModel> arg_D1_1;
			if ((arg_D1_1 = UIModule.<>c.<>9__2_3) == null)
			{
				arg_D1_1 = (UIModule.<>c.<>9__2_3 = new Func<IComponentContext, ServerComparerViewModel>(UIModule.<>c.<>9.<RegisterComparers>b__2_3));
			}
			RegistrationExtensions.Register<ServerComparerViewModel>(builder, arg_D1_1).SingleInstance();
		}
	}
}
