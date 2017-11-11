using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using Microsoft.Win32;
using MobileConcepts.Components.JsonExecutor;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using MobileConcepts.Settings;
using Newtonsoft.Json.Linq;
using System;
using System.Threading.Tasks;

namespace CyberGhost.Pages
{
	internal class PopUpExecutor : JsonExecuter
	{
		private readonly PopUp _mPopup;

		public PopUpExecutor(PopUp correspondingPopup)
		{
			this._mPopup = correspondingPopup;
		}

		public void WriteLog(string message, string loglevel)
		{
			int num;
			if (!int.TryParse(loglevel, out num))
			{
				return;
			}
			string arg;
			switch (num)
			{
			case 0:
				arg = "none";
				break;
			case 1:
				arg = "info";
				break;
			case 2:
				arg = "warning";
				break;
			default:
				arg = "error";
				break;
			}
			HelperFunctions.DebugLine(string.Format("{2} [{0}]: {1}", arg, message, DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString()));
		}

		public void SetSetting(string settingName, string settingValue)
		{
			SettingsHolder.get_Settings().get_BannerSettings().SetPublicSettingsValue(settingName, settingValue, false, false);
		}

		public string GetSetting(string settingName)
		{
			return SettingsHolder.get_Settings().get_BannerSettings().GetPublicSettingsValue(settingName, false, false);
		}

		public string GetSettings()
		{
			return PopUpExecutor.GetPublicSettings(SettingsHolder.get_Settings());
		}

		public void ShowPopUp(string width, string height)
		{
			this.ShowPopUp(width, height, string.Empty);
		}

		public void ShowPopUp()
		{
			this.ShowPopUp("0", "0");
		}

		public void ShowPopUp(string bannerName)
		{
			this.ShowPopUp("0", "0", bannerName);
		}

		public void ShowPopUp(string width, string height, string bannerName)
		{
			this._mPopup.DoShow(int.Parse(width), int.Parse(height), bannerName);
		}

		public void ClosePopUp(string popupResult)
		{
			this._mPopup.DoHide(popupResult);
		}

		public void ClosePopUp()
		{
			this._mPopup.DoHide("CANCEL");
		}

		public bool OpenUrl(string url)
		{
			return this.OpenUrl(url, "false", "true");
		}

		public bool OpenUrl(string url, string incognito)
		{
			return this.OpenUrl(url, incognito, "true");
		}

		public async Task<bool> OpenMyAccount()
		{
			return await Helper.OpenAuthLink("go_account", false, string.Format("&channel={0}&cc={1}", MainWindow.UpgradeChannel(), SettingsHolder.get_Settings().GetChallenge()), false, null);
		}

		public bool OpenUrl(string url, string incognito, string trackAsConversion)
		{
			if (HelperFunctions.StringToBool(trackAsConversion))
			{
				new ConversionWindowClickedEvent
				{
					ConversionPoint = this._mPopup.BannerName,
					ConversionZone = EumExtensions.GetDescription<PopUpZone>(this._mPopup.PopUpZone)
				}.FireEvent();
			}
			return HelperFunctions.OpenFileInBrowser(url, HelperFunctions.StringToBool(incognito)) != null;
		}

		public void SetTitle(string title)
		{
			this._mPopup.SetPopUpTitle(title);
		}

		public void CanClose(string closeable)
		{
			this._mPopup.SetCanClose(HelperFunctions.StringToBool(closeable));
		}

		public void ForcePopup(string setForce)
		{
			this._mPopup.ForcePopup = HelperFunctions.StringToBool(setForce);
		}

		public void SetSize(string width, string height)
		{
			this._mPopup.SetWindowSize(int.Parse(width), int.Parse(height));
		}

		public void SetWindowPosition(string position)
		{
			this._mPopup.SetWindowPosition(position);
		}

		public void GoUpgrade(string upgradeReason)
		{
			Navigation.GoInAppPurchase(this._mPopup.BannerName, null);
			this.ClosePopUp("CONVERT");
		}

		public void GoUpgrade(string upgradeReason, string additionalParams)
		{
			Navigation.GoInAppPurchase(this._mPopup.BannerName, additionalParams);
			this.ClosePopUp("CONVERT");
		}

		public void Disconnect()
		{
			ObjectHolder.MainForm.Disconnect();
		}

		public void SetCookie(string name, string value)
		{
			SettingsHolder.get_Settings().get_BannerSettings().SetPublicSettingsValue(name, value, false, false);
		}

		public string GetCookie(string name)
		{
			return SettingsHolder.get_Settings().get_BannerSettings().GetPublicSettingsValue(name, false, false);
		}

		public string GetCookies()
		{
			return PopUpExecutor.GetPublicSettings(SettingsHolder.get_Settings().get_BannerSettings());
		}

		private static string GetPublicSettings(RegistrySettingsStorage settingsObject)
		{
			JObject jObject = new JObject();
			RegistryKey settingsKey = settingsObject.GetSettingsKey(false, false, false);
			if (settingsKey != null)
			{
				string[] valueNames = settingsKey.GetValueNames();
				for (int i = 0; i < valueNames.Length; i++)
				{
					string text = valueNames[i];
					string text2 = string.Empty;
					string text3 = string.Empty;
					try
					{
						if (text.StartsWith("Public_", StringComparison.InvariantCultureIgnoreCase))
						{
							text3 = settingsKey.GetValue(text, string.Empty).ToString();
							text2 = text.Substring(7);
						}
						if (!string.IsNullOrEmpty(text2))
						{
							if (text2.StartsWith("ENC_", StringComparison.InvariantCultureIgnoreCase))
							{
								text3 = SettingsHolder.get_Settings().DecryptUserString(text3, false);
							}
							jObject.Add(new JProperty(text2, text3));
						}
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine("COULD NOT LOAD KEY " + text2 + ex.Message);
					}
				}
				settingsKey.Close();
			}
			return jObject.ToString();
		}
	}
}
