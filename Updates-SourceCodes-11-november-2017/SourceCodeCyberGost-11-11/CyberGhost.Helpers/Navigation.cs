using CyberGhost.Components.Mixpanel;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using MobileConcepts.Helpers;
using System;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;

namespace CyberGhost.Helpers
{
	public static class Navigation
	{
		public static string AdditionalParams;

		internal static bool GoToPage(string aPageName, string fragment = null, string additionalParams = null)
		{
			if (ObjectHolder.MainForm != null)
			{
				Navigation.AdditionalParams = additionalParams;
				Application.Current.Dispatcher.Invoke(DispatcherPriority.Send, new Action(delegate
				{
					ObjectHolder.MainForm.set_ContentSource(new Uri(string.Format("/Pages/{0}.xaml", aPageName) + ((fragment != null) ? string.Format("#{0}", fragment) : ""), UriKind.Relative));
					string resourceKey = "ModernButton";
					string text = aPageName.ToLower();
					uint num = <PrivateImplementationDetails>.ComputeStringHash(text);
					if (num <= 1957530021u)
					{
						if (num <= 1252843294u)
						{
							if (num <= 467226299u)
							{
								if (num != 222785755u)
								{
									if (num != 467226299u)
									{
										goto IL_2BA;
									}
									if (!(text == "connected/connecteduncensoring"))
									{
										goto IL_2BA;
									}
								}
								else if (!(text == "profiles/uncensoring"))
								{
									goto IL_2BA;
								}
								resourceKey = "ModernButtonAntiCensor";
								goto IL_2BA;
							}
							if (num != 1225406304u)
							{
								if (num != 1252843294u)
								{
									goto IL_2BA;
								}
								if (!(text == "connected/connectednetwork"))
								{
									goto IL_2BA;
								}
								goto IL_28A;
							}
							else if (!(text == "profiles/anonymousbrowsing"))
							{
								goto IL_2BA;
							}
						}
						else if (num <= 1528745012u)
						{
							if (num != 1423448183u)
							{
								if (num != 1528745012u)
								{
									goto IL_2BA;
								}
								if (!(text == "profiles/unblock"))
								{
									goto IL_2BA;
								}
								goto IL_2B4;
							}
							else
							{
								if (!(text == "connected/connectedanonymousdownloading"))
								{
									goto IL_2BA;
								}
								goto IL_24C;
							}
						}
						else if (num != 1668785984u)
						{
							if (num != 1957530021u)
							{
								goto IL_2BA;
							}
							if (!(text == "connected/connectedwifi"))
							{
								goto IL_2BA;
							}
							goto IL_28A;
						}
						else if (!(text == "connected/connectedanonymousbrowsing"))
						{
							goto IL_2BA;
						}
						resourceKey = "ModernButtonAnonBrowsing";
						goto IL_2BA;
					}
					if (num <= 3011460969u)
					{
						if (num <= 2649054014u)
						{
							if (num != 2235529491u)
							{
								if (num != 2649054014u)
								{
									goto IL_2BA;
								}
								if (!(text == "profiles/network"))
								{
									goto IL_2BA;
								}
								goto IL_28A;
							}
							else if (!(text == "profiles/custom"))
							{
								goto IL_2BA;
							}
						}
						else if (num != 2876959009u)
						{
							if (num != 3011460969u)
							{
								goto IL_2BA;
							}
							if (text == "recoverpurchasemain")
							{
								resourceKey = "ModernButtonRecoverPurchase";
								goto IL_2BA;
							}
							goto IL_2BA;
						}
						else
						{
							if (text == "managedevices")
							{
								resourceKey = "ModernButtonManageDevices";
								goto IL_2BA;
							}
							goto IL_2BA;
						}
					}
					else if (num <= 3229441815u)
					{
						if (num != 3104811778u)
						{
							if (num != 3229441815u)
							{
								goto IL_2BA;
							}
							if (text == "profiles/anonymousdownloading")
							{
								goto IL_24C;
							}
							goto IL_2BA;
						}
						else
						{
							if (!(text == "profiles/unblock_serverlist"))
							{
								goto IL_2BA;
							}
							goto IL_2B4;
						}
					}
					else if (num != 3367964692u)
					{
						if (num != 3675875443u)
						{
							if (num != 3993233221u)
							{
								goto IL_2BA;
							}
							if (text == "profiles/wifi")
							{
								goto IL_28A;
							}
							goto IL_2BA;
						}
						else if (!(text == "connected/connectedcustom"))
						{
							goto IL_2BA;
						}
					}
					else
					{
						if (text == "connected/connectedunblock")
						{
							goto IL_2B4;
						}
						goto IL_2BA;
					}
					resourceKey = "ModernButtonCustom";
					goto IL_2BA;
					IL_24C:
					resourceKey = "ModernButtonAnonDownload";
					goto IL_2BA;
					IL_28A:
					resourceKey = "ModernButtonWifi";
					goto IL_2BA;
					IL_2B4:
					resourceKey = "ModernButtonUnblock";
					IL_2BA:
					ObjectHolder.MainForm.set_BackButtonStyle(ObjectHolder.MainForm.FindResource(resourceKey) as Style);
					CommandManager.InvalidateRequerySuggested();
				}));
				return true;
			}
			return false;
		}

