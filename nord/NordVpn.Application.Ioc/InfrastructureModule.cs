using Autofac;
using Autofac.Builder;
using Autofac.Core;
using Liberation.Api.Http;
using Liberation.Api.Http.Handlers;
using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Log;
using NordVpn.Core.Abstract.P2P;
using NordVpn.Core.Logic.Servers;
using NordVpn.Infrastructure.Api;
using NordVpn.Infrastructure.Api.Analytics;
using NordVpn.Infrastructure.Api.Http;
using NordVpn.Infrastructure.CDN;
using NordVpn.Infrastructure.P2P;
using NordVpn.Settings.Storage;
using NordVpn.Settings.Storage.Users;
using NordVpn.Vpn.OpenVPNService;
using System;
using System.Net;
using System.Net.Http;
using System.Runtime.CompilerServices;

namespace NordVpn.Application.Ioc
{
	public class InfrastructureModule : Module
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly InfrastructureModule.<>c <>9 = new InfrastructureModule.<>c();

			public static Action<IActivatingEventArgs<AppSettingsStorage>> <>9__0_0;

			public static Func<IComponentContext, ServerCache> <>9__0_1;

			public static Func<IComponentContext, BlockedApiHandler> <>9__0_2;

			public static Func<HttpMessageHandler, HttpClient> <>9__1_2;

			public static Func<IComponentContext, LiberationApiClient> <>9__1_0;

			public static Func<IComponentContext, AnalyticsClient> <>9__1_3;

			public static Func<IComponentContext, ApiOpenVpnConfigsStore> <>9__1_4;

			public static Func<IComponentContext, CdnClient> <>9__1_6;

			internal void <Load>b__0_0(IActivatingEventArgs<AppSettingsStorage> e)
			{
				e.get_Instance().InitializePeriodicUpdates();
			}

			internal ServerCache <Load>b__0_1(IComponentContext c)
			{
				return new ServerCache(AppConfig.GetServersJsonCacheFilePath());
			}

			internal BlockedApiHandler <Load>b__0_2(IComponentContext c)
			{
				return new BlockedApiHandler().WithUrls(new string[]
				{
					"zwyr157wwiu6eior.com",
					"73dkt-vwrqs.xyz",
					"njtzzrvg0lwj3bsn.info",
					"se3v5tjfff3aet.me",
					"p99nxpivfscyverz.me"
				});
			}

			internal LiberationApiClient <RegisterClients>b__1_0(IComponentContext c)
			{
				InfrastructureModule.<>c__DisplayClass1_0 <>c__DisplayClass1_ = new InfrastructureModule.<>c__DisplayClass1_0();
				<>c__DisplayClass1_.logger = ResolutionExtensions.Resolve<ILogger>(c);
				LiberationApiClientBuilder arg_86_0 = new LiberationApiClientBuilder().WithHandler(new UserAgentHandler(AppConfig.UserAgent)).WithHandler(new AuthorizationHandler()).WithHandler(ResolutionExtensions.Resolve<BlockedApiHandler>(c)).WithHandler(new LiberationApiLoggingHandler(new Action<string>(<>c__DisplayClass1_.<RegisterClients>b__1))).WithHandler(new ValidateCertHandler(AppConfig.WebCertsDir)
				{
					AutomaticDecompression = (DecompressionMethods.GZip | DecompressionMethods.Deflate)
				});
				Func<HttpMessageHandler, HttpClient> arg_86_1;
				if ((arg_86_1 = InfrastructureModule.<>c.<>9__1_2) == null)
				{
					arg_86_1 = (InfrastructureModule.<>c.<>9__1_2 = new Func<HttpMessageHandler, HttpClient>(InfrastructureModule.<>c.<>9.<RegisterClients>b__1_2));
				}
				return arg_86_0.Build(arg_86_1);
			}

