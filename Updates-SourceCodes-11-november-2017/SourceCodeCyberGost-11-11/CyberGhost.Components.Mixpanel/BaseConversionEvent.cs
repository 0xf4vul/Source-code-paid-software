using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class BaseConversionEvent : BaseMixpanelEvent
	{
		[MixpanelName("Channel")]
		public string Channel
		{
			get;
			set;
		}

		public BaseConversionEvent()
		{
			this.Channel = "client";
		}
	}
}
