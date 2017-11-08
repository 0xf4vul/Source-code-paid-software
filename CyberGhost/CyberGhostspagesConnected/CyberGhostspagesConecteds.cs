using CyberGhost.Annotations;
using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
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
	public class ConnectedAnonymousBrowsing : UserControl, IComponentConnector, IConnectionStates, ITrafficDataChanged, INotifyPropertyChanged, IContent
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass14_0
		{
			public ConnectionStatus connectionStatus;

			public ConnectedAnonymousBrowsing <>4__this;

			internal void <OnConnectionStatusChanged>b__0()
			{
				this.<>4__this.ConnectBtn.Visibility = Visibility.Hidden;
				this.<>4__this.LoadingBar.Visibility = Visibility.Visible;
				this.<>4__this.ConnectedSlider.TrafficData = GuiHelper.ResetTrafficData();
				if (this.connectionStatus == 10000)
				{
					this.<>4__this.StatusMessage.Content = Status._CONNECTING;
					return;
				}
				if (this.connectionStatus == 20)
				{
					this.<>4__this.StatusMessage.Content = Status._DISCONNECTING;
				}
			}
		}

		internal ConnectedSlider ConnectedSlider;

		internal Image Surfing;

		internal Image SurfingAnimated;

		internal Label StatusMessage;

		internal TextBlock CancelConnection;

		internal FeatureDisplay FeatureDisplay;

		internal ModernProgressRing LoadingBar;

		internal Button ConnectBtn;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		private bool VisitCounterIncremented
		{
			get;
			set;
		}

		private Uri StatsSurfenGhostieBackground
		{
			get;
			set;
		}

		public ConnectedAnonymousBrowsing()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.StatsSurfenGhostieBackground = new Uri(Theming.GetThemedImage("Background\\stats-surfen-ghostie.gif"));
			BitmapImage bitmapImage = new BitmapImage();
			bitmapImage.BeginInit();
			bitmapImage.UriSource = this.StatsSurfenGhostieBackground;
			bitmapImage.EndInit();
			ImageBehavior.SetAnimatedSource(this.SurfingAnimated, bitmapImage);
			this.Surfing.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\stats-surfen-ghostie.png")));
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.CancelConnection.Visibility = Visibility.Visible;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status._CONNECTING;
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
			this.VisitCounterIncremented = false;
			this.StatusMessage.Content = Status._DISCONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.Surfing.Visibility = Visibility.Visible;
			this.SurfingAnimated.Visibility = Visibility.Hidden;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			ObjectHolder.CurrentConnectionTime = null;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this.FeatureDisplay.OnAfterConnected(isReconnect, isAppProtection);
			this.ConnectedSlider.OnAfterConnected(isReconnect, isAppProtection);
			if (!this.VisitCounterIncremented)
			{
				GuiHelper.SetLastUsedProfile(ObjectHolder.CurrentProfile.GetBaseName());
				this.VisitCounterIncremented = true;
			}
			this.CancelConnection.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status.yourareprotected;
			this.LoadingBar.Visibility = Visibility.Hidden;
			this.ConnectBtn.Visibility = Visibility.Visible;
			this.Surfing.Visibility = Visibility.Hidden;
			this.SurfingAnimated.Visibility = Visibility.Visible;
			ObjectHolder.FirstTimeVisitedConnectedScreen = false;
		}

		public void OnAfterDisconnected()
		{
			this.FeatureDisplay.OnAfterDisconnected();
			this.ConnectedSlider.OnAfterDisconnected();
			SettingsHolder.get_Settings().SaveSettingsAsync(false);
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
			ConnectedAnonymousBrowsing.<>c__DisplayClass14_0 <>c__DisplayClass14_ = new ConnectedAnonymousBrowsing.<>c__DisplayClass14_0();
			<>c__DisplayClass14_.<>4__this = this;
			<>c__DisplayClass14_.connectionStatus = connectionStatus;
			if (<>c__DisplayClass14_.connectionStatus != null && <>c__DisplayClass14_.connectionStatus != 20)
			{
				this.CancelConnection.Visibility = Visibility.Visible;
			}
			if (<>c__DisplayClass14_.connectionStatus != null)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(<>c__DisplayClass14_.<OnConnectionStatusChanged>b__0));
				return;
			}
			if (!ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.Send, new Action(this.<OnConnectionStatusChanged>b__14_1));
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.ConnectedSlider.OnNavigatedTo();
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
			ObjectHolder.CurrentConnectingScreen = this;
			this.FeatureDisplay.SetFeatureVisibility(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing());
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
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Stop_Ghost_Browsing : Status.anonsurf_stop);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsSubNavigationVisible(true);
		}

		public void OnTrafficDataChanged(TrafficDataChangedEventArgs trafficData)
		{
			this.ConnectedSlider.OnTrafficDataChanged(trafficData);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/connected/connectedanonymousbrowsing.xaml", UriKind.Relative);
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

		[CompilerGenerated]
		private void <OnConnectionStatusChanged>b__14_1()
		{
			this.OnAfterConnected(false, false);
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace CyberGhost.Pages.Connected
{
	public class ConnectedAnonymousDownloading : UserControl, IComponentConnector, IConnectionStates, ITrafficDataChanged, IContent
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass15_0
		{
			public ConnectionStatus connectionStatus;

			public ConnectedAnonymousDownloading <>4__this;

			internal void <OnConnectionStatusChanged>b__0()
			{
				this.<>4__this.ConnectBtn.Visibility = Visibility.Hidden;
				this.<>4__this.LoadingBar.Visibility = Visibility.Visible;
				this.<>4__this.TrafficData = GuiHelper.ResetTrafficData();
				if (this.connectionStatus == 10000)
				{
					this.<>4__this.StatusMessage.Content = Status._CONNECTING;
					return;
				}
				if (this.connectionStatus == 20)
				{
					this.<>4__this.StatusMessage.Content = Status._DISCONNECTING;
				}
			}
		}

		private readonly List<Path> _spinners = new List<Path>();

		private long _maxDownloadValueForSpinner;

		internal ConnectedSlider ConnectedSlider;

		internal Canvas Svg;

		internal Path Path7;

		internal Path Path10;

		internal Path Path5;

		internal Path Path2;

		internal Path Path9;

		internal Path Path11;

		internal Path Path8;

		internal Path Path12;

		internal Path Path4;

		internal Path Path6;

		internal Path Path3;

		internal Path Path1;

		internal Label StatusMessage;

		internal TextBlock CancelConnection;

		internal FeatureDisplay FeatureDisplay;

		internal ModernProgressRing LoadingBar;

		internal Button ConnectBtn;

		private bool _contentLoaded;

		private bool VisitCounterIncremented
		{
			get;
			set;
		}

		public TrafficDataChangedEventArgs TrafficData
		{
			get;
			set;
		}

		public ConnectedAnonymousDownloading()
		{
			this.InitializeComponent();
			this._spinners.Add(this.Path1);
			this._spinners.Add(this.Path2);
			this._spinners.Add(this.Path3);
			this._spinners.Add(this.Path4);
			this._spinners.Add(this.Path5);
			this._spinners.Add(this.Path6);
			this._spinners.Add(this.Path7);
			this._spinners.Add(this.Path8);
			this._spinners.Add(this.Path9);
			this._spinners.Add(this.Path10);
			this._spinners.Add(this.Path11);
			this._spinners.Add(this.Path12);
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.CancelConnection.Visibility = Visibility.Visible;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status._CONNECTING;
			this.LoadingBar.Visibility = Visibility.Visible;
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
			this.VisitCounterIncremented = false;
			this.StatusMessage.Content = Status._DISCONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			ObjectHolder.CurrentConnectionTime = null;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this.FeatureDisplay.OnAfterConnected(isReconnect, isAppProtection);
			this.ConnectedSlider.OnAfterConnected(isReconnect, isAppProtection);
			if (!this.VisitCounterIncremented)
			{
				GuiHelper.SetLastUsedProfile(ObjectHolder.CurrentProfile.GetBaseName());
				this.VisitCounterIncremented = true;
			}
			this.CancelConnection.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Profiles._YOUR_DOWNLOADS_ARE_PROTECTED;
			this.LoadingBar.Visibility = Visibility.Hidden;
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
			ConnectedAnonymousDownloading.<>c__DisplayClass15_0 <>c__DisplayClass15_ = new ConnectedAnonymousDownloading.<>c__DisplayClass15_0();
			<>c__DisplayClass15_.<>4__this = this;
			<>c__DisplayClass15_.connectionStatus = connectionStatus;
			if (<>c__DisplayClass15_.connectionStatus != null && <>c__DisplayClass15_.connectionStatus != 20)
			{
				this.CancelConnection.Visibility = Visibility.Visible;
			}
			if (<>c__DisplayClass15_.connectionStatus != null)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(<>c__DisplayClass15_.<OnConnectionStatusChanged>b__0));
				return;
			}
			if (!ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(this.<OnConnectionStatusChanged>b__15_1));
				return;
			}
			base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(this.<OnConnectionStatusChanged>b__15_2));
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.ConnectedSlider.OnNavigatedTo();
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
			ObjectHolder.CurrentConnectingScreen = this;
			this.FeatureDisplay.SetFeatureVisibility(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading());
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
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Status.Stop_Ghost_Downloads : Status.anondownload_stop);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			ObjectHolder.MainForm.set_IsSubNavigationVisible(true);
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnTrafficDataChanged(TrafficDataChangedEventArgs trafficData)
		{
			this.TrafficData = trafficData;
			this.ConnectedSlider.OnTrafficDataChanged(trafficData);
			this.UpdateSpinner();
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

		private void UpdateSpinner()
		{
			double value = this.TrafficData.get_CurrentSpeed().Value;
			if (this._maxDownloadValueForSpinner < (long)value)
			{
				this._maxDownloadValueForSpinner = (long)value;
			}
			if (this._maxDownloadValueForSpinner > 0L)
			{
				double num = value / (double)this._maxDownloadValueForSpinner * 12.0;
				num = Math.Truncate(num * 0.9);
				if (num >= 12.0)
				{
					num = 12.0;
				}
				foreach (Path expr_8B in this._spinners)
				{
					int num2 = int.Parse(expr_8B.Tag.ToString());
					expr_8B.Fill = (((double)num2 <= num) ? new SolidColorBrush(GuiHelper.GenerateColor("#9E5CC2")) : new SolidColorBrush(GuiHelper.GenerateColor("#4c3a53")));
				}
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/connected/connectedanonymousdownloading.xaml", UriKind.Relative);
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
				this.Svg = (Canvas)target;
				return;
			case 3:
				this.Path7 = (Path)target;
				return;
			case 4:
				this.Path10 = (Path)target;
				return;
			case 5:
				this.Path5 = (Path)target;
				return;
			case 6:
				this.Path2 = (Path)target;
				return;
			case 7:
				this.Path9 = (Path)target;
				return;
			case 8:
				this.Path11 = (Path)target;
				return;
			case 9:
				this.Path8 = (Path)target;
				return;
			case 10:
				this.Path12 = (Path)target;
				return;
			case 11:
				this.Path4 = (Path)target;
				return;
			case 12:
				this.Path6 = (Path)target;
				return;
			case 13:
				this.Path3 = (Path)target;
				return;
			case 14:
				this.Path1 = (Path)target;
				return;
			case 15:
				this.StatusMessage = (Label)target;
				return;
			case 16:
				this.CancelConnection = (TextBlock)target;
				this.CancelConnection.MouseLeftButtonUp += new MouseButtonEventHandler(this.CancelConnection_OnMouseLeftButtonUp);
				return;
			case 17:
				this.FeatureDisplay = (FeatureDisplay)target;
				return;
			case 18:
				this.LoadingBar = (ModernProgressRing)target;
				return;
			case 19:
				this.ConnectBtn = (Button)target;
				this.ConnectBtn.Click += new RoutedEventHandler(this.DoDisconnect);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <OnConnectionStatusChanged>b__15_1()
		{
			this.OnAfterConnected(false, false);
		}

		[CompilerGenerated]
		private void <OnConnectionStatusChanged>b__15_2()
		{
			this.TrafficData = GuiHelper.ResetTrafficData();
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
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
	public class ConnectedCustom : UserControl, IComponentConnector, IConnectionStates, ITrafficDataChanged, IContent
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass14_0
		{
			public ConnectionStatus connectionStatus;

			public ConnectedCustom <>4__this;

			internal void <OnConnectionStatusChanged>b__0()
			{
				this.<>4__this.ConnectBtn.Visibility = Visibility.Hidden;
				this.<>4__this.LoadingBar.Visibility = Visibility.Visible;
				this.<>4__this.ConnectedSlider.TrafficData = GuiHelper.ResetTrafficData();
				if (this.connectionStatus == 10000)
				{
					this.<>4__this.StatusMessage.Content = Status._CONNECTING;
					return;
				}
				if (this.connectionStatus == 20)
				{
					this.<>4__this.StatusMessage.Content = Status._DISCONNECTING;
				}
			}
		}

		internal ConnectedSlider ConnectedSlider;

		internal Image Surfing;

		internal Image SurfingAnimated;

		internal Label StatusMessage;

		internal TextBlock CancelConnection;

		internal FeatureDisplay FeatureDisplay;

		internal ModernProgressRing LoadingBar;

		internal Button ConnectBtn;

		private bool _contentLoaded;

		private Uri StatsSettingGhostieBackground
		{
			get;
			set;
		}

		private bool VisitCounterIncremented
		{
			get;
			set;
		}

		public ConnectedCustom()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.StatsSettingGhostieBackground = new Uri(Theming.GetThemedImage("Background\\stats-settings-ghostie.gif"));
			BitmapImage bitmapImage = new BitmapImage();
			bitmapImage.BeginInit();
			bitmapImage.UriSource = this.StatsSettingGhostieBackground;
			bitmapImage.EndInit();
			ImageBehavior.SetAnimatedSource(this.SurfingAnimated, bitmapImage);
			this.Surfing.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\stats-settings-ghostie.png")));
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
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
			this.VisitCounterIncremented = false;
			this.StatusMessage.Content = Status._DISCONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.Surfing.Visibility = Visibility.Visible;
			this.SurfingAnimated.Visibility = Visibility.Hidden;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			ObjectHolder.CurrentConnectionTime = null;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this.FeatureDisplay.OnAfterConnected(isReconnect, isAppProtection);
			this.ConnectedSlider.OnAfterConnected(isReconnect, isAppProtection);
			if (!this.VisitCounterIncremented)
			{
				GuiHelper.SetLastUsedProfile(ObjectHolder.CurrentProfile.GetBaseName());
				this.VisitCounterIncremented = true;
			}
			this.CancelConnection.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status.yourareprotected;
			this.LoadingBar.Visibility = Visibility.Hidden;
			this.ConnectBtn.Visibility = Visibility.Visible;
			this.Surfing.Visibility = Visibility.Hidden;
			this.SurfingAnimated.Visibility = Visibility.Visible;
			ObjectHolder.FirstTimeVisitedConnectedScreen = false;
		}

		public void OnAfterDisconnected()
		{
			this.FeatureDisplay.OnAfterDisconnected();
			this.ConnectedSlider.OnAfterDisconnected();
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
			ConnectedCustom.<>c__DisplayClass14_0 <>c__DisplayClass14_ = new ConnectedCustom.<>c__DisplayClass14_0();
			<>c__DisplayClass14_.<>4__this = this;
			<>c__DisplayClass14_.connectionStatus = connectionStatus;
			if (<>c__DisplayClass14_.connectionStatus != null && <>c__DisplayClass14_.connectionStatus != 20)
			{
				this.CancelConnection.Visibility = Visibility.Visible;
			}
			if (<>c__DisplayClass14_.connectionStatus != null)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(<>c__DisplayClass14_.<OnConnectionStatusChanged>b__0));
				return;
			}
			if (!ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.Send, new Action(this.<OnConnectionStatusChanged>b__14_1));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsSubNavigationVisible(true);
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.ConnectedSlider.OnNavigatedTo();
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileCustom();
			ObjectHolder.CurrentConnectingScreen = this;
			this.FeatureDisplay.SetFeatureVisibility(SettingsHolder.get_Settings().get_ProfileCustom());
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
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Stop_Ghost_Pro : CyberGhost.Translations.MainWindow.STOPCUSTOM);
		}

		public void OnTrafficDataChanged(TrafficDataChangedEventArgs trafficData)
		{
			this.ConnectedSlider.OnTrafficDataChanged(trafficData);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/connected/connectedcustom.xaml", UriKind.Relative);
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

		[CompilerGenerated]
		private void <OnConnectionStatusChanged>b__14_1()
		{
			this.OnAfterConnected(false, false);
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
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.Log;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using WpfAnimatedGif;

namespace CyberGhost.Pages.Connected
{
	public class ConnectedUnblock : UserControl, IComponentConnector, IDisposable, IConnectionStates, IContent
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass18_0
		{
			public ConnectionStatus connectionStatus;

			public ConnectedUnblock <>4__this;

			internal void <OnConnectionStatusChanged>b__0()
			{
				this.<>4__this.ConnectBtn.Visibility = Visibility.Hidden;
				this.<>4__this.LoadingBar.Visibility = Visibility.Visible;
				if (this.connectionStatus == 10000)
				{
					this.<>4__this.StatusMessage.Content = Status._CONNECTING;
					return;
				}
				if (this.connectionStatus == 20)
				{
					this.<>4__this.StatusMessage.Content = Status._DISCONNECTING;
				}
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <SetFeedbackContent>d__28 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public bool rating;

			public ConnectedUnblock <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				ConnectedUnblock connectedUnblock = this.<>4__this;
				try
				{
					CgApiServerContentUrl cgApiServerContentUrl;
					if (num != 0)
					{
						cgApiServerContentUrl = new CgApiServerContentUrl();
					}
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							taskAwaiter = cgApiServerContentUrl.PostRating(SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemUrl(), SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedServerId(), ObjectHolder.CurrentUser.get_Id(), this.rating).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, ConnectedUnblock.<SetFeedbackContent>d__28>(ref taskAwaiter, ref this);
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
					catch (Exception)
					{
						HelperFunctions.DebugLine("COULD NOT SEND RATING");
					}
					connectedUnblock.LblFeedback.Text = Profiles.Thank_you_for_your_feedback;
					SettingsHolder.get_Settings().get_ProfileUnblock().set_DidItWorkDisabled(true);
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

		internal ImageBrush GridBackground;

		internal StackPanel StackPanelHeaderName;

		internal TextBlock LblName;

		internal TextBlock LblUrl;

		internal StackPanel StackPanelTimer;

		internal Image LblImageCountry;

		internal TextBlock LblCountry;

		internal StackPanel StackPanelTracking;

		internal StackPanel FeedbackPanel;

		internal Button YesButton;

		internal Label LblYes;

		internal Button NoButton;

		internal Label LblNo;

		internal TextBlock LblFeedback;

		internal Image Unblocking;

		internal Image UnblockingAnimated;

		internal Label StatusMessage;

		internal TextBlock CancelConnection;

		internal StackPanel HintContainer;

		internal TextBlock Hint;

		internal StackPanel FeatureContainer;

		internal Grid DescriptionGrid;

		internal TextBlock DescriptionText;

		internal ModernProgressRing LoadingBar;

		internal Button ConnectBtn;

		private bool _contentLoaded;

		private bool VisitCounterIncremented
		{
			get;
			set;
		}

		private Uri StatsUnblockGhostieBackground
		{
			get;
			set;
		}

		private Uri IconPlayPath
		{
			get;
			set;
		}

		public ConnectedUnblock()
		{
			this.InitializeComponent();
			this.YesButton.DataContext = SettingsHolder.get_Settings().get_ProfileUnblock();
			this.NoButton.DataContext = SettingsHolder.get_Settings().get_ProfileUnblock();
			SettingsHolder.get_Settings().get_ProfileUnblock().add_OnDidItWorkEvent(new CgProfileUnblock.DidItWorkReplied(this.ProfileUnblock_OnDidItWorkEvent));
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.StatsUnblockGhostieBackground = new Uri(Theming.GetThemedImage("Background\\stats-unlock-ghostie.gif"));
			this.IconPlayPath = new Uri(Theming.GetThemedImage("Icons\\Functions\\icon_play.png"));
			BitmapImage bitmapImage = new BitmapImage();
			bitmapImage.BeginInit();
			bitmapImage.UriSource = this.StatsUnblockGhostieBackground;
			bitmapImage.EndInit();
			ImageBehavior.SetAnimatedSource(this.UnblockingAnimated, bitmapImage);
			this.GridBackground.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\unblockBack.png")));
			this.Unblocking.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\stats-unlock-ghostie.png")));
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.CancelConnection.Visibility = Visibility.Visible;
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.YesButton.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Hidden;
			this.NoButton.Visibility = Visibility.Hidden;
			this.LblNo.Visibility = Visibility.Hidden;
			this.HintContainer.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status._CONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Visible;
			this.UnblockingAnimated.Visibility = Visibility.Hidden;
			this.SetCountryLabel();
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode();
			this.LblCountry.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
		}

		public void OnBeforeDisconnect()
		{
			this.FeedbackPanel.Visibility = Visibility.Hidden;
			this.VisitCounterIncremented = false;
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.YesButton.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Hidden;
			this.NoButton.Visibility = Visibility.Hidden;
			this.LblNo.Visibility = Visibility.Hidden;
			this.FeatureContainer.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status._DISCONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Visible;
			this.UnblockingAnimated.Visibility = Visibility.Hidden;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			this.LblFeedback.Text = Profiles.DIDITWORK;
			this.LblYes.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
			ObjectHolder.CurrentConnectionTime = null;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode();
			this.LblCountry.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			SettingsHolder.get_Settings().get_ProfileUnblock().set_DidItWorkDisabled(false);
			if (!this.VisitCounterIncremented)
			{
				GuiHelper.SetLastUsedProfile(ObjectHolder.CurrentProfile.GetBaseName());
				this.VisitCounterIncremented = true;
			}
			this.CancelConnection.Visibility = Visibility.Hidden;
			if (SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage() != null && !SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage().Contains("24/.png"))
			{
				this.LblImageCountry.Source = new BitmapImage(new Uri(SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage()));
			}
			this.DescriptionText.Text = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemDescription();
			this.DescriptionText.Visibility = Visibility.Hidden;
			this.DescriptionGrid.Visibility = Visibility.Hidden;
			this.HintContainer.Visibility = Visibility.Hidden;
			this.FeatureContainer.Visibility = Visibility.Visible;
			this.StatusMessage.Content = string.Format("{0} {1}", Status._YOU_ARE_CURRENTLY_UNBLOCKING_, SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName());
			this.LoadingBar.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.UnblockingAnimated.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Visible;
			this.ConnectBtn.Visibility = Visibility.Visible;
			if (ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				if (ObjectHolder.CurrentProfile != null)
				{
					McProfileLogItem expr_173 = new McProfileLogItem();
					expr_173.set_FeatureAdBlock(ObjectHolder.CurrentProfile.get_FeatureAdBlock());
					expr_173.set_FeatureApp(ObjectHolder.CurrentProfile.get_FeatureApp());
					expr_173.set_FeatureBrowserAgent(ObjectHolder.CurrentProfile.get_FeatureBrowserAgent());
					expr_173.set_FeatureBrowserLanguage(ObjectHolder.CurrentProfile.get_FeatureBrowserLanguage());
					expr_173.set_FeatureHttps(ObjectHolder.CurrentProfile.get_FeatureHttps());
					expr_173.set_FeatureMalware(ObjectHolder.CurrentProfile.get_FeatureMalware());
					expr_173.set_FeatureScout(ObjectHolder.CurrentProfile.get_FeatureScout());
					expr_173.set_FeatureTracking(ObjectHolder.CurrentProfile.get_FeatureTracking());
					expr_173.set_FeatureZip(ObjectHolder.CurrentProfile.get_FeatureZip());
					expr_173.set_ProfileName(ObjectHolder.CurrentProfile.get_ProfileName());
					McProfileLogItem aEvent = expr_173;
					ObjectHolder.EventLogger.LogLocalEvent(aEvent);
				}
				ObjectHolder.FirstTimeVisitedConnectedScreen = false;
			}
		}

		public void OnAfterDisconnected()
		{
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
			ConnectedUnblock.<>c__DisplayClass18_0 <>c__DisplayClass18_ = new ConnectedUnblock.<>c__DisplayClass18_0();
			<>c__DisplayClass18_.<>4__this = this;
			<>c__DisplayClass18_.connectionStatus = connectionStatus;
			if (<>c__DisplayClass18_.connectionStatus != null && <>c__DisplayClass18_.connectionStatus != 20)
			{
				this.CancelConnection.Visibility = Visibility.Visible;
			}
			if (<>c__DisplayClass18_.connectionStatus != null)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(<>c__DisplayClass18_.<OnConnectionStatusChanged>b__0));
				return;
			}
			if (!ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.Send, new Action(this.<OnConnectionStatusChanged>b__18_1));
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
			GuiHelper.SetRandomHint(this.Hint, "unblock");
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUnblock();
			GuiHelper.StopInactivityCheck();
			ObjectHolder.CurrentConnectingScreen = this;
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
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Status.Stop_Ghost_Streaming : string.Format("{0} {1}", Profiles.STOP, SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemNameShort()));
			this.LblName.Text = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemNameShort();
			this.LblUrl.Text = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemUrl();
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode();
			this.LblCountry.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			this.LblImageCountry.Source = new BitmapImage(this.IconPlayPath);
			this.SetCountryLabel();
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.MainForm.set_IsSubNavigationVisible(false);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			ObjectHolder.MainForm.set_IsSubNavigationVisible(true);
		}

		public void Dispose()
		{
			if (SettingsHolder.get_Settings().get_ProfileUnblock() == null)
			{
				return;
			}
			SettingsHolder.get_Settings().get_ProfileUnblock().remove_OnDidItWorkEvent(new CgProfileUnblock.DidItWorkReplied(this.ProfileUnblock_OnDidItWorkEvent));
		}

		private void SetCountryLabel()
		{
			try
			{
				if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode()))
				{
					this.LblImageCountry.Source = new BitmapImage(new Uri(Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode())))));
				}
			}
			catch (Exception)
			{
			}
		}

		private void DoDisconnect(object sender, RoutedEventArgs e)
		{
			this.OnBeforeDisconnect();
			ObjectHolder.MainForm.Disconnect();
		}

		private void NoButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.SetFeedbackContent(false);
		}

		private void YesButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.SetFeedbackContent(true);
		}

		[AsyncStateMachine(typeof(ConnectedUnblock.<SetFeedbackContent>d__28))]
		private void SetFeedbackContent(bool rating)
		{
			ConnectedUnblock.<SetFeedbackContent>d__28 <SetFeedbackContent>d__;
			<SetFeedbackContent>d__.<>4__this = this;
			<SetFeedbackContent>d__.rating = rating;
			<SetFeedbackContent>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SetFeedbackContent>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SetFeedbackContent>d__.<>t__builder;
			<>t__builder.Start<ConnectedUnblock.<SetFeedbackContent>d__28>(ref <SetFeedbackContent>d__);
		}

		private void CancelConnection_OnMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			ObjectHolder.MainForm.Disconnect();
			this.CancelConnection.Visibility = Visibility.Hidden;
		}

		private void ProfileUnblock_OnDidItWorkEvent(object sender, DidItWorkEventArgs args)
		{
			if (sender == null || args == null)
			{
				return;
			}
			if (args.get_HasBeenReplied())
			{
				this.LblFeedback.Text = Profiles.Thank_you_for_your_feedback;
				this.FeedbackPanel.Visibility = Visibility.Visible;
				this.LblFeedback.Visibility = Visibility.Visible;
				this.YesButton.Visibility = Visibility.Hidden;
				this.LblYes.Visibility = Visibility.Hidden;
				this.NoButton.Visibility = Visibility.Hidden;
				this.LblNo.Visibility = Visibility.Hidden;
				return;
			}
			this.LblFeedback.Text = Profiles.DIDITWORK;
			this.FeedbackPanel.Visibility = Visibility.Visible;
			this.LblFeedback.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.LblYes.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/connected/connectedunblock.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.GridBackground = (ImageBrush)target;
				return;
			case 2:
				this.StackPanelHeaderName = (StackPanel)target;
				return;
			case 3:
				this.LblName = (TextBlock)target;
				return;
			case 4:
				this.LblUrl = (TextBlock)target;
				return;
			case 5:
				this.StackPanelTimer = (StackPanel)target;
				return;
			case 6:
				this.LblImageCountry = (Image)target;
				return;
			case 7:
				this.LblCountry = (TextBlock)target;
				return;
			case 8:
				this.StackPanelTracking = (StackPanel)target;
				return;
			case 9:
				this.FeedbackPanel = (StackPanel)target;
				return;
			case 10:
				this.YesButton = (Button)target;
				this.YesButton.Click += new RoutedEventHandler(this.YesButton_OnClick);
				return;
			case 11:
				this.LblYes = (Label)target;
				this.LblYes.MouseLeftButtonUp += new MouseButtonEventHandler(this.YesButton_OnClick);
				return;
			case 12:
				this.NoButton = (Button)target;
				this.NoButton.Click += new RoutedEventHandler(this.NoButton_OnClick);
				return;
			case 13:
				this.LblNo = (Label)target;
				this.LblNo.MouseLeftButtonUp += new MouseButtonEventHandler(this.NoButton_OnClick);
				return;
			case 14:
				this.LblFeedback = (TextBlock)target;
				return;
			case 15:
				this.Unblocking = (Image)target;
				return;
			case 16:
				this.UnblockingAnimated = (Image)target;
				return;
			case 17:
				this.StatusMessage = (Label)target;
				return;
			case 18:
				this.CancelConnection = (TextBlock)target;
				this.CancelConnection.MouseLeftButtonUp += new MouseButtonEventHandler(this.CancelConnection_OnMouseLeftButtonUp);
				return;
			case 19:
				this.HintContainer = (StackPanel)target;
				return;
			case 20:
				this.Hint = (TextBlock)target;
				return;
			case 21:
				this.FeatureContainer = (StackPanel)target;
				return;
			case 22:
				this.DescriptionGrid = (Grid)target;
				return;
			case 23:
				this.DescriptionText = (TextBlock)target;
				return;
			case 24:
				this.LoadingBar = (ModernProgressRing)target;
				return;
			case 25:
				this.ConnectBtn = (Button)target;
				this.ConnectBtn.Click += new RoutedEventHandler(this.DoDisconnect);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <OnConnectionStatusChanged>b__18_1()
		{
			this.OnAfterConnected(false, false);
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
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
	public class ConnectedNetwork : UserControl, IComponentConnector, IConnectionStates, ITrafficDataChanged, IContent
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass14_0
		{
			public ConnectionStatus connectionStatus;

			public ConnectedNetwork <>4__this;

			internal void <OnConnectionStatusChanged>b__0()
			{
				this.<>4__this.ConnectBtn.Visibility = Visibility.Hidden;
				this.<>4__this.LoadingBar.Visibility = Visibility.Visible;
				if (this.connectionStatus == 10000)
				{
					this.<>4__this.StatusMessage.Content = Status._CONNECTING;
					return;
				}
				if (this.connectionStatus == 20)
				{
					this.<>4__this.StatusMessage.Content = Status._DISCONNECTING;
				}
			}
		}

		internal ConnectedSlider ConnectedSlider;

		internal Image Surfing;

		internal Image SurfingAnimated;

		internal Label StatusMessage;

		internal TextBlock CancelConnection;

		internal FeatureDisplay FeatureDisplay;

		internal ModernProgressRing LoadingBar;

		internal Button ConnectBtn;

		private bool _contentLoaded;

		private Uri StatsWifiGhostieBackground
		{
			get;
			set;
		}

		private bool VisitCounterIncremented
		{
			get;
			set;
		}

		public ConnectedNetwork()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.StatsWifiGhostieBackground = new Uri(Theming.GetThemedImage("Background\\stats-wifi-ghostie.gif"));
			BitmapImage bitmapImage = new BitmapImage();
			bitmapImage.BeginInit();
			bitmapImage.UriSource = this.StatsWifiGhostieBackground;
			bitmapImage.EndInit();
			ImageBehavior.SetAnimatedSource(this.SurfingAnimated, bitmapImage);
			this.Surfing.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\stats-surfen-ghostie.png")));
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.CancelConnection.Visibility = Visibility.Visible;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status._CONNECTING;
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
			this.VisitCounterIncremented = false;
			this.StatusMessage.Content = Status._DISCONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.Surfing.Visibility = Visibility.Visible;
			this.SurfingAnimated.Visibility = Visibility.Hidden;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			ObjectHolder.CurrentConnectionTime = null;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this.FeatureDisplay.OnAfterConnected(isReconnect, isAppProtection);
			this.ConnectedSlider.OnAfterConnected(isReconnect, isAppProtection);
			if (!this.VisitCounterIncremented)
			{
				GuiHelper.SetLastUsedProfile(ObjectHolder.CurrentProfile.GetBaseName());
				this.VisitCounterIncremented = true;
			}
			this.CancelConnection.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Profiles.YOUR_CABLE_NETWORK_IS_CURRENTLY_PROTECTED;
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
			ConnectedNetwork.<>c__DisplayClass14_0 <>c__DisplayClass14_ = new ConnectedNetwork.<>c__DisplayClass14_0();
			<>c__DisplayClass14_.<>4__this = this;
			<>c__DisplayClass14_.connectionStatus = connectionStatus;
			if (<>c__DisplayClass14_.connectionStatus != null && <>c__DisplayClass14_.connectionStatus != 20)
			{
				this.CancelConnection.Visibility = Visibility.Visible;
			}
			if (<>c__DisplayClass14_.connectionStatus != null)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(<>c__DisplayClass14_.<OnConnectionStatusChanged>b__0));
				return;
			}
			if (!ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.Send, new Action(this.<OnConnectionStatusChanged>b__14_1));
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
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileNetwork();
			ObjectHolder.CurrentConnectingScreen = this;
			this.FeatureDisplay.SetFeatureVisibility(SettingsHolder.get_Settings().get_ProfileNetwork());
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
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Stop_Ghost_Network : Profiles.STOP_PROTECTION);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			ObjectHolder.MainForm.set_IsSubNavigationVisible(true);
		}

		public void OnTrafficDataChanged(TrafficDataChangedEventArgs trafficData)
		{
			this.ConnectedSlider.OnTrafficDataChanged(trafficData);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/connected/connectednetwork.xaml", UriKind.Relative);
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

		[CompilerGenerated]
		private void <OnConnectionStatusChanged>b__14_1()
		{
			this.OnAfterConnected(false, false);
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
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.Log;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace CyberGhost.Pages.Connected
{
	public class ConnectedUncensoring : UserControl, IComponentConnector, IDisposable, IConnectionStates, IContent
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass14_0
		{
			public ConnectionStatus connectionStatus;

			public ConnectedUncensoring <>4__this;

			internal void <OnConnectionStatusChanged>b__0()
			{
				this.<>4__this.ConnectBtn.Visibility = Visibility.Hidden;
				this.<>4__this.LoadingBar.Visibility = Visibility.Visible;
				if (this.connectionStatus == 10000)
				{
					this.<>4__this.StatusMessage.Content = Status._CONNECTING;
					return;
				}
				if (this.connectionStatus == 20)
				{
					this.<>4__this.StatusMessage.Content = Status._DISCONNECTING;
				}
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <SetFeedbackContent>d__25 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public bool rating;

			public ConnectedUncensoring <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				ConnectedUncensoring connectedUncensoring = this.<>4__this;
				try
				{
					CgApiServerContentUrl cgApiServerContentUrl;
					if (num != 0)
					{
						cgApiServerContentUrl = new CgApiServerContentUrl();
					}
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							taskAwaiter = cgApiServerContentUrl.PostRating(SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemUrl(), SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedServerId(), ObjectHolder.CurrentUser.get_Id(), this.rating).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, ConnectedUncensoring.<SetFeedbackContent>d__25>(ref taskAwaiter, ref this);
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
					catch (Exception)
					{
						HelperFunctions.DebugLine("COULD NOT SEND RATING");
					}
					connectedUncensoring.LblFeedback.Text = Profiles.Thank_you_for_your_feedback;
					SettingsHolder.get_Settings().get_ProfileUncensoring().set_DidItWorkDisabled(true);
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

		internal ImageBrush GridBackground;

		internal StackPanel StackPanelHeaderName;

		internal TextBlock LblName;

		internal TextBlock LblUrl;

		internal StackPanel StackPanelTimer;

		internal Image LblImageCountry;

		internal TextBlock LblCountry;

		internal StackPanel StackPanelTracking;

		internal StackPanel FeedbackPanel;

		internal Button YesButton;

		internal Label LblYes;

		internal Button NoButton;

		internal Label LblNo;

		internal TextBlock LblFeedback;

		internal Image Unblocking;

		internal Label StatusMessage;

		internal TextBlock CancelConnection;

		internal StackPanel HintContainer;

		internal TextBlock Hint;

		internal StackPanel FeatureContainer;

		internal Grid DescriptionGrid;

		internal TextBlock DescriptionText;

		internal ModernProgressRing LoadingBar;

		internal Button ConnectBtn;

		private bool _contentLoaded;

		private Uri IcoBlankFlag
		{
			get;
			set;
		}

		private bool VisitCounterIncremented
		{
			get;
			set;
		}

		public ConnectedUncensoring()
		{
			this.InitializeComponent();
			this.YesButton.DataContext = SettingsHolder.get_Settings().get_ProfileUncensoring();
			this.NoButton.DataContext = SettingsHolder.get_Settings().get_ProfileUncensoring();
			SettingsHolder.get_Settings().get_ProfileUncensoring().add_OnDidItWorkEvent(new CgProfileUncensoring.DidItWorkReplied(this.ProfileUncensoring_OnDidItWorkEvent));
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.IcoBlankFlag = new Uri(Theming.GetThemedImage("Icons\\Flags\\24\\blank.png"));
			this.GridBackground.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anticensorBack.png")));
			this.Unblocking.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anticensor.png")));
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.CancelConnection.Visibility = Visibility.Visible;
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.YesButton.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Hidden;
			this.NoButton.Visibility = Visibility.Hidden;
			this.LblNo.Visibility = Visibility.Hidden;
			this.HintContainer.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status._CONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Visible;
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryCode();
			this.LblCountry.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			this.SetCountryImage();
		}

		public void OnBeforeDisconnect()
		{
			this.FeedbackPanel.Visibility = Visibility.Hidden;
			this.VisitCounterIncremented = false;
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.YesButton.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Hidden;
			this.NoButton.Visibility = Visibility.Hidden;
			this.LblNo.Visibility = Visibility.Hidden;
			this.FeatureContainer.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status._DISCONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Visible;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			this.LblFeedback.Text = Profiles.DIDITWORK;
			this.LblYes.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
			ObjectHolder.CurrentConnectionTime = null;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryCode();
			this.LblCountry.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			SettingsHolder.get_Settings().get_ProfileUncensoring().set_DidItWorkDisabled(false);
			if (!this.VisitCounterIncremented)
			{
				GuiHelper.SetLastUsedProfile(ObjectHolder.CurrentProfile.GetBaseName());
				this.VisitCounterIncremented = true;
			}
			this.CancelConnection.Visibility = Visibility.Hidden;
			if (SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryImage() != null && !SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryImage().Contains("24/.png"))
			{
				this.LblImageCountry.Source = new BitmapImage(new Uri(SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryImage()));
			}
			this.DescriptionText.Text = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemDescription();
			this.DescriptionText.Visibility = Visibility.Visible;
			this.DescriptionGrid.Visibility = Visibility.Visible;
			this.HintContainer.Visibility = Visibility.Hidden;
			this.FeatureContainer.Visibility = Visibility.Visible;
			this.StatusMessage.Content = string.Format("{0}{1}", Status._YOU_ARE_CURRENTLY_UNBLOCKINGANTICENSOR, SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemName());
			this.LoadingBar.Visibility = Visibility.Hidden;
			this.FeatureContainer.Visibility = Visibility.Visible;
			this.ConnectBtn.Visibility = Visibility.Visible;
			if (ObjectHolder.FirstTimeVisitedConnectedScreen && ObjectHolder.CurrentProfile != null)
			{
				McProfileLogItem expr_15B = new McProfileLogItem();
				expr_15B.set_FeatureAdBlock(ObjectHolder.CurrentProfile.get_FeatureAdBlock());
				expr_15B.set_FeatureApp(ObjectHolder.CurrentProfile.get_FeatureApp());
				expr_15B.set_FeatureBrowserAgent(ObjectHolder.CurrentProfile.get_FeatureBrowserAgent());
				expr_15B.set_FeatureBrowserLanguage(ObjectHolder.CurrentProfile.get_FeatureBrowserLanguage());
				expr_15B.set_FeatureHttps(ObjectHolder.CurrentProfile.get_FeatureHttps());
				expr_15B.set_FeatureMalware(ObjectHolder.CurrentProfile.get_FeatureMalware());
				expr_15B.set_FeatureScout(ObjectHolder.CurrentProfile.get_FeatureScout());
				expr_15B.set_FeatureTracking(ObjectHolder.CurrentProfile.get_FeatureTracking());
				expr_15B.set_FeatureZip(ObjectHolder.CurrentProfile.get_FeatureZip());
				expr_15B.set_ProfileName(ObjectHolder.CurrentProfile.get_ProfileName());
				McProfileLogItem aEvent = expr_15B;
				ObjectHolder.EventLogger.LogLocalEvent(aEvent);
				ObjectHolder.FirstTimeVisitedConnectedScreen = false;
			}
		}

		public void OnAfterDisconnected()
		{
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
			ConnectedUncensoring.<>c__DisplayClass14_0 <>c__DisplayClass14_ = new ConnectedUncensoring.<>c__DisplayClass14_0();
			<>c__DisplayClass14_.<>4__this = this;
			<>c__DisplayClass14_.connectionStatus = connectionStatus;
			if (<>c__DisplayClass14_.connectionStatus != null && <>c__DisplayClass14_.connectionStatus != 20)
			{
				this.CancelConnection.Visibility = Visibility.Visible;
			}
			if (<>c__DisplayClass14_.connectionStatus != null)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(<>c__DisplayClass14_.<OnConnectionStatusChanged>b__0));
				return;
			}
			if (!ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.Send, new Action(this.<OnConnectionStatusChanged>b__14_1));
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
			GuiHelper.SetRandomHint(this.Hint, "antiCensorship");
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUncensoring();
			GuiHelper.StopInactivityCheck();
			ObjectHolder.CurrentConnectingScreen = this;
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
			this.LblName.Text = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemNameShort();
			this.LblUrl.Text = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemUrl();
			this.SetCountryImage();
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.MainForm.set_IsSubNavigationVisible(false);
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Status.Stop_Ghost_AntiCensor : Profiles.STOP_ANTI_CENSORSHIP);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			ObjectHolder.MainForm.set_IsSubNavigationVisible(true);
		}

		public void Dispose()
		{
			if (SettingsHolder.get_Settings().get_ProfileUncensoring() == null)
			{
				return;
			}
			SettingsHolder.get_Settings().get_ProfileUncensoring().remove_OnDidItWorkEvent(new CgProfileUncensoring.DidItWorkReplied(this.ProfileUncensoring_OnDidItWorkEvent));
		}

		private void SetCountryImage()
		{
			try
			{
				if (ObjectHolder.ConnectionStatus != null)
				{
					this.LblCountry.Text = Profiles.COUNTRY;
					if (File.Exists(this.IcoBlankFlag.ToString()))
					{
						this.LblImageCountry.Source = new BitmapImage(this.IcoBlankFlag);
					}
				}
				else if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryCode()))
				{
					string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryCode();
					this.LblCountry.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
					this.LblImageCountry.Source = new BitmapImage(new Uri(Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryCode())))));
				}
			}
			catch (Exception)
			{
			}
		}

		private void CancelConnection_OnMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			ObjectHolder.MainForm.Disconnect();
			this.CancelConnection.Visibility = Visibility.Hidden;
		}

		private void DoDisconnect(object sender, RoutedEventArgs e)
		{
			this.OnBeforeDisconnect();
			ObjectHolder.MainForm.Disconnect();
		}

		private void NoButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.SetFeedbackContent(false);
		}

		private void YesButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.SetFeedbackContent(true);
		}

		[AsyncStateMachine(typeof(ConnectedUncensoring.<SetFeedbackContent>d__25))]
		private void SetFeedbackContent(bool rating)
		{
			ConnectedUncensoring.<SetFeedbackContent>d__25 <SetFeedbackContent>d__;
			<SetFeedbackContent>d__.<>4__this = this;
			<SetFeedbackContent>d__.rating = rating;
			<SetFeedbackContent>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SetFeedbackContent>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SetFeedbackContent>d__.<>t__builder;
			<>t__builder.Start<ConnectedUncensoring.<SetFeedbackContent>d__25>(ref <SetFeedbackContent>d__);
		}

		private void ProfileUncensoring_OnDidItWorkEvent(object sender, DidItWorkEventArgs args)
		{
			if (sender == null || args == null)
			{
				return;
			}
			if (args.get_HasBeenReplied())
			{
				this.LblFeedback.Text = Profiles.Thank_you_for_your_feedback;
				this.FeedbackPanel.Visibility = Visibility.Visible;
				this.LblFeedback.Visibility = Visibility.Visible;
				this.YesButton.Visibility = Visibility.Hidden;
				this.LblYes.Visibility = Visibility.Hidden;
				this.NoButton.Visibility = Visibility.Hidden;
				this.LblNo.Visibility = Visibility.Hidden;
				return;
			}
			this.LblFeedback.Text = Profiles.DIDITWORK;
			this.FeedbackPanel.Visibility = Visibility.Visible;
			this.LblFeedback.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.LblYes.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/connected/connecteduncensoring.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.GridBackground = (ImageBrush)target;
				return;
			case 2:
				this.StackPanelHeaderName = (StackPanel)target;
				return;
			case 3:
				this.LblName = (TextBlock)target;
				return;
			case 4:
				this.LblUrl = (TextBlock)target;
				return;
			case 5:
				this.StackPanelTimer = (StackPanel)target;
				return;
			case 6:
				this.LblImageCountry = (Image)target;
				return;
			case 7:
				this.LblCountry = (TextBlock)target;
				return;
			case 8:
				this.StackPanelTracking = (StackPanel)target;
				return;
			case 9:
				this.FeedbackPanel = (StackPanel)target;
				return;
			case 10:
				this.YesButton = (Button)target;
				this.YesButton.Click += new RoutedEventHandler(this.YesButton_OnClick);
				return;
			case 11:
				this.LblYes = (Label)target;
				this.LblYes.MouseLeftButtonUp += new MouseButtonEventHandler(this.YesButton_OnClick);
				return;
			case 12:
				this.NoButton = (Button)target;
				this.NoButton.Click += new RoutedEventHandler(this.NoButton_OnClick);
				return;
			case 13:
				this.LblNo = (Label)target;
				this.LblNo.MouseLeftButtonUp += new MouseButtonEventHandler(this.NoButton_OnClick);
				return;
			case 14:
				this.LblFeedback = (TextBlock)target;
				return;
			case 15:
				this.Unblocking = (Image)target;
				return;
			case 16:
				this.StatusMessage = (Label)target;
				return;
			case 17:
				this.CancelConnection = (TextBlock)target;
				this.CancelConnection.MouseLeftButtonUp += new MouseButtonEventHandler(this.CancelConnection_OnMouseLeftButtonUp);
				return;
			case 18:
				this.HintContainer = (StackPanel)target;
				return;
			case 19:
				this.Hint = (TextBlock)target;
				return;
			case 20:
				this.FeatureContainer = (StackPanel)target;
				return;
			case 21:
				this.DescriptionGrid = (Grid)target;
				return;
			case 22:
				this.DescriptionText = (TextBlock)target;
				return;
			case 23:
				this.LoadingBar = (ModernProgressRing)target;
				return;
			case 24:
				this.ConnectBtn = (Button)target;
				this.ConnectBtn.Click += new RoutedEventHandler(this.DoDisconnect);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <OnConnectionStatusChanged>b__14_1()
		{
			this.OnAfterConnected(false, false);
		}
	}
}

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
using System.Threading;
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
		[CompilerGenerated]
		private sealed class <>c__DisplayClass14_0
		{
			public ConnectionStatus connectionStatus;

			public ConnectedWifi <>4__this;

			internal void <OnConnectionStatusChanged>b__0()
			{
				this.<>4__this.ConnectBtn.Visibility = Visibility.Hidden;
				this.<>4__this.LoadingBar.Visibility = Visibility.Visible;
				if (this.connectionStatus == 10000)
				{
					this.<>4__this.StatusMessage.Content = Status._CONNECTING;
					return;
				}
				if (this.connectionStatus == 20)
				{
					this.<>4__this.StatusMessage.Content = Status._DISCONNECTING;
				}
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass23_0
		{
			public HelperFunctions.WlanInfos[] newWiFis;

			public ConnectedWifi <>4__this;

			internal void <_wiFiDetector_OnNewWiFiDetected>b__0(object o)
			{
				this.<>4__this.UpdateWifiDisplay(this.newWiFis[0]);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass24_0
		{
			public HelperFunctions.WlanInfos newWiFiInfos;

			public ConnectedWifi <>4__this;

			internal void <_wiFiDetector_OnSignalStrengthChanged>b__0(object o)
			{
				this.<>4__this.UpdateWifiDisplay(this.newWiFiInfos);
			}
		}

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
			ConnectedWifi.<>c__DisplayClass14_0 <>c__DisplayClass14_ = new ConnectedWifi.<>c__DisplayClass14_0();
			<>c__DisplayClass14_.<>4__this = this;
			<>c__DisplayClass14_.connectionStatus = connectionStatus;
			if (<>c__DisplayClass14_.connectionStatus != null && <>c__DisplayClass14_.connectionStatus != 20)
			{
				this.CancelConnection.Visibility = Visibility.Visible;
			}
			if (<>c__DisplayClass14_.connectionStatus != null)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(<>c__DisplayClass14_.<OnConnectionStatusChanged>b__0));
				return;
			}
			if (!ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.Send, new Action(this.<OnConnectionStatusChanged>b__14_1));
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
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<_wiFiDetector_OnWifiDisconnected>b__22_0), null);
		}

		private void _wiFiDetector_OnNewWiFiDetected(HelperFunctions.WlanInfos[] newWiFis)
		{
			ConnectedWifi.<>c__DisplayClass23_0 <>c__DisplayClass23_ = new ConnectedWifi.<>c__DisplayClass23_0();
			<>c__DisplayClass23_.<>4__this = this;
			<>c__DisplayClass23_.newWiFis = newWiFis;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass23_.<_wiFiDetector_OnNewWiFiDetected>b__0), null);
		}

		private void _wiFiDetector_OnSignalStrengthChanged(HelperFunctions.WlanInfos newWiFiInfos)
		{
			ConnectedWifi.<>c__DisplayClass24_0 <>c__DisplayClass24_ = new ConnectedWifi.<>c__DisplayClass24_0();
			<>c__DisplayClass24_.<>4__this = this;
			<>c__DisplayClass24_.newWiFiInfos = newWiFiInfos;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass24_.<_wiFiDetector_OnSignalStrengthChanged>b__0), null);
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

		[CompilerGenerated]
		private void <OnConnectionStatusChanged>b__14_1()
		{
			this.OnAfterConnected(false, false);
		}

		[CompilerGenerated]
		private void <_wiFiDetector_OnWifiDisconnected>b__22_0(object o)
		{
			this.StatusMessage.Content = CyberGhost.Translations.Settings.ConnectedWifi__wiFiDetector_OnWifiDisconnected_SWITCHING_WIFIS;
		}
	}
}
