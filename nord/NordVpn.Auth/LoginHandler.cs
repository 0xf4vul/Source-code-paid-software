using NordVpn.Core.Abstract;
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
	public class LoginHandler : IUserContext, ILoginHandler
	{
		private class UserContext
		{
			private User _currentUser;

			private readonly User _defaultUser = User.get_DefaultUser();

			[method: CompilerGenerated]
			[CompilerGenerated]
			public event EventHandler<UserEventArgs> UserChanged;

			[method: CompilerGenerated]
			[CompilerGenerated]
			public event EventHandler<FavouriteServersChangedEventArgs> FavouritesChanged;

			[method: CompilerGenerated]
			[CompilerGenerated]
			public event EventHandler<FavouriteServersChangedEventArgs> CurrentUserFavouritesChanged;

			[method: CompilerGenerated]
			[CompilerGenerated]
			public event EventHandler<UserEventArgs> UserLoggedIn;

			[method: CompilerGenerated]
			[CompilerGenerated]
			public event EventHandler<UserEventArgs> UserLoggedOut;

			[method: CompilerGenerated]
			[CompilerGenerated]
			public event EventHandler<UserEventArgs> UserAuthenticated;

			public bool Authenticated
			{
				get;
				private set;
			}

			public bool IsLoggedIn
			{
				get;
				private set;
			}

			public User CurrentUser
			{
				get
				{
					return this._currentUser;
				}
			}

			public UserContext()
			{
				this._currentUser = this._defaultUser;
			}

			public void AuthorizeUser(User user)
			{
				this.LoginUser(user);
				this.Authenticated = true;
				this.RaiseUserAuthenticated();
			}

			public void LoginUser(User user)
			{
				this.SetCurrentUser(user);
				this.Authenticated = false;
				this.IsLoggedIn = true;
				this.RaiseUserLoggedIn();
			}

			public void LogoutUser()
			{
				this.SetCurrentUser(this._defaultUser);
				this.Authenticated = false;
				this.IsLoggedIn = false;
				this.RaiseUserLoggedOut();
			}

			private void SetCurrentUser(User user)
			{
				this._currentUser = user;
				this.RaiseFavouritesChanged(user.get_FavouriteServers());
				this._currentUser.remove_FavouriteServersChanged(new EventHandler<FavouriteServersChangedEventArgs>(this.OnFavouriteServersChanged));
				this._currentUser.add_FavouriteServersChanged(new EventHandler<FavouriteServersChangedEventArgs>(this.OnFavouriteServersChanged));
				this.RaiseUserChanged(user);
			}

			private void OnFavouriteServersChanged(object sender, FavouriteServersChangedEventArgs e)
			{
				this.RaiseFavouritesChanged(e.get_Servers());
				this.RaiseCurrentUserFavouritesChangede(e.get_Servers());
			}

			private void RaiseUserChanged(User user)
			{
				EventHandler<UserEventArgs> expr_06 = this.UserChanged;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, new UserEventArgs(user));
			}

			private void RaiseUserLoggedIn()
			{
				EventHandler<UserEventArgs> expr_06 = this.UserLoggedIn;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, new UserEventArgs(this.CurrentUser));
			}

			private void RaiseUserLoggedOut()
			{
				EventHandler<UserEventArgs> expr_06 = this.UserLoggedOut;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, new UserEventArgs(this.CurrentUser));
			}

			private void RaiseUserAuthenticated()
			{
				EventHandler<UserEventArgs> expr_06 = this.UserAuthenticated;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, new UserEventArgs(this.CurrentUser));
			}

			private void RaiseFavouritesChanged(IReadOnlyCollection<CategoryServer> servers)
			{
				EventHandler<FavouriteServersChangedEventArgs> expr_06 = this.FavouritesChanged;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, new FavouriteServersChangedEventArgs(servers));
			}

			private void RaiseCurrentUserFavouritesChangede(IReadOnlyCollection<CategoryServer> servers)
			{
				EventHandler<FavouriteServersChangedEventArgs> expr_06 = this.CurrentUserFavouritesChanged;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, new FavouriteServersChangedEventArgs(servers));
			}
		}

		private readonly EncryptedUserSettingsStorage _settingsStorage;

		private readonly IUserStore _userStore;

		private readonly UserRegionScanner _regionScanner;

		private readonly LoginHandler.UserContext _context;

		public event EventHandler<UserEventArgs> UserChanged
		{
			add
			{
				this._context.UserChanged += value;
			}
			remove
			{
				this._context.UserChanged -= value;
			}
		}

		public event EventHandler<FavouriteServersChangedEventArgs> FavouritesChanged
		{
			add
			{
				this._context.FavouritesChanged += value;
			}
			remove
			{
				this._context.FavouritesChanged -= value;
			}
		}

		public event EventHandler<FavouriteServersChangedEventArgs> CurrentUserFavouritesChanged
		{
			add
			{
				this._context.CurrentUserFavouritesChanged += value;
			}
			remove
			{
				this._context.CurrentUserFavouritesChanged -= value;
			}
		}

		public event EventHandler<UserEventArgs> UserLoggedIn
		{
			add
			{
				this._context.UserLoggedIn += value;
			}
			remove
			{
				this._context.UserLoggedIn -= value;
			}
		}

		public event EventHandler<UserEventArgs> UserLoggedOut
		{
			add
			{
				this._context.UserLoggedOut += value;
			}
			remove
			{
				this._context.UserLoggedOut -= value;
			}
		}

		public event EventHandler<UserEventArgs> UserAuthenticated
		{
			add
			{
				this._context.UserAuthenticated += value;
			}
			remove
			{
				this._context.UserAuthenticated -= value;
			}
		}

		public bool Authenticated
		{
			get
			{
				return this._context.Authenticated;
			}
		}

		public bool IsLoggedIn
		{
			get
			{
				return this._context.IsLoggedIn;
			}
		}

		public User CurrentUser
		{
			get
			{
				return this._context.CurrentUser;
			}
		}

		public LoginHandler(EncryptedUserSettingsStorage settingsStorage, UserRegionScanner regionScanner, IUserStore userStore)
		{
			this._settingsStorage = settingsStorage;
			this._regionScanner = regionScanner;
			this._userStore = userStore;
			this._context = new LoginHandler.UserContext();
		}

		[AsyncStateMachine(typeof(LoginHandler.<TryAuthorizeAsNewUser>d__29))]
		public Task<AuthorizationResult> TryAuthorizeAsNewUser(string username, string password)
		{
			LoginHandler.<TryAuthorizeAsNewUser>d__29 <TryAuthorizeAsNewUser>d__;
			<TryAuthorizeAsNewUser>d__.<>4__this = this;
			<TryAuthorizeAsNewUser>d__.username = username;
			<TryAuthorizeAsNewUser>d__.password = password;
			<TryAuthorizeAsNewUser>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<TryAuthorizeAsNewUser>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <TryAuthorizeAsNewUser>d__.<>t__builder;
			<>t__builder.Start<LoginHandler.<TryAuthorizeAsNewUser>d__29>(ref <TryAuthorizeAsNewUser>d__);
			return <TryAuthorizeAsNewUser>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(LoginHandler.<TryAuthorizeFromStorage>d__30))]
		public Task<AuthorizationResult> TryAuthorizeFromStorage()
		{
			LoginHandler.<TryAuthorizeFromStorage>d__30 <TryAuthorizeFromStorage>d__;
			<TryAuthorizeFromStorage>d__.<>4__this = this;
			<TryAuthorizeFromStorage>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<TryAuthorizeFromStorage>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <TryAuthorizeFromStorage>d__.<>t__builder;
			<>t__builder.Start<LoginHandler.<TryAuthorizeFromStorage>d__30>(ref <TryAuthorizeFromStorage>d__);
			return <TryAuthorizeFromStorage>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(LoginHandler.<TryAuthorize>d__31))]
		public Task<AuthorizationResult> TryAuthorize(string username, string password)
		{
			LoginHandler.<TryAuthorize>d__31 <TryAuthorize>d__;
			<TryAuthorize>d__.<>4__this = this;
			<TryAuthorize>d__.username = username;
			<TryAuthorize>d__.password = password;
			<TryAuthorize>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<TryAuthorize>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <TryAuthorize>d__.<>t__builder;
			<>t__builder.Start<LoginHandler.<TryAuthorize>d__31>(ref <TryAuthorize>d__);
			return <TryAuthorize>d__.<>t__builder.Task;
		}

		public void Logout()
		{
			this._context.LogoutUser();
			this._settingsStorage.Clear();
		}

		[AsyncStateMachine(typeof(LoginHandler.<Authorize>d__33))]
		private Task<AuthorizationResult> Authorize(string username, string password)
		{
			LoginHandler.<Authorize>d__33 <Authorize>d__;
			<Authorize>d__.<>4__this = this;
			<Authorize>d__.username = username;
			<Authorize>d__.password = password;
			<Authorize>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<Authorize>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <Authorize>d__.<>t__builder;
			<>t__builder.Start<LoginHandler.<Authorize>d__33>(ref <Authorize>d__);
			return <Authorize>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(LoginHandler.<AuthorizeAsNewUser>d__34))]
		private Task<AuthorizationResult> AuthorizeAsNewUser(string username, string password)
		{
			LoginHandler.<AuthorizeAsNewUser>d__34 <AuthorizeAsNewUser>d__;
			<AuthorizeAsNewUser>d__.<>4__this = this;
			<AuthorizeAsNewUser>d__.username = username;
			<AuthorizeAsNewUser>d__.password = password;
			<AuthorizeAsNewUser>d__.<>t__builder = AsyncTaskMethodBuilder<AuthorizationResult>.Create();
			<AuthorizeAsNewUser>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<AuthorizationResult> <>t__builder = <AuthorizeAsNewUser>d__.<>t__builder;
			<>t__builder.Start<LoginHandler.<AuthorizeAsNewUser>d__34>(ref <AuthorizeAsNewUser>d__);
			return <AuthorizeAsNewUser>d__.<>t__builder.Task;
		}

		private void Login(string username, string password)
		{
			UserLocation userLocation = this._regionScanner.GetUserLocation();
			User user = new User(0, new UserCredentials(username, password), userLocation, UserSettings.get_Empty(), new List<FavouriteServer>());
			this._context.LoginUser(user);
		}
	}
}
