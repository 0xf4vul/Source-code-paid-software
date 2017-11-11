using Caliburn.Micro;
using NordVpn.Application.Analytics;
using NordVpn.RestrictedLocation.Messages;
using System;
using System.Reflection;

namespace NordVpn.RestrictedLocation.ViewModels
{
	public class RestrictedLocationContainerViewModel : Conductor<Screen>.Collection.OneActive, IHandle, IHandle<RestrictedLocationShowFinishedMessage>
	{
		private readonly RestrictedLocationQuestionViewModel _questionViewModel;

		private readonly RestrictedLocationFinishedViewModel _finishedViewModel;

		public RestrictedLocationContainerViewModel(RestrictedLocationQuestionViewModel questionViewModel, RestrictedLocationFinishedViewModel finishedViewModel)
		{
			this._questionViewModel = questionViewModel;
			this._finishedViewModel = finishedViewModel;
			base.get_Items().Add(questionViewModel);
			base.get_Items().Add(finishedViewModel);
		}

		[Analytics, Event("restricted_location_question", "shown")]
		protected override void OnActivate()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(RestrictedLocationContainerViewModel.OnActivate()).MethodHandle, typeof(RestrictedLocationContainerViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			object[] args = new object[0];
			analyticsAttribute.Init(this, methodFromHandle, args);
			analyticsAttribute.OnEntry();
			try
			{
				base.OnActivate();
				this.ActivateItem(this._questionViewModel);
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		public void Handle(RestrictedLocationShowFinishedMessage message)
		{
			this.ActivateItem(this._finishedViewModel);
		}
	}
}
