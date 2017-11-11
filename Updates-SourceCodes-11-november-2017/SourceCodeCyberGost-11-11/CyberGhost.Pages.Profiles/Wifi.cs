using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.SettingsItems;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.Network;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages.Profiles
{
	public class Wifi : UserControl, IComponentConnector, IContent
	{
		private readonly WiFiDetector _wiFiDetector;

		private string _wifiSSid;

		internal Label SecurStatus;

		internal Label SignalStatus;

		internal Label WifiLabel;

		internal ComboBox HotspotComboBox;

		internal FeatureGroup FeatureGroup;

		internal ProfileInfoFooter InfoFooter;

		internal Button ConnectBtn;

		internal UpgradeButton UpgradeBtn;

		private bool _contentLoaded;

		public Wifi()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings().get_ProfileWifi();
			this.InfoFooter.Profile = SettingsHolder.get_Settings().get_ProfileWifi();
			this.ConnectBtn.Command = new AsyncDelegateCommand(new Func<Task>(this.ConnectToServer), new Func<bool>(this.CanExecute));
			this._wiFiDetector = new WiFiDetector();
			this._wiFiDetector.add_OnNewWiFiDetected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnNewWiFiDetected));
			this._wiFiDetector.add_OnSignalStrengthChanged(new WiFiDetector.SignalStrengthChanged(this._wiFiDetector_OnSignalStrengthChanged));
			this._wiFiDetector.add_OnWifiDisconnected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnWifiDisconnected));
			this._wiFiDetector.set_Enabled(true);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileWifi();
			this.FeatureGroup.CurrentProfile = SettingsHolder.get_Settings().get_ProfileWifi();
			this.FeatureGroup.BindFeatures();
			this.UpgradeBtn.CurrentProfile = SettingsHolder.get_Settings().get_ProfileWifi();
			this.UpgradeBtn.SetVisibility(this.ConnectBtn, 11);
			GuiHelper.SetUpgradeBarVisiblity(this.FeatureGroup);
			this.SetWifiSettingToCombobox(SettingsHolder.get_Settings().get_ProfileWifi().CurrentSSID);
			if (this._wiFiDetector.GetCurrentWiFi().Length != 0)
			{
				this.UpdateWifiDisplay(this._wiFiDetector.GetCurrentWiFi()[0], true);
			}
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Start_Ghost_Wi_Fi : Profiles.wifi_connect_button);
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void SetWifiSettingToCombobox(string thisWifi)
		{
			SsidAction settingForSsid = WifiHelpers.GetSettingForSsid(thisWifi);
			this.HotspotComboBox.SelectedIndex = 2;
			if (settingForSsid == 2)
			{
				this.HotspotComboBox.SelectedIndex = 0;
				return;
			}
			if (settingForSsid == null)
			{
				this.HotspotComboBox.SelectedIndex = 1;
				return;
			}
			if (settingForSsid == 1)
			{
				this.HotspotComboBox.SelectedIndex = 2;
				return;
			}
			if (settingForSsid == 3)
			{
				this.HotspotComboBox.SelectedIndex = 3;
			}
		}

		private void _wiFiDetector_OnWifiDisconnected(HelperFunctions.WlanInfos[] newWiFis)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this.UpdateWifiDisplay(newWiFis[0], false);
			}, null);
		}

		private void _wiFiDetector_OnNewWiFiDetected(HelperFunctions.WlanInfos[] newWiFis)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this.UpdateWifiDisplay(newWiFis[0], true);
			}, null);
		}

		private void _wiFiDetector_OnSignalStrengthChanged(HelperFunctions.WlanInfos newWiFiInfos)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this.UpdateWifiDisplay(newWiFiInfos, true);
			}, null);
		}

		private void UpdateWifiDisplay(HelperFunctions.WlanInfos newWiFiInfos, bool showDisplay)
		{
			if (showDisplay)
			{
				string content = "";
				string content2 = "";
				if (newWiFiInfos.Signal > 10u)
				{
					content2 = "";
				}
				if (newWiFiInfos.Signal <= 10u)
				{
					content2 = " ";
				}
				if (newWiFiInfos.Security.ToString() == "Secure" || newWiFiInfos.Security.ToString() == "LowSecure")
				{
					content = "";
				}
				if (newWiFiInfos.Security.ToString() == "NotSecure")
				{
					content = "";
				}
				this.SignalStatus.Content = content2;
				this.SecurStatus.Content = content;
				this.WifiLabel.Content = newWiFiInfos.Ssid;
				this._wifiSSid = newWiFiInfos.Ssid;
				this.SetWifiSettingToCombobox(newWiFiInfos.Ssid);
				return;
			}
			this.SignalStatus.Content = "";
			this.SecurStatus.Content = "";
			this.WifiLabel.Content = "";
		}

		private void HotspotComboBox_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			ComboBoxItem expr_10 = (ComboBoxItem)this.HotspotComboBox.SelectedItem;
			string arg_28_0;
			if (expr_10 == null)
			{
				arg_28_0 = null;
			}
			else
			{
				object expr_1C = expr_10.Tag;
				arg_28_0 = ((expr_1C != null) ? expr_1C.ToString() : null);
			}
			string text = arg_28_0;
			if (!string.IsNullOrEmpty(text))
			{
				WifiHelpers.SetStateForWifiOrAddNewWifi(this._wifiSSid, text);
			}
		}

		private Task ConnectToServer()
		{
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(11))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(11);
				return null;
			}
			ObjectHolder.ConnectionType = "manual";
			ObjectHolder.CurrentProfileTab = "none";
			return this.ConnectToServer(string.Empty);
		}

		public Task ConnectToServer(string ssid)
		{
			if (ObjectHolder.CurrentUser != null && !ObjectHolder.CurrentUser.HasUserAccessToFeature(11))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(11);
				return null;
			}
			if (!string.IsNullOrEmpty(ssid))
			{
				SettingsHolder.get_Settings().get_ProfileWifi().CurrentSSID = ssid;
			}
			else
			{
				Label expr_3E = this.WifiLabel;
				string arg_56_0;
				if (expr_3E == null)
				{
					arg_56_0 = null;
				}
				else
				{
					object expr_4A = expr_3E.Content;
					arg_56_0 = ((expr_4A != null) ? expr_4A.ToString() : null);
				}
				if (!string.IsNullOrEmpty(arg_56_0))
				{
					SettingsHolder.get_Settings().get_ProfileWifi().CurrentSSID = this.WifiLabel.Content.ToString();
				}
			}
			if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.HasUserAccessToFeature(11))
			{
				ObjectHolder.ConnectionType = "automatic";
				ObjectHolder.CurrentProfileTab = "none";
				return ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileWifi(), false, false, true);
			}
			return Task.FromResult<bool>(false);
		}

		private bool CanExecute()
		{
			return true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/wifi.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		internal Delegate _CreateDelegate(Type delegateType, string handler)
		{
			return Delegate.CreateDelegate(delegateType, this, handler);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.SecurStatus = (Label)target;
				return;
			case 2:
				this.SignalStatus = (Label)target;
				return;
			case 3:
				this.WifiLabel = (Label)target;
				return;
			case 4:
				this.HotspotComboBox = (ComboBox)target;
				this.HotspotComboBox.SelectionChanged += new SelectionChangedEventHandler(this.HotspotComboBox_OnSelectionChanged);
				return;
			case 5:
				this.FeatureGroup = (FeatureGroup)target;
				return;
			case 6:
				this.InfoFooter = (ProfileInfoFooter)target;
				return;
			case 7:
				this.ConnectBtn = (Button)target;
				return;
			case 8:
				this.UpgradeBtn = (UpgradeButton)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
