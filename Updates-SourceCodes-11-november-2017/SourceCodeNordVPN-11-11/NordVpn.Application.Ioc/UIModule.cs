using Autofac;
using Autofac.Builder;
using Caliburn.Micro;
using NordVpn.Application.Abstract;
using NordVpn.Auth;
using NordVpn.CyberSec.ViewModels;
using NordVpn.Expiration;
using NordVpn.Header;
using NordVpn.Header.ViewModels;
using NordVpn.Header.Views;
using NordVpn.KillSwitch.ViewModels;
using NordVpn.Map;
using NordVpn.Map.Wizzard;
using NordVpn.P2P;
using NordVpn.RestrictedLocation.ViewModels;
using NordVpn.Search.ViewModels;
using NordVpn.Search.Views;
using NordVpn.ServerList.ViewModels;
using NordVpn.ServerList.ViewModels.Sort;
using NordVpn.Settings.ViewModels;
using NordVpn.Settings.Views;
using NordVpn.Tray;
using NordVpnControls.Windows;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Application.Ioc
{
	public sealed class UIModule : Module
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly UIModule.<>c <>9 = new UIModule.<>c();

			public static Func<IComponentContext, ServerComparerViewModel> <>9__3_1;

			public static Func<IComponentContext, ServerComparerViewModel> <>9__3_2;

			public static Func<IComponentContext, ServerComparerViewModel> <>9__3_3;

			public static Func<IComponentContext, ServerComparerViewModel> <>9__3_4;

			internal ServerComparerViewModel <RegisterUIServices>b__3_1(IComponentContext c)
			{
				return new ServerComparerViewModel(ResolutionExtensions.Resolve<ServerComparerByServerPicker>(c), "The Best Servers for you");
			}

			internal ServerComparerViewModel <RegisterUIServices>b__3_2(IComponentContext c)
			{
				return new ServerComparerViewModel(ResolutionExtensions.Resolve<ServerComparerByName>(c), "Alphabetical Order");
			}

			internal ServerComparerViewModel <RegisterUIServices>b__3_3(IComponentContext c)
			{
				return new ServerComparerViewModel(ResolutionExtensions.Resolve<ServerComparerByLoad>(c), "Least Loaded");
			}

			internal ServerComparerViewModel <RegisterUIServices>b__3_4(IComponentContext c)
			{
				return new ServerComparerViewModel(ResolutionExtensions.Resolve<ServerComparerByDistance>(c), "Closest to you");
			}
		}

		protected override void Load(ContainerBuilder builder)
		{
			base.Load(builder);
			this.RegisterViewModels(builder);
			UIModule.RegisterViews(builder);
			UIModule.RegisterUIServices(builder);
		}

		private void RegisterViewModels(ContainerBuilder builder)
		{
			UIModule.<>c__DisplayClass1_0 <>c__DisplayClass1_;
			<>c__DisplayClass1_.builder = builder;
			RegistrationExtensions.RegisterType<ShellViewModel>(<>c__DisplayClass1_.builder).WithResolvedParameter(typeof(ILoginHandler), "AppStartupLoginHandler").SingleInstance();
			RegistrationExtensions.RegisterType<MapViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<HeaderBarViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SubHeaderStripViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SubHeaderBarViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<RestrictedLocationContainerViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<RestrictedLocationQuestionViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<RestrictedLocationFinishedViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<ConnectButtonViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsTabViewModel>(<>c__DisplayClass1_.builder).WithResolvedParameter(typeof(ILoginHandler), "AppStartupLoginHandler").SingleInstance();
			RegistrationExtensions.RegisterType<MyAccountViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<WizardViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SearchViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsContainerViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<InactiveAccountViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<AppSelectViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<TrayViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<P2PModalViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<ExpiredMembershipViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<CyberSecModalViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<CyberSecReconnectViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<ExpiredMembershipTrayNotificationViewModel>(<>c__DisplayClass1_.builder).SingleInstance();
			UIModule.<RegisterViewModels>g__RegisterAuthViewModels1_0(ref <>c__DisplayClass1_);
			UIModule.<RegisterViewModels>g__RegisterServersViewModels1_1(ref <>c__DisplayClass1_);
		}

		private static void RegisterViews(ContainerBuilder builder)
		{
			UIModule.<>c__DisplayClass2_0 <>c__DisplayClass2_;
			<>c__DisplayClass2_.builder = builder;
			RegistrationExtensions.RegisterType<MapView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<HeaderBarView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SubHeaderBarView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SubHeaderStripView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<ConnectButtonView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsTabView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<MyAccountView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<WizardView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SearchView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsContainerView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<InactiveAccountView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<TrayView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<SettingsView>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<ExpiredMembershipTrayNotificationView>(<>c__DisplayClass2_.builder).SingleInstance();
			UIModule.<RegisterViews>g__RegisterServersViews2_1(ref <>c__DisplayClass2_);
			UIModule.<RegisterViews>g__RegisterWindowsViews2_2(ref <>c__DisplayClass2_);
			UIModule.<RegisterViews>g__RegisterAuthViews2_0(ref <>c__DisplayClass2_);
		}

		private static void RegisterUIServices(ContainerBuilder builder)
		{
			UIModule.<>c__DisplayClass3_0 <>c__DisplayClass3_;
			<>c__DisplayClass3_.builder = builder;
			RegistrationExtensions.RegisterType<BrowserOpenFailureWindow>(<>c__DisplayClass3_.builder).InstancePerDependency();
			RegistrationExtensions.RegisterType<SubheaderNotificationProvider>(<>c__DisplayClass3_.builder).As<INotificationProvider>().SingleInstance();
			RegistrationExtensions.RegisterType<MessageBoxService>(<>c__DisplayClass3_.builder).As<IMessageBoxService>().SingleInstance();
			RegistrationExtensions.RegisterType<FileDialogService>(<>c__DisplayClass3_.builder).As<IFileDialogService>();
			RegistrationExtensions.AsSelf<AppWindowManager, ConcreteReflectionActivatorData>(RegistrationExtensions.RegisterType<AppWindowManager>(<>c__DisplayClass3_.builder)).As<IWindowManager>().SingleInstance();
			RegistrationExtensions.RegisterType<ShellWindowPlacementSaver>(<>c__DisplayClass3_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<ServerNameAlphaNumericComparer>(<>c__DisplayClass3_.builder).SingleInstance();
			UIModule.<RegisterUIServices>g__RegisterComparers3_0(ref <>c__DisplayClass3_);
		}
	}
}
