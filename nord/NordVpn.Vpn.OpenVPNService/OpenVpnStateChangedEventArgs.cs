using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using System;

namespace NordVpn.Vpn.OpenVPNService
{
	public sealed class OpenVpnStateChangedEventArgs : VpnConnectionStatusChangeEventArgs
	{
		public OpenVpnStateChangedEventArgs(VpnState state, Server server) : base(new VpnConnectionStatus(state, server))
		{
		}

		public OpenVpnStateChangedEventArgs(VpnConnectionStatus status) : base(status)
		{
		}
	}
}
