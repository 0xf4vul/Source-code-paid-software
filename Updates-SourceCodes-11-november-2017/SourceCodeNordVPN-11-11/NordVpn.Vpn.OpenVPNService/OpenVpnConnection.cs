using NordVpn.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.Vpn.OpenVPNService
{
	public class OpenVpnConnection
	{
		public Server Server
		{
			[CompilerGenerated]
			get
			{
				return this.<Server>k__BackingField;
			}
		}

		public string Username
		{
			[CompilerGenerated]
			get
			{
				return this.<Username>k__BackingField;
			}
		}

		public string Password
		{
			[CompilerGenerated]
			get
			{
				return this.<Password>k__BackingField;
			}
		}

		public string OpenVpnConfig
		{
			[CompilerGenerated]
			get
			{
				return this.<OpenVpnConfig>k__BackingField;
			}
		}

		public string Protocol
		{
			[CompilerGenerated]
			get
			{
				return this.<Protocol>k__BackingField;
			}
		}

		public IList<string> DnsHosts
		{
			get;
			set;
		}

		public OpenVpnConnection(Server server, string username, string password, string openVpnConfig, string protocol)
		{
			this.<DnsHosts>k__BackingField = new List<string>();
			base..ctor();
			this.<Server>k__BackingField = server;
			this.<Username>k__BackingField = username;
			this.<Password>k__BackingField = password;
			this.<OpenVpnConfig>k__BackingField = openVpnConfig;
			this.<Protocol>k__BackingField = protocol;
		}

		public override string ToString()
		{
			if (!this.DnsHosts.Any<string>())
			{
				return string.Format("Server: {0}. Protocol {1}", this.Server, this.Protocol);
			}
			return string.Format("Server: {0}. DnsHosts: {1}. Protocol {2}", this.Server, this.<ToString>g__FormatDnsHosts20_0(), this.Protocol);
		}
	}
}
