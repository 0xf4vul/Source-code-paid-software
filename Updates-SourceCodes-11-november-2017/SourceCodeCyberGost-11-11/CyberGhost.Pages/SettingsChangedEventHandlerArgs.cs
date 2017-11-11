using CyberGhost.Settings;
using System;

namespace CyberGhost.Pages
{
	public class SettingsChangedEventHandlerArgs : EventArgs
	{
		public SettingsHolder SettingsHolder
		{
			get;
			set;
		}
	}
}
