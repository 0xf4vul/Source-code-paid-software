using CyberGhost.Settings.SettingsItems;
using System;
using System.Collections.Generic;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class ActionList : List<SsidAction>
	{
		public ActionList()
		{
			base.Add(0);
			base.Add(1);
			base.Add(2);
			base.Add(3);
		}
	}
}

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

using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices.Helpers;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Connection : UserControl, IComponentConnector, IDisposable, IContent
	{
		public class ContextHelper
		{
			public SettingsHolder Settings
			{
				get;
				set;
			}

			public bool HasHttpsEverywhere
			{
				get;
				set;
			}

			public bool HasNotHttpsEverywhere
			{
				get;
				set;
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Connection.<>c <>9 = new Connection.<>c();

			public static Action <>9__5_1;

			public static SendOrPostCallback <>9__5_0;

			public static SendOrPostCallback <>9__6_0;

			internal void <OnNavigatedFrom>b__5_0(object state)
			{
				RegistrySettingsStorage arg_24_0 = SettingsHolder.get_Settings();
				Action arg_24_1;
				if ((arg_24_1 = Connection.<>c.<>9__5_1) == null)
				{
					arg_24_1 = (Connection.<>c.<>9__5_1 = new Action(Connection.<>c.<>9.<OnNavigatedFrom>b__5_1));
				}
				arg_24_0.IfHasChanges(arg_24_1);
			}

			internal void <OnNavigatedFrom>b__5_1()
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				new SettingsChangedEvent
				{
					SettingsTab = "connection"
				}.FireEvent();
			}

			internal void <OnNavigatedTo>b__6_0(object state)
			{
				new SettingsTabClickedEvent
				{
					SettingsTab = "connection"
				}.FireEvent();
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <networkCard_Click>d__8 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						if (Helpers.IsTapV9Installed("9.0.0.9", false))
						{
							goto IL_7F;
						}
						taskAwaiter = Helpers.ReInstallTapV9Driver(Constants.get_OpenVpnBinPath()).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Connection.<networkCard_Click>d__8>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					IL_7F:
					if (ObjectHolder.CyberGhostCom != null)
					{
						ObjectHolder.CyberGhostCom.CorrectTapProtocolls(SettingsHolder.get_Settings().get_DisableIpV6Protocol());
						if (!SettingsHolder.get_Settings().get_TapFallbackMode())
						{
							ObjectHolder.CyberGhostCom.SetTapAdapterMediaStatus(1);
						}
						ObjectHolder.CyberGhostCom.SetTapAdapterMtu(1450);
					}
					ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.General.Connection_networkCard_Click_Networkcard, CyberGhost.Translations.General.Connection_networkCard_Click_Your_networkcard_has_successfully_been_repaired_);
				}
				catch (System.Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		internal ToggleButton BtnToggleOverwriteSystemNs;

		internal ToggleButton BtnTogglePreferTcp;

		internal ToggleButton BtnToggleRandomPort;

		internal Button NetworkCard;

		private bool _contentLoaded;

		public Connection()
		{
			this.InitializeComponent();
			CyberGhost.Pages.Settings.SettingsChanged += new CyberGhost.Pages.Settings.SettingsChangedEventHandler(this.Settings_SettingsChanged);
			Connection.ContextHelper dataContext = new Connection.ContextHelper
			{
				Settings = SettingsHolder.get_Settings()
			};
			base.DataContext = dataContext;
		}

		public void Dispose()
		{
			CyberGhost.Pages.Settings.SettingsChanged -= new CyberGhost.Pages.Settings.SettingsChangedEventHandler(this.Settings_SettingsChanged);
		}

		private void Settings_SettingsChanged(object sender, SettingsChangedEventHandlerArgs args)
		{
			if (sender != null && args != null)
			{
				SettingsHolder settingsHolder = args.SettingsHolder;
				this.BtnToggleOverwriteSystemNs.IsChecked = new bool?(settingsHolder.get_OverwriteSystemNs());
				this.BtnTogglePreferTcp.IsChecked = new bool?(settingsHolder.get_PreferTcp());
				this.BtnToggleRandomPort.IsChecked = new bool?(settingsHolder.get_RandomPort());
				return;
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Connection.<>c.<>9__5_0) == null)
			{
				arg_25_1 = (Connection.<>c.<>9__5_0 = new SendOrPostCallback(Connection.<>c.<>9.<OnNavigatedFrom>b__5_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Connection.<>c.<>9__6_0) == null)
			{
				arg_25_1 = (Connection.<>c.<>9__6_0 = new SendOrPostCallback(Connection.<>c.<>9.<OnNavigatedTo>b__6_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		[AsyncStateMachine(typeof(Connection.<networkCard_Click>d__8))]
		private void networkCard_Click(object sender, RoutedEventArgs e)
		{
			Connection.<networkCard_Click>d__8 <networkCard_Click>d__;
			<networkCard_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<networkCard_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <networkCard_Click>d__.<>t__builder;
			<>t__builder.Start<Connection.<networkCard_Click>d__8>(ref <networkCard_Click>d__);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/connection.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.BtnToggleOverwriteSystemNs = (ToggleButton)target;
				return;
			case 2:
				this.BtnTogglePreferTcp = (ToggleButton)target;
				return;
			case 3:
				this.BtnToggleRandomPort = (ToggleButton)target;
				return;
			case 4:
				this.NetworkCard = (Button)target;
				this.NetworkCard.Click += new RoutedEventHandler(this.networkCard_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Helpers;
using MobileConcepts.Settings;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Exception : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <addException_Click>d__3 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public Exception <>4__this;

			private TaskAwaiter<List<IPAddress>> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Exception ex = this.<>4__this;
				try
				{
					TaskAwaiter<List<IPAddress>> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = HelperFunctions.ResolveIp(ex.ExceptionName.Text.Trim(), false, null).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<List<IPAddress>>, Exception.<addException_Click>d__3>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<List<IPAddress>>);
						this.<>1__state = -1;
					}
					List<IPAddress> arg_85_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<List<IPAddress>>);
					if (arg_85_0.Count != 0)
					{
						if (!SettingsHolder.get_Settings().get_ExceptionList().Contains(ex.ExceptionName.Text.Trim()))
						{
							SettingsHolder.get_Settings().get_ExceptionList().Add(ex.ExceptionName.Text.Trim());
							ex.ExceptionName.Text = "";
						}
					}
					else
					{
						ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.General.Exception_addException_Click_Wrong_URL_IP, CyberGhost.Translations.General.Exception_addException_Click_The_URL_or_IP_is_not_valid__Please_insert_a_valid_URL_OR_IP_);
					}
				}
				catch (System.Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Exception.<>c <>9 = new Exception.<>c();

			public static Action <>9__8_1;

			public static SendOrPostCallback <>9__8_0;

			public static SendOrPostCallback <>9__9_0;

			internal void <OnNavigatedFrom>b__8_0(object state)
			{
				RegistrySettingsStorage arg_24_0 = SettingsHolder.get_Settings();
				Action arg_24_1;
				if ((arg_24_1 = Exception.<>c.<>9__8_1) == null)
				{
					arg_24_1 = (Exception.<>c.<>9__8_1 = new Action(Exception.<>c.<>9.<OnNavigatedFrom>b__8_1));
				}
				arg_24_0.IfHasChanges(arg_24_1);
			}

			internal void <OnNavigatedFrom>b__8_1()
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				new SettingsChangedEvent
				{
					SettingsTab = "exceptions"
				}.FireEvent();
			}

			internal void <OnNavigatedTo>b__9_0(object state)
			{
				new SettingsTabClickedEvent
				{
					SettingsTab = "exceptions"
				}.FireEvent();
			}
		}

		internal TextBox ExceptionName;

		internal Button AddException;

		internal Button RemoveSelected;

		internal ListBox LbExceptions;

		internal Button AutodetectEmailSettings;

		private bool _contentLoaded;

		public Exception()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings();
		}

		private void autodetectEmailSettings_Click(object sender, RoutedEventArgs e)
		{
			List<string> list = new List<string>();
			list.AddRange(HelperFunctions.GetSystemSmtpServers().ToList<string>());
			if (HelperFunctions.get_SmtpSettingFoundCount() < 1)
			{
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.General.Exception_AutodetectEmailSettings_CantDetectSmtpServerAutomatically, CyberGhost.Translations.General.Exception_AutodetectEmailSettings_PleaseAddYourSmtpServerInExceptionManually);
				return;
			}
			using (List<string>.Enumerator enumerator = list.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					string item = enumerator.Current.ToLower().Trim();
					if (!SettingsHolder.get_Settings().get_ExceptionList().Contains(item))
					{
						SettingsHolder.get_Settings().get_ExceptionList().Add(item);
					}
					base.DataContext = SettingsHolder.get_Settings();
				}
			}
		}

		private void removeSelected_Click(object sender, RoutedEventArgs e)
		{
			if (this.LbExceptions.SelectedItem != null)
			{
				SettingsHolder.get_Settings().get_ExceptionList().Remove(this.LbExceptions.SelectedItem.ToString());
			}
		}

		[AsyncStateMachine(typeof(Exception.<addException_Click>d__3))]
		private void addException_Click(object sender, RoutedEventArgs e)
		{
			Exception.<addException_Click>d__3 <addException_Click>d__;
			<addException_Click>d__.<>4__this = this;
			<addException_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<addException_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <addException_Click>d__.<>t__builder;
			<>t__builder.Start<Exception.<addException_Click>d__3>(ref <addException_Click>d__);
		}

		private void ExceptionName_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.AddException.IsEnabled = (this.ExceptionName.Text.Length > 0);
		}

		private void LbExceptions_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			IList addedItems = e.AddedItems;
			this.RemoveSelected.IsEnabled = (addedItems.Count > 0);
		}

		private void ExceptionName_OnKeyUp(object sender, KeyEventArgs e)
		{
			if (e.Key == Key.Return)
			{
				this.addException_Click(null, null);
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Exception.<>c.<>9__8_0) == null)
			{
				arg_25_1 = (Exception.<>c.<>9__8_0 = new SendOrPostCallback(Exception.<>c.<>9.<OnNavigatedFrom>b__8_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Exception.<>c.<>9__9_0) == null)
			{
				arg_25_1 = (Exception.<>c.<>9__9_0 = new SendOrPostCallback(Exception.<>c.<>9.<OnNavigatedTo>b__9_0));
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/exception.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ExceptionName = (TextBox)target;
				this.ExceptionName.TextChanged += new TextChangedEventHandler(this.ExceptionName_OnTextChanged);
				this.ExceptionName.KeyUp += new KeyEventHandler(this.ExceptionName_OnKeyUp);
				return;
			case 2:
				this.AddException = (Button)target;
				this.AddException.Click += new RoutedEventHandler(this.addException_Click);
				return;
			case 3:
				this.RemoveSelected = (Button)target;
				this.RemoveSelected.Click += new RoutedEventHandler(this.removeSelected_Click);
				return;
			case 4:
				this.LbExceptions = (ListBox)target;
				this.LbExceptions.SelectionChanged += new SelectionChangedEventHandler(this.LbExceptions_OnSelectionChanged);
				return;
			case 5:
				this.AutodetectEmailSettings = (Button)target;
				this.AutodetectEmailSettings.Click += new RoutedEventHandler(this.autodetectEmailSettings_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using CyberGhost.Translations;
using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Enum2LocalizedStringConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value == null)
			{
				return "";
			}
			if (value.ToString().Equals("Ask", StringComparison.InvariantCultureIgnoreCase))
			{
				return Alerts._ASK;
			}
			if (value.ToString().Equals("Ignore", StringComparison.InvariantCultureIgnoreCase))
			{
				return Alerts.TrustThisWifi_never;
			}
			if (value.ToString().Equals("Connect", StringComparison.InvariantCultureIgnoreCase))
			{
				return Alerts.ProtectMe_Always;
			}
			if (value.ToString().Equals("Disconnect", StringComparison.InvariantCultureIgnoreCase))
			{
				return Alerts.Disconnect;
			}
			return "";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return null;
		}
	}
}

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

