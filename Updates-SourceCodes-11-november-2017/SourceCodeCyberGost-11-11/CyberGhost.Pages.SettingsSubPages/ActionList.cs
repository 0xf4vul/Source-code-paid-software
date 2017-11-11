using CyberGhost.Settings.SettingsItems;
using System;
using System.Collections.Generic;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class ActionList : List<SsidAction>
	{
		public ActionList()
		{
			base.Add(0);
			base.Add(1);
			base.Add(2);
			base.Add(3);
		}
	}
}