		internal static Task<bool> GoInAppPurchase(CgBase conversionPointProfile, string type)
		{
			return Navigation.GoInAppPurchase(string.Format("upgrade_{0}_{1}", type, conversionPointProfile.GetBaseName()), null);
		}

		internal static async Task<bool> GoInAppPurchase(string conversionPoint, string additionalParams = null)
		{
			ObjectHolder.LastConversionPoint = conversionPoint;
			new ConversionWindowClickedEvent
			{
				ConversionPoint = conversionPoint
			}.FireEvent();
			bool result;
			if (HelperFunctions.IsAtleastIe8Installed())
			{
				MainWindow expr_3A = ObjectHolder.MainForm;
				if (expr_3A != null)
				{
					expr_3A.ShowMe();
				}
				result = Navigation.GoToPage("Conversion/InAppPurchase", null, additionalParams);
			}
			else
			{
				result = await Helper.OpenAuthLink("go_upgrade", false, string.Format("&channel=client&conversionpoint={0}&country={1}&{2}&{3}", new object[]
				{
					conversionPoint,
					ObjectHolder.CurrentUser.get_Location().get_CountryCode().ToLower(),
					MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, null),
					SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString()
				}) + (string.IsNullOrEmpty(additionalParams) ? "" : string.Format("&{0}", additionalParams)), false, null);
			}
			return result;
		}

		internal static bool GoHome()
		{
			return Navigation.GoToPage(GuiHelper.IsProLoginRequired() ? "Login" : "Home", null, null);
		}

		internal static void GoBack()
		{
			NavigationCommands.BrowseBack.Execute(null, null);
		}

