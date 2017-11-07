using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using WindowsApp.Properties;

namespace NordVpn.Settings.Storage.Migration
{
	public class SettingsMigrationContext
	{
		private readonly Settings _settings;

		public Version SettingsVersion
		{
			get
			{
				return Assembly.GetExecutingAssembly().GetName().Version;
			}
		}

		public SettingsMigrationContext(Settings settings)
		{
			this._settings = settings;
		}

		public void SetSetting(string name, object value)
		{
			this._settings[name] = value;
		}

		public object GetSetting(string name)
		{
			return this._settings[name];
		}

		public object GetPreviousSettingVersion(string propertyName)
		{
			if (this._settings.Properties.Cast<SettingsProperty>().Any((SettingsProperty p) => p.Name == propertyName))
			{
				return this._settings.GetPreviousVersion(propertyName);
			}
			return this.GetPreviousSettingVersionFromPreviousSettings(propertyName);
		}

		private object GetPreviousSettingVersionFromPreviousSettings(string propertyName)
		{
			object serializedValue;
			using (IEnumerator<IApplicationSettingsProvider> enumerator = this._settings.Providers.OfType<IApplicationSettingsProvider>().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					SettingsPropertyValue previousVersion = enumerator.Current.GetPreviousVersion(this._settings.Context, new SettingsProperty(propertyName));
					if (previousVersion != null)
					{
						serializedValue = previousVersion.SerializedValue;
						return serializedValue;
					}
				}
				goto IL_58;
			}
			return serializedValue;
			IL_58:
			return null;
		}
	}
}
