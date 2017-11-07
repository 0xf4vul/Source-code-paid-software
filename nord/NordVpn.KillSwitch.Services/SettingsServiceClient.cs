using Liberation.ServiceModel.Client;
using NordVpn.ServiceProxy.Settings;
using System;

namespace NordVpn.KillSwitch.Services
{
	public class SettingsServiceClient
	{
		private readonly InprocChannelFactory _channelFactory;

		public SettingsServiceClient(InprocChannelFactory channelFactory)
		{
			this._channelFactory = channelFactory;
		}

		public void SetKillSwitch(KillSwitchSettings killSwitchSettings)
		{
			using (SafeChannel<ISettingsProxy> safeChannel = this._channelFactory.Create<ISettingsProxy>("nordvpn-service/SettingsManager"))
			{
				safeChannel.get_Proxy().SetKillSwitch(killSwitchSettings);
			}
		}
	}
}
