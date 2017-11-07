using NordVpn.Core.Abstract.Log;
using System;
using System.Collections.Generic;
using System.Linq;
using WindowsApp.Properties;

namespace NordVpn.Settings.Storage.Migration
{
	public class SettingsMigrationEngine
	{
		private readonly List<SettingsMigration> _migrations;

		private readonly Settings _settings;

		private readonly ILogger _logger;

		public SettingsMigrationEngine(Settings settings, IEnumerable<SettingsMigration> migrations, ILogger logger)
		{
			this._settings = settings;
			this._migrations = migrations.ToList<SettingsMigration>();
			this._logger = logger;
		}

		public void Start()
		{
			this.TryUpgradeSettings();
			this.ExecuteMigrations();
			this.SaveSettings();
		}

		private void ExecuteMigrations()
		{
			SettingsMigrationContext context = new SettingsMigrationContext(this._settings);
			using (List<SettingsMigration>.Enumerator enumerator = this._migrations.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					enumerator.Current.Execute(context);
				}
			}
		}

		private void TryUpgradeSettings()
		{
			this._logger.Info("Updating according to user.config");
			try
			{
				this._settings.Upgrade();
			}
			catch (Exception arg)
			{
				this._logger.Error("Failed to upgrade user settings: " + arg);
			}
		}

		private void SaveSettings()
		{
			this._settings.Save();
		}
	}
}
