using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionAttemptEvent : BaseMixpanelEvent
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

		public ConnectionAttemptEvent()
		{
			SettingsHolder expr_0B = SettingsHolder.get_Settings();
			int totalConnectionAttempts = expr_0B.get_TotalConnectionAttempts();
			expr_0B.set_TotalConnectionAttempts(totalConnectionAttempts + 1);
			base.ConnectionAttempts = SettingsHolder.get_Settings().get_TotalConnectionAttempts();
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
			return "Connection attempt";
		}
	}
}
