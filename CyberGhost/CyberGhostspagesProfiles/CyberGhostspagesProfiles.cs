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

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using Microsoft.Win32;
using MobileConcepts.Components.CustomEvent;
using MobileConcepts.Components.Log;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace CyberGhost.Pages.Profiles
{
	public class AnonymousDownloading : UserControl, IComponentConnector, IStyleConnector, IContent
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass23_0
		{
			public ProgramData foundItem;

			internal bool <Trash_MouseLeftButtonDown>b__0(string x)
			{
				return x.Equals(this.foundItem.ApplicationExe, StringComparison.OrdinalIgnoreCase);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass30_0
		{
			public ProgramData progData;

			public AnonymousDownloading <>4__this;

			internal void <SendCustomProgramInfoToApi>b__0()
			{
				try
				{
					CgApiProgram expr_05 = new CgApiProgram();
					expr_05.set_ExeName(this.progData.ExeName);
					expr_05.set_RegName(this.progData.RegName);
					expr_05.PostProgramInfo().ConfigureAwait(false);
				}
				catch (Exception ex)
				{
					McExceptionLogItem expr_3B = new McExceptionLogItem();
					expr_3B.set_RelatingException(ex);
					expr_3B.set_ExceptionMessage("Failed to trigger Post Program Info" + ex.Message);
					McExceptionLogItem aEvent = expr_3B;
					ObjectHolder.EventLogger.LogLocalEvent(aEvent);
					HelperFunctions.DebugLine(string.Format("{0}::{1} PostProgramInfo FAILED {2}", this.<>4__this.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
				}
			}
		}

		private readonly ObservableCollection<ProgramData> _programDataList = new ObservableCollection<ProgramData>();

		internal ComboBox TorrentComboBox;

		internal FeatureGroup FeatureGroup;

		internal ProfileInfoFooter InfoFooter;

		internal Button ConnectBtn;

		internal UpgradeButton UpgradeBtn;

		private bool _contentLoaded;

		public CgApiProgramList ProgramList
		{
			get;
			set;
		}

		public ObservableCollection<ProgramData> ProgramDataList
		{
			get
			{
				return this._programDataList;
			}
			set
			{
				if (this._programDataList != value)
				{
					this._programDataList.Clear();
					foreach (ProgramData current in value)
					{
						this._programDataList.Add(current);
					}
				}
			}
		}

		public string SavedExeName
		{
			get;
			set;
		}

		public string SavedAppPath
		{
			get;
			set;
		}

		public AnonymousDownloading()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
			this.ConnectBtn.Command = new AsyncDelegateCommand(new Func<Task>(this.ConnectToServer), new Func<bool>(this.CanExecute));
			this.InfoFooter.Profile = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
			this.FillProgramList();
			this.BindingProgramList();
			this.FeatureGroup.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
			this.FeatureGroup.BindFeatures();
			GuiHelper.SetUpgradeBarVisiblity(this.FeatureGroup);
			this.SendCustomProgramInfoToApi();
			this.ConnectBtn.IsEnabled = true;
			this.TorrentComboBox.IsEnabled = true;
			this.UpgradeBtn.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
			this.UpgradeBtn.SetVisibility(this.ConnectBtn, 18);
			this.SetSelectedIndexToLastUsedOption(this.TorrentComboBox);
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Start_Ghost_Downloads : Profiles.download_connect_button);
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

		private void OnTorrentStartProgramChanged(object sender, UserSelectionChangedEventArgs e)
		{
			if (!e.get_SelectionChangedByUser())
			{
				return;
			}
			if (sender == null)
			{
				return;
			}
			CgProfileAnonymousDownloading profileAnonymousDownloading = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
			ProgramData programData = (ProgramData)this.TorrentComboBox.SelectedItem;
			if (programData == null)
			{
				return;
			}
			if (programData.ToolTip != "empty" && programData.ToolTip != "browser" && programData.ToolTip != "custom")
			{
				profileAnonymousDownloading.set_DownloadToolExeName(programData.ExeName);
				profileAnonymousDownloading.set_DownloadToolApplicationPath(programData.ApplicationExe);
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				return;
			}
			string downloadToolExeName;
			if (programData.ToolTip == "browser")
			{
				CgProfileAnonymousDownloading arg_A9_0 = profileAnonymousDownloading;
				profileAnonymousDownloading.set_DownloadToolApplicationPath(downloadToolExeName = "browser");
				arg_A9_0.set_DownloadToolExeName(downloadToolExeName);
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				return;
			}
			if (programData.ToolTip == "empty")
			{
				CgProfileAnonymousDownloading arg_DC_0 = profileAnonymousDownloading;
				profileAnonymousDownloading.set_DownloadToolApplicationPath(downloadToolExeName = string.Empty);
				arg_DC_0.set_DownloadToolExeName(downloadToolExeName);
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				return;
			}
			CgProfileAnonymousDownloading arg_FD_0 = profileAnonymousDownloading;
			profileAnonymousDownloading.set_DownloadToolApplicationPath(downloadToolExeName = "custom");
			arg_FD_0.set_DownloadToolExeName(downloadToolExeName);
			OpenFileDialog openFileDialog = new OpenFileDialog
			{
				Filter = "Executable files (*.exe)|*.exe",
				Multiselect = false
			};
			if (openFileDialog.ShowDialog() == true)
			{
				ProgramData programData2 = null;
				string[] fileNames = openFileDialog.FileNames;
				for (int i = 0; i < fileNames.Length; i++)
				{
					string text = fileNames[i];
					if (text.ToLower().Contains("cyberghost"))
					{
						ModernDialogExtension.ShowDialogOk(General.AnonymousDownloading_CyberghostMustNotBeSelected, General.AnonymousDownloading_PleaseSelectOtherApp);
						return;
					}
					if (!SettingsHolder.get_Settings().get_ProfileAnonymousDownloading().get_CustomApps().Contains(text))
					{
						ProgramData programData3 = new ProgramData(text, true);
						programData2 = programData3;
						int num = -1;
						using (IEnumerator<ProgramData> enumerator = this.ProgramDataList.GetEnumerator())
						{
							while (enumerator.MoveNext())
							{
								ProgramData arg_1BA_0 = enumerator.Current;
								num++;
								if (arg_1BA_0.ToolTip.Equals("custom", StringComparison.CurrentCultureIgnoreCase))
								{
									break;
								}
							}
							goto IL_232;
						}
						IL_1E5:
						programData3.RegName = this.FindRegistryInfo(Path.GetDirectoryName(text) + "\\");
						this.ProgramDataList.Insert(num, programData3);
						profileAnonymousDownloading.get_CustomApps().Add(text);
						this.SendCustomProgramInfoToApi(programData3);
						goto IL_227;
						IL_232:
						if (num > -1)
						{
							goto IL_1E5;
						}
					}
					IL_227:;
				}
				if (programData2 != null)
				{
					this.TorrentComboBox.SelectedItem = programData2;
					profileAnonymousDownloading.set_DownloadToolExeName(programData2.ExeName);
					profileAnonymousDownloading.set_DownloadToolApplicationPath(programData2.ApplicationExe);
				}
				else
				{
					this.TorrentComboBox.SelectedIndex = this.TorrentComboBox.Items.Count - 1;
				}
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				return;
			}
			this.SetSelectedIndexToLastUsedOption(this.TorrentComboBox);
		}

		private void SetSelectedIndexToLastUsedOption(ComboBox torrentComboBox)
		{
			string downloadToolExeName = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading().get_DownloadToolExeName();
			if (string.IsNullOrWhiteSpace(downloadToolExeName))
			{
				torrentComboBox.SelectedIndex = 0;
				return;
			}
			if (downloadToolExeName.Equals("browser"))
			{
				torrentComboBox.SelectedIndex = 1;
				return;
			}
			if (downloadToolExeName.Equals("custom"))
			{
				torrentComboBox.SelectedIndex = 0;
				return;
			}
			int num = 0;
			foreach (object current in ((IEnumerable)torrentComboBox.Items))
			{
				if (num >= 2 && num < torrentComboBox.Items.Count && ((ProgramData)current).ExeName.Equals(downloadToolExeName))
				{
					torrentComboBox.SelectedIndex = num;
					break;
				}
				num++;
			}
		}

		private void Trash_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			AnonymousDownloading.<>c__DisplayClass23_0 <>c__DisplayClass23_ = new AnonymousDownloading.<>c__DisplayClass23_0();
			Label label = sender as Label;
			if (label == null)
			{
				return;
			}
			string strB = label.ToolTip.ToString();
			int num = 0;
			<>c__DisplayClass23_.foundItem = null;
			int num2 = -1;
			using (IEnumerator enumerator = ((IEnumerable)this.TorrentComboBox.Items).GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					ProgramData programData = enumerator.Current as ProgramData;
					if (programData != null && string.Compare(programData.ToolTip, strB, StringComparison.OrdinalIgnoreCase) == 0)
					{
						num2 = num;
						<>c__DisplayClass23_.foundItem = programData;
						break;
					}
					num++;
				}
			}
			try
			{
				CgProfileAnonymousDownloading profileAnonymousDownloading = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
				if (<>c__DisplayClass23_.foundItem != null && num2 > -1)
				{
					CgProfileAnonymousDownloading arg_BE_0 = profileAnonymousDownloading;
					string downloadToolExeName;
					profileAnonymousDownloading.set_DownloadToolApplicationPath(downloadToolExeName = "empty");
					arg_BE_0.set_DownloadToolExeName(downloadToolExeName);
					this.ProgramDataList.RemoveAt(num2);
					int index = profileAnonymousDownloading.get_CustomApps().FindIndex(new Predicate<string>(<>c__DisplayClass23_.<Trash_MouseLeftButtonDown>b__0));
					profileAnonymousDownloading.get_CustomApps().RemoveAt(index);
					SettingsHolder.get_Settings().SaveSettingsAsync(false);
				}
			}
			catch (ArgumentOutOfRangeException ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1}:index --> {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
			this.TorrentComboBox.SelectedIndex = 0;
		}

		private void FillProgramList()
		{
			this.ProgramDataList.Clear();
			string themedImage = Theming.GetThemedImage("Icons\\Functions\\blank_tile.png");
			try
			{
				this.ProgramDataList.Add(new ProgramData
				{
					ExeImage = new Uri(themedImage, UriKind.RelativeOrAbsolute),
					ExeName = General.AnonymousDownloading_FillUnblockListWithContent_Dont_start_additional_program,
					Tag = "empty",
					ToolTip = "empty",
					Visible = false
				});
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} COULD NOT ADD STATIC APP TO LIST {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
			try
			{
				this.ProgramDataList.Add(new ProgramData
				{
					ExeImage = new Uri(themedImage, UriKind.RelativeOrAbsolute),
					ExeName = Profiles.startDefaultBrowserIgnoMode,
					Tag = "browser",
					ToolTip = "browser",
					Visible = false
				});
			}
			catch (Exception ex2)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} COULD NOT ADD STATIC APP TO LIST {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex2.Message));
			}
			foreach (CgApiProgram current in ObjectHolder.ProgramList.get_Items())
			{
				if (current.IsInstalled())
				{
					try
					{
						this.ProgramDataList.Add(new ProgramData(current, false));
					}
					catch (Exception ex3)
					{
						HelperFunctions.DebugLine(string.Format("{0}::{1} COULD NOT ADD PROGRAMDATA TO LIST {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex3.Message));
					}
				}
			}
			using (List<string>.Enumerator enumerator2 = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading().get_CustomApps().GetEnumerator())
			{
				while (enumerator2.MoveNext())
				{
					ProgramData item = new ProgramData(enumerator2.Current, true);
					this.ProgramDataList.Add(item);
				}
			}
			this.ProgramDataList.Add(new ProgramData
			{
				ExeImage = new Uri(themedImage, UriKind.RelativeOrAbsolute),
				ExeName = Profiles.AnonDownload_Fill_ProgramList_Add_custom_program,
				Tag = "customProgram",
				ToolTip = "custom",
				Visible = false
			});
		}

		private void BindingProgramList()
		{
			this.TorrentComboBox.ItemsSource = this.ProgramDataList;
			this.SetSelectedIndexToLastUsedOption(this.TorrentComboBox);
		}

		private Task ConnectToServer()
		{
			this.FeatureGroup.FSpeed.FeatureBoxLabel.Content = Profiles.speed_head;
			this.FeatureGroup.FSpeed.Premium = true;
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(18))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(18);
				return null;
			}
			ObjectHolder.ConnectionType = "manual";
			ObjectHolder.CurrentProfileTab = "none";
			return ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading(), false, false, true);
		}

		private bool CanExecute()
		{
			return true;
		}

		private string FindRegistryInfo(string filePath)
		{
			string result = string.Empty;
			try
			{
				result = HelperFunctions.GetRegKeyFromAppInstallPath(filePath);
				return result;
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} CAN NOT FIND REGISTRY INFO {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
			return result;
		}

		private void SendCustomProgramInfoToApi()
		{
			new Task(new Action(this.<SendCustomProgramInfoToApi>b__29_0)).Start();
		}

		private void SendCustomProgramInfoToApi(ProgramData progData)
		{
			AnonymousDownloading.<>c__DisplayClass30_0 expr_05 = new AnonymousDownloading.<>c__DisplayClass30_0();
			expr_05.<>4__this = this;
			expr_05.progData = progData;
			new Task(new Action(expr_05.<SendCustomProgramInfoToApi>b__0)).Start();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/anonymousdownloading.xaml", UriKind.Relative);
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
				this.TorrentComboBox = (ComboBox)target;
				this.TorrentComboBox.AddHandler(UserSelectionChangedBehavior.UserSelectionChangedEvent, new UserSelectionChangedEventHandler(this.OnTorrentStartProgramChanged));
				return;
			case 3:
				this.FeatureGroup = (FeatureGroup)target;
				return;
			case 4:
				this.InfoFooter = (ProfileInfoFooter)target;
				return;
			case 5:
				this.ConnectBtn = (Button)target;
				return;
			case 6:
				this.UpgradeBtn = (UpgradeButton)target;
				return;
			}
			this._contentLoaded = true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 2)
			{
				((Label)target).MouseLeftButtonDown += new MouseButtonEventHandler(this.Trash_MouseLeftButtonDown);
			}
		}

		[CompilerGenerated]
		private void <SendCustomProgramInfoToApi>b__29_0()
		{
			try
			{
				foreach (ProgramData current in this.ProgramDataList)
				{
					if (current.Visible)
					{
						CgApiProgram expr_23 = new CgApiProgram();
						expr_23.set_ExeName(current.ExeName);
						expr_23.set_RegName(current.RegName);
						expr_23.PostProgramInfo().ConfigureAwait(false);
					}
				}
			}
			catch (Exception ex)
			{
				McExceptionLogItem expr_63 = new McExceptionLogItem();
				expr_63.set_RelatingException(ex);
				expr_63.set_ExceptionMessage("Failed to trigger Post Program Info" + ex.Message);
				McExceptionLogItem aEvent = expr_63;
				ObjectHolder.EventLogger.LogLocalEvent(aEvent);
				HelperFunctions.DebugLine(string.Format("{0}::{1} PostProgramInfo FAILED {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
		}
	}
}

using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class BoolToBoldConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return "Bold";
			}
			return "Normal";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return false;
		}
	}
}

