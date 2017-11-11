using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class FeatureDisplay : UserControl, IComponentConnector, IConnectionStates
	{
		internal StackPanel HintContainer;

		internal TextBlock Hint;

		internal StackPanel FeatureContainer;

		internal Grid GridMalware;

		internal Label CheckMalware;

		internal Grid GridAds;

		internal Label CheckAds;

		internal Grid GridTracking;

		internal Label CheckTracking;

		internal Grid GridZip;

		internal Label CheckZip;

		internal Grid GridHttps;

		internal Label CheckHttps;

		internal Label CheckIp;

		internal Label CurrentIp;

		internal Label CheckIp2;

		internal Grid GridSpeed;

		internal Label CheckSpeed;

		internal Label CheckEncryption;

		internal Label CheckLogging;

		private bool _contentLoaded;

		public FeatureDisplay()
		{
			this.InitializeComponent();
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.HintContainer.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Hidden;
		}

		public void OnBeforeDisconnect()
		{
			this.FeatureContainer.Visibility = Visibility.Hidden;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this.HintContainer.Visibility = Visibility.Hidden;
			this.FeatureContainer.Visibility = Visibility.Visible;
			string content = string.Empty;
			VpnServerLastConnectionInfos expr_23 = ObjectHolder.CurrentConnectionInfos;
			if (!string.IsNullOrEmpty((expr_23 != null) ? expr_23.ServerName : null))
			{
				VpnServerLastConnectionInfos expr_3B = ObjectHolder.CurrentConnectionInfos;
				string arg_5D_0 = (expr_3B != null) ? expr_3B.ServerIp : null;
				string arg_5D_1 = "-";
				VpnServerLastConnectionInfos expr_51 = ObjectHolder.CurrentConnectionInfos;
				content = arg_5D_0 + arg_5D_1 + ((expr_51 != null) ? expr_51.ServerName : null);
			}
			this.CurrentIp.Content = content;
			this.UpdateCurrentIpControl(this.CurrentIp, content);
		}

		public void OnAfterDisconnected()
		{
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
		}

		public void SetFeatureVisibility(CgBase profile)
		{
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading()))
			{
				GuiHelper.SetRandomHint(this.Hint, "anonDownload");
			}
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing()))
			{
				GuiHelper.SetRandomHint(this.Hint, "anonSurfing");
			}
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileCustom()))
			{
				GuiHelper.SetRandomHint(this.Hint, "custom");
			}
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileNetwork()))
			{
				GuiHelper.SetRandomHint(this.Hint, "network");
			}
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileWifi()))
			{
				GuiHelper.SetRandomHint(this.Hint, "wifi");
			}
			this.GridZip.Visibility = Visibility.Visible;
			this.GridAds.Visibility = Visibility.Visible;
			this.GridTracking.Visibility = Visibility.Visible;
			this.GridMalware.Visibility = Visibility.Visible;
			this.GridHttps.Visibility = Visibility.Visible;
			this.GridSpeed.Visibility = Visibility.Visible;
			if (!profile.get_FeatureZip())
			{
				this.GridZip.Visibility = Visibility.Collapsed;
			}
			if (!profile.get_FeatureAdBlock())
			{
				this.GridAds.Visibility = Visibility.Collapsed;
			}
			if (!profile.get_FeatureTracking())
			{
				this.GridTracking.Visibility = Visibility.Collapsed;
			}
			if (!profile.get_FeatureMalware())
			{
				this.GridMalware.Visibility = Visibility.Collapsed;
			}
			if (!profile.get_FeatureHttps())
			{
				this.GridHttps.Visibility = Visibility.Collapsed;
			}
			if (ObjectHolder.CurrentUser != null && !ObjectHolder.CurrentUser.HasUserAccessToFeature(9))
			{
				this.GridSpeed.Visibility = Visibility.Collapsed;
			}
			Style style = base.FindResource("FeatureLittleLabelArrow") as Style;
			if (profile is CgProfileAnonymousBrowsing)
			{
				style = (base.FindResource("FeatureLittleLabelArrow") as Style);
			}
			else if (profile is CgProfileAnonymousDownloading)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Torrent") as Style);
			}
			else if (profile is CgProfileCustom)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Custom") as Style);
			}
			else if (profile is CgProfileNetwork)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Network") as Style);
			}
			else if (profile is CgProfileWifi)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Network") as Style);
			}
			else if (profile is CgProfileUnblock)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Unblock") as Style);
			}
			else if (profile is CgProfileUncensoring)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Uncensoring") as Style);
			}
			if (style != null)
			{
				this.CheckAds.Style = style;
				this.CheckEncryption.Style = style;
				this.CheckHttps.Style = style;
				this.CheckIp.Style = style;
				this.CheckIp2.Style = style;
				this.CheckLogging.Style = style;
				this.CheckMalware.Style = style;
				this.CheckSpeed.Style = style;
				this.CheckTracking.Style = style;
				this.CheckZip.Style = style;
			}
		}

		public void UpdateCurrentIpControl(Label control, string content)
		{
			if (control == null)
			{
				return;
			}
			control.Content = content;
			ToolTip toolTip = new ToolTip();
			StackPanel stackPanel = new StackPanel();
			TextBlock textBlock = new TextBlock();
			TextBlock textBlock2 = new TextBlock();
			textBlock.Text = Profiles.Current_IP;
			textBlock2.Text = content;
			stackPanel.Children.Add(textBlock);
			stackPanel.Children.Add(textBlock2);
			toolTip.Content = stackPanel;
			control.ToolTip = toolTip;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/featuredisplay.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.HintContainer = (StackPanel)target;
				return;
			case 2:
				this.Hint = (TextBlock)target;
				return;
			case 3:
				this.FeatureContainer = (StackPanel)target;
				return;
			case 4:
				this.GridMalware = (Grid)target;
				return;
			case 5:
				this.CheckMalware = (Label)target;
				return;
			case 6:
				this.GridAds = (Grid)target;
				return;
			case 7:
				this.CheckAds = (Label)target;
				return;
			case 8:
				this.GridTracking = (Grid)target;
				return;
			case 9:
				this.CheckTracking = (Label)target;
				return;
			case 10:
				this.GridZip = (Grid)target;
				return;
			case 11:
				this.CheckZip = (Label)target;
				return;
			case 12:
				this.GridHttps = (Grid)target;
				return;
			case 13:
				this.CheckHttps = (Label)target;
				return;
			case 14:
				this.CheckIp = (Label)target;
				return;
			case 15:
				this.CurrentIp = (Label)target;
				return;
			case 16:
				this.CheckIp2 = (Label)target;
				return;
			case 17:
				this.GridSpeed = (Grid)target;
				return;
			case 18:
				this.CheckSpeed = (Label)target;
				return;
			case 19:
				this.CheckEncryption = (Label)target;
				return;
			case 20:
				this.CheckLogging = (Label)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
