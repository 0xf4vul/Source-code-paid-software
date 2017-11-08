using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using GoldenFrogUT.Utilities;
using GoldenFrogVPN.Enums;
using System;
using System.Linq;
using System.Net;
using System.Runtime.CompilerServices;
using System.Security;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using VyprVPN.Messages;
using VyprVPN.Properties;
using VyprVPN.Views.OnboardingWindow;

namespace VyprVPN.Viewmodels
{
	public class EmailConfirmationViewModel : BaseOnboardingSubViewModel
	{
		public enum ConfirmationResultMessage
		{
			None,
			ConfirmationEmailSentSuccess,
			ConfirmationEmailAccountAlreadyConfirmedFailure,
			ConfirmationEmailNoAccountFailure,
			UnknownErrorFailure,
			ConfirmAccountAuthFailure
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly EmailConfirmationViewModel.<>c <>9 = new EmailConfirmationViewModel.<>c();

			internal void cctor>b__61_0(object sender, AdvancedPropertyChangedEventArgs args)
			{
				EmailConfirmationViewModel emailConfirmationViewModel = sender as EmailConfirmationViewModel;
				if (emailConfirmationViewModel != null)
				{
					emailConfirmationViewModel.UsernameHintVisible = string.IsNullOrEmpty(args.get_NewValue() as string);
				}
			}
		}

		private readonly CancellationTokenSource cancelConfirmationPollingTokenSource = new CancellationTokenSource();

		private static readonly string[] ConfirmationEmailTextSplitTokens = new string[]
		{
			"{0}"
		};

		private readonly SecureString passwordSecureString;

		private static readonly object AccountConfirmationLockObject = new object();

		private bool _accountConfirmed;

		public static readonly PropertyData ConfirmingProperty = ModelBase.RegisterProperty<bool>("Confirming", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ConfirmationHashProperty = ModelBase.RegisterProperty("ConfirmationHash", typeof(string), null, new EventHandler<AdvancedPropertyChangedEventArgs>(EmailConfirmationViewModel.<>c.<>9.<.cctor>b__61_0), true, true, true);

		public static readonly PropertyData UsernameHintVisibleProperty = ModelBase.RegisterProperty<bool>("UsernameHintVisible", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData ResultMessageProperty = ModelBase.RegisterProperty<EmailConfirmationViewModel.ConfirmationResultMessage>("ResultMessage", typeof(EmailConfirmationViewModel.ConfirmationResultMessage), EmailConfirmationViewModel.ConfirmationResultMessage.None, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData SignupEmailProperty = ModelBase.RegisterProperty("SignupEmail", typeof(string), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData CloseActionProperty = ModelBase.RegisterProperty("CloseAction", typeof(Action), null, null, true, true, true);

		public ICommand ResendEmailCommand
		{
			get;
			private set;
		}

		public ICommand ContactSupportCommand
		{
			get;
			private set;
		}

		public ICommand ConfirmAccountCommand
		{
			get;
			private set;
		}

		public ICommand ClosePopupCommand
		{
			get;
			private set;
		}

		public string SignupEmail
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<string>(EmailConfirmationViewModel.SignupEmailProperty);
			}
			[CompilerGenerated]
			private set
			{
				base.SetValue(EmailConfirmationViewModel.SignupEmailProperty, value);
			}
		}

		public string ConfirmationEmailText1
		{
			get
			{
				return Resources.OnboardingConfirmationEmailText.Split(EmailConfirmationViewModel.ConfirmationEmailTextSplitTokens, StringSplitOptions.None).FirstOrDefault<string>();
			}
		}

		public string ConfirmationEmailText2
		{
			get
			{
				return Resources.OnboardingConfirmationEmailText.Split(EmailConfirmationViewModel.ConfirmationEmailTextSplitTokens, StringSplitOptions.None).LastOrDefault<string>();
			}
		}

		public bool Confirming
		{
			get
			{
				return base.GetValue<bool>(EmailConfirmationViewModel.ConfirmingProperty);
			}
			set
			{
				base.SetValue(EmailConfirmationViewModel.ConfirmingProperty, value);
				this.OnPropertyChanged(new AdvancedPropertyChangedEventArgs(this, "ConfirmationButtonText"));
			}
		}

		public string ConfirmationButtonText
		{
			get
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).UpdateCurrentThreadLocale();
				if (this.Confirming)
				{
					return Resources.Confirming;
				}
				return Resources.ConfirmAccountAllCaps;
			}
		}

