using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Shapes;

namespace NordVpn.Map.Wizzard
{
	public class WizardView : UserControl, IComponentConnector
	{
		internal StackPanel Container;

		internal Label Title;

		internal Label Subheading;

		internal StackPanel SuggestionContainer;

		internal Ellipse Flag;

		internal TextBlock Suggestion;

		internal Button connect;

		private bool _contentLoaded;

		public WizardView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/map/wizzard/wizardview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.Container = (StackPanel)target;
				return;
			case 2:
				this.Title = (Label)target;
				return;
			case 3:
				this.Subheading = (Label)target;
				return;
			case 4:
				this.SuggestionContainer = (StackPanel)target;
				return;
			case 5:
				this.Flag = (Ellipse)target;
				return;
			case 6:
				this.Suggestion = (TextBlock)target;
				return;
			case 7:
				this.connect = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
