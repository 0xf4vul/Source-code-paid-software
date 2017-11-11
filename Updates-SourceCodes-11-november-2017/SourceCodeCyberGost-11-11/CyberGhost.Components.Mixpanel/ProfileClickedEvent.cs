using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ProfileClickedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Source")]
		public string Source
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "Profile clicked";
		}
	}
}
