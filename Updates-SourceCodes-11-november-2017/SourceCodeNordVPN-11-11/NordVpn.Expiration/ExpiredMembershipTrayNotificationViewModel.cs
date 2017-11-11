using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Application.Analytics;
using NordVpn.AppServices;
using NordVpn.Expiration.Messages;
using System;
using System.Reflection;

namespace NordVpn.Expiration
{
	public class ExpiredMembershipTrayNotificationViewModel : AppScreen
	{
		private readonly EventFacade _eventFacade;

		private readonly IBrowser _browser;

		private readonly UtmProvider _utmProvider;

		public ExpiredMembershipTrayNotificationViewModel(EventFacade eventFacade, IBrowser browser, UtmProvider utmProvider)
		{
			this._eventFacade = eventFacade;
			this._browser = browser;
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

		[Analytics, Event("expired_account", "tray")]
		protected override void OnActivate()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(ExpiredMembershipTrayNotificationViewModel.OnActivate()).MethodHandle, typeof(ExpiredMembershipTrayNotificationViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			object[] args = new object[0];
			analyticsAttribute.Init(this, methodFromHandle, args);
			analyticsAttribute.OnEntry();
			try
			{
				base.OnActivate();
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}
	}
}
