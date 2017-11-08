using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogVPN;
using System;
using System.Collections.ObjectModel;
using System.Runtime.CompilerServices;
using System.Windows;
using VyprVPN.Properties;
using VyprVPN.ViewModels;
using VyprVPN.Views.FeedbackDialogs;

namespace VyprVPN.Views.ConnectionLogWindow
{
	public class ConnectionLogViewModel : ViewModelBase
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ConnectionLogViewModel.<>c <>9 = new ConnectionLogViewModel.<>c();

			public static Action <>9__6_0;

			internal void <SendConnectionLogToSupportCommandExecute>b__6_0()
			{
				new FeedbackWindow(new ContactSupportViewModel())
				{
					Owner = Application.Current.MainWindow
				}.ShowDialog();
			}
		}

		private IIPCServer ipcServer;

		public static readonly PropertyData ConnectionLogProperty = ModelBase.RegisterProperty("ConnectionLog", typeof(IConnectionLog), null, null, true, true, true);

		public static readonly PropertyData ConnectionLogBufferProperty = ModelBase.RegisterProperty("ConnectionLogBuffer", typeof(ObservableCollection<ConnectionLogEntry>), null, null, true, true, true);

		public Command SendConnectionLogToSupportCommand
		{
			get;
			private set;
		}

		public Command ClearConnectionLogCommand
		{
			get;
			private set;
		}

		public override string Title
		{
			get
			{
				return Resources.ConnectionLog;
			}
		}

		[Model]
		public IConnectionLog ConnectionLog
		{
			get
			{
				return base.GetValue<IConnectionLog>(ConnectionLogViewModel.ConnectionLogProperty);
			}
			private set
			{
				base.SetValue(ConnectionLogViewModel.ConnectionLogProperty, value);
			}
		}

		[ViewModelToModel("ConnectionLog", "")]
		public ObservableCollection<ConnectionLogEntry> ConnectionLogBuffer
		{
			get
			{
				return base.GetValue<ObservableCollection<ConnectionLogEntry>>(ConnectionLogViewModel.ConnectionLogBufferProperty);
			}
			set
			{
				base.SetValue(ConnectionLogViewModel.ConnectionLogBufferProperty, value);
			}
		}

		public ConnectionLogViewModel()
		{
			this.ipcServer = ServiceLocatorExtensions.ResolveType<IIPCServer>(ObjectExtensions.GetServiceLocator(this), null);
			this.ConnectionLog = ServiceLocatorExtensions.ResolveType<IConnectionLog>(ObjectExtensions.GetServiceLocator(this), null);
			this.SendConnectionLogToSupportCommand = new Command(new Action(this.SendConnectionLogToSupportCommandExecute), null, null);
			this.ClearConnectionLogCommand = new Command(new Action(this.ClearConnectionLogCommandExecute), null, null);
		}

		private void SendConnectionLogToSupportCommandExecute()
		{
			IUIHelper arg_2A_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			Action arg_2A_1;
			if ((arg_2A_1 = ConnectionLogViewModel.<>c.<>9__6_0) == null)
			{
				arg_2A_1 = (ConnectionLogViewModel.<>c.<>9__6_0 = new Action(ConnectionLogViewModel.<>c.<>9.<SendConnectionLogToSupportCommandExecute>b__6_0));
			}
			arg_2A_0.Dispatch(arg_2A_1);
		}

		private void ClearConnectionLogCommandExecute()
		{
			this.ConnectionLog.Clear();
			this.ipcServer.BeginClearConnectionLog();
		}
	}
}

using Catel.IoC;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Markup;

namespace VyprVPN.Views.ConnectionLogWindow
{
	public class ConnectionLogWindow : Window, IComponentConnector
	{
		private bool _contentLoaded;

		public ConnectionLogWindow() : this(null)
		{
		}

		public ConnectionLogWindow(ConnectionLogViewModel viewModel)
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			base.DataContext = viewModel;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/connectionlogwindow/connectionlogwindow.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			this._contentLoaded = true;
		}
	}
}
