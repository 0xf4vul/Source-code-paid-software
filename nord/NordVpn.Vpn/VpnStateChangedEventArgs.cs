using NordVpn.Core.Abstract.Vpn;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Vpn
{
	public class VpnStateChangedEventArgs
	{
		public VpnState VpnState
		{
			[CompilerGenerated]
			get
			{
				return this.<VpnState>k__BackingField;
			}
		}

		public VpnStateChangedEventArgs(VpnState vpnState)
		{
			this.<VpnState>k__BackingField = vpnState;
		}
	}
}
