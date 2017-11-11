using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.Map
{
	public class InactiveAccountView : UserControl, IComponentConnector
	{
		internal StackPanel Container;

		internal Label Title;

		internal Button Activate;

		private bool _contentLoaded;

		public InactiveAccountView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/map/inactiveaccountview.xaml", UriKind.Relative);
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
				this.Activate = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
