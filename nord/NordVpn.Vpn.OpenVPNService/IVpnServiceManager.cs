using NordVpn.Core.Abstract.Vpn;
using System;
using System.Threading.Tasks;

namespace NordVpn.Vpn.OpenVPNService
{
	public interface IVpnServiceManager
	{
		Task Connect(OpenVpnConnection connection);

		Task Disconnect();

		Bandwidth GetCurrentBandwidth();

		Task<VpnConnectionStatus> GetCurrentConnectionStatus();

		void RegisterCallback(Action<OpenVpnStateChangedEventArgs> onVpnStateChanged);

		void RegisterCallback(Action<OpenVpnErrorOccuredEventArgs> onVpnErrorOccured);
	}
}
