using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices.Helpers;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Connection : UserControl, IComponentConnector, IDisposable, IContent
	{
		public class ContextHelper
		{
			public SettingsHolder Settings
			{
				get;
				set;
			}

			public bool HasHttpsEverywhere
			{
				get;
				set;
			}

			public bool HasNotHttpsEverywhere
			{
				get;
				set;
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Connection.<>c <>9 = new Connection.<>c();

			public static Action <>9__5_1;

			public static SendOrPostCallback <>9__5_0;

			public static SendOrPostCallback <>9__6_0;

			internal void <OnNavigatedFrom>b__5_0(object state)
			{
				RegistrySettingsStorage arg_24_0 = SettingsHolder.get_Settings();
				Action arg_24_1;
				if ((arg_24_1 = Connection.<>c.<>9__5_1) == null)
				{
					arg_24_1 = (Connection.<>c.<>9__5_1 = new Action(Connection.<>c.<>9.<OnNavigatedFrom>b__5_1));
				}
				arg_24_0.IfHasChanges(arg_24_1);
			}

			internal void <OnNavigatedFrom>b__5_1()
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				new SettingsChangedEvent
				{
					SettingsTab = "connection"
				}.FireEvent();
			}

			internal void <OnNavigatedTo>b__6_0(object state)
			{
				new SettingsTabClickedEvent
				{
					SettingsTab = "connection"
				}.FireEvent();
			}
		}

		internal ToggleButton BtnToggleOverwriteSystemNs;

		internal ToggleButton BtnTogglePreferTcp;

		internal ToggleButton BtnToggleRandomPort;

		internal Button NetworkCard;

		private bool _contentLoaded;

		public Connection()
		{
			this.InitializeComponent();
			CyberGhost.Pages.Settings.SettingsChanged += new CyberGhost.Pages.Settings.SettingsChangedEventHandler(this.Settings_SettingsChanged);
			Connection.ContextHelper dataContext = new Connection.ContextHelper
			{
				Settings = SettingsHolder.get_Settings()
			};
			base.DataContext = dataContext;
		}

		public void Dispose()
		{
			CyberGhost.Pages.Settings.SettingsChanged -= new CyberGhost.Pages.Settings.SettingsChangedEventHandler(this.Settings_SettingsChanged);
		}

		private void Settings_SettingsChanged(object sender, SettingsChangedEventHandlerArgs args)
		{
			if (sender != null && args != null)
			{
				SettingsHolder settingsHolder = args.SettingsHolder;
				this.BtnToggleOverwriteSystemNs.IsChecked = new bool?(settingsHolder.get_OverwriteSystemNs());
				this.BtnTogglePreferTcp.IsChecked = new bool?(settingsHolder.get_PreferTcp());
				this.BtnToggleRandomPort.IsChecked = new bool?(settingsHolder.get_RandomPort());
				return;
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Connection.<>c.<>9__5_0) == null)
			{
				arg_25_1 = (Connection.<>c.<>9__5_0 = new SendOrPostCallback(Connection.<>c.<>9.<OnNavigatedFrom>b__5_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Connection.<>c.<>9__6_0) == null)
			{
				arg_25_1 = (Connection.<>c.<>9__6_0 = new SendOrPostCallback(Connection.<>c.<>9.<OnNavigatedTo>b__6_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private async void networkCard_Click(object sender, RoutedEventArgs e)
		{
			if (!Helpers.IsTapV9Installed("9.0.0.9", false))
			{
				await Helpers.ReInstallTapV9Driver(Constants.get_OpenVpnBinPath());
			}
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.CorrectTapProtocolls(SettingsHolder.get_Settings().get_DisableIpV6Protocol());
				if (!SettingsHolder.get_Settings().get_TapFallbackMode())
				{
					ObjectHolder.CyberGhostCom.SetTapAdapterMediaStatus(1);
				}
				ObjectHolder.CyberGhostCom.SetTapAdapterMtu(1450);
			}
			ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.General.Connection_networkCard_Click_Networkcard, CyberGhost.Translations.General.Connection_networkCard_Click_Your_networkcard_has_successfully_been_repaired_);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/connection.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.BtnToggleOverwriteSystemNs = (ToggleButton)target;
				return;
			case 2:
				this.BtnTogglePreferTcp = (ToggleButton)target;
				return;
			case 3:
				this.BtnToggleRandomPort = (ToggleButton)target;
				return;
			case 4:
				this.NetworkCard = (Button)target;
				this.NetworkCard.Click += new RoutedEventHandler(this.networkCard_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
