using System;
using System.Runtime.CompilerServices;

namespace NordVpn.CyberSec.Messages
{
	public sealed class ShowReconnectDialogMessage
	{
		public bool DesiredCyberSecState
		{
			[CompilerGenerated]
			get
			{
				return this.<DesiredCyberSecState>k__BackingField;
			}
		}

		public ShowReconnectDialogMessage(bool desiredCyberSecState)
		{
			this.<DesiredCyberSecState>k__BackingField = desiredCyberSecState;
		}
	}
}
