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
