using CyberGhost.Annotations;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using FirstFloor.ModernUI.Windows.Controls;
using MobileConcepts.Components.CustomEvent;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace CyberGhost
{
	public class NotifiyHome : UserControl, IComponentConnector, IStyleConnector, IConnectionStates, ITrafficDataChanged, INotifyPropertyChanged
	{
		private readonly SolidColorBrush _anonDownloadColor;

		private readonly SolidColorBrush _anonSurfColor;

		private readonly SolidColorBrush _antiCensorColor;

		private readonly SolidColorBrush _customColor;

		private readonly DispatcherTimer _dt = new DispatcherTimer();

		private readonly SolidColorBrush _unblockColor;

		private readonly SolidColorBrush _wifiColor;

		private bool _firstrun = true;

		private bool _controlEnable;

		private TrayHistoryData _selectedHistoryItem;

		public Grid BeforeConnect;

		internal Grid Header;

		internal TextBlock Status;

		internal StackPanel UpdatePanel;

		internal TextBlock UpdateLabel;

		internal Button UpdateButton;

		internal StackPanel LoadingScreen;

		internal ModernProgressRing LoadingRing;

		internal Image Ghostie;

		internal TextBlock CancelConnection;

		internal Label QuickConnectLabel;

		internal StackPanel CountrySelectionStackPanel;

		internal ComboBox CountryComboBox;

		internal Button QuickConnect;

		internal Grid ProfileQuickGrid;

		internal Label ProfileQuickLabel;

		internal DataGrid HistoryDataGrid;

		internal DataGridTemplateColumn HistoryColumn;

		internal Button Exit;

		internal Button Maximize;

		internal Button UpgradeButton;

		public Grid WhileConnect;

		internal Grid CurrentProfileGrid;

		internal Image ConnectedImage;

		internal TextBlock ConnnectedLabel;

		internal Grid AnonSurf;

		internal ImageBrush GridBackgroundImage;

		internal TextBlock LblServerNameSurf;

		internal TextBlock LblServerNameTextSurf;

		internal Image LblImageCountryCustomSurf;

		internal TextBlock LblImageCountryCustomTextSurf;

		internal TextBlock LblIpSurf;

		internal TextBlock LblIpTextSurf;

		internal TextBlock LblTimeCustomSurf;

		internal TextBlock LblTimeCustomTextSurf;

		internal Grid Wifi;

		internal ImageBrush WifiBackgroundImage;

		internal TextBlock LblMalwareWifi;

		internal TextBlock LblMalwareWifiText;

		internal TextBlock LblTrackingWifi;

		internal TextBlock LblTrackingWifiText;

		internal TextBlock LblAddsWifi;

		internal TextBlock LblAddsWifiText;

		internal TextBlock LblTimerWifi;

		internal TextBlock LblTimerWifiText;

		internal Grid Uncensoring;

		internal ImageBrush UncensoringBackgroundImage;

		internal TextBlock LblUnblockNameAnti;

		internal TextBlock LblUnblockNameTextAnti;

		internal Image LblImageCountryAnti;

		internal TextBlock LblImageCountryTextAnti;

		internal Label LblFeedback;

		internal Button YesButtonAnti;

		internal Label LblYesAnti;

		internal Button NoButtonAnti;

		internal Label LblNoAnti;

		internal Grid AnonDownload;

		internal ImageBrush AnonDownloadBackgroundImage;

		internal TextBlock LblDownload;

		internal TextBlock LblDownloadText;

		internal TextBlock LblDownloadAverage;

		internal TextBlock LblDownloadAverageText;

		internal TextBlock LblDownloadMax;

		internal TextBlock LblDownloadMaxText;

		internal TextBlock LblDownloadTimer;

		internal TextBlock LblDownloadTimerText;

		internal Grid Unblocking;

		internal ImageBrush UnblockingBackgroundImage;

		internal TextBlock LblUnblockName;

		internal TextBlock LblUnblockNameText;

		internal Image LblImageCountry;

		internal TextBlock LblImageCountryText;

		internal Label LblFeedbackAnti;

		internal Button YesButton;

		internal Label LblYes;

		internal Button NoButton;

		internal Label LblNo;

		internal Grid CustomSet;

		internal ImageBrush CustomSetBackGroundImage;

		internal TextBlock LblServerName;

		internal TextBlock LblServerNameText;

		internal Image LblImageCountryCustom;

		internal TextBlock LblImageCountryCustomText;

		internal TextBlock LblIp;

		internal TextBlock LblIpText;

		internal TextBlock LblTimeCustom;

		internal TextBlock LblTimeCustomText;

		internal Button SwitchProfiletButton;

		internal Button DisconnectButton;

		internal Button UpgradeConnectedButton;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public bool ControlEnable
		{
			get
			{
				return this._controlEnable;
			}
			set
			{
				if (this._controlEnable == value)
				{
					return;
				}
				this._controlEnable = value;
				this.OnPropertyChanged("ControlEnable");
			}
		}

		private Uri IcoBrowseColor
		{
			get;
			set;
		}

		private Uri IcoDownloadColor
		{
			get;
			set;
		}

		private Uri IcoLanColor
		{
			get;
			set;
		}

		private Uri IcoWifiColor
		{
			get;
			set;
		}

		private Uri IcoAntiColor
		{
			get;
			set;
		}

		private Uri IcoUnblockColor
		{
			get;
			set;
		}

		private Uri IcoSettingColor
		{
			get;
			set;
		}

		public static CgApiServerList Servers
		{
			get;
			set;
		}

		public TrayHistoryData SelectedHistoryItem
		{
			get
			{
				return this._selectedHistoryItem;
			}
			set
			{
				if (this._selectedHistoryItem == value)
				{
					return;
				}
				this._selectedHistoryItem = value;
				this.OnPropertyChanged("SelectedHistoryItem");
			}
		}

		public string ServerName
		{
			get;
			set;
		}

		public NotifiyHome()
		{
			this.InitializeComponent();
			this.DetermineFormVisibility();
			base.DataContext = SettingsHolder.get_Settings();
			SettingsHolder.get_Settings().get_ProfileUncensoring().add_OnDidItWorkEvent(new CgProfileUncensoring.DidItWorkReplied(this.ProfileUncensoring_OnDidItWorkEvent));
			SettingsHolder.get_Settings().get_ProfileUnblock().add_OnDidItWorkEvent(new CgProfileUnblock.DidItWorkReplied(this.ProfileUnblock_OnDidItWorkEvent));
			this.CountrySelectionStackPanel.DataContext = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
			NotifierHelper.InitHistoryCollection();
			this._dt.Tick += new EventHandler(this.dt_Tick);
			this._dt.Interval = new TimeSpan(0, 0, 0, 0, 100);
			ObjectHolder.NotifiyIcon = this;
			this._anonSurfColor = new SolidColorBrush(GuiHelper.GenerateColor("#FFCC00"));
			this._anonDownloadColor = new SolidColorBrush(GuiHelper.GenerateColor("#844cb1"));
			this._wifiColor = new SolidColorBrush(GuiHelper.GenerateColor("#009fde"));
			this._unblockColor = new SolidColorBrush(GuiHelper.GenerateColor("#FFe4502a"));
			this._customColor = new SolidColorBrush(GuiHelper.GenerateColor("#FFbf2866"));
			this._antiCensorColor = new SolidColorBrush(GuiHelper.GenerateColor("#bfbfbf"));
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.Exit.IsEnabled = false;
			this.ControlEnable = false;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
			this._dt.Stop();
			if (ObjectHolder.ConnectedDispatcherTimer != null)
			{
				ObjectHolder.ConnectedDispatcherTimer.Stop();
				ObjectHolder.ConnectedDispatcherTimer.Interval = new TimeSpan(0, 0, 0, 1);
			}
			this.BeforeConnect.Visibility = Visibility.Visible;
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.LoadingScreen.Visibility = Visibility.Visible;
			this.CancelConnection.Visibility = Visibility.Visible;
			this.ProfileQuickGrid.Visibility = Visibility.Hidden;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
			this.Status.Text = CyberGhost.Translations.Status.StatusMessage_connecting;
			this.HideQuickBar();
		}

		public void OnBeforeDisconnect()
		{
			this.Status.Text = CyberGhost.Translations.Status._DISCONNECTING;
			this.LoadingRing.Visibility = Visibility.Visible;
			this.BeforeConnect.Visibility = Visibility.Visible;
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.ProfileQuickGrid.Visibility = Visibility.Hidden;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this.Exit.IsEnabled = true;
			this.BeforeConnect.Visibility = Visibility.Hidden;
			this.WhileConnect.Visibility = Visibility.Visible;
			ObjectHolder.CurrentConnectionTime = null;
			if (ObjectHolder.ConnectedDispatcherTimer != null)
			{
				ObjectHolder.ConnectedDispatcherTimer.Start();
			}
			this._dt.Stop();
			this._dt.Start();
			this.ProfileQuickGrid.Visibility = Visibility.Hidden;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
		}

		public void OnAfterDisconnected()
		{
			this.ControlEnable = true;
			this.HistoryDataGrid.Visibility = Visibility.Visible;
			this.BeforeConnect.Visibility = Visibility.Visible;
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.LoadingScreen.Visibility = Visibility.Hidden;
			this.Status.Text = Home.HeadlineText;
			this.ProfileQuickGrid.Visibility = Visibility.Visible;
			this.HistoryDataGrid.Visibility = Visibility.Visible;
			this.DisconnectButton.IsEnabled = true;
			this.ShowQuickBar();
			this.Exit.IsEnabled = true;
			this.RestoreFeedbackState();
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
		}

		public void OnTrafficDataChanged(TrafficDataChangedEventArgs trafficData)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Normal, new Action(delegate
			{
				if (trafficData != null)
				{
					this.LblDownload.Text = trafficData.get_CurrentSpeed().Key;
					this.LblDownloadMax.Text = trafficData.get_TotalReceived().Key;
					this.LblDownloadAverage.Text = trafficData.get_MaxSpeed().Key;
				}
			}));
		}

		public void RestoreFeedbackState()
		{
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.LblFeedbackAnti.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
			this.LblYesAnti.Visibility = Visibility.Visible;
			this.LblNoAnti.Visibility = Visibility.Visible;
			this.YesButtonAnti.Visibility = Visibility.Visible;
			this.NoButtonAnti.Visibility = Visibility.Visible;
		}

		public void SetUpgradeVisibility()
		{
			if (ObjectHolder.CurrentUser != null)
			{
				this.UpgradeConnectedButton.Visibility = (ObjectHolder.CurrentUser.IsFreeUser() ? Visibility.Visible : Visibility.Hidden);
				this.UpgradeButton.Visibility = (ObjectHolder.CurrentUser.IsFreeUser() ? Visibility.Visible : Visibility.Hidden);
			}
		}

		private void DetermineFormVisibility()
		{
			if (ObjectHolder.ConnectionStatus == null)
			{
				this.BeforeConnect.Visibility = Visibility.Hidden;
				this.WhileConnect.Visibility = Visibility.Visible;
				return;
			}
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.BeforeConnect.Visibility = Visibility.Visible;
		}

		private void InitIcons()
		{
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-browse-color.png")))
			{
				this.IcoBrowseColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-browse-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-download-color.png")))
			{
				this.IcoDownloadColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-download-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-lan-color.png")))
			{
				this.IcoLanColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-lan-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-wifi-color.pngg")))
			{
				this.IcoWifiColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-wifi-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-anti.png")))
			{
				this.IcoAntiColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-anti.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-unblock-color.png")))
			{
				this.IcoUnblockColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-unblock-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-setting-color.png")))
			{
				this.IcoSettingColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-setting-color.png"));
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\anonSurfQuick.png")))
				{
					this.GridBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anonSurfQuick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\wifiquick.png")))
				{
					this.WifiBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\wifiquick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\anticensorQuick.png")))
				{
					this.UncensoringBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anticensorQuick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\anonDownloadQuick.png")))
				{
					this.AnonDownloadBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anonDownloadQuick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\unblockQuick.png")))
				{
					this.UnblockingBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\unblockQuick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\customQuick.png")))
				{
					this.CustomSetBackGroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\customQuick.png")));
				}
			}
			catch (Exception)
			{
			}
		}

		private void HandleConnectedWithAnonSurfing()
		{
			if (this.IcoBrowseColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoBrowseColor);
			}
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._anonSurfColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			VpnServerLastConnectionInfos expr_5E = ObjectHolder.CurrentConnectionInfos;
			if (!string.IsNullOrEmpty((expr_5E != null) ? expr_5E.ServerIp : null))
			{
				TextBlock arg_88_0 = this.LblIpSurf;
				VpnServerLastConnectionInfos expr_7C = ObjectHolder.CurrentConnectionInfos;
				arg_88_0.Text = ((expr_7C != null) ? expr_7C.ServerIp : null);
			}
			VpnServerLastConnectionInfos expr_92 = ObjectHolder.CurrentConnectionInfos;
			if (!string.IsNullOrEmpty((expr_92 != null) ? expr_92.ServerCountry : null))
			{
				this.LblServerNameSurf.Text = this.MutateServerName(ObjectHolder.CurrentConnectionInfos.ServerName, this.LblServerNameSurf);
			}
			string arg_EB_0 = "Icons\\Flags\\24";
			string arg_E6_0 = "{0}.png";
			VpnServerLastConnectionInfos expr_D5 = ObjectHolder.CurrentConnectionInfos;
			string themedImage = Theming.GetThemedImage(Path.Combine(arg_EB_0, string.Format(arg_E6_0, (expr_D5 != null) ? expr_D5.ServerCountry.ToLower() : null)));
			bool flag = File.Exists(themedImage);
			VpnServerLastConnectionInfos expr_102 = ObjectHolder.CurrentConnectionInfos;
			if (!string.IsNullOrEmpty((expr_102 != null) ? expr_102.ServerCountry : null) & flag)
			{
				this.LblImageCountryCustomSurf.Source = new BitmapImage(new Uri(themedImage));
			}
			VpnServerLastConnectionInfos expr_135 = ObjectHolder.CurrentConnectionInfos;
			string countrycode = (expr_135 != null) ? expr_135.ServerCountry : null;
			this.LblImageCountryCustomTextSurf.Text = GuiHelper.FindTranslationForCountry(countrycode);
			this.AnonSurf.Visibility = Visibility.Visible;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Exit.IsEnabled = true;
		}

		private string MutateServerName(string servername, TextBlock lblUpLeftFirstLine)
		{
			string[] array = servername.Split(new char[]
			{
				'-'
			});
			string result;
			if (array.Length != 0)
			{
				if (array[0].Length <= 25)
				{
					result = array[0];
					lblUpLeftFirstLine.ToolTip = null;
				}
				else
				{
					lblUpLeftFirstLine.ToolTip = array[0];
					result = GuiHelper.Truncate(servername, 40);
				}
			}
			else
			{
				result = servername;
				lblUpLeftFirstLine.ToolTip = null;
			}
			return result;
		}

		private void HandleConnectedWithAnonDownloading()
		{
			if (this.IcoDownloadColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoDownloadColor);
			}
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._anonDownloadColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Visible;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithNetwork()
		{
			if (this.IcoLanColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoLanColor);
			}
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._wifiColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			GuiHelper.SetCurrentFeatureNumbers(SettingsHolder.get_Settings().get_ProfileNetwork(), this.LblAddsWifi, this.LblMalwareWifi, this.LblTrackingWifi);
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Visible;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithWifi()
		{
			if (this.IcoWifiColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoWifiColor);
			}
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._wifiColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			GuiHelper.SetCurrentFeatureNumbers(SettingsHolder.get_Settings().get_ProfileWifi(), this.LblAddsWifi, this.LblMalwareWifi, this.LblTrackingWifi);
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Visible;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithUncensoring()
		{
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = new SolidColorBrush(GuiHelper.GenerateColor("#FFDCDCDC"));
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			if (this.IcoAntiColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoAntiColor);
			}
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Visible;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.LblUnblockNameAnti.Text = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemNameShort();
			if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryImage()))
			{
				this.LblImageCountryAnti.Source = new BitmapImage(new Uri(SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryImage()));
			}
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryCode();
			this.LblImageCountryTextAnti.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithUnblock()
		{
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._unblockColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			if (this.IcoUnblockColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoUnblockColor);
			}
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Visible;
			this.LblUnblockName.Text = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemNameShort();
			if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage()))
			{
				this.LblImageCountry.Source = new BitmapImage(new Uri(SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage()));
			}
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode();
			this.LblImageCountryText.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithCustom()
		{
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._customColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			if (this.IcoSettingColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoSettingColor);
			}
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Visible;
			this.LblIp.Text = SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerIp();
			if (ObjectHolder.CurrentConnectionInfos != null)
			{
				this.LblServerName.Text = this.MutateServerName(ObjectHolder.CurrentConnectionInfos.ServerName, this.LblServerName);
			}
			else
			{
				this.LblServerName.Text = SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerName();
			}
			if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry()))
			{
				this.LblImageCountryCustom.Source = new BitmapImage(new Uri(Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry().ToLower())))));
			}
			string selectedCountry = SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry();
			this.LblImageCountryCustomText.Text = GuiHelper.FindTranslationForCountry(selectedCountry);
			this.Exit.IsEnabled = true;
		}

		private void Update_Click(object sender, RoutedEventArgs e)
		{
			if (ObjectHolder.MainForm != null)
			{
				ObjectHolder.MainForm.StartForegroundUpdate();
			}
		}

		[AsyncStateMachine(typeof(NotifiyHome.<QuickConnect_OnClick>d__64))]
		private void QuickConnect_OnClick(object sender, RoutedEventArgs e)
		{
			NotifiyHome.<QuickConnect_OnClick>d__64 <QuickConnect_OnClick>d__;
			<QuickConnect_OnClick>d__.<>4__this = this;
			<QuickConnect_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<QuickConnect_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <QuickConnect_OnClick>d__.<>t__builder;
			<>t__builder.Start<NotifiyHome.<QuickConnect_OnClick>d__64>(ref <QuickConnect_OnClick>d__);
		}

		private void UserControl_Loaded(object sender, RoutedEventArgs e)
		{
			this.HistoryDataGrid.ItemsSource = SettingsHolder.get_Settings().get_TrayHistory();
			this.HistoryDataGrid.Visibility = Visibility.Visible;
			this.Ghostie.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Logos\\ghost.png")));
			GuiHelper.InitializeServerList(NotifiyHome.Servers, this.CountryComboBox);
			if (ObjectHolder.UpdatePanel != null)
			{
				this.UpdatePanel.Visibility = ObjectHolder.UpdatePanel.Visibility;
			}
			this.SetUpgradeVisibility();
			string connectedProfileName = SettingsHolder.get_Settings().get_ConnectedProfileName();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(connectedProfileName);
			if (num <= 1377339077u)
			{
				if (num != 120087624u)
				{
					if (num != 542584942u)
					{
						if (num == 1377339077u)
						{
							if (connectedProfileName == "network")
							{
								this.HandleConnectedWithNetwork();
							}
						}
					}
					else if (connectedProfileName == "custom")
					{
						this.HandleConnectedWithCustom();
					}
				}
				else if (connectedProfileName == "wifi")
				{
					this.HandleConnectedWithWifi();
				}
			}
			else if (num <= 1879243226u)
			{
				if (num != 1741922751u)
				{
					if (num == 1879243226u)
					{
						if (connectedProfileName == "anonymousDownloading")
						{
							this.HandleConnectedWithAnonDownloading();
						}
					}
				}
				else if (connectedProfileName == "unblock")
				{
					this.HandleConnectedWithUnblock();
				}
			}
			else if (num != 2687971255u)
			{
				if (num == 2889374611u)
				{
					if (connectedProfileName == "antiCensor")
					{
						this.HandleConnectedWithUncensoring();
					}
				}
			}
			else if (connectedProfileName == "anonymousBrowsing")
			{
				this.HandleConnectedWithAnonSurfing();
			}
			this.DetermineFormVisibility();
			NotifierHelper.InitHistoryCollection();
			if (this.WhileConnect.Visibility == Visibility.Visible && this._firstrun && ObjectHolder.ConnectionStatus == null)
			{
				DispatcherTimer expr_1A2 = this._dt;
				if (expr_1A2 != null)
				{
					expr_1A2.Start();
				}
				this._firstrun = false;
			}
			if (ObjectHolder.ConnectionStatus == null)
			{
				this._firstrun = true;
			}
			if (ObjectHolder.ConnectionStatus.Equals(-1))
			{
				this.OnAfterDisconnected();
			}
			if (ObjectHolder.ConnectionStatus.Equals(20))
			{
				this.CancelConnection.Visibility = Visibility.Hidden;
			}
			if (ObjectHolder.ConnectionStatus.Equals(10) || ObjectHolder.ConnectionStatus.Equals(10000) || ObjectHolder.ConnectionStatus.Equals(30001))
			{
				this.CancelConnection.Visibility = Visibility.Visible;
				this.OnBeforeConnect(false, false);
			}
			if (this.LoadingRing.Visibility.Equals(Visibility.Visible) && ObjectHolder.CurrentProfile != null)
			{
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("wifi") || ObjectHolder.CurrentProfile.GetBaseName().Equals("network"))
				{
					this.LoadingRing.Foreground = this._wifiColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousBrowsing"))
				{
					this.LoadingRing.Foreground = this._anonSurfColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousDownloading"))
				{
					this.LoadingRing.Foreground = this._anonDownloadColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("custom"))
				{
					this.LoadingRing.Foreground = this._customColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("unblock"))
				{
					this.LoadingRing.Foreground = this._unblockColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("antiCensor"))
				{
					this.LoadingRing.Foreground = this._antiCensorColor;
				}
			}
			this.Exit.IsEnabled = (ObjectHolder.ConnectionStatus.Equals(0) || ObjectHolder.ConnectionStatus.Equals(-1) || ObjectHolder.ConnectionStatus.Equals(3000));
		}

		private void CancelConnection_OnMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			ObjectHolder.MainForm.Disconnect();
			this.OnBeforeDisconnect();
		}

		private void dt_Tick(object sender, EventArgs e)
		{
			this.LblTimerWifi.Text = ObjectHolder.CurrentConnectionTime;
			this.LblTimeCustom.Text = ObjectHolder.CurrentConnectionTime;
			this.LblTimeCustomSurf.Text = ObjectHolder.CurrentConnectionTime;
			this.LblDownloadTimer.Text = ObjectHolder.CurrentConnectionTime;
		}

		private void Show_OnClick(object sender, RoutedEventArgs e)
		{
			MainWindow expr_05 = ObjectHolder.MainForm;
			if (expr_05 == null)
			{
				return;
			}
			expr_05.ShowMe();
		}

		[AsyncStateMachine(typeof(NotifiyHome.<Exit_OnClick>d__69))]
		private void Exit_OnClick(object sender, RoutedEventArgs e)
		{
			NotifiyHome.<Exit_OnClick>d__69 <Exit_OnClick>d__;
			<Exit_OnClick>d__.<>4__this = this;
			<Exit_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Exit_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Exit_OnClick>d__.<>t__builder;
			<>t__builder.Start<NotifiyHome.<Exit_OnClick>d__69>(ref <Exit_OnClick>d__);
		}

		private void DisconnectButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.DisconnectButton.IsEnabled = false;
			ObjectHolder.MainForm.Disconnect();
			this.CancelConnection.Visibility = Visibility.Hidden;
			ObjectHolder.MainForm.WindowState = WindowState.Normal;
		}

		private void ShowQuickBar()
		{
			this.CountryComboBox.Visibility = Visibility.Visible;
			this.QuickConnect.Visibility = Visibility.Visible;
			this.QuickConnectLabel.Visibility = Visibility.Visible;
			this.ProfileQuickLabel.Visibility = Visibility.Visible;
			this.HistoryDataGrid.Visibility = Visibility.Visible;
		}

		private void HideQuickBar()
		{
			this.CountryComboBox.Visibility = Visibility.Hidden;
			this.QuickConnect.Visibility = Visibility.Hidden;
			this.QuickConnectLabel.Visibility = Visibility.Hidden;
			this.ProfileQuickLabel.Visibility = Visibility.Hidden;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
		}

		private void SwitchProfiletButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.ShowQuickBar();
			this.Status.Text = Home.HeadlineText;
			this.LoadingScreen.Visibility = Visibility.Hidden;
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.BeforeConnect.Visibility = Visibility.Visible;
		}

		public void UpdateWifiDisplay(HelperFunctions.WlanInfos newWiFiInfos, bool showDisplay)
		{
		}

		private void NoButton_OnClick(object sender, RoutedEventArgs e)
		{
			if (sender == null)
			{
				return;
			}
			this.SetFeedbackContent(sender);
		}

		private void YesButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.SetFeedbackContent(sender);
		}

		private void SetFeedbackContent(object sender)
		{
			if (((Button)sender).Name.IndexOf("ANTI", StringComparison.OrdinalIgnoreCase) > -1)
			{
				SettingsHolder.get_Settings().get_ProfileUncensoring().set_DidItWorkDisabled(true);
				return;
			}
			SettingsHolder.get_Settings().get_ProfileUnblock().set_DidItWorkDisabled(true);
		}

		private async void UpgradeButton_OnClick(object sender, RoutedEventArgs e)
		{
			await Navigation.GoInAppPurchase("Tray_button", null);
			ObjectHolder.MainForm.ShowMe();
			ObjectHolder.MainForm.Focus();
		}

		private void OpenHomeScreen_OnClick(object sender, RoutedEventArgs e)
		{
			ObjectHolder.MainForm.ShowMe();
			Navigation.GoHome();
		}

		private void ProfileUncensoring_OnDidItWorkEvent(object sender, DidItWorkEventArgs args)
		{
			if (sender == null || args == null)
			{
				return;
			}
			if (args.get_HasBeenReplied())
			{
				this.LblFeedback.Visibility = Visibility.Visible;
				this.LblFeedbackAnti.Visibility = Visibility.Visible;
				this.LblYesAnti.Visibility = Visibility.Hidden;
				this.LblNoAnti.Visibility = Visibility.Hidden;
				this.YesButtonAnti.Visibility = Visibility.Hidden;
				this.NoButtonAnti.Visibility = Visibility.Hidden;
				return;
			}
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.LblFeedbackAnti.Visibility = Visibility.Hidden;
			this.LblYesAnti.Visibility = Visibility.Visible;
			this.LblNoAnti.Visibility = Visibility.Visible;
			this.YesButtonAnti.Visibility = Visibility.Visible;
			this.NoButtonAnti.Visibility = Visibility.Visible;
		}

		private void ProfileUnblock_OnDidItWorkEvent(object sender, DidItWorkEventArgs args)
		{
			if (sender == null || args == null)
			{
				return;
			}
			if (args.get_HasBeenReplied())
			{
				this.LblFeedback.Visibility = Visibility.Visible;
				this.LblFeedbackAnti.Visibility = Visibility.Visible;
				this.LblYes.Visibility = Visibility.Hidden;
				this.LblNo.Visibility = Visibility.Hidden;
				this.YesButton.Visibility = Visibility.Hidden;
				this.NoButton.Visibility = Visibility.Hidden;
				return;
			}
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.LblFeedbackAnti.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
		}

		public void Dispose()
		{
			if (SettingsHolder.get_Settings().get_ProfileUnblock() != null)
			{
				SettingsHolder.get_Settings().get_ProfileUnblock().remove_OnDidItWorkEvent(new CgProfileUnblock.DidItWorkReplied(this.ProfileUnblock_OnDidItWorkEvent));
			}
			if (SettingsHolder.get_Settings().get_ProfileUncensoring() != null)
			{
				SettingsHolder.get_Settings().get_ProfileUncensoring().remove_OnDidItWorkEvent(new CgProfileUncensoring.DidItWorkReplied(this.ProfileUncensoring_OnDidItWorkEvent));
			}
		}

		private void OnCountrySelectionChanged(object sender, UserSelectionChangedEventArgs e)
		{
			if (e.get_SelectionChangedByUser())
			{
				GuiHelper.CountryComboBoxChanged((ComboBox)sender);
			}
		}

		[AsyncStateMachine(typeof(NotifiyHome.<ConnectToSelectedHistoryItem>d__92))]
		private void ConnectToSelectedHistoryItem()
		{
			NotifiyHome.<ConnectToSelectedHistoryItem>d__92 <ConnectToSelectedHistoryItem>d__;
			<ConnectToSelectedHistoryItem>d__.<>4__this = this;
			<ConnectToSelectedHistoryItem>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ConnectToSelectedHistoryItem>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ConnectToSelectedHistoryItem>d__.<>t__builder;
			<>t__builder.Start<NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref <ConnectToSelectedHistoryItem>d__);
		}

		private void RemoveItemFromCollectionOnSelected()
		{
			try
			{
				SettingsHolder.get_Settings().get_TrayHistory().Remove(this.SelectedHistoryItem);
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				this.SelectedHistoryItem = null;
			}
			catch (ArgumentOutOfRangeException ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1}: --> {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
		}

		private void Trash_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (!(sender is Label))
			{
				return;
			}
			if (this.SelectedHistoryItem != null)
			{
				this.RemoveItemFromCollectionOnSelected();
				this.HistoryDataGrid.RowBackground = (base.FindResource("WindowBackgroundColorBrush") as SolidColorBrush);
				this.HistoryDataGrid.Background = (base.FindResource("WindowBackgroundColorBrush") as SolidColorBrush);
			}
		}

		private void HistoryItemStackPanel_MouseEnter(object sender, MouseEventArgs e)
		{
			Guid g = (Guid)(sender as StackPanel).Tag;
			foreach (TrayHistoryData current in SettingsHolder.get_Settings().get_TrayHistory())
			{
				if (current.get_ItemId().Equals(g))
				{
					this.SelectedHistoryItem = current;
					break;
				}
			}
		}

		private void HistoryItemStackPanel_LayoutUpdated(object sender, EventArgs e)
		{
			this.HistoryDataGrid.SelectedIndex = -1;
		}

		private void CountryImage_OnMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (this.SelectedHistoryItem == null)
			{
				return;
			}
			this.ConnectToSelectedHistoryItem();
		}

		private void ProfileNameLabel_OnMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (this.SelectedHistoryItem == null)
			{
				return;
			}
			this.ConnectToSelectedHistoryItem();
		}

		private void HistoryItemStackPanel_OnToolTipOpening(object sender, ToolTipEventArgs e)
		{
			StackPanel stackPanel = sender as StackPanel;
			if (stackPanel == null)
			{
				return;
			}
			stackPanel.ToolTip = string.Format("{0}", this.SelectedHistoryItem.get_LastUsedDateTime());
		}

		[NotifyPropertyChangedInvocator]
		protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChangedEventHandler expr_06 = this.PropertyChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new PropertyChangedEventArgs(propertyName));
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/notifiyhome.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((NotifiyHome)target).Loaded += new RoutedEventHandler(this.UserControl_Loaded);
				return;
			case 2:
				this.BeforeConnect = (Grid)target;
				return;
			case 3:
				this.Header = (Grid)target;
				return;
			case 4:
				this.Status = (TextBlock)target;
				return;
			case 5:
				this.UpdatePanel = (StackPanel)target;
				return;
			case 6:
				this.UpdateLabel = (TextBlock)target;
				return;
			case 7:
				this.UpdateButton = (Button)target;
				this.UpdateButton.Click += new RoutedEventHandler(this.Update_Click);
				return;
			case 8:
				this.LoadingScreen = (StackPanel)target;
				return;
			case 9:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			case 10:
				this.Ghostie = (Image)target;
				return;
			case 11:
				this.CancelConnection = (TextBlock)target;
				this.CancelConnection.MouseLeftButtonUp += new MouseButtonEventHandler(this.CancelConnection_OnMouseLeftButtonUp);
				return;
			case 12:
				this.QuickConnectLabel = (Label)target;
				return;
			case 13:
				this.CountrySelectionStackPanel = (StackPanel)target;
				return;
			case 14:
				this.CountryComboBox = (ComboBox)target;
				this.CountryComboBox.AddHandler(UserSelectionChangedBehavior.UserSelectionChangedEvent, new UserSelectionChangedEventHandler(this.OnCountrySelectionChanged));
				return;
			case 15:
				this.QuickConnect = (Button)target;
				this.QuickConnect.Click += new RoutedEventHandler(this.QuickConnect_OnClick);
				return;
			case 16:
				this.ProfileQuickGrid = (Grid)target;
				return;
			case 17:
				this.ProfileQuickLabel = (Label)target;
				return;
			case 18:
				this.HistoryDataGrid = (DataGrid)target;
				return;
			case 19:
				this.HistoryColumn = (DataGridTemplateColumn)target;
				return;
			case 24:
				this.Exit = (Button)target;
				this.Exit.Click += new RoutedEventHandler(this.Exit_OnClick);
				return;
			case 25:
				this.Maximize = (Button)target;
				this.Maximize.Click += new RoutedEventHandler(this.Show_OnClick);
				return;
			case 26:
				this.UpgradeButton = (Button)target;
				this.UpgradeButton.Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			case 27:
				this.WhileConnect = (Grid)target;
				return;
			case 28:
				this.CurrentProfileGrid = (Grid)target;
				return;
			case 29:
				this.ConnectedImage = (Image)target;
				return;
			case 30:
				this.ConnnectedLabel = (TextBlock)target;
				return;
			case 31:
				this.AnonSurf = (Grid)target;
				return;
			case 32:
				this.GridBackgroundImage = (ImageBrush)target;
				return;
			case 33:
				this.LblServerNameSurf = (TextBlock)target;
				return;
			case 34:
				this.LblServerNameTextSurf = (TextBlock)target;
				return;
			case 35:
				this.LblImageCountryCustomSurf = (Image)target;
				return;
			case 36:
				this.LblImageCountryCustomTextSurf = (TextBlock)target;
				return;
			case 37:
				this.LblIpSurf = (TextBlock)target;
				return;
			case 38:
				this.LblIpTextSurf = (TextBlock)target;
				return;
			case 39:
				this.LblTimeCustomSurf = (TextBlock)target;
				return;
			case 40:
				this.LblTimeCustomTextSurf = (TextBlock)target;
				return;
			case 41:
				this.Wifi = (Grid)target;
				return;
			case 42:
				this.WifiBackgroundImage = (ImageBrush)target;
				return;
			case 43:
				this.LblMalwareWifi = (TextBlock)target;
				return;
			case 44:
				this.LblMalwareWifiText = (TextBlock)target;
				return;
			case 45:
				this.LblTrackingWifi = (TextBlock)target;
				return;
			case 46:
				this.LblTrackingWifiText = (TextBlock)target;
				return;
			case 47:
				this.LblAddsWifi = (TextBlock)target;
				return;
			case 48:
				this.LblAddsWifiText = (TextBlock)target;
				return;
			case 49:
				this.LblTimerWifi = (TextBlock)target;
				return;
			case 50:
				this.LblTimerWifiText = (TextBlock)target;
				return;
			case 51:
				this.Uncensoring = (Grid)target;
				return;
			case 52:
				this.UncensoringBackgroundImage = (ImageBrush)target;
				return;
			case 53:
				this.LblUnblockNameAnti = (TextBlock)target;
				return;
			case 54:
				this.LblUnblockNameTextAnti = (TextBlock)target;
				return;
			case 55:
				this.LblImageCountryAnti = (Image)target;
				return;
			case 56:
				this.LblImageCountryTextAnti = (TextBlock)target;
				return;
			case 57:
				this.LblFeedback = (Label)target;
				return;
			case 58:
				this.YesButtonAnti = (Button)target;
				this.YesButtonAnti.Click += new RoutedEventHandler(this.YesButton_OnClick);
				return;
			case 59:
				this.LblYesAnti = (Label)target;
				return;
			case 60:
				this.NoButtonAnti = (Button)target;
				this.NoButtonAnti.Click += new RoutedEventHandler(this.NoButton_OnClick);
				return;
			case 61:
				this.LblNoAnti = (Label)target;
				return;
			case 62:
				this.AnonDownload = (Grid)target;
				return;
			case 63:
				this.AnonDownloadBackgroundImage = (ImageBrush)target;
				return;
			case 64:
				this.LblDownload = (TextBlock)target;
				return;
			case 65:
				this.LblDownloadText = (TextBlock)target;
				return;
			case 66:
				this.LblDownloadAverage = (TextBlock)target;
				return;
			case 67:
				this.LblDownloadAverageText = (TextBlock)target;
				return;
			case 68:
				this.LblDownloadMax = (TextBlock)target;
				return;
			case 69:
				this.LblDownloadMaxText = (TextBlock)target;
				return;
			case 70:
				this.LblDownloadTimer = (TextBlock)target;
				return;
			case 71:
				this.LblDownloadTimerText = (TextBlock)target;
				return;
			case 72:
				this.Unblocking = (Grid)target;
				return;
			case 73:
				this.UnblockingBackgroundImage = (ImageBrush)target;
				return;
			case 74:
				this.LblUnblockName = (TextBlock)target;
				return;
			case 75:
				this.LblUnblockNameText = (TextBlock)target;
				return;
			case 76:
				this.LblImageCountry = (Image)target;
				return;
			case 77:
				this.LblImageCountryText = (TextBlock)target;
				return;
			case 78:
				this.LblFeedbackAnti = (Label)target;
				return;
			case 79:
				this.YesButton = (Button)target;
				this.YesButton.Click += new RoutedEventHandler(this.YesButton_OnClick);
				return;
			case 80:
				this.LblYes = (Label)target;
				return;
			case 81:
				this.NoButton = (Button)target;
				this.NoButton.Click += new RoutedEventHandler(this.NoButton_OnClick);
				return;
			case 82:
				this.LblNo = (Label)target;
				return;
			case 83:
				this.CustomSet = (Grid)target;
				return;
			case 84:
				this.CustomSetBackGroundImage = (ImageBrush)target;
				return;
			case 85:
				this.LblServerName = (TextBlock)target;
				return;
			case 86:
				this.LblServerNameText = (TextBlock)target;
				return;
			case 87:
				this.LblImageCountryCustom = (Image)target;
				return;
			case 88:
				this.LblImageCountryCustomText = (TextBlock)target;
				return;
			case 89:
				this.LblIp = (TextBlock)target;
				return;
			case 90:
				this.LblIpText = (TextBlock)target;
				return;
			case 91:
				this.LblTimeCustom = (TextBlock)target;
				return;
			case 92:
				this.LblTimeCustomText = (TextBlock)target;
				return;
			case 93:
				this.SwitchProfiletButton = (Button)target;
				this.SwitchProfiletButton.Click += new RoutedEventHandler(this.SwitchProfiletButton_OnClick);
				return;
			case 94:
				this.DisconnectButton = (Button)target;
				this.DisconnectButton.Click += new RoutedEventHandler(this.DisconnectButton_OnClick);
				return;
			case 95:
				this.UpgradeConnectedButton = (Button)target;
				this.UpgradeConnectedButton.Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			}
			this._contentLoaded = true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 20:
				((StackPanel)target).MouseEnter += new MouseEventHandler(this.HistoryItemStackPanel_MouseEnter);
				((StackPanel)target).LayoutUpdated += new EventHandler(this.HistoryItemStackPanel_LayoutUpdated);
				((StackPanel)target).ToolTipOpening += new ToolTipEventHandler(this.HistoryItemStackPanel_OnToolTipOpening);
				return;
			case 21:
				((Image)target).MouseLeftButtonDown += new MouseButtonEventHandler(this.CountryImage_OnMouseLeftButtonDown);
				return;
			case 22:
				((Label)target).MouseLeftButtonDown += new MouseButtonEventHandler(this.ProfileNameLabel_OnMouseLeftButtonDown);
				return;
			case 23:
				((Label)target).MouseLeftButtonDown += new MouseButtonEventHandler(this.Trash_MouseLeftButtonDown);
				return;
			default:
				return;
			}
		}

		static NotifiyHome()
		{
			// Note: this type is marked as 'beforefieldinit'.
			NotifiyHome.<Servers>k__BackingField = new CgApiServerList();
		}
	}
}
