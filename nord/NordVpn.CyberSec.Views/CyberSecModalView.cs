using NordVpnControls.Buttons;
using NordVpnControls.Windows;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.CyberSec.Views
{
	public class CyberSecModalView : ClearWindow, IComponentConnector
	{
		internal Button Close;

		internal FlatButton TurnOn;

		internal VisualCaptionButton OpenArticle;

		private bool _contentLoaded;

		public CyberSecModalView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/cybersec/views/cybersecmodalview.xaml", UriKind.Relative);
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
				this.TurnOn = (FlatButton)target;
				return;
			case 3:
				this.OpenArticle = (VisualCaptionButton)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
