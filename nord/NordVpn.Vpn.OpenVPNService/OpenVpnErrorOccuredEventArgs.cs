using NordVpn.Core.Abstract.Vpn;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Vpn.OpenVPNService
{
	public class OpenVpnErrorOccuredEventArgs : VpnErrorEventArgs
	{
		public OpenVpnError Error
		{
			[CompilerGenerated]
			get
			{
				return this.<Error>k__BackingField;
			}
		}

		public OpenVpnErrorOccuredEventArgs(string message, OpenVpnError error) : base(message)
		{
			this.<Error>k__BackingField = error;
		}
	}
}
