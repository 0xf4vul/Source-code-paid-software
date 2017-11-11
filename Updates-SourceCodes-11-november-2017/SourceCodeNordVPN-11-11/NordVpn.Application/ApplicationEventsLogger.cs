using Autofac;
using NordVpn.Core.Abstract.Log.Logging;
using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Threading;

namespace NordVpn.Application
{
	public class ApplicationEventsLogger : IStartable
	{
		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		public void Start()
		{
			Application.Current.Startup += new StartupEventHandler(this.OnStartup);
			Application.Current.Exit += new ExitEventHandler(this.OnExiting);
			Application.Current.DispatcherUnhandledException += new DispatcherUnhandledExceptionEventHandler(this.OnUnhandledException);
		}

		private void OnStartup(object sender, StartupEventArgs e)
		{
			LogExtensions.Info(this._log, string.Format("= Booting NordVpn version: {0} os: {1} {2} bit =", AppConfig.AppVersion, AppConfig.OsVersion, AppConfig.OsBits));
		}

		private void OnExiting(object sender, ExitEventArgs e)
		{
			LogExtensions.Info(this._log, "Exiting");
		}

		private void OnUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
		{
			AggregateException ex;
			if ((ex = (e.Exception as AggregateException)) != null)
			{
				LogExtensions.Fatal(this._log, string.Format("Aggregate exception occured: {0}", ex.Message));
				using (IEnumerator<Exception> enumerator = ex.Flatten().InnerExceptions.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						Exception current = enumerator.Current;
						LogExtensions.Fatal(this._log, current + " " + current.Message);
					}
					return;
				}
			}
			LogExtensions.Fatal(this._log, e.Exception + " " + e.Exception.Message);
		}
	}
}
