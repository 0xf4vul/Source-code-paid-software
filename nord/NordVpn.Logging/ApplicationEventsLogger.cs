using Autofac;
using NordVpn.Core.Abstract.Log;
using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Threading;

namespace NordVpn.Logging
{
	public class ApplicationEventsLogger : IStartable
	{
		private readonly ILogger _logger;

		public ApplicationEventsLogger(ILogger logger)
		{
			this._logger = logger;
		}

		public void Start()
		{
			Application.Current.Startup += new StartupEventHandler(this.OnStartup);
			Application.Current.Exit += new ExitEventHandler(this.OnExiting);
			Application.Current.DispatcherUnhandledException += new DispatcherUnhandledExceptionEventHandler(this.OnUnhandledException);
		}

		private void OnStartup(object sender, StartupEventArgs e)
		{
			this._logger.Info(string.Format("= Booting NordVpn version: {0} os: {1} {2} bit =", AppConfig.AppVersion, AppConfig.OsVersion, AppConfig.OsBits));
		}

		private void OnExiting(object sender, ExitEventArgs e)
		{
			this._logger.Info("Exiting");
		}

		private void OnUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
		{
			AggregateException ex = e.Exception as AggregateException;
			if (ex != null)
			{
				this._logger.Fatal(string.Format("Aggregate exception occured: {0}", ex.Message));
				using (IEnumerator<Exception> enumerator = ex.Flatten().InnerExceptions.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						Exception current = enumerator.Current;
						this._logger.Fatal(current + " " + current.Message);
					}
					return;
				}
			}
			this._logger.Fatal(e.Exception + " " + e.Exception.Message);
		}
	}
}
