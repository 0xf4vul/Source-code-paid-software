using NordVpnControls.Buttons;
using NordVpnControls.Windows;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Markup;

namespace NordVpn.P2P
{
	public class P2PModalView : FlatWindow, IComponentConnector
	{
		internal FlatButton ConnectToBestP2PServer;

		internal VisualCaptionButton OpenServerList;

		private bool _contentLoaded;

		public P2PModalView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/p2p/p2pmodalview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.ConnectToBestP2PServer = (FlatButton)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.OpenServerList = (VisualCaptionButton)target;
		}
	}
}