using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class BoolToColorConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return "Green";
			}
			return "Red";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return false;
		}
	}
}

using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class BoolToVisibleConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return "Visible";
			}
			return "Hidden";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return false;
		}
	}
}

using CyberGhost.Translations;
using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class BoolToStringConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return Profiles.BoolToStringConverter_Convert___Free__;
			}
			return Profiles.BoolToStringConverter_Convert___Premium__;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return false;
		}
	}
}

using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class BoolToVisibleConverterInvert : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return "Hidden";
			}
			return "Visible";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return false;
		}
	}
}

using CyberGhost.Annotations;
using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.MCTreeList;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Threading;

namespace CyberGhost.Pages.Profiles
{
	public class Custom : UserControl, IComponentConnector, IStyleConnector, INotifyPropertyChanged, IContent
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass26_0
		{
			public bool result;

			public Custom <>4__this;

			internal void <InitializeServerlist>b__1(object o)
			{
				if (this.result && Custom.Serverlist.get_Items().Count > 0)
				{
					foreach (CgApiServer current in Custom.Serverlist.get_Items())
					{
						if (current.get_Location() == null)
						{
							current.set_Location(new CgApiLocation());
						}
						current.get_Location().set_CountryName(GuiHelper.FindTranslationForCountry(current.get_CountryCode()));
						current.get_Location().set_CountryCode(current.get_CountryCode());
					}
					this.<>4__this.PrepareServerList(Custom.Serverlist);
					this.<>4__this._updateCancellationToken.Cancel(false);
					this.<>4__this._updateCancellationToken = new CancellationTokenSource();
					this.<>4__this.FinalizeInit();
					return;
				}
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
				Navigation.GoHome();
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Custom.<>c <>9 = new Custom.<>c();

			public static SendOrPostCallback <>9__26_2;

			public static Comparison<CgApiServer> <>9__28_0;

			public static Func<KeyValuePair<CgApiServer, double>, double> <>9__34_2;

			internal void <InitializeServerlist>b__26_2(object o)
			{
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
				Navigation.GoHome();
			}

			internal int <PrepareServerList>b__28_0(CgApiServer x, CgApiServer y)
			{
				return string.CompareOrdinal(x.get_Location().get_CountryName(), y.get_Location().get_CountryName());
			}

			internal double <FillTreeViewWithServers>b__34_2(KeyValuePair<CgApiServer, double> n)
			{
				return n.Value;
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass34_0
		{
			public CgApiServer server;

			public Custom.<>c__DisplayClass34_1 CS$<>8__locals1;

			public SendOrPostCallback <>9__1;

			internal void <FillTreeViewWithServers>b__0()
			{
				SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
				SendOrPostCallback arg_25_1;
				if ((arg_25_1 = this.<>9__1) == null)
				{
					arg_25_1 = (this.<>9__1 = new SendOrPostCallback(this.<FillTreeViewWithServers>b__1));
				}
				arg_25_0.Post(arg_25_1, null);
				long num = HelperFunctions.Ping(this.server.get_Ip(), 500);
				if (num >= 9999L)
				{
					num = HelperFunctions.TcpPing(this.server.get_Ip(), 500, 41200);
				}
				if (num < 500L)
				{
					double userRatio = this.CS$<>8__locals1.<>4__this.GetUserRatio(this.server.get_TotalUsers(), this.server.get_MaxUsers());
					this.CS$<>8__locals1.serverPingList.AddLast(new KeyValuePair<CgApiServer, double>(this.server, Math.Round((double)num / 500.0 * 0.7 + userRatio * 0.3)));
				}
			}

			internal void <FillTreeViewWithServers>b__1(object o)
			{
				this.CS$<>8__locals1.<>4__this.ServerForPing.Content = Profiles.Custom_FillTreeViewWithServers_Testing__ + this.server.get_Name() + " ...";
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass34_1
		{
			public LinkedList<KeyValuePair<CgApiServer, double>> serverPingList;

			public Custom <>4__this;
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <FillTreeViewWithServers>d__34 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public Custom <>4__this;

			public string filter;

			public IDictionary<string, ServerGroup> serverGroupsFiltered;

			public CancellationToken cancelToken;

			private int <id>5__1;

			private Custom.<>c__DisplayClass34_1 <>8__2;

			private int <subid>5__3;

			private ServerTreeItem <item>5__4;

			private string <flagUrl>5__5;

			private bool <parentIsEmpty>5__6;

			private KeyValuePair<string, ServerGroup> <entry>5__7;

			private ServerTreeItem <subitem>5__8;

			private IEnumerator<KeyValuePair<string, ServerGroup>> <>7__wrap1;

			private TaskAwaiter <>u__1;

			private List<CgApiServer>.Enumerator <>7__wrap2;

			private TaskAwaiter<long> <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Custom custom = this.<>4__this;
				try
				{
					if (num > 1)
					{
						custom.LoadingRing.Visibility = Visibility.Visible;
						custom.ServerTree.Visibility = Visibility.Hidden;
						custom._treeIsRebuilding = true;
						custom.ServerTree.set_Model(null);
						custom._serverTreeItemCollection = new ObservableCollection<ServerTreeItem>();
						if (!this.filter.Equals("fav"))
						{
							custom.FillTreeViewWithFavourites();
							custom._serverTreeItemCollection.Add(custom.FavNode);
							custom.FillTreeViewWithLastUsed();
							custom._serverTreeItemCollection.Add(custom.LastUsedNode);
						}
						this.<id>5__1 = 0;
						this.<>7__wrap1 = this.serverGroupsFiltered.GetEnumerator();
					}
					try
					{
						if (num == 0)
						{
							goto IL_B35;
						}
						if (num != 1)
						{
							goto IL_9DF;
						}
						goto IL_53F;
						IL_328:
						this.<flagUrl>5__5 = null;
						this.<item>5__4 = null;
						this.<entry>5__7 = default(KeyValuePair<string, ServerGroup>);
						goto IL_9DF;
						IL_53F:
						try
						{
							TaskAwaiter<long> taskAwaiter;
							if (num == 1)
							{
								taskAwaiter = this.<>u__2;
								this.<>u__2 = default(TaskAwaiter<long>);
								int arg_561_1 = -1;
								num = -1;
								this.<>1__state = arg_561_1;
								goto IL_943;
							}
							IL_8C2:
							while (this.<>7__wrap2.MoveNext())
							{
								CgApiServer current = this.<>7__wrap2.Current;
								if (this.cancelToken.IsCancellationRequested)
								{
									IL_98A:
									goto IL_9A2;
								}
								if (!current.get_Enabled() || !current.get_Online())
								{
									goto IL_8B0;
								}
								if (!current.get_AvailableForFree())
								{
									if (this.filter.Equals("torrent"))
									{
										if (current.get_TorrentBlocked())
										{
											continue;
										}
									}
									else if (this.filter.Equals("nospy") && !current.get_Name().ToLower().Contains("nospy"))
									{
										continue;
									}
									double userRatio = custom.GetUserRatio(current.get_TotalUsers(), current.get_MaxUsers());
									if (this.filter.Equals("minimum"))
									{
										if (userRatio > 40.0)
										{
											continue;
										}
									}
									else if (this.filter.Equals("maximum") && userRatio < 70.0)
									{
										continue;
									}
									this.<subitem>5__8 = new ServerTreeItem
									{
										CountryCode = current.get_Location().get_CountryCode(),
										ServerId = current.get_Id(),
										ParentId = this.<subid>5__3,
										Id = this.<id>5__1,
										CountryName = this.<item>5__4.Name,
										Name = current.get_Name(),
										RealServer = true,
										Ip = current.get_Ip(),
										UserRatio = userRatio,
										Slotsfree = string.Format("{0:0}", userRatio) + " % ",
										TorrentAllowed = (current.get_TorrentBlocked() ? "" : ""),
										Flag = this.<flagUrl>5__5,
										IsBold = false,
										IsFull = current.get_Full(),
										IsFree = current.get_AvailableForFree(),
										IsDotVisible = true,
										Bar = "",
										ServerSelectable = !current.get_HideIfNotInPlan(),
										IsFreeString = (current.get_AvailableForFree() ? Profiles.ServerLists_FillTreeViewWithServers_Free : Profiles.ServerLists_FillTreeViewWithServers_Premium)
									};
									if (SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerId().Equals(current.get_Id()) && current.get_Id() > 0)
									{
										this.<subitem>5__8.IsSelected = true;
									}
									this.<subitem>5__8.IsFav = custom.DetermineIfIsInFavs(this.<subitem>5__8);
									if (!this.filter.Equals("fav") || this.<subitem>5__8.IsFav)
									{
										if (!this.filter.Equals("bestping"))
										{
											goto IL_7FC;
										}
										taskAwaiter = HelperFunctions.PingAsync(this.<subitem>5__8.Ip, 1000).GetAwaiter();
										if (!taskAwaiter.IsCompleted)
										{
											int arg_96A_1 = 1;
											num = 1;
											this.<>1__state = arg_96A_1;
											this.<>u__2 = taskAwaiter;
											this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<long>, Custom.<FillTreeViewWithServers>d__34>(ref taskAwaiter, ref this);
											return;
										}
										goto IL_943;
									}
								}
							}
							goto IL_98A;
							IL_7FC:
							if (this.<subitem>5__8.IsFav)
							{
								custom.FavNode.ServerTreeItems.Add(this.<subitem>5__8);
							}
							if (custom.DetermineIfIsLastUsed(this.<subitem>5__8))
							{
								custom.LastUsedNode.ServerTreeItems.Add(this.<subitem>5__8);
							}
							if ((this.filter.Equals("minimum") || this.filter.Equals("maximum") || this.filter.Equals("bestping")) && this.<item>5__4.ServerTreeItems.Count >= 1)
							{
								goto IL_8C2;
							}
							this.<item>5__4.ServerTreeItems.Add(this.<subitem>5__8);
							this.<parentIsEmpty>5__6 = false;
							this.<subitem>5__8 = null;
							IL_8B0:
							int num2 = this.<id>5__1;
							this.<id>5__1 = num2 + 1;
							goto IL_8C2;
							IL_943:
							long arg_952_0 = taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter<long>);
							long num3 = arg_952_0;
							if (num3 <= 80L)
							{
								this.<subitem>5__8.PingTime = num3;
								custom.ServerForPing.Content = this.<subitem>5__8.Name + " " + num3;
								custom.ServerForPing.Visibility = Visibility.Collapsed;
								goto IL_7FC;
							}
							goto IL_8C2;
						}
						finally
						{
							if (num < 0)
							{
								((IDisposable)this.<>7__wrap2).Dispose();
							}
						}
						IL_9A2:
						this.<>7__wrap2 = default(List<CgApiServer>.Enumerator);
						if (this.cancelToken.IsCancellationRequested)
						{
							goto IL_B3B;
						}
						if (!this.<parentIsEmpty>5__6)
						{
							custom._serverTreeItemCollection.Add(this.<item>5__4);
							goto IL_328;
						}
						goto IL_328;
						IL_9DF:
						if (!this.<>7__wrap1.MoveNext())
						{
							goto IL_B3B;
						}
						this.<entry>5__7 = this.<>7__wrap1.Current;
						if (this.cancelToken.IsCancellationRequested)
						{
							goto IL_B3B;
						}
						this.<subid>5__3 = this.<id>5__1;
						this.<flagUrl>5__5 = Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", this.<entry>5__7.Value.CountryCode)));
						this.<item>5__4 = new ServerTreeItem
						{
							CountryCode = this.<entry>5__7.Value.CountryCode,
							ServerId = -1,
							CountryName = this.<entry>5__7.Value.Name,
							Name = this.<entry>5__7.Value.Name,
							RealServer = false,
							IsCountry = true,
							Flag = this.<flagUrl>5__5,
							Id = this.<id>5__1,
							ParentId = this.<id>5__1,
							ServerSelectable = true,
							IsFreeString = "",
							UserRatio = 0.0,
							Slotsfree = string.Format("{0:0}", custom.GetUserRatioForCountry(this.<entry>5__7.Value.Servers)) + " % ",
							TorrentAllowed = custom.GetTorrentStateForCountry(this.<entry>5__7.Value.Servers, this.filter)
						};
						if (SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry() != null && SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry().Equals(this.<item>5__4.CountryCode) && SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerId() == -1)
						{
							this.<item>5__4.IsSelected = true;
						}
						this.<item>5__4.IsFav = custom.DetermineIfIsInFavs(this.<item>5__4);
						this.<parentIsEmpty>5__6 = true;
						if (!this.filter.Equals("bestping"))
						{
							this.<>7__wrap2 = this.<entry>5__7.Value.Servers.GetEnumerator();
							goto IL_53F;
						}
						this.<>8__2 = new Custom.<>c__DisplayClass34_1();
						this.<>8__2.<>4__this = custom;
						this.<>8__2.serverPingList = new LinkedList<KeyValuePair<CgApiServer, double>>();
						LinkedList<Task> linkedList = new LinkedList<Task>();
						List<CgApiServer>.Enumerator enumerator = this.<entry>5__7.Value.Servers.GetEnumerator();
						try
						{
							while (enumerator.MoveNext())
							{
								Custom.<>c__DisplayClass34_0 <>c__DisplayClass34_ = new Custom.<>c__DisplayClass34_0();
								<>c__DisplayClass34_.CS$<>8__locals1 = this.<>8__2;
								<>c__DisplayClass34_.server = enumerator.Current;
								if (this.cancelToken.IsCancellationRequested)
								{
									break;
								}
								CommandManager.InvalidateRequerySuggested();
								custom.ServerForPing.Visibility = Visibility.Visible;
								double userRatio2 = custom.GetUserRatio(<>c__DisplayClass34_.server.get_TotalUsers(), <>c__DisplayClass34_.server.get_MaxUsers());
								if (<>c__DisplayClass34_.server.get_Enabled() && <>c__DisplayClass34_.server.get_Online() && !<>c__DisplayClass34_.server.get_AvailableForFree() && userRatio2 < 50.0 && !<>c__DisplayClass34_.server.get_HideIfNotInPlan())
								{
									Task task = custom._mPingTaskFactory.StartNew(new Action(<>c__DisplayClass34_.<FillTreeViewWithServers>b__0), this.cancelToken);
									HelperFunctions.GrabExceptions(task);
									linkedList.AddLast(task);
								}
							}
						}
						finally
						{
							if (num < 0)
							{
								((IDisposable)enumerator).Dispose();
							}
						}
						IL_B35:
						try
						{
							TaskAwaiter taskAwaiter2;
							if (num != 0)
							{
								taskAwaiter2 = Task.WhenAll(linkedList).GetAwaiter();
								if (!taskAwaiter2.IsCompleted)
								{
									int arg_D3_1 = 0;
									num = 0;
									this.<>1__state = arg_D3_1;
									this.<>u__1 = taskAwaiter2;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Custom.<FillTreeViewWithServers>d__34>(ref taskAwaiter2, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter2 = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter);
								int arg_10B_1 = -1;
								num = -1;
								this.<>1__state = arg_10B_1;
							}
							taskAwaiter2.GetResult();
							taskAwaiter2 = default(TaskAwaiter);
						}
						catch (Exception)
						{
							this.<>8__2.serverPingList.Clear();
						}
						if (this.<>8__2.serverPingList.Count > 0)
						{
							IEnumerable<KeyValuePair<CgApiServer, double>> arg_174_0 = this.<>8__2.serverPingList;
							Func<KeyValuePair<CgApiServer, double>, double> arg_174_1;
							if ((arg_174_1 = Custom.<>c.<>9__34_2) == null)
							{
								arg_174_1 = (Custom.<>c.<>9__34_2 = new Func<KeyValuePair<CgApiServer, double>, double>(Custom.<>c.<>9.<FillTreeViewWithServers>b__34_2));
							}
							List<KeyValuePair<CgApiServer, double>> list = arg_174_0.OrderBy(arg_174_1).ToList<KeyValuePair<CgApiServer, double>>();
							CgApiServer key = list[0].Key;
							if (key == null && list.Count > 1)
							{
								key = list[1].Key;
							}
							if (key == null)
							{
								goto IL_9DF;
							}
							double userRatio3 = custom.GetUserRatio(key.get_TotalUsers(), key.get_MaxUsers());
							ServerTreeItem item = new ServerTreeItem
							{
								CountryCode = key.get_Location().get_CountryCode(),
								ServerId = key.get_Id(),
								ParentId = this.<subid>5__3,
								Id = this.<id>5__1,
								CountryName = this.<item>5__4.Name,
								Name = key.get_Name(),
								RealServer = true,
								Ip = key.get_Ip(),
								UserRatio = userRatio3,
								Slotsfree = string.Format("{0:0}", userRatio3) + " % ",
								TorrentAllowed = (key.get_TorrentBlocked() ? "" : ""),
								Flag = this.<flagUrl>5__5,
								IsBold = false,
								IsFull = key.get_Full(),
								IsFree = key.get_AvailableForFree(),
								IsDotVisible = true,
								Bar = "",
								ServerSelectable = !key.get_HideIfNotInPlan(),
								IsFreeString = (key.get_AvailableForFree() ? Profiles.ServerLists_FillTreeViewWithServers_Free : Profiles.ServerLists_FillTreeViewWithServers_Premium)
							};
							this.<item>5__4.ServerTreeItems.Add(item);
							this.<parentIsEmpty>5__6 = false;
						}
						if (!this.<parentIsEmpty>5__6)
						{
							custom._serverTreeItemCollection.Add(this.<item>5__4);
						}
						this.<>8__2 = null;
						goto IL_328;
						IL_B3B:;
					}
					finally
					{
						if (num < 0 && this.<>7__wrap1 != null)
						{
							this.<>7__wrap1.Dispose();
						}
					}
					this.<>7__wrap1 = null;
					if (!this.cancelToken.IsCancellationRequested)
					{
						ServerTreeModel serverTreeModel = new ServerTreeModel(custom._serverTreeItemCollection);
						custom.ServerTree.DataContext = serverTreeModel;
						custom.ServerTree.set_Model(serverTreeModel);
					}
					custom.LoadingRing.Visibility = Visibility.Hidden;
					custom.ServerTree.Visibility = Visibility.Visible;
					custom._treeIsRebuilding = false;
				}
				catch (Exception exception)
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
		private sealed class <>c__DisplayClass35_0
		{
			public ServerTreeItem item;

			internal bool <DetermineIfIsLastUsed>b__0(int id)
			{
				return id == this.item.ServerId;
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass36_0
		{
			public ServerTreeItem item;

			internal bool <DetermineIfIsInFavs>b__0(int favServerId)
			{
				return favServerId == this.item.ServerId;
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass39_0
		{
			public int serverId;

			internal bool <GetFastestFromFavorite>b__0(ServerTreeItem x)
			{
				return x.ServerId == this.serverId;
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass49_0
		{
			public TextCompositionEventArgs e;

			public Custom <>4__this;

			internal void <CustomProfile_PreviewTextInput>b__0()
			{
				if (!this.<>4__this.SearchText.IsFocused)
				{
					int num;
					bool flag = int.TryParse(this.e.Text, out num);
					if (this.e.Text.Length <= 0)
					{
						return;
					}
					if (!flag && (this.e.Text[0] < 'a' || this.e.Text[0] > 'z') && (this.e.Text[0] < 'A' || this.e.Text[0] > 'Z'))
					{
						this.e.Handled = true;
						return;
					}
					this.<>4__this.SearchText.Text = this.e.Text;
					this.<>4__this.SearchText.Focus();
				}
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <<InitializeServerlist>b__26_0>d : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			public Custom <>4__this;

			private Custom.<>c__DisplayClass26_0 <>8__1;

			private Custom.<>c__DisplayClass26_0 <>7__wrap1;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Custom custom = this.<>4__this;
				try
				{
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							this.<>8__1 = new Custom.<>c__DisplayClass26_0();
							this.<>8__1.<>4__this = custom;
							this.<>7__wrap1 = this.<>8__1;
							taskAwaiter = Custom.Serverlist.FetchByFilter(14, null, null, true).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Custom.<<InitializeServerlist>b__26_0>d>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<bool>);
							this.<>1__state = -1;
						}
						bool arg_A1_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<bool>);
						bool result = arg_A1_0;
						this.<>7__wrap1.result = result;
						this.<>7__wrap1 = null;
						ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<>8__1.<InitializeServerlist>b__1), null);
						this.<>8__1 = null;
					}
					catch (Exception)
					{
						SynchronizationContext arg_100_0 = ObjectHolder.MainContext;
						SendOrPostCallback arg_100_1;
						if ((arg_100_1 = Custom.<>c.<>9__26_2) == null)
						{
							arg_100_1 = (Custom.<>c.<>9__26_2 = new SendOrPostCallback(Custom.<>c.<>9.<InitializeServerlist>b__26_2));
						}
						arg_100_0.Post(arg_100_1, null);
					}
				}
				catch (Exception exception)
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

		private static bool _wasOnHome = true;

		public static CgApiServerList Serverlist = new CgApiServerList();

		private readonly TaskFactory _mPingTaskFactory;

		private bool _canConnect;

		private System.Timers.Timer _delaySearchTimer;

		private IDictionary<string, ServerGroup> _serverGroups = new Dictionary<string, ServerGroup>();

		private ObservableCollection<ServerTreeItem> _serverTreeItemCollection = new ObservableCollection<ServerTreeItem>();

		private bool _treeIsRebuilding;

		private CancellationTokenSource _updateCancellationToken;

		internal Custom CustomProfile;

		internal Grid SearchGrid;

		internal TextBox SearchText;

		internal ModernProgressRing LoadingRing;

		internal Label ServerForPing;

		internal TreeList ServerTree;

		internal Button ConnectBtn;

		internal UpgradeButton UpgradeBtn;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public ServerTreeItem FavNode
		{
			get;
			set;
		}

		public ServerTreeItem LastUsedNode
		{
			get;
			set;
		}

		public ICommand SortCommand
		{
			get;
			set;
		}

		public Custom()
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.ConnectBtn.Command = new AsyncDelegateCommand(new Func<Task>(this.ConnectToServer), new Func<bool>(this.CanExecute));
			this._mPingTaskFactory = new TaskFactory(new HelperFunctions.LimitedConcurrencyLevelTaskScheduler(5));
			this._updateCancellationToken = new CancellationTokenSource();
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
			this.Filter(e.get_Fragment() ?? "serverlist");
			this.CustomProfile_IsVisibleChanged(this, default(DependencyPropertyChangedEventArgs));
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			this._updateCancellationToken.Cancel(false);
			((HelperFunctions.LimitedConcurrencyLevelTaskScheduler)this._mPingTaskFactory.Scheduler).ClearQueue();
			if (!e.get_Source().ToString().Contains("Custom_Settings"))
			{
				Custom._wasOnHome = true;
			}
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.UpgradeBtn.CurrentProfile = SettingsHolder.get_Settings().get_ProfileCustom();
			this.UpgradeBtn.SetVisibility(this.ConnectBtn, 16);
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Start_Ghost_Pro : Profiles.CustomConnect);
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileCustom();
			this._canConnect = false;
			SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerId(0);
			SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedCountry(string.Empty);
			this.InitializeServerlist();
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void InitializeServerlist()
		{
			if (DateTime.Now - Custom.Serverlist.LastItemFetch < TimeSpan.FromMinutes(2.0) && Custom.Serverlist.get_Items().Count != 0)
			{
				this.FinalizeInit();
				return;
			}
			this.LoadingRing.Visibility = Visibility.Visible;
			this.ServerTree.Visibility = Visibility.Hidden;
			Custom.Serverlist = new CgApiServerList();
			this._serverGroups = new Dictionary<string, ServerGroup>();
			this._serverTreeItemCollection = new ObservableCollection<ServerTreeItem>();
			Task.Run(new Func<Task>(this.<InitializeServerlist>b__26_0));
		}

		private void FinalizeInit()
		{
			if (Custom._wasOnHome)
			{
				if (!SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedFragment().Equals("serverlist"))
				{
					Navigation.GoToPage("Profiles/Custom", SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedFragment(), null);
				}
				else
				{
					this.Filter("serverlist");
				}
				Custom._wasOnHome = false;
			}
			else
			{
				this.Filter("serverlist");
			}
			if (!string.IsNullOrWhiteSpace(this.SearchText.Text))
			{
				this.UpdateSearchFilter();
			}
		}

		private void PrepareServerList(CgApiServerList serverlist)
		{
			if (serverlist.get_Items().Count == 0)
			{
				return;
			}
			List<CgApiServer> arg_37_0 = Custom.Serverlist.get_Items();
			Comparison<CgApiServer> arg_37_1;
			if ((arg_37_1 = Custom.<>c.<>9__28_0) == null)
			{
				arg_37_1 = (Custom.<>c.<>9__28_0 = new Comparison<CgApiServer>(Custom.<>c.<>9.<PrepareServerList>b__28_0));
			}
			arg_37_0.Sort(arg_37_1);
			ServerGroup serverGroup = null;
			foreach (CgApiServer current in serverlist.get_Items())
			{
				string countryName = current.get_Location().get_CountryName();
				if (serverGroup != null && serverGroup.Name.Equals(countryName))
				{
					serverGroup.Servers.Add(current);
				}
				else
				{
					serverGroup = new ServerGroup
					{
						CountryCode = current.get_Location().get_CountryCode(),
						Name = current.get_Location().get_CountryName()
					};
					this._serverGroups[current.get_Location().get_CountryName()] = serverGroup;
					serverGroup.Servers.Add(current);
				}
			}
		}

		private void FillTreeViewWithFavourites()
		{
			this.FavNode = new ServerTreeItem
			{
				CountryCode = "fav",
				ServerId = -1,
				CountryName = Profiles.Custom_HandleSelectedServerItem_Favourites,
				Name = Profiles.Custom_HandleSelectedServerItem_Favourites,
				RealServer = false,
				IsCountry = true,
				Id = 9999,
				ParentId = 0,
				ServerSelectable = true,
				IsFreeString = "",
				IsFav = false,
				IsSpecial = true
			};
		}

		private void FillTreeViewWithLastUsed()
		{
			this.LastUsedNode = new ServerTreeItem
			{
				CountryCode = "last",
				ServerId = -1,
				CountryName = Status.Custom_FillTreeViewWithLastUsed_Last_used,
				Name = Status.Custom_FillTreeViewWithLastUsed_Last_used,
				RealServer = false,
				IsCountry = true,
				Id = 9999,
				ParentId = 0,
				ServerSelectable = true,
				IsFreeString = "",
				IsFav = false,
				IsSpecial = true
			};
		}

		private double GetUserRatio(string totalUsers, string maxUsers)
		{
			double num = 0.0;
			if (totalUsers != null && maxUsers != null)
			{
				num = (double)((int)(double.Parse(totalUsers) / double.Parse(maxUsers) * 100.0));
			}
			if (num > 100.0)
			{
				num = 100.0;
			}
			return num;
		}

		private double GetUserRatioForCountry(List<CgApiServer> serverItems)
		{
			double num = 0.0;
			foreach (CgApiServer current in serverItems)
			{
				num += this.GetUserRatio(current.get_TotalUsers(), current.get_MaxUsers());
			}
			num /= (double)serverItems.Count;
			return num;
		}

		private string GetTorrentStateForCountry(List<CgApiServer> serverItems, string filter)
		{
			if (filter.Equals("torrent"))
			{
				return "";
			}
			string result;
			using (List<CgApiServer>.Enumerator enumerator = serverItems.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if (enumerator.Current.get_TorrentBlocked())
					{
						result = "";
						return result;
					}
				}
				goto IL_4E;
			}
			return result;
			IL_4E:
			return "";
		}

		[AsyncStateMachine(typeof(Custom.<FillTreeViewWithServers>d__34))]
		private void FillTreeViewWithServers(IDictionary<string, ServerGroup> serverGroupsFiltered, string filter, CancellationToken cancelToken)
		{
			Custom.<FillTreeViewWithServers>d__34 <FillTreeViewWithServers>d__;
			<FillTreeViewWithServers>d__.<>4__this = this;
			<FillTreeViewWithServers>d__.serverGroupsFiltered = serverGroupsFiltered;
			<FillTreeViewWithServers>d__.filter = filter;
			<FillTreeViewWithServers>d__.cancelToken = cancelToken;
			<FillTreeViewWithServers>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<FillTreeViewWithServers>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <FillTreeViewWithServers>d__.<>t__builder;
			<>t__builder.Start<Custom.<FillTreeViewWithServers>d__34>(ref <FillTreeViewWithServers>d__);
		}

		private bool DetermineIfIsLastUsed(ServerTreeItem item)
		{
			Custom.<>c__DisplayClass35_0 <>c__DisplayClass35_ = new Custom.<>c__DisplayClass35_0();
			<>c__DisplayClass35_.item = item;
			return SettingsHolder.get_Settings().get_ProfileCustom().get_LastUsedServers().Any(new Func<int, bool>(<>c__DisplayClass35_.<DetermineIfIsLastUsed>b__0));
		}

		private bool DetermineIfIsInFavs(ServerTreeItem item)
		{
			Custom.<>c__DisplayClass36_0 <>c__DisplayClass36_ = new Custom.<>c__DisplayClass36_0();
			<>c__DisplayClass36_.item = item;
			return SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().Any(new Func<int, bool>(<>c__DisplayClass36_.<DetermineIfIsInFavs>b__0));
		}

		private void TreeListSelect(bool directConnect, bool selectedByCode = false)
		{
			if (this.ServerTree.get_SelectedNode() == null)
			{
				return;
			}
			SettingsHolder.get_Settings().get_ProfileCustom().Type = "custom";
			try
			{
				ServerTreeItem serverTreeItem = this.ServerTree.get_SelectedNode().get_Tag() as ServerTreeItem;
				if (serverTreeItem != null)
				{
					this.ClearAllPreviousSelection();
					if (selectedByCode)
					{
						serverTreeItem.IsSelected = true;
					}
					SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerDisplayName(serverTreeItem.Name);
					SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedCountryDisplay(serverTreeItem.CountryCode);
					SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerIndexId(serverTreeItem.Id);
					if (serverTreeItem.CountryCode.Equals("last") && serverTreeItem.ServerTreeItems.Count > 0)
					{
						SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerDisplayName("");
						SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedCountryDisplay("");
						SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerIndexId(SettingsHolder.get_Settings().get_ProfileCustom().get_LastUsedServers()[0]);
					}
					if ((serverTreeItem.CountryCode.Equals("fav") && serverTreeItem.ServerTreeItems.Count == 0) || (serverTreeItem.CountryCode.Equals("last") && serverTreeItem.ServerTreeItems.Count == 0))
					{
						this._canConnect = false;
					}
					else if (directConnect)
					{
						if (serverTreeItem.ServerId != -1 && serverTreeItem.RealServer)
						{
							if (serverTreeItem.IsFull)
							{
								ModernDialogExtension.ShowDialogOk(General.ServerList_HandleSelectedServerItem_Server_full, General.ServerList_HandleSelectedServerItem_Server_is_already_full);
							}
							else
							{
								this._canConnect = true;
								this.ConnectToServer();
							}
						}
						else
						{
							SettingsHolder.get_Settings().get_ProfileCustom().set_IsFav(false);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerId(-1);
							if (serverTreeItem.CountryCode == "fav")
							{
								SettingsHolder.get_Settings().get_ProfileCustom().set_IsFav(true);
							}
							this.ConnectToServer();
						}
					}
					else
					{
						if (!serverTreeItem.CountryCode.Equals("last"))
						{
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedCountry(serverTreeItem.CountryCode);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerName(serverTreeItem.CountryName);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerIp("");
						}
						if (serverTreeItem.ServerId != -1 && serverTreeItem.RealServer)
						{
							this._canConnect = true;
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerId(serverTreeItem.ServerId);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerName(serverTreeItem.Name);
						}
						else
						{
							SettingsHolder.get_Settings().get_ProfileCustom().set_IsFav(false);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerId(-1);
							if (serverTreeItem.CountryCode == "fav")
							{
								SettingsHolder.get_Settings().get_ProfileCustom().set_IsFav(true);
								SettingsHolder.get_Settings().get_ProfileCustom().set_FastestFavServer(this.GetFastestFromFavorite());
							}
							this._canConnect = true;
						}
					}
				}
			}
			catch (Exception arg_2CC_0)
			{
				HelperFunctions.DebugLine(arg_2CC_0.Message);
			}
		}

		private void ClearAllPreviousSelection()
		{
			foreach (ServerTreeItem current in this._serverTreeItemCollection)
			{
				current.IsSelected = false;
				if (current.ServerTreeItems.Count > 0)
				{
					using (IEnumerator<ServerTreeItem> enumerator2 = current.ServerTreeItems.GetEnumerator())
					{
						while (enumerator2.MoveNext())
						{
							enumerator2.Current.IsSelected = false;
						}
					}
				}
			}
		}

		private int GetFastestFromFavorite()
		{
			int num = 0;
			long num2 = 9223372036854775807L;
			using (List<int>.Enumerator enumerator = SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					Custom.<>c__DisplayClass39_0 <>c__DisplayClass39_ = new Custom.<>c__DisplayClass39_0();
					<>c__DisplayClass39_.serverId = enumerator.Current;
					ServerTreeItem serverTreeItem = this.FavNode.ServerTreeItems.SingleOrDefault(new Func<ServerTreeItem, bool>(<>c__DisplayClass39_.<GetFastestFromFavorite>b__0));
					if (serverTreeItem != null)
					{
						if (serverTreeItem.PingTime < 0L)
						{
							long num3 = HelperFunctions.Ping((serverTreeItem != null) ? serverTreeItem.Ip : null, 500);
							if (num3 >= 9999L)
							{
								num3 = HelperFunctions.TcpPing((serverTreeItem != null) ? serverTreeItem.Ip : null, 500, 41200);
							}
							serverTreeItem.PingTime = num3;
						}
						if (serverTreeItem.PingTime > 0L && serverTreeItem.PingTime < num2)
						{
							num2 = serverTreeItem.PingTime;
							num = <>c__DisplayClass39_.serverId;
						}
					}
				}
			}
			if (num <= 0)
			{
				return SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers()[0];
			}
			return num;
		}

		private void UpdateSearchFilter()
		{
			((HelperFunctions.LimitedConcurrencyLevelTaskScheduler)this._mPingTaskFactory.Scheduler).ClearQueue();
			ITreeModel expr_21 = this.ServerTree.get_Model();
			if (expr_21 != null)
			{
				expr_21.FilterChildren(this.SearchText.Text.Trim());
			}
			this.ServerTree.Refresh();
			if (!string.IsNullOrWhiteSpace(this.SearchText.Text))
			{
				this.ServerTree.SetExpandState(true);
			}
		}

		private void SearchForServer(object sender, TextChangedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(this.<SearchForServer>b__41_0));
		}

		private Task ConnectToServer()
		{
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(16))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(16);
				return null;
			}
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

		private bool CanExecute()
		{
			return this._canConnect && !this._treeIsRebuilding;
		}

		private void ServerTree_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			this.TreeListSelect(false, false);
		}

		private void ServerTree_OnMouseDoubleClick(object sender, MouseButtonEventArgs e)
		{
			this.TreeListSelect(true, false);
		}

		private void Filter(string fragment)
		{
			this._updateCancellationToken.Cancel(false);
			SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedFragment(fragment);
			SettingsHolder.get_Settings().get_ProfileCustom().Type = fragment;
			ObjectHolder.ConnectionType = "custom";
			if (!(fragment == "serverlist"))
			{
				if (!(fragment == "minimum"))
				{
					if (!(fragment == "maximum"))
					{
						if (!(fragment == "bestping"))
						{
							if (!(fragment == "nospy"))
							{
								if (!(fragment == "torrent"))
								{
									ObjectHolder.CurrentProfileTab = fragment;
								}
								else
								{
									ObjectHolder.CurrentProfileTab = "torrent";
								}
							}
							else
							{
								ObjectHolder.CurrentProfileTab = "nospy servers";
							}
						}
						else
						{
							ObjectHolder.CurrentProfileTab = "fastest servers";
						}
					}
					else
					{
						ObjectHolder.CurrentProfileTab = "most users";
					}
				}
				else
				{
					ObjectHolder.CurrentProfileTab = "fewest servers";
				}
			}
			else
			{
				ObjectHolder.CurrentProfileTab = "all servers";
			}
			this._updateCancellationToken = new CancellationTokenSource();
			this.FillTreeViewWithServers(this._serverGroups, fragment, this._updateCancellationToken.Token);
		}

		private void AddToFavouritesClick(object sender, RoutedEventArgs e)
		{
			int serverId = (int)((Button)sender).Tag;
			((ServerTreeModel)this.ServerTree.get_Model()).ToggleServerFav(this.ServerTree, serverId);
		}

		private void CustomProfile_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(this.<CustomProfile_IsVisibleChanged>b__48_0));
		}