			internal HttpClient <RegisterClients>b__1_2(HttpMessageHandler h)
			{
				return new HttpClient(h)
				{
					BaseAddress = new Uri("https://zwyr157wwiu6eior.com"),
					Timeout = TimeSpan.FromMinutes(2.0)
				};
			}

			internal AnalyticsClient <RegisterClients>b__1_3(IComponentContext c)
			{
				HttpClient expr_22 = HttpClientFactory.Create(new ValidateCertHandler(AppConfig.WebCertsDir), new DelegatingHandler[]
				{
					new UserAgentHandler(AppConfig.UserAgent)
				});
				expr_22.BaseAddress = AppConfig.AppEventUrl;
				return new AnalyticsClient(expr_22, ResolutionExtensions.Resolve<ISettingsStorage>(c), ResolutionExtensions.Resolve<IUserContext>(c));
			}

			internal ApiOpenVpnConfigsStore <RegisterClients>b__1_4(IComponentContext c)
			{
				InfrastructureModule.<>c__DisplayClass1_1 <>c__DisplayClass1_ = new InfrastructureModule.<>c__DisplayClass1_1();
				<>c__DisplayClass1_.logger = ResolutionExtensions.Resolve<ILogger>(c);
				HttpClient expr_48 = HttpClientFactory.Create(new ValidateCertHandler(AppConfig.WebCertsDir), new DelegatingHandler[]
				{
					new UserAgentHandler(AppConfig.UserAgent),
					new LiberationApiLoggingHandler(new Action<string>(<>c__DisplayClass1_.<RegisterClients>b__5))
				});
				expr_48.BaseAddress = AppConfig.CdnUrl;
				return new ApiOpenVpnConfigsStore(new FileDownloader(expr_48), ResolutionExtensions.Resolve<ISettingsStorage>(c));
			}

