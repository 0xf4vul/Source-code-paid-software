using NordVpnControls.Windows;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace NordVpn.Application
{
	public class ShellView : Window, IComponentConnector
	{
		internal ContentControl ActiveItem;

		internal ContentControl Tray;

		internal ContentControl SubHeaderStrip;

		internal ContentControl HeaderBar;

		private bool _contentLoaded;

		public ShellView()
		{
			this.InitializeComponent();
			base.MouseDown += new MouseButtonEventHandler(this.OnMouseDown);
			base.Loaded += new RoutedEventHandler(this.OnLoaded);
			ChildWindowPlacementTracker.StartAdjustingPlacementToCenter(this);
		}

		protected override void OnStateChanged(EventArgs e)
		{
			if (this.Tray.Visibility == Visibility.Visible)
			{
				if (base.WindowState == WindowState.Minimized)
				{
					base.Hide();
				}
				else
				{
					base.Show();
					base.Activate();
				}
			}
			base.OnStateChanged(e);
		}

		protected override void OnClosing(CancelEventArgs e)
		{
			e.Cancel = true;
			base.OnClosing(e);
			base.WindowState = WindowState.Minimized;
		}

		private void OnLoaded(object sender, RoutedEventArgs e)
		{
			((ShellViewModel)base.DataContext).ActivateAppRequested += new EventHandler(this.OnActivateAppRequested);
			base.Loaded -= new RoutedEventHandler(this.OnLoaded);
		}

		private void OnActivateAppRequested(object sender, EventArgs e)
		{
			base.Show();
			base.Activate();
			base.WindowState = WindowState.Normal;
		}

		private void OnMouseDown(object sender, MouseButtonEventArgs e)
		{
			Keyboard.ClearFocus();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/NordVPN;component/application/shellview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ActiveItem = (ContentControl)target;
				return;
			case 2:
				this.Tray = (ContentControl)target;
				return;
			case 3:
				this.SubHeaderStrip = (ContentControl)target;
				return;
			case 4:
				this.HeaderBar = (ContentControl)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
