using Catel.Windows.Controls;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace VyprVPN.Views.Graph
{
	public class GraphWindowTitlebarView : UserControl, IComponentConnector
	{
		private static readonly FileLogger logger = FileLogger.get_Instance();

		public static readonly DependencyProperty ParentWindowProperty = DependencyProperty.Register("ParentWindow", typeof(Window), typeof(GraphWindowTitlebarView), new PropertyMetadata(null));

		private bool _contentLoaded;

		public Window ParentWindow
		{
			private get
			{
				return (Window)base.GetValue(GraphWindowTitlebarView.ParentWindowProperty);
			}
			set
			{
				base.SetValue(GraphWindowTitlebarView.ParentWindowProperty, value);
			}
		}

		public GraphWindowTitlebarView()
		{
			try
			{
				this.InitializeComponent();
			}
			catch (Exception ex)
			{
				GraphWindowTitlebarView.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				throw;
			}
		}

		private void OnTitlebarMouseDown(object sender, MouseButtonEventArgs e)
		{
			Window parentWindow = this.ParentWindow;
			if (parentWindow == null)
			{
				GraphWindowTitlebarView.logger.Log(1, "Cannot drag window; parent window not found!");
				return;
			}
			parentWindow.DragMove();
		}

		private void OnMinimizeClick(object sender, RoutedEventArgs e)
		{
			Window parentWindow = this.ParentWindow;
			if (parentWindow == null)
			{
				GraphWindowTitlebarView.logger.Log(1, "Cannot drag window; parent window not found!");
				return;
			}
			parentWindow.WindowState = WindowState.Minimized;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/graph/graphwindowtitlebarview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				((Border)target).MouseLeftButtonDown += new MouseButtonEventHandler(this.OnTitlebarMouseDown);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			((Button)target).Click += new RoutedEventHandler(this.OnMinimizeClick);
		}
	}
}

using Catel.IoC;
using Catel.Messaging;
using GoldenFrogUX;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Markup;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN.Views.Graph
{
	public class GraphWindowView : TransparentWindow, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly GraphWindowView.<>c <>9 = new GraphWindowView.<>c();

			public static Action <>9__4_0;

			internal void <OnClosed>b__4_0()
			{
				ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).ShowGraphInMainWindow = true;
			}
		}

		internal GraphView GraphView;

		private bool _contentLoaded;

		private ILogger logger
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ILogger>(ServiceLocator.get_Default(), null);
			}
		}

		public GraphWindowView()
		{
			this.InitializeComponent();
			MessageBase<CloseGraphWindowMessage, bool>.Register(this, delegate(CloseGraphWindowMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					base.Close();
				});
			}, null);
		}

		private void OnRendered(object sender, EventArgs e)
		{
			this.GraphView.InitializeGraph();
		}

		private void OnClosed(object sender, EventArgs e)
		{
			try
			{
				ISettings expr_0B = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				expr_0B.GraphWindowStartupLocation = new Rect(base.Left, base.Top, base.Width, base.Height);
				expr_0B.Save();
			}
			catch (Exception ex)
			{
				this.logger.Log(3, "Unexpected error saving Graph UI settings: {0}", new object[]
				{
					ex
				});
			}
			IUIHelper arg_7D_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			Action arg_7D_1;
			if ((arg_7D_1 = GraphWindowView.<>c.<>9__4_0) == null)
			{
				arg_7D_1 = (GraphWindowView.<>c.<>9__4_0 = new Action(GraphWindowView.<>c.<>9.<OnClosed>b__4_0));
			}
			arg_7D_0.Dispatch(arg_7D_1);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/graph/graphwindowview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		internal Delegate _CreateDelegate(Type delegateType, string handler)
		{
			return Delegate.CreateDelegate(delegateType, this, handler);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				((GraphWindowView)target).Closed += new EventHandler(this.OnClosed);
				((GraphWindowView)target).ContentRendered += new EventHandler(this.OnRendered);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.GraphView = (GraphView)target;
		}
	}
}
