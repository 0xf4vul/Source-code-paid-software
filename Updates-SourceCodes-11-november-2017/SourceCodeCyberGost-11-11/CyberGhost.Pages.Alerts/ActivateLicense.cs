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
