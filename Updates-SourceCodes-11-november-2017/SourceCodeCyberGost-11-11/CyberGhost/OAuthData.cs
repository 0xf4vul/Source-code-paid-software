using CyberGhost.RESTCommunicator.OAuth;
using CyberGhost.Settings;
using System;

namespace CyberGhost
{
	public class OAuthData
	{
		internal const string OAuthKey = "45d3fdd1635601b1c28a3d2f1d78d83e1c7edbb4";

		internal const string OAuthSecret = "b97627f1c114d6b5eb567aa70b956001da3e5eea";

		internal static readonly string LoginServer = string.IsNullOrEmpty(SettingsHolder.get_Settings().get_LoginServer()) ? "rest.cyberghostvpn.com" : SettingsHolder.get_Settings().get_LoginServer();

		internal static readonly Uri OAuthBaseUri = new Uri(new Uri("https://" + OAuthData.LoginServer), "/cg/");

		internal static readonly Uri OAuthPurchaseBaseUri = new Uri(new Uri("https://payment.cyberghostvpn.com"), "/cg/");

		public static OAuthRequestInfos GetOAuthRequestInfos()
		{
			return new OAuthRequestInfos
			{
				ConsumerKey = "45d3fdd1635601b1c28a3d2f1d78d83e1c7edbb4",
				ConsumerSecret = "b97627f1c114d6b5eb567aa70b956001da3e5eea",
				BaseUri = OAuthData.OAuthBaseUri,
				PurchaseUri = (OAuthData.LoginServer.Contains("dev-api") ? OAuthData.OAuthBaseUri : OAuthData.OAuthPurchaseBaseUri)
			};
		}
	}
}
