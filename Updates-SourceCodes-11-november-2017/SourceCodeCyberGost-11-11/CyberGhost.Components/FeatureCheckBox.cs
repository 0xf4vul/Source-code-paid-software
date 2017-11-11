using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class FeatureCheckBox : UserControl, IComponentConnector
	{
		internal ToggleButton FeatureBoxButton;

		internal Label FeatureBoxLabel;

		private bool _contentLoaded;

		public new object DataContext
		{
			get
			{
				return base.DataContext;
			}
			set
			{
				base.DataContext = value;
				this.ApplyTheme();
			}
		}

		public bool Checked
		{
			get;
			set;
		}

		public int Id
		{
			get;
			set;
		}

		public string Ident
		{
			get;
			set;
		}

		public bool Premium
		{
			get;
			set;
		}

		private CgApiFeature.Feature CurrentFeature
		{
			get;
			set;
		}

		public FeatureCheckBox()
		{
			this.InitializeComponent();
		}

		private void ApplyTheme()
		{
			if (this.DataContext is CgProfileAnonymousBrowsing)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_AnonymousBrowsing") as Style);
				return;
			}
			if (this.DataContext is CgProfileAnonymousDownloading)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_Torrent") as Style);
				return;
			}
			if (this.DataContext is CgProfileCustom)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_Custom") as Style);
				return;
			}
			if (this.DataContext is CgProfileNetwork)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_Network") as Style);
				return;
			}
			if (this.DataContext is CgProfileWifi)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_Network") as Style);
				return;
			}
			if (this.DataContext is CgProfileUnblock)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_AnonymousBrowsing") as Style);
				return;
			}
			if (this.DataContext is CgProfileUncensoring)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_AnonymousBrowsing") as Style);
			}
		}

		public void FeatureBoxButton_Click(object sender, RoutedEventArgs e)
		{
			try
			{
				if (this.FeatureBoxButton.IsChecked.HasValue)
				{
					this.Checked = this.FeatureBoxButton.IsChecked.Value;
				}
				if (this.DataContext is CgProfileAnonymousBrowsing)
				{
					CgProfileAnonymousBrowsing profileAnonymousBrowsing = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
					this.SetFeaturesInSetting(profileAnonymousBrowsing);
				}
				if (this.DataContext is CgProfileAnonymousDownloading)
				{
					CgProfileAnonymousDownloading profileAnonymousDownloading = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
					this.SetFeaturesInSetting(profileAnonymousDownloading);
				}
				if (this.DataContext is CgProfileCustom)
				{
					CgProfileCustom profileCustom = SettingsHolder.get_Settings().get_ProfileCustom();
					this.SetFeaturesInSetting(profileCustom);
				}
				if (this.DataContext is CgProfileNetwork)
				{
					CgProfileNetwork profileNetwork = SettingsHolder.get_Settings().get_ProfileNetwork();
					this.SetFeaturesInSetting(profileNetwork);
				}
				if (this.DataContext is CgProfileUnblock)
				{
					CgProfileUnblock profileUnblock = SettingsHolder.get_Settings().get_ProfileUnblock();
					this.SetFeaturesInSetting(profileUnblock);
				}
				if (this.DataContext is CgProfileUncensoring)
				{
					CgProfileUncensoring profileUncensoring = SettingsHolder.get_Settings().get_ProfileUncensoring();
					this.SetFeaturesInSetting(profileUncensoring);
				}
				if (this.DataContext is CgProfileWifi)
				{
					CgProfileWifi profileWifi = SettingsHolder.get_Settings().get_ProfileWifi();
					this.SetFeaturesInSetting(profileWifi);
				}
				if (this.Ident.Equals("FeatureSpeed"))
				{
					this.CurrentFeature = 9;
				}
				else if (this.Ident.Equals("FeatureMalware"))
				{
					this.CurrentFeature = 2;
				}
				else if (this.Ident.Equals("FeatureAdBlock"))
				{
					this.CurrentFeature = 1;
				}
				else if (this.Ident.Equals("FeatureTracking"))
				{
					this.CurrentFeature = 4;
				}
				else if (this.Ident.Equals("FeatureZip"))
				{
					this.CurrentFeature = 3;
				}
				else if (this.Ident.Equals("FeatureHttps"))
				{
					this.CurrentFeature = 8;
				}
				this.SetConversionPopUp(this.CurrentFeature);
				if (this.CurrentFeature == 9)
				{
					this.FeatureBoxButton.IsChecked = new bool?(!ObjectHolder.CurrentUser.IsFreeUser());
					this.FeatureBoxButton.IsEnabled = ObjectHolder.CurrentUser.IsFreeUser();
				}
			}
			catch (Exception arg_1FD_0)
			{
				HelperFunctions.DebugLine(arg_1FD_0.Message);
			}
		}

		private void SetFeaturesInSetting(CgBase profile)
		{
			if (this.Ident == "FeatureMalware")
			{
				profile.set_FeatureMalware(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(2));
			}
			if (this.Ident == "FeatureAdBlock")
			{
				profile.set_FeatureAdBlock(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(1));
			}
			if (this.Ident == "FeatureTracking")
			{
				profile.set_FeatureTracking(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(4));
			}
			if (this.Ident == "FeatureZip")
			{
				profile.set_FeatureZip(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(3));
			}
			if (this.Ident == "FeatureHttps")
			{
				profile.set_FeatureHttps(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(8));
			}
			SettingsHolder.get_Settings().SaveSettingsAsync(false);
		}

		private void SetConversionPopUp(CgApiFeature.Feature currentFeature)
		{
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(currentFeature))
			{
				this.FeatureBoxButton.IsChecked = new bool?(false);
				ConversionPopUpHelpers.ShowConversionPopUp(currentFeature);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/components/featurecheckbox.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.FeatureBoxButton = (ToggleButton)target;
				this.FeatureBoxButton.Click += new RoutedEventHandler(this.FeatureBoxButton_Click);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.FeatureBoxLabel = (Label)target;
		}
	}
}
