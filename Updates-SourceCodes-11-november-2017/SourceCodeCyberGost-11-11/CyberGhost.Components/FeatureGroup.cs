using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;

namespace CyberGhost.Components
{
	public class FeatureGroup : UserControl, IComponentConnector
	{
		internal DockPanel DockForFree;

		internal Button UpgradeButton;

		internal DockPanel DockForPremium;

		internal Label DockForPremiumLabel1;

		internal Button ResetSettings;

		internal TextBlock DockForPremiumLabel2;

		internal FeatureCheckBox FMalware;

		internal FeatureCheckBox FAddblock;

		internal FeatureCheckBox FTracking;

		internal FeatureCheckBox FZip;

		internal FeatureCheckBox FHttps;

		internal FeatureCheckBox FSpeed;

		private bool _contentLoaded;

		public CgBase CurrentProfile
		{
			get;
			set;
		}

		public FeatureGroup()
		{
			this.InitializeComponent();
		}

		public void SetProfileColor()
		{
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileNetwork()) || this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileWifi()))
			{
				this.DockForPremium.Background = (base.FindResource("BlueBaseBrush") as SolidColorBrush);
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileCustom()))
			{
				this.DockForPremium.Background = (base.FindResource("MangentaBaseBrush") as SolidColorBrush);
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing()))
			{
				this.DockForPremium.Background = (base.FindResource("YellowBaseBrush") as SolidColorBrush);
				if (Theming.CurrentTheme == Theming.Theme.Pro)
				{
					this.DockForPremiumLabel1.Foreground = (SolidColorBrush)new BrushConverter().ConvertFrom("#555555");
					this.ResetSettings.Foreground = (SolidColorBrush)new BrushConverter().ConvertFrom("#555555");
					this.DockForPremiumLabel2.Foreground = (SolidColorBrush)new BrushConverter().ConvertFrom("#555555");
				}
				else
				{
					this.DockForPremiumLabel1.Foreground = new SolidColorBrush(Colors.Black);
					this.ResetSettings.Foreground = new SolidColorBrush(Colors.Black);
					this.DockForPremiumLabel2.Foreground = new SolidColorBrush(Colors.Black);
				}
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading()))
			{
				this.DockForPremium.Background = (base.FindResource("PurpleBaseBrush") as SolidColorBrush);
			}
		}

		public void BindFeatures()
		{
			this.SetProfileColor();
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading()))
			{
				this.FMalware.Visibility = Visibility.Visible;
				this.FTracking.Visibility = Visibility.Visible;
				this.FSpeed.Visibility = Visibility.Visible;
				this.FMalware.SetValue(Grid.RowProperty, 1);
				this.FMalware.SetValue(Grid.ColumnProperty, 0);
				this.FTracking.SetValue(Grid.RowProperty, 2);
				this.FTracking.SetValue(Grid.ColumnProperty, 0);
				this.FSpeed.SetValue(Grid.RowProperty, 1);
				this.FSpeed.SetValue(Grid.ColumnProperty, 1);
				this.FAddblock.Visibility = Visibility.Collapsed;
				this.FHttps.Visibility = Visibility.Collapsed;
				this.FZip.Visibility = Visibility.Collapsed;
			}
			else
			{
				this.FMalware.SetValue(Grid.RowProperty, 1);
				this.FMalware.SetValue(Grid.ColumnProperty, 0);
				this.FAddblock.SetValue(Grid.RowProperty, 2);
				this.FAddblock.SetValue(Grid.ColumnProperty, 0);
				this.FTracking.SetValue(Grid.RowProperty, 3);
				this.FTracking.SetValue(Grid.ColumnProperty, 0);
				this.FZip.SetValue(Grid.RowProperty, 1);
				this.FZip.SetValue(Grid.ColumnProperty, 1);
				this.FHttps.SetValue(Grid.RowProperty, 2);
				this.FHttps.SetValue(Grid.ColumnProperty, 1);
				this.FSpeed.SetValue(Grid.RowProperty, 3);
				this.FSpeed.SetValue(Grid.ColumnProperty, 1);
				this.FMalware.Visibility = Visibility.Visible;
				this.FTracking.Visibility = Visibility.Visible;
				this.FSpeed.Visibility = Visibility.Visible;
				this.FAddblock.Visibility = Visibility.Visible;
				this.FHttps.Visibility = Visibility.Visible;
				this.FZip.Visibility = Visibility.Visible;
			}
			this.FMalware.DataContext = this.CurrentProfile;
			this.FAddblock.DataContext = this.CurrentProfile;
			this.FHttps.DataContext = this.CurrentProfile;
			this.FTracking.DataContext = this.CurrentProfile;
			this.FZip.DataContext = this.CurrentProfile;
			this.FSpeed.DataContext = this.CurrentProfile;
			this.FMalware.FeatureBoxLabel.Content = Profiles.malware_head;
			this.FMalware.Premium = true;
			this.FMalware.Checked = this.CurrentProfile.get_FeatureMalware();
			this.FMalware.FeatureBoxButton.IsChecked = new bool?(this.FMalware.Checked);
			this.FMalware.Ident = "FeatureMalware";
			this.FTracking.FeatureBoxLabel.Content = Profiles.tracking_head;
			this.FTracking.Premium = true;
			this.FTracking.Checked = this.CurrentProfile.get_FeatureTracking();
			this.FTracking.FeatureBoxButton.IsChecked = new bool?(this.FTracking.Checked);
			this.FTracking.Ident = "FeatureTracking";
			this.FSpeed.FeatureBoxLabel.Content = Profiles.speed_head;
			this.FSpeed.Premium = true;
			this.FSpeed.Checked = ObjectHolder.CurrentUser.HasUserAccessToFeature(9);
			this.FSpeed.FeatureBoxButton.IsChecked = new bool?(this.FSpeed.Checked);
			this.FSpeed.Ident = "FeatureSpeed";
			this.FAddblock.FeatureBoxLabel.Content = Profiles.ads_head;
			this.FAddblock.Premium = true;
			this.FAddblock.Checked = this.CurrentProfile.get_FeatureAdBlock();
			this.FAddblock.FeatureBoxButton.IsChecked = new bool?(this.FAddblock.Checked);
			this.FAddblock.Ident = "FeatureAdBlock";
			this.FHttps.FeatureBoxLabel.Content = Profiles.https_everywhere;
			this.FHttps.Premium = true;
			this.FHttps.Checked = this.CurrentProfile.get_FeatureHttps();
			this.FHttps.FeatureBoxButton.IsChecked = new bool?(this.FHttps.Checked);
			this.FHttps.Ident = "FeatureHttps";
			this.FZip.FeatureBoxLabel.Content = Profiles.compression_head;
			this.FZip.Premium = true;
			this.FZip.Checked = this.CurrentProfile.get_FeatureZip();
			this.FZip.FeatureBoxButton.IsChecked = new bool?(this.FZip.Checked);
			this.FZip.Ident = "FeatureZip";
		}

		public void ResetFeatureSettings()
		{
			CgBase cgBase = CgApiHelper.SetFeaturesByProfile(this.CurrentProfile, null);
			if (cgBase != null)
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				this.FMalware.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureMalware());
				this.FAddblock.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureAdBlock());
				this.FHttps.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureHttps());
				this.FTracking.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureTracking());
				this.FZip.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureZip());
				this.FSpeed.FeatureBoxButton.IsChecked = new bool?(ObjectHolder.CurrentUser.HasUserAccessToFeature(9));
			}
		}

		[AsyncStateMachine(typeof(FeatureGroup.<UpgradeButton_OnClick>d__8))]
		private void UpgradeButton_OnClick(object sender, RoutedEventArgs e)
		{
			FeatureGroup.<UpgradeButton_OnClick>d__8 <UpgradeButton_OnClick>d__;
			<UpgradeButton_OnClick>d__.<>4__this = this;
			<UpgradeButton_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpgradeButton_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpgradeButton_OnClick>d__.<>t__builder;
			<>t__builder.Start<FeatureGroup.<UpgradeButton_OnClick>d__8>(ref <UpgradeButton_OnClick>d__);
		}

		private void ResetSettings_OnClick(object sender, RoutedEventArgs e)
		{
			this.ResetFeatureSettings();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/featuregroup.xaml", UriKind.Relative);
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
				this.DockForFree = (DockPanel)target;
				return;
			case 2:
				this.UpgradeButton = (Button)target;
				this.UpgradeButton.Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			case 3:
				this.DockForPremium = (DockPanel)target;
				return;
			case 4:
				this.DockForPremiumLabel1 = (Label)target;
				return;
			case 5:
				this.ResetSettings = (Button)target;
				this.ResetSettings.Click += new RoutedEventHandler(this.ResetSettings_OnClick);
				return;
			case 6:
				this.DockForPremiumLabel2 = (TextBlock)target;
				return;
			case 7:
				this.FMalware = (FeatureCheckBox)target;
				return;
			case 8:
				this.FAddblock = (FeatureCheckBox)target;
				return;
			case 9:
				this.FTracking = (FeatureCheckBox)target;
				return;
			case 10:
				this.FZip = (FeatureCheckBox)target;
				return;
			case 11:
				this.FHttps = (FeatureCheckBox)target;
				return;
			case 12:
				this.FSpeed = (FeatureCheckBox)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
