using System;

namespace NordVpn.Vpn
{
	public class InvalidOpenVpnConfigException : Exception
	{
		public InvalidOpenVpnConfigException(string message) : base(message)
		{
		}

		public InvalidOpenVpnConfigException(string message, Exception innerException) : base(message, innerException)
		{
		}
	}
}
