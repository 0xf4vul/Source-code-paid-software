using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.ServerList.Views
{
	public class ServersContainerView : UserControl, IComponentConnector
	{
		internal ServersContainerView Root;

		internal ContentControl Servers;

		internal ContentControl ServerSidePanel;

		private bool _contentLoaded;

		public ServersContainerView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/serverlist/views/serverscontainerview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.Root = (ServersContainerView)target;
				return;
			case 2:
				this.Servers = (ContentControl)target;
				return;
			case 3:
				this.ServerSidePanel = (ContentControl)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
