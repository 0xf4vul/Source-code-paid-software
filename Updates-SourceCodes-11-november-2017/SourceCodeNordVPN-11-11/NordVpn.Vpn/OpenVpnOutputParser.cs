using NordVpn.Shared;
using System;

namespace NordVpn.Vpn
{
	public class OpenVpnOutputParser
	{
		public OpenVpnError Parse(string message)
		{
			Guard.NotEmpty(message, "message", null);
			if (OpenVpnOutputParser.ContainsAuthError(message))
			{
				return OpenVpnError.AuthorizationError;
			}
			if (OpenVpnOutputParser.ContainsTapInUseError(message))
			{
				return OpenVpnError.TapAdapterInUserError;
			}
			if (OpenVpnOutputParser.ContainsNoTapError(message))
			{
				return OpenVpnError.NoTapAdaptersError;
			}
			if (OpenVpnOutputParser.ContainsTapRequiresUpdateError(message))
			{
				return OpenVpnError.TapRequiresUpdateError;
			}
			if (OpenVpnOutputParser.ContainsTimeoutError(message))
			{
				return OpenVpnError.TimeoutError;
			}
			if (OpenVpnOutputParser.ContainsNetshError(message))
			{
				return OpenVpnError.NetshError;
			}
			return OpenVpnError.Unknown;
		}

		private static bool ContainsNetshError(string message)
		{
			return message.ContainsIgnoringCase("NETSH: command failed");
		}

		private static bool ContainsAuthError(string message)
		{
			return message.ContainsIgnoringCase("PASSWORD:Verification Failed: 'Auth'");
		}

		private static bool ContainsTapInUseError(string message)
		{
			return message.ContainsIgnoringCase("All TAP-Windows adapters on this system are currently in use") || message.ContainsIgnoringCase("All TAP-Win32 adapters on this system are currently in use");
		}

		private static bool ContainsNoTapError(string message)
		{
			return message.ContainsIgnoringCase("There are no TAP-Windows adapters on this system") || message.ContainsIgnoringCase("There are no TAP-Win32adapters on this system");
		}

		private static bool ContainsTapRequiresUpdateError(string message)
		{
			return message.ContainsIgnoringCase("This version of OpenVPN requires a TAP-Windows driver that is at least version") || message.ContainsIgnoringCase("This version of OpenVPN requires a TAP-Win32 driver that is at least version");
		}

		private static bool ContainsTimeoutError(string message)
		{
			return message.ContainsIgnoringCase("Timeout");
		}
	}
}
