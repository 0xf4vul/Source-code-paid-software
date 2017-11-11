using CyberGhost.Components.Mixpanel;
using System;

namespace CyberGhost.Helpers
{
	public static class TrackingHelper
	{
		public static void SendProfileClickedEvent(string profileName, string source)
		{
			ObjectHolder.ConnectionSource = source;
			new ProfileClickedEvent
			{
				Profile = profileName,
				Source = source
			}.FireEvent();
		}
	}
}