		public string ConfirmationHash
		{
			get
			{
				return base.GetValue<string>(EmailConfirmationViewModel.ConfirmationHashProperty);
			}
			set
			{
				base.SetValue(EmailConfirmationViewModel.ConfirmationHashProperty, value);
			}
		}

		public bool UsernameHintVisible
		{
			get
			{
				return base.GetValue<bool>(EmailConfirmationViewModel.UsernameHintVisibleProperty);
			}
			set
			{
				base.SetValue(EmailConfirmationViewModel.UsernameHintVisibleProperty, value);
			}
		}

		public EmailConfirmationViewModel.ConfirmationResultMessage ResultMessage
		{
			get
			{
				return base.GetValue<EmailConfirmationViewModel.ConfirmationResultMessage>(EmailConfirmationViewModel.ResultMessageProperty);
			}
			set
			{
				base.SetValue(EmailConfirmationViewModel.ResultMessageProperty, value);
			}
		}

		public Action CloseAction
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<Action>(EmailConfirmationViewModel.CloseActionProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(EmailConfirmationViewModel.CloseActionProperty, value);
			}
		}

		public EmailConfirmationViewModel(NetworkCredential credentials, Action closeAction, bool pollForConfirmation = true)
		{
			this.SignupEmail = credentials.UserName;
			this.passwordSecureString = credentials.SecurePassword;
			this.ResendEmailCommand = new Command(new Action(this.ResendEmail), null, null);
			this.ContactSupportCommand = new Command(new Action(this.ContactSupport), null, null);
			this.ConfirmAccountCommand = new Command(new Action(this.ConfirmAccount), null, null);
			this.ClosePopupCommand = new Command(new Action(this.ClosePopup), null, null);
			MessageBase<SendConfirmationEmailResultMessage, SendConfirmationEmailApiResultCode>.Register(this, delegate(SendConfirmationEmailResultMessage result)
			{
				SendConfirmationEmailApiResultCode data = result.get_Data();
				base.logger.Log(2, "EmailConfirmationPopupViewModel::Constructor: Received sendconfirmationemailAPI result: {0}", new object[]
				{
					result.get_Data()
				});
				if (data == null)
				{
					this.ResultMessage = EmailConfirmationViewModel.ConfirmationResultMessage.ConfirmationEmailSentSuccess;
					return;
				}
				if (data == 1)
				{
					this.ResultMessage = EmailConfirmationViewModel.ConfirmationResultMessage.ConfirmationEmailAccountAlreadyConfirmedFailure;
					return;
				}
				if (data == 2)
				{
					this.ResultMessage = EmailConfirmationViewModel.ConfirmationResultMessage.ConfirmationEmailNoAccountFailure;
					return;
				}
				this.ResultMessage = EmailConfirmationViewModel.ConfirmationResultMessage.UnknownErrorFailure;
			}, null);
			this.CloseAction = closeAction;
			if (pollForConfirmation)
			{
				Task.Run(delegate
				{
					this.PollForAccountConfirmed();
				}, this.cancelConfirmationPollingTokenSource.Token);
			}
		}

		private void ClosePopup()
		{
			this.StopPolling();
			if (this.CloseAction != null)
			{
				this.CloseAction();
			}
		}

