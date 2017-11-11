using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Vpn.OpenVPNService
{
	public sealed class OpenVpnStateChangedEventArgs : EventArgs
	{
		public VpnState VpnState
		{
			[CompilerGenerated]
			get
			{
				return this.<VpnState>k__BackingField;
			}
		}

		public Server Server
		{
			[CompilerGenerated]
			get
			{
				return this.<Server>k__BackingField;
			}
		}

		public OpenVpnStateChangedEventArgs(VpnState state, Server server)
		{
			this.<VpnState>k__BackingField = state;
			this.<Server>k__BackingField = server;
		}
	}
}
