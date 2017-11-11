using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.Pages.SettingsSubPages;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages
{
	public class Settings : UserControl, IComponentConnector, IContent
	{
		public delegate void SettingsChangedEventHandler(object sender, SettingsChangedEventHandlerArgs args);

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Settings.<>c <>9 = new Settings.<>c();

			public static SendOrPostCallback <>9__3_0;

			internal void <OnNavigatedTo>b__3_0(object state)
			{
				ObjectHolder.SettingsDefaultName = "default";
				BaseMixpanelObject.FireEvent<SettingsOpenedEvent>();
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
			}
		}

		internal ModernTab SettingsTab;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public static event Settings.SettingsChangedEventHandler SettingsChanged;

		public Settings()
		{
			base.DataContext = SettingsHolder.get_Settings();
			try
			{
				this.InitializeComponent();
			}
			catch (System.Exception)
			{
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			Uri selectedSource = new Uri("/Pages/SettingsSubPages/Support.xaml", UriKind.Relative);
			this.SettingsTab.set_SelectedSource(selectedSource);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			Uri selectedSource = new Uri("/Pages/SettingsSubPages/General.xaml", UriKind.Relative);
			if (e.get_Source().ToString().Contains("#account"))
			{
				selectedSource = new Uri("/Pages/SettingsSubPages/Account.xaml", UriKind.Relative);
			}
			this.SettingsTab.set_SelectedSource(selectedSource);
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			SynchronizationContext arg_6B_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_6B_1;
			if ((arg_6B_1 = Settings.<>c.<>9__3_0) == null)
			{
				arg_6B_1 = (Settings.<>c.<>9__3_0 = new SendOrPostCallback(Settings.<>c.<>9.<OnNavigatedTo>b__3_0));
			}
			arg_6B_0.Post(arg_6B_1, null);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void Settings_Default(object sender, RoutedEventArgs e)
		{
			if (ModernDialogExtension.ShowDialogYesNo(CyberGhost.Translations.Settings.Settings_Settings_Default_ResetSettings, CyberGhost.Translations.Settings.Settings_ResetAsk) == MessageBoxResult.Yes)
			{
				SettingsHolder.get_Settings().ResetSettings();
				SettingsHolder.get_Settings().set_AutoStart(true);
				SettingsHolder.get_Settings().get_KnownSsids().Clear();
				GuiHelper.ResetProfilesToDefault(null);
				AppProtection.DisableAppProtection();
				SettingsChangedEventHandlerArgs eventArgs = new SettingsChangedEventHandlerArgs
				{
					SettingsHolder = SettingsHolder.get_Settings()
				};
				this.FireSettingsChangedEvent(eventArgs);
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
			}
		}

		private void FireSettingsChangedEvent(SettingsChangedEventHandlerArgs eventArgs)
		{
			Settings.SettingsChangedEventHandler expr_05 = Settings.SettingsChanged;
			if (expr_05 == null)
			{
				return;
			}
			expr_05(this, eventArgs);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settings.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.SettingsTab = (ModernTab)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			((Button)target).Click += new RoutedEventHandler(this.Settings_Default);
		}
	}
}
