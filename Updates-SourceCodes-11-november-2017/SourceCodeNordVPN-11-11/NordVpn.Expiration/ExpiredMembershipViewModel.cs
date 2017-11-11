using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Application.Analytics;
using NordVpn.AppServices;
using System;
using System.Reflection;

namespace NordVpn.Expiration
{
	public class ExpiredMembershipViewModel : AppScreen
	{
		private readonly IBrowser _browser;

		private readonly UtmProvider _utmProvider;

		public ExpiredMembershipViewModel(IBrowser browser, UtmProvider utmProvider)
		{
			this._browser = browser;
			this._utmProvider = utmProvider;
		}

		[Analytics, Event("expired_account", "popup")]
		protected override void OnActivate()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(ExpiredMembershipViewModel.OnActivate()).MethodHandle, typeof(ExpiredMembershipViewModel).TypeHandle);
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

		protected override void OnInitialize()
		{
			base.OnInitialize();
			this.set_DisplayName("");
		}

		public void ExtendSubscription()
		{
			this.TryClose(null);
			this._browser.Open(this._utmProvider.GetPopupUtm());
		}
	}
}
