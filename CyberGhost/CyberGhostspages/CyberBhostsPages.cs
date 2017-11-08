using CyberGhost.Annotations;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages
{
	public class ConversionPopUp : UserControl, IComponentConnector, INotifyPropertyChanged
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <UpgradeButton_Click>d__15 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public ConversionPopUp <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				ConversionPopUp conversionPopUp = this.<>4__this;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						ObjectHolder.MainForm.ContentBlockerVisibility = Visibility.Collapsed;
						conversionPopUp.CloseConversionPopUp();
						string text = string.Format("PopupUpgradeClicked_{0}", conversionPopUp.CurrentFeature);
						if (ObjectHolder.CurrentProfile != null)
						{
							text += string.Format("_{0}", ObjectHolder.CurrentProfile.GetBaseName());
						}
						taskAwaiter = Navigation.GoInAppPurchase(text, null).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, ConversionPopUp.<UpgradeButton_Click>d__15>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		private string _conversionTitle = "Title here";

		private string _conversionInfo = "Info here";

		internal Grid ContentGrid;

		internal TextBlock TitleText;

		internal Image ImageText;

		internal TextBlock InfoText;

		internal Grid ButtonGrid;

		internal Button UpgradeButton;

		internal Button CancelButton;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public string ConversionTitle
		{
			get
			{
				return this._conversionTitle;
			}
			set
			{
				if (this._conversionTitle == value)
				{
					return;
				}
				this._conversionTitle = value;
				this.OnPropertyChanged("ConversionTitle");
			}
		}

		public string ConversionInfo
		{
			get
			{
				return this._conversionInfo;
			}
			set
			{
				if (this._conversionInfo == value)
				{
					return;
				}
				this._conversionInfo = value;
				this.OnPropertyChanged("ConversionInfo");
			}
		}

		public Frame ContentFrame
		{
			get;
			set;
		}

		private CgApiFeature.Feature CurrentFeature
		{
			[CompilerGenerated]
			get
			{
				return this.<CurrentFeature>k__BackingField;
			}
		}

		public ConversionPopUp(CgApiFeature.Feature feature)
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.<CurrentFeature>k__BackingField = feature;
			this.InitializePopUp();
		}

		private void InitializePopUp()
		{
			ObjectHolder.MainForm.ContentBlockerVisibility = Visibility.Visible;
			string text = string.Format("PopupFeatureNotInPlan_{0}", this.CurrentFeature);
			if (ObjectHolder.CurrentProfile != null)
			{
				text += string.Format("_{0}", ObjectHolder.CurrentProfile.GetBaseName());
			}
			ConversionWindowEvent conversionWindowEvent = new ConversionWindowEvent
			{
				ConversionPoint = text
			};
			conversionWindowEvent.FireEvent();
			HelperFunctions.DebugLine(string.Format("==> ConversionWindowEvent = {0}", conversionWindowEvent.ConversionPoint));
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.ImageText.Source = new BitmapImage(new Uri(Theming.GetThemedImage("ConversionImages\\surfen-4.png")));
		}

		private void CancelButton_OnClick(object sender, RoutedEventArgs e)
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<CancelButton_OnClick>b__13_0), null);
		}

		private void CloseConversionPopUp()
		{
			ConversionPopUpHelpers.CloseConverionPopUp();
		}

		[AsyncStateMachine(typeof(ConversionPopUp.<UpgradeButton_Click>d__15))]
		private void UpgradeButton_Click(object sender, RoutedEventArgs e)
		{
			ConversionPopUp.<UpgradeButton_Click>d__15 <UpgradeButton_Click>d__;
			<UpgradeButton_Click>d__.<>4__this = this;
			<UpgradeButton_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpgradeButton_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpgradeButton_Click>d__.<>t__builder;
			<>t__builder.Start<ConversionPopUp.<UpgradeButton_Click>d__15>(ref <UpgradeButton_Click>d__);
		}

		[NotifyPropertyChangedInvocator]
		protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			try
			{
				PropertyChangedEventHandler expr_06 = this.PropertyChanged;
				if (expr_06 != null)
				{
					expr_06(this, new PropertyChangedEventArgs(propertyName));
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/conversionpopup.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ContentGrid = (Grid)target;
				return;
			case 2:
				this.TitleText = (TextBlock)target;
				return;
			case 3:
				this.ImageText = (Image)target;
				return;
			case 4:
				this.InfoText = (TextBlock)target;
				return;
			case 5:
				this.ButtonGrid = (Grid)target;
				return;
			case 6:
				this.UpgradeButton = (Button)target;
				this.UpgradeButton.Click += new RoutedEventHandler(this.UpgradeButton_Click);
				return;
			case 7:
				this.CancelButton = (Button)target;
				this.CancelButton.Click += new RoutedEventHandler(this.CancelButton_OnClick);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <CancelButton_OnClick>b__13_0(object o)
		{
			this.CloseConversionPopUp();
		}
	}
}

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
using System.Runtime.InteropServices;
using System.Threading;
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

		[CompilerGenerated]
		private sealed class <>c__DisplayClass72_0
		{
			public HelperFunctions.WlanInfos[] newWiFis;

			public Home <>4__this;

			internal void <_wiFiDetector_OnWifiConnected>b__0(object o)
			{
				if (this.newWiFis != null && this.newWiFis.Length != 0)
				{
					this.<>4__this.UpdateWifiDisplay(this.newWiFis[0], true);
					ObjectHolder.NotifiyIcon.UpdateWifiDisplay(this.newWiFis[0], true);
				}
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass73_0
		{
			public HelperFunctions.WlanInfos newWiFiInfos;

			public Home <>4__this;

			internal void <_wiFiDetector_OnSignalStrengthChanged>b__0(object o)
			{
				this.<>4__this.UpdateWifiDisplay(this.newWiFiInfos, true);
				ObjectHolder.NotifiyIcon.UpdateWifiDisplay(this.newWiFiInfos, true);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <UpgradeNowButton_Click>d__103 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = Navigation.GoInAppPurchase("header_upgrade_button", null).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Home.<UpgradeNowButton_Click>d__103>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					ObjectHolder.MainForm.ShowMe();
					ObjectHolder.MainForm.Focus();
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <<UpdateMotd>b__84_0>d : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			private CgApiMotd <fMotd>5__1;

			public Home <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Home @object = this.<>4__this;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						this.<fMotd>5__1 = new CgApiMotd();
						taskAwaiter = this.<fMotd>5__1.Fetch().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Home.<<UpdateMotd>b__84_0>d>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					bool arg_84_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					if (arg_84_0)
					{
						Home._CurrentMotd = this.<fMotd>5__1;
					}
					else
					{
						Home._CurrentMotd = null;
					}
					ObjectHolder.MainContext.Post(new SendOrPostCallback(@object.<UpdateMotd>b__84_1), null);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		public static Home _Home;

		public static CgApiMotd _CurrentMotd;

		private TileButton _mWifiTile;

		private readonly System.Windows.Forms.Timer _mGoBackToConnectedScreenTimer;

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
			this._mGoBackToConnectedScreenTimer = new System.Windows.Forms.Timer
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
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<_wiFiDetector_OnWifiDisconnected>b__71_0), null);
		}

		private void _wiFiDetector_OnWifiConnected(HelperFunctions.WlanInfos[] newWiFis)
		{
			Home.<>c__DisplayClass72_0 <>c__DisplayClass72_ = new Home.<>c__DisplayClass72_0();
			<>c__DisplayClass72_.<>4__this = this;
			<>c__DisplayClass72_.newWiFis = newWiFis;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass72_.<_wiFiDetector_OnWifiConnected>b__0), null);
		}

		private void _wiFiDetector_OnSignalStrengthChanged(HelperFunctions.WlanInfos newWiFiInfos)
		{
			Home.<>c__DisplayClass73_0 <>c__DisplayClass73_ = new Home.<>c__DisplayClass73_0();
			<>c__DisplayClass73_.<>4__this = this;
			<>c__DisplayClass73_.newWiFiInfos = newWiFiInfos;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass73_.<_wiFiDetector_OnSignalStrengthChanged>b__0), null);
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
			return HelperFunctions.GrabExceptionsAndReturnTask(Task.Run(new Func<Task>(this.<UpdateMotd>b__84_0)));
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

		[AsyncStateMachine(typeof(Home.<UpgradeNowButton_Click>d__103))]
		private void UpgradeNowButton_Click(object sender, RoutedEventArgs e)
		{
			Home.<UpgradeNowButton_Click>d__103 <UpgradeNowButton_Click>d__;
			<UpgradeNowButton_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpgradeNowButton_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpgradeNowButton_Click>d__.<>t__builder;
			<>t__builder.Start<Home.<UpgradeNowButton_Click>d__103>(ref <UpgradeNowButton_Click>d__);
		}

		private void UpdateManageDevicesButton()
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<UpdateManageDevicesButton>b__104_0), null);
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

		[CompilerGenerated]
		private void <_wiFiDetector_OnWifiDisconnected>b__71_0(object o)
		{
			this.UpdateWifiDisplay(null, false);
			ObjectHolder.NotifiyIcon.UpdateWifiDisplay(null, false);
		}

		[AsyncStateMachine(typeof(Home.<<UpdateMotd>b__84_0>d)), CompilerGenerated]
		private Task <UpdateMotd>b__84_0()
		{
			Home.<<UpdateMotd>b__84_0>d <<UpdateMotd>b__84_0>d;
			<<UpdateMotd>b__84_0>d.<>4__this = this;
			<<UpdateMotd>b__84_0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
			<<UpdateMotd>b__84_0>d.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <<UpdateMotd>b__84_0>d.<>t__builder;
			<>t__builder.Start<Home.<<UpdateMotd>b__84_0>d>(ref <<UpdateMotd>b__84_0>d);
			return <<UpdateMotd>b__84_0>d.<>t__builder.Task;
		}

		[CompilerGenerated]
		private void <UpdateMotd>b__84_1(object o)
		{
			CgApiMotd expr_05 = Home._CurrentMotd;
			if (!string.IsNullOrEmpty((expr_05 != null) ? expr_05.get_Text() : null))
			{
				this.motd.Visibility = Visibility.Visible;
				this.motd_text.Text = Home._CurrentMotd.get_Text();
				return;
			}
			this.motd.Visibility = Visibility.Collapsed;
		}

		[CompilerGenerated]
		private void <UpdateManageDevicesButton>b__104_0(object o)
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
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Net;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages
{
	public class Login : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Login.<>c <>9 = new Login.<>c();

			public static Action <>9__11_0;

			public static Action <>9__12_0;

			internal void <DoLogin>b__11_0()
			{
				Helper.OpenLink("go_account", false);
			}

			internal void <PwForgot_Click>b__12_0()
			{
				Helper.OpenLink((Theming.CurrentTheme == Theming.Theme.Pro) ? "go_forgot_password_pro" : "go_forgot_password", false);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <DoLogin>d__11 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			public Login <>4__this;

			private TaskAwaiter<LoginResultObject> <>u__1;

			private TaskAwaiter<bool> <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Login login = this.<>4__this;
				try
				{
					TaskAwaiter<LoginResultObject> taskAwaiter;
					TaskAwaiter<bool> taskAwaiter2;
					switch (num)
					{
					case 0:
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<LoginResultObject>);
						this.<>1__state = -1;
						break;
					case 1:
						taskAwaiter2 = this.<>u__2;
						this.<>u__2 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
						goto IL_2AE;
					case 2:
						taskAwaiter2 = this.<>u__2;
						this.<>u__2 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
						goto IL_316;
					default:
						login.LoadingRing.Visibility = Visibility.Visible;
						login.GhostyImage.Visibility = Visibility.Hidden;
						taskAwaiter = Helper.Login(login.EdtUserName.Text, login.EdtPassword.Password, false).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<LoginResultObject>, Login.<DoLogin>d__11>(ref taskAwaiter, ref this);
							return;
						}
						break;
					}
					LoginResultObject arg_B1_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<LoginResultObject>);
					HttpStatusCode loginStatusCode = arg_B1_0.LoginStatusCode;
					if (loginStatusCode != HttpStatusCode.OK)
					{
						switch (loginStatusCode)
						{
						case HttpStatusCode.Unauthorized:
						case HttpStatusCode.PaymentRequired:
						case HttpStatusCode.Forbidden:
							if (ModernDialogExtension.ShowDialogOk(General.Maximum_devices_reached, General.You_have_reached_the_maximum_of_allowed_devices) == MessageBoxResult.OK)
							{
								Action arg_127_0;
								if ((arg_127_0 = Login.<>c.<>9__11_0) == null)
								{
									arg_127_0 = (Login.<>c.<>9__11_0 = new Action(Login.<>c.<>9.<DoLogin>b__11_0));
								}
								Task.Run(arg_127_0);
								login.LoadingRing.Visibility = Visibility.Hidden;
								login.GhostyImage.Visibility = Visibility.Visible;
								goto IL_347;
							}
							goto IL_347;
						case HttpStatusCode.NotFound:
							ModernDialogExtension.ShowDialogOk(General.Login_DoLogin_Wrong_Login_, General.Login_DoLogin_);
							login.LoadingRing.Visibility = Visibility.Hidden;
							login.GhostyImage.Visibility = Visibility.Visible;
							login.EdtPassword.Focus();
							login.EdtPassword.SelectAll();
							goto IL_347;
						case HttpStatusCode.MethodNotAllowed:
						case HttpStatusCode.NotAcceptable:
						case HttpStatusCode.ProxyAuthenticationRequired:
							goto IL_347;
						case HttpStatusCode.RequestTimeout:
							login.LoadingRing.Visibility = Visibility.Hidden;
							login.GhostyImage.Visibility = Visibility.Visible;
							login.EdtPassword.Focus();
							login.EdtPassword.SelectAll();
							ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
							goto IL_347;
						default:
							goto IL_347;
						}
					}
					else
					{
						login.EdtPassword.Password = string.Empty;
						login.EdtUserName.Text = string.Empty;
						login.LoadingRing.Visibility = Visibility.Hidden;
						login.GhostyImage.Visibility = Visibility.Visible;
						if (ObjectHolder.CurrentUser != null && !GuiHelper.IsProLoginRequired())
						{
							Navigation.GoHome();
							GuiHelper.ResetProfilesToDefault(null);
							goto IL_347;
						}
						if (ObjectHolder.CurrentUser == null)
						{
							goto IL_347;
						}
						if (ModernDialogExtension.ShowDialogOkCancel(General.Login_DoLogin_Premium_subscription_required, General.Login_DoLogin_Premium_subscription_required_explenation, General.renew_now, CyberGhost.Translations.DebugWindow.Cancel) != MessageBoxResult.OK)
						{
							goto IL_2BE;
						}
						taskAwaiter2 = Helper.OpenAuthLink("go_purchase_pro", false, null, true, null).GetAwaiter();
						if (!taskAwaiter2.IsCompleted)
						{
							this.<>1__state = 1;
							this.<>u__2 = taskAwaiter2;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Login.<DoLogin>d__11>(ref taskAwaiter2, ref this);
							return;
						}
					}
					IL_2AE:
					taskAwaiter2.GetResult();
					taskAwaiter2 = default(TaskAwaiter<bool>);
					IL_2BE:
					taskAwaiter2 = ObjectHolder.CurrentUser.Logout().GetAwaiter();
					if (!taskAwaiter2.IsCompleted)
					{
						this.<>1__state = 2;
						this.<>u__2 = taskAwaiter2;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Login.<DoLogin>d__11>(ref taskAwaiter2, ref this);
						return;
					}
					IL_316:
					taskAwaiter2.GetResult();
					taskAwaiter2 = default(TaskAwaiter<bool>);
					ObjectHolder.CurrentUser = null;
					SettingsHolder.get_Settings().set_ENC_AuthToken(string.Empty);
					login.EdtUserName.Focus();
					IL_347:;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <Purchase_Click>d__17 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = Helper.OpenLink("go_purchase_pro", false).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Login.<Purchase_Click>d__17>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		internal Image GhostyImage;

		internal ModernProgressRing LoadingRing;

		internal WrapPanel LoginRequired;

		internal TextBox EdtUserName;

		internal Label UsernameLabel;

		internal PasswordBox EdtPassword;

		internal Label PasswordLabel;

		internal Button CmdOkLogin;

		internal Button CmdCancelLogin;

		internal Button ResetSettings;

		internal Button Purchase;

		private bool _contentLoaded;

		public ICommand LoginCommand
		{
			get;
			set;
		}

		public Login()
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.LoginCommand = new AsyncDelegateCommand(new Func<Task>(this.DoLogin), new Func<bool>(this.CanLogin));
			Theming.ThemeChanged += new Theming.NotifyEvent(this.Init);
			this.Init();
		}

		public void Init()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\friends.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsHeadLinkVisible(true);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			if (GuiHelper.IsProLoginRequired())
			{
				ObjectHolder.MainForm.set_IsNavigationVisible(false);
				ObjectHolder.MainForm.set_IsHeadLinkVisible(false);
				this.CmdCancelLogin.Visibility = Visibility.Collapsed;
				this.LoginRequired.Visibility = Visibility.Visible;
				this.Purchase.Visibility = Visibility.Visible;
			}
			else
			{
				ObjectHolder.MainForm.set_IsNavigationVisible(true);
				ObjectHolder.MainForm.set_IsHeadLinkVisible(true);
				this.CmdCancelLogin.Visibility = Visibility.Visible;
				this.LoginRequired.Visibility = Visibility.Collapsed;
				this.Purchase.Visibility = Visibility.Collapsed;
			}
			this.EdtPassword.Clear();
			this.EdtUserName.Text = string.Empty;
			this.LoadingRing.Visibility = Visibility.Hidden;
			this.GhostyImage.Visibility = Visibility.Visible;
			HelperFunctions.DelayExecution(TimeSpan.FromMilliseconds(500.0), new Action(this.<OnNavigatedTo>b__8_0));
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			this.EdtPassword.Clear();
			this.EdtUserName.Text = string.Empty;
		}

		public bool CanLogin()
		{
			return !string.IsNullOrWhiteSpace(this.EdtPassword.Password) && !string.IsNullOrWhiteSpace(this.EdtUserName.Text);
		}

		[AsyncStateMachine(typeof(Login.<DoLogin>d__11))]
		public Task DoLogin()
		{
			Login.<DoLogin>d__11 <DoLogin>d__;
			<DoLogin>d__.<>4__this = this;
			<DoLogin>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<DoLogin>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <DoLogin>d__.<>t__builder;
			<>t__builder.Start<Login.<DoLogin>d__11>(ref <DoLogin>d__);
			return <DoLogin>d__.<>t__builder.Task;
		}

		private void PwForgot_Click(object sender, RoutedEventArgs e)
		{
			Action arg_1F_0;
			if ((arg_1F_0 = Login.<>c.<>9__12_0) == null)
			{
				arg_1F_0 = (Login.<>c.<>9__12_0 = new Action(Login.<>c.<>9.<PwForgot_Click>b__12_0));
			}
			Task.Run(arg_1F_0);
		}

		private void EdtPassword_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.PasswordLabel.Visibility = Visibility.Hidden;
		}

		private void EdtPassword_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.EdtPassword.Password.Length == 0)
			{
				this.PasswordLabel.Visibility = Visibility.Visible;
			}
		}

		private void EdtUserName_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.UsernameLabel.Visibility = Visibility.Hidden;
		}

		private void EdtUserName_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.EdtUserName.Text.Length == 0)
			{
				this.UsernameLabel.Visibility = Visibility.Visible;
			}
		}

		[AsyncStateMachine(typeof(Login.<Purchase_Click>d__17))]
		private void Purchase_Click(object sender, RoutedEventArgs e)
		{
			Login.<Purchase_Click>d__17 <Purchase_Click>d__;
			<Purchase_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Purchase_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Purchase_Click>d__.<>t__builder;
			<>t__builder.Start<Login.<Purchase_Click>d__17>(ref <Purchase_Click>d__);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/login.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.GhostyImage = (Image)target;
				return;
			case 2:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			case 3:
				this.LoginRequired = (WrapPanel)target;
				return;
			case 4:
				this.EdtUserName = (TextBox)target;
				this.EdtUserName.GotFocus += new RoutedEventHandler(this.EdtUserName_OnGotFocus);
				this.EdtUserName.LostFocus += new RoutedEventHandler(this.EdtUserName_OnLostFocus);
				return;
			case 5:
				this.UsernameLabel = (Label)target;
				return;
			case 6:
				this.EdtPassword = (PasswordBox)target;
				this.EdtPassword.GotFocus += new RoutedEventHandler(this.EdtPassword_OnGotFocus);
				this.EdtPassword.LostFocus += new RoutedEventHandler(this.EdtPassword_OnLostFocus);
				return;
			case 7:
				this.PasswordLabel = (Label)target;
				return;
			case 8:
				this.CmdOkLogin = (Button)target;
				return;
			case 9:
				this.CmdCancelLogin = (Button)target;
				return;
			case 10:
				this.ResetSettings = (Button)target;
				this.ResetSettings.Click += new RoutedEventHandler(this.PwForgot_Click);
				return;
			case 11:
				this.Purchase = (Button)target;
				this.Purchase.Click += new RoutedEventHandler(this.Purchase_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <OnNavigatedTo>b__8_0()
		{
			this.EdtUserName.Focus();
		}
	}
}

