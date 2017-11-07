using NordVpn.Application;
using System;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Windows;
using WindowsApp.Properties;

namespace NordVpn.Settings.Storage.Users
{
	public class UserConfigSettingsValidator
	{
		private readonly Settings _settings;

		public UserConfigSettingsValidator(Settings settings)
		{
			this._settings = settings;
		}

		public void RestartAppIfInvalid()
		{
			try
			{
				bool arg_0B_0 = this._settings.AppFirstRun;
			}
			catch (ConfigurationException arg_0E_0)
			{
				ConfigurationErrorsException expr_18 = arg_0E_0.InnerException as ConfigurationErrorsException;
				if (expr_18 == null)
				{
					throw;
				}
				File.Delete(expr_18.Filename);
				SingleInstanceHelper.ReleaseSingleInstanceLock();
				Process.Start(Application.ResourceAssembly.Location);
				Environment.Exit(0);
			}
		}
	}
}
