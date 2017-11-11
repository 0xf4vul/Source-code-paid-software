using System;

namespace CyberGhost.Components.Mixpanel
{
	public class GiveFeedbackClickedEvent : BaseMixpanelEvent
	{
		public override string GetEventName()
		{
			return "Feedback clicked";
		}
	}
}
