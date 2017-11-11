using Autofac;
using Autofac.Builder;
using Newtonsoft.Json;
using NordVpn.Api.Http;
using NordVpn.Api.Http.Handlers;
using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Abstract.P2P;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Servers;
using NordVpn.Infrastructure.Api;
using NordVpn.Infrastructure.Api.Http;
using NordVpn.Infrastructure.Cdn;
using NordVpn.Infrastructure.CDN;
using NordVpn.Infrastructure.Location;
using NordVpn.Infrastructure.P2P;
using NordVpn.Infrastructure.Settings;
using NordVpn.Infrastructure.Vpn;
using NordVpn.Settings.Storage;
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

			public static Func<IComponentContext, ResiliencyHandler> <>9__2_0;

			public static Func<IComponentContext, ResiliencyHandler> <>9__2_1;

			public static Func<HttpMessageHandler, HttpClient> <>9__2_4;

			public static Func<IComponentContext, NordVpnApiClient> <>9__2_2;

			public static Func<IComponentContext, FileDownloader> <>9__2_5;

			public static Func<IComponentContext, HttpClient> <>9__2_8;

			internal ResiliencyHandler <RegisterClients>b__2_0(IComponentContext c)
			{
				return new ResiliencyHandler(new string[]
				{
					"zwyr157wwiu6eior.com",
					"73dkt-vwrqs.xyz",
					"njtzzrvg0lwj3bsn.info",
					"se3v5tjfff3aet.me",
					"p99nxpivfscyverz.me"
				});
			}

			internal ResiliencyHandler <RegisterClients>b__2_1(IComponentContext c)
			{
				return new ResiliencyHandler(TimeSpan.FromSeconds(60.0), new string[]
				{
					"downloads.nordcdn.com",
					"downloads.73dkt-vwrqs.xyz",
					"downloads.njtzzrvg0lwj3bsn.info",
					"downloads.se3v5tjfff3aet.me",
					"downloads.p99nxpivfscyverz.me"
				});
			}

			internal NordVpnApiClient <RegisterClients>b__2_2(IComponentContext c)
			{
				InfrastructureModule.<>c__DisplayClass2_0 <>c__DisplayClass2_ = new InfrastructureModule.<>c__DisplayClass2_0();
				<>c__DisplayClass2_.logger = LogProvider.For<LoggingHandler>();
				NordVpnApiClientBuilder arg_8A_0 = new NordVpnApiClientBuilder().WithHandler(new UserAgentHandler(AppConfig.UserAgent)).WithHandler(new AuthorizationHandler()).WithHandler(ResolutionExtensions.ResolveNamed<ResiliencyHandler>(c, "ApiResiliencyHandler")).WithHandler(new LoggingHandler(new Action<string>(<>c__DisplayClass2_.<RegisterClients>b__3))).WithHandler(new ValidateCertHandler(AppConfig.WebCertsDir)
				{
					AutomaticDecompression = (DecompressionMethods.GZip | DecompressionMethods.Deflate)
				});
				Func<HttpMessageHandler, HttpClient> arg_8A_1;
				if ((arg_8A_1 = InfrastructureModule.<>c.<>9__2_4) == null)
				{
					arg_8A_1 = (InfrastructureModule.<>c.<>9__2_4 = new Func<HttpMessageHandler, HttpClient>(InfrastructureModule.<>c.<>9.<RegisterClients>b__2_4));
				}
				return arg_8A_0.Build(arg_8A_1);
			}

			internal HttpClient <RegisterClients>b__2_4(HttpMessageHandler h)
			{
				return new HttpClient(h)
				{
					BaseAddress = new Uri("https://zwyr157wwiu6eior.com"),
					Timeout = TimeSpan.FromMinutes(2.0)
				};
			}

			internal FileDownloader <RegisterClients>b__2_5(IComponentContext c)
			{
				InfrastructureModule.<>c__DisplayClass2_1 <>c__DisplayClass2_ = new InfrastructureModule.<>c__DisplayClass2_1();
				<>c__DisplayClass2_.logger = LogProvider.For<LoggingHandler>();
				return new FileDownloader(HttpClientFactory.Create("https://downloads.nordcdn.com", new ValidateCertHandler(AppConfig.WebCertsDir), new DelegatingHandler[]
				{
					new UserAgentHandler(AppConfig.UserAgent),
					ResolutionExtensions.ResolveNamed<ResiliencyHandler>(c, "CdnResiliencyHandler"),
					new LoggingHandler(new Action<string>(<>c__DisplayClass2_.<RegisterClients>b__6))
				}));
			}

			internal HttpClient <RegisterClients>b__2_8(IComponentContext c)
			{
				return HttpClientFactory.Create("https://applytics.zwyr157wwiu6eior.com", new ValidateCertHandler(AppConfig.WebCertsDir), new DelegatingHandler[]
				{
					new UserAgentHandler(AppConfig.UserAgent)
				});
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
			RegistrationExtensions.RegisterType<JsonSerializer>(builder).SingleInstance();
			RegistrationExtensions.WithParameter<ServerCache, ConcreteReflectionActivatorData, SingleRegistrationStyle>(RegistrationExtensions.RegisterType<ServerCache>(builder), "cacheFile", AppConfig.GetServersJsonCacheFilePath());
			RegistrationExtensions.AsSelf<ApiServerProvider, ConcreteReflectionActivatorData>(RegistrationExtensions.RegisterType<ApiServerProvider>(builder)).Named<IServerProvider>("ApiServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<ApiUserStore>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<FavouriteUserStore>(builder).WithResolvedParameter(typeof(IServerProvider), "ApiServerProvider").As<IUserStore>().SingleInstance();
			RegistrationExtensions.RegisterType<ServerSerializer>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<UserRegionScanner>(builder).SingleInstance();
			RegistrationExtensions.WithParameter<OpenVpnConfigsFileStorage, ConcreteReflectionActivatorData, SingleRegistrationStyle>(RegistrationExtensions.RegisterType<OpenVpnConfigsFileStorage>(builder), "configsDirectory", AppConfig.GetOpenvpnConfigPath()).As<IOpenVpnConfigsFileStorage>().SingleInstance();
			InfrastructureModule.RegisterClients(builder);
			InfrastructureModule.RegisterSettings(builder);
		}

		private static void RegisterSettings(ContainerBuilder builder)
		{
			RegistrationExtensions.RegisterType<AutoCorrectingSettingsDecorator>(builder).As<IPersistedSettings>().As<ISettings>().SingleInstance();
			RegistrationExtensions.RegisterType<ApplicationSettingsStorage>(builder).SingleInstance();
		}

		private static void RegisterClients(ContainerBuilder builder)
		{
			InfrastructureModule.<>c__DisplayClass2_2 <>c__DisplayClass2_;
			<>c__DisplayClass2_.builder = builder;
			ContainerBuilder arg_2D_0 = <>c__DisplayClass2_.builder;
			Func<IComponentContext, ResiliencyHandler> arg_2D_1;
			if ((arg_2D_1 = InfrastructureModule.<>c.<>9__2_0) == null)
			{
				arg_2D_1 = (InfrastructureModule.<>c.<>9__2_0 = new Func<IComponentContext, ResiliencyHandler>(InfrastructureModule.<>c.<>9.<RegisterClients>b__2_0));
			}
			RegistrationExtensions.AsSelf<ResiliencyHandler, SimpleActivatorData>(RegistrationExtensions.Register<ResiliencyHandler>(arg_2D_0, arg_2D_1)).Named<ResiliencyHandler>("ApiResiliencyHandler").SingleInstance();
			ContainerBuilder arg_6C_0 = <>c__DisplayClass2_.builder;
			Func<IComponentContext, ResiliencyHandler> arg_6C_1;
			if ((arg_6C_1 = InfrastructureModule.<>c.<>9__2_1) == null)
			{
				arg_6C_1 = (InfrastructureModule.<>c.<>9__2_1 = new Func<IComponentContext, ResiliencyHandler>(InfrastructureModule.<>c.<>9.<RegisterClients>b__2_1));
			}
			RegistrationExtensions.AsSelf<ResiliencyHandler, SimpleActivatorData>(RegistrationExtensions.Register<ResiliencyHandler>(arg_6C_0, arg_6C_1)).Named<ResiliencyHandler>("CdnResiliencyHandler").SingleInstance();
			ContainerBuilder arg_AB_0 = <>c__DisplayClass2_.builder;
			Func<IComponentContext, NordVpnApiClient> arg_AB_1;
			if ((arg_AB_1 = InfrastructureModule.<>c.<>9__2_2) == null)
			{
				arg_AB_1 = (InfrastructureModule.<>c.<>9__2_2 = new Func<IComponentContext, NordVpnApiClient>(InfrastructureModule.<>c.<>9.<RegisterClients>b__2_2));
			}
			RegistrationExtensions.Register<NordVpnApiClient>(arg_AB_0, arg_AB_1).SingleInstance();
			ContainerBuilder arg_DB_0 = <>c__DisplayClass2_.builder;
			Func<IComponentContext, FileDownloader> arg_DB_1;
			if ((arg_DB_1 = InfrastructureModule.<>c.<>9__2_5) == null)
			{
				arg_DB_1 = (InfrastructureModule.<>c.<>9__2_5 = new Func<IComponentContext, FileDownloader>(InfrastructureModule.<>c.<>9.<RegisterClients>b__2_5));
			}
			RegistrationExtensions.Register<FileDownloader>(arg_DB_0, arg_DB_1).SingleInstance();
			RegistrationExtensions.RegisterType<CdnOpenVpnConfigsDownloader>(<>c__DisplayClass2_.builder).SingleInstance();
			RegistrationExtensions.RegisterType<CdnCachedETagOpenVpnConfigsStore>(<>c__DisplayClass2_.builder).As<IOpenVpnConfigsStore>().SingleInstance();
			RegistrationExtensions.RegisterType<CdnCyberSecHostsClient>(<>c__DisplayClass2_.builder).As<ICyberSecHostsProvider>().SingleInstance();
			InfrastructureModule.<RegisterClients>g__RegisterAnalytics2_7(ref <>c__DisplayClass2_);
		}
	}
}
