using NordVpn.Application;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.RestrictedLocation.ViewModels
{
	public class RestrictedLocationFinishedViewModel : AppScreen
	{
		private readonly EventFacade _eventFacade;

		public RestrictedLocationFinishedViewModel(EventFacade eventFacade)
		{
			this._eventFacade = eventFacade;
		}

		[AsyncStateMachine(typeof(RestrictedLocationFinishedViewModel.<OnActivate>d__2))]
		protected override void OnActivate()
		{
			RestrictedLocationFinishedViewModel.<OnActivate>d__2 <OnActivate>d__;
			<OnActivate>d__.<>4__this = this;
			<OnActivate>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnActivate>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnActivate>d__.<>t__builder;
			<>t__builder.Start<RestrictedLocationFinishedViewModel.<OnActivate>d__2>(ref <OnActivate>d__);
		}
	}
}
