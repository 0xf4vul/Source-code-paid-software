using NordVpn.Application;
using NordVpn.Application.Analytics;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models.Settings;
using NordVpn.RestrictedLocation.Messages;
using System;
using System.Reflection;
using System.Runtime.CompilerServices;

namespace NordVpn.RestrictedLocation.ViewModels
{
	public class RestrictedLocationQuestionViewModel : AppScreen
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly RestrictedLocationQuestionViewModel.<>c <>9 = new RestrictedLocationQuestionViewModel.<>c();

			public static Action<UserSettings> <>9__3_0;

			internal void <EnableObfuscation>b__3_0(UserSettings s)
			{
				s.SetObfuscationProtocol(true);
			}
		}

		private readonly EventFacade _eventFacade;

		private readonly IPersistedSettings _settings;

		public RestrictedLocationQuestionViewModel(EventFacade eventFacade, IPersistedSettings settings)
		{
			this._eventFacade = eventFacade;
			this._settings = settings;
		}

		[Analytics, Event("restricted_location_question", "yes_click")]
		public void EnableObfuscation()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(RestrictedLocationQuestionViewModel.EnableObfuscation()).MethodHandle, typeof(RestrictedLocationQuestionViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			object[] args = new object[0];
			analyticsAttribute.Init(this, methodFromHandle, args);
			analyticsAttribute.OnEntry();
			try
			{
				IPersistedSettings arg_75_0 = this._settings;
				Action<UserSettings> arg_75_1;
				if ((arg_75_1 = RestrictedLocationQuestionViewModel.<>c.<>9__3_0) == null)
				{
					arg_75_1 = (RestrictedLocationQuestionViewModel.<>c.<>9__3_0 = new Action<UserSettings>(RestrictedLocationQuestionViewModel.<>c.<>9.<EnableObfuscation>b__3_0));
				}
				PersistedSettingsExtension.Save<UserSettings>(arg_75_0, arg_75_1);
				this._eventFacade.Publish(new RestrictedLocationShowFinishedMessage());
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		[Analytics, Event("restricted_location_question", "no_click")]
		public void Cancel()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(RestrictedLocationQuestionViewModel.Cancel()).MethodHandle, typeof(RestrictedLocationQuestionViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			object[] args = new object[0];
			analyticsAttribute.Init(this, methodFromHandle, args);
			analyticsAttribute.OnEntry();
			try
			{
				this.SendCloseMessage();
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		[Analytics, Event("restricted_location_question", "close_click")]
		public void Close()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(RestrictedLocationQuestionViewModel.Close()).MethodHandle, typeof(RestrictedLocationQuestionViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			object[] args = new object[0];
			analyticsAttribute.Init(this, methodFromHandle, args);
			analyticsAttribute.OnEntry();
			try
			{
				this.SendCloseMessage();
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		private void SendCloseMessage()
		{
			this._eventFacade.Publish(new RestrictedLocationStripCloseMessage());
		}
	}
}
