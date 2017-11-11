using Mixpanel;
using System;

namespace CyberGhost.Components.Mixpanel
{
	public class ConversionWindowEvent : BaseConversionEvent
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

		public ConversionWindowEvent()
		{
			base.PeopleType = typeof(ConversionWindowPeople);
		}

		public override string GetEventName()
		{
			return "Conversion window displayed";
		}
	}
}
