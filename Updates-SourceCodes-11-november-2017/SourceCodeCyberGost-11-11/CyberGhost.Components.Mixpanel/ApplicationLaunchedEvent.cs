using CyberGhost.Settings;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ApplicationLaunchedEvent : BaseMixpanelEvent
	{
		public ApplicationLaunchedEvent()
		{
			base.ApplicationLaunches = SettingsHolder.get_Settings().get_TotalApplicationLaunches();
		}

		public override string GetEventName()
		{
			return "Application launched";
		}
	}
}
