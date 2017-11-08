using Catel.IoC;
using Catel.Windows.Controls;
using GoldenFrogUT.Utilities;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Markup;
using System.Windows.Navigation;

namespace VyprVPN.Views.PreferencesWindow.DNS
{
	public class DNSView : UserControl, IComponentConnector
	{
		internal Grid DnsViewRootGrid;

		internal RadioButton VyprDnsRadioButton;

		private bool _contentLoaded;

		public DNSView()
		{
			this.InitializeComponent();
		}

		private void Hyperlink_OnRequestNavigate(object sender, RequestNavigateEventArgs e)
		{
			string absoluteUri = e.Uri.AbsoluteUri;
			ServiceLocatorExtensions.ResolveType<IGeneralUtilities>(ServiceLocator.get_Default(), null).StartWebUri(absoluteUri);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/dns/dnsview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.DnsViewRootGrid = (Grid)target;
				return;
			case 2:
				this.VyprDnsRadioButton = (RadioButton)target;
				return;
			case 3:
				((Hyperlink)target).RequestNavigate += new RequestNavigateEventHandler(this.Hyperlink_OnRequestNavigate);
				return;
			case 4:
				((Hyperlink)target).RequestNavigate += new RequestNavigateEventHandler(this.Hyperlink_OnRequestNavigate);
				return;
			case 5:
				((Hyperlink)target).RequestNavigate += new RequestNavigateEventHandler(this.Hyperlink_OnRequestNavigate);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using System;
using System.Runtime.CompilerServices;
using VyprVPN.Classes;
using VyprVPN.Properties;

namespace VyprVPN.Views.PreferencesWindow.DNS
{
	public class DNSViewModel : VyprViewModel
	{
		public static readonly PropertyData UseVyprDnsProperty = ModelBase.RegisterProperty<bool>("UseVyprDns", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData AlternateDnsEnabledProperty = ModelBase.RegisterProperty("AlternateDnsEnabled", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData AlternateDnsPrimaryProperty = ModelBase.RegisterProperty("AlternateDnsPrimary", typeof(string), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData AlternateDnsSecondaryProperty = ModelBase.RegisterProperty("AlternateDnsSecondary", typeof(string), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData DnsLeakProtectionEnabledProperty = ModelBase.RegisterProperty("DnsLeakProtectionEnabled", typeof(bool), null, null, true, true, true);

		public bool UseVyprDns
		{
			get
			{
				return base.GetValue<bool>(DNSViewModel.UseVyprDnsProperty);
			}
			set
			{
				this.PreferencesModel.AlternateDnsEnabled = !value;
				base.SetValue(DNSViewModel.UseVyprDnsProperty, value);
			}
		}

		[Model]
		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(DNSViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(DNSViewModel.PreferencesModelProperty, value);
			}
		}

		public Uri GoldenFrogUri
		{
			get
			{
				Uri result;
				Uri.TryCreate(Url.GoldenFrog, UriKind.Absolute, out result);
				return result;
			}
		}

		public Uri VyprDnsUri
		{
			get
			{
				Uri result;
				Uri.TryCreate(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.VyprDNS, "faq", "zeroknowledgevyprdnsservice"), UriKind.Absolute, out result);
				return result;
			}
		}

		public Uri PrivacyUri
		{
			get
			{
				Uri result;
				Uri.TryCreate(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.Privacy, "faq", "privacy"), UriKind.Absolute, out result);
				return result;
			}
		}

		[ViewModelToModel("PreferencesModel", "AlternateDnsEnabled"), CompilerGenerated]
		public bool AlternateDnsEnabled
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(DNSViewModel.AlternateDnsEnabledProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(DNSViewModel.AlternateDnsEnabledProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "AlternateDnsPrimary"), CompilerGenerated]
		public string AlternateDnsPrimary
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<string>(DNSViewModel.AlternateDnsPrimaryProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(DNSViewModel.AlternateDnsPrimaryProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "AlternateDnsSecondary"), CompilerGenerated]
		public string AlternateDnsSecondary
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<string>(DNSViewModel.AlternateDnsSecondaryProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(DNSViewModel.AlternateDnsSecondaryProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "DnsLeakProtectionEnabled"), CompilerGenerated]
		public bool DnsLeakProtectionEnabled
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(DNSViewModel.DnsLeakProtectionEnabledProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(DNSViewModel.DnsLeakProtectionEnabledProperty, value);
			}
		}

		public DNSViewModel()
		{
			try
			{
				this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
				this.UseVyprDns = !this.PreferencesModel.AlternateDnsEnabled;
				ServiceLocatorExtensions.RegisterInstance<DNSViewModel>(ObjectExtensions.GetServiceLocator(this), this, null);
			}
			catch (Exception ex)
			{
				base.logger.Log(3, "Error initializing DNSViewModel: {0}", new object[]
				{
					ex
				});
			}
			base.logger.Log(0, "DNSViewModel instantiated");
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("VyprVPNController"))
			{
				base.RaisePropertyChanged("VyprDnsUri");
			}
			if (e.PropertyName.Equals("VyprVPNController"))
			{
				base.RaisePropertyChanged("PrivacyUri");
			}
		}
	}
}
