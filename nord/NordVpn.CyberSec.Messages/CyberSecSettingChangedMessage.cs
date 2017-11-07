using System;
using System.Runtime.CompilerServices;

namespace NordVpn.CyberSec.Messages
{
	public class CyberSecSettingChangedMessage
	{
		public bool NewValue
		{
			[CompilerGenerated]
			get
			{
				return this.<NewValue>k__BackingField;
			}
		}

		public CyberSecSettingChangedMessage(bool newValue)
		{
			this.<NewValue>k__BackingField = newValue;
		}
	}
}
