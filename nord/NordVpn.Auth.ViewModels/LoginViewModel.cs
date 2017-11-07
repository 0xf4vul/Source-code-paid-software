using GalaSoft.MvvmLight.CommandWpf;
using NordVpn.Application;
using NordVpn.Application.Abstract;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Controls;
using System.Windows.Input;

namespace NordVpn.Auth.ViewModels
{
	public class LoginViewModel : AppScreen
	{
		private readonly ILoginHandler _loginHandler;

		private readonly IBrowser _browser;

		private bool _connecting;

		private string _errorMsg;

		private bool _show;

		public string LoginText
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
					this.Login.RaiseCanExecuteChanged();
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

		public bool StartAnimation
		{
			get;
			set;
		}

		public RelayCommand<PasswordBox> Login
		{
			[CompilerGenerated]
			get
			{
				return this.<Login>k__BackingField;
			}
		}

		public ICommand ForgotPassword
		{
			[CompilerGenerated]
			get
			{
				return this.<ForgotPassword>k__BackingField;
			}
		}

		public LoginViewModel(ILoginHandler loginHandler, IBrowser browser)
		{
			this._loginHandler = loginHandler;
			this._browser = browser;
			this.<Login>k__BackingField = new RelayCommand<PasswordBox>(new Action<PasswordBox>(this.LoginCommand), (PasswordBox passwordBox) => !this.Connecting);
			this.<ForgotPassword>k__BackingField = new RelayCommand(new Action(this.ForgotPasswordCommand));
			this.StartAnimation = true;
		}

		[AsyncStateMachine(typeof(LoginViewModel.<LoginCommand>d__29))]
		private void LoginCommand(PasswordBox passwordBox)
		{
			LoginViewModel.<LoginCommand>d__29 <LoginCommand>d__;
			<LoginCommand>d__.<>4__this = this;
			<LoginCommand>d__.passwordBox = passwordBox;
			<LoginCommand>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<LoginCommand>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <LoginCommand>d__.<>t__builder;
			<>t__builder.Start<LoginViewModel.<LoginCommand>d__29>(ref <LoginCommand>d__);
		}

		private void ForgotPasswordCommand()
		{
			this._browser.Open("https://nordvpn.com/lost-password/");
		}
	}
}
