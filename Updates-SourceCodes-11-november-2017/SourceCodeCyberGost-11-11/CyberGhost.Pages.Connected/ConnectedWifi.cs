using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.Network;
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
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using WpfAnimatedGif;

namespace CyberGhost.Pages.Connected
{
	public class ConnectedWifi : UserControl, IComponentConnector, IDisposable, IConnectionStates, ITrafficDataChanged, IContent
	{
		private readonly WiFiDetector _wiFiDetector = ObjectHolder.WifiDetector;

		private bool _isbeforeConnectForWifiState = true;

		internal ConnectedSlider ConnectedSlider;

		internal Image Surfing;

		internal Image SurfingAnimated;

		internal Label StatusMessage;

		internal TextBlock CancelConnection;

		internal FeatureDisplay FeatureDisplay;

		internal ModernProgressRing LoadingBar;

		internal Button ConnectBtn;

		private bool _contentLoaded;

		private string IconPathString
		{
			[CompilerGenerated]
			get
			{
				return this.<IconPathString>k__BackingField;
			}
		}

		private bool VisitCounterIncremented
		{
			get;
			set;
		}

		public ConnectedWifi()
		{
			this.InitializeComponent();
			BitmapImage bitmapImage = new BitmapImage();
			bitmapImage.BeginInit();
			bitmapImage.UriSource = new Uri(Theming.GetThemedImage("Background\\stats-wifi-ghostie.gif"));
			bitmapImage.EndInit();
			ImageBehavior.SetAnimatedSource(this.SurfingAnimated, bitmapImage);
			this._wiFiDetector.add_OnNewWiFiDetected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnNewWiFiDetected));
			this._wiFiDetector.add_OnSignalStrengthChanged(new WiFiDetector.SignalStrengthChanged(this._wiFiDetector_OnSignalStrengthChanged));
			this._wiFiDetector.add_OnWifiDisconnected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnWifiDisconnected));
			this._wiFiDetector.set_Enabled(true);
			this.<IconPathString>k__BackingField = Theming.GetThemedImage("Icons\\ProfileTabs\\ico-wifi-color.png");
			try
			{
				this.Surfing.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\stats-surfen-ghostie.png")));
			}
			catch (FileNotFoundException ex)
			{
				DebugLogHelper.Instance.Info(string.Format("{0}.{1} {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
			catch (ArgumentNullException ex2)
			{
				DebugLogHelper.Instance.Info(string.Format("{0}.{1} {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex2.Message));
			}
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this._isbeforeConnectForWifiState = true;
			this.CancelConnection.Visibility = Visibility.Visible;
			this.StatusMessage.Content = Status._CONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			this.Surfing.Visibility = Visibility.Visible;
			this.SurfingAnimated.Visibility = Visibility.Hidden;
			if (ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				return;
			}
			this.FeatureDisplay.OnBeforeConnect(isReconnect, isAppProtection);
			this.ConnectedSlider.OnBeforeConnect(isReconnect, isAppProtection);
			ObjectHolder.FirstTimeVisitedConnectedScreen = true;
		}

		public void OnBeforeDisconnect()
		{
			this.FeatureDisplay.OnBeforeDisconnect();
			this.ConnectedSlider.OnBeforeDisconnect();
			this._isbeforeConnectForWifiState = true;
			ObjectHolder.CurrentConnectionTime = null;
			this.VisitCounterIncremented = false;
			this.StatusMessage.Content = Status._DISCONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.Surfing.Visibility = Visibility.Visible;
			this.SurfingAnimated.Visibility = Visibility.Hidden;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this._isbeforeConnectForWifiState = false;
			this.FeatureDisplay.OnAfterConnected(isReconnect, isAppProtection);
			this.ConnectedSlider.OnAfterConnected(isReconnect, isAppProtection);
			if (!this.VisitCounterIncremented)
			{
				GuiHelper.SetLastUsedProfile(ObjectHolder.CurrentProfile.GetBaseName());
				this.VisitCounterIncremented = true;
			}
			this.CancelConnection.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Profiles._YOUR_WIFI___ + SettingsHolder.get_Settings().get_ProfileWifi().CurrentSSID + " " + Profiles.IS_CURRENTLY_PROTECTED;
			this.LoadingBar.Visibility = Visibility.Hidden;
			this.Surfing.Visibility = Visibility.Hidden;
			this.SurfingAnimated.Visibility = Visibility.Visible;
			this.ConnectBtn.Visibility = Visibility.Visible;
			ObjectHolder.FirstTimeVisitedConnectedScreen = false;
		}

		public void OnAfterDisconnected()
		{
			this.FeatureDisplay.OnAfterDisconnected();
			this.ConnectedSlider.OnAfterDisconnected();
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
			if (connectionStatus != null && connectionStatus != 20)
			{
				this.CancelConnection.Visibility = Visibility.Visible;
			}
			if (connectionStatus != null)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(delegate
				{
					this.ConnectBtn.Visibility = Visibility.Hidden;
					this.LoadingBar.Visibility = Visibility.Visible;
					if (connectionStatus == 10000)
					{
						this.StatusMessage.Content = Status._CONNECTING;
						return;
					}
					if (connectionStatus == 20)
					{
						this.StatusMessage.Content = Status._DISCONNECTING;
					}
				}));
				return;
			}
			if (!ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.Send, new Action(delegate
				{
					this.OnAfterConnected(false, false);
				}));
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.ConnectedSlider.OnNavigatedTo();
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileWifi();
			ObjectHolder.CurrentConnectingScreen = this;
			this.FeatureDisplay.SetFeatureVisibility(SettingsHolder.get_Settings().get_ProfileWifi());
			GuiHelper.StopInactivityCheck();
			ConnectionStatus connectionStatus = ObjectHolder.ConnectionStatus;
			if (connectionStatus != null)
			{
				if (connectionStatus == 10)
				{
					this.OnBeforeConnect(false, false);
				}
			}
			else
			{
				this.OnAfterConnected(false, false);
			}
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.MainForm.set_IsSubNavigationVisible(false);
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Stop_Ghost_Wi_Fi : Profiles.STOP_PROTECTION);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			ObjectHolder.MainForm.set_IsSubNavigationVisible(true);
		}

		public void Dispose()
		{
			if (this._wiFiDetector == null)
			{
				return;
			}
			this._wiFiDetector.remove_OnNewWiFiDetected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnNewWiFiDetected));
			this._wiFiDetector.remove_OnSignalStrengthChanged(new WiFiDetector.SignalStrengthChanged(this._wiFiDetector_OnSignalStrengthChanged));
			this._wiFiDetector.remove_OnWifiDisconnected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnWifiDisconnected));
		}

		public void OnTrafficDataChanged(TrafficDataChangedEventArgs trafficData)
		{
			this.ConnectedSlider.OnTrafficDataChanged(trafficData);
		}

		private void UpdateWifiDisplay(HelperFunctions.WlanInfos newWiFiInfos)
		{
			if (!this._isbeforeConnectForWifiState)
			{
				SettingsHolder.get_Settings().get_ProfileWifi().CurrentSSID = newWiFiInfos.Ssid;
				this.StatusMessage.Content = (this.StatusMessage.Content = Profiles._YOUR_WIFI___ + SettingsHolder.get_Settings().get_ProfileWifi().CurrentSSID + " " + Profiles.IS_CURRENTLY_PROTECTED);
			}
		}

		private void _wiFiDetector_OnWifiDisconnected(HelperFunctions.WlanInfos[] newWiFis)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this.StatusMessage.Content = CyberGhost.Translations.Settings.ConnectedWifi__wiFiDetector_OnWifiDisconnected_SWITCHING_WIFIS;
			}, null);
		}

		private void _wiFiDetector_OnNewWiFiDetected(HelperFunctions.WlanInfos[] newWiFis)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this.UpdateWifiDisplay(newWiFis[0]);
			}, null);
		}

		private void _wiFiDetector_OnSignalStrengthChanged(HelperFunctions.WlanInfos newWiFiInfos)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this.UpdateWifiDisplay(newWiFiInfos);
			}, null);
		}

		private void DoDisconnect(object sender, RoutedEventArgs e)
		{
			this.OnBeforeDisconnect();
			ObjectHolder.MainForm.Disconnect();
		}

		private void CancelConnection_OnMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			ObjectHolder.MainForm.Disconnect();
			this.CancelConnection.Visibility = Visibility.Hidden;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/connected/connectedwifi.xaml", UriKind.Relative);
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
				this.ConnectedSlider = (ConnectedSlider)target;
				return;
			case 2:
				this.Surfing = (Image)target;
				return;
			case 3:
				this.SurfingAnimated = (Image)target;
				return;
			case 4:
				this.StatusMessage = (Label)target;
				return;
			case 5:
				this.CancelConnection = (TextBlock)target;
				this.CancelConnection.MouseLeftButtonUp += new MouseButtonEventHandler(this.CancelConnection_OnMouseLeftButtonUp);
				return;
			case 6:
				this.FeatureDisplay = (FeatureDisplay)target;
				return;
			case 7:
				this.LoadingBar = (ModernProgressRing)target;
				return;
			case 8:
				this.ConnectBtn = (Button)target;
				this.ConnectBtn.Click += new RoutedEventHandler(this.DoDisconnect);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
