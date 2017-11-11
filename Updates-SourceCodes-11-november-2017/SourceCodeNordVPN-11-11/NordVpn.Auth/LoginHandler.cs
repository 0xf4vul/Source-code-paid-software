using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Infrastructure.Location;
using NordVpn.Settings.Storage;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Auth
{
	public class LoginHandler : ILoginHandler
	{
		private readonly EncryptedCredentialsStore _credentialsStore;

		private readonly IUserStore _userStore;

		private readonly UserRegionScanner _regionScanner;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		public UserContext UserContext
		{
			[CompilerGenerated]
			get
			{
				return this.<UserContext>k__BackingField;
			}
		}

		public LoginHandler(EncryptedCredentialsStore credentialsStore, UserRegionScanner regionScanner, UserContext context, IUserStore userStore)
		{
			this._credentialsStore = credentialsStore;
			this._regionScanner = regionScanner;
			this._userStore = userStore;
			this.<UserContext>k__BackingField = context;
		}

		[AsyncStateMachine(typeof(LoginHandler.<TryAuthorizeFromStorage>d__8))]
		public Task<AuthorizationResult> TryAuthorizeFromStorage()
		{
			LoginHandler.<TryAuthorizeFromStorage>d__8 <TryAuthorizeFromStorage>d__;
			<TryAuthorizeFromStorage>d__.<>4__this = this;
			<TryAuthorizeFromStorage>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<TryAuthorizeFromStorage>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <TryAuthorizeFromStorage>d__.<>t__builder;
			<>t__builder.Start<LoginHandler.<TryAuthorizeFromStorage>d__8>(ref <TryAuthorizeFromStorage>d__);
			return <TryAuthorizeFromStorage>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(LoginHandler.<TryAuthorize>d__9))]
		public Task<AuthorizationResult> TryAuthorize(string username, string password)
		{
			LoginHandler.<TryAuthorize>d__9 <TryAuthorize>d__;
			<TryAuthorize>d__.<>4__this = this;
			<TryAuthorize>d__.username = username;
			<TryAuthorize>d__.password = password;
			<TryAuthorize>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<TryAuthorize>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <TryAuthorize>d__.<>t__builder;
			<>t__builder.Start<LoginHandler.<TryAuthorize>d__9>(ref <TryAuthorize>d__);
			return <TryAuthorize>d__.<>t__builder.Task;
		}

		public void Logout()
		{
			this.UserContext.LogoutUser();
			this._credentialsStore.Reset();
		}

		[AsyncStateMachine(typeof(LoginHandler.<Authorize>d__11))]
		private Task<AuthorizationResult> Authorize(string username, string password)
		{
			LoginHandler.<Authorize>d__11 <Authorize>d__;
			<Authorize>d__.<>4__this = this;
			<Authorize>d__.username = username;
			<Authorize>d__.password = password;
			<Authorize>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<Authorize>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <Authorize>d__.<>t__builder;
			<>t__builder.Start<LoginHandler.<Authorize>d__11>(ref <Authorize>d__);
			return <Authorize>d__.<>t__builder.Task;
		}

		private void Login(string username, string password)
		{
			User user = this.CreateUnauthorizedUser(username, password);
			this.UserContext.LoginUser(user);
		}

		private void NotifyFailedToLogin(string username, string password)
		{
			User user = this.CreateUnauthorizedUser(username, password);
			this.UserContext.NotifyUserFailedToLogin(user);
		}

		private User CreateUnauthorizedUser(string username, string password)
		{
			UserLocation userLocation = this._regionScanner.GetUserLocation();
			return new User(0, new UserCredentials(username, password), userLocation, SubscriptionSettings.get_Empty(), new List<FavouriteServer>());
		}
	}
}
