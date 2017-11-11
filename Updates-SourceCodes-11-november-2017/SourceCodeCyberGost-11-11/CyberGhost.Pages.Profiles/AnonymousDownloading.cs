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
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace CyberGhost.Pages.Profiles
{
	public class AnonymousDownloading : UserControl, IComponentConnector, IStyleConnector, IContent
	{
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
			Label label = sender as Label;
			if (label == null)
			{
				return;
			}
			string strB = label.ToolTip.ToString();
			int num = 0;
			ProgramData foundItem = null;
			int num2 = -1;
			using (IEnumerator enumerator = ((IEnumerable)this.TorrentComboBox.Items).GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					ProgramData programData = enumerator.Current as ProgramData;
					if (programData != null && string.Compare(programData.ToolTip, strB, StringComparison.OrdinalIgnoreCase) == 0)
					{
						num2 = num;
						foundItem = programData;
						break;
					}
					num++;
				}
			}
			try
			{
				CgProfileAnonymousDownloading profileAnonymousDownloading = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
				if (foundItem != null && num2 > -1)
				{
					CgProfileAnonymousDownloading arg_BE_0 = profileAnonymousDownloading;
					string downloadToolExeName;
					profileAnonymousDownloading.set_DownloadToolApplicationPath(downloadToolExeName = "empty");
					arg_BE_0.set_DownloadToolExeName(downloadToolExeName);
					this.ProgramDataList.RemoveAt(num2);
					int index = profileAnonymousDownloading.get_CustomApps().FindIndex((string x) => x.Equals(foundItem.ApplicationExe, StringComparison.OrdinalIgnoreCase));
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
			new Task(delegate
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
			}).Start();
		}

		private void SendCustomProgramInfoToApi(ProgramData progData)
		{
			AnonymousDownloading.<>c__DisplayClass30_0 expr_05 = new AnonymousDownloading.<>c__DisplayClass30_0();
			expr_05.<>4__this = this;
			expr_05.progData = progData;
			new Task(delegate
			{
				try
				{
					CgApiProgram expr_05 = new CgApiProgram();
					expr_05.set_ExeName(expr_05.progData.ExeName);
					expr_05.set_RegName(expr_05.progData.RegName);
					expr_05.PostProgramInfo().ConfigureAwait(false);
				}
				catch (Exception ex)
				{
					McExceptionLogItem expr_3B = new McExceptionLogItem();
					expr_3B.set_RelatingException(ex);
					expr_3B.set_ExceptionMessage("Failed to trigger Post Program Info" + ex.Message);
					McExceptionLogItem aEvent = expr_3B;
					ObjectHolder.EventLogger.LogLocalEvent(aEvent);
					CgApiProgram expr_05;
					HelperFunctions.DebugLine(string.Format("{0}::{1} PostProgramInfo FAILED {2}", expr_05.<>4__this.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
				}
			}).Start();
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
	}
}
