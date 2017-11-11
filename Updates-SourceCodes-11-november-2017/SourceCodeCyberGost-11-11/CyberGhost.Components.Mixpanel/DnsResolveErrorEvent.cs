using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class DnsResolveErrorEvent : BaseMixpanelEvent
	{
		[MixpanelName("Error type")]
		public string ErrorType
		{
			get;
			set;
		}

		[MixpanelName("DNS Server")]
		public string DnsServer
		{
			get;
			set;
		}

		[MixpanelName("Exception")]
		public string Exception
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "DNS resolve error";
		}
	}
}
