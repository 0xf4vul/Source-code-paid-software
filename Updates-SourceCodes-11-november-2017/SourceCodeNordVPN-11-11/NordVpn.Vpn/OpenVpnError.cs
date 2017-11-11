using System;

namespace NordVpn.Vpn
{
	public enum OpenVpnError
	{
		None,
		NetshError,
		AuthorizationError,
		TapAdapterInUserError,
		NoTapAdaptersError,
		TapRequiresUpdateError,
		TimeoutError,
		Unknown
	}
}
