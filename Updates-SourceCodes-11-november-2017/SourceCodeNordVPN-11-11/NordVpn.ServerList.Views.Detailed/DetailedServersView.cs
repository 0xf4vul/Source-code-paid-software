using NordVpnControls.Buttons;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.ServerList.Views.Detailed
{
	public class DetailedServersView : UserControl, IComponentConnector
	{
		internal FlatToggleButton ShowServers;

		private bool _contentLoaded;

		public DetailedServersView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/serverlist/views/detailed/detailedserversview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.ShowServers = (FlatToggleButton)target;
				return;
			}
			this._contentLoaded = true;
		}
	}
}
