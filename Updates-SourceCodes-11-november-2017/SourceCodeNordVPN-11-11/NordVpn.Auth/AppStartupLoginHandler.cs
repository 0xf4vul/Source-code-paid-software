using Liberation.OS.Win32Services;
using NordVpn.Application.Abstract;
using NordVpn.AppServices;
using NordVpn.AppServices.AutoConnect;
using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Logic.Users;
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

		private readonly SettingsServiceClientManager _settingsServiceClientManager;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		private readonly VpnConnectionWatcher _wcfServiceWatcher;

		private readonly FavouritesManager _favouriteServersUpdater;

		private readonly ILoginHandler _loginHandler;

		private readonly CyberSecHostsStorage _cyberSecHostsStorage;

		private bool _servicesStarted;

		private readonly BlockedApiLoginHandler _blockedApiLoginHandler;

		public UserContext UserContext
		{
			get
			{
				return this._loginHandler.UserContext;
			}
		}

		public AppStartupLoginHandler(ILoginHandler loginHandler, BlockedApiLoginHandler blockedApiLoginHandler, ServersUpdateTimer serversUpdateTimer, ServiceWatcher serviceWatcher, INotificationProvider notificationProvider, AutoConnectManager autoConnectManager, OpenVpnConfigsUpdateTimer openVpnConfigsUpdateTimer, VpnConnectionWatcher wcfServiceWatcher, SettingsServiceClientManager settingsServiceClientManager, FavouritesManager favouriteServersUpdater, CyberSecHostsStorage cyberSecHostsStorage)
		{
			this._serversUpdateTimer = serversUpdateTimer;
			this._serviceWatcher = serviceWatcher;
			this._notificationProvider = notificationProvider;
			this._autoConnectManager = autoConnectManager;
			this._openVpnConfigsUpdateTimer = openVpnConfigsUpdateTimer;
			this._wcfServiceWatcher = wcfServiceWatcher;
			this._settingsServiceClientManager = settingsServiceClientManager;
			this._favouriteServersUpdater = favouriteServersUpdater;
			this._loginHandler = loginHandler;
			this._blockedApiLoginHandler = blockedApiLoginHandler;
			this._cyberSecHostsStorage = cyberSecHostsStorage;
		}

		[AsyncStateMachine(typeof(AppStartupLoginHandler.<TryAuthorizeFromStorage>d__16))]
		public Task<AuthorizationResult> TryAuthorizeFromStorage()
		{
			AppStartupLoginHandler.<TryAuthorizeFromStorage>d__16 <TryAuthorizeFromStorage>d__;
			<TryAuthorizeFromStorage>d__.<>4__this = this;
			<TryAuthorizeFromStorage>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<TryAuthorizeFromStorage>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <TryAuthorizeFromStorage>d__.<>t__builder;
			<>t__builder.Start<AppStartupLoginHandler.<TryAuthorizeFromStorage>d__16>(ref <TryAuthorizeFromStorage>d__);
			return <TryAuthorizeFromStorage>d__.<>t__builder.Task;
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

		[AsyncStateMachine(typeof(AppStartupLoginHandler.<SafeAutoConnectToSetTarget>d__21))]
		private Task SafeAutoConnectToSetTarget()
		{
			AppStartupLoginHandler.<SafeAutoConnectToSetTarget>d__21 <SafeAutoConnectToSetTarget>d__;
			<SafeAutoConnectToSetTarget>d__.<>4__this = this;
			<SafeAutoConnectToSetTarget>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<SafeAutoConnectToSetTarget>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <SafeAutoConnectToSetTarget>d__.<>t__builder;
			<>t__builder.Start<AppStartupLoginHandler.<SafeAutoConnectToSetTarget>d__21>(ref <SafeAutoConnectToSetTarget>d__);
			return <SafeAutoConnectToSetTarget>d__.<>t__builder.Task;
		}
	}
}