using CyberGhost.Annotations;
using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.MCTile;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;

namespace CyberGhost.Pages
{
	public class ManageDevices : UserControl, IComponentConnector, INotifyPropertyChanged, IContent
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <OsTile_Click>d__31 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public object sender;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						string arg = ((TileButton)this.sender).Tag.ToString();
						taskAwaiter = Helper.OpenAuthLink(string.Format("go_account_add_devices_{0}", arg), false, null, false, null).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, ManageDevices.<OsTile_Click>d__31>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <LogoutTextBlock_MouseLeftButtonDown>d__32 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = ObjectHolder.MainForm.OpenLogin().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, ManageDevices.<LogoutTextBlock_MouseLeftButtonDown>d__32>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		private string _headingText;

		internal Grid ManageDevicesGrid;

		internal Grid GridHeadLine;

		internal TextBlock HeadingTextBlock;

		internal TextBlock LogoutTextBlock;

		internal TileContainer DeviceTileControl;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		private Uri _iosLogoUri
		{
			get;
			set;
		}

		private Uri _macosLogoUri
		{
			get;
			set;
		}

		private Uri _windowsLogoUri
		{
			get;
			set;
		}

		private Uri _androidLogoUri
		{
			get;
			set;
		}

		private Uri _otherLogoUri
		{
			get;
			set;
		}

