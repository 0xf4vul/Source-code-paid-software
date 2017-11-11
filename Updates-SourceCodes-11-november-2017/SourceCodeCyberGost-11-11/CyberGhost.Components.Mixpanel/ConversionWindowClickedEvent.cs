using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConversionWindowClickedEvent : BaseConversionEvent
	{
		[MixpanelName("Conversion point")]
		public string ConversionPoint
		{
			get;
			set;
		}

		[MixpanelName("Conversion zone")]
		public string ConversionZone
		{
			get;
			set;
		}

		public override string GetEventName()
		{
			return "Conversion window clicked";
		}
	}
}
