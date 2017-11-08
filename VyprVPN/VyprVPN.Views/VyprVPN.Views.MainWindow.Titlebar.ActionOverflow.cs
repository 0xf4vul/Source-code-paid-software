using Catel.Windows.Controls;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Markup;

namespace VyprVPN.Views.MainWindow.Titlebar.ActionOverflow
{
	public class ActionOverflowView : UserControl, IComponentConnector
	{
		private static readonly FileLogger logger = FileLogger.get_Instance();

		private Button gearButton;

		private ContextMenu Popup;

		private bool _contentLoaded;

		public ActionOverflowView()
		{
			this.InitializeComponent();
		}

		private void OnPopupClosed(object sender, EventArgs e)
		{
			DependencyObject parent = base.Parent;
			do
			{
				parent = LogicalTreeHelper.GetParent(parent);
			}
			while (parent.GetType().BaseType != typeof(Window));
			Window window = parent as Window;
			if (window == null)
			{
				ActionOverflowView.logger.Log(1, "Cannot handle popup closed event; parent window not found!");
				return;
			}
			window.Opacity = 0.99;
			window.Opacity = 1.0;
		}

		private void OnGearClicked(object sender, RoutedEventArgs e)
		{
			if (!this.Popup.IsOpen)
			{
				this.Popup.PlacementTarget = this.gearButton;
				this.Popup.Placement = PlacementMode.Bottom;
				this.Popup.IsOpen = true;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/mainwindow/titlebar/actionoverflow/actionoverflowview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.gearButton = (Button)target;
				this.gearButton.Click += new RoutedEventHandler(this.OnGearClicked);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.Popup = (ContextMenu)target;
			this.Popup.Closed += new RoutedEventHandler(this.OnPopupClosed);
		}
	}
}
