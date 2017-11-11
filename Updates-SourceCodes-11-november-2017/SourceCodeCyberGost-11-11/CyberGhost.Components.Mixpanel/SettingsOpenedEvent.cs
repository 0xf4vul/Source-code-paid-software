using System;

namespace CyberGhost.Components.Mixpanel
{
	public class SettingsOpenedEvent : BaseMixpanelEvent
	{
		public SettingsOpenedEvent()
		{
			base.PeopleType = typeof(SettingsOpenedPeople);
		}

		public override string GetEventName()
		{
			return "Settings opened";
		}
	}
}
