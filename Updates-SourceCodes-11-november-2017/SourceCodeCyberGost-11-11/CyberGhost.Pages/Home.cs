using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.MCTile;
using MobileConcepts.Components.Network;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages
{
	public class Home : System.Windows.Controls.UserControl, IComponentConnector, IConnectionStates, INotifyPropertyChanged, IContent
	{
		public class TimeSpanToSecondsConverter : IValueConverter
		{
			object IValueConverter.Convert(object value, Type targetType, object parameter, CultureInfo culture)
			{
				return ((TimeSpan)value).TotalSeconds;
			}

			object IValueConverter.ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
			{
				return TimeSpan.FromSeconds((double)value);
			}
		}

		public static Home _Home;

		public static CgApiMotd _CurrentMotd;

		private TileButton _mWifiTile;

		private readonly Timer _mGoBackToConnectedScreenTimer;

		private string _headerText1;

		private string _headerText2;

		private bool _manageButtonVisible;

		private bool _upgradeRenewButtonVisible;

		internal Grid HomeGrid;

		internal WrapPanel connected_Info;

		internal TextBlock connected_Profile;

		internal Image connected_CountryImage;

		internal TextBlock connected_ServerName;

		internal Grid GridHeadLine;

		internal Grid HeaderTextGrid;

		internal TextBlock Text1;

		internal TextBlock Text2;

		internal System.Windows.Controls.Button ManageDevicesButton;

		internal System.Windows.Controls.Button UpgradeRenewNowButton;

		internal Grid UpgradeNowTextGrid;

		internal TextBlock UpgradeRenewText;

		internal TextBlock UpgradeRenewTextLine2;

		internal TileContainer TileLayoutCtrl;

		internal WrapPanel motd;

		internal TextBlock motd_text;

		internal DockPanel UpdatePanel;

		internal System.Windows.Controls.Label UpdateLabel;

		internal System.Windows.Controls.Button UpdateButton;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		private Uri _freeImageAnonDownload
		{
			get;
			set;
		}

		private Uri _freeImageAnonSurf
		{
			get;
			set;
		}

		private Uri _freeImageAntiCensor
		{
			get;
			set;
		}

		private Uri _freeImageCustom
		{
			get;
			set;
		}

		private Uri _freeImageNetwork
		{
			get;
			set;
		}

		private Uri _freeImageUnblock
		{
			get;
			set;
		}

		private Uri _freeImageWifi
		{
			get;
			set;
		}

		private Uri _premiumImageAnonDownload
		{
			get;
			set;
		}

		private Uri _premiumImageAnonSurf
		{
			get;
			set;
		}

		private Uri _premiumImageAntiCensor
		{
			get;
			set;
		}

		private Uri _premiumImageCustom
		{
			get;
			set;
		}

		private Uri _premiumImageNetwork
		{
			get;
			set;
		}

		private Uri _premiumImageUnblock
		{
			get;
			set;
		}

		private Uri _premiumImageWifi
		{
			get;
			set;
		}

		public string HeaderText1
		{
			get
			{
				return this._headerText1;
			}
			set
			{
				this._headerText1 = value;
				this.OnPropertyChanged("HeaderText1");
			}
		}

		public string HeaderText2
		{
			get
			{
				return this._headerText2;
			}
			set
			{
				this._headerText2 = value;
				this.OnPropertyChanged("HeaderText2");
			}
		}

		public bool ManageButtonVisible
		{
			get
			{
				return this._manageButtonVisible;
			}
			set
			{
				if (this._manageButtonVisible == value)
				{
					return;
				}
				this._manageButtonVisible = value;
				this.UpgradeRenewButtonVisible = !this._manageButtonVisible;
				this.OnPropertyChanged("ManageButtonVisible");
			}
		}

		public bool UpgradeRenewButtonVisible
		{
			get
			{
				return this._upgradeRenewButtonVisible;
			}
			set
			{
				if (this._upgradeRenewButtonVisible == value)
				{
					return;
				}
				this._upgradeRenewButtonVisible = value;
				this.ManageButtonVisible = !this._upgradeRenewButtonVisible;
				this.OnPropertyChanged("UpgradeRenewButtonVisible");
			}
		}

		public Home()
		{
			this.InitializeComponent();
			Home._Home = this;
			this.InitIcons();
			this.UpdateMotd();
			base.DataContext = this;
			this._mGoBackToConnectedScreenTimer = new Timer
			{
				Interval = 60000
			};
			this._mGoBackToConnectedScreenTimer.Tick += new EventHandler(this._mGoBackToConnectedScreenTimer_Tick);
			ObjectHolder.MainForm.MouseMove += new System.Windows.Input.MouseEventHandler(this.MainForm_MouseMove);
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this._freeImageAnonDownload = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-download.png"));
			this._freeImageAnonSurf = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-browse.png"));
			this._freeImageAntiCensor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-anti.png"));
			this._freeImageCustom = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-setting.png"));
			this._freeImageNetwork = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-lan.png"));
			this._freeImageUnblock = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-unblock.png"));
			this._freeImageWifi = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-wifi.png"));
			this._premiumImageAnonDownload = new Uri(Theming.GetThemedImage(string.Format("Icons\\ProfileTabs\\HomePremium_{0}\\ico-download.png", SettingsHolder.get_Settings().get_Language())));
			this._premiumImageAnonSurf = new Uri(Theming.GetThemedImage(string.Format("Icons\\ProfileTabs\\HomePremium_{0}\\ico-browse.png", SettingsHolder.get_Settings().get_Language())));
			this._premiumImageAntiCensor = new Uri(Theming.GetThemedImage(string.Format("Icons\\ProfileTabs\\HomePremium_{0}\\ico-anti.png", SettingsHolder.get_Settings().get_Language())));
			this._premiumImageCustom = new Uri(Theming.GetThemedImage(string.Format("Icons\\ProfileTabs\\HomePremium_{0}\\ico-setting.png", SettingsHolder.get_Settings().get_Language())));
			this._premiumImageNetwork = new Uri(Theming.GetThemedImage(string.Format("Icons\\ProfileTabs\\HomePremium_{0}\\ico-lan.png", SettingsHolder.get_Settings().get_Language())));
			this._premiumImageUnblock = new Uri(Theming.GetThemedImage(string.Format("Icons\\ProfileTabs\\HomePremium_{0}\\ico-unblock.png", SettingsHolder.get_Settings().get_Language())));
			this._premiumImageWifi = new Uri(Theming.GetThemedImage(string.Format("Icons\\ProfileTabs\\HomePremium_{0}\\ico-wifi.png", SettingsHolder.get_Settings().get_Language())));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			this._mGoBackToConnectedScreenTimer.Stop();
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.CreateTiles();
			this.UpdateConnectedPanel();
			ObjectHolder.MainForm.set_IsNavigationVisible(false);
			ObjectHolder.UpdatePanel = this.UpdatePanel;
			if (GuiHelper.IsProLoginRequired())
			{
				ObjectHolder.MainForm.UpdateUserLabel();
				Navigation.GoToPage("Login", null, null);
				return;
			}
			if (ObjectHolder.ShowUpdateInstalled)
			{
				try
				{
					ObjectHolder.ShowUpdateInstalled = false;
					this.UpdatePanel.Visibility = Visibility.Visible;
					this.UpdateButton.Visibility = Visibility.Hidden;
					this.UpdateLabel.Content = CyberGhost.Translations.MainWindow.A_update_has_been_installed;
					HelperFunctions.DelayExecution(TimeSpan.FromSeconds(6.0), new Action(this.CloseUpdateBar));
				}
				catch (Exception)
				{
					this.UpdatePanel.Visibility = Visibility.Hidden;
				}
			}
			if (ObjectHolder.CyberGhostCom != null && ObjectHolder.CyberGhostCom.IsClientUpdateAvailable())
			{
				this.UpdatePanel.Visibility = Visibility.Visible;
			}
			ObjectHolder.WifiDetector.add_OnSignalStrengthChanged(new WiFiDetector.SignalStrengthChanged(this._wiFiDetector_OnSignalStrengthChanged));
			ObjectHolder.WifiDetector.add_OnWifiDisconnected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnWifiDisconnected));
			ObjectHolder.WifiDetector.add_OnNewWiFiDetected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnWifiConnected));
			ObjectHolder.WifiDetector.set_Enabled(true);
			WiFiDetector expr_118 = ObjectHolder.WifiDetector;
			HelperFunctions.WlanInfos[] array = (expr_118 != null) ? expr_118.GetCurrentWiFi() : null;
			if (array != null && array.Length != 0)
			{
				this.UpdateWifiDisplay(array[0], true);
				ObjectHolder.NotifiyIcon.UpdateWifiDisplay(array[0], true);
			}
			else
			{
				this.UpdateWifiDisplay(null, false);
				ObjectHolder.NotifiyIcon.UpdateWifiDisplay(null, false);
			}
			if (ObjectHolder.ConnectionStatus != -1)
			{
				this._mGoBackToConnectedScreenTimer.Start();
			}
			ObjectHolder.MainForm.ShowTitleLinkUpgrade();
			this.UpdateManageDevicesButton();
		}

		private void UpdateConnectedPanel()
		{
			if (ObjectHolder.ConnectionStatus != -1 && ObjectHolder.CurrentConnectionInfos != null)
			{
				this.connected_Profile.Text = SettingsHolder.get_Settings().get_ConnectedProfileNamePretty();
				this.connected_ServerName.Text = string.Format("{0} ({1})", ObjectHolder.CurrentConnectionInfos.ServerName, ObjectHolder.CurrentConnectionInfos.ServerIp);
				string themedImage = Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", ObjectHolder.CurrentConnectionInfos.ServerCountry.ToLower())));
				if (File.Exists(themedImage))
				{
					BitmapImage bitmapImage = new BitmapImage();
					bitmapImage.BeginInit();
					bitmapImage.UriSource = new Uri(themedImage);
					bitmapImage.EndInit();
					this.connected_CountryImage.Source = bitmapImage;
				}
				this.connected_Info.Visibility = Visibility.Visible;
				return;
			}
			this.connected_Info.Visibility = Visibility.Collapsed;
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void CreateTiles()
		{
			this.TileLayoutCtrl.TileButtons.Clear();
			this._mWifiTile = null;
			if (ObjectHolder.CurrentUser == null)
			{
				return;
			}
			TileButton expr_24 = new TileButton();
			expr_24.Tag = "AnonBrows";
			expr_24.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostBrowsing : CyberGhost.Translations.Home.HeadlinePrivateBrowsing);
			expr_24.set_TileDescription(CyberGhost.Translations.Home.ContentPrivateBrowsing);
			expr_24.set_TileImageSource(ObjectHolder.CurrentUser.HasUserAccessToFeature(13) ? this._freeImageAnonSurf : this._premiumImageAnonSurf);
			expr_24.set_TileBaseColor((Color)base.FindResource("BaseColorYellow"));
			expr_24.set_TileGradientColor((Color)base.FindResource("BaseColorYellowGradient"));
			TileButton tileButton = expr_24;
			TileButton expr_A8 = new TileButton();
			expr_A8.Tag = "AnonDown";
			expr_A8.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostDownloads : CyberGhost.Translations.Home.HeaderAnonDownloading);
			expr_A8.set_TileDescription(CyberGhost.Translations.Home.ContentAnonDownloading);
			expr_A8.set_TileImageSource(ObjectHolder.CurrentUser.HasUserAccessToFeature(18) ? this._freeImageAnonDownload : this._premiumImageAnonDownload);
			expr_A8.set_TileBaseColor((Color)base.FindResource("BaseColorPurple"));
			expr_A8.set_TileGradientColor((Color)base.FindResource("BaseColorPurpleGradient"));
			TileButton tileButton2 = expr_A8;
			TileButton expr_12C = new TileButton();
			expr_12C.Tag = "Unblock";
			expr_12C.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostStreaming : CyberGhost.Translations.Home.HeaderUnblock);
			expr_12C.set_TileDescription(CyberGhost.Translations.Home.ContentUnblock);
			expr_12C.set_TileImageSource(ObjectHolder.CurrentUser.HasUserAccessToFeature(12) ? this._freeImageUnblock : this._premiumImageUnblock);
			expr_12C.set_TileBaseColor((Color)base.FindResource("BaseColorRed"));
			expr_12C.set_TileGradientColor((Color)base.FindResource("BaseColorRedGradient"));
			TileButton tileButton3 = expr_12C;
			TileButton expr_1B0 = new TileButton();
			expr_1B0.Tag = "Anti";
			expr_1B0.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostAntiCensor : CyberGhost.Translations.Home.HeaderAnti);
			expr_1B0.set_TileDescription(CyberGhost.Translations.Home.ContentAnti);
			expr_1B0.set_TileImageSource(ObjectHolder.CurrentUser.HasUserAccessToFeature(14) ? this._freeImageAntiCensor : this._premiumImageAntiCensor);
			expr_1B0.set_TileBaseColor((Color)base.FindResource("BaseColorDarkBlue"));
			expr_1B0.set_TileGradientColor((Color)base.FindResource("BaseColorDarkBlueGradient"));
			TileButton tileButton4 = expr_1B0;
			TileButton expr_234 = new TileButton();
			expr_234.Tag = "NetworkTile";
			expr_234.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostNetwork : CyberGhost.Translations.Home.HeaderProtection);
			expr_234.set_TileDescription(CyberGhost.Translations.Home.ContentProtection);
			expr_234.set_TileImageSource(ObjectHolder.CurrentUser.HasUserAccessToFeature(11) ? this._freeImageNetwork : this._premiumImageNetwork);
			expr_234.set_TileBaseColor((Color)base.FindResource("BaseColorBlue"));
			expr_234.set_TileGradientColor((Color)base.FindResource("BaseColorBlueGradient"));
			TileButton tileButton5 = expr_234;
			TileButton expr_2B9 = new TileButton();
			expr_2B9.Tag = "Custom";
			expr_2B9.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostPro : CyberGhost.Translations.Home.HeaderCustom);
			expr_2B9.set_TileDescription(CyberGhost.Translations.Home.CustomText);
			expr_2B9.set_TileImageSource(ObjectHolder.CurrentUser.HasUserAccessToFeature(16) ? this._freeImageCustom : this._premiumImageCustom);
			expr_2B9.set_TileBaseColor((Color)base.FindResource("BaseColorMagenta"));
			expr_2B9.set_TileGradientColor((Color)base.FindResource("BaseColorMagentaGradient"));
			TileButton tileButton6 = expr_2B9;
			tileButton.Click += new RoutedEventHandler(this.Tile_Click);
			tileButton2.Click += new RoutedEventHandler(this.Tile_Click);
			tileButton3.Click += new RoutedEventHandler(this.Tile_Click);
			tileButton4.Click += new RoutedEventHandler(this.Tile_Click);
			tileButton5.Click += new RoutedEventHandler(this.Tile_Click);
			tileButton6.Click += new RoutedEventHandler(this.Tile_Click);
			this.TileLayoutCtrl.TileButtons.Add(tileButton);
			this.TileLayoutCtrl.TileButtons.Add(tileButton3);
			this.TileLayoutCtrl.TileButtons.Add(tileButton5);
			this.TileLayoutCtrl.TileButtons.Add(tileButton2);
			this.TileLayoutCtrl.TileButtons.Add(tileButton4);
			this.TileLayoutCtrl.TileButtons.Add(tileButton6);
			this._mWifiTile = tileButton5;
		}

		private void MainForm_MouseMove(object sender, System.Windows.Input.MouseEventArgs e)
		{
			if (ObjectHolder.ConnectionStatus == null || ObjectHolder.ConnectionStatus == 10)
			{
				try
				{
					this._mGoBackToConnectedScreenTimer.Stop();
					this._mGoBackToConnectedScreenTimer.Start();
				}
				catch (Exception ex)
				{
					HelperFunctions.DebugLine(string.Format("COULD NOT RESTART TIMER: {0}", ex.Message));
				}
			}
		}

		private void _mGoBackToConnectedScreenTimer_Tick(object sender, EventArgs e)
		{
			if ((ObjectHolder.ConnectionStatus == null || ObjectHolder.ConnectionStatus == 10) && !ObjectHolder.MainForm.get_ContentSource().ToString().Contains("/Pages/Conversion"))
			{
				Navigation.NavigateToConnectedScreen();
			}
			this._mGoBackToConnectedScreenTimer.Stop();
		}

		private void CloseUpdateBar()
		{
			this.UpdatePanel.Visibility = Visibility.Collapsed;
			this.UpdateButton.Visibility = Visibility.Visible;
			this.UpdateLabel.Content = CyberGhost.Translations.MainWindow.updateLabel;
		}

		private void _wiFiDetector_OnWifiDisconnected(HelperFunctions.WlanInfos[] newWiFis)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this.UpdateWifiDisplay(null, false);
				ObjectHolder.NotifiyIcon.UpdateWifiDisplay(null, false);
			}, null);
		}

		private void _wiFiDetector_OnWifiConnected(HelperFunctions.WlanInfos[] newWiFis)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				if (newWiFis != null && newWiFis.Length != 0)
				{
					this.UpdateWifiDisplay(newWiFis[0], true);
					ObjectHolder.NotifiyIcon.UpdateWifiDisplay(newWiFis[0], true);
				}
			}, null);
		}

		private void _wiFiDetector_OnSignalStrengthChanged(HelperFunctions.WlanInfos newWiFiInfos)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this.UpdateWifiDisplay(newWiFiInfos, true);
				ObjectHolder.NotifiyIcon.UpdateWifiDisplay(newWiFiInfos, true);
			}, null);
		}

		private void UpdateWifiDisplay(HelperFunctions.WlanInfos newWiFiInfos, bool showDisplay)
		{
			if (this._mWifiTile == null)
			{
				return;
			}
			if (showDisplay)
			{
				if (newWiFiInfos.Security.ToString() == "Secure" || newWiFiInfos.Security.ToString() == "LowSecure")
				{
					this._mWifiTile.set_TileDescription(General.Home_UpdateWifiDisplay_Provide_your_wifi_with_a_military_grade_protection);
				}
				if (newWiFiInfos.Security.ToString() == "NotSecure")
				{
					this._mWifiTile.set_TileDescription(General.Home_UpdateWifiDisplay_);
				}
				this._mWifiTile.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostWifi : General.Home_UpdateWifiDisplay_Wifi_Protection);
				this._mWifiTile.Tag = "WifiTile";
				if (ObjectHolder.CurrentUser != null)
				{
					this._mWifiTile.set_TileImageSource(ObjectHolder.CurrentUser.HasUserAccessToFeature(11) ? this._freeImageWifi : this._premiumImageWifi);
					return;
				}
			}
			else
			{
				this._mWifiTile.set_TileDescription(General.Home_UpdateWifiDisplay_Provide_your_network_with_a_military_grade_protection);
				this._mWifiTile.Tag = "NetworkTile";
				if (ObjectHolder.CurrentUser != null)
				{
					this._mWifiTile.set_TileImageSource(ObjectHolder.CurrentUser.HasUserAccessToFeature(17) ? this._freeImageNetwork : this._premiumImageNetwork);
				}
				this._mWifiTile.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostNetwork : CyberGhost.Translations.Home.HeaderProtection);
			}
		}

		private void Tile_Click(object sender, EventArgs e)
		{
			string a = ((TileButton)sender).Tag.ToString();
			if (a == "WifiTile")
			{
				TrackingHelper.SendProfileClickedEvent("wifi", "app");
				Navigation.GoToPage("Profiles/Wifi", null, null);
				return;
			}
			if (a == "AnonDown")
			{
				TrackingHelper.SendProfileClickedEvent("anonymousDownloading", "app");
				Navigation.GoToPage("Profiles/AnonymousDownloading", null, null);
				return;
			}
			if (a == "AnonBrows")
			{
				TrackingHelper.SendProfileClickedEvent("anonymousBrowsing", "app");
				Navigation.GoToPage("Profiles/AnonymousBrowsing", null, null);
				return;
			}
			if (a == "NetworkTile")
			{
				TrackingHelper.SendProfileClickedEvent("network", "app");
				Navigation.GoToPage("Profiles/Network", null, null);
				return;
			}
			if (a == "Unblock")
			{
				TrackingHelper.SendProfileClickedEvent("unblock", "app");
				Navigation.GoToPage("Profiles/Unblock", null, null);
				return;
			}
			if (!(a == "Anti"))
			{
				TrackingHelper.SendProfileClickedEvent("custom", "app");
				Navigation.GoToPage("Profiles/Custom", null, null);
				return;
			}
			TrackingHelper.SendProfileClickedEvent("antiCensor", "app");
			Navigation.GoToPage("Profiles/Uncensoring", null, null);
		}

		private void Update_Click(object sender, RoutedEventArgs e)
		{
			ObjectHolder.MainForm.StartForegroundUpdate();
		}

		private void Connected_Info_OnMouseUp(object sender, MouseButtonEventArgs e)
		{
			Navigation.NavigateToConnectedScreen();
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.UpdateConnectedPanel();
		}

		public void OnBeforeDisconnect()
		{
			this.UpdateConnectedPanel();
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this.UpdateConnectedPanel();
		}

		public void OnAfterDisconnected()
		{
			this.UpdateConnectedPanel();
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
			this.UpdateConnectedPanel();
		}

		public Task UpdateMotd()
		{
			return HelperFunctions.GrabExceptionsAndReturnTask(Task.Run(delegate
			{
				Home.<<UpdateMotd>b__84_0>d <<UpdateMotd>b__84_0>d;
				<<UpdateMotd>b__84_0>d.<>4__this = this;
				<<UpdateMotd>b__84_0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
				<<UpdateMotd>b__84_0>d.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <<UpdateMotd>b__84_0>d.<>t__builder;
				<>t__builder.Start<Home.<<UpdateMotd>b__84_0>d>(ref <<UpdateMotd>b__84_0>d);
				return <<UpdateMotd>b__84_0>d.<>t__builder.Task;
			}));
		}

		private void Motd_text_OnMouseDown(object sender, MouseButtonEventArgs e)
		{
			CgApiMotd expr_05 = Home._CurrentMotd;
			if (!string.IsNullOrEmpty((expr_05 != null) ? expr_05.get_Url() : null))
			{
				HelperFunctions.OpenFileInBrowser(Home._CurrentMotd.get_Url(), false);
			}
		}

		private void ManageDevicesButton_Click(object sender, RoutedEventArgs e)
		{
			Navigation.GoToPage("ManageDevices", null, null);
		}

		private async void UpgradeNowButton_Click(object sender, RoutedEventArgs e)
		{
			await Navigation.GoInAppPurchase("header_upgrade_button", null);
			ObjectHolder.MainForm.ShowMe();
			ObjectHolder.MainForm.Focus();
		}

		private void UpdateManageDevicesButton()
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				if (ObjectHolder.CurrentUser == null)
				{
					return;
				}
				bool flag = ObjectHolder.CurrentUser.IsFreeUser();
				bool flag2 = ObjectHolder.CurrentUser.HasUserExpiredSubscription();
				if (ObjectHolder.CurrentUser.get_AutoCreated())
				{
					if (flag)
					{
						this.UpgradeRenewButtonVisible = true;
						this.UpgradeRenewText.Text = CyberGhost.Translations.Home.ManageDevices_UpgradeNow_Text;
						this.HeaderText1 = CyberGhost.Translations.Home.ManageDevices_UpgradeNow_HeaderText1;
						this.HeaderText2 = CyberGhost.Translations.Home.ManageDevices_UpgradeNow_HeaderText2;
						return;
					}
					this.ManageButtonVisible = true;
					this.HeaderText1 = CyberGhost.Translations.Home.ManageDevices_Premium_HeaderText1;
					this.HeaderText2 = CyberGhost.Translations.Home.ManageDevices_Premium_HeaderText2;
					return;
				}
				else
				{
					if (!flag)
					{
						this.ManageButtonVisible = true;
						this.HeaderText1 = CyberGhost.Translations.Home.ManageDevices_Premium_HeaderText1;
						this.HeaderText2 = CyberGhost.Translations.Home.ManageDevices_Premium_HeaderText2;
						return;
					}
					if (flag2)
					{
						this.UpgradeRenewButtonVisible = true;
						this.UpgradeRenewText.Text = CyberGhost.Translations.Home.ManageDevices_RenewNow_Text;
						this.UpgradeRenewTextLine2.Text = CyberGhost.Translations.Home.ManageDevices_Renew_SubText;
						this.HeaderText1 = CyberGhost.Translations.Home.ManageDevices_Renewal_HeaderText1;
						this.HeaderText2 = CyberGhost.Translations.Home.ManageDevices_Renewal_HeaderText2;
						return;
					}
					this.UpgradeRenewButtonVisible = true;
					this.UpgradeRenewText.Text = CyberGhost.Translations.Home.ManageDevices_UpgradeNow_Text;
					this.UpgradeRenewTextLine2.Text = CyberGhost.Translations.Home.ManageDevices_Upgrade_SubText;
					this.HeaderText1 = CyberGhost.Translations.Home.ManageDevices_UpgradeNow_HeaderText1;
					this.HeaderText2 = CyberGhost.Translations.Home.ManageDevices_UpgradeNow_HeaderText2;
					return;
				}
			}, null);
		}

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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/home.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.HomeGrid = (Grid)target;
				return;
			case 2:
				this.connected_Info = (WrapPanel)target;
				this.connected_Info.MouseUp += new MouseButtonEventHandler(this.Connected_Info_OnMouseUp);
				return;
			case 3:
				this.connected_Profile = (TextBlock)target;
				return;
			case 4:
				this.connected_CountryImage = (Image)target;
				return;
			case 5:
				this.connected_ServerName = (TextBlock)target;
				return;
			case 6:
				this.GridHeadLine = (Grid)target;
				return;
			case 7:
				this.HeaderTextGrid = (Grid)target;
				return;
			case 8:
				this.Text1 = (TextBlock)target;
				return;
			case 9:
				this.Text2 = (TextBlock)target;
				return;
			case 10:
				this.ManageDevicesButton = (System.Windows.Controls.Button)target;
				this.ManageDevicesButton.Click += new RoutedEventHandler(this.ManageDevicesButton_Click);
				return;
			case 11:
				this.UpgradeRenewNowButton = (System.Windows.Controls.Button)target;
				this.UpgradeRenewNowButton.Click += new RoutedEventHandler(this.UpgradeNowButton_Click);
				return;
			case 12:
				this.UpgradeNowTextGrid = (Grid)target;
				return;
			case 13:
				this.UpgradeRenewText = (TextBlock)target;
				return;
			case 14:
				this.UpgradeRenewTextLine2 = (TextBlock)target;
				return;
			case 15:
				this.TileLayoutCtrl = (TileContainer)target;
				return;
			case 16:
				this.motd = (WrapPanel)target;
				return;
			case 17:
				this.motd_text = (TextBlock)target;
				this.motd_text.MouseDown += new MouseButtonEventHandler(this.Motd_text_OnMouseDown);
				return;
			case 18:
				this.UpdatePanel = (DockPanel)target;
				return;
			case 19:
				this.UpdateLabel = (System.Windows.Controls.Label)target;
				return;
			case 20:
				this.UpdateButton = (System.Windows.Controls.Button)target;
				this.UpdateButton.Click += new RoutedEventHandler(this.Update_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
