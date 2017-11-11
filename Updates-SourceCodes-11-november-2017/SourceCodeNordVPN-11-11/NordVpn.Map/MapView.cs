using NordVpn.Map.Pins;
using NordVpnControls.ScrollViewers;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace NordVpn.Map
{
	public class MapView : UserControl, IComponentConnector
	{
		private Point? _lastDragPoint;

		private readonly double maxWidth = 10000.0;

		private readonly double initialWidth = 640.0;

		private readonly double initialHeight = 400.0;

		internal Grid ScrollviewerWrapper;

		internal Scrollviewer ScrollViewer;

		internal Viewbox Viewbox;

		internal Canvas MapCanvas;

		internal ItemsControl Pins;

		internal ContentControl InactiveAccount;

		internal ContentControl Wizard;

		private bool _contentLoaded;

		public MapView()
		{
			this.InitializeComponent();
			this.ScrollviewerWrapper.PreviewMouseLeftButtonDown += new MouseButtonEventHandler(this.StartPan);
			this.ScrollviewerWrapper.PreviewMouseLeftButtonUp += new MouseButtonEventHandler(this.StopPan);
			this.ScrollviewerWrapper.PreviewMouseMove += new MouseEventHandler(this.Pan);
			this.ScrollviewerWrapper.MouseLeave += new MouseEventHandler(this.StopPan);
			this.ScrollViewer.SizeChanged += new SizeChangedEventHandler(this.ResizeMap);
			this.ScrollviewerWrapper.PreviewMouseWheel += new MouseWheelEventHandler(this.ZoomMapInteraction);
		}

		private void StartPan(object sender, MouseButtonEventArgs e)
		{
			this._lastDragPoint = new Point?(e.GetPosition(this.ScrollViewer));
		}

		private void StopPan(object sender, EventArgs e)
		{
			if (!this._lastDragPoint.HasValue)
			{
				return;
			}
			this._lastDragPoint = null;
			this.CalculateTooltipOffset();
		}

		private List<PinViewModel> GetViewportPins()
		{
			List<PinViewModel> list = new List<PinViewModel>();
			double widthRadio = this.GetWidthRadio();
			double heightRadio = this.GetHeightRadio();
			foreach (PinViewModel pinViewModel in ((IEnumerable)this.Pins.Items))
			{
				double num = pinViewModel.LeftOffset * widthRadio;
				double num2 = pinViewModel.TopOffset * heightRadio;
				if ((num + pinViewModel.Width >= this.ScrollViewer.get_HorizontalOffset() && num <= this.ScrollViewer.get_HorizontalOffset() + this.ScrollViewer.ActualWidth) & (num2 + pinViewModel.Height >= this.ScrollViewer.get_VerticalOffset() && num2 <= this.ScrollViewer.get_VerticalOffset() + this.ScrollViewer.ActualHeight))
				{
					list.Add(pinViewModel);
				}
			}
			return list;
		}

		private void CalculateTooltipOffset()
		{
			List<PinViewModel> viewportPins = this.GetViewportPins();
			if (viewportPins.Count == 0)
			{
				return;
			}
			foreach (PinViewModel current in viewportPins)
			{
				double num = current.LeftOffset * this.GetWidthRadio();
				double num2 = current.TopOffset * this.GetHeightRadio();
				double arg_80_0 = this.ScrollViewer.get_HorizontalOffset() + this.ScrollViewer.ActualWidth - num;
				double num3 = this.ScrollViewer.get_VerticalOffset() + this.ScrollViewer.ActualHeight - num2;
				if (arg_80_0 <= 80.0)
				{
					current.PlaceTooltipLeft();
				}
				else
				{
					current.PlaceTooltipRight();
				}
				if (num3 <= 100.0)
				{
					current.PlaceTooltipTop();
				}
				else
				{
					current.PlaceTooltipBottom();
				}
			}
		}

		private double GetWidthRadio()
		{
			return this.Viewbox.ActualWidth / this.initialWidth;
		}

		private double GetHeightRadio()
		{
			return this.Viewbox.ActualHeight / this.initialHeight;
		}

		private void Pan(object sender, MouseEventArgs e)
		{
			if (this._lastDragPoint.HasValue)
			{
				Point position = e.GetPosition(this.ScrollViewer);
				double num = position.X - this._lastDragPoint.Value.X;
				double num2 = position.Y - this._lastDragPoint.Value.Y;
				this._lastDragPoint = new Point?(position);
				this.ScrollViewer.ScrollToHorizontalOffset(this.ScrollViewer.get_HorizontalOffset() - num);
				this.ScrollViewer.ScrollToVerticalOffset(this.ScrollViewer.get_VerticalOffset() - num2);
			}
		}

		private void ZoomIn(object sender, MouseButtonEventArgs e)
		{
			this.ZoomDelta(120);
		}

		private void ZoomOut(object sender, MouseButtonEventArgs e)
		{
			this.ZoomDelta(-120);
		}

		private void ZoomDelta(int delta)
		{
			double newWidth = this.GetNewWidth(delta);
			if ((newWidth - this.ScrollViewer.get_ViewportWidth() < 0.01 && delta < 0) || newWidth > this.maxWidth)
			{
				this.ScrollToOffset(this.ScrollViewer.get_HorizontalOffset(), this.ScrollViewer.get_VerticalOffset());
				return;
			}
			this.Viewbox.Width = newWidth;
			double viewportWidth = this.ScrollViewer.get_ViewportWidth();
			double viewportHeight = this.ScrollViewer.get_ViewportHeight();
			double viewBoxY = this.ScrollViewer.ContentHorizontalOffset + viewportWidth / 2.0;
			double viewBoxY2 = this.ScrollViewer.ContentVerticalOffset + viewportHeight / 2.0;
			double viewPortY = viewportWidth / 2.0;
			double viewPortY2 = viewportHeight / 2.0;
			double zoomFactor = this.GetZoomFactor(delta);
			double offsetY = this.GetOffsetY(viewBoxY, viewPortY, zoomFactor);
			double offsetY2 = this.GetOffsetY(viewBoxY2, viewPortY2, zoomFactor);
			this.ScrollToOffset(offsetY, offsetY2);
		}

		private void ZoomMapInteraction(object sender, MouseWheelEventArgs e)
		{
			double newWidth = this.GetNewWidth(e.Delta);
			if ((newWidth - this.ScrollViewer.get_ViewportWidth() < 0.01 && e.Delta < 0) || newWidth > this.maxWidth)
			{
				this.ScrollToOffset(this.ScrollViewer.get_HorizontalOffset(), this.ScrollViewer.get_VerticalOffset());
				e.Handled = true;
				return;
			}
			Point position = e.GetPosition(this.Viewbox);
			Point position2 = e.GetPosition(this.ScrollViewer);
			this.Viewbox.Width = newWidth;
			double zoomFactor = this.GetZoomFactor(e.Delta);
			double offsetX = this.GetOffsetX(position.X, position2.X, zoomFactor);
			double offsetY = this.GetOffsetY(position.Y, position2.Y, zoomFactor);
			this.ScrollToOffset(offsetX, offsetY);
			if (!e.Handled)
			{
				e.Handled = true;
			}
		}

		private double GetOffsetX(double viewBoxX, double viewPortX, double factor)
		{
			double viewportWidth = this.ScrollViewer.get_ViewportWidth();
			return factor * viewBoxX - factor * viewPortX + viewBoxX - viewPortX + factor * viewportWidth * viewPortX / viewportWidth;
		}

		private double GetOffsetY(double viewBoxY, double viewPortY, double factor)
		{
			double viewportHeight = this.ScrollViewer.get_ViewportHeight();
			return factor * viewBoxY - factor * viewPortY + viewBoxY - viewPortY + factor * viewportHeight * viewPortY / viewportHeight;
		}

		private double GetNewWidth(int delta)
		{
			double expr_13 = this.Viewbox.DesiredSize.Width;
			return expr_13 + expr_13 * this.GetZoomFactor(delta);
		}

		private double GetZoomFactor(int delta)
		{
			return (double)delta * 0.002;
		}

		private void ScrollToOffset(double x, double y)
		{
			this.ScrollViewer.ScrollToHorizontalOffset(x);
			this.ScrollViewer.ScrollToVerticalOffset(y);
		}

		private void ResizeMap(object sender, SizeChangedEventArgs e)
		{
			if (this.Viewbox.Width <= e.NewSize.Width)
			{
				this.Viewbox.Width = e.NewSize.Width;
				return;
			}
			double num = (e.PreviousSize.Width - e.NewSize.Width) / 2.0;
			double num2 = (e.PreviousSize.Height - e.NewSize.Height) / 2.0;
			this.ScrollToOffset(this.ScrollViewer.ContentHorizontalOffset + num, this.ScrollViewer.ContentVerticalOffset + num2);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/NordVPN;component/map/mapview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ScrollviewerWrapper = (Grid)target;
				return;
			case 2:
				this.ScrollViewer = (Scrollviewer)target;
				return;
			case 3:
				this.Viewbox = (Viewbox)target;
				return;
			case 4:
				this.MapCanvas = (Canvas)target;
				return;
			case 5:
				this.Pins = (ItemsControl)target;
				return;
			case 6:
				this.InactiveAccount = (ContentControl)target;
				return;
			case 7:
				this.Wizard = (ContentControl)target;
				return;
			case 8:
				((Button)target).PreviewMouseLeftButtonUp += new MouseButtonEventHandler(this.ZoomIn);
				return;
			case 9:
				((Button)target).PreviewMouseLeftButtonUp += new MouseButtonEventHandler(this.ZoomOut);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
