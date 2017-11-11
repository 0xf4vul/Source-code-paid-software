using CyberGhost.Settings;
using Mixpanel;
using System;
using System.Collections.Generic;

namespace CyberGhost.Components.Mixpanel
{
	public class BaseMixpanelPeople : BaseMixpanelObject
	{
		public virtual LinkedList<MixpanelMessage> GetMessages(IMixpanelClient mixpanelClient)
		{
			LinkedList<MixpanelMessage> linkedList = new LinkedList<MixpanelMessage>();
			linkedList.AddLast(mixpanelClient.GetPeopleSetMessage(this));
			linkedList.AddLast(mixpanelClient.GetPeopleSetOnceMessage(base.DistinctId, new Dictionary<string, object>
			{
				{
					"First seen",
					DateTime.Now
				}
			}));
			Dictionary<string, string> settingsAsDictionary = SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsDictionary();
			if (settingsAsDictionary.Count > 0)
			{
				linkedList.AddLast(mixpanelClient.GetPeopleSetMessage(base.DistinctId, settingsAsDictionary));
			}
			return linkedList;
		}
	}
}
