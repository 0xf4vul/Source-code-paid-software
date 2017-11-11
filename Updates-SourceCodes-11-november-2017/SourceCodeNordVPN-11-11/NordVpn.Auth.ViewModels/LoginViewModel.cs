using Liberation.OS;
using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Auth.Messages;
using NordVpn.Core.Logic.Users;
using NordVpn.Shared;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Auth.ViewModels
{
	public sealed class LoginViewModel : AppScreen
	{
		private readonly ILoginHandler _loginHandler;

		private readonly IBrowser _browser;

		private readonly EventFacade _eventFacade;

		private bool _isBusy;

		private string _errorMsg;

		private string _password;

		private string _username;

		public string Username
		{
			get
			{
				return this._username;
			}
			set
			{
				this.Set<string>(ref this._username, value, "Username");
				base.NotifyOfPropertyChange<bool>(() => this.CanLogin);
			}
		}

		public string Password
		{
			get
			{
				return this._password;
			}
			set
			{
				this.Set<string>(ref this._password, value, "Password");
				base.NotifyOfPropertyChange<bool>(() => this.CanLogin);
			}
		}

		public bool IsBusy
		{
			get
			{
				return this._isBusy;
			}
			set
			{
				this.Set<bool>(ref this._isBusy, value, "IsBusy");
			}
		}

		public string ErrorMessage
		{
			get
			{
				return this._errorMsg;
			}
			set
			{
				this.Set<string>(ref this._errorMsg, value, "ErrorMessage");
			}
		}

		public bool CanLogin
		{
			get
			{
				return !this._username.IsNullOrWhiteSpace() && !this._password.IsNullOrEmpty() && !this._isBusy;
			}
		}

		public bool CanShowRegistrationScreen
		{
			get
			{
				return !this._isBusy;
			}
		}

		public LoginViewModel(ILoginHandler loginHandler, IBrowser browser, EventFacade eventFacade)
		{
			this._loginHandler = loginHandler;
			this._browser = browser;
			this._eventFacade = eventFacade;
			this._loginHandler.UserContext.add_UserLoginFailed(new EventHandler<UserEventArgs>(this.SetCredentials));
			this._loginHandler.UserContext.add_UserLoggedOut(new EventHandler<UserEventArgs>(this.ClearCredentials));
		}

		[AsyncStateMachine(typeof(LoginViewModel.<Login>d__24))]
		public void Login()
		{
			LoginViewModel.<Login>d__24 <Login>d__;
			<Login>d__.<>4__this = this;
			<Login>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Login>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Login>d__.<>t__builder;
			<>t__builder.Start<LoginViewModel.<Login>d__24>(ref <Login>d__);
		}

		public void ShowRegistrationScreen()
		{
			if (!this.CanShowRegistrationScreen)
			{
				return;
			}
			if (!InternetExplorerHelper.IsIE11OrLaterInstalled())
			{
				this._browser.Open("https://join.nordme.org/order/embedded/");
				return;
			}
			this._eventFacade.Publish(new ShowRegistrationScreenMessage());
		}

		public void ResetPassword()
		{
			this._browser.Open("https://ucp.nordme.org/lost-password/");
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this.ErrorMessage = null;
		}

		private void SetBusy(bool busy)
		{
			this.IsBusy = busy;
			base.NotifyOfPropertyChange<bool>(() => this.CanShowRegistrationScreen);
			base.NotifyOfPropertyChange<bool>(() => this.CanLogin);
		}

		private void ClearCredentials(object sender, UserEventArgs e)
		{
			this.Username = "";
			this.Password = "";
		}

		private void SetCredentials(object sender, UserEventArgs e)
		{
			this.Username = e.get_Username();
			this.Password = e.get_Password();
		}
	}
}
