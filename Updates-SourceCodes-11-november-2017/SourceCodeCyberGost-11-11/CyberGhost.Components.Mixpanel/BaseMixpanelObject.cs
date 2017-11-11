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