		public string HeadingText
		{
			get
			{
				return this._headingText;
			}
			set
			{
				if (string.Compare(this._headingText, value, StringComparison.OrdinalIgnoreCase) == 0)
				{
					return;
				}
				this._headingText = value;
				this.OnPropertyChanged("HeadingText");
			}
		}

		public ManageDevices()
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.InitIcons();
		}

		private void InitIcons()
		{
			this._iosLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\ios.png"));
			this._macosLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\macos.png"));
			this._windowsLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\windows.png"));
			this._androidLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\android.png"));
			this._otherLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\custom.png"));
		}

		private void CreateTiles()
		{
			this.DeviceTileControl.TileButtons.Clear();
			if (ObjectHolder.CurrentUser == null)
			{
				return;
			}
			TileButton expr_1D = new TileButton();
			expr_1D.Tag = "ios";
			expr_1D.Content = CyberGhost.Translations.Home.HeadlineManageDevicesIos;
			expr_1D.set_TileDescription(CyberGhost.Translations.Home.ContentManageDevicesIos);
			expr_1D.set_TileImageSource(this._iosLogoUri);
			expr_1D.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_1D.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_1D.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton = expr_1D;
			tileButton.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton);
			TileButton expr_B5 = new TileButton();
			expr_B5.Tag = "macos";
			expr_B5.Content = CyberGhost.Translations.Home.HeadlineManageDeviceMacOs;
			expr_B5.set_TileDescription(CyberGhost.Translations.Home.ContentManageDeviceMacOs);
			expr_B5.set_TileImageSource(this._macosLogoUri);
			expr_B5.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_B5.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_B5.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton2 = expr_B5;
			tileButton2.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton2);
			TileButton expr_14D = new TileButton();
			expr_14D.Tag = "windows";
			expr_14D.Content = CyberGhost.Translations.Home.HeadlineManageDeviceWin;
			expr_14D.set_TileDescription(CyberGhost.Translations.Home.ContentManageDeviceWin);
			expr_14D.set_TileImageSource(this._windowsLogoUri);
			expr_14D.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_14D.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_14D.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton3 = expr_14D;
			tileButton3.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton3);
			TileButton expr_1E5 = new TileButton();
			expr_1E5.Tag = "android";
			expr_1E5.Content = CyberGhost.Translations.Home.HeadlineManageDeviceAndroid;
			expr_1E5.set_TileDescription(CyberGhost.Translations.Home.ContentManageDeviceAndroid);
			expr_1E5.set_TileImageSource(this._androidLogoUri);
			expr_1E5.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_1E5.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_1E5.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton4 = expr_1E5;
			tileButton4.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton4);
			TileButton expr_27D = new TileButton();
			expr_27D.Tag = "custom";
			expr_27D.Content = CyberGhost.Translations.Home.HeadlineManageDeviceLinux;
			expr_27D.set_TileDescription(CyberGhost.Translations.Home.ContentManageDeviceLinux);
			expr_27D.set_TileImageSource(this._otherLogoUri);
			expr_27D.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_27D.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_27D.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton5 = expr_27D;
			tileButton5.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton5);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			int maxDevices = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Plan().get_MaxDevices();
			int activatedDevices = ObjectHolder.CurrentUser.get_ActivatedDevices();
			this.HeadingText = string.Format(CyberGhost.Translations.Home.ManageDevices_Info_Subscription_And_Activated_Devices, maxDevices, activatedDevices);
			if (maxDevices > activatedDevices)
			{
				this.HeadingText += Environment.NewLine;
				this.HeadingText += CyberGhost.Translations.Home.ManageDevices_Query_DeviceTypeActivation;
			}
			this.CreateTiles();
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

		[AsyncStateMachine(typeof(ManageDevices.<OsTile_Click>d__31))]
		private void OsTile_Click(object sender, RoutedEventArgs e)
		{
			ManageDevices.<OsTile_Click>d__31 <OsTile_Click>d__;
			<OsTile_Click>d__.sender = sender;
			<OsTile_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OsTile_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OsTile_Click>d__.<>t__builder;
			<>t__builder.Start<ManageDevices.<OsTile_Click>d__31>(ref <OsTile_Click>d__);
		}

		[AsyncStateMachine(typeof(ManageDevices.<LogoutTextBlock_MouseLeftButtonDown>d__32))]
		private void LogoutTextBlock_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			ManageDevices.<LogoutTextBlock_MouseLeftButtonDown>d__32 <LogoutTextBlock_MouseLeftButtonDown>d__;
			<LogoutTextBlock_MouseLeftButtonDown>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<LogoutTextBlock_MouseLeftButtonDown>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <LogoutTextBlock_MouseLeftButtonDown>d__.<>t__builder;
			<>t__builder.Start<ManageDevices.<LogoutTextBlock_MouseLeftButtonDown>d__32>(ref <LogoutTextBlock_MouseLeftButtonDown>d__);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/managedevices.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ManageDevicesGrid = (Grid)target;
				return;
			case 2:
				this.GridHeadLine = (Grid)target;
				return;
			case 3:
				this.HeadingTextBlock = (TextBlock)target;
				return;
			case 4:
				this.LogoutTextBlock = (TextBlock)target;
				this.LogoutTextBlock.MouseLeftButtonDown += new MouseButtonEventHandler(this.LogoutTextBlock_MouseLeftButtonDown);
				return;
			case 5:
				this.DeviceTileControl = (TileContainer)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using CyberGhost.Components.Mixpanel;
