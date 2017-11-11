using NordVpnControls.Buttons;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.Auth.Views
{
	public class RegistrationFailureView : UserControl, IComponentConnector
	{
		internal FlatButton OpenOrderPage;

		internal FlatButton OpenOrderPageInBrowser;

		internal FlatButton OpenSupportPage;

		private bool _contentLoaded;

		public RegistrationFailureView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/auth/views/registrationfailureview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.OpenOrderPage = (FlatButton)target;
				return;
			case 2:
				this.OpenOrderPageInBrowser = (FlatButton)target;
				return;
			case 3:
				this.OpenSupportPage = (FlatButton)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
