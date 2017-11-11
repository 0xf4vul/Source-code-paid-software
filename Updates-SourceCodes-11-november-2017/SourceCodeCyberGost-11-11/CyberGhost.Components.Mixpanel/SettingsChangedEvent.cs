using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class SettingsChangedEvent : BaseMixpanelEvent
	{
		[MixpanelName("settings tab")]
		public string SettingsTab
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "Settings Changed";
		}
	}
}
