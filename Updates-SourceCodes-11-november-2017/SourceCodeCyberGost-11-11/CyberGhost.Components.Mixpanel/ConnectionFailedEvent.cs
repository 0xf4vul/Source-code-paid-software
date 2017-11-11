using CyberGhost.Settings;
using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConnectionFailedEvent : BaseMixpanelEvent
	{
		[MixpanelName("Reason")]
		public string Reason
		{
			get;
			set;
		}

		[MixpanelName("Error")]
		public string Error
		{
			get;
			set;
		}

		[MixpanelName("Error Data")]
		public string ErrorData
		{
			get;
			set;
		}

		[MixpanelName("Advanced Error Data")]
		public string AdvancedErrorData
		{
			get;
			set;
		}

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

		[MixpanelName("Automatic retries")]
		public int AutomaticRetries
		{
			get;
			set;
		}

		[MixpanelName("Was connected")]
		public bool WasConnected
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

		public ConnectionFailedEvent()
		{
			SettingsHolder expr_0B = SettingsHolder.get_Settings();
			int totalConnectionFailed = expr_0B.get_TotalConnectionFailed();
			expr_0B.set_TotalConnectionFailed(totalConnectionFailed + 1);
			base.UnsuccesfullConnections = SettingsHolder.get_Settings().get_TotalConnectionFailed();
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
			return "Connection failed";
		}
	}
}
