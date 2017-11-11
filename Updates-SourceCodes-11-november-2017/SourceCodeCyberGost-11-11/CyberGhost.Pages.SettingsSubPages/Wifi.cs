using CyberGhost.Components.Mixpanel;
using CyberGhost.Components.Popups;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.SettingsItems;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.CustomEvent;
using MobileConcepts.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Wifi : UserControl, IComponentConnector, IStyleConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Wifi.<>c <>9 = new Wifi.<>c();

			public static SendOrPostCallback <>9__3_0;

			public static Action <>9__4_1;

			public static SendOrPostCallback <>9__4_0;

			internal void <OnNavigatedTo>b__3_0(object state)
			{
				new SettingsTabClickedEvent
				{
					SettingsTab = "wi-fi"
				}.FireEvent();
			}

			internal void <OnNavigatingFrom>b__4_0(object state)
			{
				RegistrySettingsStorage arg_24_0 = SettingsHolder.get_Settings();
				Action arg_24_1;
				if ((arg_24_1 = Wifi.<>c.<>9__4_1) == null)
				{
					arg_24_1 = (Wifi.<>c.<>9__4_1 = new Action(Wifi.<>c.<>9.<OnNavigatingFrom>b__4_1));
				}
				arg_24_0.IfHasChanges(arg_24_1);
			}

			internal void <OnNavigatingFrom>b__4_1()
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				new SettingsChangedEvent
				{
					SettingsTab = "wi-fi"
				}.FireEvent();
			}
		}

		internal DataGrid WifiGrid;

		internal ComboBox HotspotComboBox;

		private bool _contentLoaded;

		public Wifi()
		{
			base.DataContext = SettingsHolder.get_Settings().get_ProfileWifi();
			this.InitializeComponent();
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.WifiGrid.ItemsSource = SettingsHolder.get_Settings().get_KnownSsids();
			SynchronizationContext arg_3A_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_3A_1;
			if ((arg_3A_1 = Wifi.<>c.<>9__3_0) == null)
			{
				arg_3A_1 = (Wifi.<>c.<>9__3_0 = new SendOrPostCallback(Wifi.<>c.<>9.<OnNavigatedTo>b__3_0));
			}
			arg_3A_0.Post(arg_3A_1, null);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Wifi.<>c.<>9__4_0) == null)
			{
				arg_25_1 = (Wifi.<>c.<>9__4_0 = new SendOrPostCallback(Wifi.<>c.<>9.<OnNavigatingFrom>b__4_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		private void OnUserSelectionChanged(object sender, UserSelectionChangedEventArgs e)
		{
			if (e.get_SelectionChangedByUser())
			{
				if (this.WifiGrid.SelectedItems.Count == 0)
				{
					return;
				}
				SsidItem ssidItem = (SsidItem)this.WifiGrid.SelectedItems[0];
				if (ssidItem == null)
				{
					return;
				}
				if (e.get_AddedItems().Count == 0)
				{
					return;
				}
				SsidAction ssidAction = (SsidAction)e.get_AddedItems()[0];
				WifiPopup.WifiConnectionResult action = WifiPopup.WifiConnectionResult.Ask;
				if (ssidAction == 2)
				{
					action = WifiPopup.WifiConnectionResult.Always;
				}
				else if (ssidAction == 3)
				{
					action = WifiPopup.WifiConnectionResult.Disconnect;
				}
				else if (ssidAction == null)
				{
					action = WifiPopup.WifiConnectionResult.Never;
				}
				WifiHelpers.SetStateForWifiOrAddNewWifi(ssidItem.get_Ssid(), action);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/wifi.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.WifiGrid = (DataGrid)target;
				return;
			}
			if (connectionId != 3)
			{
				this._contentLoaded = true;
				return;
			}
			this.HotspotComboBox = (ComboBox)target;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 2)
			{
				((ComboBox)target).AddHandler(UserSelectionChangedBehavior.UserSelectionChangedEvent, new UserSelectionChangedEventHandler(this.OnUserSelectionChanged));
			}
		}
	}
}
