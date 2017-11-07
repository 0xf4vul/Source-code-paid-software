using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.AppServices;
using System;

namespace NordVpn.Map
{
	public class InactiveAccountViewModel : AppScreen
	{
		private readonly IBrowser _browser;

		private readonly UtmProvider _utmProvider;

		public InactiveAccountViewModel(IBrowser browser, UtmProvider utmProvider)
		{
			this._browser = browser;
			this._utmProvider = utmProvider;
		}

		public void Activate()
		{
			this._browser.Open(this._utmProvider.GetMapActivationUtm());
		}
	}
}
