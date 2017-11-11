using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
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
	public class Network : UserControl, IComponentConnector, IContent
	{
		internal FeatureGroup FeatureGroup;

		internal ProfileInfoFooter InfoFooter;

		internal Button ConnectBtn;

		internal UpgradeButton UpgradeBtn;

		private bool _contentLoaded;

		public Network()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings().get_ProfileNetwork();
			this.ConnectBtn.Command = new AsyncDelegateCommand(new Func<Task>(this.ConnectToServer), new Func<bool>(this.CanExecute));
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileNetwork();
			this.FeatureGroup.CurrentProfile = SettingsHolder.get_Settings().get_ProfileNetwork();
			this.FeatureGroup.BindFeatures();
			this.InfoFooter.Profile = SettingsHolder.get_Settings().get_ProfileNetwork();
			this.UpgradeBtn.CurrentProfile = SettingsHolder.get_Settings().get_ProfileNetwork();
			this.UpgradeBtn.SetVisibility(this.ConnectBtn, 17);
			GuiHelper.SetUpgradeBarVisiblity(this.FeatureGroup);
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Start_Ghost_Network : Profiles.NetworkConnect);
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

		public Task ConnectToServer()
		{
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(17))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(17);
				return null;
			}
			ObjectHolder.ConnectionType = "manual";
			ObjectHolder.CurrentProfileTab = "none";
			return ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileNetwork(), false, false, true);
		}

		private bool CanExecute()
		{
			return true;
		}

		private void FeatureGroup_Loaded(object sender, RoutedEventArgs e)
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/network.xaml", UriKind.Relative);
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
				this.FeatureGroup = (FeatureGroup)target;
				return;
			case 2:
				this.InfoFooter = (ProfileInfoFooter)target;
				return;
			case 3:
				this.ConnectBtn = (Button)target;
				return;
			case 4:
				this.UpgradeBtn = (UpgradeButton)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
