using NordVpn.Settings.Storage.Migration;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Application
{
	public class FirstRunStrategy
	{
		private readonly SettingsMigrationEngine _migrationEngine;

		public FirstRunStrategy(SettingsMigrationEngine migrationEngine)
		{
			this._migrationEngine = migrationEngine;
		}

		[AsyncStateMachine(typeof(FirstRunStrategy.<Execute>d__2))]
		public Task Execute()
		{
			FirstRunStrategy.<Execute>d__2 <Execute>d__;
			<Execute>d__.<>4__this = this;
			<Execute>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Execute>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Execute>d__.<>t__builder;
			<>t__builder.Start<FirstRunStrategy.<Execute>d__2>(ref <Execute>d__);
			return <Execute>d__.<>t__builder.Task;
		}
	}
}
