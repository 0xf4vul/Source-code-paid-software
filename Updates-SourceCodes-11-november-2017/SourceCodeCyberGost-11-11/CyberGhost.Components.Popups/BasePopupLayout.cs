using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components.Popups
{
	public class BasePopupLayout : UserControl, IComponentConnector
	{
		internal Image Image;

		internal TextBlock Headline;

		internal TextBlock ContentText;

		private bool _contentLoaded;

		public BasePopupLayout()
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
			Uri resourceLocator = new Uri("/CyberGhost;component/components/popups/basepopuplayout.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.Image = (Image)target;
				return;
			case 2:
				this.Headline = (TextBlock)target;
				return;
			case 3:
				this.ContentText = (TextBlock)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
