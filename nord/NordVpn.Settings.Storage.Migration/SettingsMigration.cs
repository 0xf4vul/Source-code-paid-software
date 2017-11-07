using System;

namespace NordVpn.Settings.Storage.Migration
{
	public abstract class SettingsMigration
	{
		public abstract void Execute(SettingsMigrationContext context);
	}
}
