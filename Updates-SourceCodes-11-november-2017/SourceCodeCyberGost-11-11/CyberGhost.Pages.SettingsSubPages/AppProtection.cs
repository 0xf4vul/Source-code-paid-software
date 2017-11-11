using CyberGhost.Communication;
using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using Microsoft.Win32;
using MobileConcepts.Components.CustomEvent;
using MobileConcepts.Helpers;
using MobileConcepts.Settings;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class AppProtection : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly AppProtection.<>c <>9 = new AppProtection.<>c();

			public static Action <>9__10_1;

			public static SendOrPostCallback <>9__10_0;

			public static SendOrPostCallback <>9__11_0;

			internal void <OnNavigatedFrom>b__10_0(object state)
			{
				RegistrySettingsStorage arg_24_0 = SettingsHolder.get_Settings();
				Action arg_24_1;
				if ((arg_24_1 = AppProtection.<>c.<>9__10_1) == null)
				{
					arg_24_1 = (AppProtection.<>c.<>9__10_1 = new Action(AppProtection.<>c.<>9.<OnNavigatedFrom>b__10_1));
				}
				arg_24_0.IfHasChanges(arg_24_1);
			}

			internal void <OnNavigatedFrom>b__10_1()
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				new SettingsChangedEvent
				{
					SettingsTab = "app-protection"
				}.FireEvent();
			}

			internal void <OnNavigatedTo>b__11_0(object state)
			{
				new SettingsTabClickedEvent
				{
					SettingsTab = "app-protection"
				}.FireEvent();
			}
		}

		internal ToggleButton AppProtectionState;

		internal Button AddApp;

		internal ComboBox AppProfile;

		internal Button RemoveSelected;

		internal ListBox LbExceptions;

		private bool _contentLoaded;

		public AppProtection()
		{
			this.InitializeComponent();
			this.AppProfile.Items.Clear();
			ComboBoxItem newItem = new ComboBoxItem
			{
				Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostBrowsing : CyberGhost.Translations.Home.HeadlinePrivateBrowsing),
				Tag = "ProfileAnonymousBrowsing"
			};
			this.AppProfile.Items.Add(newItem);
			newItem = new ComboBoxItem
			{
				Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostDownloads : CyberGhost.Translations.Home.HeaderAnonDownloading),
				Tag = "ProfileAnonymousDownloading"
			};
			this.AppProfile.Items.Add(newItem);
			newItem = new ComboBoxItem
			{
				Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostAntiCensor : CyberGhost.Translations.Home.HeaderAnti),
				Tag = "ProfileUncensoring"
			};
			this.AppProfile.Items.Add(newItem);
			newItem = new ComboBoxItem
			{
				Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? CyberGhost.Translations.Home.GhostPro : CyberGhost.Translations.Home.HeaderCustom),
				Tag = "ProfileCustom"
			};
			this.AppProfile.Items.Add(newItem);
			base.DataContext = SettingsHolder.get_Settings();
		}

		private void removeSelected_Click(object sender, RoutedEventArgs e)
		{
			if (this.LbExceptions.SelectedItem == null)
			{
				return;
			}
			string item = this.LbExceptions.SelectedItem.ToString();
			SettingsHolder.get_Settings().get_AppSandboxList().Remove(item);
			AppProtection.DisableAppProtection();
			if (SettingsHolder.get_Settings().get_AppProtection())
			{
				AppProtection.EnableAppProtection();
			}
		}

		private void addApp_Click(object sender, RoutedEventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog
			{
				DefaultExt = ".exe",
				Filter = CyberGhost.Translations.Settings.ApplicationFilter
			};
			if (openFileDialog.ShowDialog() != true)
			{
				return;
			}
			string fileName = openFileDialog.FileName;
			if (!fileName.EndsWith("CyberGhost.exe") && !fileName.EndsWith("BugReporterV2.exe") && !fileName.EndsWith("CyberGhost.Service.exe") && !fileName.EndsWith("PeLauncher.exe") && !fileName.EndsWith("wyUpdate.exe"))
			{
				if (!SettingsHolder.get_Settings().get_AppSandboxList().Contains(fileName))
				{
					SettingsHolder.get_Settings().get_AppSandboxList().Add(fileName);
				}
				if (SettingsHolder.get_Settings().get_AppProtection())
				{
					AppProtection.EnableAppProtection();
				}
				return;
			}
			ModernDialogExtension.ShowDialogOk("CyberGhost", CyberGhost.Translations.Settings.AppProtection_CatAddCyberGhost);
		}

		public static void EnableAppProtection()
		{
			foreach (string current in SettingsHolder.get_Settings().get_AppSandboxList())
			{
				PeLauncherOptions peLauncherOptions = new PeLauncherOptions
				{
					ExecuteableName = Path.GetFileName(current)
				};
				ObjectHolder.CyberGhostCom.SetPeLauncherState(peLauncherOptions, 1);
			}
		}

		public static void DisableAppProtection()
		{
			if (ObjectHolder.CyberGhostCom == null)
			{
				ObjectHolder.CyberGhostCom = new EventSender("CyherGhostPipe");
			}
			string text = Path.Combine(HelperFunctions.get_AppPath(), "PeLauncher.exe");
			PeLauncherOptions[] peLauncherStates = ObjectHolder.CyberGhostCom.GetPeLauncherStates(text);
			if (peLauncherStates != null)
			{
				PeLauncherOptions[] array = peLauncherStates;
				for (int i = 0; i < array.Length; i++)
				{
					PeLauncherOptions peLauncherOptions = array[i];
					ObjectHolder.CyberGhostCom.SetPeLauncherState(peLauncherOptions, 0);
				}
			}
		}

		private void ToggleButton_Checked(object sender, RoutedEventArgs e)
		{
			this.AppProtectionState.IsEnabled = true;
			if (((ToggleButton)sender).IsChecked == true)
			{
				AppProtection.EnableAppProtection();
				return;
			}
			AppProtection.DisableAppProtection();
		}

		private void LbExceptions_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			IList addedItems = e.AddedItems;
			this.RemoveSelected.IsEnabled = (addedItems.Count > 0);
		}

		private void OnAppProfileChanged(object sender, UserSelectionChangedEventArgs e)
		{
			this.CheckAppProfile(e.get_SelectionChangedByUser());
		}

		private void CheckAppProfile(bool userChangedSelection)
		{
			if (userChangedSelection && !SettingsHolder.get_Settings().IsResetting && this.AppProfile.SelectedItem != null)
			{
				if (!GuiHelper.IsProfileAvailableInPlan(((ComboBoxItem)this.AppProfile.SelectedItem).Tag.ToString()))
				{
					ConversionPopUpHelpers.ShowConversionPopUp(GuiHelper.ProfileStringToFeature(((ComboBoxItem)this.AppProfile.SelectedItem).Tag.ToString()));
					this.AppProfile.SelectedIndex = 0;
					return;
				}
				if (!((ComboBoxItem)this.AppProfile.SelectedItem).Tag.ToString().Equals("ProfileCustom"))
				{
					return;
				}
				if (SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerId() <= 0 && SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry() == null)
				{
					ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.Settings.General_AppProfile_OnSelectionChanged_Profile_is_not_yet_configured_, CyberGhost.Translations.Settings.General_AppProfile_OnSelectionChanged_Please_first_select_a_country_or_server_in_the_advanced_profile_);
					this.AppProfile.SelectedIndex = 0;
					return;
				}
			}
			else if (this.AppProfile.SelectedItem != null && !GuiHelper.IsProfileAvailableInPlan(((ComboBoxItem)this.AppProfile.SelectedItem).Tag.ToString()))
			{
				this.AppProfile.SelectedIndex = 0;
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = AppProtection.<>c.<>9__10_0) == null)
			{
				arg_25_1 = (AppProtection.<>c.<>9__10_0 = new SendOrPostCallback(AppProtection.<>c.<>9.<OnNavigatedFrom>b__10_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.CheckAppProfile(false);
			SynchronizationContext arg_2C_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_2C_1;
			if ((arg_2C_1 = AppProtection.<>c.<>9__11_0) == null)
			{
				arg_2C_1 = (AppProtection.<>c.<>9__11_0 = new SendOrPostCallback(AppProtection.<>c.<>9.<OnNavigatedTo>b__11_0));
			}
			arg_2C_0.Post(arg_2C_1, null);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/appprotection.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.AppProtectionState = (ToggleButton)target;
				this.AppProtectionState.Checked += new RoutedEventHandler(this.ToggleButton_Checked);
				this.AppProtectionState.Unchecked += new RoutedEventHandler(this.ToggleButton_Checked);
				return;
			case 2:
				this.AddApp = (Button)target;
				this.AddApp.Click += new RoutedEventHandler(this.addApp_Click);
				return;
			case 3:
				this.AppProfile = (ComboBox)target;
				this.AppProfile.AddHandler(UserSelectionChangedBehavior.UserSelectionChangedEvent, new UserSelectionChangedEventHandler(this.OnAppProfileChanged));
				return;
			case 4:
				this.RemoveSelected = (Button)target;
				this.RemoveSelected.Click += new RoutedEventHandler(this.removeSelected_Click);
				return;
			case 5:
				this.LbExceptions = (ListBox)target;
				this.LbExceptions.SelectionChanged += new SelectionChangedEventHandler(this.LbExceptions_OnSelectionChanged);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
