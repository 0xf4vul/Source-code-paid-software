using NordVpnControls.Buttons;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Markup;

namespace NordVpn.RestrictedLocation.Views
{
	public class RestrictedLocationQuestionView : Grid, IComponentConnector
	{
		internal ContentControl QuestionContent;

		internal FlatButton EnableObfuscation;

		internal FlatButton Cancel;

		internal FlatCloseButton Close;

		internal Popup HelpPopup;

		private bool _contentLoaded;

		public RestrictedLocationQuestionView()
		{
			this.InitializeComponent();
			this.HelpPopup.CustomPopupPlacementCallback = new CustomPopupPlacementCallback(this.CustomPopupPlacementCallback);
		}

		private CustomPopupPlacement[] CustomPopupPlacementCallback(Size popupSize, Size targetSize, Point offset)
		{
			return new CustomPopupPlacement[]
			{
				new CustomPopupPlacement(new Point((targetSize.Width + popupSize.Width) / 2.0 * -1.0, 0.0), PopupPrimaryAxis.None)
			};
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/NordVPN;component/restrictedlocation/views/restrictedlocationquestionview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.QuestionContent = (ContentControl)target;
				return;
			case 2:
				this.EnableObfuscation = (FlatButton)target;
				return;
			case 3:
				this.Cancel = (FlatButton)target;
				return;
			case 4:
				this.Close = (FlatCloseButton)target;
				return;
			case 5:
				this.HelpPopup = (Popup)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
