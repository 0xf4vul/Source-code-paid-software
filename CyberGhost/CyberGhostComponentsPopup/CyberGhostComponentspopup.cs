using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components.Popups
{
	public class BasePopupLayout : UserControl, IComponentConnector
	{
		internal Image Image;

		internal TextBlock Headline;

		internal TextBlock ContentText;

		private bool _contentLoaded;

		public BasePopupLayout()
		{
			this.InitializeComponent();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/popups/basepopuplayout.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.Image = (Image)target;
				return;
			case 2:
				this.Headline = (TextBlock)target;
				return;
			case 3:
				this.ContentText = (TextBlock)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.Pages;
using FirstFloor.ModernUI.Windows.Controls;
using MobileConcepts.Extensions;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Markup;

namespace CyberGhost.Components.Popups
{
	public class NotificationPopup : ModernWindow, IComponentConnector
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass10_0
		{
			public System.Timers.Timer showTimer;

			public NotificationPopup <>4__this;

			public SendOrPostCallback <>9__1;

			internal void ctor>b__0(object sender, ElapsedEventArgs args)
			{
				SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
				SendOrPostCallback arg_25_1;
				if ((arg_25_1 = this.<>9__1) == null)
				{
					arg_25_1 = (this.<>9__1 = new SendOrPostCallback(this.<.ctor>b__1));
				}
				arg_25_0.Post(arg_25_1, null);
			}

			internal void ctor>b__1(object o)
			{
				this.showTimer.Enabled = false;
				this.<>4__this.DoShowPopup();
			}
		}

		private readonly Frame _contentFrame;

		private readonly PopUpZone _mZone;

		private readonly PopUp _popUp;

		private readonly Guid _popupId;

		private readonly System.Timers.Timer _checkTimer;

		private int _tickCount;

		private DateTime _lastTick = DateTime.MinValue;

		private volatile TaskCompletionSource<string> _mPopupClosedSource;

		private string _mStartupPosition = "center";

		private readonly CancellationToken _cancellationToken;

		internal Grid MainGrid;

		internal Frame ContentFrame;

		private bool _contentLoaded;

		public NotificationPopup(PopUpZone zone, bool waitForResult, CancellationToken cancellationToken, double secondsTillShow = 0.0)
		{
			this._checkTimer = new System.Timers.Timer(1000.0);
			this._checkTimer.Elapsed += new ElapsedEventHandler(this._checkTimer_Elapsed);
			this._checkTimer.Enabled = true;
			base.Closed += new EventHandler(this.NotificationPopup_Closed);
			if (cancellationToken.IsCancellationRequested)
			{
				this.Popup_HidePopUp(this, "CANCEL");
				return;
			}
			this.InitializeComponent();
			base.set_IsTitleVisible(true);
			this._cancellationToken = cancellationToken;
			this._mZone = zone;
			this._popupId = Guid.NewGuid();
			this._popUp = new PopUp();
			this._popUp.ShowPopUp += new PopUp.ShowPopUpDelegate(this.Popup_ShowPopUp);
			this._popUp.HidePopUp += new PopUp.HidePopUpDelegate(this.Popup_HidePopUp);
			this._popUp.SetTitle += new PopUp.SetTitleDelegate(this.Popup_SetTitle);
			this._popUp.SetCloseable += new PopUp.SetCloseableDelegate(this.Popup_CanClose);
			this._popUp.SetSize += new PopUp.SetSizeDelegate(this.Popup_SetSize);
			this._popUp.SetPosition += new PopUp.SetWindowPositionDelegate(this.Popup_SetPosition);
			if (waitForResult)
			{
				this._mPopupClosedSource = new TaskCompletionSource<string>();
			}
			this._contentFrame = (Frame)ObjectHolder.MainForm.Template.FindName("PopUpFrame", ObjectHolder.MainForm);
			if (secondsTillShow == 0.0)
			{
				this.DoShowPopup();
				return;
			}
			NotificationPopup.<>c__DisplayClass10_0 <>c__DisplayClass10_ = new NotificationPopup.<>c__DisplayClass10_0();
			<>c__DisplayClass10_.<>4__this = this;
			<>c__DisplayClass10_.showTimer = new System.Timers.Timer
			{
				Interval = 1000.0 * secondsTillShow,
				Enabled = true
			};
			<>c__DisplayClass10_.showTimer.Elapsed += new ElapsedEventHandler(<>c__DisplayClass10_.<.ctor>b__0);
		}

		private void NotificationPopup_Closed(object sender, EventArgs e)
		{
			this._checkTimer.Enabled = false;
		}

		[MethodImpl(MethodImplOptions.NoOptimization)]
		private void _checkTimer_Elapsed(object sender, ElapsedEventArgs e)
		{
			int arg_38_0 = Environment.TickCount - this._tickCount;
			this._tickCount = Environment.TickCount;
			TimeSpan timeSpan = DateTime.Now - this._lastTick;
			this._lastTick = DateTime.Now;
			if (arg_38_0 <= 2000)
			{
				double arg_41_0 = timeSpan.TotalMilliseconds;
			}
		}

		private void DoShowPopup()
		{
			this.ContentFrame.Navigate(this._popUp);
			base.Top = -1000000.0;
			base.Left = -1000000.0;
			base.Focusable = false;
			base.Show();
			base.Hide();
			this._popUp.InitializePopUp(this._mZone, this._cancellationToken);
		}

		private void Popup_SetPosition(object sender, string position)
		{
			if (!base.IsVisible)
			{
				this._mStartupPosition = position;
				return;
			}
			this.AdjustPosition(position);
		}

		private void AdjustPosition(string position)
		{
			double num = SystemParameters.PrimaryScreenWidth / (double)Screen.PrimaryScreen.Bounds.Width;
			double num2 = SystemParameters.PrimaryScreenHeight / (double)Screen.PrimaryScreen.Bounds.Height;
			double num3 = (double)Screen.PrimaryScreen.WorkingArea.Width * num;
			double num4 = (double)Screen.PrimaryScreen.WorkingArea.Height * num2;
			double num5 = (double)Screen.PrimaryScreen.WorkingArea.Left * num;
			double num6 = (double)Screen.PrimaryScreen.WorkingArea.Top * num2;
			double width = base.Width;
			double height = base.Height;
			if (position == "rightBottom")
			{
				base.Left = num3 - width + num5;
				base.Top = num4 - height + num6;
				return;
			}
			if (position == "rightTop")
			{
				base.Left = num3 - width + num5;
				base.Top = num6;
				return;
			}
			if (position == "leftBottom")
			{
				base.Left = num5;
				base.Top = num4 - height + num6;
				return;
			}
			if (!(position == "leftTop"))
			{
				base.Left = num3 / 2.0 - width / 2.0 + num5;
				base.Top = num4 / 2.0 - height / 2.0 + num6;
				return;
			}
			base.Left = num5;
			base.Top = num6;
		}

		private void Popup_SetSize(object sender, int width, int height)
		{
			base.Width = (double)width;
			base.Height = (double)height;
		}

		private void Popup_CanClose(object sender, bool canClose)
		{
			((System.Windows.Controls.Button)base.Template.FindName("SystemCloseButton", this)).Visibility = (canClose ? Visibility.Visible : Visibility.Collapsed);
		}

		private void Popup_SetTitle(object sender, string title)
		{
			base.Title = title;
		}

		private void Popup_HidePopUp(object sender, string reason)
		{
			TaskCompletionSource<string> expr_08 = this._mPopupClosedSource;
			if (expr_08 != null)
			{
				expr_08.TrySetResult(reason);
			}
			if (base.IsVisible)
			{
				base.Close();
				return;
			}
			if (this._contentFrame != null && this._popupId.Equals(this._contentFrame.Tag))
			{
				this._contentFrame.Visibility = Visibility.Collapsed;
			}
		}

		private void Popup_ShowPopUp(object sender, int widht, int height, string bannerName)
		{
			if (this._cancellationToken.IsCancellationRequested)
			{
				this.Popup_HidePopUp(this, "CANCEL");
				return;
			}
			new ConversionWindowEvent
			{
				ConversionZone = EumExtensions.GetDescription<PopUpZone>(this._mZone),
				ConversionPoint = bannerName
			}.FireEvent();
			if (!ObjectHolder.MainForm.IsVisible || this._popUp.ForcePopup)
			{
				this.AdjustPosition(this._mStartupPosition);
				base.Visibility = Visibility.Visible;
				base.WindowState = WindowState.Normal;
				base.Show();
				base.Focusable = true;
				base.Topmost = true;
				this._popUp.ShowCloseIcon = false;
				return;
			}
			if (this._contentFrame.Visibility == Visibility.Visible && !this._popupId.Equals(this._contentFrame.Tag))
			{
				this.AdjustPosition(this._mStartupPosition);
				base.Visibility = Visibility.Visible;
				base.WindowState = WindowState.Normal;
				base.Show();
				base.Focusable = true;
				base.Topmost = true;
				this._popUp.ShowCloseIcon = false;
				return;
			}
			this._contentFrame.Tag = this._popupId;
			this._contentFrame.Navigate(this._popUp);
			this._contentFrame.Visibility = Visibility.Visible;
			this._popUp.ShowCloseIcon = true;
			base.Focusable = true;
			ConversionPopUpHelpers.CloseConverionPopUp();
			ObjectHolder.MainForm.ShowMe();
		}

		private Task<string> GetCloseTask()
		{
			TaskCompletionSource<string> expr_08 = this._mPopupClosedSource;
			if (expr_08 == null)
			{
				return null;
			}
			return expr_08.Task;
		}

		public static Task<string> ShowWithResult(PopUpZone zone, CancellationToken cancellationToken)
		{
			return new NotificationPopup(zone, true, cancellationToken, 0.0).GetCloseTask();
		}

		public static void ShowWithoutResult(PopUpZone zone, CancellationToken cancellationToken)
		{
			new NotificationPopup(zone, false, cancellationToken, 0.0);
		}

		public static void ShowWithoutResult(PopUpZone zone)
		{
			new NotificationPopup(zone, false, CancellationToken.None, 0.0);
		}

		public static void ShowOnceTimed(PopUpZone zone, double secondsTillShow)
		{
			NotificationPopup.ShowOnceTimed(zone, secondsTillShow, CancellationToken.None);
		}

		public static void ShowOnceTimed(PopUpZone zone, double secondsTillShow, CancellationToken cancellationToken)
		{
			new NotificationPopup(zone, false, cancellationToken, secondsTillShow);
		}

		private void NotificationPopup_OnClosed(object sender, EventArgs e)
		{
			this.Popup_HidePopUp(this, "CANCEL");
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/popups/notificationpopup.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((NotificationPopup)target).Closed += new EventHandler(this.NotificationPopup_OnClosed);
				return;
			case 2:
				this.MainGrid = (Grid)target;
				return;
			case 3:
				this.ContentFrame = (Frame)target;
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
using FirstFloor.ModernUI.Windows.Controls;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
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

		[CompilerGenerated]
		private sealed class <>c__DisplayClass8_0
		{
			public CancellationTokenSource timeoutToken;

			internal void <ShowPopup>b__0()
			{
				this.timeoutToken.Cancel(false);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <ShowPopup>d__8 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<WifiPopup.WifiConnectionResult> <>t__builder;

			public CancellationToken cancellationToken;

			public WifiPopup <>4__this;

			public int timeout;

			private TaskAwaiter<Task> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				WifiPopup wifiPopup = this.<>4__this;
				WifiPopup.WifiConnectionResult result;
				try
				{
					TaskAwaiter<Task> taskAwaiter;
					if (num != 0)
					{
						if (this.cancellationToken.IsCancellationRequested)
						{
							goto IL_12A;
						}
						WifiPopup.<>c__DisplayClass8_0 <>c__DisplayClass8_ = new WifiPopup.<>c__DisplayClass8_0();
						wifiPopup.Show();
						<>c__DisplayClass8_.timeoutToken = new CancellationTokenSource();
						wifiPopup._cancellationTimer = HelperFunctions.DelayExecution(TimeSpan.FromMilliseconds((double)this.timeout), new Action(<>c__DisplayClass8_.<ShowPopup>b__0));
						taskAwaiter = Task.WhenAny(new Task[]
						{
							wifiPopup._mPopupClosedSource.Task,
							TaskExtensions.WhenCanceled(this.cancellationToken),
							TaskExtensions.WhenCanceled(<>c__DisplayClass8_.timeoutToken.Token)
						}).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<Task>, WifiPopup.<ShowPopup>d__8>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<Task>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<Task>);
					if (wifiPopup._mPopupClosedSource.Task.IsCompleted)
					{
						result = wifiPopup._mPopupClosedSource.Task.Result;
						goto IL_147;
					}
					wifiPopup.Close();
					IL_12A:
					result = WifiPopup.WifiConnectionResult.Ask;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_147:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
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
			base.Dispatcher.BeginInvoke(DispatcherPriority.ApplicationIdle, new Action(this.<.ctor>b__4_0));
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

		[CompilerGenerated]
		private void ctor>b__4_0()
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
		}
	}
}

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Markup;

namespace CyberGhost.Components.Popups
{
	public class TrayPopup : Popup, IComponentConnector
	{
		internal struct Win32Point
		{
			public int X;

			public int Y;
		}

		private double _scalingFactor = double.NaN;

		internal Label Status;

		internal TextBox TextBoxFake;

		internal Button ShowCyberGhost;

		internal Button Exit;

		private bool _contentLoaded;

		public TrayPopup()
		{
			this.InitializeComponent();
			System.Windows.Point point = TrayPopup.GetMousePosition();
			point = this.GetDeviceCoordinates(point);
			base.HorizontalOffset = point.X;
			base.VerticalOffset = point.Y;
			Graphics expr_4D = Graphics.FromHwnd(IntPtr.Zero);
			double num = (double)expr_4D.DpiX / 96.0;
			double num2 = (double)expr_4D.DpiY / 96.0;
			base.HorizontalOffset = point.X / num;
			base.VerticalOffset = point.Y / num2 - 16.0;
			this.Status.Content = ObjectHolder.ConnectionStatus.ToString();
		}

		private void ShowCyberGhost_OnClick(object sender, RoutedEventArgs e)
		{
			base.IsOpen = false;
		}

		private void Exit_OnClick(object sender, RoutedEventArgs e)
		{
			base.IsOpen = false;
		}

		[DllImport("user32.dll")]
		[return: MarshalAs(UnmanagedType.Bool)]
		internal static extern bool GetCursorPos(ref TrayPopup.Win32Point pt);

		public static System.Windows.Point GetMousePosition()
		{
			TrayPopup.Win32Point win32Point = default(TrayPopup.Win32Point);
			TrayPopup.GetCursorPos(ref win32Point);
			return new System.Windows.Point((double)win32Point.X, (double)win32Point.Y);
		}

		private System.Windows.Point GetDeviceCoordinates(System.Windows.Point point)
		{
			if (double.IsNaN(this._scalingFactor))
			{
				PresentationSource presentationSource = PresentationSource.FromVisual(this);
				if (presentationSource == null)
				{
					this._scalingFactor = 1.0;
				}
				else if (presentationSource.CompositionTarget != null)
				{
					this._scalingFactor = 1.0 / presentationSource.CompositionTarget.TransformToDevice.M11;
				}
			}
			if (Math.Abs(this._scalingFactor - 1.0) < 0.0)
			{
				return point;
			}
			return new System.Windows.Point
			{
				X = (double)((int)(point.X * this._scalingFactor)),
				Y = (double)((int)(point.Y * this._scalingFactor))
			};
		}

		private void TrayPopup_OnOpened(object sender, EventArgs e)
		{
			this.Exit.Focus();
		}

		private void TrayPopup_OnLostFocus(object sender, RoutedEventArgs e)
		{
			base.IsOpen = false;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/popups/traypopup.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((TrayPopup)target).Opened += new EventHandler(this.TrayPopup_OnOpened);
				((TrayPopup)target).LostFocus += new RoutedEventHandler(this.TrayPopup_OnLostFocus);
				return;
			case 2:
				this.Status = (Label)target;
				return;
			case 3:
				this.TextBoxFake = (TextBox)target;
				return;
			case 4:
				this.ShowCyberGhost = (Button)target;
				this.ShowCyberGhost.Click += new RoutedEventHandler(this.ShowCyberGhost_OnClick);
				return;
			case 5:
				this.Exit = (Button)target;
				this.Exit.Click += new RoutedEventHandler(this.Exit_OnClick);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
