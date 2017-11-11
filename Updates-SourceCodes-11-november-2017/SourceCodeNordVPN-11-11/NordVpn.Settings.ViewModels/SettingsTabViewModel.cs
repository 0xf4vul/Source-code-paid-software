using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Auth;
using NordVpn.Auth.Messages;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Settings.ViewModels
{
	public class SettingsTabViewModel : Conductor<Screen>.Collection.OneActive
	{
		private readonly ILoginHandler _loginHandler;

		private readonly VpnConnector _vpnConnector;

		private readonly IMessageBoxService _messageBoxService;

		private readonly EventFacade _eventFacade;

		private readonly IBrowser _browser;

		public SettingsTabViewModel(VpnConnector vpnConnector, SettingsContainerViewModel settingsContainerViewModel, MyAccountViewModel myAccountViewModel, IMessageBoxService messageBoxService, EventFacade eventFacade, ILoginHandler loginHandler, IBrowser browser)
		{
			this._vpnConnector = vpnConnector;
			this._loginHandler = loginHandler;
			this._messageBoxService = messageBoxService;
			this._eventFacade = eventFacade;
			this._browser = browser;
			base.get_Items().AddRange(new Screen[]
			{
				settingsContainerViewModel,
				myAccountViewModel
			});
		}

		[AsyncStateMachine(typeof(SettingsTabViewModel.<Logout>d__6))]
		public void Logout()
		{
			SettingsTabViewModel.<Logout>d__6 <Logout>d__;
			<Logout>d__.<>4__this = this;
			<Logout>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Logout>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Logout>d__.<>t__builder;
			<>t__builder.Start<SettingsTabViewModel.<Logout>d__6>(ref <Logout>d__);
		}

		public void OpenHelpCenter()
		{
			this._browser.Open("https://support.nordme.org/hc/en-us");
		}

		private void ShowStartScreen()
		{
			this._loginHandler.Logout();
			this._eventFacade.Publish(new ShowLoginScreenMessage());
		}
	}
}
