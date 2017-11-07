using GalaSoft.MvvmLight.CommandWpf;
using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Auth.Messages;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Controls;
using System.Windows.Input;

namespace NordVpn.Auth.ViewModels
{
	public class RegisterViewModel : AppScreen
	{
		private readonly EventFacade _eventFacade;

		private readonly ILoginHandler _loginHandler;

		private bool _show;

		private string _errorMsg;

		private bool _connecting;

		private readonly IBrowser _browser;

		public string LoginText
		{
			get;
			set;
		}

		public string PasswordText
		{
			get;
			set;
		}

		public bool Connecting
		{
			get
			{
				return this._connecting;
			}
			set
			{
				if (base.Set<bool>(ref this._connecting, value, "Connecting"))
				{
					this.Register.RaiseCanExecuteChanged();
				}
			}
		}

		public string ErrorMsg
		{
			get
			{
				return this._errorMsg;
			}
			set
			{
				base.Set<string>(ref this._errorMsg, value, "ErrorMsg");
			}
		}

		public bool Show
		{
			get
			{
				return this._show;
			}
			set
			{
				base.Set<bool>(ref this._show, value, "Show");
			}
		}

		public RelayCommand<PasswordBox> Register
		{
			[CompilerGenerated]
			get
			{
				return this.<Register>k__BackingField;
			}
		}

		public ICommand Back
		{
			[CompilerGenerated]
			get
			{
				return this.<Back>k__BackingField;
			}
		}

		public RegisterViewModel(EventFacade eventFacade, IBrowser browser, ILoginHandler loginHandler)
		{
			this._eventFacade = eventFacade;
			this._browser = browser;
			this._loginHandler = loginHandler;
			this.<Register>k__BackingField = new RelayCommand<PasswordBox>(new Action<PasswordBox>(this.RegisterCommand), (PasswordBox passwordBox) => !this.Connecting);
			this.<Back>k__BackingField = new RelayCommand(new Action(this.BackCommand));
		}

		public void OpenTermsOfService()
		{
			this._browser.Open("https://nordvpn.com/terms-of-service/");
		}

		[AsyncStateMachine(typeof(RegisterViewModel.<RegisterCommand>d__31))]
		private void RegisterCommand(PasswordBox passwordBox)
		{
			RegisterViewModel.<RegisterCommand>d__31 <RegisterCommand>d__;
			<RegisterCommand>d__.<>4__this = this;
			<RegisterCommand>d__.passwordBox = passwordBox;
			<RegisterCommand>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<RegisterCommand>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <RegisterCommand>d__.<>t__builder;
			<>t__builder.Start<RegisterViewModel.<RegisterCommand>d__31>(ref <RegisterCommand>d__);
		}

		private void BackCommand()
		{
			this.LoginText = "";
			this.PasswordText = "";
			this._eventFacade.Publish(new ShowLoginScreenMessage());
		}
	}
}
