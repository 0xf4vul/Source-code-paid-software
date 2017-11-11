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
			System.Timers.Timer showTimer = new System.Timers.Timer
			{
				Interval = 1000.0 * secondsTillShow,
				Enabled = true
			};
			SendOrPostCallback <>9__1;
			showTimer.Elapsed += delegate(object sender, ElapsedEventArgs args)
			{
				SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
				SendOrPostCallback arg_25_1;
				if ((arg_25_1 = <>9__1) == null)
				{
					arg_25_1 = (<>9__1 = delegate(object o)
					{
						showTimer.Enabled = false;
						this.DoShowPopup();
					});
				}
				arg_25_0.Post(arg_25_1, null);
			};
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
