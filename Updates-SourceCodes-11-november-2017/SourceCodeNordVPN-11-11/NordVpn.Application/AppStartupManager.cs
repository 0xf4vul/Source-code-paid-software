using Liberation.OS;
using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models.Settings;
using System;

namespace NordVpn.Application
{
	public class AppStartupManager
	{
		private readonly AppStartup _appStartup;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		private readonly IPersistedSettings _settings;

		public AppStartupManager(AppStartup appStartup, IPersistedSettings settings)
		{
			this._appStartup = appStartup;
			this._settings = settings;
		}

		public void SetAutoStartFromSettings()
		{
			this.SetAutoStart(this._settings.Of<AppSettings>().get_StartOnStartup());
		}

		public void SetAutoStart(bool value)
		{
			try
			{
				if (value)
				{
					this._appStartup.Enable();
				}
				else
				{
					this._appStartup.Disable();
				}
				PersistedSettingsExtension.Save<AppSettings>(this._settings, delegate(AppSettings s)
				{
					s.set_StartOnStartup(value);
				});
			}
			catch (Exception ex)
			{
				LogExtensions.ErrorException(this._log, "Can't register/unregister app to autostart", ex, new object[0]);
			}
		}

		public bool IsAutoStartEnabled()
		{
			bool result;
			try
			{
				result = this._appStartup.IsEnabled();
			}
			catch (Exception ex)
			{
				LogExtensions.ErrorException(this._log, "Can't check if app autostarts", ex, new object[0]);
				result = false;
			}
			return result;
		}
	}
}
