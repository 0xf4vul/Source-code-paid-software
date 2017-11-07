using System;
using System.Runtime.CompilerServices;

namespace NordVpn.CyberSec
{
	public class CyberSecVpnConnectionNeededEventArgs : EventArgs
	{
		public bool IsNeeded
		{
			[CompilerGenerated]
			get
			{
				return this.<IsNeeded>k__BackingField;
			}
		}

		public CyberSecVpnConnectionNeededEventArgs(bool isNeeded)
		{
			this.<IsNeeded>k__BackingField = isNeeded;
		}
	}
}
