using CyberGhost.Helpers;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class ActivateLicense : System.Windows.Controls.UserControl, IComponentConnector, IContent
	{
		private readonly Timer _countDownTimer;

		private int _counter;

		internal Image GhostyImage;

		internal System.Windows.Controls.Button CmdOkLogin;

		private bool _contentLoaded;

		public ActivateLicense()
		{
			this.InitializeComponent();
			this._countDownTimer = new Timer();
			this._countDownTimer.Tick += new EventHandler(this.CountDownTimerTick);
			this._countDownTimer.Interval = 1000;
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\friends.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.StartCounter();
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			this.StopCounter();
		}

		private void StartCounter()
		{
			this._counter = 30;
			this._countDownTimer.Start();
		}

		private void CountDownTimerTick(object sender, EventArgs e)
		{
			this._counter--;
			if (this._counter <= 0)
			{
				this.StopCounter();
			}
		}

		private void Cancel_Click(object sender, RoutedEventArgs e)
		{
			this._countDownTimer.Stop();
			Navigation.HideMessageOverlay(!GuiHelper.IsProLoginRequired());
			Navigation.GoHome();
		}

		public void StopCounter()
		{
			this._countDownTimer.Stop();
			Navigation.HideMessageOverlay(!GuiHelper.IsProLoginRequired());
			Navigation.GoHome();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/activatelicense.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GhostyImage = (Image)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.CmdOkLogin = (System.Windows.Controls.Button)target;
			this.CmdOkLogin.Click += new RoutedEventHandler(this.Cancel_Click);
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class AuthError : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		internal Button CmdOkLogin;

		private bool _contentLoaded;

		public AuthError()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\medic.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			try
			{
				Toaster.ShowError(ObjectHolder.MainForm, Status.Status_Head_CyberGhost_6, Status.status_seems, 1, 0, 10.0);
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void ok_Click(object sender, RoutedEventArgs e)
		{
			ObjectHolder.MainForm.Disconnect();
			Navigation.HideMessageOverlay(true);
			Navigation.GoHome();
			Theming.CurrentThemeSet = Theming.ThemeSet.Regular;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/autherror.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GhostyImage = (Image)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.CmdOkLogin = (Button)target;
			this.CmdOkLogin.Click += new RoutedEventHandler(this.ok_Click);
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class ConnectionDropped : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		internal Button CmdOkLogin;

		private bool _contentLoaded;

		public ConnectionDropped()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\connectionLost.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			try
			{
				Toaster.ShowError(ObjectHolder.MainForm, Status.Status_Head_CyberGhost_6, Status.ConnectionDroppedExplaination, 1, 0, 10.0);
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void retry_Click(object sender, RoutedEventArgs e)
		{
			Navigation.HideMessageOverlay(true);
			ObjectHolder.MainForm.Disconnect();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/vpnexited.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GhostyImage = (Image)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.CmdOkLogin = (Button)target;
			this.CmdOkLogin.Click += new RoutedEventHandler(this.retry_Click);
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class Logout : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		internal Button CmdOkLogin;

		private bool _contentLoaded;

		public Logout()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\medic.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			try
			{
				Toaster.ShowWarning(ObjectHolder.MainForm, Status.Status_Head_CyberGhost_6, Alerts.Logout_Message, 1, 0, 10.0);
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void ok_Click(object sender, RoutedEventArgs e)
		{
			Navigation.HideMessageOverlay(true);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/logout.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GhostyImage = (Image)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.CmdOkLogin = (Button)target;
			this.CmdOkLogin.Click += new RoutedEventHandler(this.ok_Click);
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class NoServerAvailable : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		internal Button CmdOkLogin;

		private bool _contentLoaded;

		public NoServerAvailable()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\connectionLost.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			try
			{
				Toaster.ShowError(ObjectHolder.MainForm, Status.Status_Head_CyberGhost_6, Status.SorryThereIsCurrentlyNoServerAvailableForThisProfilePleaseTryAgainInAFewMinutes, 1, 0, 10.0);
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void retry_Click(object sender, RoutedEventArgs e)
		{
			Navigation.HideMessageOverlay(true);
			ObjectHolder.MainForm.Disconnect();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/noserveravailable.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GhostyImage = (Image)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.CmdOkLogin = (Button)target;
			this.CmdOkLogin.Click += new RoutedEventHandler(this.retry_Click);
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Settings;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class PlanChanged : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		internal TextBlock ActivePlan;

		internal Button CmdOkLogin;

		private bool _contentLoaded;

		public PlanChanged()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\medic.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			try
			{
				if (ObjectHolder.CurrentUser != null)
				{
					string text = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_DisplaynameLocalization().get_Strings()[SettingsHolder.get_Settings().get_Language()];
					if (string.IsNullOrEmpty(text))
					{
						text = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_DisplaynameLocalization().get_Strings()["en"];
					}
					if (string.IsNullOrEmpty(text))
					{
						text = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_InternalName();
					}
					this.ActivePlan.Text = text;
				}
			}
			catch (Exception)
			{
				if (ObjectHolder.CurrentUser != null)
				{
					this.ActivePlan.Text = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_InternalName();
				}
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void ok_Click(object sender, RoutedEventArgs e)
		{
			Navigation.HideMessageOverlay(true);
			Navigation.GoHome();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/planchanged.xaml", UriKind.Relative);
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
				this.ActivePlan = (TextBlock)target;
				return;
			case 3:
				this.CmdOkLogin = (Button)target;
				this.CmdOkLogin.Click += new RoutedEventHandler(this.ok_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Settings;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class RetryConnect : System.Windows.Controls.UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <StopCounter>d__12 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public RetryConnect <>4__this;

			public bool isReconnect;

			private TaskAwaiter<MainWindow.ConnectResultAdvanced> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				RetryConnect retryConnect = this.<>4__this;
				try
				{
					TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter;
					if (num != 0)
					{
						retryConnect._countDownTimer.Stop();
						taskAwaiter = ObjectHolder.MainForm.Connect(this.isReconnect, false, false).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, RetryConnect.<StopCounter>d__12>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		private readonly Timer _countDownTimer;

		private int _counter;

		internal Image GhostyImage;

		internal TextBlock Ticker;

		internal System.Windows.Controls.Button CmdOkLogin;

		private bool _contentLoaded;

		public RetryConnect()
		{
			this.InitializeComponent();
			this._countDownTimer = new Timer();
			this._countDownTimer.Tick += new EventHandler(this.CountDownTimerTick);
			this._countDownTimer.Interval = 1000;
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\connectionLost.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.StartCounter();
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void StartCounter()
		{
			this._counter = Constants.ReconnectCountDown;
			this.Ticker.Text = this._counter.ToString();
			this._countDownTimer.Start();
		}

		private void CountDownTimerTick(object sender, EventArgs e)
		{
			this._counter--;
			if (this._counter <= 0)
			{
				this.StopCounter(false);
				Navigation.HideMessageOverlay(true);
				return;
			}
			this.Ticker.Text = this._counter.ToString();
		}

		private void Cancel_Click(object sender, RoutedEventArgs e)
		{
			this._countDownTimer.Stop();
			Navigation.HideMessageOverlay(true);
			ObjectHolder.MainForm.Disconnect();
		}

		private void ok_Click(object sender, RoutedEventArgs e)
		{
			this.StopCounter(true);
		}

		[AsyncStateMachine(typeof(RetryConnect.<StopCounter>d__12))]
		public void StopCounter(bool isReconnect)
		{
			RetryConnect.<StopCounter>d__12 <StopCounter>d__;
			<StopCounter>d__.<>4__this = this;
			<StopCounter>d__.isReconnect = isReconnect;
			<StopCounter>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<StopCounter>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <StopCounter>d__.<>t__builder;
			<>t__builder.Start<RetryConnect.<StopCounter>d__12>(ref <StopCounter>d__);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/retryconnect.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
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
				this.Ticker = (TextBlock)target;
				return;
			case 3:
				((System.Windows.Controls.Button)target).Click += new RoutedEventHandler(this.ok_Click);
				return;
			case 4:
				this.CmdOkLogin = (System.Windows.Controls.Button)target;
				this.CmdOkLogin.Click += new RoutedEventHandler(this.Cancel_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class ServerNotReachable : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		internal Button CmdOkLogin;

		private bool _contentLoaded;

		public ServerNotReachable()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\connectionLost.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			try
			{
				Toaster.ShowError(ObjectHolder.MainForm, Status.Status_Head_CyberGhost_6, Alerts.SelectServer, 1, 0, 10.0);
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void retry_Click(object sender, RoutedEventArgs e)
		{
			Navigation.HideMessageOverlay(true);
			ObjectHolder.MainForm.Disconnect();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/servernotreachable.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GhostyImage = (Image)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.CmdOkLogin = (Button)target;
			this.CmdOkLogin.Click += new RoutedEventHandler(this.retry_Click);
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class ServiceNotReachable : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		private bool _contentLoaded;

		public ServiceNotReachable()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\medic.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			try
			{
				Toaster.ShowError(ObjectHolder.MainForm, Status.Status_Head_CyberGhost_6, General.Splash_InitTheInit_Service_not_reachable, 1, 0, 10.0);
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void retry_Click(object sender, RoutedEventArgs e)
		{
			Navigation.HideMessageOverlay(true);
			ObjectHolder.MainForm.Disconnect();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/servicenotreachable.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GhostyImage = (Image)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			((Button)target).Click += new RoutedEventHandler(this.retry_Click);
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class VpnExited : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		internal Button CmdOkLogin;

		private bool _contentLoaded;

		public VpnExited()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\connectionLost.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			try
			{
				Toaster.ShowError(ObjectHolder.MainForm, Status.Status_Head_CyberGhost_6, Alerts.VPNError_Body, 1, 0, 10.0);
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void retry_Click(object sender, RoutedEventArgs e)
		{
			Navigation.HideMessageOverlay(true);
			ObjectHolder.MainForm.Disconnect();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/connectiondropped.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GhostyImage = (Image)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.CmdOkLogin = (Button)target;
			this.CmdOkLogin.Click += new RoutedEventHandler(this.retry_Click);
		}
	}
}
