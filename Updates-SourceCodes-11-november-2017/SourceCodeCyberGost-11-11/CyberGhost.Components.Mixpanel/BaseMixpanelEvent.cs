using CyberGhost.Settings;
using CyberGhost.Settings.SettingsItems;
using Microsoft.Win32;
using Mixpanel;
using MobileConcepts.Extensions;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Dynamic;

namespace CyberGhost.Components.Mixpanel
{
	public class BaseMixpanelEvent : BaseMixpanelObject
	{
		public Type PeopleType
		{
			get;
			set;
		}

		[MixpanelName("time")]
		public DateTime EventTime
		{
			get;
			set;
		}

		public BaseMixpanelEvent()
		{
			this.EventTime = DateTime.Now;
			this.PeopleType = typeof(BaseMixpanelPeople);
		}

		private static RegistryKey GetRegistryKey(string subKey)
		{
			RegistryKey result;
			using (RegistryKey registryKey = RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, System.Environment.Is64BitOperatingSystem ? RegistryView.Registry64 : RegistryView.Registry32))
			{
				string name = string.Format("{0}{1}\\", Constants.RegPath, subKey);
				result = registryKey.OpenSubKey(name, RegistryKeyPermissionCheck.ReadSubTree);
			}
			return result;
		}

		private static IEnumerable<KeyValuePair<string, string>> GetKvStoreValues()
		{
			List<KeyValuePair<string, string>> list = new List<KeyValuePair<string, string>>();
			using (RegistryKey registryKey = BaseMixpanelEvent.GetRegistryKey("KVStore"))
			{
				if (registryKey != null)
				{
					string[] valueNames = registryKey.GetValueNames();
					for (int i = 0; i < valueNames.Length; i++)
					{
						string text = valueNames[i];
						string text2 = registryKey.GetValue(text).ToString();
						KvStoreData kvStoreData = new KvStoreData();
						if (kvStoreData.DeserializeObject(text2))
						{
							if (kvStoreData.GetExpires() > DateTime.UtcNow)
							{
								list.Add(new KeyValuePair<string, string>(text, kvStoreData.get_value()));
							}
						}
						else
						{
							list.Add(new KeyValuePair<string, string>(text, text2));
						}
					}
				}
			}
			return list;
		}

		public static string GetKvStoreAsJson()
		{
			ExpandoObject expandoObject = new ExpandoObject();
			using (RegistryKey registryKey = BaseMixpanelEvent.GetRegistryKey("KVStore"))
			{
				if (registryKey != null)
				{
					string[] valueNames = registryKey.GetValueNames();
					for (int i = 0; i < valueNames.Length; i++)
					{
						string text = valueNames[i];
						string text2 = registryKey.GetValue(text).ToString();
						KvStoreData kvStoreData = new KvStoreData();
						if (kvStoreData.DeserializeObject(text2))
						{
							if (kvStoreData.GetExpires() > DateTime.UtcNow)
							{
								ExpandoObject expandoObject2 = new ExpandoObject();
								ExpandoExtensions.AddProperty(expandoObject2, "value", kvStoreData.get_value());
								ExpandoExtensions.AddProperty(expandoObject2, "days", Convert.ToInt32((kvStoreData.GetExpires() - DateTime.UtcNow).TotalDays));
								ExpandoExtensions.AddProperty(expandoObject, text, expandoObject2);
							}
						}
						else
						{
							ExpandoObject expandoObject3 = new ExpandoObject();
							ExpandoExtensions.AddProperty(expandoObject3, "value", text2);
							ExpandoExtensions.AddProperty(expandoObject, text, expandoObject3);
						}
					}
				}
			}
			ExpandoObject expr_F1 = new ExpandoObject();
			ExpandoExtensions.AddProperty(expr_F1, "superproperties", expandoObject);
			return JsonConvert.SerializeObject(expr_F1);
		}

		public virtual string GetEventName()
		{
			return "Base Event";
		}

		public virtual MixpanelMessage GetMessage(IMixpanelClient mixpanelClient)
		{
			MixpanelMessage trackMessage = mixpanelClient.GetTrackMessage(this.GetEventName(), this);
			if (trackMessage.get_Data().ContainsKey("properties"))
			{
				Dictionary<string, string> arg_48_0 = SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsDictionary();
				IDictionary<string, object> dictionary = (IDictionary<string, object>)trackMessage.get_Data()["properties"];
				foreach (KeyValuePair<string, string> current in arg_48_0)
				{
					if (dictionary.ContainsKey(current.Key))
					{
						dictionary[current.Key] = current.Value;
					}
					else
					{
						dictionary.Add(current.Key, current.Value);
					}
				}
				foreach (KeyValuePair<string, string> current2 in BaseMixpanelEvent.GetKvStoreValues())
				{
					if (dictionary.ContainsKey(current2.Key))
					{
						dictionary[current2.Key] = current2.Value;
					}
					else
					{
						dictionary.Add(current2.Key, current2.Value);
					}
				}
			}
			return trackMessage;
		}

		public virtual void FireEvent()
		{
			MixpanelEventSender.FireEvent(this, (BaseMixpanelPeople)Activator.CreateInstance(this.PeopleType));
		}
	}
}
