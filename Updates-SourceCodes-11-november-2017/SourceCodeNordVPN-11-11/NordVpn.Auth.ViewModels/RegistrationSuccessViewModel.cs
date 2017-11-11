using NordVpn.Application;
using NordVpn.Auth.Messages;
using System;

namespace NordVpn.Auth.ViewModels
{
	public sealed class RegistrationSuccessViewModel : AppScreen
	{
		private readonly EventFacade _eventFacade;

		public RegistrationSuccessViewModel(EventFacade eventFacade)
		{
			this._eventFacade = eventFacade;
		}

		public void ShowLoginScreen()
		{
			this._eventFacade.Publish(new ShowLoginScreenMessage());
		}
	}
}
