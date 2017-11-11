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
					this.TrafficData = GuiHelper.ResetTrafficData();
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
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(delegate
				{
					this.OnAfterConnected(false, false);
				}));
				return;
			}
			base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(delegate
			{
				this.TrafficData = GuiHelper.ResetTrafficData();
			}));
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
	}
}
