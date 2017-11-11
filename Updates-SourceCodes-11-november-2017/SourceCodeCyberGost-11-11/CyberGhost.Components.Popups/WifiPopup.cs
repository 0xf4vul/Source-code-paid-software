using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace CyberGhost.Components.Popups
{
	public class WifiPopup : Window, IComponentConnector
	{
		public enum WifiConnectionResult
		{
			[Description("ask")]
			Ask,
			[Description("always")]
			Always,
			[Description("never")]
			Never,
			[Description("once")]
			Once,
			[Description("disconnect")]
			Disconnect
		}

		private System.Timers.Timer _cancellationTimer;

		public string WifiSsid;

		private volatile TaskCompletionSource<WifiPopup.WifiConnectionResult> _mPopupClosedSource;

		internal System.Windows.Controls.Label Minimize1;

		internal System.Windows.Controls.Image WifiIco;

		internal TextBlock CurrentSsid;

		internal BBCodeBlock WifiDescription;

		internal System.Windows.Controls.Button ProtectMe;

		internal System.Windows.Controls.Button TrustThisWifi;

		internal System.Windows.Controls.Button ConnectOnce;

		internal System.Windows.Controls.Button Cancel;

		private bool _contentLoaded;

		public WifiPopup()
		{
			this.InitializeComponent();
			this._mPopupClosedSource = new TaskCompletionSource<WifiPopup.WifiConnectionResult>();
			base.Dispatcher.BeginInvoke(DispatcherPriority.ApplicationIdle, new Action(delegate
			{
				Rectangle workingArea = Screen.PrimaryScreen.WorkingArea;
				PresentationSource presentationSource = PresentationSource.FromVisual(this);
				if (((presentationSource != null) ? presentationSource.CompositionTarget : null) != null)
				{
					System.Windows.Point point = presentationSource.CompositionTarget.TransformFromDevice.Transform(new System.Windows.Point((double)workingArea.Right, (double)workingArea.Bottom));
					base.Left = point.X - base.ActualWidth - 100.0;
					base.Top = point.Y - base.ActualHeight - 42.0;
				}
				this.WifiDescription.set_BBCode(string.Format(CyberGhost.Translations.MainWindow.MainWindow__wifiDetector_OnNewWiFiDetected_, this.WifiSsid));
				this.CurrentSsid.Text = this.WifiSsid;
				base.Topmost = true;
				base.WindowState = WindowState.Normal;
			}));
			base.MouseEnter += new System.Windows.Input.MouseEventHandler(this.WifiPopup_MouseEnter);
			base.MouseLeave += new System.Windows.Input.MouseEventHandler(this.WifiPopup_MouseLeave);
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.WifiIco.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-wifi.png")));
		}

		private void WifiPopup_MouseLeave(object sender, System.Windows.Input.MouseEventArgs e)
		{
			try
			{
				if (this._cancellationTimer != null && !this._cancellationTimer.Enabled)
				{
					this._cancellationTimer.Start();
				}
			}
			catch (Exception)
			{
			}
		}

		private void WifiPopup_MouseEnter(object sender, System.Windows.Input.MouseEventArgs e)
		{
			try
			{
				if (this._cancellationTimer != null && this._cancellationTimer.Enabled)
				{
					this._cancellationTimer.Stop();
				}
			}
			catch (Exception)
			{
			}
		}

		[AsyncStateMachine(typeof(WifiPopup.<ShowPopup>d__8))]
		public Task<WifiPopup.WifiConnectionResult> ShowPopup(int timeout, CancellationToken cancellationToken)
		{
			WifiPopup.<ShowPopup>d__8 <ShowPopup>d__;
			<ShowPopup>d__.<>4__this = this;
			<ShowPopup>d__.timeout = timeout;
			<ShowPopup>d__.cancellationToken = cancellationToken;
			<ShowPopup>d__.<>t__builder = AsyncTaskMethodBuilder<WifiPopup.WifiConnectionResult>.Create();
			<ShowPopup>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<WifiPopup.WifiConnectionResult> <>t__builder = <ShowPopup>d__.<>t__builder;
			<>t__builder.Start<WifiPopup.<ShowPopup>d__8>(ref <ShowPopup>d__);
			return <ShowPopup>d__.<>t__builder.Task;
		}

		private void ProtectMe_Click(object sender, RoutedEventArgs e)
		{
			this._mPopupClosedSource.TrySetResult(WifiPopup.WifiConnectionResult.Always);
			base.Close();
		}

		private void TrustThisWifi_Click(object sender, RoutedEventArgs e)
		{
			this._mPopupClosedSource.TrySetResult(WifiPopup.WifiConnectionResult.Never);
			base.Close();
		}

		private void Cancel_Click(object sender, RoutedEventArgs e)
		{
			this._mPopupClosedSource.TrySetResult(WifiPopup.WifiConnectionResult.Ask);
			base.Close();
		}

		private void Minimize1_OnMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			this._mPopupClosedSource.TrySetResult(WifiPopup.WifiConnectionResult.Ask);
			base.Close();
		}

		private void ConnectOnce_OnClick(object sender, RoutedEventArgs e)
		{
			this._mPopupClosedSource.TrySetResult(WifiPopup.WifiConnectionResult.Once);
			base.Close();
		}

		private void WifiPopup_OnLoaded(object sender, RoutedEventArgs e)
		{
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/popups/wifipopup.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((WifiPopup)target).Loaded += new RoutedEventHandler(this.WifiPopup_OnLoaded);
				return;
			case 2:
				this.Minimize1 = (System.Windows.Controls.Label)target;
				this.Minimize1.MouseLeftButtonUp += new MouseButtonEventHandler(this.Minimize1_OnMouseLeftButtonUp);
				return;
			case 3:
				this.WifiIco = (System.Windows.Controls.Image)target;
				return;
			case 4:
				this.CurrentSsid = (TextBlock)target;
				return;
			case 5:
				this.WifiDescription = (BBCodeBlock)target;
				return;
			case 6:
				this.ProtectMe = (System.Windows.Controls.Button)target;
				this.ProtectMe.Click += new RoutedEventHandler(this.ProtectMe_Click);
				return;
			case 7:
				this.TrustThisWifi = (System.Windows.Controls.Button)target;
				this.TrustThisWifi.Click += new RoutedEventHandler(this.TrustThisWifi_Click);
				return;
			case 8:
				this.ConnectOnce = (System.Windows.Controls.Button)target;
				this.ConnectOnce.Click += new RoutedEventHandler(this.ConnectOnce_OnClick);
				return;
			case 9:
				this.Cancel = (System.Windows.Controls.Button)target;
				this.Cancel.Click += new RoutedEventHandler(this.Cancel_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