		private void CustomProfile_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			Custom.<>c__DisplayClass49_0 <>c__DisplayClass49_ = new Custom.<>c__DisplayClass49_0();
			<>c__DisplayClass49_.<>4__this = this;
			<>c__DisplayClass49_.e = e;
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(<>c__DisplayClass49_.<CustomProfile_PreviewTextInput>b__0));
		}

		private void SearchText_GotFocus(object sender, RoutedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(this.<SearchText_GotFocus>b__50_0));
		}

		private void SearchText_LostFocus(object sender, RoutedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(this.<SearchText_LostFocus>b__51_0));
		}

		[NotifyPropertyChangedInvocator]
		protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			try
			{
				PropertyChangedEventHandler expr_06 = this.PropertyChanged;
				if (expr_06 != null)
				{
					expr_06(this, new PropertyChangedEventArgs(propertyName));
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/custom.xaml", UriKind.Relative);
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
				this.CustomProfile = (Custom)target;
				this.CustomProfile.IsVisibleChanged += new DependencyPropertyChangedEventHandler(this.CustomProfile_IsVisibleChanged);
				this.CustomProfile.PreviewTextInput += new TextCompositionEventHandler(this.CustomProfile_PreviewTextInput);
				return;
			case 2:
				this.SearchGrid = (Grid)target;
				return;
			case 3:
				this.SearchText = (TextBox)target;
				this.SearchText.TextChanged += new TextChangedEventHandler(this.SearchForServer);
				this.SearchText.GotFocus += new RoutedEventHandler(this.SearchText_GotFocus);
				this.SearchText.LostFocus += new RoutedEventHandler(this.SearchText_LostFocus);
				return;
			case 4:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			case 5:
				this.ServerForPing = (Label)target;
				return;
			case 6:
				this.ServerTree = (TreeList)target;
				this.ServerTree.SelectionChanged += new SelectionChangedEventHandler(this.ServerTree_OnSelectionChanged);
				this.ServerTree.MouseDoubleClick += new MouseButtonEventHandler(this.ServerTree_OnMouseDoubleClick);
				return;
			case 8:
				this.ConnectBtn = (Button)target;
				return;
			case 9:
				this.UpgradeBtn = (UpgradeButton)target;
				return;
			}
			this._contentLoaded = true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 7)
			{
				((Button)target).Click += new RoutedEventHandler(this.AddToFavouritesClick);
			}
		}

		[AsyncStateMachine(typeof(Custom.<<InitializeServerlist>b__26_0>d)), CompilerGenerated]
		private Task <InitializeServerlist>b__26_0()
		{
			Custom.<<InitializeServerlist>b__26_0>d <<InitializeServerlist>b__26_0>d;
			<<InitializeServerlist>b__26_0>d.<>4__this = this;
			<<InitializeServerlist>b__26_0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
			<<InitializeServerlist>b__26_0>d.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <<InitializeServerlist>b__26_0>d.<>t__builder;
			<>t__builder.Start<Custom.<<InitializeServerlist>b__26_0>d>(ref <<InitializeServerlist>b__26_0>d);
			return <<InitializeServerlist>b__26_0>d.<>t__builder.Task;
		}

		[CompilerGenerated]
		private void <SearchForServer>b__41_0()
		{
			HelperFunctions.CancelExecutiion(this._delaySearchTimer);
			this._delaySearchTimer = HelperFunctions.DelayExecution(TimeSpan.FromMilliseconds(500.0), new Action(this.UpdateSearchFilter));
		}

		[CompilerGenerated]
		private void <CustomProfile_IsVisibleChanged>b__48_0()
		{
			this.CustomProfile.Focus();
		}

		[CompilerGenerated]
		private void <SearchText_GotFocus>b__50_0()
		{
			this.SearchText.SelectionStart = Math.Max(0, this.SearchText.Text.Length);
			this.SearchText.SelectionLength = 0;
			this.CustomProfile.PreviewTextInput -= new TextCompositionEventHandler(this.CustomProfile_PreviewTextInput);
		}

		[CompilerGenerated]
		private void <SearchText_LostFocus>b__51_0()
		{
			this.CustomProfile.PreviewTextInput += new TextCompositionEventHandler(this.CustomProfile_PreviewTextInput);
		}
	}
}

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

