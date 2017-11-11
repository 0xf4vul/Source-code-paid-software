using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;

namespace CyberGhost.Helpers
{
	public class NotifierHelper
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly NotifierHelper.<>c <>9 = new NotifierHelper.<>c();

			public static Func<TrayHistoryData, long> <>9__4_0;

			internal long <ReorderCollection>b__4_0(TrayHistoryData x)
			{
				return x.get_LastUsed();
			}
		}

		public const int MaxTrayCount = 5;

		public static void AddProfileToHistory(CgBase aProfile)
		{
			if (aProfile != null)
			{
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					TrayHistoryData expr_05 = new TrayHistoryData();
					expr_05.set_Profile((CgBase)aProfile.Clone());
					expr_05.set_LastUsed(DateTime.Now.Ticks);
					TrayHistoryData trayHistoryData = expr_05;
					try
					{
						SettingsHolder.get_Settings().get_TrayHistory().Add(trayHistoryData);
						NotifierHelper.InitHistoryCollection();
						NotifierHelper.FindAndRemoveDuplicate(trayHistoryData);
						while (SettingsHolder.get_Settings().get_TrayHistory().Count > 5)
						{
							SettingsHolder.get_Settings().get_TrayHistory().RemoveAt(5);
						}
					}
					catch (Exception)
					{
						return;
					}
					SettingsHolder.get_Settings().SaveSettingsAsync(false);
				}, null);
			}
		}

		public static void InitHistoryCollection()
		{
			SettingsHolder settings = SettingsHolder.get_Settings();
			if (settings.get_TrayHistory().Count == 0)
			{
				return;
			}
			List<TrayHistoryData> list = new List<TrayHistoryData>();
			string themedImage = Theming.GetThemedImage("Icons\\ProfileTabs\\");
			foreach (TrayHistoryData current in settings.get_TrayHistory())
			{
				if (current.get_Profile() == null)
				{
					list.Add(current);
				}
				else if (current.get_Profile() is CgProfileAnonymousBrowsing)
				{
					string arg = GuiHelper.FindTranslationForCountry(((CgProfileAnonymousBrowsing)current.get_Profile()).get_SelectedCountry());
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						current.set_ProfileName(GuiHelper.Truncate(string.Format("{0} {1}", Home.GhostBrowsing, arg).Trim(), 30));
					}
					else
					{
						current.set_ProfileName(GuiHelper.Truncate(string.Format("{0} {1}", Profiles.AnonymousBrowsing_ConnectToServer_Anonymous_Browsing, arg).Trim(), 30));
					}
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-browse-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileAnonymousDownloading)
				{
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						current.set_ProfileName(Home.GhostDownloads);
					}
					else
					{
						current.set_ProfileName(Profiles.AnonymousDownloading_ConnectToServer_Anonymous_Downloading);
					}
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-download-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileNetwork)
				{
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						current.set_ProfileName(Home.GhostNetwork);
					}
					else
					{
						current.set_ProfileName(Profiles.Network_ConnectToServer_Network_Protection);
					}
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-lan-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileWifi)
				{
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						current.set_ProfileName(Home.GhostWifi);
					}
					else
					{
						current.set_ProfileName(Profiles.Wifi_ConnectToServer_Wifi_Protection);
					}
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-wifi-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileCustom)
				{
					CgProfileCustom cgProfileCustom = (CgProfileCustom)current.get_Profile();
					current.set_ProfileName(GuiHelper.Truncate(string.Format("{0}", cgProfileCustom.get_SelectedServerDisplayName()).Trim(), 40));
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-setting-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileUnblock)
				{
					CgProfileUnblock expr_2A3 = (CgProfileUnblock)current.get_Profile();
					string selectedItemName = expr_2A3.get_SelectedItemName();
					string selectedLogo = expr_2A3.get_SelectedLogo();
					string arg2 = GuiHelper.FindTranslationForCountry(expr_2A3.get_SelectedItemCountryCode());
					current.set_ProfileName(GuiHelper.Truncate(string.Format("{0} {1}", selectedItemName, arg2).Trim(), 30));
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(string.IsNullOrWhiteSpace(selectedLogo) ? new Uri(Path.Combine(themedImage, "ico-unblock-color.png")) : new Uri(selectedLogo));
					}
				}
				else if (current.get_Profile() is CgProfileUncensoring)
				{
					CgProfileUncensoring expr_337 = (CgProfileUncensoring)current.get_Profile();
					string selectedItemName2 = expr_337.get_SelectedItemName();
					string selectedLogo2 = expr_337.get_SelectedLogo();
					current.set_ProfileName(string.Format("{0}", selectedItemName2));
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(string.IsNullOrWhiteSpace(selectedLogo2) ? new Uri(Path.Combine(themedImage, "ico-anti-color.png")) : new Uri(selectedLogo2));
					}
				}
			}
			foreach (TrayHistoryData current2 in list)
			{
				settings.get_TrayHistory().Remove(current2);
			}
			NotifierHelper.ReorderCollection();
		}

		public static void FindAndRemoveDuplicate(TrayHistoryData itemToFind)
		{
			ObservableCollection<TrayHistoryData> trayHistory = SettingsHolder.get_Settings().get_TrayHistory();
			if (itemToFind != null && trayHistory.Count > 1)
			{
				bool flag = false;
				int index = 0;
				int num = 0;
				foreach (TrayHistoryData current in trayHistory)
				{
					if (current.get_ProfileName() == itemToFind.get_ProfileName() && current.get_LastUsed() < itemToFind.get_LastUsed())
					{
						flag = true;
						index = num;
						break;
					}
					num++;
				}
				if (flag)
				{
					trayHistory.RemoveAt(index);
				}
				return;
			}
		}

		public static void ReorderCollection()
		{
			SettingsHolder expr_05 = SettingsHolder.get_Settings();
			IEnumerable<TrayHistoryData> arg_2A_0 = expr_05.get_TrayHistory();
			Func<TrayHistoryData, long> arg_2A_1;
			if ((arg_2A_1 = NotifierHelper.<>c.<>9__4_0) == null)
			{
				arg_2A_1 = (NotifierHelper.<>c.<>9__4_0 = new Func<TrayHistoryData, long>(NotifierHelper.<>c.<>9.<ReorderCollection>b__4_0));
			}
			ObservableCollection<TrayHistoryData> trayHistory = new ObservableCollection<TrayHistoryData>(arg_2A_0.OrderByDescending(arg_2A_1));
			expr_05.set_TrayHistory(trayHistory);
		}
	}
}
