using NordVpn.Core.Logic.Users;
using System;

namespace NordVpn.AppServices
{
	public class UtmProvider
	{
		private const string UtmUrl = "https://ucp.nordme.org/login/";

		private readonly UserContext _userContext;

		public UtmProvider(UserContext userContext)
		{
			this._userContext = userContext;
		}

		public string GetPushNotificationUtm()
		{
			return string.Format("https://ucp.nordme.org/login/", new object[0]);
		}

		public string GetPopupUtm()
		{
			return string.Format("https://ucp.nordme.org/login/", new object[0]);
		}

		public string GetMyAccountActivationUtm()
		{
			return string.Format("https://ucp.nordme.org/login/", new object[0]);
		}

		public string GetMapActivationUtm()
		{
			return string.Format("https://ucp.nordme.org/login/", new object[0]);
		}
	}
}
