using Avira.Core;
using Avira.Messaging;
using Avira.VPN.Core;
using Microsoft.Win32;
using Newtonsoft.Json;
using System;
using System.Reflection;

namespace Avira.WebAppHost
{
	public class UserSettings
	{
		internal class UserSettingsData
		{
			[JsonProperty(PropertyName = "autoStart")]
			public bool RunAtStartup
			{
				get;
				set;
			}
		}

		private const string CurrentUserRunKey = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run";

		public static bool RunAtStartup
		{
			get
			{
				bool result;
				using (RegistryKey registryKey = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", false))
				{
					result = (((registryKey != null) ? registryKey.GetValue(ProductSettings.get_ProductName()) : null) != null);
				}
				return result;
			}
			set
			{
				using (RegistryKey registryKey = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true))
				{
					if (value)
					{
						string location = Assembly.GetExecutingAssembly().Location;
						if (!string.IsNullOrEmpty(location))
						{
							if (registryKey != null)
							{
								registryKey.SetValue(ProductSettings.get_ProductName(), location + " /hide");
							}
						}
					}
					else if (registryKey != null && registryKey.GetValue(ProductSettings.get_ProductName()) != null)
					{
						registryKey.DeleteValue(ProductSettings.get_ProductName());
					}
				}
			}
		}

		public Message HandleRequest(Message message)
		{
			string requestType = UserSettings.GetRequestType(message);
			if (requestType == "get")
			{
				UserSettings.UserSettingsData userSettingsData = new UserSettings.UserSettingsData
				{
					RunAtStartup = UserSettings.RunAtStartup
				};
				return Message.CreateResponse(message, Message.ToJObject<UserSettings.UserSettingsData>(userSettingsData));
			}
			if (!(requestType == "set"))
			{
				return Message.CreateFailedResponse(message, -32602);
			}
			Log.Information(string.Format("Setting UserSettings: {0}", message.get_Params()));
			UserSettings.RunAtStartup = JsonConvert.DeserializeObject<UserSettings.UserSettingsData>(message.get_Params().ToString()).RunAtStartup;
			return Message.CreateResponse(message, "OK");
		}

		private static string GetRequestType(Message message)
		{
			string expr_18 = message.get_Method().Remove(0, "userSettings".Length + 1);
			int num = expr_18.IndexOf("/", StringComparison.Ordinal);
			if (num == 0)
			{
				throw new ArgumentException("Invalid user settings message.");
			}
			return expr_18.Substring(num + 1);
		}
	}
}
