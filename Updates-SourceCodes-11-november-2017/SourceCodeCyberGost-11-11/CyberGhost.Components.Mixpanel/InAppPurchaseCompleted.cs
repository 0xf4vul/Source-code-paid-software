using System;

namespace CyberGhost.Components.Mixpanel
{
	public class InAppPurchaseCompleted : BaseConversionEvent
	{
		public override string GetEventName()
		{
			return "Conversion";
		}
	}
}
