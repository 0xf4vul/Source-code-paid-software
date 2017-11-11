using Autofac;
using Autofac.Builder;
using NordVpn.Auth;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.KillSwitch.Services;
using NordVpn.Vpn;
using NordVpn.Vpn.OpenVPNService;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Application.Ioc
{
	public class VpnModule : Module
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly VpnModule.<>c <>9 = new VpnModule.<>c();

			public static Func<IComponentContext, IVpnServiceManager, IVpnServiceManager> <>9__0_0;

			internal IVpnServiceManager <Load>b__0_0(IComponentContext ctx, IVpnServiceManager inner)
			{
				return new VpnServiceManagerLoggingDecorator(inner);
			}
		}

		protected override void Load(ContainerBuilder builder)
		{
			base.Load(builder);
			RegistrationExtensions.RegisterType<OpenVpnConfigsParser>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<VpnService>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<VpnEventsCallback>(builder);
			RegistrationExtensions.RegisterType<SettingsServiceClient>(builder);
			RegistrationExtensions.RegisterType<VpnServiceManager>(builder).Named<IVpnServiceManager>("VpnServiceManager").SingleInstance();
			Func<IComponentContext, IVpnServiceManager, IVpnServiceManager> arg_69_1;
			if ((arg_69_1 = VpnModule.<>c.<>9__0_0) == null)
			{
				arg_69_1 = (VpnModule.<>c.<>9__0_0 = new Func<IComponentContext, IVpnServiceManager, IVpnServiceManager>(VpnModule.<>c.<>9.<Load>b__0_0));
			}
			RegistrationExtensions.RegisterDecorator<IVpnServiceManager>(builder, arg_69_1, "VpnServiceManager", null).Named<IVpnServiceManager>("VpnServiceManagerLoggingDecorator").SingleInstance();
			RegistrationExtensions.RegisterType<ApiServersVpnConnector>(builder).WithResolvedParameter(typeof(IVpnServiceManager), "VpnServiceManagerLoggingDecorator").SingleInstance();
			RegistrationExtensions.RegisterType<VpnConnectionSpeedTracker>(builder).WithResolvedParameter(typeof(IVpnServiceManager), "VpnServiceManagerLoggingDecorator").SingleInstance();
			RegistrationExtensions.RegisterType<OpenVpnOutputParser>(builder);
			RegistrationExtensions.AsSelf<VpnConnectionManager, ConcreteReflectionActivatorData>(RegistrationExtensions.RegisterType<VpnConnectionManager>(builder).WithResolvedParameter(typeof(IVpnServiceManager), "VpnServiceManagerLoggingDecorator").As<IVpnConnectionObserver>()).SingleInstance();
			RegistrationExtensions.RegisterType<TrackedVpnConnectionManagerDecorator>(builder).As<IVpnConnectionManager>().SingleInstance();
			RegistrationExtensions.AsSelf<BestVpnServerConnector, ConcreteReflectionActivatorData>(RegistrationExtensions.RegisterType<BestVpnServerConnector>(builder).As<VpnConnector>()).SingleInstance();
			RegistrationExtensions.RegisterType<BlockedApiLoginHandler>(builder).WithResolvedParameter(typeof(ILoginHandler), "LoginHandler").SingleInstance();
			RegistrationExtensions.RegisterType<VpnConnectionWatcher>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ProxyContractsMapper>(builder).SingleInstance();
		}
	}
}
