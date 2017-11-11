using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class StreamingServiceConnectionAttemptAbortedEvent : ConnectionAttemptAbortedEvent
	{
		[MixpanelName("Streaming Portal")]
		public string StreamingPortal
		{
			get;
			set;
		}

		[MixpanelName("Streaming Portal Name")]
		public string StreamingPortalName
		{
			get;
			set;
		}

		public StreamingServiceConnectionAttemptAbortedEvent()
		{
			this.StreamingPortal = SettingsHolder.get_Settings().get_ProfileUnblock().get_CurrentUnblockUrl();
			this.StreamingPortalName = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName();
		}
	}
}
