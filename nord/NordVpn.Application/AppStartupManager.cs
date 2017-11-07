using Liberation.OS;
using NordVpn.Core.Abstract.Log;
using NordVpn.Settings.Storage;
using System;

namespace NordVpn.Application
{
	public class AppStartupManager
	{
		private readonly AppStartup _appStartup;

		private readonly ILogger _logger;

		private readonly AppSettings _appSettings;

		public AppStartupManager(AppStartup appStartup, ILogger logger, AppSettings appSettings)
		{
			this._appStartup = appStartup;
			this._logger = logger;
			this._appSettings = appSettings;
		}

		public void SetAutoStart(bool value)
		{
			try
			{
				if (value)
				{
					if (!this._appStartup.IsEnabled())
					{
						this._appStartup.Enable();
					}
				}
				else if (this._appStartup.IsEnabled())
				{
					this._appStartup.Disable();
				}
			}
			catch (Exception ex)
			{
				this._logger.Error("Can't register app to autostart");
				this._logger.Error(ex);
			}
			this._appSettings.StartOnStartup = value;
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
				this._logger.Error("Can't register app to autostart");
				this._logger.Error(ex);
				result = false;
			}
			return result;
		}

		public void SetAutoStartFromSettings()
		{
			this.SetAutoStart(this._appSettings.StartOnStartup);
		}
	}
}
