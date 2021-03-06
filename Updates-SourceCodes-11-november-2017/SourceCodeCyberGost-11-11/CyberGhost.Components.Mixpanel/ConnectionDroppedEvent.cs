using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionDroppedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Features enabled")]
		public string[] FeaturesEnabled
		{
			get;
			set;
		}

		[MixpanelName("Profile")]
		public string Profile
		{
			get;
			set;
		}

		[MixpanelName("Connection source")]
		public string ConnectionSource
		{
			get;
			set;
		}

		[MixpanelName("Connection type")]
		public string ConnectionType
		{
			get;
			set;
		}

		[MixpanelName("Tab used")]
		public string TabUsed
		{
			get;
			set;
		}

		public ConnectionDroppedEvent()
		{
			if (ObjectHolder.CurrentProfile != null)
			{
				this.FeaturesEnabled = ObjectHolder.CurrentProfile.GetEnabledFeatures();
				this.Profile = ObjectHolder.CurrentProfile.GetBaseName();
			}
			this.TabUsed = ObjectHolder.CurrentProfileTab;
			this.ConnectionType = ObjectHolder.ConnectionType;
			this.ConnectionSource = ObjectHolder.ConnectionSource;
		}

		public override string GetEventName()
		{
			return "Connection dropped";
		}
	}
}
