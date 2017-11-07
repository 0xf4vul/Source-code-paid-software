using Caliburn.Micro;
using GalaSoft.MvvmLight.CommandWpf;
using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.AppServices;
using NordVpn.Core.Abstract;
using NordVpn.Core.Logic.Users;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace NordVpn.Settings.ViewModels
{
	public sealed class MyAccountViewModel : AppScreen
	{
		private readonly IBrowser _browser;

		private readonly IUserContext _userContext;

		private readonly IEventAggregator _eventAggregator;

		private readonly UtmProvider _utmProvider;

		public ICommand ChangePassword
		{
			[CompilerGenerated]
			get
			{
				return this.<ChangePassword>k__BackingField;
			}
		}

		public ICommand ActivateAction
		{
			[CompilerGenerated]
			get
			{
				return this.<ActivateAction>k__BackingField;
			}
		}

		public ICommand OpenWebsite
		{
			[CompilerGenerated]
			get
			{
				return this.<OpenWebsite>k__BackingField;
			}
		}

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

		public MyAccountViewModel(IUserContext userContext, IEventAggregator eventAggregator, IBrowser browser, UtmProvider utmProvider)
		{
			this._userContext = userContext;
			this._eventAggregator = eventAggregator;
			this._browser = browser;
			this._utmProvider = utmProvider;
			this.<ChangePassword>k__BackingField = new RelayCommand(new Action(this.ChangePasswordCommand));
			this.<ActivateAction>k__BackingField = new RelayCommand(new Action(this.Activate));
			this.<OpenWebsite>k__BackingField = new RelayCommand(new Action(this.OpenWebsiteCommand));
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

		private void ChangePasswordCommand()
		{
			this._browser.Open("https://nordvpn.com/login/");
		}

		private void Activate()
		{
			this._browser.Open(this._utmProvider.GetMyAccountActivationUtm());
		}

		private void OpenWebsiteCommand()
		{
			this._browser.Open("https://nordvpn.com/login/");
		}
	}
}
