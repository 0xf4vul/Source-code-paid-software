using CyberGhost.Components;
using CyberGhost.Helpers;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages
{
	public class Login : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Login.<>c <>9 = new Login.<>c();

			public static Action <>9__11_0;

			public static Action <>9__12_0;

			internal void <DoLogin>b__11_0()
			{
				Helper.OpenLink("go_account", false);
			}

			internal void <PwForgot_Click>b__12_0()
			{
				Helper.OpenLink((Theming.CurrentTheme == Theming.Theme.Pro) ? "go_forgot_password_pro" : "go_forgot_password", false);
			}
		}

		internal Image GhostyImage;

		internal ModernProgressRing LoadingRing;

		internal WrapPanel LoginRequired;

		internal TextBox EdtUserName;

		internal Label UsernameLabel;

		internal PasswordBox EdtPassword;

		internal Label PasswordLabel;

		internal Button CmdOkLogin;

		internal Button CmdCancelLogin;

		internal Button ResetSettings;

		internal Button Purchase;

		private bool _contentLoaded;

		public ICommand LoginCommand
		{
			get;
			set;
		}

		public Login()
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.LoginCommand = new AsyncDelegateCommand(new Func<Task>(this.DoLogin), new Func<bool>(this.CanLogin));
			Theming.ThemeChanged += new Theming.NotifyEvent(this.Init);
			this.Init();
		}

		public void Init()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\friends.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsHeadLinkVisible(true);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			if (GuiHelper.IsProLoginRequired())
			{
				ObjectHolder.MainForm.set_IsNavigationVisible(false);
				ObjectHolder.MainForm.set_IsHeadLinkVisible(false);
				this.CmdCancelLogin.Visibility = Visibility.Collapsed;
				this.LoginRequired.Visibility = Visibility.Visible;
				this.Purchase.Visibility = Visibility.Visible;
			}
			else
			{
				ObjectHolder.MainForm.set_IsNavigationVisible(true);
				ObjectHolder.MainForm.set_IsHeadLinkVisible(true);
				this.CmdCancelLogin.Visibility = Visibility.Visible;
				this.LoginRequired.Visibility = Visibility.Collapsed;
				this.Purchase.Visibility = Visibility.Collapsed;
			}
			this.EdtPassword.Clear();
			this.EdtUserName.Text = string.Empty;
			this.LoadingRing.Visibility = Visibility.Hidden;
			this.GhostyImage.Visibility = Visibility.Visible;
			HelperFunctions.DelayExecution(TimeSpan.FromMilliseconds(500.0), delegate
			{
				this.EdtUserName.Focus();
			});
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			this.EdtPassword.Clear();
			this.EdtUserName.Text = string.Empty;
		}

		public bool CanLogin()
		{
			return !string.IsNullOrWhiteSpace(this.EdtPassword.Password) && !string.IsNullOrWhiteSpace(this.EdtUserName.Text);
		}

		[AsyncStateMachine(typeof(Login.<DoLogin>d__11))]
		public Task DoLogin()
		{
			Login.<DoLogin>d__11 <DoLogin>d__;
			<DoLogin>d__.<>4__this = this;
			<DoLogin>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<DoLogin>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <DoLogin>d__.<>t__builder;
			<>t__builder.Start<Login.<DoLogin>d__11>(ref <DoLogin>d__);
			return <DoLogin>d__.<>t__builder.Task;
		}

		private void PwForgot_Click(object sender, RoutedEventArgs e)
		{
			Action arg_1F_0;
			if ((arg_1F_0 = Login.<>c.<>9__12_0) == null)
			{
				arg_1F_0 = (Login.<>c.<>9__12_0 = new Action(Login.<>c.<>9.<PwForgot_Click>b__12_0));
			}
			Task.Run(arg_1F_0);
		}

		private void EdtPassword_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.PasswordLabel.Visibility = Visibility.Hidden;
		}

		private void EdtPassword_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.EdtPassword.Password.Length == 0)
			{
				this.PasswordLabel.Visibility = Visibility.Visible;
			}
		}

		private void EdtUserName_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.UsernameLabel.Visibility = Visibility.Hidden;
		}

		private void EdtUserName_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.EdtUserName.Text.Length == 0)
			{
				this.UsernameLabel.Visibility = Visibility.Visible;
			}
		}

		private async void Purchase_Click(object sender, RoutedEventArgs e)
		{
			await Helper.OpenLink("go_purchase_pro", false);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/login.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.GhostyImage = (Image)target;
				return;
			case 2:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			case 3:
				this.LoginRequired = (WrapPanel)target;
				return;
			case 4:
				this.EdtUserName = (TextBox)target;
				this.EdtUserName.GotFocus += new RoutedEventHandler(this.EdtUserName_OnGotFocus);
				this.EdtUserName.LostFocus += new RoutedEventHandler(this.EdtUserName_OnLostFocus);
				return;
			case 5:
				this.UsernameLabel = (Label)target;
				return;
			case 6:
				this.EdtPassword = (PasswordBox)target;
				this.EdtPassword.GotFocus += new RoutedEventHandler(this.EdtPassword_OnGotFocus);
				this.EdtPassword.LostFocus += new RoutedEventHandler(this.EdtPassword_OnLostFocus);
				return;
			case 7:
				this.PasswordLabel = (Label)target;
				return;
			case 8:
				this.CmdOkLogin = (Button)target;
				return;
			case 9:
				this.CmdCancelLogin = (Button)target;
				return;
			case 10:
				this.ResetSettings = (Button)target;
				this.ResetSettings.Click += new RoutedEventHandler(this.PwForgot_Click);
				return;
			case 11:
				this.Purchase = (Button)target;
				this.Purchase.Click += new RoutedEventHandler(this.Purchase_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
