using NordVpnControls.Buttons;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.Header.Views
{
	public class HeaderBarView : UserControl, IComponentConnector
	{
		internal FlatTextButton Map;

		internal FlatTextButton Servers;

		internal FlatTextButton Settings;

		internal ContentControl ConnectButton;

		internal ContentControl Search;

		private bool _contentLoaded;

		public HeaderBarView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/header/views/headerbarview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.Map = (FlatTextButton)target;
				return;
			case 2:
				this.Servers = (FlatTextButton)target;
				return;
			case 3:
				this.Settings = (FlatTextButton)target;
				return;
			case 4:
				this.ConnectButton = (ContentControl)target;
				return;
			case 5:
				this.Search = (ContentControl)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
