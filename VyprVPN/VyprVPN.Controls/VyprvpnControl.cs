using System;
using System.Windows.Automation.Peers;
using System.Windows.Controls;
using VyprVPN.Classes;

namespace VyprVPN.Controls
{
	public class AutomationVisibleTabControl : TabControl
	{
		protected override AutomationPeer OnCreateAutomationPeer()
		{
			return new GenericAutomationPeer(this);
		}
	}
}

using Catel.IoC;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace VyprVPN.Controls
{
	public class DialogControl : UserControl, IComponentConnector
	{
		internal DialogControl DialogControlView;

		internal Image Icon;

		internal TextBlock Message;

		internal TextBlock Question;

		internal DockPanel ControlsArea;

		internal StackPanel CheckBoxPanel;

		internal CheckBox CheckBox;

		internal StackPanel ButtonsPanel;

		internal Button PrimaryButton;

		internal Button SecondaryButton;

		private bool _contentLoaded;

		public DialogControl()
		{
			this.InitializeComponent();
			if (!DesignerProperties.GetIsInDesignMode(this))
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).LocalizeUI(this, Thread.CurrentThread, false);
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
			Uri resourceLocator = new Uri("/VyprVPN;component/controls/dialogcontrol.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.DialogControlView = (DialogControl)target;
				return;
			case 2:
				this.Icon = (Image)target;
				return;
			case 3:
				this.Message = (TextBlock)target;
				return;
			case 4:
				this.Question = (TextBlock)target;
				return;
			case 5:
				this.ControlsArea = (DockPanel)target;
				return;
			case 6:
				this.CheckBoxPanel = (StackPanel)target;
				return;
			case 7:
				this.CheckBox = (CheckBox)target;
				return;
			case 8:
				this.ButtonsPanel = (StackPanel)target;
				return;
			case 9:
				this.PrimaryButton = (Button)target;
				return;
			case 10:
				this.SecondaryButton = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using Catel.IoC;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace VyprVPN.Controls
{
	public class ProgressControl : UserControl, IComponentConnector
	{
		internal ProgressControl ProgressControlView;

		internal ProgressBar ProgressBar;

		internal Button Button;

		private bool _contentLoaded;

		public ProgressControl()
		{
			this.InitializeComponent();
			if (!DesignerProperties.GetIsInDesignMode(this))
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).LocalizeUI(this, Thread.CurrentThread, false);
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
			Uri resourceLocator = new Uri("/VyprVPN;component/controls/progresscontrol.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ProgressControlView = (ProgressControl)target;
				return;
			case 2:
				this.ProgressBar = (ProgressBar)target;
				return;
			case 3:
				this.Button = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