using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class HeaderToImageConverter : IValueConverter
	{
		object IValueConverter.Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value == null)
			{
				return null;
			}
			return "/TreeListDemo;component/Images/HeaderIcons/" + ((string)value).Replace(" ", string.Empty) + ".png";
		}

		object IValueConverter.ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return null;
		}
	}
}

using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class NullImageConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value == null)
			{
				return DependencyProperty.UnsetValue;
			}
			return value;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return value;
		}
	}
}

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

using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using MobileConcepts.Helpers;
using System;
using System.Drawing;
using System.IO;
using System.Reflection;

namespace CyberGhost.Pages.Profiles
{
	public class ProgramData
	{
		public int Id
		{
			get;
			set;
		}

		public string ExeName
		{
			get;
			set;
		}

		public string RegName
		{
			get;
			set;
		}

		public Uri ExeImage
		{
			get;
			set;
		}

		public string Tag
		{
			get;
			set;
		}

		public string ToolTip
		{
			get;
			set;
		}

		public string ApplicationExe
		{
			get;
			set;
		}

		public bool Visible
		{
			get;
			set;
		}

		public ProgramData(CgApiProgram program, bool visible = false)
		{
			string uriString = this.IconFromFilePath(program.GetApplicationExe());
			this.ExeImage = new Uri(uriString);
			this.ExeName = program.GetApplicationDescription();
			this.ToolTip = program.get_ExeName();
			this.ApplicationExe = program.GetApplicationExe();
			this.Visible = visible;
		}

