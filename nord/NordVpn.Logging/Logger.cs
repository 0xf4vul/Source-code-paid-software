using NLog;
using NordVpn.Core.Abstract.Log;
using System;

namespace NordVpn.Logging
{
	public class Logger : ILogger
	{
		private readonly Logger _logger;

		public Logger(LoggerFactory loggerFactory)
		{
			this._logger = loggerFactory.Create();
		}

		public void Info(string message)
		{
			this._logger.Info(message);
		}

		public void Error(string message)
		{
			this._logger.Error(message);
		}

		public void Fatal(string message)
		{
			this._logger.Fatal(message);
		}

		public void Debug(string message)
		{
			this._logger.Debug(message);
		}

		public void Error(Exception exception)
		{
			this._logger.Error<Exception>(exception);
		}
	}
}
