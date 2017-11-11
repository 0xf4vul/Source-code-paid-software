using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using HtmlAgilityPack;
using MobileConcepts.Helpers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Numerics;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace CyberGhost.Helpers
{
	public static class GuiHelper
	{
		private static readonly List<Selector> RegisteredBoxes;

		public static System.Windows.Forms.Timer GoBackHomeTimer
		{
			get;
			set;
		}

		public static Dictionary<string, string> CountryList
		{
			[CompilerGenerated]
			get
			{
				return GuiHelper.<CountryList>k__BackingField;
			}
		}

		public static Color GenerateColor(string colorString)
		{
			Color result = default(Color);
			object obj = ColorConverter.ConvertFromString(colorString);
			if (obj != null)
			{
				result = (Color)obj;
			}
			return result;
		}

		public static string GetFragment(string aUriString)
		{
			if (aUriString.Contains("#"))
			{
				return aUriString.Substring(aUriString.IndexOf("#", StringComparison.InvariantCultureIgnoreCase) + 1);
			}
			return string.Empty;
		}

		public static void SetUpgradeBarVisiblity(FeatureGroup featureGroup)
		{
			if (GuiHelper.CheckIfUpgradeBarIsVisible())
			{
				featureGroup.DockForFree.Visibility = Visibility.Visible;
				featureGroup.DockForPremium.Visibility = Visibility.Hidden;
				return;
			}
			featureGroup.DockForFree.Visibility = Visibility.Hidden;
			featureGroup.DockForPremium.Visibility = Visibility.Visible;
		}

		public static void SetRandomHint(TextBlock hint, string profil)
		{
			Random rnd = new Random();
			System.Windows.Forms.Timer hintTimer = new System.Windows.Forms.Timer
			{
				Interval = Constants.HintInterval,
				Enabled = true
			};
			EventHandler eventHandler = delegate(object sender, EventArgs e)
			{
				if (ObjectHolder.ConnectionStatus != 10)
				{
					if (ObjectHolder.ConnectionStatus != -1)
					{
						hintTimer.Stop();
						return;
					}
				}
				try
				{
					List<CgApiHint> list = new List<CgApiHint>();
					foreach (CgApiHint current in ObjectHolder.HintList.get_Items())
					{
						if (current.get_Profile().Replace("\r", "").Contains(profil))
						{
							list.Add(current);
						}
					}
					string newValue = "";
					hint.Text = Status.Connecting_DefaultHint.Replace("%PROFILE%", newValue);
					if (list.Count > 0)
					{
						int index = rnd.Next(list.Count);
						CgApiHint cgApiHint = (CgApiHint)list.ToArray().GetValue(index);
						if (SettingsHolder.get_Settings().get_Language() != null)
						{
							string text = cgApiHint.get_Description().get_Strings()[SettingsHolder.get_Settings().get_Language()].Replace("%PROFILE%", newValue);
							if (!string.IsNullOrEmpty(text))
							{
								hint.Text = text;
							}
						}
					}
				}
				catch (Exception)
				{
				}
			};
			hintTimer.Tick += eventHandler;
			eventHandler(null, null);
		}

		public static string FindTranslationForCountry(string countrycode)
		{
			if (string.IsNullOrEmpty(countrycode))
			{
				return string.Empty;
			}
			IEnumerable<KeyValuePair<string, string>> arg_44_0 = GuiHelper.CountryList;
			Func<KeyValuePair<string, string>, bool> <>9__0;
			Func<KeyValuePair<string, string>, bool> arg_44_1;
			if ((arg_44_1 = <>9__0) == null)
			{
				arg_44_1 = (<>9__0 = ((KeyValuePair<string, string> country) => country.Key.Equals(countrycode, StringComparison.InvariantCultureIgnoreCase)));
			}
			using (IEnumerator<KeyValuePair<string, string>> enumerator = arg_44_0.Where(arg_44_1).GetEnumerator())
			{
				if (enumerator.MoveNext())
				{
					KeyValuePair<string, string> current = enumerator.Current;
					return current.Value;
				}
			}
			return countrycode;
		}

		public static void StartInactivityCheck(int timerInterval = 1800000)
		{
			if (GuiHelper.GoBackHomeTimer == null)
			{
				GuiHelper.GoBackHomeTimer = new System.Windows.Forms.Timer();
				ObjectHolder.MainForm.MouseMove += new System.Windows.Input.MouseEventHandler(GuiHelper.MainForm_MouseMove);
			}
			GuiHelper.GoBackHomeTimer.Enabled = false;
			GuiHelper.GoBackHomeTimer.Interval = timerInterval;
			GuiHelper.GoBackHomeTimer.Tick += new EventHandler(GuiHelper.TimerTick);
			GuiHelper.GoBackHomeTimer.Enabled = true;
		}

		private static void MainForm_MouseMove(object sender, System.Windows.Input.MouseEventArgs e)
		{
			if (GuiHelper.GoBackHomeTimer.Enabled)
			{
				GuiHelper.GoBackHomeTimer.Stop();
				GuiHelper.GoBackHomeTimer.Start();
			}
		}

		public static void StopInactivityCheck()
		{
			System.Windows.Forms.Timer expr_05 = GuiHelper.GoBackHomeTimer;
			if (expr_05 == null)
			{
				return;
			}
			expr_05.Stop();
		}

		private static void TimerTick(object sender, EventArgs e)
		{
			GuiHelper.StopInactivityCheck();
			if (ObjectHolder.MainForm.ContentFrame.get_Source() != null && ObjectHolder.MainForm.ContentFrame.get_Source().ToString().ToLower().Contains("/pages/profiles/"))
			{
				Navigation.GoHome();
			}
		}

		public static KeyValuePair<string, double> GetFormatedBytes(double bytes)
		{
			double num = 0.0;
			string arg = "kB";
			if (bytes < 1048576.0)
			{
				arg = "kB";
				num = bytes / 1024.0;
			}
			else if (bytes >= 1048576.0 && bytes < 1073741824.0)
			{
				arg = "MB";
				num = bytes / 1048576.0;
			}
			else if (bytes >= 1073741824.0 && bytes < 1099511627776.0)
			{
				arg = "GB";
				num = bytes / 1073741824.0;
			}
			else if (bytes >= 1099511627776.0)
			{
				arg = "TB";
				num = bytes / 1099511627776.0;
			}
			return new KeyValuePair<string, double>(string.Format("{0:0.##} {1}", num, arg), bytes);
		}

		public static KeyValuePair<string, double> GetFormatedBytesPerSecond(double bytes, BigInteger? downloadTimerCounter = null)
		{
			if (downloadTimerCounter.HasValue && (double)downloadTimerCounter.Value > 0.0)
			{
				bytes = Math.Round(bytes / (double)downloadTimerCounter.Value, 2, MidpointRounding.AwayFromZero);
			}
			double num = 0.0;
			string arg = "kB/s";
			if (bytes < 1000000.0)
			{
				arg = "kB/s";
				num = bytes / 1000.0;
			}
			else if (bytes >= 1000000.0 && bytes < 1000000000.0)
			{
				arg = "MB/s";
				num = bytes / 1000000.0;
			}
			else if (bytes >= 1000000000.0 && bytes < 1000000000000.0)
			{
				arg = "GB/s";
				num = bytes / 1000000000.0;
			}
			else if (bytes >= 1000000000000.0)
			{
				arg = "TB/s";
				num = bytes / 1000000000000.0;
			}
			return new KeyValuePair<string, double>(string.Format("{0:0.##} {1}", num, arg), bytes);
		}

		public static bool CheckIfUpgradeBarIsVisible()
		{
			return ObjectHolder.CurrentUser == null || (!ObjectHolder.CurrentUser.HasUserAccessToFeature(9) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(2) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(1) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(4) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(3) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(8));
		}

		public static bool IsProfileAvailableInPlan(CgBase profile)
		{
			return GuiHelper.IsProfileAvailableInPlan(profile.GetBaseName());
		}

		public static CgApiFeature.Feature ProfileStringToFeature(string aProfileString)
		{
			string text = aProfileString.ToLower();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(text);
			if (num <= 1850259554u)
			{
				if (num <= 542584942u)
				{
					if (num != 120087624u)
					{
						if (num != 438410970u)
						{
							if (num != 542584942u)
							{
								goto IL_1E5;
							}
							if (!(text == "custom"))
							{
								goto IL_1E5;
							}
							return 16;
						}
						else if (!(text == "profileunblock"))
						{
							goto IL_1E5;
						}
					}
					else
					{
						if (!(text == "wifi"))
						{
							goto IL_1E5;
						}
						return 11;
					}
				}
				else if (num <= 1511892090u)
				{
					if (num != 1377339077u)
					{
						if (num != 1511892090u)
						{
							goto IL_1E5;
						}
						if (!(text == "anonymousdownloading"))
						{
							goto IL_1E5;
						}
						return 18;
					}
					else
					{
						if (!(text == "network"))
						{
							goto IL_1E5;
						}
						return 17;
					}
				}
				else if (num != 1741922751u)
				{
					if (num != 1850259554u)
					{
						goto IL_1E5;
					}
					if (!(text == "profileanonymousbrowsing"))
					{
						goto IL_1E5;
					}
					return 13;
				}
				else if (!(text == "unblock"))
				{
					goto IL_1E5;
				}
				return 12;
			}
			if (num > 3057390481u)
			{
				if (num <= 3518019237u)
				{
					if (num != 3515211989u)
					{
						if (num != 3518019237u)
						{
							goto IL_1E5;
						}
						if (text == "profilecustom")
						{
							return 16;
						}
						goto IL_1E5;
					}
					else if (!(text == "profileuncensoring"))
					{
						goto IL_1E5;
					}
				}
				else if (num != 4065159347u)
				{
					if (num != 4177272540u)
					{
						goto IL_1E5;
					}
					if (!(text == "profileanticensor"))
					{
						goto IL_1E5;
					}
				}
				else if (!(text == "anticensor"))
				{
					goto IL_1E5;
				}
				return 14;
			}
			if (num <= 2644265356u)
			{
				if (num != 2151041499u)
				{
					if (num != 2644265356u)
					{
						goto IL_1E5;
					}
					if (!(text == "profilenetwork"))
					{
						goto IL_1E5;
					}
				}
				else
				{
					if (text == "profilewifi")
					{
						return 11;
					}
					goto IL_1E5;
				}
			}
			else if (num != 2902123479u)
			{
				if (num != 3057390481u)
				{
					goto IL_1E5;
				}
				if (text == "profileanonymousdownloading")
				{
					return 18;
				}
				goto IL_1E5;
			}
			else
			{
				if (text == "anonymousbrowsing")
				{
					return 13;
				}
				goto IL_1E5;
			}
			return 17;
			IL_1E5:
			throw new ArgumentOutOfRangeException("aProfileString", aProfileString, null);
		}

		public static bool IsProfileAvailableInPlan(string profileBaseName)
		{
			return ObjectHolder.CurrentUser != null && !string.IsNullOrEmpty(profileBaseName) && ObjectHolder.CurrentUser.HasUserAccessToFeature(GuiHelper.ProfileStringToFeature(profileBaseName));
		}

		public static bool IsProLoginRequired()
		{
			return Theming.CurrentTheme == Theming.Theme.Pro && (ObjectHolder.CurrentUser == null || ObjectHolder.CurrentUser.IsFreeUser());
		}

		public static async void ShowUpgradeDialog(string profileName)
		{
			new ConversionWindowEvent
			{
				ConversionPoint = profileName
			}.FireEvent();
			if (ModernDialogExtension.ShowDialogYesNo(Profiles.FeatureBox_Feature_Premium, Profiles.FeatureBox_FeatureBoxButton_Desc) == MessageBoxResult.Yes)
			{
				await Navigation.GoInAppPurchase(string.Format("Profile_Not_Available_{0}", profileName), null);
			}
		}

		public static void ResetProfilesToDefault(CgApiUser user = null)
		{
			if (user == null)
			{
				user = ObjectHolder.CurrentUser;
			}
			SettingsHolder.get_Settings().set_LastUsedProfileCounter(0);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileCustom(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileNetwork(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileWifi(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileUnblock(), user);
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_BrowserStartOption("yesIncognito");
			SettingsHolder.get_Settings().get_ProfileAnonymousDownloading().set_DownloadToolExeName("empty");
			SettingsHolder.get_Settings().get_ProfileWifi().set_HotspotProtection("ask");
			SettingsHolder.get_Settings().get_ProfileCustom().set_BrowserProtectionNewUserAgent("NONE");
			SettingsHolder.get_Settings().get_ProfileCustom().set_FeatureBrowserLanguage("false");
			SettingsHolder.get_Settings().get_ProfileCustom().set_FeatureBrowserAgent("false");
			SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServer("minimum");
			SettingsHolder.get_Settings().get_ProfileUncensoring().set_CountryToUncensor("auto");
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountry("Automatic");
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountryCode(string.Empty);
		}

		public static string Truncate(string tstring, int length)
		{
			if (tstring.Length > length)
			{
				return tstring.Substring(0, length) + "...";
			}
			return tstring;
		}

		public static void ResetDownloadStats()
		{
			SettingsHolder.get_Settings().set_DownloadTotalTime(0uL);
			ObjectHolder.DownloadTimerCounter = 0;
			ObjectHolder.Download = new KeyValuePair<string, double>("0 kB/s", 0.0);
			ObjectHolder.DownloadAll = new KeyValuePair<string, double>("0 kB", 0.0);
		}

		public static TrafficDataChangedEventArgs ResetTrafficData()
		{
			TrafficDataChangedEventArgs expr_05 = new TrafficDataChangedEventArgs();
			expr_05.set_MaxSpeed(new KeyValuePair<string, double>("0 kB/s", 0.0));
			expr_05.set_CurrentSpeed(new KeyValuePair<string, double>("0 kB/s", 0.0));
			expr_05.set_TotalReceived(new KeyValuePair<string, double>("0 kB", 0.0));
			expr_05.set_TotalSent(new KeyValuePair<string, double>("0 kB", 0.0));
			GuiHelper.ResetDownloadStats();
			return expr_05;
		}

		public static string GetValueFromLabel(string label, int lengthToCrop)
		{
			if (!string.IsNullOrWhiteSpace(label) && label.Length > lengthToCrop)
			{
				return label.Substring(0, label.Length - lengthToCrop);
			}
			return string.Empty;
		}

		public static void DisplayTrafficIcons(bool isOnDownloadPage, Image imageUpLeft, Image imageDownLeft, Image imageUpRight)
		{
			if (isOnDownloadPage)
			{
				try
				{
					imageUpLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\download.png")));
					imageDownLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\maxspeed.png")));
					imageUpRight.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\averragespeed.png")));
				}
				catch (Exception ex)
				{
					HelperFunctions.DebugLine(string.Format("GuiHelper::{0} COULD NOT SET BITMAP {1}", MethodBase.GetCurrentMethod().Name, ex.Message));
				}
			}
		}

		public static void CreateMaxSpeedToolTip(TextBlock control, string content)
		{
			if (control != null && !string.IsNullOrWhiteSpace(content))
			{
				System.Windows.Controls.ToolTip toolTip = new System.Windows.Controls.ToolTip
				{
					Content = content
				};
				control.ToolTip = toolTip;
				return;
			}
		}

		public static async Task<string> DownloadFavIcon(CancellationToken cancellationToken, string uristring, string unblockname = "", string directDownloadUrl = "")
		{
			int num;
			string text;
			string result;
			if (num > 1)
			{
				text = "ico";
				if (!string.IsNullOrWhiteSpace(directDownloadUrl))
				{
					text = directDownloadUrl.Substring(directDownloadUrl.Length - 3, 3);
				}
				string text2 = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), HelperFunctions.GetValidLocalFileName(unblockname) + "." + text);
				if (File.Exists(text2))
				{
					result = text2;
					return result;
				}
			}
			try
			{
				Uri uri = new UriBuilder(uristring).Uri;
				string text3 = string.IsNullOrWhiteSpace(unblockname) ? Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), uri.Host) : Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), HelperFunctions.GetValidLocalFileName(unblockname));
				string text4;
				if (!string.IsNullOrWhiteSpace(directDownloadUrl))
				{
					TaskAwaiter<string> var_4 = GuiHelper.DownloadImage(cancellationToken, uristring, text3, text).GetAwaiter();
					if (!var_4.IsCompleted)
					{
						await var_4;
						TaskAwaiter<string> taskAwaiter;
						var_4 = taskAwaiter;
						taskAwaiter = default(TaskAwaiter<string>);
					}
					string arg_208_0 = var_4.GetResult();
					var_4 = default(TaskAwaiter<string>);
					text4 = arg_208_0;
				}
				else
				{
					text4 = await GuiHelper.DownloadImage(cancellationToken, uri.AbsoluteUri + "favicon.ico", text3, text);
				}
				text3 = text4;
				result = text3;
				return result;
			}
			catch (Exception var_5_219)
			{
				HelperFunctions.DebugLine(string.Format("COULD NOT DOWNLOAD FAVIVON DownloadFavIcon EX: {0}", var_5_219.Message));
			}
			result = Theming.GetThemedImage("Icons\\Functions\\icon_play.png");
			return result;
		}

		public static string FetchWebsite(string url)
		{
			try
			{
				HtmlNode expr_10 = new HtmlWeb().Load(url).get_DocumentNode();
				HtmlNode htmlNode = (expr_10 != null) ? expr_10.SelectSingleNode("//meta[@name='description']") : null;
				if (htmlNode != null)
				{
					HtmlAttribute expr_35 = htmlNode.get_Attributes().get_Item("content");
					string result = (expr_35 != null) ? expr_35.get_Value() : null;
					return result;
				}
			}
			catch (Exception)
			{
				string result = string.Empty;
				return result;
			}
			return string.Empty;
		}

		public static void IcoToPng(string inPath, string outPath)
		{
			if (!File.Exists(inPath))
			{
				return;
			}
			Stream stream = new FileStream(inPath, FileMode.Open);
			using (IEnumerator<BitmapFrame> enumerator = new IconBitmapDecoder(stream, BitmapCreateOptions.PreservePixelFormat, BitmapCacheOption.None).Frames.GetEnumerator())
			{
				if (enumerator.MoveNext())
				{
					BitmapFrame current = enumerator.Current;
					BitmapEncoder bitmapEncoder = new PngBitmapEncoder();
					bitmapEncoder.Frames.Add(current);
					using (Stream stream2 = new FileStream(outPath, FileMode.Create))
					{
						bitmapEncoder.Save(stream2);
					}
					stream.Close();
				}
			}
		}

		public static void SetCurrentFeatureNumbers(CgBase profile, TextBlock lblAdds, TextBlock lblMalware, TextBlock lblTracking)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.get_TokenObj() != null && ObjectHolder.CurrentUser.get_TokenObj().get_Features() != null)
				{
					using (List<CgApiFeatures>.Enumerator enumerator = ObjectHolder.CurrentUser.get_TokenObj().get_Features().GetEnumerator())
					{
						while (enumerator.MoveNext())
						{
							CgApiFeatures current = enumerator.Current;
							if (current.get_Id() == 1 && profile.get_FeatureAdBlock())
							{
								lblAdds.Text = current.get_Statistics().ToString();
							}
							if (current.get_Id() == 2 && profile.get_FeatureMalware())
							{
								lblMalware.Text = current.get_Statistics().ToString();
							}
							if (current.get_Id() == 4 && profile.get_FeatureTracking())
							{
								lblTracking.Text = current.get_Statistics().ToString();
							}
						}
						return;
					}
				}
				if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.get_TokenObj() != null && ObjectHolder.CurrentUser.get_TokenObj().get_Features() == null)
				{
					Tuple<string, string, string> tuple = GuiHelper.DetermineStatus(profile);
					lblAdds.Text = (profile.get_FeatureAdBlock() ? "0" : tuple.Item1);
					lblMalware.Text = (profile.get_FeatureMalware() ? "0" : tuple.Item2);
					lblTracking.Text = (profile.get_FeatureTracking() ? "0" : tuple.Item3);
				}
			}, null);
		}

		public static Tuple<string, string, string> DetermineStatus(CgBase profile)
		{
			string dISABLED = Status._DISABLED;
			string nOT_AVAILABLE = Status._NOT_AVAILABLE;
			Type left = (profile != null) ? profile.GetType() : null;
			Tuple<string, string, string> result;
			if (!(left == typeof(CgProfileUncensoring)) && !(left == typeof(CgProfileUnblock)))
			{
				if (left == typeof(CgProfileAnonymousDownloading))
				{
					result = new Tuple<string, string, string>(nOT_AVAILABLE, dISABLED, dISABLED);
				}
				else
				{
					result = new Tuple<string, string, string>(dISABLED, dISABLED, dISABLED);
				}
			}
			else
			{
				result = new Tuple<string, string, string>(nOT_AVAILABLE, nOT_AVAILABLE, nOT_AVAILABLE);
			}
			return result;
		}

		public static async Task<string> DownloadImage(CancellationToken cancellationToken, string url, string saveloc, string extension)
		{
			string text = string.Format("{0}.{1}", saveloc, extension);
			string result;
			if (File.Exists(text))
			{
				result = text;
			}
			else
			{
				try
				{
					WebClient webClient = new WebClient();
					try
					{
						cancellationToken.Register(new Action(webClient.CancelAsync));
						byte[] bytes = await webClient.DownloadDataTaskAsync(url);
						if (cancellationToken.IsCancellationRequested)
						{
							saveloc = string.Empty;
							result = saveloc;
							return result;
						}
						if (!string.IsNullOrEmpty(extension))
						{
							if (!File.Exists(text))
							{
								File.WriteAllBytes(text, bytes);
							}
							result = text;
							return result;
						}
						string text2 = webClient.ResponseHeaders[HttpResponseHeader.ContentType];
						if (extension != null && extension.Equals("ico"))
						{
							text2 = "image/ico";
						}
						if (text2 != null)
						{
							if (!(text2 == "image/jpeg"))
							{
								if (!(text2 == "image/gif"))
								{
									if (!(text2 == "image/png"))
									{
										if (text2 == "image/ico")
										{
											saveloc += ".ico";
										}
									}
									else
									{
										saveloc += ".png";
									}
								}
								else
								{
									saveloc += ".gif";
								}
							}
							else
							{
								saveloc += ".jpg";
							}
							try
							{
								if (!File.Exists(saveloc))
								{
									File.WriteAllBytes(saveloc, bytes);
								}
								result = saveloc;
								return result;
							}
							catch (Exception)
							{
							}
						}
					}
					finally
					{
						int num;
						if (num < 0 && webClient != null)
						{
							((IDisposable)webClient).Dispose();
						}
					}
					webClient = null;
				}
				catch (Exception var_5_24B)
				{
					HelperFunctions.DebugLine("Error in downloadimage" + var_5_24B.Message);
				}
				result = saveloc;
			}
			return result;
		}

		public static void SetDisplayFeatureStatsById(CgApiFeatures feature, TextBlock tbUpLeftFirstLine, TextBlock tbDownLeftFirstLine, TextBlock tbUpRightFirstLine, CgBase profile)
		{
			switch (feature.get_Id())
			{
			case 1:
				if (profile.get_FeatureAdBlock())
				{
					tbDownLeftFirstLine.Text = feature.get_Statistics().ToString();
					return;
				}
				if (profile is CgProfileAnonymousDownloading)
				{
					tbDownLeftFirstLine.Text = Status._NOT_AVAILABLE;
					return;
				}
				break;
			case 2:
				if (profile.get_FeatureMalware())
				{
					tbUpLeftFirstLine.Text = feature.get_Statistics().ToString();
					return;
				}
				break;
			case 3:
				break;
			case 4:
				if (profile.get_FeatureTracking())
				{
					tbUpRightFirstLine.Text = feature.get_Statistics().ToString();
				}
				break;
			default:
				return;
			}
		}

		public static void SetVisibilityUpgradeButton(System.Windows.Controls.UserControl upgrade, System.Windows.Controls.Button connect, CgApiFeature.Feature feature)
		{
			if (upgrade == null || connect == null)
			{
				return;
			}
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(feature))
			{
				connect.Visibility = Visibility.Collapsed;
				upgrade.Visibility = Visibility.Visible;
				return;
			}
			upgrade.Visibility = Visibility.Collapsed;
			connect.Visibility = Visibility.Visible;
		}

		public static KeyValuePair<string, int> GetLastUsedProfileAndCounter()
		{
			return new KeyValuePair<string, int>(SettingsHolder.get_Settings().get_LastUsedProfileBaseName(), SettingsHolder.get_Settings().get_LastUsedProfileCounter());
		}

		public static void SetLastUsedProfile(string profileBaseName)
		{
			SettingsHolder settings = SettingsHolder.get_Settings();
			if (settings.get_LastUsedProfileBaseName().Equals(profileBaseName))
			{
				if (settings.get_LastUsedProfileCounter() < 2147483647)
				{
					SettingsHolder expr_22 = settings;
					expr_22.set_LastUsedProfileCounter(expr_22.get_LastUsedProfileCounter() + 1);
				}
				else
				{
					settings.set_LastUsedProfileCounter(3);
				}
			}
			else
			{
				settings.set_LastUsedProfileBaseName(profileBaseName);
				settings.set_LastUsedProfileCounter(1);
			}
			settings.SaveSettingsAsync(false);
		}

		public static string UppercaseFirst(string s)
		{
			if (string.IsNullOrEmpty(s))
			{
				return string.Empty;
			}
			return char.ToUpper(s[0]).ToString() + s.Substring(1);
		}

		private static void ResetCountryComboToAuto(Selector box)
		{
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountry(Profiles.Automatic);
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountryCode(string.Empty);
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_CountryCode(string.Empty);
			if (box.Items.Count > 0)
			{
				box.SelectedItem = box.Items[0];
			}
		}

		public static void CountryComboBoxChanged(System.Windows.Controls.ComboBox box)
		{
			if (ObjectHolder.CurrentUser.HasUserAccessToFeature(19))
			{
				CountryData countryData = (CountryData)box.SelectedItem;
				if (box.SelectedItem != null)
				{
					SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountryCode(((CountryData)box.SelectedItem).get_CountryCode());
					SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_CountryCode(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_SelectedCountryCode());
				}
				if (countryData == null)
				{
					return;
				}
				if (!countryData.get_AvailableForUser())
				{
					GuiHelper.ResetCountryComboToAuto(box);
					ConversionPopUpHelpers.ShowConversionPopUp(19);
				}
			}
			else
			{
				CountryData expr_85 = (CountryData)box.SelectedItem;
				if (string.IsNullOrEmpty((expr_85 != null) ? expr_85.get_CountryCode() : null))
				{
					return;
				}
				GuiHelper.ResetCountryComboToAuto(box);
				ConversionPopUpHelpers.ShowConversionPopUp(19);
			}
			GuiHelper.UpdateSelection();
		}

		public static void InitializeServerList(CgApiServerList servers, Selector box)
		{
			GuiHelper.<>c__DisplayClass45_0 <>c__DisplayClass45_ = new GuiHelper.<>c__DisplayClass45_0();
			<>c__DisplayClass45_.servers = servers;
			<>c__DisplayClass45_.box = box;
			List<Selector> registeredBoxes = GuiHelper.RegisteredBoxes;
			lock (registeredBoxes)
			{
				if (!GuiHelper.RegisteredBoxes.Contains(<>c__DisplayClass45_.box))
				{
					GuiHelper.RegisteredBoxes.Add(<>c__DisplayClass45_.box);
				}
			}
			if (SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing() == null || SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries() == null)
			{
				return;
			}
			if (!(DateTime.Now - <>c__DisplayClass45_.servers.LastItemFetch >= TimeSpan.FromMinutes(5.0)) && <>c__DisplayClass45_.servers.get_Items().Count != 0)
			{
				GuiHelper.UpdateSelection();
				return;
			}
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries().Clear();
			CountryData expr_D0 = new CountryData();
			expr_D0.set_AvailableForUser(true);
			expr_D0.set_CountryImage(new Uri(Theming.GetThemedImage("Icons\\Flags\\24\\blank.png")));
			expr_D0.set_CountryName(Profiles.Automatic);
			expr_D0.set_CountryCode(string.Empty);
			CountryData item = expr_D0;
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries().Add(item);
			Task.Run(delegate
			{
				GuiHelper.<>c__DisplayClass45_0.<<InitializeServerList>b__0>d <<InitializeServerList>b__0>d;
				<<InitializeServerList>b__0>d.<>4__this = <>c__DisplayClass45_;
				<<InitializeServerList>b__0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
				<<InitializeServerList>b__0>d.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <<InitializeServerList>b__0>d.<>t__builder;
				<>t__builder.Start<GuiHelper.<>c__DisplayClass45_0.<<InitializeServerList>b__0>d>(ref <<InitializeServerList>b__0>d);
				return <<InitializeServerList>b__0>d.<>t__builder.Task;
			});
		}

		public static void FillCountriesForView(CgApiServerList fetchedServers, Selector box)
		{
			if (fetchedServers == null || (fetchedServers.get_Items() != null && fetchedServers.get_Items().Count <= 0))
			{
				HelperFunctions.DebugLine("! *** ANON BROWS SERVER LIST IS EMPTY *** !");
				return;
			}
			if (fetchedServers.get_Items() == null)
			{
				return;
			}
			List<CgApiServer> items = fetchedServers.get_Items();
			lock (items)
			{
				foreach (CgApiServer current in fetchedServers.get_Items())
				{
					CountryData expr_55 = new CountryData();
					expr_55.set_AvailableForUser(current.get_AvailableForUser());
					expr_55.set_CountryCode(current.get_CountryCode());
					expr_55.set_CountryName(GuiHelper.FindTranslationForCountry(current.get_CountryCode()));
					expr_55.set_CountryImage(new Uri(Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", current.get_CountryCode().ToLower())))));
					CountryData item = expr_55;
					SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries().Add(item);
				}
			}
			GuiHelper.UpdateSelection();
		}

		private static void UpdateSelection()
		{
			List<Selector> registeredBoxes = GuiHelper.RegisteredBoxes;
			lock (registeredBoxes)
			{
				GuiHelper.RegisteredBoxes.ForEach(new Action<Selector>(GuiHelper.UpdateSelection));
			}
		}

		private static void UpdateSelection(Selector box)
		{
			List<Selector> registeredBoxes = GuiHelper.RegisteredBoxes;
			lock (registeredBoxes)
			{
				if (!GuiHelper.RegisteredBoxes.Contains(box))
				{
					GuiHelper.RegisteredBoxes.Add(box);
				}
			}
			string selectedCountryCode = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_SelectedCountryCode();
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_CountryCode(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_SelectedCountryCode());
			int num = -1;
			bool flag2 = false;
			foreach (CountryData arg_8C_0 in SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries())
			{
				num++;
				if (arg_8C_0.get_CountryCode().Equals(selectedCountryCode, StringComparison.InvariantCultureIgnoreCase))
				{
					flag2 = true;
					break;
				}
			}
			if (!flag2)
			{
				num = 0;
			}
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_CountryIndex(num);
			if (ObjectHolder.CurrentUser.HasUserAccessToFeature(19) && SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries()[num].get_AvailableForUser())
			{
				if (box.Items.Count >= num - 1)
				{
					box.SelectedItem = box.Items[num];
					return;
				}
			}
			else
			{
				GuiHelper.ResetCountryComboToAuto(box);
			}
		}

		static GuiHelper()
		{
			// Note: this type is marked as 'beforefieldinit'.
			GuiHelper.<CountryList>k__BackingField = new Dictionary<string, string>
			{
				{
					"AF",
					Components.GuiHelper_CountryList_Afghanistan
				},
				{
					"AL",
					Components.GuiHelper_CountryList_Albania
				},
				{
					"AS",
					Components.GuiHelper_CountryList_American_Samoa
				},
				{
					"AD",
					Components.GuiHelper_CountryList_Andorra
				},
				{
					"AO",
					Components.GuiHelper_CountryList_Angola
				},
				{
					"AI",
					Components.GuiHelper_CountryList_Anguilla
				},
				{
					"AQ",
					Components.GuiHelper_CountryList_Antarctica
				},
				{
					"AG",
					Components.GuiHelper_CountryList_Antigua_and_Barbuda
				},
				{
					"AR",
					Components.GuiHelper_CountryList_Argentina
				},
				{
					"AM",
					Components.GuiHelper_CountryList_Armenia
				},
				{
					"AW",
					Components.GuiHelper_CountryList_Aruba
				},
				{
					"AT",
					Components.GuiHelper_CountryList_Austria
				},
				{
					"AU",
					Components.GuiHelper_CountryList_Australia
				},
				{
					"AZ",
					Components.GuiHelper_CountryList_Azerbaijan
				},
				{
					"BS",
					Components.GuiHelper_CountryList_Bahamas
				},
				{
					"BH",
					Components.GuiHelper_CountryList_Bahrain
				},
				{
					"BD",
					Components.GuiHelper_CountryList_Bangladesh
				},
				{
					"BB",
					Components.GuiHelper_CountryList_Barbados
				},
				{
					"BY",
					Components.GuiHelper_CountryList_Belarus
				},
				{
					"BE",
					Components.GuiHelper_CountryList_Belgium
				},
				{
					"BZ",
					Components.GuiHelper_CountryList_Belize
				},
				{
					"BJ",
					Components.GuiHelper_CountryList_Benin
				},
				{
					"BM",
					Components.GuiHelper_CountryList_Bermuda
				},
				{
					"BT",
					Components.GuiHelper_CountryList_Bhutan
				},
				{
					"BO",
					Components.GuiHelper_CountryList_Bolivia
				},
				{
					"BA",
					Components.GuiHelper_CountryList_Bosnia_and_Herzegovina
				},
				{
					"BW",
					Components.GuiHelper_CountryList_Botswana
				},
				{
					"BV",
					Components.GuiHelper_CountryList_Bouvet_Island
				},
				{
					"BR",
					Components.GuiHelper_CountryList_Brazil
				},
				{
					"BN",
					Components.GuiHelper_CountryList_Brunei_Darussalam
				},
				{
					"BG",
					Components.GuiHelper_CountryList_Bulgaria
				},
				{
					"BF",
					Components.GuiHelper_CountryList_Burkina_Faso
				},
				{
					"BI",
					Components.GuiHelper_CountryList_Burundi
				},
				{
					"KH",
					Components.GuiHelper_CountryList_Cambodia
				},
				{
					"CM",
					Components.GuiHelper_CountryList_Cameroon
				},
				{
					"CA",
					Components.GuiHelper_CountryList_Canada
				},
				{
					"CV",
					Components.GuiHelper_CountryList_Cape_Verde
				},
				{
					"KY",
					Components.GuiHelper_CountryList_Cayman_Islands
				},
				{
					"CF",
					Components.GuiHelper_CountryList_Central_African_Republic
				},
				{
					"TD",
					Components.GuiHelper_CountryList_Chad
				},
				{
					"CL",
					Components.GuiHelper_CountryList_Chile
				},
				{
					"CN",
					Components.GuiHelper_CountryList_China
				},
				{
					"CO",
					Components.GuiHelper_CountryList_Colombia
				},
				{
					"KM",
					Components.GuiHelper_CountryList_Comoros
				},
				{
					"CG",
					Components.GuiHelper_CountryList_Congo
				},
				{
					"CK",
					Components.GuiHelper_CountryList_Cook_Islands
				},
				{
					"CR",
					Components.GuiHelper_CountryList_Costa_Rica
				},
				{
					"CI",
					Components.GuiHelper_CountryList_Caymand_Islands
				},
				{
					"HR",
					Components.GuiHelper_CountryList_Croatia
				},
				{
					"CU",
					Components.GuiHelper_CountryList_Cuba
				},
				{
					"CZ",
					Components.GuiHelper_CountryList_Czech_Republic
				},
				{
					"DK",
					Components.GuiHelper_CountryList_Denmark
				},
				{
					"DJ",
					Components.GuiHelper_CountryList_Djibouti
				},
				{
					"DO",
					Components.GuiHelper_CountryList_Dominican_Republic
				},
				{
					"TP",
					Components.GuiHelper_CountryList_East_Timor
				},
				{
					"EC",
					Components.GuiHelper_CountryList_Ecuador
				},
				{
					"EG",
					Components.GuiHelper_CountryList_Egypt
				},
				{
					"SV",
					Components.GuiHelper_CountryList_El_salvador
				},
				{
					"GQ",
					Components.GuiHelper_CountryList_Equatorial_Guinea
				},
				{
					"ER",
					Components.GuiHelper_CountryList_Eritrea
				},
				{
					"EE",
					Components.GuiHelper_CountryList_Estonia
				},
				{
					"ET",
					Components.GuiHelper_CountryList_Ethiopia
				},
				{
					"FK",
					Components.GuiHelper_CountryList_Falkland_Islands
				},
				{
					"FO",
					Components.GuiHelper_CountryList_Faroe_Islands
				},
				{
					"FJ",
					Components.GuiHelper_CountryList_Fiji
				},
				{
					"FI",
					Components.GuiHelper_CountryList_Finland
				},
				{
					"FR",
					Components.GuiHelper_CountryList_France
				},
				{
					"GF",
					Components.GuiHelper_CountryList_French_Guiana
				},
				{
					"PF",
					Components.GuiHelper_CountryList_French_Polynesia
				},
				{
					"GA",
					Components.GuiHelper_CountryList_Gabon
				},
				{
					"GM",
					Components.GuiHelper_CountryList_Gambia
				},
				{
					"GE",
					Components.GuiHelper_CountryList_Georgia
				},
				{
					"DE",
					Components.GuiHelper_CountryList_Germany
				},
				{
					"GH",
					Components.GuiHelper_CountryList_Ghana
				},
				{
					"GI",
					Components.GuiHelper_CountryList_Gibraltar
				},
				{
					"GR",
					Components.GuiHelper_CountryList_Greece
				},
				{
					"GL",
					Components.GuiHelper_CountryList_Greenland
				},
				{
					"GD",
					Components.GuiHelper_CountryList_Grenada
				},
				{
					"GP",
					Components.GuiHelper_CountryList_Guadeloupe
				},
				{
					"GU",
					Components.GuiHelper_CountryList_Guam
				},
				{
					"GT",
					Components.GuiHelper_CountryList_Guatemala
				},
				{
					"GN",
					Components.GuiHelper_CountryList_Guinea
				},
				{
					"GY",
					Components.GuiHelper_CountryList_Guyana
				},
				{
					"HT",
					Components.GuiHelper_CountryList_Haiti
				},
				{
					"VA",
					Components.GuiHelper_CountryList_Vatican
				},
				{
					"HN",
					Components.GuiHelper_CountryList_Honduras
				},
				{
					"HU",
					Components.GuiHelper_CountryList_Hungary
				},
				{
					"IS",
					Components.GuiHelper_CountryList_Iceland
				},
				{
					"IN",
					Components.GuiHelper_CountryList_India
				},
				{
					"ID",
					Components.GuiHelper_CountryList_Indonesia
				},
				{
					"IR",
					Components.GuiHelper_CountryList_Iran
				},
				{
					"IQ",
					Components.GuiHelper_CountryList_Iraq
				},
				{
					"IE",
					Components.GuiHelper_CountryList_Ireland
				},
				{
					"IL",
					Components.GuiHelper_CountryList_Israel
				},
				{
					"IT",
					Components.GuiHelper_CountryList_Italy
				},
				{
					"JM",
					Components.GuiHelper_CountryList_Jamaica
				},
				{
					"JP",
					Components.GuiHelper_CountryList_Japan
				},
				{
					"JO",
					Components.GuiHelper_CountryList_Jordan
				},
				{
					"KZ",
					Components.GuiHelper_CountryList_Kazakstan
				},
				{
					"KE",
					Components.GuiHelper_CountryList_Kenya
				},
				{
					"KI",
					Components.GuiHelper_CountryList_Kiribati
				},
				{
					"KW",
					Components.GuiHelper_CountryList_Kuwait
				},
				{
					"KG",
					Components.GuiHelper_CountryList_Kyrgystan
				},
				{
					"LA",
					Components.GuiHelper_CountryList_Lao
				},
				{
					"LV",
					Components.GuiHelper_CountryList_Latvia
				},
				{
					"LB",
					Components.GuiHelper_CountryList_Lebanon
				},
				{
					"LS",
					Components.GuiHelper_CountryList_Lesotho
				},
				{
					"LI",
					Components.GuiHelper_CountryList_Liechtenstein
				},
				{
					"LT",
					Components.GuiHelper_CountryList_Lithuania
				},
				{
					"LU",
					Components.GuiHelper_CountryList_Luxembourg
				},
				{
					"MO",
					Components.GuiHelper_CountryList_Macau
				},
				{
					"MK",
					Components.GuiHelper_CountryList_Macedonia
				},
				{
					"MG",
					Components.GuiHelper_CountryList_Madagascar
				},
				{
					"MW",
					Components.GuiHelper_CountryList_Malawi
				},
				{
					"MY",
					Components.GuiHelper_CountryList_Malaysia
				},
				{
					"MV",
					Components.GuiHelper_CountryList_Maldives
				},
				{
					"ML",
					Components.GuiHelper_CountryList_Mali
				},
				{
					"MT",
					Components.GuiHelper_CountryList_Malta
				},
				{
					"MR",
					Components.GuiHelper_CountryList_Mauritania
				},
				{
					"MU",
					Components.GuiHelper_CountryList_Mauritius
				},
				{
					"YT",
					Components.GuiHelper_CountryList_Mayotte
				},
				{
					"MX",
					Components.GuiHelper_CountryList_Mexico
				},
				{
					"FM",
					Components.GuiHelper_CountryList_Micronesia
				},
				{
					"MD",
					Components.GuiHelper_CountryList_Moldova
				},
				{
					"MC",
					Components.GuiHelper_CountryList_Monaco
				},
				{
					"MN",
					Components.GuiHelper_CountryList_Mongolia
				},
				{
					"MS",
					Components.GuiHelper_CountryList_Montserrat
				},
				{
					"MA",
					Components.GuiHelper_CountryList_Morocco
				},
				{
					"MZ",
					Components.GuiHelper_CountryList_Mozambique
				},
				{
					"MM",
					Components.GuiHelper_CountryList_Myanmar
				},
				{
					"NA",
					Components.GuiHelper_CountryList_Namibia
				},
				{
					"NR",
					Components.GuiHelper_CountryList_Nauru
				},
				{
					"NP",
					Components.GuiHelper_CountryList_Nepal
				},
				{
					"NL",
					Components.GuiHelper_CountryList_Netherlands
				},
				{
					"NZ",
					Components.GuiHelper_CountryList_New_Zealand
				},
				{
					"NI",
					Components.GuiHelper_CountryList_Nicaragua
				},
				{
					"NE",
					Components.GuiHelper_CountryList_Niger
				},
				{
					"NG",
					Components.GuiHelper_CountryList_Nigeria
				},
				{
					"NU",
					Components.GuiHelper_CountryList_Niue
				},
				{
					"NF",
					Components.GuiHelper_CountryList_Norfolk_Island
				},
				{
					"KP",
					Components.GuiHelper_CountryList_North_Korea
				},
				{
					"NO",
					Components.GuiHelper_CountryList_Norway
				},
				{
					"OM",
					Components.GuiHelper_CountryList_Oman
				},
				{
					"PK",
					Components.GuiHelper_CountryList_Pakistan
				},
				{
					"PW",
					Components.GuiHelper_CountryList_Palau
				},
				{
					"PA",
					Components.GuiHelper_CountryList_Panama
				},
				{
					"PG",
					Components.GuiHelper_CountryList_Papua_New_Guinea
				},
				{
					"PY",
					Components.GuiHelper_CountryList_Paraguay
				},
				{
					"PE",
					Components.GuiHelper_CountryList_Peru
				},
				{
					"PH",
					Components.GuiHelper_CountryList_Philippines
				},
				{
					"PL",
					Components.GuiHelper_CountryList_Poland
				},
				{
					"PT",
					Components.GuiHelper_CountryList_Portugal
				},
				{
					"PR",
					Components.GuiHelper_CountryList_Puerto_Rico
				},
				{
					"RO",
					Components.GuiHelper_CountryList_Romania
				},
				{
					"RU",
					Components.GuiHelper_CountryList_Russia
				},
				{
					"RW",
					Components.GuiHelper_CountryList_Rwanda
				},
				{
					"WS",
					Components.GuiHelper_CountryList_Samoa
				},
				{
					"SM",
					Components.GuiHelper_CountryList_San_Marino
				},
				{
					"SA",
					Components.GuiHelper_CountryList_Saudi_Arabia
				},
				{
					"SN",
					Components.GuiHelper_CountryList_Senegal
				},
				{
					"SC",
					Components.GuiHelper_CountryList_Seychelles
				},
				{
					"SL",
					Components.GuiHelper_CountryList_Sierra_Leone
				},
				{
					"SG",
					Components.GuiHelper_CountryList_Singapore
				},
				{
					"SK",
					Components.GuiHelper_CountryList_Slovakia
				},
				{
					"SB",
					Components.GuiHelper_CountryList_Solomon_Islands
				},
				{
					"SO",
					Components.GuiHelper_CountryList_Somalia
				},
				{
					"ZA",
					Components.GuiHelper_CountryList_South_Africa
				},
				{
					"KR",
					Components.GuiHelper_CountryList_South_Korea
				},
				{
					"ES",
					Components.GuiHelper_CountryList_Spain
				},
				{
					"LK",
					Components.GuiHelper_CountryList_Sri_Lanka
				},
				{
					"SD",
					Components.GuiHelper_CountryList_Sudan
				},
				{
					"SR",
					Components.GuiHelper_CountryList_Suriname
				},
				{
					"SZ",
					Components.GuiHelper_CountryList_Swaziland
				},
				{
					"SE",
					Components.GuiHelper_CountryList_Sweden
				},
				{
					"CH",
					Components.GuiHelper_CountryList_Switzerland
				},
				{
					"SY",
					Components.GuiHelper_CountryList_Syria
				},
				{
					"TW",
					Components.GuiHelper_CountryList_Taiwan
				},
				{
					"TJ",
					Components.GuiHelper_CountryList_Tajikistan
				},
				{
					"TZ",
					Components.GuiHelper_CountryList_Tanzania
				},
				{
					"TH",
					Components.GuiHelper_CountryList_Thailand
				},
				{
					"TG",
					Components.GuiHelper_CountryList_Togo
				},
				{
					"TO",
					Components.GuiHelper_CountryList_Tonga
				},
				{
					"TT",
					Components.GuiHelper_CountryList_Trinidad_and_Tobago
				},
				{
					"TN",
					Components.GuiHelper_CountryList_Tunisia
				},
				{
					"TR",
					Components.GuiHelper_CountryList_Turkey
				},
				{
					"TM",
					Components.GuiHelper_CountryList_Turkmenistan
				},
				{
					"TV",
					Components.GuiHelper_CountryList_Tuvalu
				},
				{
					"UG",
					Components.GuiHelper_CountryList_Uganda
				},
				{
					"UA",
					Components.GuiHelper_CountryList_Ukraine
				},
				{
					"AE",
					Components.GuiHelper_CountryList_United_Arab_Emirates
				},
				{
					"GB",
					Components.GuiHelper_CountryList_United_Kingdom
				},
				{
					"US",
					Components.GuiHelper_CountryList_United_States
				},
				{
					"UY",
					Components.GuiHelper_CountryList_Uruguay
				},
				{
					"UZ",
					Components.GuiHelper_CountryList_Uzbekistan
				},
				{
					"VU",
					Components.GuiHelper_CountryList_Vanuatu
				},
				{
					"VE",
					Components.GuiHelper_CountryList_Venezuela
				},
				{
					"VN",
					Components.GuiHelper_CountryList_Vietnam
				},
				{
					"VG",
					Components.GuiHelper_CountryList_Virgin_Islands
				},
				{
					"EH",
					Components.GuiHelper_CountryList_Western_Sahara
				},
				{
					"YE",
					Components.GuiHelper_CountryList_Yemen
				},
				{
					"YU",
					Components.GuiHelper_CountryList_Yugoslavia
				},
				{
					"ZR",
					Components.GuiHelper_CountryList_Zaire
				},
				{
					"ZM",
					Components.GuiHelper_CountryList_Zambia
				},
				{
					"ZW",
					Components.GuiHelper_CountryList_Zimbabwe
				},
				{
					"HK",
					Components.GuiHelper_CountryList_Hong_Kong
				}
			};
			GuiHelper.RegisteredBoxes = new List<Selector>();
		}
	}
}
