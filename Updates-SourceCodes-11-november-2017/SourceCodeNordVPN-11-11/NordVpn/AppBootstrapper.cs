using Autofac;
using NordVpn.Application.Ioc;
using NordVpn.Application.Ioc.AutofacBootstrapping;
using NordVpn.AppServices;
using NordVpn.Expiration;
using NordVpn.P2P;
using NordVpn.Settings.Legacy;
using NordVpn.Updater;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;

namespace NordVpn
{
	public class AppBootstrapper : AutofacBootstrapper
	{
		private WinSparkleUpdater _updater;

		public AppBootstrapper()
		{
			base.Initialize();
		}

		protected override void ConfigureContainer(ContainerBuilder builder)
		{
			base.ConfigureContainer(builder);
			ModuleRegistrationExtensions.RegisterModule<LegacyModule>(ModuleRegistrationExtensions.RegisterModule<UIModule>(ModuleRegistrationExtensions.RegisterModule<AppServicesModule>(ModuleRegistrationExtensions.RegisterModule<VpnModule>(ModuleRegistrationExtensions.RegisterModule<CoreModule>(ModuleRegistrationExtensions.RegisterModule<InfrastructureModule>(builder))))));
		}

		[AsyncStateMachine(typeof(AppBootstrapper.<OnStartup>d__3))]
		protected override void OnStartup(object sender, StartupEventArgs e)
		{
			AppBootstrapper.<OnStartup>d__3 <OnStartup>d__;
			<OnStartup>d__.<>4__this = this;
			<OnStartup>d__.sender = sender;
			<OnStartup>d__.e = e;
			<OnStartup>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnStartup>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnStartup>d__.<>t__builder;
			<>t__builder.Start<AppBootstrapper.<OnStartup>d__3>(ref <OnStartup>d__);
		}

		protected override void OnExit(object sender, EventArgs e)
		{
			base.OnExit(sender, e);
			this._updater.Cleanup();
		}

		[AsyncStateMachine(typeof(AppBootstrapper.<AuthorizeIntoApp>d__5))]
		private Task AuthorizeIntoApp()
		{
			AppBootstrapper.<AuthorizeIntoApp>d__5 <AuthorizeIntoApp>d__;
			<AuthorizeIntoApp>d__.<>4__this = this;
			<AuthorizeIntoApp>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<AuthorizeIntoApp>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <AuthorizeIntoApp>d__.<>t__builder;
			<>t__builder.Start<AppBootstrapper.<AuthorizeIntoApp>d__5>(ref <AuthorizeIntoApp>d__);
			return <AuthorizeIntoApp>d__.<>t__builder.Task;
		}

		private void StartObservers()
		{
			base.Resolve<CurrentIpObserver>().Start();
			base.Resolve<P2PTrafficStatusObserver>().Start();
			base.Resolve<ExpiredMembershipObserver>().Start(AppConfig.ExpiredMembershipCheckInterval);
			base.Resolve<BlockedApiHandlerProtocolPreferencesChangeObserver>().Start();
		}
	}
}
