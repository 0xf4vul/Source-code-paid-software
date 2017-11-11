using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ApplicationClosedEvent : BaseMixpanelEvent
	{
		public override string GetEventName()
		{
			return "Application closed";
		}
	}
}