using CyberGhost.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Support : UserControl, IComponentConnector
	{
		internal TextBox FragmentSize;

		internal Label FragmentHint;

		private bool _contentLoaded;

		public Support()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings();
			this.FragmentHint.Visibility = Visibility.Hidden;
		}

		private void FragmentSize_Textchanged(object sender, TextChangedEventArgs textChangedEventArgs)
		{
			try
			{
				if (this.FragmentSize.Text != string.Empty && (int.Parse(this.FragmentSize.Text) < 500 || int.Parse(this.FragmentSize.Text) > 1500))
				{
					this.FragmentHint.Visibility = Visibility.Visible;
				}
				else
				{
					this.FragmentHint.Visibility = Visibility.Hidden;
				}
			}
			catch (System.Exception)
			{
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/support.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.FragmentSize = (TextBox)target;
				this.FragmentSize.TextChanged += new TextChangedEventHandler(this.FragmentSize_Textchanged);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.FragmentHint = (Label)target;
		}
	}
}

using CyberGhost.Components.Mixpanel;
using CyberGhost.Components.Popups;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.SettingsItems;
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
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Wifi : UserControl, IComponentConnector, IStyleConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Wifi.<>c <>9 = new Wifi.<>c();

			public static SendOrPostCallback <>9__3_0;

			public static Action <>9__4_1;

			public static SendOrPostCallback <>9__4_0;

			internal void <OnNavigatedTo>b__3_0(object state)
			{
				new SettingsTabClickedEvent
				{
					SettingsTab = "wi-fi"
				}.FireEvent();
			}

			internal void <OnNavigatingFrom>b__4_0(object state)
			{
				RegistrySettingsStorage arg_24_0 = SettingsHolder.get_Settings();
				Action arg_24_1;
				if ((arg_24_1 = Wifi.<>c.<>9__4_1) == null)
				{
					arg_24_1 = (Wifi.<>c.<>9__4_1 = new Action(Wifi.<>c.<>9.<OnNavigatingFrom>b__4_1));
				}
				arg_24_0.IfHasChanges(arg_24_1);
			}

			internal void <OnNavigatingFrom>b__4_1()
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				new SettingsChangedEvent
				{
					SettingsTab = "wi-fi"
				}.FireEvent();
			}
		}

		internal DataGrid WifiGrid;

		internal ComboBox HotspotComboBox;

		private bool _contentLoaded;

		public Wifi()
		{
			base.DataContext = SettingsHolder.get_Settings().get_ProfileWifi();
			this.InitializeComponent();
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.WifiGrid.ItemsSource = SettingsHolder.get_Settings().get_KnownSsids();
			SynchronizationContext arg_3A_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_3A_1;
			if ((arg_3A_1 = Wifi.<>c.<>9__3_0) == null)
			{
				arg_3A_1 = (Wifi.<>c.<>9__3_0 = new SendOrPostCallback(Wifi.<>c.<>9.<OnNavigatedTo>b__3_0));
			}
			arg_3A_0.Post(arg_3A_1, null);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Wifi.<>c.<>9__4_0) == null)
			{
				arg_25_1 = (Wifi.<>c.<>9__4_0 = new SendOrPostCallback(Wifi.<>c.<>9.<OnNavigatingFrom>b__4_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		private void OnUserSelectionChanged(object sender, UserSelectionChangedEventArgs e)
		{
			if (e.get_SelectionChangedByUser())
			{
				if (this.WifiGrid.SelectedItems.Count == 0)
				{
					return;
				}
				SsidItem ssidItem = (SsidItem)this.WifiGrid.SelectedItems[0];
				if (ssidItem == null)
				{
					return;
				}
				if (e.get_AddedItems().Count == 0)
				{
					return;
				}
				SsidAction ssidAction = (SsidAction)e.get_AddedItems()[0];
				WifiPopup.WifiConnectionResult action = WifiPopup.WifiConnectionResult.Ask;
				if (ssidAction == 2)
				{
					action = WifiPopup.WifiConnectionResult.Always;
				}
				else if (ssidAction == 3)
				{
					action = WifiPopup.WifiConnectionResult.Disconnect;
				}
				else if (ssidAction == null)
				{
					action = WifiPopup.WifiConnectionResult.Never;
				}
				WifiHelpers.SetStateForWifiOrAddNewWifi(ssidItem.get_Ssid(), action);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/wifi.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.WifiGrid = (DataGrid)target;
				return;
			}
			if (connectionId != 3)
			{
				this._contentLoaded = true;
				return;
			}
			this.HotspotComboBox = (ComboBox)target;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 2)
			{
				((ComboBox)target).AddHandler(UserSelectionChangedBehavior.UserSelectionChangedEvent, new UserSelectionChangedEventHandler(this.OnUserSelectionChanged));
			}
		}
	}
}
