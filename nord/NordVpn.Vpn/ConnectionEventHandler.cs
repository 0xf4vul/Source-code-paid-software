using System;

namespace NordVpn.Vpn
{
	public delegate void ConnectionEventHandler<TServer>(object sender, ConnectionChangedEventArgs<TServer> e);
}
