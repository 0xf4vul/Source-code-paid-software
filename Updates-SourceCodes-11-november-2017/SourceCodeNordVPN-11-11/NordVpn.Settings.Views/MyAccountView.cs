using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.Settings.Views
{
	public class MyAccountView : UserControl, IComponentConnector
	{
		internal Button ChangePassword;

		internal Button ActivateAccount;

		internal Button OpenWebsite;

		private bool _contentLoaded;

		public MyAccountView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/settings/views/myaccountview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ChangePassword = (Button)target;
				return;
			case 2:
				this.ActivateAccount = (Button)target;
				return;
			case 3:
				this.OpenWebsite = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
