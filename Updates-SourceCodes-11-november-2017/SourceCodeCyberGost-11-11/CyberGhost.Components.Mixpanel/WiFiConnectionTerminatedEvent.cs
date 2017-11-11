using CyberGhost.Components.Popups;
using Mixpanel;
using MobileConcepts.Extensions;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class WiFiConnectionTerminatedEvent : ConnectionTerminatedEvent
	{
		[MixpanelName("Hotspot type")]
		public string HotSpotType
		{
			get;
			set;
		}

		[MixpanelName("Hotspot protection setting")]
		public string HotSpotProtectionSetting
		{
			get;
			set;
		}

		public WiFiConnectionTerminatedEvent()
		{
			this.HotSpotType = ObjectHolder.WifiType;
			this.HotSpotProtectionSetting = EumExtensions.GetDescription<WifiPopup.WifiConnectionResult>(ObjectHolder.WifiProtectionSetting);
		}
	}
}
