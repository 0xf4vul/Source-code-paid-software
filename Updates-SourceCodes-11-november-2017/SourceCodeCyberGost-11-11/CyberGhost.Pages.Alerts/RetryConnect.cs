using CyberGhost.Helpers;
using CyberGhost.Settings;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class RetryConnect : System.Windows.Controls.UserControl, IComponentConnector, IContent
	{
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
