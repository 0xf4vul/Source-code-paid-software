using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ApplicationClosedEvent : BaseMixpanelEvent
	{
		public override string GetEventName()
		{
			return "Application closed";
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class BaseConversionEvent : BaseMixpanelEvent
	{
		[MixpanelName("Channel")]
		public string Channel
		{
			get;
			set;
		}

		public BaseConversionEvent()
		{
			this.Channel = "client";
		}
	}
}

using CyberGhost.Settings;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ApplicationLaunchedEvent : BaseMixpanelEvent
	{
		public ApplicationLaunchedEvent()
		{
			base.ApplicationLaunches = SettingsHolder.get_Settings().get_TotalApplicationLaunches();
		}

		public override string GetEventName()
		{
			return "Application launched";
		}
	}
}

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

using CyberGhost.Helpers;
using CyberGhost.Settings;
using Mixpanel;
using MobileConcepts.Helpers;
using System;
using System.Globalization;
using System.Reflection;
using System.Runtime.Serialization;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace CyberGhost.Components.Mixpanel
{
	[DataContract]
	public class BaseMixpanelObject
	{
		[MixpanelName("distinct_id")]
		public string DistinctId
		{
			get;
			set;
		}

		[MixpanelName("Environment")]
		public string Environment
		{
			get;
			set;
		}

		[MixpanelName("ip")]
		public string Ip
		{
			get;
			set;
		}

		[MixpanelName("API Version")]
		public string ApiVersion
		{
			get;
			set;
		}

		[MixpanelName("OS Country")]
		public string Country
		{
			get;
			set;
		}

		[MixpanelName("Client Language")]
		public string ClientLanguage
		{
			get;
			set;
		}

		[MixpanelName("Plan ID")]
		public int PlanId
		{
			get;
			set;
		}

		[MixpanelName("Plan Name")]
		public string PlanName
		{
			get;
			set;
		}

		[MixpanelName("Plan Type")]
		public string PlanType
		{
			get;
			set;
		}

		[MixpanelName("Product ID")]
		public int ProductId
		{
			get;
			set;
		}

		[MixpanelName("Product Name")]
		public string ProductName
		{
			get;
			set;
		}

		[MixpanelName("CG5 Upgrade")]
		public bool Cg5Upgrade
		{
			get;
			set;
		}

		[MixpanelName("Billing type")]
		public string BillingType
		{
			get;
			set;
		}

		[MixpanelName("Billing interval (months)")]
		public int BillingIntervalMonths
		{
			get;
			set;
		}

		[MixpanelName("Billing interval days (days)")]
		public int BillingIntervalDays
		{
			get;
			set;
		}

		[MixpanelName("Currency")]
		public string Currency
		{
			get;
			set;
		}

		[MixpanelName("$os")]
		public string Os
		{
			get;
			set;
		}

		[MixpanelName("$os_version")]
		public string OsVersion
		{
			get;
			set;
		}

		[MixpanelName("Architecture")]
		public string Architecture
		{
			get;
			set;
		}

		[MixpanelName("Affiliate ID")]
		public string AffiliateId
		{
			get;
			set;
		}

		[MixpanelName("Client Version")]
		public string ClientVersion
		{
			get;
			set;
		}

		[MixpanelName("Succesfull connections")]
		public int SuccesfullConnections
		{
			get;
			set;
		}

		[MixpanelName("Unsuccesfull connections")]
		public int UnsuccesfullConnections
		{
			get;
			set;
		}

		[MixpanelName("Connection attempts")]
		public int ConnectionAttempts
		{
			get;
			set;
		}

		[MixpanelName("Application launches")]
		public int ApplicationLaunches
		{
			get;
			set;
		}

		[MixpanelName("Total secure hotspots protected")]
		public int TotalSecureHotspotsProtected
		{
			get;
			set;
		}

		[MixpanelName("Total unsecure hotspots protected")]
		public int TotalUnsecureHotspotsProtected
		{
			get;
			set;
		}

		[MixpanelName("Last used profile")]
		public string LastUsedProfile
		{
			get;
			set;
		}

		[MixpanelName("App Name")]
		public string AppName
		{
			get;
			set;
		}

		public BaseMixpanelObject()
		{
			this.Cg5Upgrade = SettingsHolder.get_Settings().get_IsCg5Upgrade();
			this.DistinctId = ((!this.Cg5Upgrade) ? SettingsHolder.get_Settings().get_DistinctId() : BaseMixpanelObject.GetDistinctIdHmac(SettingsHolder.get_Settings().get_DistinctId()));
			if (SettingsHolder.get_Settings().get_LoginServer().Contains("dev-api.cyberghostvpn.com"))
			{
				this.Environment = "dev";
			}
			else if (SettingsHolder.get_Settings().get_LoginServer().Contains("beta-api.cyberghostvpn.com"))
			{
				this.Environment = "beta";
			}
			else
			{
				this.Environment = "live";
			}
			if (ObjectHolder.CurrentStatus != null)
			{
				this.ApiVersion = string.Format("{0}-{1}", ObjectHolder.CurrentStatus.get_JsApi(), ObjectHolder.CurrentStatus.get_PhpApi());
				this.Ip = ObjectHolder.CurrentStatus.get_RealIp();
			}
			this.Country = HelperFunctions.GetSystemRegionCode();
			this.ClientLanguage = SettingsHolder.get_Settings().get_Language();
			this.AppName = Theming.GetProductName();
			if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.get_Subscription() != null && ObjectHolder.CurrentUser.get_Subscription().get_Product() != null)
			{
				this.PlanId = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_PlansId();
				this.PlanName = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Plan().get_InternalName();
				if (ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Plan().get_TrialPeriodDays() > 0)
				{
					this.PlanType = "trial";
				}
				else
				{
					this.PlanType = (ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Plan().get_Free() ? "free" : (ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Plan().get_Promo() ? "promo" : "paid"));
				}
				this.ProductId = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Id();
				this.ProductName = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_InternalName();
				this.BillingType = (ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Recurring() ? "recurring" : "prepaid");
				this.BillingIntervalMonths = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Months();
				this.BillingIntervalDays = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Days();
			}
			this.Currency = NumberFormatInfo.CurrentInfo.CurrencySymbol;
			this.Os = "win";
			this.Architecture = (System.Environment.Is64BitOperatingSystem ? "x64" : "x86");
			this.OsVersion = HelperFunctions.GetOsVersion().ToString();
			this.AffiliateId = Constants.get_AffiliateId();
			this.ClientVersion = Assembly.GetExecutingAssembly().GetName().Version.ToString();
			this.SuccesfullConnections = SettingsHolder.get_Settings().get_TotalConnectionsOk();
			this.UnsuccesfullConnections = SettingsHolder.get_Settings().get_TotalConnectionFailed();
			this.ConnectionAttempts = SettingsHolder.get_Settings().get_TotalConnectionAttempts();
			this.ApplicationLaunches = SettingsHolder.get_Settings().get_TotalApplicationLaunches();
			this.TotalSecureHotspotsProtected = SettingsHolder.get_Settings().get_WiFiSecureSsids().Count;
			this.TotalUnsecureHotspotsProtected = SettingsHolder.get_Settings().get_WiFiUnsecureSsids().Count;
			this.LastUsedProfile = SettingsHolder.get_Settings().get_LastConnectedProfile();
		}

		private static string ByteToString(byte[] buff)
		{
			string text = string.Empty;
			for (int i = 0; i < buff.Length; i++)
			{
				byte b = buff[i];
				text += b.ToString("X2");
			}
			return text;
		}

		private static string GetDistinctIdHmac(string distinctId)
		{
			UTF8Encoding uTF8Encoding = new UTF8Encoding();
			HashAlgorithm arg_1F_0 = new HMACSHA256(uTF8Encoding.GetBytes("ZtyFDq4!iZöa=("));
			byte[] bytes = uTF8Encoding.GetBytes(distinctId);
			return BaseMixpanelObject.ByteToString(arg_1F_0.ComputeHash(bytes)).ToLower();
		}

		public static void FireEvent<TEvent, TPeople>() where TEvent : BaseMixpanelEvent where TPeople : BaseMixpanelPeople
		{
			MixpanelEventSender.FireEvent(Activator.CreateInstance<TEvent>(), Activator.CreateInstance<TPeople>());
		}

		public static void FireEvent<TEvent>() where TEvent : BaseMixpanelEvent
		{
			TEvent expr_05 = Activator.CreateInstance<TEvent>();
			BaseMixpanelPeople aCorrespondingPeopleProperty = (BaseMixpanelPeople)Activator.CreateInstance(expr_05.PeopleType);
			MixpanelEventSender.FireEvent(expr_05, aCorrespondingPeopleProperty);
		}

		public static Task FireEventAsync<TEvent>() where TEvent : BaseMixpanelEvent
		{
			TEvent expr_05 = Activator.CreateInstance<TEvent>();
			BaseMixpanelPeople thePeople = (BaseMixpanelPeople)Activator.CreateInstance(expr_05.PeopleType);
			return MixpanelEventSender.FireEventAsync(expr_05, thePeople);
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;
using System.Collections.Generic;

namespace CyberGhost.Components.Mixpanel
{
	public class BaseMixpanelPeople : BaseMixpanelObject
	{
		public virtual LinkedList<MixpanelMessage> GetMessages(IMixpanelClient mixpanelClient)
		{
			LinkedList<MixpanelMessage> linkedList = new LinkedList<MixpanelMessage>();
			linkedList.AddLast(mixpanelClient.GetPeopleSetMessage(this));
			linkedList.AddLast(mixpanelClient.GetPeopleSetOnceMessage(base.DistinctId, new Dictionary<string, object>
			{
				{
					"First seen",
					DateTime.Now
				}
			}));
			Dictionary<string, string> settingsAsDictionary = SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsDictionary();
			if (settingsAsDictionary.Count > 0)
			{
				linkedList.AddLast(mixpanelClient.GetPeopleSetMessage(base.DistinctId, settingsAsDictionary));
			}
			return linkedList;
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionAttemptAbortedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Reason")]
		public string Reason
		{
			get;
			set;
		}

		[MixpanelName("Features enabled")]
		public string[] FeaturesEnabled
		{
			get;
			set;
		}

		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Connection source")]
		public string ConnectionSource
		{
			get;
			set;
		}

		[MixpanelName("Connection type")]
		public string ConnectionType
		{
			get;
			set;
		}

		[MixpanelName("Tab used")]
		public string TabUsed
		{
			get;
			set;
		}

		public ConnectionAttemptAbortedEvent()
		{
			if (ObjectHolder.CurrentProfile != null)
			{
				this.FeaturesEnabled = ObjectHolder.CurrentProfile.GetEnabledFeatures();
				this.Profile = ObjectHolder.CurrentProfile.GetBaseName();
			}
			this.TabUsed = ObjectHolder.CurrentProfileTab;
			this.ConnectionType = ObjectHolder.ConnectionType;
			this.ConnectionSource = ObjectHolder.ConnectionSource;
		}

		public override string GetEventName()
		{
			return "Connection attempt aborted";
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionAttemptEvent : BaseMixpanelEvent
	{
		[MixpanelName("Features enabled")]
		public string[] FeaturesEnabled
		{
			get;
			set;
		}

		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Connection source")]
		public string ConnectionSource
		{
			get;
			set;
		}

		[MixpanelName("Connection type")]
		public string ConnectionType
		{
			get;
			set;
		}

		[MixpanelName("Tab used")]
		public string TabUsed
		{
			get;
			set;
		}

		public ConnectionAttemptEvent()
		{
			SettingsHolder expr_0B = SettingsHolder.get_Settings();
			int totalConnectionAttempts = expr_0B.get_TotalConnectionAttempts();
			expr_0B.set_TotalConnectionAttempts(totalConnectionAttempts + 1);
			base.ConnectionAttempts = SettingsHolder.get_Settings().get_TotalConnectionAttempts();
			if (ObjectHolder.CurrentProfile != null)
			{
				this.FeaturesEnabled = ObjectHolder.CurrentProfile.GetEnabledFeatures();
				this.Profile = ObjectHolder.CurrentProfile.GetBaseName();
			}
			this.TabUsed = ObjectHolder.CurrentProfileTab;
			this.ConnectionType = ObjectHolder.ConnectionType;
			this.ConnectionSource = ObjectHolder.ConnectionSource;
		}

		public override string GetEventName()
		{
			return "Connection attempt";
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionDroppedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Features enabled")]
		public string[] FeaturesEnabled
		{
			get;
			set;
		}

		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Connection source")]
		public string ConnectionSource
		{
			get;
			set;
		}

		[MixpanelName("Connection type")]
		public string ConnectionType
		{
			get;
			set;
		}

		[MixpanelName("Tab used")]
		public string TabUsed
		{
			get;
			set;
		}

		public ConnectionDroppedEvent()
		{
			if (ObjectHolder.CurrentProfile != null)
			{
				this.FeaturesEnabled = ObjectHolder.CurrentProfile.GetEnabledFeatures();
				this.Profile = ObjectHolder.CurrentProfile.GetBaseName();
			}
			this.TabUsed = ObjectHolder.CurrentProfileTab;
			this.ConnectionType = ObjectHolder.ConnectionType;
			this.ConnectionSource = ObjectHolder.ConnectionSource;
		}

		public override string GetEventName()
		{
			return "Connection dropped";
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionEstablishedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Features enabled")]
		public string[] FeaturesEnabled
		{
			get;
			set;
		}

		[MixpanelName("Connection source")]
		public string ConnectionSource
		{
			get;
			set;
		}

		[MixpanelName("Connection type")]
		public string ConnectionType
		{
			get;
			set;
		}

		[MixpanelName("Automatic retries")]
		public int AutomaticRetries
		{
			get;
			set;
		}

		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Tab used")]
		public string TabUsed
		{
			get;
			set;
		}

		public ConnectionEstablishedEvent()
		{
			SettingsHolder expr_0B = SettingsHolder.get_Settings();
			int totalConnectionsOk = expr_0B.get_TotalConnectionsOk();
			expr_0B.set_TotalConnectionsOk(totalConnectionsOk + 1);
			base.SuccesfullConnections = SettingsHolder.get_Settings().get_TotalConnectionsOk();
			if (ObjectHolder.CurrentProfile != null)
			{
				this.FeaturesEnabled = ObjectHolder.CurrentProfile.GetEnabledFeatures();
				this.Profile = ObjectHolder.CurrentProfile.GetBaseName();
			}
			this.TabUsed = ObjectHolder.CurrentProfileTab;
			this.ConnectionType = ObjectHolder.ConnectionType;
			this.ConnectionSource = ObjectHolder.ConnectionSource;
		}

		public override string GetEventName()
		{
			return "Connection established";
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionFailedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Reason")]
		public string Reason
		{
			get;
			set;
		}

		[MixpanelName("Error")]
		public string Error
		{
			get;
			set;
		}

		[MixpanelName("Error Data")]
		public string ErrorData
		{
			get;
			set;
		}

		[MixpanelName("Advanced Error Data")]
		public string AdvancedErrorData
		{
			get;
			set;
		}

		[MixpanelName("Features enabled")]
		public string[] FeaturesEnabled
		{
			get;
			set;
		}

		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Connection source")]
		public string ConnectionSource
		{
			get;
			set;
		}

		[MixpanelName("Connection type")]
		public string ConnectionType
		{
			get;
			set;
		}

		[MixpanelName("Automatic retries")]
		public int AutomaticRetries
		{
			get;
			set;
		}

		[MixpanelName("Was connected")]
		public bool WasConnected
		{
			get;
			set;
		}

		[MixpanelName("Tab used")]
		public string TabUsed
		{
			get;
			set;
		}

		public ConnectionFailedEvent()
		{
			SettingsHolder expr_0B = SettingsHolder.get_Settings();
			int totalConnectionFailed = expr_0B.get_TotalConnectionFailed();
			expr_0B.set_TotalConnectionFailed(totalConnectionFailed + 1);
			base.UnsuccesfullConnections = SettingsHolder.get_Settings().get_TotalConnectionFailed();
			if (ObjectHolder.CurrentProfile != null)
			{
				this.FeaturesEnabled = ObjectHolder.CurrentProfile.GetEnabledFeatures();
				this.Profile = ObjectHolder.CurrentProfile.GetBaseName();
			}
			this.TabUsed = ObjectHolder.CurrentProfileTab;
			this.ConnectionType = ObjectHolder.ConnectionType;
			this.ConnectionSource = ObjectHolder.ConnectionSource;
		}

		public override string GetEventName()
		{
			return "Connection failed";
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionReestablishedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Features enabled")]
		public string[] FeaturesEnabled
		{
			get;
			set;
		}

		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Connection source")]
		public string ConnectionSource
		{
			get;
			set;
		}

		[MixpanelName("Connection type")]
		public string ConnectionType
		{
			get;
			set;
		}

		[MixpanelName("Tab used")]
		public string TabUsed
		{
			get;
			set;
		}

		public ConnectionReestablishedEvent()
		{
			if (ObjectHolder.CurrentProfile != null)
			{
				this.FeaturesEnabled = ObjectHolder.CurrentProfile.GetEnabledFeatures();
				this.Profile = ObjectHolder.CurrentProfile.GetBaseName();
			}
			this.TabUsed = ObjectHolder.CurrentProfileTab;
			this.ConnectionType = ObjectHolder.ConnectionType;
			this.ConnectionSource = ObjectHolder.ConnectionSource;
		}

		public override string GetEventName()
		{
			return "Connection automatically reestablished";
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionTerminatedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Connection source")]
		public string ConnectionSource
		{
			get;
			set;
		}

		[MixpanelName("Connection type")]
		public string ConnectionType
		{
			get;
			set;
		}

		[MixpanelName("Tab used")]
		public string TabUsed
		{
			get;
			set;
		}

		public ConnectionTerminatedEvent()
		{
			if (ObjectHolder.CurrentProfile != null)
			{
				this.Profile = ObjectHolder.CurrentProfile.GetBaseName();
			}
			this.TabUsed = ObjectHolder.CurrentProfileTab;
			this.ConnectionType = ObjectHolder.ConnectionType;
			this.ConnectionSource = ObjectHolder.ConnectionSource;
		}

		public override string GetEventName()
		{
			return "Connection terminated";
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConversionWindowClickedEvent : BaseConversionEvent
	{
		[MixpanelName("Conversion point")]
		public string ConversionPoint
		{
			get;
			set;
		}

		[MixpanelName("Conversion zone")]
		public string ConversionZone
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "Conversion window clicked";
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConversionWindowEvent : BaseConversionEvent
	{
		[MixpanelName("Conversion point")]
		public string ConversionPoint
		{
			get;
			set;
		}

		[MixpanelName("Conversion zone")]
		public string ConversionZone
		{
			get;
			set;
		}

		public ConversionWindowEvent()
		{
			base.PeopleType = typeof(ConversionWindowPeople);
		}

		public override string GetEventName()
		{
			return "Conversion window displayed";
		}
	}
}

using Mixpanel;
using System;
using System.Collections.Generic;

namespace CyberGhost.Components.Mixpanel
{
	public class ConversionWindowPeople : BaseMixpanelPeople
	{
		public override LinkedList<MixpanelMessage> GetMessages(IMixpanelClient mixpanelClient)
		{
			LinkedList<MixpanelMessage> expr_07 = base.GetMessages(mixpanelClient);
			expr_07.AddLast(mixpanelClient.GetPeopleAddMessage(base.DistinctId, new Dictionary<string, object>
			{
				{
					"Conversion window opened",
					1
				}
			}));
			return expr_07;
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class DnsResolveErrorEvent : BaseMixpanelEvent
	{
		[MixpanelName("Error type")]
		public string ErrorType
		{
			get;
			set;
		}

		[MixpanelName("DNS Server")]
		public string DnsServer
		{
			get;
			set;
		}

		[MixpanelName("Exception")]
		public string Exception
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "DNS resolve error";
		}
	}
}

using System;

namespace CyberGhost.Components.Mixpanel
{
	public class GiveFeedbackClickedEvent : BaseMixpanelEvent
	{
		public override string GetEventName()
		{
			return "Feedback clicked";
		}
	}
}

using System;

namespace CyberGhost.Components.Mixpanel
{
	public class InAppPurchaseCompleted : BaseConversionEvent
	{
		public override string GetEventName()
		{
			return "Conversion";
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Settings;
using Mixpanel;
using MobileConcepts.Helpers;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.ExceptionServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;

namespace CyberGhost.Components.Mixpanel
{
	public static class MixpanelEventSender
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <TimerCallback>d__4 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			private TaskAwaiter<SendResult> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter<SendResult> taskAwaiter;
					if (num != 0)
					{
						LinkedList<MixpanelMessage> linkedList = new LinkedList<MixpanelMessage>();
						LinkedList<MixpanelMessage> unprocessedMessages = MixpanelEventSender._unprocessedMessages;
						bool flag = false;
						try
						{
							Monitor.Enter(unprocessedMessages, ref flag);
							if (MixpanelEventSender._unprocessedMessages.Count > 0)
							{
								LinkedList<MixpanelMessage>.Enumerator enumerator = MixpanelEventSender._unprocessedMessages.GetEnumerator();
								try
								{
									while (enumerator.MoveNext())
									{
										MixpanelMessage current = enumerator.Current;
										linkedList.AddLast(current);
									}
								}
								finally
								{
									if (num < 0)
									{
										((IDisposable)enumerator).Dispose();
									}
								}
							}
						}
						finally
						{
							if (num < 0 && flag)
							{
								Monitor.Exit(unprocessedMessages);
							}
						}
						if (linkedList.Count <= 0)
						{
							goto IL_1AE;
						}
						IMixpanelClient mixpanelClient = MixpanelEventSender.GetMixpanelClient();
						if (mixpanelClient == null)
						{
							goto IL_1AE;
						}
						taskAwaiter = mixpanelClient.SendAsync(linkedList).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							int arg_B4_1 = 0;
							num = 0;
							this.<>1__state = arg_B4_1;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<SendResult>, MixpanelEventSender.<TimerCallback>d__4>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<SendResult>);
						int arg_EC_1 = -1;
						num = -1;
						this.<>1__state = arg_EC_1;
					}
					SendResult arg_100_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<SendResult>);
					SendResult sendResult = arg_100_0;
					if (sendResult.get_SentBatches() != null && sendResult.get_SentBatches().Count > 0)
					{
						LinkedList<MixpanelMessage> unprocessedMessages = MixpanelEventSender._unprocessedMessages;
						bool flag = false;
						try
						{
							Monitor.Enter(unprocessedMessages, ref flag);
							IEnumerator<ReadOnlyCollection<MixpanelMessage>> enumerator2 = sendResult.get_SentBatches().GetEnumerator();
							try
							{
								while (enumerator2.MoveNext())
								{
									IEnumerator<MixpanelMessage> enumerator3 = enumerator2.Current.GetEnumerator();
									try
									{
										while (enumerator3.MoveNext())
										{
											MixpanelMessage current2 = enumerator3.Current;
											MixpanelEventSender._unprocessedMessages.Remove(current2);
										}
									}
									finally
									{
										if (num < 0 && enumerator3 != null)
										{
											enumerator3.Dispose();
										}
									}
								}
							}
							finally
							{
								if (num < 0 && enumerator2 != null)
								{
									enumerator2.Dispose();
								}
							}
						}
						finally
						{
							if (num < 0 && flag)
							{
								Monitor.Exit(unprocessedMessages);
							}
						}
					}
					IL_1AE:
					MixpanelEventSender._reprocessTimer.Change(60000, -1);
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
			public static readonly MixpanelEventSender.<>c <>9 = new MixpanelEventSender.<>c();

			public static Action <>9__6_0;

			internal void <CheckAlias>b__6_0()
			{
				IMixpanelClient mixpanelClient = MixpanelEventSender.GetMixpanelClient();
				if (mixpanelClient == null)
				{
					return;
				}
				string text = Constants.Alias(false);
				if (!string.IsNullOrEmpty(text))
				{
					try
					{
						BaseMixpanelObject baseMixpanelObject = new BaseMixpanelObject();
						if (mixpanelClient.Alias(baseMixpanelObject.DistinctId, text))
						{
							Constants.Alias(true);
						}
					}
					catch
					{
					}
				}
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass7_0
		{
			public BaseMixpanelEvent aEvent;

			public BaseMixpanelPeople aCorrespondingPeopleProperty;

			internal void <FireEvent>b__0()
			{
				IMixpanelClient mixpanelClient = null;
				try
				{
					mixpanelClient = MixpanelEventSender.GetMixpanelClient();
				}
				catch (Exception ex)
				{
					HelperFunctions.DebugLine(string.Format("COULD NOT FIRE EVENT: {0}", ex.Message));
				}
				if (mixpanelClient == null)
				{
					return;
				}
				string text = Constants.Alias(false);
				if (!string.IsNullOrEmpty(text))
				{
					try
					{
						BaseMixpanelObject baseMixpanelObject = new BaseMixpanelObject();
						if (mixpanelClient.Alias(baseMixpanelObject.DistinctId, text))
						{
							Constants.Alias(true);
						}
					}
					catch
					{
					}
				}
				LinkedList<MixpanelMessage> linkedList = new LinkedList<MixpanelMessage>();
				linkedList.AddLast(this.aEvent.GetMessage(mixpanelClient));
				foreach (MixpanelMessage current in this.aCorrespondingPeopleProperty.GetMessages(mixpanelClient))
				{
					linkedList.AddLast(current);
				}
				SendResult sendResult;
				try
				{
					sendResult = mixpanelClient.Send(linkedList);
					if (sendResult != null && (sendResult.get_FailedBatches() == null || sendResult.get_FailedBatches().Count <= 0))
					{
						return;
					}
				}
				catch (Exception ex2)
				{
					sendResult = null;
					LinkedList<MixpanelMessage> unprocessedMessages = MixpanelEventSender._unprocessedMessages;
					lock (unprocessedMessages)
					{
						foreach (MixpanelMessage current2 in linkedList)
						{
							MixpanelEventSender._unprocessedMessages.AddLast(current2);
						}
					}
					HelperFunctions.DebugLine(string.Format("COULD NOT SEND EVENT {0}", ex2.Message));
				}
				if (((sendResult != null) ? sendResult.get_FailedBatches() : null) != null)
				{
					LinkedList<MixpanelMessage> unprocessedMessages = MixpanelEventSender._unprocessedMessages;
					lock (unprocessedMessages)
					{
						using (IEnumerator<ReadOnlyCollection<MixpanelMessage>> enumerator2 = sendResult.get_FailedBatches().GetEnumerator())
						{
							while (enumerator2.MoveNext())
							{
								foreach (MixpanelMessage current3 in enumerator2.Current)
								{
									MixpanelEventSender._unprocessedMessages.AddLast(current3);
								}
							}
						}
					}
				}
			}
		}

		private static IMixpanelClient _mMixpanelClient;

		private static LinkedList<MixpanelMessage> _unprocessedMessages;

		private static Timer _reprocessTimer;

		private static IMixpanelClient GetMixpanelClient()
		{
			MixpanelConfig.get_Global().set_SerializeJsonFn(new Func<object, string>(JsonConvert.SerializeObject));
			if (MixpanelEventSender._unprocessedMessages == null)
			{
				MixpanelEventSender._unprocessedMessages = new LinkedList<MixpanelMessage>();
			}
			string text;
			if (SettingsHolder.get_Settings().get_LoginServer().Contains("dev-api"))
			{
				text = "53da9420a9c7e44cc7be995a8aae81f6";
			}
			else if (SettingsHolder.get_Settings().get_LoginServer().Contains("beta-api"))
			{
				text = "12eca00eae2e3b78278ca5faea3d19ff";
			}
			else
			{
				text = "249dc9ae0edcac6d1f94fc7d47333d37";
			}
			IMixpanelClient mixpanelClient;
			try
			{
				IMixpanelClient arg_81_0;
				if ((arg_81_0 = MixpanelEventSender._mMixpanelClient) == null)
				{
					arg_81_0 = (MixpanelEventSender._mMixpanelClient = new MixpanelClient(text, null, null));
				}
				mixpanelClient = arg_81_0;
			}
			catch
			{
				mixpanelClient = null;
			}
			if (MixpanelEventSender._reprocessTimer == null && mixpanelClient != null)
			{
				MixpanelEventSender._reprocessTimer = new Timer(new TimerCallback(MixpanelEventSender.TimerCallback), null, 60000, -1);
			}
			return mixpanelClient;
		}

		[AsyncStateMachine(typeof(MixpanelEventSender.<TimerCallback>d__4))]
		private static void TimerCallback(object state)
		{
			MixpanelEventSender.<TimerCallback>d__4 <TimerCallback>d__;
			<TimerCallback>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<TimerCallback>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <TimerCallback>d__.<>t__builder;
			<>t__builder.Start<MixpanelEventSender.<TimerCallback>d__4>(ref <TimerCallback>d__);
		}

		private static bool DoSendEvents()
		{
			return !ObjectHolder.IsFirstStart || DateTime.UtcNow - ObjectHolder.StartTime > TimeSpan.FromSeconds(90.0);
		}

		public static Task CheckAlias()
		{
			if (MixpanelEventSender.DoSendEvents())
			{
				Action arg_26_0;
				if ((arg_26_0 = MixpanelEventSender.<>c.<>9__6_0) == null)
				{
					arg_26_0 = (MixpanelEventSender.<>c.<>9__6_0 = new Action(MixpanelEventSender.<>c.<>9.<CheckAlias>b__6_0));
				}
				Task expr_2B = new Task(arg_26_0);
				HelperFunctions.GrabExceptions(expr_2B);
				expr_2B.ConfigureAwait(false);
				expr_2B.Start();
				return expr_2B;
			}
			return null;
		}

		[HandleProcessCorruptedStateExceptions]
		public static Task FireEvent(BaseMixpanelEvent aEvent, BaseMixpanelPeople aCorrespondingPeopleProperty)
		{
			MixpanelEventSender.<>c__DisplayClass7_0 <>c__DisplayClass7_ = new MixpanelEventSender.<>c__DisplayClass7_0();
			<>c__DisplayClass7_.aEvent = aEvent;
			<>c__DisplayClass7_.aCorrespondingPeopleProperty = aCorrespondingPeopleProperty;
			if (MixpanelEventSender.DoSendEvents())
			{
				Task expr_2C = new Task(new Action(<>c__DisplayClass7_.<FireEvent>b__0));
				HelperFunctions.GrabExceptions(expr_2C);
				expr_2C.ConfigureAwait(false);
				expr_2C.Start();
				return expr_2C;
			}
			return null;
		}

		public static Task FireEventAsync(BaseMixpanelEvent theEvent, BaseMixpanelPeople thePeople)
		{
			return MixpanelEventSender.FireEvent(theEvent, thePeople);
		}

		public static void FireEvent<TEvent, TPeople>() where TEvent : BaseMixpanelEvent where TPeople : BaseMixpanelPeople
		{
			MixpanelEventSender.FireEvent(Activator.CreateInstance<TEvent>(), Activator.CreateInstance<TPeople>());
		}

		public static void FireEvent<TEvent>() where TEvent : BaseMixpanelEvent
		{
			MixpanelEventSender.FireEvent(Activator.CreateInstance<TEvent>(), Activator.CreateInstance<BaseMixpanelPeople>());
		}

		public static string GetEventAsQueryString<TEvent>(bool preFilterProperties = true, IEnumerable<string> removeParams = null) where TEvent : BaseMixpanelEvent
		{
			IMixpanelClient mixpanelClient = MixpanelEventSender.GetMixpanelClient();
			if (mixpanelClient == null)
			{
				return string.Empty;
			}
			MixpanelMessage arg_35_0 = ((TEvent)((object)Activator.CreateInstance(typeof(TEvent), null))).GetMessage(mixpanelClient);
			LinkedList<string> linkedList = new LinkedList<string>();
			IDictionary<string, object> expr_49 = (IDictionary<string, object>)arg_35_0.get_Data()["properties"];
			expr_49.Add(new KeyValuePair<string, object>("cc", SettingsHolder.get_Settings().GetChallenge()));
			foreach (KeyValuePair<string, object> current in expr_49)
			{
				if ((!preFilterProperties || (!current.Key.Equals("token") && !current.Key.Equals("ip") && !current.Key.Equals("time"))) && (removeParams == null || !removeParams.Contains(current.Key)) && current.Value != null)
				{
					linkedList.AddLast(string.Format("{0}={1}", Uri.EscapeDataString(current.Key.Replace("$", "")), Uri.EscapeDataString(current.Value.ToString())));
				}
			}
			if (removeParams == null || !removeParams.Contains("hid"))
			{
				linkedList.AddLast(string.Format("hid={0}", FingerPrint.Value()));
			}
			return string.Join("&", linkedList);
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ProfileClickedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Source")]
		public string Source
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "Profile clicked";
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class SettingsChangedEvent : BaseMixpanelEvent
	{
		[MixpanelName("settings tab")]
		public string SettingsTab
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "Settings Changed";
		}
	}
}

using System;

namespace CyberGhost.Components.Mixpanel
{
	public class SettingsOpenedEvent : BaseMixpanelEvent
	{
		public SettingsOpenedEvent()
		{
			base.PeopleType = typeof(SettingsOpenedPeople);
		}

		public override string GetEventName()
		{
			return "Settings opened";
		}
	}
}

using Mixpanel;
using System;
using System.Collections.Generic;

namespace CyberGhost.Components.Mixpanel
{
	public class SettingsOpenedPeople : BaseMixpanelPeople
	{
		public override LinkedList<MixpanelMessage> GetMessages(IMixpanelClient mixpanelClient)
		{
			LinkedList<MixpanelMessage> expr_07 = base.GetMessages(mixpanelClient);
			expr_07.AddLast(mixpanelClient.GetPeopleAddMessage(base.DistinctId, new Dictionary<string, object>
			{
				{
					"Settings opened",
					1
				}
			}));
			return expr_07;
		}
	}
}

using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class SettingsTabClickedEvent : BaseMixpanelEvent
	{
		[MixpanelName("settings tab")]
		public string SettingsTab
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "Settings Tab Clicked";
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class StreamingServiceConnectionAttemptAbortedEvent : ConnectionAttemptAbortedEvent
	{
		[MixpanelName("Streaming Portal")]
		public string StreamingPortal
		{
			get;
			set;
		}

		[MixpanelName("Streaming Portal Name")]
		public string StreamingPortalName
		{
			get;
			set;
		}

		public StreamingServiceConnectionAttemptAbortedEvent()
		{
			this.StreamingPortal = SettingsHolder.get_Settings().get_ProfileUnblock().get_CurrentUnblockUrl();
			this.StreamingPortalName = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class StreamingServiceConnectionAttemptEvent : ConnectionAttemptEvent
	{
		[MixpanelName("Streaming Portal")]
		public string StreamingPortal
		{
			get;
			set;
		}

		[MixpanelName("Streaming Portal Name")]
		public string StreamingPortalName
		{
			get;
			set;
		}

		public StreamingServiceConnectionAttemptEvent()
		{
			this.StreamingPortal = SettingsHolder.get_Settings().get_ProfileUnblock().get_CurrentUnblockUrl();
			this.StreamingPortalName = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class StreamingServiceConnectionEstablishedEvent : ConnectionEstablishedEvent
	{
		[MixpanelName("Streaming Portal")]
		public string StreamingPortal
		{
			get;
			set;
		}

		[MixpanelName("Streaming Portal Name")]
		public string StreamingPortalName
		{
			get;
			set;
		}

		public StreamingServiceConnectionEstablishedEvent()
		{
			this.StreamingPortal = SettingsHolder.get_Settings().get_ProfileUnblock().get_CurrentUnblockUrl();
			this.StreamingPortalName = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class StreamingServiceConnectionDroppedEvent : ConnectionDroppedEvent
	{
		[MixpanelName("Streaming Portal")]
		public string StreamingPortal
		{
			get;
			set;
		}

		[MixpanelName("Streaming Portal Name")]
		public string StreamingPortalName
		{
			get;
			set;
		}

		public StreamingServiceConnectionDroppedEvent()
		{
			this.StreamingPortal = SettingsHolder.get_Settings().get_ProfileUnblock().get_CurrentUnblockUrl();
			this.StreamingPortalName = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class StreamingServiceConnectionTerminatedEvent : ConnectionTerminatedEvent
	{
		[MixpanelName("Streaming Portal")]
		public string StreamingPortal
		{
			get;
			set;
		}

		[MixpanelName("Streaming Portal Name")]
		public string StreamingPortalName
		{
			get;
			set;
		}

		public StreamingServiceConnectionTerminatedEvent()
		{
			this.StreamingPortal = SettingsHolder.get_Settings().get_ProfileUnblock().get_CurrentUnblockUrl();
			this.StreamingPortalName = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class StreamingServiceConnectionReestablishedEvent : ConnectionReestablishedEvent
	{
		[MixpanelName("Streaming Portal")]
		public string StreamingPortal
		{
			get;
			set;
		}

		[MixpanelName("Streaming Portal Name")]
		public string StreamingPortalName
		{
			get;
			set;
		}

		public StreamingServiceConnectionReestablishedEvent()
		{
			this.StreamingPortal = SettingsHolder.get_Settings().get_ProfileUnblock().get_CurrentUnblockUrl();
			this.StreamingPortalName = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class StreamingServiceConnectionFailedEvent : ConnectionFailedEvent
	{
		[MixpanelName("Streaming Portal")]
		public string StreamingPortal
		{
			get;
			set;
		}

		[MixpanelName("Streaming Portal Name")]
		public string StreamingPortalName
		{
			get;
			set;
		}

		public StreamingServiceConnectionFailedEvent()
		{
			this.StreamingPortal = SettingsHolder.get_Settings().get_ProfileUnblock().get_CurrentUnblockUrl();
			this.StreamingPortalName = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class UnblockServiceConnectionAttemptAbortedEvent : ConnectionAttemptAbortedEvent
	{
		[MixpanelName("Unblocked Website")]
		public string UnblockedWebsite
		{
			get;
			set;
		}

		[MixpanelName("Unblocked Website Name")]
		public string UnblockedWebsiteName
		{
			get;
			set;
		}

		public UnblockServiceConnectionAttemptAbortedEvent()
		{
			this.UnblockedWebsite = SettingsHolder.get_Settings().get_ProfileUncensoring().get_CurrentUnblockUrl();
			this.UnblockedWebsiteName = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class UnblockServiceConnectionAttemptEvent : ConnectionAttemptEvent
	{
		[MixpanelName("Unblocked Website")]
		public string UnblockedWebsite
		{
			get;
			set;
		}

		[MixpanelName("Unblocked Website Name")]
		public string UnblockedWebsiteName
		{
			get;
			set;
		}

		public UnblockServiceConnectionAttemptEvent()
		{
			this.UnblockedWebsite = SettingsHolder.get_Settings().get_ProfileUncensoring().get_CurrentUnblockUrl();
			this.UnblockedWebsiteName = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class UnblockServiceConnectionDroppedEvent : ConnectionDroppedEvent
	{
		[MixpanelName("Unblocked Website")]
		public string UnblockedWebsite
		{
			get;
			set;
		}

		[MixpanelName("Unblocked Website Name")]
		public string UnblockedWebsiteName
		{
			get;
			set;
		}

		public UnblockServiceConnectionDroppedEvent()
		{
			this.UnblockedWebsite = SettingsHolder.get_Settings().get_ProfileUncensoring().get_CurrentUnblockUrl();
			this.UnblockedWebsiteName = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class UnblockServiceConnectionEstablishedEvent : ConnectionEstablishedEvent
	{
		[MixpanelName("Unblocked Website")]
		public string UnblockedWebsite
		{
			get;
			set;
		}

		[MixpanelName("Unblocked Website Name")]
		public string UnblockedWebsiteName
		{
			get;
			set;
		}

		public UnblockServiceConnectionEstablishedEvent()
		{
			this.UnblockedWebsite = SettingsHolder.get_Settings().get_ProfileUncensoring().get_CurrentUnblockUrl();
			this.UnblockedWebsiteName = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class UnblockServiceConnectionReestablishedEvent : ConnectionReestablishedEvent
	{
		[MixpanelName("Unblocked Website")]
		public string UnblockedWebsite
		{
			get;
			set;
		}

		[MixpanelName("Unblocked Website Name")]
		public string UnblockedWebsiteName
		{
			get;
			set;
		}

		public UnblockServiceConnectionReestablishedEvent()
		{
			this.UnblockedWebsite = SettingsHolder.get_Settings().get_ProfileUncensoring().get_CurrentUnblockUrl();
			this.UnblockedWebsiteName = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class UnblockServiceConnectionFailedEvent : ConnectionFailedEvent
	{
		[MixpanelName("Unblocked Website")]
		public string UnblockedWebsite
		{
			get;
			set;
		}

		[MixpanelName("Unblocked Website Name")]
		public string UnblockedWebsiteName
		{
			get;
			set;
		}

		public UnblockServiceConnectionFailedEvent()
		{
			this.UnblockedWebsite = SettingsHolder.get_Settings().get_ProfileUncensoring().get_CurrentUnblockUrl();
			this.UnblockedWebsiteName = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemName();
		}
	}
}

using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class UnblockServiceConnectionTerminatedEvent : ConnectionTerminatedEvent
	{
		[MixpanelName("Unblocked Website")]
		public string UnblockedWebsite
		{
			get;
			set;
		}

		[MixpanelName("Unblocked Website Name")]
		public string UnblockedWebsiteName
		{
			get;
			set;
		}

		public UnblockServiceConnectionTerminatedEvent()
		{
			this.UnblockedWebsite = SettingsHolder.get_Settings().get_ProfileUncensoring().get_CurrentUnblockUrl();
			this.UnblockedWebsiteName = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemName();
		}
	}
}

using CyberGhost.Components.Popups;
using Mixpanel;
using MobileConcepts.Extensions;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class WifiConnectionAttemptAbortedEvent : ConnectionAttemptAbortedEvent
	{
		[MixpanelName("Hotspot type")]
		public string HotSpotType
		{
			get;
			set;
		}

		[MixpanelName("Hotspot protection setting")]
		public string HotSpotProtectionSetting
		{
			get;
			set;
		}

		public WifiConnectionAttemptAbortedEvent()
		{
			this.HotSpotType = ObjectHolder.WifiType;
			this.HotSpotProtectionSetting = EumExtensions.GetDescription<WifiPopup.WifiConnectionResult>(ObjectHolder.WifiProtectionSetting);
		}
	}
}

using CyberGhost.Components.Popups;
using Mixpanel;
using MobileConcepts.Extensions;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class WifiConnectionAttemptEvent : ConnectionAttemptEvent
	{
		[MixpanelName("Hotspot type")]
		public string HotSpotType
		{
			get;
			set;
		}

		[MixpanelName("Hotspot protection setting")]
		public string HotSpotProtectionSetting
		{
			get;
			set;
		}

		public WifiConnectionAttemptEvent()
		{
			this.HotSpotType = ObjectHolder.WifiType;
			this.HotSpotProtectionSetting = EumExtensions.GetDescription<WifiPopup.WifiConnectionResult>(ObjectHolder.WifiProtectionSetting);
		}
	}
}

using CyberGhost.Components.Popups;
using Mixpanel;
using MobileConcepts.Extensions;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class WiFiConnectionDroppedEvent : ConnectionDroppedEvent
	{
		[MixpanelName("Hotspot type")]
		public string HotSpotType
		{
			get;
			set;
		}

		[MixpanelName("Hotspot protection setting")]
		public string HotSpotProtectionSetting
		{
			get;
			set;
		}

		public WiFiConnectionDroppedEvent()
		{
			this.HotSpotType = ObjectHolder.WifiType;
			this.HotSpotProtectionSetting = EumExtensions.GetDescription<WifiPopup.WifiConnectionResult>(ObjectHolder.WifiProtectionSetting);
		}
	}
}

using CyberGhost.Components.Popups;
using Mixpanel;
using MobileConcepts.Extensions;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class WiFiConnectionFailedEvent : ConnectionFailedEvent
	{
		[MixpanelName("Hotspot type")]
		public string HotSpotType
		{
			get;
			set;
		}

		[MixpanelName("Hotspot protection setting")]
		public string HotSpotProtectionSetting
		{
			get;
			set;
		}

		public WiFiConnectionFailedEvent()
		{
			this.HotSpotType = ObjectHolder.WifiType;
			this.HotSpotProtectionSetting = EumExtensions.GetDescription<WifiPopup.WifiConnectionResult>(ObjectHolder.WifiProtectionSetting);
		}
	}
}

using CyberGhost.Components.Popups;
using Mixpanel;
using MobileConcepts.Extensions;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class WiFiConnectionEstablishedEvent : ConnectionEstablishedEvent
	{
		[MixpanelName("Hotspot type")]
		public string HotSpotType
		{
			get;
			set;
		}

		[MixpanelName("Hotspot protection setting")]
		public string HotSpotProtectionSetting
		{
			get;
			set;
		}

		public WiFiConnectionEstablishedEvent()
		{
			this.HotSpotType = ObjectHolder.WifiType;
			this.HotSpotProtectionSetting = EumExtensions.GetDescription<WifiPopup.WifiConnectionResult>(ObjectHolder.WifiProtectionSetting);
		}
	}
}

using CyberGhost.Components.Popups;
using Mixpanel;
using MobileConcepts.Extensions;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class WiFiConnectionReestablishedEvent : ConnectionReestablishedEvent
	{
		[MixpanelName("Hotspot type")]
		public string HotSpotType
		{
			get;
			set;
		}

		[MixpanelName("Hotspot protection setting")]
		public string HotSpotProtectionSetting
		{
			get;
			set;
		}

		public WiFiConnectionReestablishedEvent()
		{
			this.HotSpotType = ObjectHolder.WifiType;
			this.HotSpotProtectionSetting = EumExtensions.GetDescription<WifiPopup.WifiConnectionResult>(ObjectHolder.WifiProtectionSetting);
		}
	}
}

using CyberGhost.Components.Popups;
using Mixpanel;
using MobileConcepts.Extensions;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class WiFiConnectionTerminatedEvent : ConnectionTerminatedEvent
	{
		[MixpanelName("Hotspot type")]
		public string HotSpotType
		{
			get;
			set;
		}

		[MixpanelName("Hotspot protection setting")]
		public string HotSpotProtectionSetting
		{
			get;
			set;
		}

		public WiFiConnectionTerminatedEvent()
		{
			this.HotSpotType = ObjectHolder.WifiType;
			this.HotSpotProtectionSetting = EumExtensions.GetDescription<WifiPopup.WifiConnectionResult>(ObjectHolder.WifiProtectionSetting);
		}
	}
}
