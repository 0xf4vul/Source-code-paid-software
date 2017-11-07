using NordVpn.Core.Abstract.Log;
using NordVpn.ServiceProxy.Settings;
using NordVpn.Settings.Storage;
using System;
using System.ComponentModel;
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
				return new KillSwitchApplication(a.Name, a.Path);
			}
		}

		private readonly SettingsServiceClient _client;

		private readonly AppSettings _appSettings;

		private readonly ILogger _logger;

		public SettingsServiceClientManager(SettingsServiceClient client, AppSettings appSettings, ILogger logger)
		{
			this._client = client;
			this._appSettings = appSettings;
			this._logger = logger;
			this._appSettings.PropertyChanged += delegate(object s, PropertyChangedEventArgs e)
			{
				SettingsServiceClientManager.<<-ctor>b__3_0>d <<-ctor>b__3_0>d;
				<<-ctor>b__3_0>d.<>4__this = this;
				<<-ctor>b__3_0>d.e = e;
				<<-ctor>b__3_0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<-ctor>b__3_0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<-ctor>b__3_0>d.<>t__builder;
				<>t__builder.Start<SettingsServiceClientManager.<<-ctor>b__3_0>d>(ref <<-ctor>b__3_0>d);
			};
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