		internal static void ShowMessageOverlay(string aPageName, bool changeToErrorTheme = false)
		{
			if (ObjectHolder.MainForm != null)
			{
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					ObjectHolder.MainForm.ShowMe();
					ObjectHolder.MainForm.ContentMessage = new Uri("/Pages/Alerts/" + aPageName + ".xaml", UriKind.Relative);
					ObjectHolder.MainForm.ContentMessageVisibility = Visibility.Visible;
					ObjectHolder.MainForm.set_IsHeadLinkVisible(false);
					Theming.CurrentThemeSet = (changeToErrorTheme ? Theming.ThemeSet.Error : Theming.ThemeSet.Regular);
				}, null);
			}
		}

		internal static void HideMessageOverlay(bool showHeadLink = true)
		{
			if (ObjectHolder.MainForm != null)
			{
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					ObjectHolder.MainForm.ContentMessage = null;
					ObjectHolder.MainForm.ContentMessageVisibility = Visibility.Collapsed;
					ObjectHolder.MainForm.set_IsHeadLinkVisible(showHeadLink);
				}, null);
			}
		}

		public static bool NavigateToConnectedScreen()
		{
			if (ObjectHolder.ConnectionStatus == 10 || ObjectHolder.ConnectionStatus == null)
			{
				string connectedProfileName = SettingsHolder.get_Settings().get_ConnectedProfileName();
				if (!(connectedProfileName == "anonymousDownloading"))
				{
					if (!(connectedProfileName == "custom"))
					{
						if (!(connectedProfileName == "network"))
						{
							if (!(connectedProfileName == "wifi"))
							{
								if (!(connectedProfileName == "unblock"))
								{
									if (!(connectedProfileName == "antiCensor"))
									{
										ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
										Navigation.GoToPage("Connected/ConnectedAnonymousBrowsing", null, null);
									}
									else
									{
										ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUncensoring();
										Navigation.GoToPage("Connected/ConnectedUncensoring", null, null);
									}
								}
								else
								{
									ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUnblock();
									Navigation.GoToPage("Connected/ConnectedUnblock", null, null);
								}
							}
							else
							{
								ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileWifi();
								Navigation.GoToPage("Connected/ConnectedWifi", null, null);
							}
						}
						else
						{
							ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileNetwork();
							Navigation.GoToPage("Connected/ConnectedNetwork", null, null);
						}
					}
					else
					{
						ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileCustom();
						Navigation.GoToPage("Connected/ConnectedCustom", null, null);
					}
				}
				else
				{
					ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
					Navigation.GoToPage("Connected/ConnectedAnonymousDownloading", null, null);
				}
			}
			return true;
		}

		public static bool IsOnConnectedScreen()
		{
			return ObjectHolder.MainForm.get_ContentSource().ToString().StartsWith("/Pages/Connected", StringComparison.CurrentCultureIgnoreCase);
		}

		public static bool IsOnProfileScreen()
		{
			return ObjectHolder.MainForm.get_ContentSource().ToString().StartsWith("/Pages/Profiles", StringComparison.CurrentCultureIgnoreCase);
		}

		public static bool NavigateFromConnectedToProfileScreen()
		{
			string text = ObjectHolder.MainForm.get_ContentSource().ToString().ToLower();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(text);
			if (num <= 581804546u)
			{
				if (num != 461178977u)
				{
					if (num != 479047676u)
					{
						if (num == 581804546u)
						{
							if (text == "/pages/connected/connectedunblock.xaml")
							{
								Navigation.GoToPage("Profiles/Unblock", null, null);
								return true;
							}
						}
					}
					else if (text == "/pages/connected/connectednetwork.xaml")
					{
						Navigation.GoToPage("Profiles/Network", null, null);
						return true;
					}
				}
				else if (text == "/pages/connected/connectedwifi.xaml")
				{
					Navigation.GoToPage("Profiles/Wifi", null, null);
					return true;
				}
			}
			else if (num <= 1510191843u)
			{
				if (num != 1491918871u)
				{
					if (num == 1510191843u)
					{
						if (text == "/pages/connected/connecteduncensoring.xaml")
						{
							Navigation.GoToPage("Profiles/Uncensoring", null, null);
							return true;
						}
					}
				}
				else if (text == "/pages/connected/connectedanonymousdownloading.xaml")
				{
					Navigation.GoToPage("Profiles/AnonymousDownloading", null, null);
					return true;
				}
			}
			else if (num != 2608866234u)
			{
				if (num == 3392939587u)
				{
					if (text == "/pages/connected/connectedcustom.xaml")
					{
						Navigation.GoToPage("Profiles/Custom", null, null);
						return true;
					}
				}
			}
			else if (text == "/pages/connected/connectedanonymousbrowsing.xaml")
			{
				Navigation.GoToPage("Profiles/AnonymousBrowsing", null, null);
				return true;
			}
			return false;
		}
	}
}
