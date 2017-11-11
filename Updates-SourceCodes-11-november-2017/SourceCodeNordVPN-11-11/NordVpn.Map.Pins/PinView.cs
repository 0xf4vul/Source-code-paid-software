using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Shapes;

namespace NordVpn.Map.Pins
{
	public class PinView : UserControl, IComponentConnector
	{
		internal PinView PinControl;

		internal Viewbox PinViewbox;

		internal Canvas ControlCanvas;

		internal Canvas PinCanvas;

		internal Path outerPath;

		private bool _contentLoaded;

		public PinView()
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
			Uri resourceLocator = new Uri("/NordVPN;component/map/pins/pinview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.PinControl = (PinView)target;
				return;
			case 2:
				this.PinViewbox = (Viewbox)target;
				return;
			case 3:
				this.ControlCanvas = (Canvas)target;
				return;
			case 4:
				this.PinCanvas = (Canvas)target;
				return;
			case 5:
				this.outerPath = (Path)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
