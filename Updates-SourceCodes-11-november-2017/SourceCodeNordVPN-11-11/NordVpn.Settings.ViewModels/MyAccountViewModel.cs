using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.AppServices;
using NordVpn.Core.Logic.Users;
using System;

namespace NordVpn.Settings.ViewModels
{
	public sealed class MyAccountViewModel : AppScreen
	{
		private const string LoginUrl = "https://ucp.nordme.org/login/";

		private readonly IBrowser _browser;

		private readonly UserContext _userContext;

		private readonly UtmProvider _utmProvider;

		public string Username
		{
			get
			{
				return this._userContext.get_CurrentUser().get_Username();
			}
		}

		public string RegisterDate
		{
			get
			{
				return this._userContext.get_CurrentUser().get_RegistrationDate().ToShortDateString();
			}
		}

		public string ValidDate
		{
			get
			{
				return this._userContext.get_CurrentUser().get_SubscriptionExpirationDate().ToShortDateString();
			}
		}

		public bool IsUserAuthenticated
		{
			get
			{
				return this._userContext.get_Authenticated();
			}
		}

		public bool IsActiveSubscription
		{
			get
			{
				return this._userContext.get_CurrentUser().get_IsSubscriptionActive();
			}
		}

		public MyAccountViewModel(UserContext userContext, IBrowser browser, UtmProvider utmProvider)
		{
			this._userContext = userContext;
			this._browser = browser;
			this._utmProvider = utmProvider;
			this._userContext.add_UserChanged(new EventHandler<UserEventArgs>(this.OnUserChanged));
			this._userContext.add_UserAuthenticated(new EventHandler<UserEventArgs>(this.OnUserAuthenticated));
			this.set_DisplayName("My Account");
		}

		private void OnUserChanged(object sender, UserEventArgs eventArgs)
		{
			base.NotifyOfPropertyChange<string>(() => this.Username);
			base.NotifyOfPropertyChange<string>(() => this.RegisterDate);
			base.NotifyOfPropertyChange<string>(() => this.ValidDate);
			base.NotifyOfPropertyChange<bool>(() => this.IsActiveSubscription);
		}

		private void OnUserAuthenticated(object sender, UserEventArgs e)
		{
			base.NotifyOfPropertyChange<bool>(() => this.IsUserAuthenticated);
		}

		public void ChangePassword()
		{
			this._browser.Open("https://ucp.nordme.org/login/");
		}

		public void ActivateAccount()
		{
			this._browser.Open(this._utmProvider.GetMyAccountActivationUtm());
		}

		public void OpenWebsite()
		{
			this._browser.Open("https://ucp.nordme.org/login/");
		}
	}
}
