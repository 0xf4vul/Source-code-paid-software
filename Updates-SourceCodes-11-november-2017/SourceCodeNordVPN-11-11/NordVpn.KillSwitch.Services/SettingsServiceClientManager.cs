using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models.Settings;
using NordVpn.ServiceProxy.Settings;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.KillSwitch.Services
{
	public class SettingsServiceClientManager
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly SettingsServiceClientManager.<>c <>9 = new SettingsServiceClientManager.<>c();

			public static Func<KillSwitchApp, KillSwitchApplication> <>9__4_0;

			internal KillSwitchApplication <SetKillSwitch>b__4_0(KillSwitchApp a)
			{
				return new KillSwitchApplication(a.get_Name(), a.get_Path());
			}
		}

		private readonly SettingsServiceClient _client;

		private readonly ISettings _settings;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		public SettingsServiceClientManager(SettingsServiceClient client, ISettings settings)
		{
			this._client = client;
			this._settings = settings;
			this._settings.Observe<UserSettings, bool>((UserSettings s) => s.KillSwitch, delegate(bool s)
			{
				SettingsServiceClientManager.<<-ctor>b__3_0>d <<-ctor>b__3_0>d;
				<<-ctor>b__3_0>d.<>4__this = this;
				<<-ctor>b__3_0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<-ctor>b__3_0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<-ctor>b__3_0>d.<>t__builder;
				<>t__builder.Start<SettingsServiceClientManager.<<-ctor>b__3_0>d>(ref <<-ctor>b__3_0>d);
			}).Observe<UserSettings, IList<KillSwitchApp>>((UserSettings s) => s.KillSwitchApps, delegate(IList<KillSwitchApp> apps)
			{
				SettingsServiceClientManager.<<-ctor>b__3_1>d <<-ctor>b__3_1>d;
				<<-ctor>b__3_1>d.<>4__this = this;
				<<-ctor>b__3_1>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<-ctor>b__3_1>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<-ctor>b__3_1>d.<>t__builder;
				<>t__builder.Start<SettingsServiceClientManager.<<-ctor>b__3_1>d>(ref <<-ctor>b__3_1>d);
			});
		}

		[AsyncStateMachine(typeof(SettingsServiceClientManager.<SetKillSwitch>d__4))]
		public Task SetKillSwitch()
		{
			SettingsServiceClientManager.<SetKillSwitch>d__4 <SetKillSwitch>d__;
			<SetKillSwitch>d__.<>4__this = this;
			<SetKillSwitch>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<SetKillSwitch>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <SetKillSwitch>d__.<>t__builder;
			<>t__builder.Start<SettingsServiceClientManager.<SetKillSwitch>d__4>(ref <SetKillSwitch>d__);
			return <SetKillSwitch>d__.<>t__builder.Task;
		}
	}
}