		public ProgramData(string fileName, bool visible = false)
		{
			string text = this.IconFromFilePath(fileName);
			if (!string.IsNullOrEmpty(text) && File.Exists(text))
			{
				this.ExeImage = new Uri(text);
			}
			else
			{
				this.ExeImage = new Uri(Theming.GetThemedImage("Icons\\Functions\\blank_tile.png"));
			}
			this.ExeName = Path.GetFileName(fileName);
			this.Tag = "";
			this.ToolTip = fileName;
			this.ApplicationExe = fileName;
			this.Visible = visible;
		}

		public ProgramData()
		{
		}

		public string IconFromFilePath(string filePath)
		{
			try
			{
				Icon icon = Icon.ExtractAssociatedIcon(filePath);
				string fileName = Path.GetFileName(filePath);
				string text = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "", fileName + ".png");
				string text2 = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "", fileName + ".ico");
				string result;
				if (icon != null)
				{
					if (File.Exists(text))
					{
						result = text;
						return result;
					}
					using (FileStream fileStream = new FileStream(text2, FileMode.CreateNew))
					{
						icon.Save(fileStream);
					}
					HelperFunctions.IcoToPng(text2, text);
					if (File.Exists(text2))
					{
						File.Delete(text2);
					}
				}
				result = text;
				return result;
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} COULD NOT GET ICON {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
			return string.Empty;
		}
	}
}

using CyberGhost.RESTCommunicator.Classes;
using System;
using System.Collections.Generic;

namespace CyberGhost.Pages.Profiles
{
	public class ServerGroup
	{
		public List<CgApiServer> Servers = new List<CgApiServer>();

		public string Name
		{
			get;
			set;
		}

		public string CountryCode
		{
			get;
			set;
		}
	}
}

using System;

namespace CyberGhost.Pages.Profiles
{
	public class ServerHead
	{
		public string Name
		{
			get;
			set;
		}

		public bool RealServer
		{
			get;
			set;
		}

		public string Flag
		{
			get;
			set;
		}
	}
}

using System;
using System.Collections.ObjectModel;

namespace CyberGhost.Pages.Profiles
{
	public class ServerHeadGroup
	{
		public string Name
		{
			get;
			set;
		}

		public string Flag
		{
			get;
			set;
		}

		public int FreeServer
		{
			get;
			set;
		}

		public int PremiumServer
		{
			get;
			set;
		}

		public int PremiumUser
		{
			get;
			set;
		}

		public int OnlineUser
		{
			get;
			set;
		}

		public bool RealServer
		{
			get;
			set;
		}

		public ObservableCollection<ServerItem> Members
		{
			get;
			set;
		}

		public ObservableCollection<ServerHead> Headers
		{
			get;
			set;
		}

		public bool IsCountry
		{
			get;
			set;
		}

		public ServerHeadGroup()
		{
			this.Members = new ObservableCollection<ServerItem>();
			this.Headers = new ObservableCollection<ServerHead>();
		}
	}
}

using System;

namespace CyberGhost.Pages.Profiles
{
	public class ServerItem
	{
		public string Name
		{
			get;
			set;
		}

		public string Flag
		{
			get;
			set;
		}

		public string Ip
		{
			get;
			set;
		}

		public string Slotsfree
		{
			get;
			set;
		}

		public string TorrentAllowed
		{
			get;
			set;
		}

		public bool IsBold
		{
			get;
			set;
		}

		public bool IsFull
		{
			get;
			set;
		}

		public bool IsFree
		{
			get;
			set;
		}

		public bool IsDotVisible
		{
			get;
			set;
		}

		public string Bar
		{
			get;
			set;
		}

		public bool RealServer
		{
			get;
			set;
		}

		public bool IsSelected
		{
			get;
			set;
		}

		public bool IsExpanded
		{
			get;
			set;
		}
	}
}

using System;

namespace CyberGhost.Pages.Profiles
{
	public class ServerStats
	{
		public int FreeServers
		{
			get;
			set;
		}

		public int UserOnline
		{
			get;
			set;
		}

		public int PremiumServer
		{
			get;
			set;
		}

		public int PremiumUser
		{
			get;
			set;
		}
	}
}

using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class StringToColorConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((string)value == "yes")
			{
				return "Green";
			}
			return "Red";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return false;
		}
	}
}

