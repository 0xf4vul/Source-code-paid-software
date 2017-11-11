using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class UnblockServiceConnectionTerminatedEvent : ConnectionTerminatedEvent
	{
		[MixpanelName("Unblocked Website")]
		public string UnblockedWebsite
		{
			get;
			set;
		}

		[MixpanelName("Unblocked Website Name")]
		public string UnblockedWebsiteName
		{
			get;
			set;
		}

		public UnblockServiceConnectionTerminatedEvent()
		{
			this.UnblockedWebsite = SettingsHolder.get_Settings().get_ProfileUncensoring().get_CurrentUnblockUrl();
			this.UnblockedWebsiteName = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemName();
		}
	}
}
