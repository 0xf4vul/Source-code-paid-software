using NordVpn.Core.Abstract;
using System;

namespace NordVpn.AppServices
{
	public class UtmProvider
	{
		private const string BaseUrl = "https://nordvpn.com/transactions/?action=complete_payment&show_other_packs=1&user_id={0}&utm_source=win_app&utm_medium=app";

		private readonly IUserContext _userContext;

		public UtmProvider(IUserContext userContext)
		{
			this._userContext = userContext;
		}

		public string GetPushNotificationUtm()
		{
			return string.Format("https://nordvpn.com/transactions/?action=complete_payment&show_other_packs=1&user_id={0}&utm_source=win_app&utm_medium=app&utm_campaign=push_notification&utm_term=expired_extend", this._userContext.get_CurrentUser().get_Id());
		}

		public string GetPopupUtm()
		{
			return string.Format("https://nordvpn.com/transactions/?action=complete_payment&show_other_packs=1&user_id={0}&utm_source=win_app&utm_medium=app&utm_campaign=popup&utm_term=expired_inapp", this._userContext.get_CurrentUser().get_Id());
		}

		public string GetMyAccountActivationUtm()
		{
			return string.Format("https://nordvpn.com/transactions/?action=complete_payment&show_other_packs=1&user_id={0}&utm_source=win_app&utm_medium=app&utm_campaign=profile&utm_term=expired_activate", this._userContext.get_CurrentUser().get_Id());
		}

		public string GetMapActivationUtm()
		{
			return string.Format("https://nordvpn.com/transactions/?action=complete_payment&show_other_packs=1&user_id={0}&utm_source=win_app&utm_medium=app&utm_campaign=popup&utm_term=expired_inapp", this._userContext.get_CurrentUser().get_Id());
		}
	}
}
