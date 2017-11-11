using Liberation.ServiceModel.Client;
using NordVpn.ServiceProxy.Settings;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.KillSwitch.Services
{
	public class SettingsServiceClient
	{
		private readonly InprocChannelFactory _channelFactory;

		public SettingsServiceClient(InprocChannelFactory channelFactory)
		{
			this._channelFactory = channelFactory;
		}

		[AsyncStateMachine(typeof(SettingsServiceClient.<SetKillSwitch>d__2))]
		public Task SetKillSwitch(KillSwitchSettings killSwitchSettings)
		{
			SettingsServiceClient.<SetKillSwitch>d__2 <SetKillSwitch>d__;
			<SetKillSwitch>d__.<>4__this = this;
			<SetKillSwitch>d__.killSwitchSettings = killSwitchSettings;
			<SetKillSwitch>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<SetKillSwitch>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <SetKillSwitch>d__.<>t__builder;
			<>t__builder.Start<SettingsServiceClient.<SetKillSwitch>d__2>(ref <SetKillSwitch>d__);
			return <SetKillSwitch>d__.<>t__builder.Task;
		}
	}
}
