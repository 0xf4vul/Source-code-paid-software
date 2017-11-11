using CyberGhost.Settings.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class ProfileInfoFooter : UserControl, IComponentConnector
	{
		private CgBase _profile;

		internal Label CheckIp;

		internal Label CheckEncryption;

		internal Label CheckLogging;

		private bool _contentLoaded;

		public CgBase Profile
		{
			get
			{
				return this._profile;
			}
			set
			{
				this._profile = value;
				this.ApplyTheme();
			}
		}

		public ProfileInfoFooter()
		{
			this.InitializeComponent();
		}

		private void ApplyTheme()
		{
			Style style = base.FindResource("FeatureLittleLabelArrow") as Style;
			if (this._profile is CgProfileAnonymousBrowsing)
			{
				style = (base.FindResource("FeatureLittleLabelArrow") as Style);
			}
			else if (this._profile is CgProfileAnonymousDownloading)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Torrent") as Style);
			}
			else if (this._profile is CgProfileCustom)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Custom") as Style);
			}
			else if (this._profile is CgProfileNetwork)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Network") as Style);
			}
			else if (this._profile is CgProfileWifi)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Network") as Style);
			}
			else if (this._profile is CgProfileUnblock)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Unblock") as Style);
			}
			else if (this._profile is CgProfileUncensoring)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Uncensoring") as Style);
			}
			if (style != null)
			{
				this.CheckIp.Style = style;
				this.CheckEncryption.Style = style;
				this.CheckLogging.Style = style;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/profileinfofooter.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.CheckIp = (Label)target;
				return;
			case 2:
				this.CheckEncryption = (Label)target;
				return;
			case 3:
				this.CheckLogging = (Label)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
