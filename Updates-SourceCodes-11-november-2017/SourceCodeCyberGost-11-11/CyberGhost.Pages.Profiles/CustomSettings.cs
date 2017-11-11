using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Profiles
{
	public class CustomSettings : UserControl, IComponentConnector, IContent
	{
		internal Label SelectedLabel;

		internal Label ServerOption;

		internal Image ServerImage;

		internal FeatureGroup FeatureGroup;

		internal ProfileInfoFooter InfoFooter;

		internal Button ConnectBtn;

		internal UpgradeButton UpgradeBtn;

		private bool _contentLoaded;

		public ComboBoxItem SelectedItem
		{
			get;
			set;
		}

		public CustomSettings()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings().get_ProfileCustom();
			this.ConnectBtn.Command = new AsyncDelegateCommand(new Func<Task>(this.ConnectToServer), new Func<bool>(this.CanExecute));
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.UpgradeBtn.CurrentProfile = SettingsHolder.get_Settings().get_ProfileCustom();
			this.UpgradeBtn.SetVisibility(this.ConnectBtn, 16);
			this.InfoFooter.Profile = SettingsHolder.get_Settings().get_ProfileCustom();
			this.ConnectBtn.IsEnabled = false;
			this.SelectedLabel.Visibility = Visibility.Hidden;
			if (SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerId() > 0 || !string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry()) || !string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountryDisplay()))
			{
				this.SelectedLabel.Visibility = Visibility.Visible;
				this.ConnectBtn.IsEnabled = true;
			}
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			this.ServerOption.Content = SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerName();
			if (string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerName()))
			{
				this.ServerOption.Content = SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerDisplayName();
			}
			string themedImage = Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry())));
			if (string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry()))
			{
				themedImage = Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountryDisplay())));
			}
			if (!string.IsNullOrEmpty(themedImage) && File.Exists(themedImage))
			{
				this.ServerImage.Visibility = Visibility.Visible;
				this.ServerImage.Source = new BitmapImage(new Uri(string.Format(themedImage, new object[0])));
			}
			else
			{
				this.ServerImage.Visibility = Visibility.Hidden;
			}
			this.FeatureGroup.CurrentProfile = SettingsHolder.get_Settings().get_ProfileCustom();
			this.FeatureGroup.BindFeatures();
			ObjectHolder.CurrentProfileTab = "extra features";
			GuiHelper.SetUpgradeBarVisiblity(this.FeatureGroup);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		private Task ConnectToServer()
		{
			if (ObjectHolder.CurrentUser.HasUserAccessToFeature(16))
			{
				ObjectHolder.ConnectionType = "automatic";
				if (SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerId() > 0)
				{
					ObjectHolder.ConnectionType = "specific server";
				}
				if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry()))
				{
					ObjectHolder.ConnectionType = "specific country";
				}
				return ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileCustom(), false, false, true);
			}
			GuiHelper.ShowUpgradeDialog(SettingsHolder.get_Settings().get_ProfileCustom().GetBaseName());
			return null;
		}

		private bool CanExecute()
		{
			return true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/custom_settings.xaml", UriKind.Relative);
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
				this.SelectedLabel = (Label)target;
				return;
			case 2:
				this.ServerOption = (Label)target;
				return;
			case 3:
				this.ServerImage = (Image)target;
				return;
			case 4:
				this.FeatureGroup = (FeatureGroup)target;
				return;
			case 5:
				this.InfoFooter = (ProfileInfoFooter)target;
				return;
			case 6:
				this.ConnectBtn = (Button)target;
				return;
			case 7:
				this.UpgradeBtn = (UpgradeButton)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
