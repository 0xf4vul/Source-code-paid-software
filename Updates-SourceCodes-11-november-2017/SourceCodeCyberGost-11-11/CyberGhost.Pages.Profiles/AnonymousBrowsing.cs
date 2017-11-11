using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.CustomEvent;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages.Profiles
{
	public class AnonymousBrowsing : UserControl, IComponentConnector, IContent
	{
		internal ComboBox BrowserStartOption;

		internal ComboBoxItem No;

		internal ComboBoxItem Yes;

		internal ComboBoxItem yesIncognito;

		internal ComboBox CountryComboBox;

		internal FeatureGroup FeatureGroup;

		internal ProfileInfoFooter InfoFooter;

		internal Button ConnectBtn;

		internal UpgradeButton UpgradeBtn;

		private bool _contentLoaded;

		public static CgApiServerList Servers
		{
			get;
			set;
		}

		public AnonymousBrowsing()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
			this.ConnectBtn.Command = new AsyncDelegateCommand(new Func<Task>(this.ConnectToServer), new Func<bool>(this.CanExecute));
			this.InfoFooter.Profile = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
			this.UpgradeBtn.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
			this.UpgradeBtn.SetVisibility(this.ConnectBtn, 13);
			this.FeatureGroup.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
			this.FeatureGroup.BindFeatures();
			GuiHelper.SetUpgradeBarVisiblity(this.FeatureGroup);
			GuiHelper.InitializeServerList(AnonymousBrowsing.Servers, this.CountryComboBox);
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Start_Ghost_Browsing : Profiles.anonBrowsing_connect);
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

		private Task ConnectToServer()
		{
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(13))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(13);
				return null;
			}
			ObjectHolder.ConnectionType = "manual";
			ObjectHolder.CurrentProfileTab = "none";
			return ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing(), false, false, true);
		}

		private bool CanExecute()
		{
			return true;
		}

		private void OnCountrySelectionChanged(object sender, UserSelectionChangedEventArgs e)
		{
			if (e.get_SelectionChangedByUser())
			{
				GuiHelper.CountryComboBoxChanged((ComboBox)sender);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/anonymousbrowsing.xaml", UriKind.Relative);
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
				this.BrowserStartOption = (ComboBox)target;
				return;
			case 2:
				this.No = (ComboBoxItem)target;
				return;
			case 3:
				this.Yes = (ComboBoxItem)target;
				return;
			case 4:
				this.yesIncognito = (ComboBoxItem)target;
				return;
			case 5:
				this.CountryComboBox = (ComboBox)target;
				this.CountryComboBox.AddHandler(UserSelectionChangedBehavior.UserSelectionChangedEvent, new UserSelectionChangedEventHandler(this.OnCountrySelectionChanged));
				return;
			case 6:
				this.FeatureGroup = (FeatureGroup)target;
				return;
			case 7:
				this.InfoFooter = (ProfileInfoFooter)target;
				return;
			case 8:
				this.ConnectBtn = (Button)target;
				return;
			case 9:
				this.UpgradeBtn = (UpgradeButton)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		static AnonymousBrowsing()
		{
			// Note: this type is marked as 'beforefieldinit'.
			AnonymousBrowsing.<Servers>k__BackingField = new CgApiServerList();
		}
	}
}