			internal CdnClient <RegisterClients>b__1_6(IComponentContext c)
			{
				InfrastructureModule.<>c__DisplayClass1_2 <>c__DisplayClass1_ = new InfrastructureModule.<>c__DisplayClass1_2();
				<>c__DisplayClass1_.logger = ResolutionExtensions.Resolve<ILogger>(c);
				HttpClient expr_48 = HttpClientFactory.Create(new ValidateCertHandler(AppConfig.WebCertsDir), new DelegatingHandler[]
				{
					new UserAgentHandler(AppConfig.UserAgent),
					new LiberationApiLoggingHandler(new Action<string>(<>c__DisplayClass1_.<RegisterClients>b__7))
				});
				expr_48.BaseAddress = AppConfig.CdnUrl;
				return new CdnClient(new FileDownloaderEx(expr_48));
			}
		}

		protected override void Load(ContainerBuilder builder)
		{
			base.Load(builder);
			RegistrationExtensions.RegisterType<ApiExternalIpProvider>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ApiExternalIpExponentialBackoffProvider>(builder).As<IIpProvider>().SingleInstance();
			RegistrationExtensions.RegisterType<DnsCheckingP2PTraficDetector>(builder).As<IP2PTrafficDetector>().SingleInstance();
			RegistrationExtensions.RegisterType<DnsResolver>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<ApiCachedServerStore>(builder).SingleInstance();
			IRegistrationBuilder<AppSettingsStorage, ConcreteReflectionActivatorData, SingleRegistrationStyle> arg_7C_0 = RegistrationExtensions.RegisterType<AppSettingsStorage>(builder).As<ISettingsStorage>().SingleInstance();
			Action<IActivatingEventArgs<AppSettingsStorage>> arg_7C_1;
			if ((arg_7C_1 = InfrastructureModule.<>c.<>9__0_0) == null)
			{
				arg_7C_1 = (InfrastructureModule.<>c.<>9__0_0 = new Action<IActivatingEventArgs<AppSettingsStorage>>(InfrastructureModule.<>c.<>9.<Load>b__0_0));
			}
			arg_7C_0.OnActivating(arg_7C_1);
			RegistrationExtensions.RegisterType<UserConfigSettingsValidator>(builder).SingleInstance();
			Func<IComponentContext, ServerCache> arg_AE_1;
			if ((arg_AE_1 = InfrastructureModule.<>c.<>9__0_1) == null)
			{
				arg_AE_1 = (InfrastructureModule.<>c.<>9__0_1 = new Func<IComponentContext, ServerCache>(InfrastructureModule.<>c.<>9.<Load>b__0_1));
			}
			RegistrationExtensions.Register<ServerCache>(builder, arg_AE_1).SingleInstance();
			Func<IComponentContext, BlockedApiHandler> arg_D9_1;
			if ((arg_D9_1 = InfrastructureModule.<>c.<>9__0_2) == null)
			{
				arg_D9_1 = (InfrastructureModule.<>c.<>9__0_2 = new Func<IComponentContext, BlockedApiHandler>(InfrastructureModule.<>c.<>9.<Load>b__0_2));
			}
			RegistrationExtensions.Register<BlockedApiHandler>(builder, arg_D9_1).SingleInstance();
			RegistrationExtensions.AsSelf<ApiServerProvider, ConcreteReflectionActivatorData>(RegistrationExtensions.RegisterType<ApiServerProvider>(builder)).Named<IServerProvider>("ApiServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<ApiUserStore>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<FavouriteUserStore>(builder).WithResolvedParameter(typeof(IServerProvider), "ApiServerProvider").As<IUserStore>().SingleInstance();
			RegistrationExtensions.RegisterType<ServerSerializer>(builder).SingleInstance();
			InfrastructureModule.RegisterClients(builder);
		}

		private static void RegisterClients(ContainerBuilder builder)
		{
			Func<IComponentContext, LiberationApiClient> arg_20_1;
			if ((arg_20_1 = InfrastructureModule.<>c.<>9__1_0) == null)
			{
				arg_20_1 = (InfrastructureModule.<>c.<>9__1_0 = new Func<IComponentContext, LiberationApiClient>(InfrastructureModule.<>c.<>9.<RegisterClients>b__1_0));
			}
			RegistrationExtensions.Register<LiberationApiClient>(builder, arg_20_1).SingleInstance();
			Func<IComponentContext, AnalyticsClient> arg_4B_1;
			if ((arg_4B_1 = InfrastructureModule.<>c.<>9__1_3) == null)
			{
				arg_4B_1 = (InfrastructureModule.<>c.<>9__1_3 = new Func<IComponentContext, AnalyticsClient>(InfrastructureModule.<>c.<>9.<RegisterClients>b__1_3));
			}
			RegistrationExtensions.Register<AnalyticsClient>(builder, arg_4B_1).As<IAnalyticsManager>().SingleInstance();
			Func<IComponentContext, ApiOpenVpnConfigsStore> arg_7B_1;
			if ((arg_7B_1 = InfrastructureModule.<>c.<>9__1_4) == null)
			{
				arg_7B_1 = (InfrastructureModule.<>c.<>9__1_4 = new Func<IComponentContext, ApiOpenVpnConfigsStore>(InfrastructureModule.<>c.<>9.<RegisterClients>b__1_4));
			}
			RegistrationExtensions.Register<ApiOpenVpnConfigsStore>(builder, arg_7B_1).As<IOpenVpnConfigsStore>().SingleInstance();
			Func<IComponentContext, CdnClient> arg_AB_1;
			if ((arg_AB_1 = InfrastructureModule.<>c.<>9__1_6) == null)
			{
				arg_AB_1 = (InfrastructureModule.<>c.<>9__1_6 = new Func<IComponentContext, CdnClient>(InfrastructureModule.<>c.<>9.<RegisterClients>b__1_6));
			}
			RegistrationExtensions.Register<CdnClient>(builder, arg_AB_1).As<CdnClient>().SingleInstance();
		}
	}
}
