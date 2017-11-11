using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Translations;
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
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class General : UserControl, IComponentConnector, IDisposable, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly General.<>c <>9 = new General.<>c();

			public static Action <>9__4_1;

			public static SendOrPostCallback <>9__4_0;

			public static SendOrPostCallback <>9__5_0;

			internal void <OnNavigatedFrom>b__4_0(object state)
			{
				RegistrySettingsStorage arg_24_0 = SettingsHolder.get_Settings();
				Action arg_24_1;
				if ((arg_24_1 = General.<>c.<>9__4_1) == null)
				{
					arg_24_1 = (General.<>c.<>9__4_1 = new Action(General.<>c.<>9.<OnNavigatedFrom>b__4_1));
				}
				arg_24_0.IfHasChanges(arg_24_1);
			}

			internal void <OnNavigatedFrom>b__4_1()
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				new SettingsChangedEvent
				{
					SettingsTab = "general"
				}.FireEvent();
			}

			internal void <OnNavigatedTo>b__5_0(object state)
			{
				new SettingsTabClickedEvent
				{
					SettingsTab = (string.IsNullOrEmpty(ObjectHolder.SettingsDefaultName) ? "general" : ObjectHolder.SettingsDefaultName)
				}.FireEvent();
				ObjectHolder.SettingsDefaultName = null;
			}
		}

		public bool LangSemaphore;

		public int SupportCounter;

		internal ToggleButton BtnToggleAutoStart;

		internal ToggleButton BtnToggleAutoConnect;

		internal ComboBox AppProfile;

		internal ToggleButton BtnToggleInstallBetaVersions;

		internal ComboBox LanguageCombobox;

		internal Button ConfirmLang;

		internal Button SupportButton;

		private bool _contentLoaded;

		public General()
		{
			try
			{
				this.InitializeComponent();
			}
			catch (System.Exception)
			{
			}
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

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = General.<>c.<>9__4_0) == null)
			{
				arg_25_1 = (General.<>c.<>9__4_0 = new SendOrPostCallback(General.<>c.<>9.<OnNavigatedFrom>b__4_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.SupportButton.Visibility = Visibility.Hidden;
			this.CheckCurrentAutostartProfile(false);
			SynchronizationContext arg_38_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_38_1;
			if ((arg_38_1 = General.<>c.<>9__5_0) == null)
			{
				arg_38_1 = (General.<>c.<>9__5_0 = new SendOrPostCallback(General.<>c.<>9.<OnNavigatedTo>b__5_0));
			}
			arg_38_0.Post(arg_38_1, null);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		public void Dispose()
		{
		}

		private void ConfirmLang_Click(object sender, RoutedEventArgs e)
		{
			ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.Settings.General_LanguageCombobox_SelectionChanged_Language_changed, CyberGhost.Translations.Settings.General_LanguageCombobox_SelectionChanged_Please_restart_the_client_in_order_to_change_the_language_);
			ObjectHolder.MainForm.Exit(true);
		}

		private void TextBlock_MouseDown(object sender, MouseButtonEventArgs e)
		{
			this.SupportCounter++;
			if (this.SupportCounter > 5)
			{
				this.SupportButton.Visibility = Visibility.Visible;
			}
		}

		private void SupportButton_Click(object sender, RoutedEventArgs e)
		{
			Navigation.GoToPage("SettingsSubPages/Support", null, null);
		}

		private void OnAppProfileChanged(object sender, UserSelectionChangedEventArgs e)
		{
			this.CheckCurrentAutostartProfile(e.get_SelectionChangedByUser());
		}

		private void CheckCurrentAutostartProfile(bool userChanged)
		{
			if (userChanged && !SettingsHolder.get_Settings().IsResetting && this.AppProfile.SelectedItem != null)
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

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/general.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((Label)target).MouseDown += new MouseButtonEventHandler(this.TextBlock_MouseDown);
				return;
			case 2:
				this.BtnToggleAutoStart = (ToggleButton)target;
				return;
			case 3:
				this.BtnToggleAutoConnect = (ToggleButton)target;
				return;
			case 4:
				this.AppProfile = (ComboBox)target;
				this.AppProfile.AddHandler(UserSelectionChangedBehavior.UserSelectionChangedEvent, new UserSelectionChangedEventHandler(this.OnAppProfileChanged));
				return;
			case 5:
				this.BtnToggleInstallBetaVersions = (ToggleButton)target;
				return;
			case 6:
				this.LanguageCombobox = (ComboBox)target;
				return;
			case 7:
				this.ConfirmLang = (Button)target;
				this.ConfirmLang.Click += new RoutedEventHandler(this.ConfirmLang_Click);
				return;
			case 8:
				this.SupportButton = (Button)target;
				this.SupportButton.Click += new RoutedEventHandler(this.SupportButton_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