using CyberGhost.Settings;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using Microsoft.CSharp.RuntimeBinder;
using MobileConcepts.Components.JsonExecutor;
using MobileConcepts.Components.MCWebBrowser;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq.Expressions;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Markup;

namespace CyberGhost.Pages
{
	public class PopUp : System.Windows.Controls.UserControl, IComponentConnector, IContent
	{
		public delegate void HidePopUpDelegate(object sender, string reason);

		public delegate void SetCloseableDelegate(object sender, bool canClose);

		public delegate void SetSizeDelegate(object sender, int width, int height);

		public delegate void SetTitleDelegate(object sender, string title);

		public delegate void SetWindowPositionDelegate(object sender, string position);

		public delegate void ShowPopUpDelegate(object sender, int widht, int height, string bannerName);

		[CompilerGenerated]
		private static class <>o__46
		{
			public static CallSite<Func<CallSite, object, object, object>> <>p__0;

			public static CallSite<Func<CallSite, object, bool>> <>p__1;

			public static CallSite<Func<CallSite, object, object>> <>p__2;

			public static CallSite<Func<CallSite, Type, object, object>> <>p__3;

			public static CallSite<Func<CallSite, object, object>> <>p__4;

			public static CallSite<Func<CallSite, object, bool>> <>p__5;

