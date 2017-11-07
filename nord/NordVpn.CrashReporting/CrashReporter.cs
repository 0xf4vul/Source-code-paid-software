using Liberation.CrashReporting;
using Liberation.OS;
using NordVpn.Core.Abstract.Log;
using NordVpn.Settings.Storage;
using System;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.CrashReporting
{
	public class CrashReporter
	{
		private readonly WpfCrashReporter _wpfCrashReporter;

		private readonly OSInfo _osInfo;

		private readonly AppSettings _appSettings;

		private readonly CrashReportConfirmer _crashReportConfirmer;

		private readonly ILogger _logger;

		public CrashReporter(WpfCrashReporter wpfCrashReporter, CrashReportConfirmer crashReportConfirmer, AppSettings appSettings, OSInfo osInfo, ILogger logger)
		{
			this._wpfCrashReporter = wpfCrashReporter;
			this._crashReportConfirmer = crashReportConfirmer;
			this._appSettings = appSettings;
			this._osInfo = osInfo;
			this._logger = logger;
		}

		[AsyncStateMachine(typeof(CrashReporter.<Initialize>d__6))]
		public Task Initialize()
		{
			CrashReporter.<Initialize>d__6 <Initialize>d__;
			<Initialize>d__.<>4__this = this;
			<Initialize>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Initialize>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Initialize>d__.<>t__builder;
			<>t__builder.Start<CrashReporter.<Initialize>d__6>(ref <Initialize>d__);
			return <Initialize>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(CrashReporter.<SendException>d__7))]
		public Task<bool> SendException(Exception exception)
		{
			CrashReporter.<SendException>d__7 <SendException>d__;
			<SendException>d__.<>4__this = this;
			<SendException>d__.exception = exception;
			<SendException>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<SendException>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <SendException>d__.<>t__builder;
			<>t__builder.Start<CrashReporter.<SendException>d__7>(ref <SendException>d__);
			return <SendException>d__.<>t__builder.Task;
		}

		private void SendCrashesAndCleanup(string message, string contact, bool includeLog)
		{
			Action<CrashData> <>9__1;
			Task.Run<bool>(delegate
			{
				CrashReporter arg_2A_0 = this._wpfCrashReporter;
				Action<CrashData> arg_2A_1;
				if ((arg_2A_1 = <>9__1) == null)
				{
					arg_2A_1 = (<>9__1 = delegate(CrashData c)
					{
						c.set_Description(message);
						c.set_Contact(contact);
						c.set_UserId(this._appSettings.DeviceID);
					});
				}
				return arg_2A_0.WithMetadata(arg_2A_1).WithAdditionalInfo(new string[]
				{
					string.Format("OS: {0}", this._osInfo.GetFriendlyOSName()),
					string.Format("OS edition: {0}", this._osInfo.GetOSEdition()),
					string.Format("System: {0}", this._osInfo.GetFriendlySystemIdentification()),
					string.Format("RAM usage: {0}", this._osInfo.GetFriendlyRamUsedInformation()),
					string.Format(".NET version: {0}", this._osInfo.GetInstalledNETVersion()),
					string.Format("App dir: {0}", Path.GetDirectoryName(Assembly.GetEntryAssembly().Location)),
					string.Format("Auto connect mode {0}", this._appSettings.AutoConnectMode)
				}).WithAdditionalInfo(new Func<bool>(this.<SendCrashesAndCleanup>b__8_2), "AutoConnect is on ").WithAdditionalInfo(new Func<bool>(this.<SendCrashesAndCleanup>b__8_3), "SecureBoot is on").WithAdditionalInfo(new Func<bool>(this.<SendCrashesAndCleanup>b__8_4), "Killswitch is on").WithAdditionalInfo(new Func<bool>(this.<SendCrashesAndCleanup>b__8_5), "App first run").OnError(new Action<string>(this.<SendCrashesAndCleanup>b__8_6)).SendCrashesAndDeleteAfterwardsAsync();
			});
		}
	}
}
