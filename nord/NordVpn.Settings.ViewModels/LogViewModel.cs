using GalaSoft.MvvmLight.Command;
using Liberation.Logging;
using NLog;
using NordVpn.Application;
using NordVpn.Logging;
using NordVpn.Shared;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Data;
using System.Windows.Input;

namespace NordVpn.Settings.ViewModels
{
	public sealed class LogViewModel : AppScreen
	{
		public class MessageItem
		{
			public string Timestamp
			{
				get;
				set;
			}

			public string Message
			{
				get;
				set;
			}

			public static LogViewModel.MessageItem FromLogEvent(LogEventInfo logEventInfo)
			{
				string message = (logEventInfo.get_Exception() == null) ? string.Format("[{0}] {1}", logEventInfo.get_Level(), logEventInfo.get_Message()) : string.Format("[{0}] {1}", logEventInfo.get_Level(), logEventInfo.get_Exception().Message);
				return new LogViewModel.MessageItem
				{
					Timestamp = logEventInfo.get_TimeStamp().ToShortDateString() + " " + logEventInfo.get_TimeStamp().ToLongTimeString(),
					Message = message
				};
			}
		}

		private readonly AppLoggingConfiguration _appLoggingConfiguration;

		private readonly object _logItemsLock = new object();

		public ObservableCollection<LogViewModel.MessageItem> LogItems
		{
			[CompilerGenerated]
			get
			{
				return this.<LogItems>k__BackingField;
			}
		}

		public ICommand OpenLogAction
		{
			[CompilerGenerated]
			get
			{
				return this.<OpenLogAction>k__BackingField;
			}
		}

		public LogViewModel(AppLoggingConfiguration appLoggingConfiguration)
		{
			this.<LogItems>k__BackingField = new ObservableCollection<LogViewModel.MessageItem>();
			base..ctor();
			this._appLoggingConfiguration = appLoggingConfiguration;
			BindingOperations.CollectionRegistering += new EventHandler<CollectionRegisteringEventArgs>(this.BindingOperations_CollectionRegistering);
			this.<OpenLogAction>k__BackingField = new RelayCommand(new Action(this.OpenLog));
			this.InitLogTarget();
			this.set_DisplayName("System Log");
		}

		private void OpenLog()
		{
			string currentLogFileName = this._appLoggingConfiguration.get_File().GetCurrentLogFileName(LogTarget.File);
			if (File.Exists(currentLogFileName))
			{
				Process.Start(currentLogFileName);
			}
		}

		private void InitLogTarget()
		{
			this._appLoggingConfiguration.get_InMemory().RegisterLogReceivedHandler(LogTarget.InMemory, new Action<LogEventInfo>(this.OnLogReceived));
			this._appLoggingConfiguration.get_InMemory().GetLoggedMessages(LogTarget.InMemory).ForEach(delegate(LogEventInfo e)
			{
				this.LogItems.Add(LogViewModel.MessageItem.FromLogEvent(e));
			});
		}

		private void OnLogReceived(LogEventInfo logEventInfo)
		{
			object logItemsLock = this._logItemsLock;
			lock (logItemsLock)
			{
				this.LogItems.Add(LogViewModel.MessageItem.FromLogEvent(logEventInfo));
			}
		}

		private void BindingOperations_CollectionRegistering(object sender, CollectionRegisteringEventArgs e)
		{
			BindingOperations.EnableCollectionSynchronization(this.LogItems, this._logItemsLock);
		}
	}
}