			public static CallSite<Action<CallSite, PopUp, object>> <>p__6;
		}

		private static int _timedInterval;

		private CancellationToken _cancellationToken;

		private System.Timers.Timer _cancelTimer;

		private bool _canClose = true;

		private JsonParser _mJsonParser;

		internal string BannerName;

		internal PopUpZone PopUpZone;

		internal System.Windows.Controls.Label TitleLabel;

		internal System.Windows.Controls.Button CloseButton;

		internal McWebBrowser WebBrowser;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.SetTitleDelegate SetTitle;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.ShowPopUpDelegate ShowPopUp;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.HidePopUpDelegate HidePopUp;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.SetCloseableDelegate SetCloseable;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.SetSizeDelegate SetSize;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.SetWindowPositionDelegate SetPosition;

		public bool ShowCloseIcon
		{
			get
			{
				return this.CloseButton.Visibility == Visibility.Visible;
			}
			set
			{
				if (!value)
				{
					this.CloseButton.Visibility = Visibility.Collapsed;
					this.TitleLabel.Visibility = Visibility.Collapsed;
					return;
				}
				this.CloseButton.Visibility = (this._canClose ? Visibility.Visible : Visibility.Collapsed);
				this.TitleLabel.Visibility = Visibility.Visible;
			}
		}

