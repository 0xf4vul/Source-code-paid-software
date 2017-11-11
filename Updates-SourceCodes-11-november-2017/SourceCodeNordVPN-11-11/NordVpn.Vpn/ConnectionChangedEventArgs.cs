using NordVpn.Core.Abstract.Vpn;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Vpn
{
	public sealed class ConnectionChangedEventArgs<TServer> : EventArgs
	{
		public TServer Server
		{
			[CompilerGenerated]
			get
			{
				return this.<Server>k__BackingField;
			}
		}

		public VpnState State
		{
			[CompilerGenerated]
			get
			{
				return this.<State>k__BackingField;
			}
		}

		public ConnectionChangedEventArgs(TServer server, VpnState state)
		{
			this.<Server>k__BackingField = server;
			this.<State>k__BackingField = state;
		}
	}
}
