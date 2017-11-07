using Caliburn.Micro;
using GalaSoft.MvvmLight.Command;
using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Auth;
using NordVpn.Auth.Messages;
using NordVpn.Core.Abstract.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace NordVpn.Settings.ViewModels
{
	public class SettingsTabViewModel : Conductor<Screen>.Collection.OneActive
	{
		private readonly ILoginHandler _loginHandler;

		private readonly IVpnConnectionManager _vpnConnectionManager;

		private readonly IMessageBoxService _messageBoxService;

		private readonly EventFacade _eventFacade;

		private readonly IBrowser _browser;

		public ICommand Logout
		{
			[CompilerGenerated]
			get
			{
				return this.<Logout>k__BackingField;
			}
		}

		public ICommand HelpCenter
		{
			[CompilerGenerated]
			get
			{
				return this.<HelpCenter>k__BackingField;
			}
		}

		public SettingsTabViewModel(IVpnConnectionManager vpnConnectionManager, SettingsContainerViewModel settingsContainerViewModel, MyAccountViewModel myAccountViewModel, LogViewModel logViewModel, IMessageBoxService messageBoxService, EventFacade eventFacade, ILoginHandler loginHandler, IBrowser browser)
		{
			this._vpnConnectionManager = vpnConnectionManager;
			this._loginHandler = loginHandler;
			this._messageBoxService = messageBoxService;
			this._eventFacade = eventFacade;
			this._browser = browser;
			this.<Logout>k__BackingField = new RelayCommand(new Action(this.LogoutCommand));
			this.<HelpCenter>k__BackingField = new RelayCommand(new Action(this.HelpCenterCommand));
			base.get_Items().AddRange(new Screen[]
			{
				settingsContainerViewModel,
				myAccountViewModel,
				logViewModel
			});
		}

		private void HelpCenterCommand()
		{
			this._browser.Open("https://support.nordvpn.com/hc/en-us");
		}

		[AsyncStateMachine(typeof(SettingsTabViewModel.<LogoutCommand>d__13))]
		private void LogoutCommand()
		{
			SettingsTabViewModel.<LogoutCommand>d__13 <LogoutCommand>d__;
			<LogoutCommand>d__.<>4__this = this;
			<LogoutCommand>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<LogoutCommand>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <LogoutCommand>d__.<>t__builder;
			<>t__builder.Start<SettingsTabViewModel.<LogoutCommand>d__13>(ref <LogoutCommand>d__);
		}

		private void NavigateToAuth()
		{
			this._loginHandler.Logout();
			this._eventFacade.Publish(new ShowLoginScreenMessage());
		}
	}
}