using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace CyberGhost.Pages.Profiles
{
	public class TreeViewItemBase : INotifyPropertyChanged
	{
		private bool _isExpanded;

		private bool _isSelected;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public bool IsSelected
		{
			get
			{
				return this._isSelected;
			}
			set
			{
				if (value != this._isSelected)
				{
					this._isSelected = value;
					this.NotifyPropertyChanged("IsSelected");
				}
			}
		}

		public bool IsExpanded
		{
			get
			{
				return this._isExpanded;
			}
			set
			{
				if (value != this._isExpanded)
				{
					this._isExpanded = value;
					this.NotifyPropertyChanged("IsExpanded");
				}
			}
		}

		public void NotifyPropertyChanged(string propName)
		{
			PropertyChangedEventHandler expr_06 = this.PropertyChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new PropertyChangedEventArgs(propName));
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages.Profiles
{
	public class Unblock : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <OnFragmentNavigation>d__2 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public Unblock <>4__this;

			public FragmentNavigationEventArgs e;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Unblock unblock = this.<>4__this;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						unblock.UnblockItemGrid.ListCancellationToken.Cancel(false);
						if (!unblock.UnblockItemGrid.BuildingContent)
						{
							goto IL_9D;
						}
						taskAwaiter = unblock.UnblockItemGrid.UpdateCompletionSource.Task.GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Unblock.<OnFragmentNavigation>d__2>(ref taskAwaiter, ref this);
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
					IL_9D:
					if (string.IsNullOrEmpty(this.e.get_Fragment()))
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedFragment(string.Empty);
						unblock.FilterAll();
					}
					if (this.e.get_Fragment() != null && this.e.get_Fragment().Equals("top"))
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedFragment("top");
						unblock.FilterTop5();
					}
					if (this.e.get_Fragment() != null && this.e.get_Fragment().Equals("region"))
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedFragment("region");
						unblock.FilterRegion();
					}
				}
				catch (Exception exception)
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
		private sealed class <>c__DisplayClass6_0
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<CallUnblockList>b__0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncTaskMethodBuilder <>t__builder;

				public Unblock.<>c__DisplayClass6_0 <>4__this;

				private TaskAwaiter<bool> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					Unblock.<>c__DisplayClass6_0 <>c__DisplayClass6_ = this.<>4__this;
					try
					{
						try
						{
							TaskAwaiter<bool> taskAwaiter;
							if (num != 0)
							{
								if (!(DateTime.Now - SettingsHolder.get_Settings().get_ProfileUnblock().UnblockList.LastItemFetch > TimeSpan.FromMinutes(5.0)))
								{
									goto IL_B7;
								}
								taskAwaiter = SettingsHolder.get_Settings().get_ProfileUnblock().UnblockList.Fetch().GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									this.<>1__state = 0;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Unblock.<>c__DisplayClass6_0.<<CallUnblockList>b__0>d>(ref taskAwaiter, ref this);
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
							IL_B7:
							SynchronizationContext arg_DC_0 = ObjectHolder.MainContext;
							SendOrPostCallback arg_DC_1;
							if ((arg_DC_1 = <>c__DisplayClass6_.<>9__1) == null)
							{
								arg_DC_1 = (<>c__DisplayClass6_.<>9__1 = new SendOrPostCallback(<>c__DisplayClass6_.<CallUnblockList>b__1));
							}
							arg_DC_0.Post(arg_DC_1, null);
						}
						catch (Exception)
						{
							SynchronizationContext arg_109_0 = ObjectHolder.MainContext;
							SendOrPostCallback arg_109_1;
							if ((arg_109_1 = Unblock.<>c.<>9__6_2) == null)
							{
								arg_109_1 = (Unblock.<>c.<>9__6_2 = new SendOrPostCallback(Unblock.<>c.<>9.<CallUnblockList>b__6_2));
							}
							arg_109_0.Post(arg_109_1, null);
						}
						if (SettingsHolder.get_Settings().get_ProfileUnblock().UnblockList.get_Items().Count == 0)
						{
							Navigation.GoHome();
						}
					}
					catch (Exception exception)
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

			public NavigationEventArgs e;

			public Unblock <>4__this;

			public SendOrPostCallback <>9__1;

			[AsyncStateMachine(typeof(Unblock.<>c__DisplayClass6_0.<<CallUnblockList>b__0>d))]
			internal Task <CallUnblockList>b__0()
			{
				Unblock.<>c__DisplayClass6_0.<<CallUnblockList>b__0>d <<CallUnblockList>b__0>d;
				<<CallUnblockList>b__0>d.<>4__this = this;
				<<CallUnblockList>b__0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
				<<CallUnblockList>b__0>d.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <<CallUnblockList>b__0>d.<>t__builder;
				<>t__builder.Start<Unblock.<>c__DisplayClass6_0.<<CallUnblockList>b__0>d>(ref <<CallUnblockList>b__0>d);
				return <<CallUnblockList>b__0>d.<>t__builder.Task;
			}

			internal void <CallUnblockList>b__1(object o)
			{
				this.<>4__this.FinalizeUnblockList(this.e);
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Unblock.<>c <>9 = new Unblock.<>c();

			public static SendOrPostCallback <>9__6_2;

			internal void <CallUnblockList>b__6_2(object o)
			{
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
				Navigation.GoHome();
			}
		}

		private static bool _navigatedToUnblock;

		internal Unblock UnblockProfile;

		internal UnblockItemGrid UnblockItemGrid;

		private bool _contentLoaded;

		public Unblock()
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.UnblockItemGrid.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUnblock();
		}

		[AsyncStateMachine(typeof(Unblock.<OnFragmentNavigation>d__2))]
		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
			Unblock.<OnFragmentNavigation>d__2 <OnFragmentNavigation>d__;
			<OnFragmentNavigation>d__.<>4__this = this;
			<OnFragmentNavigation>d__.e = e;
			<OnFragmentNavigation>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnFragmentNavigation>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnFragmentNavigation>d__.<>t__builder;
			<>t__builder.Start<Unblock.<OnFragmentNavigation>d__2>(ref <OnFragmentNavigation>d__);
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			Unblock._navigatedToUnblock = false;
			this.UnblockItemGrid.ListCancellationToken.Cancel(false);
			this.UnblockItemGrid.ListCancellationToken = new CancellationTokenSource();
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.UnblockItemGrid.InitPhase = true;
			this.UnblockItemGrid.CountryCode = HelperFunctions.GetSystemRegionCode();
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUnblock();
			if (!Unblock._navigatedToUnblock)
			{
				this.CallUnblockList(e);
			}
			else if (this.FinalizeUnblockList(e))
			{
				FragmentNavigationEventArgs expr_55 = new FragmentNavigationEventArgs();
				expr_55.set_Fragment(GuiHelper.GetFragment(e.get_Source().ToString()));
				this.OnFragmentNavigation(expr_55);
			}
			ObjectHolder.ConnectionType = "manual";
			ObjectHolder.CurrentProfileTab = "all";
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			this.UnblockItemGrid.ListCancellationToken.Cancel(false);
		}

		public void CallUnblockList(NavigationEventArgs e)
		{
			Unblock.<>c__DisplayClass6_0 expr_05 = new Unblock.<>c__DisplayClass6_0();
			expr_05.<>4__this = this;
			expr_05.e = e;
			if (SettingsHolder.get_Settings().get_ProfileUnblock().UnblockList == null)
			{
				SettingsHolder.get_Settings().get_ProfileUnblock().UnblockList = new CgApiServerContentUrlList();
			}
			Task.Run(new Func<Task>(expr_05.<CallUnblockList>b__0));
		}

		private bool FinalizeUnblockList(NavigationEventArgs e)
		{
			Unblock._navigatedToUnblock = true;
			if (!e.get_Source().ToString().Contains("#"))
			{
				if (SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedFragment().Equals("region"))
				{
					this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.OwnRegion;
					Navigation.GoToPage("Profiles/Unblock", "region", null);
				}
				if (SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedFragment().Equals("top"))
				{
					this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.Top5;
					Navigation.GoToPage("Profiles/Unblock", "top", null);
				}
				if (SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedFragment().Equals(""))
				{
					this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.All;
					this.FilterAll();
				}
				return false;
			}
			return true;
		}

		private void FilterAll()
		{
			this.UnblockItemGrid.IsFilterChanged = (this.UnblockItemGrid.CurrentActiveFilter != UnblockItemGrid.UnblockActiveFilter.All);
			this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.All;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Visible;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Visible;
			this.UnblockItemGrid.StartingBuildupContent("", false, false);
			this.UnblockItemGrid.SearchEnabled = true;
			ObjectHolder.CurrentProfileTab = "all";
		}

		private void FilterRegion()
		{
			this.UnblockItemGrid.IsFilterChanged = (this.UnblockItemGrid.CurrentActiveFilter != UnblockItemGrid.UnblockActiveFilter.OwnRegion);
			this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.OwnRegion;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Visible;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Visible;
			this.UnblockItemGrid.StartingBuildupContent("", false, true);
			this.UnblockItemGrid.SearchEnabled = true;
			ObjectHolder.CurrentProfileTab = "own region";
		}

		private void FilterTop5()
		{
			this.UnblockItemGrid.IsFilterChanged = (this.UnblockItemGrid.CurrentActiveFilter != UnblockItemGrid.UnblockActiveFilter.Top5);
			this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.Top5;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Visible;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Visible;
			this.UnblockItemGrid.StartingBuildupContent("", true, false);
			this.UnblockItemGrid.SearchEnabled = true;
			ObjectHolder.CurrentProfileTab = "most popular";
		}

		private void UnblockProfile_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			if ((bool)e.NewValue)
			{
				this.UnblockItemGrid.FocusOnSearchText();
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/unblock.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.UnblockProfile = (Unblock)target;
				this.UnblockProfile.IsVisibleChanged += new DependencyPropertyChangedEventHandler(this.UnblockProfile_IsVisibleChanged);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.UnblockItemGrid = (UnblockItemGrid)target;
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages.Profiles
{
	public class Uncensoring : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Uncensoring.<>c <>9 = new Uncensoring.<>c();

			public static SendOrPostCallback <>9__10_2;

			internal void <CallUnblockList>b__10_2(object o)
			{
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
				Navigation.GoHome();
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <<CallUnblockList>b__10_0>d : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			public Uncensoring <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Uncensoring @object = this.<>4__this;
				try
				{
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							if (!(DateTime.Now - SettingsHolder.get_Settings().get_ProfileUncensoring().UnblockList.LastItemFetch > TimeSpan.FromMinutes(5.0)))
							{
								goto IL_B7;
							}
							taskAwaiter = SettingsHolder.get_Settings().get_ProfileUncensoring().UnblockList.FetchForUncensoring().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Uncensoring.<<CallUnblockList>b__10_0>d>(ref taskAwaiter, ref this);
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
						IL_B7:
						ObjectHolder.MainContext.Post(new SendOrPostCallback(@object.<CallUnblockList>b__10_1), null);
					}
					catch (Exception)
					{
						SynchronizationContext arg_F6_0 = ObjectHolder.MainContext;
						SendOrPostCallback arg_F6_1;
						if ((arg_F6_1 = Uncensoring.<>c.<>9__10_2) == null)
						{
							arg_F6_1 = (Uncensoring.<>c.<>9__10_2 = new SendOrPostCallback(Uncensoring.<>c.<>9.<CallUnblockList>b__10_2));
						}
						arg_F6_0.Post(arg_F6_1, null);
					}
					if (SettingsHolder.get_Settings().get_ProfileUncensoring().UnblockList.get_Items().Count == 0)
					{
						Navigation.GoHome();
					}
				}
				catch (Exception exception)
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

		internal UnblockItemGrid UnblockItemGrid;

		private bool _contentLoaded;

		public ObservableCollection<UnblockItem> UnblockItems
		{
			get;
			set;
		}

		public Uncensoring()
		{
			this.InitializeComponent();
			this.UnblockItemGrid.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUncensoring();
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.ListCancellationToken = new CancellationTokenSource();
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.UnblockItemGrid.InitPhase = true;
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUncensoring();
			this.CallUnblockList();
			ObjectHolder.ConnectionType = "manual";
			ObjectHolder.CurrentProfileTab = "none";
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			this.UnblockItemGrid.ListCancellationToken.Cancel(false);
		}

		private void FilterAll()
		{
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Visible;
			this.UnblockItemGrid.StartingBuildupContent("", false, false);
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.SearchText.IsEnabled = true;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Visible;
		}

		private void CallUnblockList()
		{
			if (SettingsHolder.get_Settings().get_ProfileUncensoring().UnblockList == null)
			{
				SettingsHolder.get_Settings().get_ProfileUncensoring().UnblockList = new CgApiServerContentUrlList();
			}
			Task.Run(new Func<Task>(this.<CallUnblockList>b__10_0));
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/uncensoring.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.UnblockItemGrid = (UnblockItemGrid)target;
				return;
			}
			this._contentLoaded = true;
		}

		[AsyncStateMachine(typeof(Uncensoring.<<CallUnblockList>b__10_0>d)), CompilerGenerated]
		private Task <CallUnblockList>b__10_0()
		{
			Uncensoring.<<CallUnblockList>b__10_0>d <<CallUnblockList>b__10_0>d;
			<<CallUnblockList>b__10_0>d.<>4__this = this;
			<<CallUnblockList>b__10_0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
			<<CallUnblockList>b__10_0>d.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <<CallUnblockList>b__10_0>d.<>t__builder;
			<>t__builder.Start<Uncensoring.<<CallUnblockList>b__10_0>d>(ref <<CallUnblockList>b__10_0>d);
			return <<CallUnblockList>b__10_0>d.<>t__builder.Task;
		}

		[CompilerGenerated]
		private void <CallUnblockList>b__10_1(object o)
		{
			this.FilterAll();
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.MCTreeList;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Threading;

namespace CyberGhost.Pages.Profiles
{
	public class UnblockServerList : UserControl, IComponentConnector, IStyleConnector, IContent
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <InputUrl_TextChanged>d__26 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public object sender;

			public UnblockServerList <>4__this;

			private TaskAwaiter<Uri> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				UnblockServerList unblockServerList = this.<>4__this;
				try
				{
					TaskAwaiter<Uri> taskAwaiter;
					if (num != 0)
					{
						TextBox textBox = this.sender as TextBox;
						if (textBox == null)
						{
							goto IL_D7;
						}
						taskAwaiter = HelperFunctions.CheckIfUriIsValid(textBox.Text).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<Uri>, UnblockServerList.<InputUrl_TextChanged>d__26>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<Uri>);
						this.<>1__state = -1;
					}
					Uri arg_90_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<Uri>);
					Uri uri = arg_90_0;
					unblockServerList.ProposedWebsite = ((uri != null) ? uri.ToString() : null);
					unblockServerList.SaveCustomWebsiteBtn.IsEnabled = !string.IsNullOrWhiteSpace(unblockServerList.ProposedWebsite);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_D7:
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
		private sealed class <>c__DisplayClass27_0
		{
			public CgApiServerContentUrl serverContentUrl;

			public UnblockServerList <>4__this;

			internal void <SaveCustomWebsiteBtn_Click>b__0()
			{
				this.serverContentUrl.PostPropose(this.<>4__this.ProposedWebsite, this.<>4__this.SelectedServerIds);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <InitializeServerlist>d__28 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public UnblockServerList <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				UnblockServerList unblockServerList = this.<>4__this;
				try
				{
					if (num != 0)
					{
						unblockServerList._serverlist = new CgApiServerList();
						unblockServerList._serverGroups = new Dictionary<string, ServerGroup>();
						unblockServerList._stuff = new ObservableCollection<ServerTreeItem>();
					}
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							taskAwaiter = unblockServerList._serverlist.FetchByFilter(14, null, null, true).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								int arg_59_1 = 0;
								num = 0;
								this.<>1__state = arg_59_1;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, UnblockServerList.<InitializeServerlist>d__28>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<bool>);
							int arg_8F_1 = -1;
							num = -1;
							this.<>1__state = arg_8F_1;
						}
						bool arg_A3_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<bool>);
						if (arg_A3_0)
						{
							List<CgApiServer>.Enumerator enumerator = unblockServerList._serverlist.get_Items().GetEnumerator();
							try
							{
								while (enumerator.MoveNext())
								{
									CgApiServer current = enumerator.Current;
									if (current.get_Location() == null)
									{
										current.set_Location(new CgApiLocation());
									}
									current.get_Location().set_CountryName(GuiHelper.FindTranslationForCountry(current.get_CountryCode()));
									current.get_Location().set_CountryCode(current.get_CountryCode());
								}
							}
							finally
							{
								if (num < 0)
								{
									((IDisposable)enumerator).Dispose();
								}
							}
							unblockServerList.PrepareServerList(unblockServerList._serverlist);
							unblockServerList.SortServerList();
							unblockServerList.FillTreeViewWithServers(unblockServerList._serverGroups);
						}
						else
						{
							ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
							Navigation.GoHome();
						}
					}
					catch (Exception)
					{
						ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
						Navigation.GoHome();
					}
				}
				catch (Exception exception)
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
			public static readonly UnblockServerList.<>c <>9 = new UnblockServerList.<>c();

			public static Comparison<CgApiServer> <>9__29_0;

			public static Comparison<CgApiServer> <>9__30_0;

			internal int <PrepareServerList>b__29_0(CgApiServer x, CgApiServer y)
			{
				return string.CompareOrdinal(x.get_Location().get_CountryName(), y.get_Location().get_CountryName());
			}

			internal int <SortServerList>b__30_0(CgApiServer x, CgApiServer y)
			{
				return string.CompareOrdinal(x.get_Name(), y.get_Name());
			}
		}

		private IDictionary<string, ServerGroup> _serverGroups = new Dictionary<string, ServerGroup>();

		private CgApiServerList _serverlist = new CgApiServerList();

		private ObservableCollection<ServerTreeItem> _stuff = new ObservableCollection<ServerTreeItem>();

		private Timer _delaySearchTimer;

		internal TextBox SearchText;

		internal TextBox InputUrl;

		internal DockPanel DockForPremium;

		internal ModernProgressRing LoadingRing;

		internal TreeList ServerTree;

		internal Button Cancel;

		internal Button SaveCustomWebsiteBtn;

		private bool _contentLoaded;

		public bool CanConnect
		{
			get;
			set;
		}

		public string ProposedWebsite
		{
			get;
			set;
		}

		public List<int> SelectedServerIds
		{
			get;
			set;
		}

		public UnblockServerList()
		{
			this.<SelectedServerIds>k__BackingField = new List<int>();
			base..ctor();
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
			if (string.IsNullOrEmpty(ObjectHolder.CustomUnblockItemUrl))
			{
				this.InputUrl.Text = string.Empty;
				if (ObjectHolder.CustomUnblockItemServerIds != null)
				{
					ObjectHolder.CustomUnblockItemServerIds.Clear();
				}
				this.SelectedServerIds = new List<int>();
			}
			else
			{
				this.InputUrl.Text = ObjectHolder.CustomUnblockItemUrl;
				ObjectHolder.CustomUnblockItemServerIds = SettingsHolder.get_Settings().get_ProfileUnblock().GetServerIdsFromCustomUrl(ObjectHolder.CustomUnblockItemUrl);
				this.SelectedServerIds = ObjectHolder.CustomUnblockItemServerIds;
			}
			this.LoadingRing.Visibility = Visibility.Visible;
			this.ServerTree.Visibility = Visibility.Hidden;
			this.InitializeServerlist();
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		public bool DetermineIfServerIdIsInCustomUnblockItemServerIds(int id)
		{
			if (ObjectHolder.CustomUnblockItemServerIds == null)
			{
				return false;
			}
			using (List<int>.Enumerator enumerator = this.SelectedServerIds.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if (enumerator.Current == id)
					{
						return true;
					}
				}
			}
			return false;
		}

		private void Cancel_OnClick(object sender, RoutedEventArgs e)
		{
			Navigation.GoToPage("Profiles/Unblock", null, null);
		}

		private void SearchForServer(object sender, TextChangedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(this.<SearchForServer>b__23_0));
		}

		private void UpdateServerFilter()
		{
			ITreeModel expr_0B = this.ServerTree.get_Model();
			if (expr_0B != null)
			{
				expr_0B.FilterChildren(this.SearchText.Text.Trim());
			}
			this.ServerTree.Refresh();
			if (!string.IsNullOrWhiteSpace(this.SearchText.Text))
			{
				this.ServerTree.SetExpandState(true);
			}
		}

		private void ToggleButton_OnChecked(object sender, RoutedEventArgs e)
		{
			CheckBox checkBox = (CheckBox)sender;
			int item = (int)checkBox.Tag;
			if (checkBox.IsChecked.HasValue)
			{
				if (checkBox.IsChecked.Value)
				{
					if (!this.SelectedServerIds.Contains(item))
					{
						this.SelectedServerIds.Add(item);
					}
				}
				else
				{
					this.SelectedServerIds.Remove(item);
				}
			}
			this.CanConnect = (this.SelectedServerIds.Count > 0);
		}

		[AsyncStateMachine(typeof(UnblockServerList.<InputUrl_TextChanged>d__26))]
		private void InputUrl_TextChanged(object sender, TextChangedEventArgs e)
		{
			UnblockServerList.<InputUrl_TextChanged>d__26 <InputUrl_TextChanged>d__;
			<InputUrl_TextChanged>d__.<>4__this = this;
			<InputUrl_TextChanged>d__.sender = sender;
			<InputUrl_TextChanged>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<InputUrl_TextChanged>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <InputUrl_TextChanged>d__.<>t__builder;
			<>t__builder.Start<UnblockServerList.<InputUrl_TextChanged>d__26>(ref <InputUrl_TextChanged>d__);
		}

		private void SaveCustomWebsiteBtn_Click(object sender, RoutedEventArgs e)
		{
			if (this.SelectedServerIds.Count == 0)
			{
				ModernDialogExtension.ShowDialogOk(Profiles.Unblock_ServerList_SaveCustomWebsiteBtn_Click_No_servers_selected, Profiles.Unblock_ServerList_SaveCustomWebsiteBtn_Click_Please_select_one_or_more_servers);
				return;
			}
			if (this.ProposedWebsite == null)
			{
				string text = string.Format("Invalid URL {0}", this.InputUrl.Text);
				this.InputUrl.Text = text;
				Keyboard.Focus(this.InputUrl);
			}
			if (SettingsHolder.get_Settings().get_ProfileUnblock().CeckIfUrlIsInCustomEntry(this.ProposedWebsite))
			{
				SettingsHolder.get_Settings().get_ProfileUnblock().EditCustomEntry(this.ProposedWebsite, this.SelectedServerIds);
			}
			else
			{
				SettingsHolder.get_Settings().get_ProfileUnblock().AddCustomEntry(this.ProposedWebsite, this.SelectedServerIds);
			}
			if (ModernDialogExtension.ShowDialogYesNo(Profiles.Unblock_ServerList_SaveCustomWebsiteBtn_Click_Help_us_to_improve_our_service, Profiles.Unblock_ServerList_SaveCustomWebsiteBtn_Click_Would_you_like_to_submit_your_settings_to_us__In_order_to_provide_further_websites_to_all_of_our_customers_we_will_store_and_review_you_propse_anonymously_) == MessageBoxResult.Yes)
			{
				try
				{
					UnblockServerList.<>c__DisplayClass27_0 expr_BA = new UnblockServerList.<>c__DisplayClass27_0();
					expr_BA.<>4__this = this;
					expr_BA.serverContentUrl = new CgApiServerContentUrl();
					Task.Run(new Action(expr_BA.<SaveCustomWebsiteBtn_Click>b__0));
				}
				catch (Exception)
				{
					HelperFunctions.DebugLine("COULD NOT PROPSE WEBSITE");
				}
			}
			Navigation.GoToPage("Profiles/Unblock", null, null);
		}

		[AsyncStateMachine(typeof(UnblockServerList.<InitializeServerlist>d__28))]
		private void InitializeServerlist()
		{
			UnblockServerList.<InitializeServerlist>d__28 <InitializeServerlist>d__;
			<InitializeServerlist>d__.<>4__this = this;
			<InitializeServerlist>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<InitializeServerlist>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <InitializeServerlist>d__.<>t__builder;
			<>t__builder.Start<UnblockServerList.<InitializeServerlist>d__28>(ref <InitializeServerlist>d__);
		}

		private void PrepareServerList(CgApiServerList serverlist)
		{
			if (serverlist.get_Items().Count == 0)
			{
				return;
			}
			List<CgApiServer> arg_38_0 = this._serverlist.get_Items();
			Comparison<CgApiServer> arg_38_1;
			if ((arg_38_1 = UnblockServerList.<>c.<>9__29_0) == null)
			{
				arg_38_1 = (UnblockServerList.<>c.<>9__29_0 = new Comparison<CgApiServer>(UnblockServerList.<>c.<>9.<PrepareServerList>b__29_0));
			}
			arg_38_0.Sort(arg_38_1);
			ServerGroup serverGroup = null;
			foreach (CgApiServer current in serverlist.get_Items())
			{
				string countryName = current.get_Location().get_CountryName();
				if (serverGroup != null && serverGroup.Name.Equals(countryName))
				{
					serverGroup.Servers.Add(current);
				}
				else
				{
					serverGroup = new ServerGroup
					{
						CountryCode = current.get_Location().get_CountryCode(),
						Name = current.get_Location().get_CountryName()
					};
					this._serverGroups[current.get_Location().get_CountryName()] = serverGroup;
					serverGroup.Servers.Add(current);
				}
			}
		}

		private void SortServerList()
		{
			foreach (KeyValuePair<string, ServerGroup> current in this._serverGroups)
			{
				List<CgApiServer> arg_41_0 = current.Value.Servers;
				Comparison<CgApiServer> arg_41_1;
				if ((arg_41_1 = UnblockServerList.<>c.<>9__30_0) == null)
				{
					arg_41_1 = (UnblockServerList.<>c.<>9__30_0 = new Comparison<CgApiServer>(UnblockServerList.<>c.<>9.<SortServerList>b__30_0));
				}
				arg_41_0.Sort(arg_41_1);
			}
		}

		private void FillTreeViewWithServers(IDictionary<string, ServerGroup> serverGroupsFiltered)
		{
			int num = 0;
			foreach (KeyValuePair<string, ServerGroup> current in serverGroupsFiltered)
			{
				int parentId = num;
				string themedImage = Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", current.Value.CountryCode)));
				ServerTreeItem serverTreeItem = new ServerTreeItem
				{
					CountryCode = current.Value.CountryCode,
					ServerId = -1,
					CountryName = current.Value.Name,
					Name = current.Value.Name,
					RealServer = false,
					IsCountry = true,
					Flag = themedImage,
					Id = num,
					ParentId = num,
					ServerSelectable = true,
					IsFreeString = ""
				};
				foreach (CgApiServer current2 in current.Value.Servers)
				{
					if (current2.get_Enabled() && current2.get_Online())
					{
						if (current2.get_AvailableForFree())
						{
							continue;
						}
						double num2 = 0.0;
						if (current2.get_TotalUsers() != null && current2.get_MaxUsers() != null)
						{
							num2 = (double)((int)(double.Parse(current2.get_TotalUsers()) / double.Parse(current2.get_MaxUsers()) * 100.0));
						}
						if (num2 > 100.0)
						{
							num2 = 100.0;
						}
						if (current2.get_Enabled() && current2.get_Online())
						{
							ServerTreeItem item = new ServerTreeItem
							{
								CountryCode = current2.get_Location().get_CountryCode(),
								ServerId = current2.get_Id(),
								ParentId = parentId,
								Id = num,
								CountryName = serverTreeItem.Name,
								Name = current2.get_Name(),
								RealServer = true,
								Ip = current2.get_Ip(),
								UserRatio = num2,
								Slotsfree = string.Format("{0:0}", num2) + " % ",
								TorrentAllowed = (current2.get_TorrentBlocked() ? "" : ""),
								Flag = themedImage,
								IsBold = false,
								IsFull = current2.get_Full(),
								IsFree = current2.get_AvailableForFree(),
								IsDotVisible = true,
								IsSelected = this.DetermineIfServerIdIsInCustomUnblockItemServerIds(current2.get_Id()),
								Bar = "",
								ServerSelectable = !current2.get_HideIfNotInPlan(),
								IsFreeString = (current2.get_AvailableForFree() ? Profiles.ServerLists_FillTreeViewWithServers_Free : Profiles.ServerLists_FillTreeViewWithServers_Premium)
							};
							if (ObjectHolder.CurrentUser.IsFreeUser())
							{
								serverTreeItem.ServerTreeItems.Add(item);
							}
							else if (!current2.get_AvailableForFree() && !ObjectHolder.CurrentUser.IsFreeUser())
							{
								serverTreeItem.ServerTreeItems.Add(item);
							}
						}
					}
					num++;
				}
				this._stuff.Add(serverTreeItem);
			}
			ServerTreeModel serverTreeModel = new ServerTreeModel(this._stuff);
			this.ServerTree.DataContext = serverTreeModel;
			this.ServerTree.set_Model(serverTreeModel);
			this.LoadingRing.Visibility = Visibility.Hidden;
			this.ServerTree.Visibility = Visibility.Visible;
			if (!string.IsNullOrEmpty(this.SearchText.Text))
			{
				this.UpdateServerFilter();
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/unblock_serverlist.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.SearchText = (TextBox)target;
				this.SearchText.TextChanged += new TextChangedEventHandler(this.SearchForServer);
				return;
			case 2:
				this.InputUrl = (TextBox)target;
				this.InputUrl.TextChanged += new TextChangedEventHandler(this.InputUrl_TextChanged);
				return;
			case 3:
				this.DockForPremium = (DockPanel)target;
				return;
			case 4:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			case 5:
				this.ServerTree = (TreeList)target;
				return;
			case 7:
				this.Cancel = (Button)target;
				this.Cancel.Click += new RoutedEventHandler(this.Cancel_OnClick);
				return;
			case 8:
				this.SaveCustomWebsiteBtn = (Button)target;
				this.SaveCustomWebsiteBtn.Click += new RoutedEventHandler(this.SaveCustomWebsiteBtn_Click);
				return;
			}
			this._contentLoaded = true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 6)
			{
				((CheckBox)target).Checked += new RoutedEventHandler(this.ToggleButton_OnChecked);
				((CheckBox)target).Unchecked += new RoutedEventHandler(this.ToggleButton_OnChecked);
			}
		}

		[CompilerGenerated]
		private void <SearchForServer>b__23_0()
		{
			HelperFunctions.CancelExecutiion(this._delaySearchTimer);
			this._delaySearchTimer = HelperFunctions.DelayExecution(TimeSpan.FromMilliseconds(500.0), new Action(this.UpdateServerFilter));
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.SettingsItems;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.Network;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages.Profiles
{
	public class Wifi : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass8_0
		{
			public HelperFunctions.WlanInfos[] newWiFis;

			public Wifi <>4__this;

			internal void <_wiFiDetector_OnWifiDisconnected>b__0(object o)
			{
				this.<>4__this.UpdateWifiDisplay(this.newWiFis[0], false);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass9_0
		{
			public HelperFunctions.WlanInfos[] newWiFis;

			public Wifi <>4__this;

			internal void <_wiFiDetector_OnNewWiFiDetected>b__0(object o)
			{
				this.<>4__this.UpdateWifiDisplay(this.newWiFis[0], true);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass10_0
		{
			public HelperFunctions.WlanInfos newWiFiInfos;

			public Wifi <>4__this;

			internal void <_wiFiDetector_OnSignalStrengthChanged>b__0(object o)
			{
				this.<>4__this.UpdateWifiDisplay(this.newWiFiInfos, true);
			}
		}

		private readonly WiFiDetector _wiFiDetector;

		private string _wifiSSid;

		internal Label SecurStatus;

		internal Label SignalStatus;

		internal Label WifiLabel;

		internal ComboBox HotspotComboBox;

		internal FeatureGroup FeatureGroup;

		internal ProfileInfoFooter InfoFooter;

		internal Button ConnectBtn;

		internal UpgradeButton UpgradeBtn;

		private bool _contentLoaded;

		public Wifi()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings().get_ProfileWifi();
			this.InfoFooter.Profile = SettingsHolder.get_Settings().get_ProfileWifi();
			this.ConnectBtn.Command = new AsyncDelegateCommand(new Func<Task>(this.ConnectToServer), new Func<bool>(this.CanExecute));
			this._wiFiDetector = new WiFiDetector();
			this._wiFiDetector.add_OnNewWiFiDetected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnNewWiFiDetected));
			this._wiFiDetector.add_OnSignalStrengthChanged(new WiFiDetector.SignalStrengthChanged(this._wiFiDetector_OnSignalStrengthChanged));
			this._wiFiDetector.add_OnWifiDisconnected(new WiFiDetector.NewWiFiDetected(this._wiFiDetector_OnWifiDisconnected));
			this._wiFiDetector.set_Enabled(true);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileWifi();
			this.FeatureGroup.CurrentProfile = SettingsHolder.get_Settings().get_ProfileWifi();
			this.FeatureGroup.BindFeatures();
			this.UpgradeBtn.CurrentProfile = SettingsHolder.get_Settings().get_ProfileWifi();
			this.UpgradeBtn.SetVisibility(this.ConnectBtn, 11);
			GuiHelper.SetUpgradeBarVisiblity(this.FeatureGroup);
			this.SetWifiSettingToCombobox(SettingsHolder.get_Settings().get_ProfileWifi().CurrentSSID);
			if (this._wiFiDetector.GetCurrentWiFi().Length != 0)
			{
				this.UpdateWifiDisplay(this._wiFiDetector.GetCurrentWiFi()[0], true);
			}
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Start_Ghost_Wi_Fi : Profiles.wifi_connect_button);
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

		private void SetWifiSettingToCombobox(string thisWifi)
		{
			SsidAction settingForSsid = WifiHelpers.GetSettingForSsid(thisWifi);
			this.HotspotComboBox.SelectedIndex = 2;
			if (settingForSsid == 2)
			{
				this.HotspotComboBox.SelectedIndex = 0;
				return;
			}
			if (settingForSsid == null)
			{
				this.HotspotComboBox.SelectedIndex = 1;
				return;
			}
			if (settingForSsid == 1)
			{
				this.HotspotComboBox.SelectedIndex = 2;
				return;
			}
			if (settingForSsid == 3)
			{
				this.HotspotComboBox.SelectedIndex = 3;
			}
		}

		private void _wiFiDetector_OnWifiDisconnected(HelperFunctions.WlanInfos[] newWiFis)
		{
			Wifi.<>c__DisplayClass8_0 <>c__DisplayClass8_ = new Wifi.<>c__DisplayClass8_0();
			<>c__DisplayClass8_.<>4__this = this;
			<>c__DisplayClass8_.newWiFis = newWiFis;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass8_.<_wiFiDetector_OnWifiDisconnected>b__0), null);
		}

		private void _wiFiDetector_OnNewWiFiDetected(HelperFunctions.WlanInfos[] newWiFis)
		{
			Wifi.<>c__DisplayClass9_0 <>c__DisplayClass9_ = new Wifi.<>c__DisplayClass9_0();
			<>c__DisplayClass9_.<>4__this = this;
			<>c__DisplayClass9_.newWiFis = newWiFis;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass9_.<_wiFiDetector_OnNewWiFiDetected>b__0), null);
		}

		private void _wiFiDetector_OnSignalStrengthChanged(HelperFunctions.WlanInfos newWiFiInfos)
		{
			Wifi.<>c__DisplayClass10_0 <>c__DisplayClass10_ = new Wifi.<>c__DisplayClass10_0();
			<>c__DisplayClass10_.<>4__this = this;
			<>c__DisplayClass10_.newWiFiInfos = newWiFiInfos;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass10_.<_wiFiDetector_OnSignalStrengthChanged>b__0), null);
		}

		private void UpdateWifiDisplay(HelperFunctions.WlanInfos newWiFiInfos, bool showDisplay)
		{
			if (showDisplay)
			{
				string content = "";
				string content2 = "";
				if (newWiFiInfos.Signal > 10u)
				{
					content2 = "";
				}
				if (newWiFiInfos.Signal <= 10u)
				{
					content2 = " ";
				}
				if (newWiFiInfos.Security.ToString() == "Secure" || newWiFiInfos.Security.ToString() == "LowSecure")
				{
					content = "";
				}
				if (newWiFiInfos.Security.ToString() == "NotSecure")
				{
					content = "";
				}
				this.SignalStatus.Content = content2;
				this.SecurStatus.Content = content;
				this.WifiLabel.Content = newWiFiInfos.Ssid;
				this._wifiSSid = newWiFiInfos.Ssid;
				this.SetWifiSettingToCombobox(newWiFiInfos.Ssid);
				return;
			}
			this.SignalStatus.Content = "";
			this.SecurStatus.Content = "";
			this.WifiLabel.Content = "";
		}

		private void HotspotComboBox_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			ComboBoxItem expr_10 = (ComboBoxItem)this.HotspotComboBox.SelectedItem;
			string arg_28_0;
			if (expr_10 == null)
			{
				arg_28_0 = null;
			}
			else
			{
				object expr_1C = expr_10.Tag;
				arg_28_0 = ((expr_1C != null) ? expr_1C.ToString() : null);
			}
			string text = arg_28_0;
			if (!string.IsNullOrEmpty(text))
			{
				WifiHelpers.SetStateForWifiOrAddNewWifi(this._wifiSSid, text);
			}
		}

		private Task ConnectToServer()
		{
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(11))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(11);
				return null;
			}
			ObjectHolder.ConnectionType = "manual";
			ObjectHolder.CurrentProfileTab = "none";
			return this.ConnectToServer(string.Empty);
		}

		public Task ConnectToServer(string ssid)
		{
			if (ObjectHolder.CurrentUser != null && !ObjectHolder.CurrentUser.HasUserAccessToFeature(11))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(11);
				return null;
			}
			if (!string.IsNullOrEmpty(ssid))
			{
				SettingsHolder.get_Settings().get_ProfileWifi().CurrentSSID = ssid;
			}
			else
			{
				Label expr_3E = this.WifiLabel;
				string arg_56_0;
				if (expr_3E == null)
				{
					arg_56_0 = null;
				}
				else
				{
					object expr_4A = expr_3E.Content;
					arg_56_0 = ((expr_4A != null) ? expr_4A.ToString() : null);
				}
				if (!string.IsNullOrEmpty(arg_56_0))
				{
					SettingsHolder.get_Settings().get_ProfileWifi().CurrentSSID = this.WifiLabel.Content.ToString();
				}
			}
			if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.HasUserAccessToFeature(11))
			{
				ObjectHolder.ConnectionType = "automatic";
				ObjectHolder.CurrentProfileTab = "none";
				return ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileWifi(), false, false, true);
			}
			return Task.FromResult<bool>(false);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/wifi.xaml", UriKind.Relative);
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
				this.SecurStatus = (Label)target;
				return;
			case 2:
				this.SignalStatus = (Label)target;
				return;
			case 3:
				this.WifiLabel = (Label)target;
				return;
			case 4:
				this.HotspotComboBox = (ComboBox)target;
				this.HotspotComboBox.SelectionChanged += new SelectionChangedEventHandler(this.HotspotComboBox_OnSelectionChanged);
				return;
			case 5:
				this.FeatureGroup = (FeatureGroup)target;
				return;
			case 6:
				this.InfoFooter = (ProfileInfoFooter)target;
				return;
			case 7:
				this.ConnectBtn = (Button)target;
				return;
			case 8:
				this.UpgradeBtn = (UpgradeButton)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
