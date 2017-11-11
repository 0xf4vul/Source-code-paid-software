using NordVpnControls.Tabs;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Markup;

namespace NordVpn.ServerList.Views
{
	public class ServerGroupsTabsView : FlatTabControl, IComponentConnector
	{
		internal ServerGroupsTabsView Items;

		private bool _contentLoaded;

		public ServerGroupsTabsView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/serverlist/views/servergroupstabsview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.Items = (ServerGroupsTabsView)target;
				return;
			}
			this._contentLoaded = true;
		}
	}
}
