using CyberGhost.Components.Mixpanel;
using CyberGhost.Settings;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Proxy : UserControl, IComponentConnector, IContent
	{
		public class BooleanToStringValueConverter : IValueConverter
		{
			public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
			{
				if (System.Convert.ToString(value).Equals(System.Convert.ToString(parameter)))
				{
					return true;
				}
				return false;
			}

			public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
			{
				if (System.Convert.ToBoolean(value))
				{
					return parameter;
				}
				return null;
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Proxy.<>c <>9 = new Proxy.<>c();

			public static Action <>9__6_1;

			public static SendOrPostCallback <>9__6_0;

			public static SendOrPostCallback <>9__7_0;

			internal void <OnNavigatedFrom>b__6_0(object state)
			{
				RegistrySettingsStorage arg_24_0 = SettingsHolder.get_Settings();
				Action arg_24_1;
				if ((arg_24_1 = Proxy.<>c.<>9__6_1) == null)
				{
					arg_24_1 = (Proxy.<>c.<>9__6_1 = new Action(Proxy.<>c.<>9.<OnNavigatedFrom>b__6_1));
				}
				arg_24_0.IfHasChanges(arg_24_1);
			}

			internal void <OnNavigatedFrom>b__6_1()
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				new SettingsChangedEvent
				{
					SettingsTab = "proxy"
				}.FireEvent();
			}

			internal void <OnNavigatedTo>b__7_0(object state)
			{
				new SettingsTabClickedEvent
				{
					SettingsTab = "proxy"
				}.FireEvent();
			}
		}

		internal RadioButton ProxyNone;

		internal RadioButton ProxySocks5;

		internal RadioButton ProxyHttp;

		internal ComboBox ProxyAuthType;

		internal TextBox ProxyAddress;

		internal TextBox ProxyPort;

		internal TextBox ProxyUsername;

		internal PasswordBox PasswordBox;

		private bool _contentLoaded;

		public Proxy()
		{
			this.InitializeComponent();
		}

		private void ProxyNone_Checked(object sender, RoutedEventArgs e)
		{
			this.ProxyAddress.IsEnabled = false;
			this.ProxyAuthType.IsEnabled = false;
			this.ProxyPort.IsEnabled = false;
			this.ProxyUsername.IsEnabled = false;
			this.PasswordBox.IsEnabled = false;
		}

		private void ProxySocks5_Checked(object sender, RoutedEventArgs e)
		{
			this.ProxyAddress.IsEnabled = true;
			this.ProxyAuthType.IsEnabled = false;
			this.ProxyPort.IsEnabled = true;
			this.ProxyUsername.IsEnabled = false;
			this.PasswordBox.IsEnabled = false;
		}

		private void ProxyHttp_Checked(object sender, RoutedEventArgs e)
		{
			this.ProxyAddress.IsEnabled = true;
			this.ProxyAuthType.IsEnabled = true;
			this.ProxyPort.IsEnabled = true;
			this.ProxyUsername.IsEnabled = true;
			this.PasswordBox.IsEnabled = true;
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Proxy.<>c.<>9__6_0) == null)
			{
				arg_25_1 = (Proxy.<>c.<>9__6_0 = new SendOrPostCallback(Proxy.<>c.<>9.<OnNavigatedFrom>b__6_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Proxy.<>c.<>9__7_0) == null)
			{
				arg_25_1 = (Proxy.<>c.<>9__7_0 = new SendOrPostCallback(Proxy.<>c.<>9.<OnNavigatedTo>b__7_0));
			}
			arg_25_0.Post(arg_25_1, null);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/proxy.xaml", UriKind.Relative);
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
				this.ProxyNone = (RadioButton)target;
				this.ProxyNone.Click += new RoutedEventHandler(this.ProxyNone_Checked);
				return;
			case 2:
				this.ProxySocks5 = (RadioButton)target;
				this.ProxySocks5.Click += new RoutedEventHandler(this.ProxySocks5_Checked);
				return;
			case 3:
				this.ProxyHttp = (RadioButton)target;
				this.ProxyHttp.Click += new RoutedEventHandler(this.ProxyHttp_Checked);
				return;
			case 4:
				this.ProxyAuthType = (ComboBox)target;
				return;
			case 5:
				this.ProxyAddress = (TextBox)target;
				return;
			case 6:
				this.ProxyPort = (TextBox)target;
				return;
			case 7:
				this.ProxyUsername = (TextBox)target;
				return;
			case 8:
				this.PasswordBox = (PasswordBox)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
