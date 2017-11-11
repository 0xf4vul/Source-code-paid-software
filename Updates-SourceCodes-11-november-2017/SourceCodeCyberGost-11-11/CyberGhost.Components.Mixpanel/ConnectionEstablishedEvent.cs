using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionEstablishedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Features enabled")]
		public string[] FeaturesEnabled
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

		[MixpanelName("Automatic retries")]
		public int AutomaticRetries
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

		[MixpanelName("Tab used")]
		public string TabUsed
		{
			get;
			set;
		}

		public ConnectionEstablishedEvent()
		{
			SettingsHolder expr_0B = SettingsHolder.get_Settings();
			int totalConnectionsOk = expr_0B.get_TotalConnectionsOk();
			expr_0B.set_TotalConnectionsOk(totalConnectionsOk + 1);
			base.SuccesfullConnections = SettingsHolder.get_Settings().get_TotalConnectionsOk();
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
			return "Connection established";
		}
	}
}
