using System;

namespace NordVpn.Settings.Storage.Migration
{
	public class DefaultSettingsMigration : SettingsMigration
	{
		public override void Execute(SettingsMigrationContext context)
		{
			if (string.IsNullOrEmpty((string)context.GetSetting("DeviceID")))
			{
				context.SetSetting("DeviceID", Guid.NewGuid().ToString());
			}
			context.SetSetting("AppFirstRun", false);
		}
	}
}
