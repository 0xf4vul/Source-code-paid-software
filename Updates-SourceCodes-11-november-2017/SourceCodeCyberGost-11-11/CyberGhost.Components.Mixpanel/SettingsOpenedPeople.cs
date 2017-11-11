using Mixpanel;
using System;
using System.Collections.Generic;

namespace CyberGhost.Components.Mixpanel
{
	public class SettingsOpenedPeople : BaseMixpanelPeople
	{
		public override LinkedList<MixpanelMessage> GetMessages(IMixpanelClient mixpanelClient)
		{
			LinkedList<MixpanelMessage> expr_07 = base.GetMessages(mixpanelClient);
			expr_07.AddLast(mixpanelClient.GetPeopleAddMessage(base.DistinctId, new Dictionary<string, object>
			{
				{
					"Settings opened",
					1
				}
			}));
			return expr_07;
		}
	}
}
