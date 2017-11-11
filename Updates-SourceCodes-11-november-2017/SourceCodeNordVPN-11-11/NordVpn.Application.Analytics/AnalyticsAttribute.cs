using NordVpn.Core.Abstract;
using NordVpn.Shared;
using System;
using System.Reflection;

namespace NordVpn.Application.Analytics
{
	[AttributeUsage(AttributeTargets.Module | AttributeTargets.Method)]
	public sealed class AnalyticsAttribute : Attribute, IMethodDecorator
	{
		private bool _isVisit;

		private string _eventCategory;

		private string _eventAction;

		[ThreadStatic]
		private static IAnalyticsManager _analyticsManager;

		public static void SetAnalyticsManager(IAnalyticsManager analyticsManager)
		{
			AnalyticsAttribute._analyticsManager = analyticsManager;
		}

		public void Init(object instance, MethodBase method, object[] args)
		{
			EventAttribute customAttribute = method.GetCustomAttribute<EventAttribute>();
			if (customAttribute == null)
			{
				return;
			}
			this._isVisit = customAttribute.IsView;
			this._eventCategory = customAttribute.Category;
			this._eventAction = (customAttribute.Action.IsNullOrEmpty() ? args.FirstOrDefaultOfType<string>() : customAttribute.Action);
		}

		public void OnEntry()
		{
			if (AnalyticsAttribute._analyticsManager == null)
			{
				return;
			}
			if (!string.IsNullOrEmpty(this._eventCategory) && !string.IsNullOrEmpty(this._eventAction))
			{
				AnalyticsAttribute._analyticsManager.TriggerEvent(this._eventCategory, this._eventAction);
			}
			if (this._isVisit)
			{
				AnalyticsAttribute._analyticsManager.TriggerVisit();
			}
		}

		public void OnExit()
		{
		}

		public void OnException(Exception exception)
		{
		}
	}
}