		private void StopPolling()
		{
			try
			{
				this.cancelConfirmationPollingTokenSource.Cancel();
			}
			catch (Exception ex)
			{
				base.logger.Log(3, "Error while trying to stop ConfirmationPolling thread: {0}", new object[]
				{
					ex
				});
			}
		}

		private void ResendEmail()
		{
			this.ResultMessage = EmailConfirmationViewModel.ConfirmationResultMessage.None;
			base.VyprVPNController.SendResendEmailAnalyticsEvent();
			base.VyprVPNController.CallSendConfirmationEmailApi(this.SignupEmail);
		}

		private void ContactSupport()
		{
			base.logger.Log(0, "EmailConfirmationPopupViewModel::ContactSupport: Executing Contact Support command");
			try
			{
				string text = base.VyprVPNController.AddGoogleAnalyticsToURL(Url.FAQ, "help", "create-account-contact-support-faq");
				ServiceLocatorExtensions.ResolveType<IGeneralUtilities>(ServiceLocator.get_Default(), null).StartWebUri(text);
			}
			catch (Exception ex)
			{
				base.logger.Log(1, "EmailConfirmationPopupViewModel::ContactSupport: Unable to shell exec URL {0}: {1}", new object[]
				{
					Url.FAQ,
					ex.Message
				});
			}
		}

		private async void AccountConfirmed()
		{
			object accountConfirmationLockObject = EmailConfirmationViewModel.AccountConfirmationLockObject;
			bool flag = false;
			try
			{
				Monitor.Enter(accountConfirmationLockObject, ref flag);
				if (this._accountConfirmed)
				{
					return;
				}
				this._accountConfirmed = true;
			}
			finally
			{
				int num;
				if (num < 0 && flag)
				{
					Monitor.Exit(accountConfirmationLockObject);
				}
			}
			this.StopPolling();
			bool flag2 = false;
			try
			{
				flag = await this.VyprVPNController.LoginAsync(this.SignupEmail, this.passwordSecureString);
				flag2 = flag;
			}
			catch (Exception var_4_EB)
			{
				this.logger.Log(4, "Exception logging in when account has just been confirmed: {0}", new object[]
				{
					var_4_EB
				});
			}
			if (flag2)
			{
				this.ClosePopup();
				this.UIState.ActiveScreen = Screen.Main;
			}
			else
			{
				this.ClosePopup();
				this.UIState.ActiveScreen = Screen.Login;
			}
		}

		private async void ConfirmAccount()
		{
			this.Confirming = true;
			this.ResultMessage = EmailConfirmationViewModel.ConfirmationResultMessage.None;
			switch (await this.VyprVPNController.ConfirmAccountAsync(this.ConfirmationHash, this.SignupEmail, this.passwordSecureString))
			{
			case 0:
				this.VyprVPNController.SendConfirmedMyAccountAnalyticsEvent();
				this.AccountConfirmed();
				goto IL_FC;
			case 1:
				this.ResultMessage = EmailConfirmationViewModel.ConfirmationResultMessage.ConfirmAccountAuthFailure;
				goto IL_FC;
			}
			this.ResultMessage = EmailConfirmationViewModel.ConfirmationResultMessage.UnknownErrorFailure;
			IL_FC:
			this.Confirming = false;
		}

		private void PollForAccountConfirmed()
		{
			CancellationToken token = this.cancelConfirmationPollingTokenSource.Token;
			while (!token.IsCancellationRequested)
			{
				if (this.IsAccountConfirmed(this.SignupEmail, this.passwordSecureString).Result && !token.IsCancellationRequested)
				{
					this.AccountConfirmed();
				}
				Thread.Sleep(2000);
			}
		}

		private async Task<bool> IsAccountConfirmed(string signupEmail, SecureString password)
		{
			return await this.VyprVPNController.CheckIsAccountConfirmedAsync(signupEmail, password);
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("Confirming"))
			{
				base.RaisePropertyChanged("ConfirmationButtonText");
			}
		}
	}
}
