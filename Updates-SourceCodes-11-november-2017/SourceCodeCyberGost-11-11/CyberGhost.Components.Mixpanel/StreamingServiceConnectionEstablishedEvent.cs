using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class StreamingServiceConnectionEstablishedEvent : ConnectionEstablishedEvent
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

		public StreamingServiceConnectionEstablishedEvent()
		{
			this.StreamingPortal = SettingsHolder.get_Settings().get_ProfileUnblock().get_CurrentUnblockUrl();
			this.StreamingPortalName = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName();
		}
	}
}
