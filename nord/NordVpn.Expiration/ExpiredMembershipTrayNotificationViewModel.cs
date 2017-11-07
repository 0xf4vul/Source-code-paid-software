using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.AppServices;
using NordVpn.Core.Abstract;
using NordVpn.Expiration.Messages;
using System;

namespace NordVpn.Expiration
{
	public class ExpiredMembershipTrayNotificationViewModel : AppScreen
	{
		private readonly EventFacade _eventFacade;

		private readonly IBrowser _browser;

		private readonly IAnalyticsManager _analyticsManager;

		private readonly UtmProvider _utmProvider;

		public ExpiredMembershipTrayNotificationViewModel(EventFacade eventFacade, IBrowser browser, IAnalyticsManager analyticsManager, UtmProvider utmProvider)
		{
			this._eventFacade = eventFacade;
			this._browser = browser;
			this._analyticsManager = analyticsManager;
			this._utmProvider = utmProvider;
		}

		public void ExtendSubscription()
		{
			this._browser.Open(this._utmProvider.GetPushNotificationUtm());
		}

		public void Close()
		{
			this._eventFacade.Publish(new TrayNotificationCloseRequestedMessage());
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this._analyticsManager.TriggerEvent("expired_account", "tray");
		}
	}
}
