using Liberation.OS.Win32Services;
using NordVpn.Application.Abstract;
using NordVpn.AppServices;
using NordVpn.Core.Abstract.Log;
using NordVpn.CyberSec;
using NordVpn.KillSwitch.Services;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Auth
{
	public class AppStartupLoginHandler : ILoginHandler
	{
		private readonly ServersUpdateTimer _serversUpdateTimer;

		private readonly ServiceWatcher _serviceWatcher;

		private readonly INotificationProvider _notificationProvider;

		private readonly AutoConnectManager _autoConnectManager;

		private readonly OpenVpnConfigsUpdateTimer _openVpnConfigsUpdateTimer;

		private readonly OpenVpnConfigsDownloadManager _openVpnConfigsDownloadManager;

		private readonly SettingsServiceClientManager _settingsServiceClientManager;

		private readonly ILogger _logger;

		private readonly VpnConnectionWatcher _wcfServiceWatcher;

		private readonly FavouriteServersUpdater _favouriteServersUpdater;

		private readonly ILoginHandler _loginHandler;

		private readonly CyberSecManager _cyberSecManager;

		private bool _servicesStarted;

		private readonly BlockedApiLoginHandler _blockedApiLoginHandler;

		public AppStartupLoginHandler(ILoginHandler loginHandler, BlockedApiLoginHandler blockedApiLoginHandler, ServersUpdateTimer serversUpdateTimer, ServiceWatcher serviceWatcher, INotificationProvider notificationProvider, AutoConnectManager autoConnectManager, OpenVpnConfigsUpdateTimer openVpnConfigsUpdateTimer, OpenVpnConfigsDownloadManager openVpnConfigsDownloadManager, VpnConnectionWatcher wcfServiceWatcher, SettingsServiceClientManager settingsServiceClientManager, FavouriteServersUpdater favouriteServersUpdater, CyberSecManager cyberSecManager, ILogger logger)
		{
			this._serversUpdateTimer = serversUpdateTimer;
			this._serviceWatcher = serviceWatcher;
			this._notificationProvider = notificationProvider;
			this._autoConnectManager = autoConnectManager;
			this._openVpnConfigsUpdateTimer = openVpnConfigsUpdateTimer;
			this._openVpnConfigsDownloadManager = openVpnConfigsDownloadManager;
			this._wcfServiceWatcher = wcfServiceWatcher;
			this._settingsServiceClientManager = settingsServiceClientManager;
			this._favouriteServersUpdater = favouriteServersUpdater;
			this._loginHandler = loginHandler;
			this._blockedApiLoginHandler = blockedApiLoginHandler;
			this._cyberSecManager = cyberSecManager;
			this._logger = logger;
		}

		[AsyncStateMachine(typeof(AppStartupLoginHandler.<TryAuthorizeFromStorage>d__15))]
		public Task<AuthorizationResult> TryAuthorizeFromStorage()
		{
			AppStartupLoginHandler.<TryAuthorizeFromStorage>d__15 <TryAuthorizeFromStorage>d__;
			<TryAuthorizeFromStorage>d__.<>4__this = this;
			<TryAuthorizeFromStorage>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<TryAuthorizeFromStorage>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <TryAuthorizeFromStorage>d__.<>t__builder;
			<>t__builder.Start<AppStartupLoginHandler.<TryAuthorizeFromStorage>d__15>(ref <TryAuthorizeFromStorage>d__);
			return <TryAuthorizeFromStorage>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(AppStartupLoginHandler.<TryAuthorizeAsNewUser>d__16))]
		public Task<AuthorizationResult> TryAuthorizeAsNewUser(string username, string password)
		{
			AppStartupLoginHandler.<TryAuthorizeAsNewUser>d__16 <TryAuthorizeAsNewUser>d__;
			<TryAuthorizeAsNewUser>d__.<>4__this = this;
			<TryAuthorizeAsNewUser>d__.username = username;
			<TryAuthorizeAsNewUser>d__.password = password;
			<TryAuthorizeAsNewUser>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<TryAuthorizeAsNewUser>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <TryAuthorizeAsNewUser>d__.<>t__builder;
			<>t__builder.Start<AppStartupLoginHandler.<TryAuthorizeAsNewUser>d__16>(ref <TryAuthorizeAsNewUser>d__);
			return <TryAuthorizeAsNewUser>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(AppStartupLoginHandler.<TryAuthorize>d__17))]
		public Task<AuthorizationResult> TryAuthorize(string username, string password)
		{
			AppStartupLoginHandler.<TryAuthorize>d__17 <TryAuthorize>d__;
			<TryAuthorize>d__.<>4__this = this;
			<TryAuthorize>d__.username = username;
			<TryAuthorize>d__.password = password;
			<TryAuthorize>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<TryAuthorize>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <TryAuthorize>d__.<>t__builder;
			<>t__builder.Start<AppStartupLoginHandler.<TryAuthorize>d__17>(ref <TryAuthorize>d__);
			return <TryAuthorize>d__.<>t__builder.Task;
		}

		public void Logout()
		{
			this._loginHandler.Logout();
		}

		[AsyncStateMachine(typeof(AppStartupLoginHandler.<StartApplicationServices>d__19))]
		private Task StartApplicationServices(AuthorizationResult loginResult)
		{
			AppStartupLoginHandler.<StartApplicationServices>d__19 <StartApplicationServices>d__;
			<StartApplicationServices>d__.<>4__this = this;
			<StartApplicationServices>d__.loginResult = loginResult;
			<StartApplicationServices>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<StartApplicationServices>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <StartApplicationServices>d__.<>t__builder;
			<>t__builder.Start<AppStartupLoginHandler.<StartApplicationServices>d__19>(ref <StartApplicationServices>d__);
			return <StartApplicationServices>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(AppStartupLoginHandler.<StartServices>d__20))]
		private Task StartServices()
		{
			AppStartupLoginHandler.<StartServices>d__20 <StartServices>d__;
			<StartServices>d__.<>4__this = this;
			<StartServices>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<StartServices>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <StartServices>d__.<>t__builder;
			<>t__builder.Start<AppStartupLoginHandler.<StartServices>d__20>(ref <StartServices>d__);
			return <StartServices>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(AppStartupLoginHandler.<InitAutoConnect>d__21))]
		private Task InitAutoConnect()
		{
			AppStartupLoginHandler.<InitAutoConnect>d__21 <InitAutoConnect>d__;
			<InitAutoConnect>d__.<>4__this = this;
			<InitAutoConnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<InitAutoConnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <InitAutoConnect>d__.<>t__builder;
			<>t__builder.Start<AppStartupLoginHandler.<InitAutoConnect>d__21>(ref <InitAutoConnect>d__);
			return <InitAutoConnect>d__.<>t__builder.Task;
		}
	}
}
