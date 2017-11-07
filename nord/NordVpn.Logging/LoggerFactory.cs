using Liberation.Logging;
using NLog;
using System;
using System.IO;

namespace NordVpn.Logging
{
	public class LoggerFactory
	{
		private readonly AppLoggingConfiguration _configuration;

		public LoggerFactory(AppLoggingConfiguration configuration)
		{
			this._configuration = configuration;
		}

		public Logger Create()
		{
			this._configuration.get_InMemory().Setup(LogTarget.InMemory);
			this._configuration.get_File().Setup(LogTarget.File, Path.Combine(AppConfig.GetLocalAppDataFolder(), "logs/app-${shortdate}.txt"));
			this._configuration.ApplyConfiguration();
			return this._configuration.GetLogger("logger");
		}
	}
}
