using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Auth.Messages;
using System;

namespace NordVpn.Auth.ViewModels
{
	public sealed class RegistrationViewModel : Conductor<Screen>.Collection.OneActive, IHandle, IHandle<ShowRegistrationFailureScreenMessage>, IHandle<ShowRegistrationSuccessScreenMessage>, IHandle<ShowRegistrationScreenOrderPageMessage>
	{
		private readonly EventFacade _eventFacade;

		private readonly RegistrationSuccessViewModel _successViewModel;

		private readonly RegistrationFailureViewModel _failureViewModel;

		private readonly OrderPageViewModel _orderPageViewModel;

		public RegistrationViewModel(RegistrationSuccessViewModel successViewModel, RegistrationFailureViewModel failureViewModel, OrderPageViewModel orderPageViewModel, EventFacade eventFacade)
		{
			this._successViewModel = successViewModel;
			this._failureViewModel = failureViewModel;
			this._orderPageViewModel = orderPageViewModel;
			this._eventFacade = eventFacade;
			base.get_Items().Add(this._successViewModel);
			base.get_Items().Add(this._failureViewModel);
			base.get_Items().Add(this._orderPageViewModel);
		}

		public void Handle(ShowRegistrationSuccessScreenMessage message)
		{
			this.ActivateItem(this._successViewModel);
		}

		public void Handle(ShowRegistrationFailureScreenMessage message)
		{
			this.ActivateItem(this._failureViewModel);
		}

		public void Handle(ShowRegistrationScreenOrderPageMessage message)
		{
			this.ActivateItem(this._orderPageViewModel);
		}

		public void ShowLoginScreen()
		{
			this._eventFacade.Publish(new ShowLoginScreenMessage());
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this.ActivateItem(this._orderPageViewModel);
		}
	}
}
