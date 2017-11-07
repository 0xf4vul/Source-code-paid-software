using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.AppServices;
using NordVpn.Core.Abstract;
using System;

namespace NordVpn.Expiration
{
	public class ExpiredMembershipViewModel : AppScreen
	{
		private readonly IBrowser _browser;

		private readonly UtmProvider _utmProvider;

		private readonly IAnalyticsManager _analyticsManager;

		public ExpiredMembershipViewModel(IBrowser browser, UtmProvider utmProvider, IAnalyticsManager analyticsManager)
		{
			this._browser = browser;
			this._utmProvider = utmProvider;
			this._analyticsManager = analyticsManager;
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this._analyticsManager.TriggerEvent("expired_account", "popup");
		}

		public void ExtendSubscription()
		{
			this.TryClose(null);
			this._browser.Open(this._utmProvider.GetPopupUtm());
		}
	}
}
