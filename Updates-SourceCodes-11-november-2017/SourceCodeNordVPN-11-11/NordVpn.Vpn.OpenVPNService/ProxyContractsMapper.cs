using NordVpn.Core.Abstract.Vpn;
using NordVpn.ServiceProxy.Vpn;
using System;

namespace NordVpn.Vpn.OpenVPNService
{
	public sealed class ProxyContractsMapper
	{
		public ServerConnectionProxy Map(OpenVpnConnection connection)
		{
			ServerConnectionProxy expr_05 = new ServerConnectionProxy();
			expr_05.set_OvpnConfigPath(connection.OpenVpnConfig);
			expr_05.set_UserName(connection.Username);
			expr_05.set_Password(connection.Password);
			expr_05.set_DnsHosts(connection.DnsHosts);
			return expr_05;
		}

		public Bandwidth Map(BandwidthProxy bandwidth)
		{
			return new Bandwidth(bandwidth.get_BytesIn(), bandwidth.get_BytesOut());
		}

		public VpnState Map(VpnStateProxy curent)
		{
			switch (curent)
			{
			case 0:
				return 0;
			case 1:
				return 1;
			case 2:
				return 3;
			case 3:
				return 2;
			default:
				throw new NotImplementedException();
			}
		}
	}
}
