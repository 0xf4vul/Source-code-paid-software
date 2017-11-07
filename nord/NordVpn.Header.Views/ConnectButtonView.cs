using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;

namespace NordVpn.Header.Views
{
	public class ConnectButtonView : UserControl, IComponentConnector
	{
		internal ConnectButtonView ConnectButtonRoot;

		internal Image RotateImage;

		internal RotateTransform TransRotate;

		private bool _contentLoaded;

		public ConnectButtonView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/header/views/connectbuttonview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ConnectButtonRoot = (ConnectButtonView)target;
				return;
			case 2:
				this.RotateImage = (Image)target;
				return;
			case 3:
				this.TransRotate = (RotateTransform)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