		public bool ForcePopup
		{
			get;
			set;
		}

		public PopUp()
		{
			this.InitializeComponent();
			this.ShowCloseIcon = false;
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		public void InitializePopUp(PopUpZone zone, CancellationToken cancellationToken)
		{
			this.WebBrowser.add_OnProcessCommand(new ProcessCommandEvent(this.Browser_OnProcessCommand));
			this.WebBrowser.DocumentCompleted += new WebBrowserDocumentCompletedEventHandler(this.WebBrowser_DocumentCompleted);
			this.WebBrowser.ScriptErrorsSuppressed = true;
			this.PopUpZone = zone;
			this._cancellationToken = cancellationToken;
			this._mJsonParser = new JsonParser(new PopUpExecutor(this));
			this._cancellationToken.Register(new Action(this.<InitializePopUp>b__43_0), true);
			string text = string.Format("{0}", MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, null));
			text += string.Format("&{0}", SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString());
			if (SettingsHolder.get_Settings().get_InstallationDate().HasValue)
			{
				text += string.Format("&InstallationDate={0}", SettingsHolder.get_Settings().get_InstallationDate().Value.ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ"));
			}
			if (zone == PopUpZone.Timed)
			{
				PopUp._timedInterval++;
				text += string.Format("&Interval={0}", PopUp._timedInterval);
			}
			if (!string.IsNullOrEmpty(ObjectHolder.ConnectionSource))
			{
				text += string.Format("&Connection%20source={0}", ObjectHolder.ConnectionSource);
			}
			if (!string.IsNullOrEmpty(ObjectHolder.ResumePurchaseUrl))
			{
				text += "&ResumeablePurchase=true";
			}
			string arg = Convert.ToBase64String(Encoding.UTF8.GetBytes(text));
			string urlString = string.Format("https://cg6-content.cyberghostvpn.com/html/popup.html?zoneid={0}&params={1}", this.GetZoneId(zone), arg);
			this.WebBrowser.Navigate(urlString);
			try
			{
				this._cancelTimer = new System.Timers.Timer
				{
					Interval = 10000.0
				};
				this._cancelTimer.Elapsed += new ElapsedEventHandler(this._cancelTimer_Tick);
				this._cancelTimer.Enabled = true;
			}
			catch
			{
			}
		}

		private void _cancelTimer_Tick(object sender, EventArgs e)
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<_cancelTimer_Tick>b__44_0), null);
		}

		private int GetZoneId(PopUpZone zone)
		{
			string text = string.IsNullOrEmpty(SettingsHolder.get_Settings().get_LoginServer()) ? "rest.cyberghostvpn.com" : SettingsHolder.get_Settings().get_LoginServer();
			if (text.Contains("dev-api"))
			{
				switch (zone)
				{
				case PopUpZone.StartUp:
					return 298;
				case PopUpZone.Disconnected:
					return 300;
				case PopUpZone.Connected:
					return 299;
				case PopUpZone.Connecting:
					return 301;
				case PopUpZone.Timed:
					return 310;
				case PopUpZone.ForcedDisconnect:
					return 313;
				default:
					throw new ArgumentOutOfRangeException("zone", zone, null);
				}
			}
			else if (text.Contains("beta-api"))
			{
				switch (zone)
				{
				case PopUpZone.StartUp:
					return 305;
				case PopUpZone.Disconnected:
					return 303;
				case PopUpZone.Connected:
					return 302;
				case PopUpZone.Connecting:
					return 304;
				case PopUpZone.Timed:
					return 311;
				case PopUpZone.ForcedDisconnect:
					return 314;
				default:
					throw new ArgumentOutOfRangeException("zone", zone, null);
				}
			}
			else
			{
				switch (zone)
				{
				case PopUpZone.StartUp:
					return 309;
				case PopUpZone.Disconnected:
					return 307;
				case PopUpZone.Connected:
					return 306;
				case PopUpZone.Connecting:
					return 308;
				case PopUpZone.Timed:
					return 312;
				case PopUpZone.ForcedDisconnect:
					return 315;
				default:
					throw new ArgumentOutOfRangeException("zone", zone, null);
				}
			}
		}

		private void WebBrowser_DocumentCompleted(object sender, WebBrowserDocumentCompletedEventArgs e)
		{
			this._cancelTimer.Enabled = false;
			object document = this.WebBrowser.Document;
			try
			{
				if (PopUp.<>o__46.<>p__1 == null)
				{
					PopUp.<>o__46.<>p__1 = CallSite<Func<CallSite, object, bool>>.Create(Binder.UnaryOperation(CSharpBinderFlags.None, ExpressionType.IsTrue, typeof(PopUp), new CSharpArgumentInfo[]
					{
						CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
					}));
				}
				Func<CallSite, object, bool> arg_AD_0 = PopUp.<>o__46.<>p__1.Target;
				CallSite arg_AD_1 = PopUp.<>o__46.<>p__1;
				if (PopUp.<>o__46.<>p__0 == null)
				{
					PopUp.<>o__46.<>p__0 = CallSite<Func<CallSite, object, object, object>>.Create(Binder.BinaryOperation(CSharpBinderFlags.None, ExpressionType.NotEqual, typeof(PopUp), new CSharpArgumentInfo[]
					{
						CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
						CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.Constant, null)
					}));
				}
				if (arg_AD_0(arg_AD_1, PopUp.<>o__46.<>p__0.Target(PopUp.<>o__46.<>p__0, document, null)))
				{
					if (PopUp.<>o__46.<>p__2 == null)
					{
						PopUp.<>o__46.<>p__2 = CallSite<Func<CallSite, object, object>>.Create(Binder.GetMember(CSharpBinderFlags.None, "Title", typeof(PopUp), new CSharpArgumentInfo[]
						{
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
						}));
					}
					object arg = PopUp.<>o__46.<>p__2.Target(PopUp.<>o__46.<>p__2, document);
					if (PopUp.<>o__46.<>p__5 == null)
					{
						PopUp.<>o__46.<>p__5 = CallSite<Func<CallSite, object, bool>>.Create(Binder.UnaryOperation(CSharpBinderFlags.None, ExpressionType.IsTrue, typeof(PopUp), new CSharpArgumentInfo[]
						{
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
						}));
					}
					Func<CallSite, object, bool> arg_1ED_0 = PopUp.<>o__46.<>p__5.Target;
					CallSite arg_1ED_1 = PopUp.<>o__46.<>p__5;
					if (PopUp.<>o__46.<>p__4 == null)
					{
						PopUp.<>o__46.<>p__4 = CallSite<Func<CallSite, object, object>>.Create(Binder.UnaryOperation(CSharpBinderFlags.None, ExpressionType.Not, typeof(PopUp), new CSharpArgumentInfo[]
						{
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
						}));
					}
					Func<CallSite, object, object> arg_1E8_0 = PopUp.<>o__46.<>p__4.Target;
					CallSite arg_1E8_1 = PopUp.<>o__46.<>p__4;
					if (PopUp.<>o__46.<>p__3 == null)
					{
						PopUp.<>o__46.<>p__3 = CallSite<Func<CallSite, Type, object, object>>.Create(Binder.InvokeMember(CSharpBinderFlags.None, "IsNullOrEmpty", null, typeof(PopUp), new CSharpArgumentInfo[]
						{
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType | CSharpArgumentInfoFlags.IsStaticType, null),
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
						}));
					}
					if (arg_1ED_0(arg_1ED_1, arg_1E8_0(arg_1E8_1, PopUp.<>o__46.<>p__3.Target(PopUp.<>o__46.<>p__3, typeof(string), arg))))
					{
						if (PopUp.<>o__46.<>p__6 == null)
						{
							PopUp.<>o__46.<>p__6 = CallSite<Action<CallSite, PopUp, object>>.Create(Binder.InvokeMember(CSharpBinderFlags.InvokeSimpleName | CSharpBinderFlags.ResultDiscarded, "SetPopUpTitle", null, typeof(PopUp), new CSharpArgumentInfo[]
							{
								CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType, null),
								CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
							}));
						}
						PopUp.<>o__46.<>p__6.Target(PopUp.<>o__46.<>p__6, this, arg);
					}
				}
			}
			catch (Exception)
			{
			}
		}

		public void SetPopUpTitle(string title)
		{
			PopUp.SetTitleDelegate expr_06 = this.SetTitle;
			if (expr_06 != null)
			{
				expr_06(this, title);
			}
			this.TitleLabel.Content = title;
		}

		public void SetCanClose(bool isCloseable)
		{
			PopUp.SetCloseableDelegate expr_06 = this.SetCloseable;
			if (expr_06 != null)
			{
				expr_06(this, isCloseable);
			}
			if (this.TitleLabel.Visibility == Visibility.Visible)
			{
				this.CloseButton.Visibility = (isCloseable ? Visibility.Visible : Visibility.Collapsed);
			}
			this._canClose = isCloseable;
		}

		public void SetWindowSize(int width, int height)
		{
			PopUp.SetSizeDelegate expr_06 = this.SetSize;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, width, height);
		}

		private void Browser_OnProcessCommand(string aCommand)
		{
			this._mJsonParser.ParseAndExecuteJson(aCommand, this.WebBrowser);
		}

		public void DoShow(int width, int height, string bannerName)
		{
			this.BannerName = bannerName;
			PopUp.ShowPopUpDelegate expr_0D = this.ShowPopUp;
			if (expr_0D == null)
			{
				return;
			}
			expr_0D(this, width, height, bannerName);
		}

		public void DoHide(string result)
		{
			PopUp.HidePopUpDelegate expr_06 = this.HidePopUp;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, result);
		}

		private void CloseButton_OnClick(object sender, RoutedEventArgs e)
		{
			PopUp.HidePopUpDelegate expr_06 = this.HidePopUp;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, "CANCEL");
		}

		public void SetWindowPosition(string position)
		{
			PopUp.SetWindowPositionDelegate expr_06 = this.SetPosition;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, position);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/popup.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.TitleLabel = (System.Windows.Controls.Label)target;
				return;
			case 2:
				this.CloseButton = (System.Windows.Controls.Button)target;
				this.CloseButton.Click += new RoutedEventHandler(this.CloseButton_OnClick);
				return;
			case 3:
				this.WebBrowser = (McWebBrowser)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <InitializePopUp>b__43_0()
		{
			this.DoHide("CANCEL");
		}

		[CompilerGenerated]
		private void <_cancelTimer_Tick>b__44_0(object o)
		{
			PopUp.HidePopUpDelegate expr_06 = this.HidePopUp;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, "TIMEOUT");
		}
	}
}

