using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Auth.Messages;
using System;

namespace NordVpn.Auth.ViewModels
{
	public sealed class RegistrationFailureViewModel : AppScreen
	{
		private readonly IBrowser _browser;

		private readonly EventFacade _eventFacade;

		private readonly string _orderPageUrl;

		private readonly string _supportPageUrl;

		public RegistrationFailureViewModel(IBrowser browser, EventFacade eventFacade, string orderPageUrl, string supportPageUrl)
		{
			this._browser = browser;
			this._eventFacade = eventFacade;
			this._orderPageUrl = orderPageUrl;
			this._supportPageUrl = supportPageUrl;
		}

		public void OpenOrderPage()
		{
			this._eventFacade.Publish(new ShowRegistrationScreenOrderPageMessage());
		}

		public void OpenOrderPageInBrowser()
		{
			this._browser.Open(this._orderPageUrl);
		}

		public void OpenSupportPage()
		{
			this._browser.Open(this._supportPageUrl);
		}
	}
}
