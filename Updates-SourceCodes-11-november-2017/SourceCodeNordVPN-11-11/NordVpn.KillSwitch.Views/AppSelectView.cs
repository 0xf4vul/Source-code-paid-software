using NordVpnControls.Windows;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.KillSwitch.Views
{
	public class AppSelectView : ClearWindow, IComponentConnector
	{
		internal Button Close;

		internal Button OpenFileSelect;

		internal Button AddSelected;

		private bool _contentLoaded;

		public AppSelectView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/killswitch/views/appselectview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.Close = (Button)target;
				return;
			case 2:
				this.OpenFileSelect = (Button)target;
				return;
			case 3:
				this.AddSelected = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
