using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Vpn.OpenVPNService
{
	public sealed class OpenVpnErrorOccuredEventArgs : EventArgs
	{
		public string Message
		{
			[CompilerGenerated]
			get
			{
				return this.<Message>k__BackingField;
			}
		}

		public OpenVpnError Error
		{
			[CompilerGenerated]
			get
			{
				return this.<Error>k__BackingField;
			}
		}

		public OpenVpnErrorOccuredEventArgs(string message, OpenVpnError error)
		{
			this.<Message>k__BackingField = message;
			this.<Error>k__BackingField = error;
		}
	}
}
