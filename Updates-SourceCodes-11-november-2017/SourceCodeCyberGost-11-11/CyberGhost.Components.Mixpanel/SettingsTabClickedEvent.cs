using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class SettingsTabClickedEvent : BaseMixpanelEvent
	{
		[MixpanelName("settings tab")]
		public string SettingsTab
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "Settings Tab Clicked";
		}
	}
}