using System;
using System.ComponentModel;

namespace CyberGhost.Pages
{
	public enum PopUpZone
	{
		[Description("POPUP_APPLICATION_LAUNCH")]
		StartUp,
		[Description("POPUP_DISCONNECTED")]
		Disconnected,
		[Description("POPUP_CONNECTED")]
		Connected,
		[Description("POPUP_BEFORE_CONNECT")]
		Connecting,
		[Description("POPUP_TIMED")]
		Timed,
		[Description("POPUP_FORCED_DISCONNECT")]
		ForcedDisconnect
	}
}

using System;

namespace CyberGhost.Pages
{
	public enum ResizeStatus
	{
		Same,
		Increases,
		Descreases
	}
}

using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.Pages.SettingsSubPages;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages
{
	public class Settings : UserControl, IComponentConnector, IContent
	{
		public delegate void SettingsChangedEventHandler(object sender, SettingsChangedEventHandlerArgs args);

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Settings.<>c <>9 = new Settings.<>c();

			public static SendOrPostCallback <>9__3_0;

			internal void <OnNavigatedTo>b__3_0(object state)
			{
				ObjectHolder.SettingsDefaultName = "default";
				BaseMixpanelObject.FireEvent<SettingsOpenedEvent>();
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
			}
		}

		internal ModernTab SettingsTab;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public static event Settings.SettingsChangedEventHandler SettingsChanged;

		public Settings()
		{
			base.DataContext = SettingsHolder.get_Settings();
			try
			{
				this.InitializeComponent();
			}
			catch (System.Exception)
			{
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			Uri selectedSource = new Uri("/Pages/SettingsSubPages/Support.xaml", UriKind.Relative);
			this.SettingsTab.set_SelectedSource(selectedSource);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			Uri selectedSource = new Uri("/Pages/SettingsSubPages/General.xaml", UriKind.Relative);
			if (e.get_Source().ToString().Contains("#account"))
			{
				selectedSource = new Uri("/Pages/SettingsSubPages/Account.xaml", UriKind.Relative);
			}
			this.SettingsTab.set_SelectedSource(selectedSource);
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			SynchronizationContext arg_6B_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_6B_1;
			if ((arg_6B_1 = Settings.<>c.<>9__3_0) == null)
			{
				arg_6B_1 = (Settings.<>c.<>9__3_0 = new SendOrPostCallback(Settings.<>c.<>9.<OnNavigatedTo>b__3_0));
			}
			arg_6B_0.Post(arg_6B_1, null);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void Settings_Default(object sender, RoutedEventArgs e)
		{
			if (ModernDialogExtension.ShowDialogYesNo(CyberGhost.Translations.Settings.Settings_Settings_Default_ResetSettings, CyberGhost.Translations.Settings.Settings_ResetAsk) == MessageBoxResult.Yes)
			{
				SettingsHolder.get_Settings().ResetSettings();
				SettingsHolder.get_Settings().set_AutoStart(true);
				SettingsHolder.get_Settings().get_KnownSsids().Clear();
				GuiHelper.ResetProfilesToDefault(null);
				AppProtection.DisableAppProtection();
				SettingsChangedEventHandlerArgs eventArgs = new SettingsChangedEventHandlerArgs
				{
					SettingsHolder = SettingsHolder.get_Settings()
				};
				this.FireSettingsChangedEvent(eventArgs);
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
			}
		}

		private void FireSettingsChangedEvent(SettingsChangedEventHandlerArgs eventArgs)
		{
			Settings.SettingsChangedEventHandler expr_05 = Settings.SettingsChanged;
			if (expr_05 == null)
			{
				return;
			}
			expr_05(this, eventArgs);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settings.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.SettingsTab = (ModernTab)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			((Button)target).Click += new RoutedEventHandler(this.Settings_Default);
		}
	}
}

using CyberGhost.Settings;
using System;

namespace CyberGhost.Pages
{
	public class SettingsChangedEventHandlerArgs : EventArgs
	{
		public SettingsHolder SettingsHolder
		{
			get;
			set;
		}
	}
}
