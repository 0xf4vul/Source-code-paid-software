using BugSplat;
using Microsoft.Win32;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Markup;
using System.Windows.Threading;

namespace CyberGhost
{
	public class App : System.Windows.Application
	{
		private bool _contentLoaded;

		internal void SetCurrentLanguage(string cultureName)
		{
			CultureInfo.DefaultThreadCurrentCulture = new CultureInfo(cultureName);
			CultureInfo.DefaultThreadCurrentUICulture = new CultureInfo(cultureName);
			XmlLanguage language = XmlLanguage.GetLanguage(CultureInfo.CurrentCulture.IetfLanguageTag);
			FrameworkElement.LanguageProperty.OverrideMetadata(typeof(FrameworkElement), new FrameworkPropertyMetadata(language));
			FrameworkContentElement.LanguageProperty.OverrideMetadata(typeof(TextElement), new FrameworkPropertyMetadata(language));
		}

		private void App_DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
		{
			e.Handled = e.Exception.GetType().IsSubclassOf(typeof(ArgumentOutOfRangeException));
		}

		private void Application_Startup(object sender, StartupEventArgs e)
		{
			try
			{
				string arg = string.Format("{0}_{1}_{2}", Assembly.GetExecutingAssembly().GetName().Version.Major, Assembly.GetExecutingAssembly().GetName().Version.Minor, Assembly.GetExecutingAssembly().GetName().Version.Build);
				CrashReporter.Init(string.Format("cyberghost_{0}", arg), "CyberGhost", Assembly.GetExecutingAssembly().GetName().Version.ToString());
				CrashReporter.set_ExitOnError(false);
				CrashReporter.add_exceptionHandled(new CrashReporter.Callback(this.CrashReporter_exceptionHandled));
			}
			catch (Exception arg_98_0)
			{
				HelperFunctions.DebugLine(arg_98_0.Message);
			}
			AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(CrashReporter.AppDomainUnhandledExceptionHandler);
			System.Windows.Forms.Application.ThreadException += new ThreadExceptionEventHandler(CrashReporter.ApplicationThreadException);
			TaskScheduler.UnobservedTaskException += new EventHandler<UnobservedTaskExceptionEventArgs>(this.TaskScheduler_UnobservedTaskException);
			RegistryKey currentUser = Registry.CurrentUser;
			RegistryKey registryKey = currentUser.OpenSubKey("SOFTWARE\\CyberGhost", false);
			string currentLanguage = "en";
			if (registryKey != null)
			{
				object expr_108 = registryKey.GetValue("Language", "en");
				currentLanguage = ((expr_108 != null) ? expr_108.ToString() : null);
				registryKey.Close();
				currentUser.Close();
			}
			this.SetCurrentLanguage(currentLanguage);
		}

		private void TaskScheduler_UnobservedTaskException(object sender, UnobservedTaskExceptionEventArgs e)
		{
			string text = string.Concat(new object[]
			{
				"UnobservedTaskException: ",
				e,
				"\\r\\n",
				e.Exception.Message,
				"\\r\\n",
				e.Exception.StackTrace
			});
			if (e.Exception.InnerException != null)
			{
				text = string.Concat(new object[]
				{
					text,
					"\\r\\n---\\r\\n",
					e.Exception.InnerException,
					"\\r\\n",
					e.Exception.InnerException.Message,
					"\\r\\n",
					e.Exception.InnerException.StackTrace,
					"\\r\\n----\\r\\n"
				});
			}
			string tempFile = HelperFunctions.GetTempFile(".unobserved.txt", false);
			File.WriteAllText(tempFile, text);
			CrashReporter.get_AdditionalFiles().Add(tempFile);
			CrashReporter.TaskSchedulerUnobservedTaskExceptionHandler(sender, e);
		}

		private void CrashReporter_exceptionHandled(Exception e)
		{
			string text = string.Concat(new object[]
			{
				e,
				"\\r\\n",
				e.Message,
				"\\r\\n",
				e.StackTrace
			});
			if (e.InnerException != null)
			{
				text = string.Concat(new object[]
				{
					text,
					"\\r\\n---\\r\\n",
					e.InnerException,
					"\\r\\n",
					e.InnerException.Message,
					"\\r\\n",
					e.InnerException.StackTrace,
					"\\r\\n----\\r\\n"
				});
			}
			string tempFile = HelperFunctions.GetTempFile(".raised.txt", false);
			File.WriteAllText(tempFile, text);
			CrashReporter.get_AdditionalFiles().Add(tempFile);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			base.Startup += new StartupEventHandler(this.Application_Startup);
			base.DispatcherUnhandledException += new DispatcherUnhandledExceptionEventHandler(this.App_DispatcherUnhandledException);
			base.StartupUri = new Uri("Splash.xaml", UriKind.Relative);
			Uri resourceLocator = new Uri("/CyberGhost;component/app.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode, STAThread]
		public static void Main()
		{
			App expr_05 = new App();
			expr_05.InitializeComponent();
			expr_05.Run();
		}
	}
}

using CyberGhost.Communication;
using CyberGhost.Components;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows.Controls;
using Microsoft.Win32;
using MobileConcepts.Components.Log;
using MobileConcepts.Components.MCTreeList;
using MobileConcepts.Helpers;
using Newtonsoft.Json;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost
{
	public class DebugWindow : ModernWindow, IComponentConnector, IDisposable
	{
		internal static class SerializerSettings
		{
			public static JsonSerializerSettings GetDefaultSerializerSettings()
			{
				JsonSerializerSettings expr_05 = new JsonSerializerSettings();
				expr_05.set_NullValueHandling(1);
				expr_05.set_StringEscapeHandling(0);
				expr_05.set_Formatting(0);
				expr_05.set_ReferenceLoopHandling(1);
				return expr_05;
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass6_0
		{
			public string debugData;

			public DebugWindow <>4__this;

			internal void <CyberGhostCom_OnDebugDataAvailableEvent>b__0(object o)
			{
				this.<>4__this._mTreeModel.DeserializeDebugData(this.debugData);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <SendToSupport_Click>d__8 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public DebugWindow <>4__this;

			private TaskAwaiter<string> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				DebugWindow debugWindow = this.<>4__this;
				try
				{
					CgApiLogData cgApiLogData;
					CgApiLogSender cgApiLogSender;
					if (num != 0)
					{
						DebugCommentDialog debugCommentDialog = new DebugCommentDialog();
						if (!(debugCommentDialog.ShowDialog() == true) || !debugCommentDialog.SendLog)
						{
							goto IL_184;
						}
						string responseText = debugCommentDialog.ResponseText;
						string logData = JsonConvert.SerializeObject(debugWindow._mTreeModel.GetLogData(), DebugWindow.SerializerSettings.GetDefaultSerializerSettings());
						CgApiLogData expr_69 = new CgApiLogData();
						expr_69.set_Type("client-log");
						expr_69.set_LogData(logData);
						expr_69.set_Comment(responseText);
						expr_69.set_Os("win");
						expr_69.set_DataType("full-log");
						expr_69.set_CgVersion(Assembly.GetExecutingAssembly().GetName().Version.ToString());
						cgApiLogData = expr_69;
						cgApiLogSender = new CgApiLogSender();
					}
					try
					{
						TaskAwaiter<string> taskAwaiter;
						if (num != 0)
						{
							taskAwaiter = cgApiLogSender.SendLogData(cgApiLogData).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, DebugWindow.<SendToSupport_Click>d__8>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<string>);
							this.<>1__state = -1;
						}
						string arg_12A_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<string>);
						string arg = arg_12A_0;
						ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.DebugWindow.SendToSupport_Header, string.Format(CyberGhost.Translations.DebugWindow.SendToSupport_Message, arg));
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("{0}::{1} FAILED SEND LOGDATA {2}", debugWindow.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
						ModernDialogExtension.ShowDialogOk(Alerts.DebugWindow_SendToSupport_Click_Sending_error, Alerts.DebugWindow_SendToSupport_Click_Could_not_send_Logfile_to_the_support_);
					}
					IL_184:;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <ModernWindow_ContentRendered>d__11 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public DebugWindow <>4__this;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				DebugWindow @object = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = Task.Factory.StartNew(new Action(@object.CreateInitLogItem)).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, DebugWindow.<ModernWindow_ContentRendered>d__11>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					ObjectHolder.DebugWindowIsOpen = true;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		private readonly SynchronizationContext _context;

		private DebugTreeModel _mTreeModel;

		internal ModernProgressRing LoadingRingForNodes;

		internal TreeList DebugGrid;

		private bool _contentLoaded;

		public DebugWindow()
		{
			this._context = SynchronizationContext.Current;
			this.InitializeComponent();
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.add_OnDebugDataAvailableEvent(new EventSender.DebugDataAvailableEvent(this.CyberGhostCom_OnDebugDataAvailableEvent));
			}
			ObjectHolder.DebugWindow = this;
			Task.Factory.StartNew(new Action(this.FillTreeListView));
		}

		public void Dispose()
		{
			ObjectHolder.DebugWindowIsOpen = false;
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.remove_OnDebugDataAvailableEvent(new EventSender.DebugDataAvailableEvent(this.CyberGhostCom_OnDebugDataAvailableEvent));
			}
		}

		private void FillTreeListView()
		{
			this._mTreeModel = new DebugTreeModel();
			string connectionLog = ObjectHolder.CyberGhostCom.GetConnectionLog();
			this._mTreeModel.DeserializeDebugData(connectionLog);
			this._context.Post(new SendOrPostCallback(this.<FillTreeListView>b__4_0), null);
		}

		public void CreateNewSession()
		{
			this._mTreeModel.CreateNewSession(0);
		}

		private void CyberGhostCom_OnDebugDataAvailableEvent(object sender, string debugData)
		{
			DebugWindow.<>c__DisplayClass6_0 <>c__DisplayClass6_ = new DebugWindow.<>c__DisplayClass6_0();
			<>c__DisplayClass6_.<>4__this = this;
			<>c__DisplayClass6_.debugData = debugData;
			try
			{
				this._context.Post(new SendOrPostCallback(<>c__DisplayClass6_.<CyberGhostCom_OnDebugDataAvailableEvent>b__0), null);
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} FAILED POST DEBUG DATA {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
		}

		private void ClearLog_Click(object sender, RoutedEventArgs e)
		{
			ObjectHolder.CyberGhostCom.ClearDebugLog();
			this.FillTreeListView();
		}

		[AsyncStateMachine(typeof(DebugWindow.<SendToSupport_Click>d__8))]
		private void SendToSupport_Click(object sender, RoutedEventArgs e)
		{
			DebugWindow.<SendToSupport_Click>d__8 <SendToSupport_Click>d__;
			<SendToSupport_Click>d__.<>4__this = this;
			<SendToSupport_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SendToSupport_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SendToSupport_Click>d__.<>t__builder;
			<>t__builder.Start<DebugWindow.<SendToSupport_Click>d__8>(ref <SendToSupport_Click>d__);
		}

		private void Save_Click(object sender, RoutedEventArgs e)
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog
			{
				Filter = CyberGhost.Translations.DebugWindow.SaveLogFilter,
				DefaultExt = ".json",
				FileName = "DebugLogJSON"
			};
			if (saveFileDialog.ShowDialog() == true)
			{
				this.SaveSilent(saveFileDialog.FileName);
			}
		}

		public void SaveSilent(string filename)
		{
			List<Dictionary<string, object>> logData = this._mTreeModel.GetLogData();
			if (logData.Count > 0)
			{
				string contents = JsonConvert.SerializeObject(logData, DebugWindow.SerializerSettings.GetDefaultSerializerSettings());
				if (File.Exists(filename))
				{
					File.Delete(filename);
				}
				File.WriteAllText(filename, contents, Encoding.Unicode);
			}
		}

		[AsyncStateMachine(typeof(DebugWindow.<ModernWindow_ContentRendered>d__11))]
		private void ModernWindow_ContentRendered(object sender, EventArgs e)
		{
			DebugWindow.<ModernWindow_ContentRendered>d__11 <ModernWindow_ContentRendered>d__;
			<ModernWindow_ContentRendered>d__.<>4__this = this;
			<ModernWindow_ContentRendered>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ModernWindow_ContentRendered>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ModernWindow_ContentRendered>d__.<>t__builder;
			<>t__builder.Start<DebugWindow.<ModernWindow_ContentRendered>d__11>(ref <ModernWindow_ContentRendered>d__);
		}

		private void CreateInitLogItem()
		{
			McInitLogItem expr_05 = new McInitLogItem();
			expr_05.get_User().set_UserId((ObjectHolder.CurrentUser == null) ? "-1" : ObjectHolder.CurrentUser.get_Id().ToString());
			expr_05.get_User().set_UserName((ObjectHolder.CurrentUser == null) ? "NOT LOGGED IN" : ObjectHolder.CurrentUser.get_UserName());
			McInitLogItem aEvent = expr_05;
			ObjectHolder.EventLogger.LogLocalEvent(aEvent);
		}

		private void DebugWindow_OnClosing(object sender, CancelEventArgs e)
		{
			ObjectHolder.DebugWindowIsOpen = false;
		}

		private void DebugWindow_OnSizeChanged(object sender, SizeChangedEventArgs e)
		{
			GridView gridView = this.DebugGrid.View as GridView;
			List<GridViewColumn> list = new List<GridViewColumn>();
			double num = 0.0;
			int num2 = 1;
			foreach (GridViewColumn current in gridView.Columns)
			{
				if (num2 == gridView.Columns.Count)
				{
					list.Add(current);
				}
				else
				{
					num += current.ActualWidth;
				}
				num2++;
			}
			foreach (GridViewColumn current2 in list)
			{
				double num3 = (this.DebugGrid.ActualWidth - num) / (double)list.Count;
				if (num3 >= 0.0)
				{
					current2.Width = num3 - 25.0;
				}
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/debugwindow.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((DebugWindow)target).Closing += new CancelEventHandler(this.DebugWindow_OnClosing);
				((DebugWindow)target).ContentRendered += new EventHandler(this.ModernWindow_ContentRendered);
				((DebugWindow)target).SizeChanged += new SizeChangedEventHandler(this.DebugWindow_OnSizeChanged);
				return;
			case 2:
				this.LoadingRingForNodes = (ModernProgressRing)target;
				return;
			case 3:
				this.DebugGrid = (TreeList)target;
				return;
			case 4:
				((Button)target).Click += new RoutedEventHandler(this.ClearLog_Click);
				return;
			case 5:
				((Button)target).Click += new RoutedEventHandler(this.SendToSupport_Click);
				return;
			case 6:
				((Button)target).Click += new RoutedEventHandler(this.Save_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <FillTreeListView>b__4_0(object o)
		{
			this.DebugGrid.Visibility = Visibility.Visible;
			this.LoadingRingForNodes.Visibility = Visibility.Collapsed;
			this.DebugGrid.set_Model(this._mTreeModel);
		}
	}
}

using System;

namespace CyberGhost
{
	public enum InitStatus
	{
		Ok,
		PreconditionFailed,
		NotOnline
	}
}

using ARSoft.Tools.Net;
using CyberGhost.Communication;
using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Components.Popups;
using CyberGhost.Helpers;
using CyberGhost.Pages;
using CyberGhost.Pages.Profiles;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.RESTCommunicator.OAuth;
using CyberGhost.Settings;
using CyberGhost.Settings.Helpers;
using CyberGhost.Settings.Settings;
using CyberGhost.Settings.SettingsItems;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using CyberGhost.VPNServices.Helpers;
using FirstFloor.ModernUI.Presentation;
using FirstFloor.ModernUI.Windows.Navigation;
using Hardcodet.Wpf.TaskbarNotification;
using Microsoft.Win32;
using MobileConcepts.Components.MCWebBrowser;
using MobileConcepts.Components.Network;
using MobileConcepts.Components.SingleInstance;
using MobileConcepts.Components.VirtualDesktop.WPF;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace CyberGhost
{
	public class MainWindow : ModernWindowWithMessage, IComponentConnector, IDisposable
	{
		public class TapAdapterInstallationResult
		{
			public MainWindow.TapAdapterInstallationStatus InstallationStatus;

			public Exception Exception;
		}

		public enum TapAdapterInstallationStatus
		{
			[Description("OK")]
			Ok,
			[Description("User refuses installation")]
			UserRefusesInstallation,
			[Description("Installer failed")]
			Error
		}

		internal enum ConnectResult
		{
			Ok,
			TapAdapterInstallationFailed,
			ProfileNotSet,
			CouldNotFetchServer,
			PortCheckFailed,
			CaCertificateCheckFailed,
			UserCertificateCheckFailed,
			CouldNotFetchServerConfig,
			PopupCancelled
		}

		internal class ConnectResultAdvanced
		{
			public object AdditionalData;

			public MainWindow.ConnectResult ConnectResult;

			public Exception Exception;
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass22_0
		{
			public MainWindow.TapAdapterInstallationResult res;

			public TaskCompletionSource<MainWindow.TapAdapterInstallationResult> awaiter;

			public bool forceInstall;

			internal void <CheckAndInstallTapAdapter>b__0(object o)
			{
				if (ModernDialogExtension.ShowDialogYesNo(CyberGhost.Translations.MainWindow.Driver_installation_header, CyberGhost.Translations.MainWindow.Driver_Installation_Message) == MessageBoxResult.No)
				{
					ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.Driver_installation_aborted_header, CyberGhost.Translations.MainWindow.Driver_installation_aborted_message);
					this.res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.UserRefusesInstallation;
					this.awaiter.TrySetResult(this.res);
					return;
				}
				Helpers.InstallTapResult installTapResult = Helpers.InstallTap("9.0.0.9", this.forceInstall);
				if (installTapResult.InstallationResult)
				{
					EventSender expr_5F = ObjectHolder.CyberGhostCom;
					if (expr_5F != null)
					{
						expr_5F.CorrectTapProtocolls(SettingsHolder.get_Settings().get_DisableIpV6Protocol());
					}
					SettingsHolder.get_Settings().set_TapReinstalled(false);
					this.res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Ok;
					this.awaiter.TrySetResult(this.res);
					return;
				}
				this.res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Error;
				this.res.Exception = installTapResult.Exception;
				this.awaiter.TrySetResult(this.res);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass25_0
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<CyberGhostCom_OnSetCredentialsEvent>b__0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				public MainWindow.<>c__DisplayClass25_0 <>4__this;

				private TaskAwaiter<LoginResultObject> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					MainWindow.<>c__DisplayClass25_0 <>c__DisplayClass25_ = this.<>4__this;
					try
					{
						TaskAwaiter<LoginResultObject> taskAwaiter;
						if (num != 0)
						{
							SettingsHolder.get_Settings().set_FirstStartRetries(0);
							taskAwaiter = Helper.Login(<>c__DisplayClass25_.username, <>c__DisplayClass25_.password, true).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<LoginResultObject>, MainWindow.<>c__DisplayClass25_0.<<CyberGhostCom_OnSetCredentialsEvent>b__0>d>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<LoginResultObject>);
							this.<>1__state = -1;
						}
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<LoginResultObject>);
					}
					catch (Exception exception)
					{
						this.<>1__state = -2;
						this.<>t__builder.SetException(exception);
						return;
					}
					this.<>1__state = -2;
					this.<>t__builder.SetResult();
				}

				[DebuggerHidden]
				void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
				{
					this.<>t__builder.SetStateMachine(stateMachine);
				}
			}

			public string username;

			public string password;

			[AsyncStateMachine(typeof(MainWindow.<>c__DisplayClass25_0.<<CyberGhostCom_OnSetCredentialsEvent>b__0>d))]
			internal void <CyberGhostCom_OnSetCredentialsEvent>b__0(object o)
			{
				MainWindow.<>c__DisplayClass25_0.<<CyberGhostCom_OnSetCredentialsEvent>b__0>d <<CyberGhostCom_OnSetCredentialsEvent>b__0>d;
				<<CyberGhostCom_OnSetCredentialsEvent>b__0>d.<>4__this = this;
				<<CyberGhostCom_OnSetCredentialsEvent>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<CyberGhostCom_OnSetCredentialsEvent>b__0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<CyberGhostCom_OnSetCredentialsEvent>b__0>d.<>t__builder;
				<>t__builder.Start<MainWindow.<>c__DisplayClass25_0.<<CyberGhostCom_OnSetCredentialsEvent>b__0>d>(ref <<CyberGhostCom_OnSetCredentialsEvent>b__0>d);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass68_0
		{
			public TrafficChangeParams e;

			public MainWindow <>4__this;

			internal void <CyberGhostCom_OnTrafficChangedEvent>b__0(object o)
			{
				try
				{
					bool expr_21 = this.<>4__this.ComputeTrafficData((long)this.e.BytesReceived, (long)this.e.BytesSend);
					if (!expr_21)
					{
						GuiHelper.ResetTrafficData();
					}
					double num = Math.Round(ObjectHolder.Download.Value, 2);
					double num2 = Math.Round(ObjectHolder.DownloadAll.Value, 2);
					if (expr_21 && num < num2)
					{
						TrafficDataChangedEventArgs expr_5D = new TrafficDataChangedEventArgs();
						expr_5D.set_MaxSpeed(ObjectHolder.MaxSpeed);
						expr_5D.set_CurrentSpeed(ObjectHolder.Download);
						expr_5D.set_TotalReceived(ObjectHolder.DownloadAll);
						TrafficDataChangedEventArgs trafficDataChangedEventArgs = expr_5D;
						if (ObjectHolder.CurrentConnectingScreen != null)
						{
							ITrafficDataChanged expr_90 = ObjectHolder.CurrentConnectingScreen as ITrafficDataChanged;
							if (expr_90 != null)
							{
								expr_90.OnTrafficDataChanged(trafficDataChangedEventArgs);
							}
						}
						if (ObjectHolder.NotifiyIcon != null)
						{
							NotifiyHome expr_A8 = ObjectHolder.NotifiyIcon;
							if (expr_A8 != null)
							{
								expr_A8.OnTrafficDataChanged(trafficDataChangedEventArgs);
							}
						}
					}
				}
				catch (Exception)
				{
				}
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				private TaskAwaiter<bool> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					try
					{
						try
						{
							TaskAwaiter<bool> taskAwaiter;
							if (num != 0)
							{
								taskAwaiter = ObjectHolder.MainForm.UpdateLoggedInUser(true, true).GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									this.<>1__state = 0;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, MainWindow.<>c.<<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d>(ref taskAwaiter, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter<bool>);
								this.<>1__state = -1;
							}
							taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter<bool>);
						}
						catch (Exception)
						{
						}
					}
					catch (Exception exception)
					{
						this.<>1__state = -2;
						this.<>t__builder.SetException(exception);
						return;
					}
					this.<>1__state = -2;
					this.<>t__builder.SetResult();
				}

				[DebuggerHidden]
				void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
				{
					this.<>t__builder.SetStateMachine(stateMachine);
				}
			}

			[StructLayout(LayoutKind.Auto)]
			private struct <<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				private TaskAwaiter <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					try
					{
						TaskAwaiter taskAwaiter;
						if (num != 0)
						{
							LogHelper.LogMessage("!!!--- FETCHING NEW SERVER ---!!!");
							ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
							taskAwaiter = Task.Delay(10000).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, MainWindow.<>c.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter);
							this.<>1__state = -1;
						}
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter);
						ObjectHolder.MainForm.Connect(true, false, false);
					}
					catch (Exception exception)
					{
						this.<>1__state = -2;
						this.<>t__builder.SetException(exception);
						return;
					}
					this.<>1__state = -2;
					this.<>t__builder.SetResult();
				}

				[DebuggerHidden]
				void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
				{
					this.<>t__builder.SetStateMachine(stateMachine);
				}
			}

			[StructLayout(LayoutKind.Auto)]
			private struct <<ClearResumePurchaseCookie>b__81_0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				private TaskAwaiter<Dictionary<string, string>> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					try
					{
						TaskAwaiter<Dictionary<string, string>> taskAwaiter;
						if (num != 0)
						{
							CookieReader arg_1E_0 = new CookieReader();
							ObjectHolder.ResumePurchaseUrl = string.Empty;
							taskAwaiter = arg_1E_0.GetCookieContainerFromUrl("https://www.cyberghostvpn.com/en_us/clear?type=gc").GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<Dictionary<string, string>>, MainWindow.<>c.<<ClearResumePurchaseCookie>b__81_0>d>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<Dictionary<string, string>>);
							this.<>1__state = -1;
						}
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<Dictionary<string, string>>);
					}
					catch (Exception exception)
					{
						this.<>1__state = -2;
						this.<>t__builder.SetException(exception);
						return;
					}
					this.<>1__state = -2;
					this.<>t__builder.SetResult();
				}

				[DebuggerHidden]
				void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
				{
					this.<>t__builder.SetStateMachine(stateMachine);
				}
			}

			public static readonly MainWindow.<>c <>9 = new MainWindow.<>c();

			public static SendOrPostCallback <>9__69_0;

			public static SendOrPostCallback <>9__73_0;

			public static SendOrPostCallback <>9__73_3;

			public static SendOrPostCallback <>9__73_6;

			public static SendOrPostCallback <>9__73_7;

			public static SendOrPostCallback <>9__73_8;

			public static SendOrPostCallback <>9__73_9;

			public static SendOrPostCallback <>9__73_11;

			public static SendOrPostCallback <>9__73_12;

			public static SendOrPostCallback <>9__73_13;

			public static SendOrPostCallback <>9__73_14;

			public static Action <>9__75_0;

			public static Action <>9__75_1;

			public static SendOrPostCallback <>9__81_0;

			public static SendOrPostCallback <>9__82_0;

			public static SendOrPostCallback <>9__95_2;

			public static SendOrPostCallback <>9__98_0;

			public static Func<Task> <>9__112_1;

			public static Func<Task> <>9__112_2;

			public static Func<Task> <>9__112_3;

			public static Func<Task> <>9__112_4;

			public static Func<Task> <>9__112_5;

			public static Func<Task> <>9__112_7;

			[AsyncStateMachine(typeof(MainWindow.<>c.<<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d))]
			internal void <CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0(object o)
			{
				MainWindow.<>c.<<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d <<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d;
				<<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d.<>t__builder;
				<>t__builder.Start<MainWindow.<>c.<<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d>(ref <<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d);
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_0(object o)
			{
				Navigation.ShowMessageOverlay("ConnectionDropped", true);
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_3(object o)
			{
				NotificationPopup.ShowWithoutResult(PopUpZone.Connected);
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_6(object state)
			{
				IconHelpers.Instance.SetTrayIconBySelectedProfile(false, false);
				Navigation.NavigateToConnectedScreen();
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_7(object state)
			{
				ObjectHolder.MainForm.Disconnect();
				ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				Navigation.GoHome();
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_8(object o)
			{
				ObjectHolder.MainForm.Connect(true, false, false);
			}

			[AsyncStateMachine(typeof(MainWindow.<>c.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d))]
			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9(object o)
			{
				MainWindow.<>c.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d <<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d;
				<<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d.<>t__builder;
				<>t__builder.Start<MainWindow.<>c.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d>(ref <<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d);
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_11(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_12(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
				ObjectHolder.CyberGhostCom.UnlockInternetConnection();
				Navigation.GoHome();
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_13(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_14(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
			}

			internal void <DoAfterConnect>b__75_0()
			{
				HelperFunctions.StartProcessList(ObjectHolder.AppListLaunchConnectAfter);
				foreach (string current in ObjectHolder.AppListKillConnectAfter)
				{
					ObjectHolder.CyberGhostCom.CloseApplication(current);
				}
			}

			internal void <DoAfterConnect>b__75_1()
			{
				ProcessHelpers.StartProcessListAndDisableDebugger(ObjectHolder.AppListLaunchConnectAfterOnce);
				ObjectHolder.AppListLaunchConnectAfterOnce.Clear();
			}

			[AsyncStateMachine(typeof(MainWindow.<>c.<<ClearResumePurchaseCookie>b__81_0>d))]
			internal void <ClearResumePurchaseCookie>b__81_0(object o)
			{
				MainWindow.<>c.<<ClearResumePurchaseCookie>b__81_0>d <<ClearResumePurchaseCookie>b__81_0>d;
				<<ClearResumePurchaseCookie>b__81_0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<ClearResumePurchaseCookie>b__81_0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<ClearResumePurchaseCookie>b__81_0>d.<>t__builder;
				<>t__builder.Start<MainWindow.<>c.<<ClearResumePurchaseCookie>b__81_0>d>(ref <<ClearResumePurchaseCookie>b__81_0>d);
			}

			internal void <UpdateLoggedInUser>b__82_0(object o)
			{
				if (SettingsHolder.get_Settings().get_LastUserId() != 0)
				{
					ObjectHolder.MainForm.ShowMe();
					Navigation.ShowMessageOverlay("Logout", false);
				}
				SettingsHolder.get_Settings().set_LastUserId(ObjectHolder.CurrentUser.get_Id());
				SettingsHolder.get_Settings().set_LastProductId(ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Id());
				SettingsHolder.get_Settings().SaveSettingsAsync(false).ConfigureAwait(false);
			}

			internal void <Disconnect>b__95_2(object o)
			{
				Navigation.GoHome();
			}

			internal void <ProcessPreflightConnectResult>b__98_0(object o)
			{
				Navigation.GoHome();
			}

			internal Task ctor>b__112_1()
			{
				return Helper.OpenAuthLink("go_account", false, string.Format("&channel={0}&cc={1}", MainWindow.UpgradeChannel(), SettingsHolder.get_Settings().GetChallenge()), false, null);
			}

			internal Task ctor>b__112_2()
			{
				return Task.FromResult<Task<bool>>(Navigation.GoInAppPurchase("header_upgrade_button", null));
			}

			internal Task ctor>b__112_3()
			{
				return Task.FromResult<bool>(Navigation.GoHome());
			}

			internal Task ctor>b__112_4()
			{
				if (ObjectHolder.ConnectionStatus != -1)
				{
					if (Navigation.IsOnConnectedScreen())
					{
						Navigation.NavigateFromConnectedToProfileScreen();
					}
					else if (Navigation.IsOnProfileScreen())
					{
						Navigation.GoHome();
					}
					else
					{
						Navigation.NavigateToConnectedScreen();
					}
				}
				else
				{
					Navigation.GoHome();
				}
				return Task.FromResult<bool>(true);
			}

			internal Task ctor>b__112_5()
			{
				return Task.FromResult<bool>(Navigation.GoToPage("Settings", null, null));
			}

			internal Task ctor>b__112_7()
			{
				if (!ObjectHolder.DebugWindowIsOpen)
				{
					ObjectHolder.DebugWindowIsOpen = true;
					new DebugWindow().Show();
				}
				return null;
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <CyberGhostCom_OnUpdateDiEvent>d__70 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public string aDistinctId;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						ObjectHolder.IsFirstStart = false;
						SettingsHolder.get_Settings().set_FirstStartRetries(0);
						if (!string.IsNullOrEmpty(this.aDistinctId))
						{
							goto IL_87;
						}
						taskAwaiter = MixpanelEventSender.CheckAlias().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, MainWindow.<CyberGhostCom_OnUpdateDiEvent>d__70>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					IL_87:;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass73_0
		{
			public ConnectionStatusChangedEventArgs e;

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__4(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
				Theming.CurrentThemeSet = Theming.ThemeSet.Regular;
				if (this.e.CurrentConnectionStatus == -1)
				{
					Navigation.GoHome();
				}
				NotifiyHome expr_35 = ObjectHolder.NotifiyIcon;
				if (expr_35 == null)
				{
					return;
				}
				expr_35.OnAfterDisconnected();
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__15(object o)
			{
				CommandManager.InvalidateRequerySuggested();
				if (ObjectHolder.CurrentProfile != null)
				{
					try
					{
						IConnectionStates expr_16 = ObjectHolder.CurrentProfile as IConnectionStates;
						if (expr_16 != null)
						{
							expr_16.OnConnectionStatusChanged(this.e.CurrentConnectionStatus);
						}
					}
					catch (Exception ex)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnConnectionStatusChanged FOR PROFILE: {0}", ex.Message));
					}
					try
					{
						NotifiyHome expr_4C = ObjectHolder.NotifiyIcon;
						if (expr_4C != null)
						{
							expr_4C.OnConnectionStatusChanged(this.e.CurrentConnectionStatus);
						}
					}
					catch (Exception ex2)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnConnectionStatusChanged FOR NotifyIcon: {0}", ex2.Message));
					}
				}
				if (CyberGhost.Pages.Home._Home != null)
				{
					CyberGhost.Pages.Home._Home.OnConnectionStatusChanged(this.e.CurrentConnectionStatus);
				}
				if (ObjectHolder.CurrentConnectingScreen != null)
				{
					try
					{
						IConnectionStates expr_A4 = ObjectHolder.CurrentConnectingScreen;
						if (expr_A4 != null)
						{
							expr_A4.OnConnectionStatusChanged(this.e.CurrentConnectionStatus);
						}
					}
					catch (Exception ex3)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnConnectionStatusChanged FOR CONNECTING SCREEN: {0}", ex3.Message));
					}
				}
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass73_1
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				public MainWindow.<>c__DisplayClass73_1 <>4__this;

				private TaskAwaiter<bool> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					MainWindow.<>c__DisplayClass73_1 <>c__DisplayClass73_ = this.<>4__this;
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							if (<>c__DisplayClass73_.CS$<>8__locals1.e.CurrentConnectionStatus == 4000)
							{
								Navigation.ShowMessageOverlay("AuthError", true);
								goto IL_125;
							}
							if (<>c__DisplayClass73_.CS$<>8__locals1.e.CurrentConnectionStatus == 6010)
							{
								if (<>c__DisplayClass73_.wc)
								{
									Navigation.ShowMessageOverlay("ConnectionDropped", true);
									goto IL_125;
								}
								taskAwaiter = new CgApiServiceStatus().Fetch().GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									this.<>1__state = 0;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, MainWindow.<>c__DisplayClass73_1.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d>(ref taskAwaiter, ref this);
									return;
								}
							}
							else
							{
								if (<>c__DisplayClass73_.CS$<>8__locals1.e.CurrentConnectionStatus == 10010)
								{
									Navigation.ShowMessageOverlay("VpnExited", true);
									goto IL_125;
								}
								Navigation.ShowMessageOverlay(<>c__DisplayClass73_.wc ? "ConnectionDropped" : "ServerNotReachable", true);
								goto IL_125;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<bool>);
							this.<>1__state = -1;
						}
						bool arg_111_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<bool>);
						Navigation.ShowMessageOverlay(arg_111_0 ? "NoServerAvailable" : "ServiceNotReachable", true);
						IL_125:;
					}
					catch (Exception exception)
					{
						this.<>1__state = -2;
						this.<>t__builder.SetException(exception);
						return;
					}
					this.<>1__state = -2;
					this.<>t__builder.SetResult();
				}

				[DebuggerHidden]
				void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
				{
					this.<>t__builder.SetStateMachine(stateMachine);
				}
			}

			public bool wc;

			public MainWindow.<>c__DisplayClass73_0 CS$<>8__locals1;

			[AsyncStateMachine(typeof(MainWindow.<>c__DisplayClass73_1.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d))]
			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__10(object o)
			{
				MainWindow.<>c__DisplayClass73_1.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d <<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d;
				<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d.<>4__this = this;
				<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d.<>t__builder;
				<>t__builder.Start<MainWindow.<>c__DisplayClass73_1.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d>(ref <<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass74_0
		{
			public bool isReconnect;

			public bool isAppProtection;

			internal void <DoBeforeConnect>b__0(object o)
			{
				if (ObjectHolder.CurrentProfile != null)
				{
					try
					{
						IConnectionStates expr_11 = ObjectHolder.CurrentProfile as IConnectionStates;
						if (expr_11 != null)
						{
							expr_11.OnBeforeConnect(this.isReconnect, this.isAppProtection);
						}
					}
					catch (Exception ex)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON DoBeforeConnect FOR PROFILE: {0}", ex.Message));
					}
				}
				try
				{
					NotifiyHome expr_48 = ObjectHolder.NotifiyIcon;
					if (expr_48 != null)
					{
						expr_48.OnBeforeConnect(this.isReconnect, this.isAppProtection);
					}
				}
				catch (Exception ex2)
				{
					LogHelper.LogMessage(string.Format("EXCEPTION ON DoBeforeConnect FOR NotifyIcon: {0}", ex2.Message));
				}
				if (ObjectHolder.CurrentConnectingScreen != null)
				{
					try
					{
						IConnectionStates expr_85 = ObjectHolder.CurrentConnectingScreen;
						if (expr_85 != null)
						{
							expr_85.OnBeforeConnect(this.isReconnect, this.isAppProtection);
						}
					}
					catch (Exception ex3)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON DoBeforeConnect FOR CONNECTING SCREEN: {0}", ex3.Message));
					}
				}
				if (CyberGhost.Pages.Home._Home != null)
				{
					CyberGhost.Pages.Home._Home.OnBeforeConnect(this.isReconnect, this.isAppProtection);
				}
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <UpdateLoggedInUser>d__82 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			public bool forceUserRefresh;

			public MainWindow <>4__this;

			public bool updateStatus;

			private TaskAwaiter<bool> <>u__1;

			private TaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				bool result;
				try
				{
					TaskAwaiter taskAwaiter;
					TaskAwaiter<bool> taskAwaiter2;
					if (num != 0)
					{
						if (num == 1)
						{
							taskAwaiter = this.<>u__2;
							this.<>u__2 = default(TaskAwaiter);
							this.<>1__state = -1;
							goto IL_1A4;
						}
						if (!this.forceUserRefresh && ObjectHolder.CurrentUser != null)
						{
							goto IL_AC;
						}
						taskAwaiter2 = Helper.RefreshCurrentUser().GetAwaiter();
						if (!taskAwaiter2.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter2;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, MainWindow.<UpdateLoggedInUser>d__82>(ref taskAwaiter2, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter2 = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					taskAwaiter2.GetResult();
					taskAwaiter2 = default(TaskAwaiter<bool>);
					IL_AC:
					if (ObjectHolder.CurrentUser == null)
					{
						result = false;
						goto IL_1D6;
					}
					if (SettingsHolder.get_Settings().get_LastUserId() != ObjectHolder.CurrentUser.get_Id())
					{
						mainWindow.OnUserOrPlanHasChanged();
						GuiHelper.ResetProfilesToDefault(null);
						SynchronizationContext arg_101_0 = ObjectHolder.MainContext;
						SendOrPostCallback arg_101_1;
						if ((arg_101_1 = MainWindow.<>c.<>9__82_0) == null)
						{
							arg_101_1 = (MainWindow.<>c.<>9__82_0 = new SendOrPostCallback(MainWindow.<>c.<>9.<UpdateLoggedInUser>b__82_0));
						}
						arg_101_0.Post(arg_101_1, null);
					}
					if (ObjectHolder.CurrentUser.get_Subscription() != null && SettingsHolder.get_Settings().get_LastUserId() == ObjectHolder.CurrentUser.get_Id() && SettingsHolder.get_Settings().get_LastProductId() != ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Id())
					{
						GuiHelper.ResetProfilesToDefault(null);
						ObjectHolder.MainContext.Post(new SendOrPostCallback(mainWindow.<UpdateLoggedInUser>b__82_1), null);
					}
					if (!this.updateStatus)
					{
						goto IL_1B3;
					}
					taskAwaiter = mainWindow.UpdateStatus().GetAwaiter();
					if (!taskAwaiter.IsCompleted)
					{
						this.<>1__state = 1;
						this.<>u__2 = taskAwaiter;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, MainWindow.<UpdateLoggedInUser>d__82>(ref taskAwaiter, ref this);
						return;
					}
					IL_1A4:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					IL_1B3:
					mainWindow.UpdateUserLabel();
					result = true;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_1D6:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <EnablePollUser>d__84 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			public MainWindow <>4__this;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = mainWindow.UpdateStatus().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, MainWindow.<EnablePollUser>d__84>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					try
					{
						mainWindow._userPollTimer = new System.Timers.Timer((double)(ObjectHolder.PollUserTimer * 1000))
						{
							Enabled = true
						};
						mainWindow._userPollTimer.Elapsed += new ElapsedEventHandler(mainWindow.PollUserTimerTick);
						mainWindow._userPollTimer.Start();
						OAuthRequestInfos expr_B9 = CgApiGlobalOAuthData.get_OAuthRequestInfos();
						expr_B9.UserNotAuthorizedErrorHandler = (JsonOAuthRestClient.OnHttpErrorHandler)Delegate.Combine(expr_B9.UserNotAuthorizedErrorHandler, new JsonOAuthRestClient.OnHttpErrorHandler(mainWindow.JsonOAuthRestClient_UserNotAuthorized));
						OAuthRequestInfos expr_DF = CgApiGlobalOAuthData.get_OAuthRequestInfos();
						expr_DF.ServiceNotAvailablErrorHandler = (JsonOAuthRestClient.OnHttpErrorHandler)Delegate.Combine(expr_DF.ServiceNotAvailablErrorHandler, new JsonOAuthRestClient.OnHttpErrorHandler(mainWindow.JsonOAuthRestClient_ServiceNotAvailable));
						ObjectHolder.UserNotAuthorizedErrorHandler = new JsonOAuthRestClient.OnHttpErrorHandler(mainWindow.JsonOAuthRestClient_UserNotAuthorized);
						ObjectHolder.ServiceNotAvailablErrorHandler = new JsonOAuthRestClient.OnHttpErrorHandler(mainWindow.JsonOAuthRestClient_ServiceNotAvailable);
						mainWindow.PollUserTimerTick(null, null);
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("EnablePollUser {0}", ex.Message));
					}
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <JsonOAuthRestClient_UserNotAuthorized>d__86 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool?> <>t__builder;

			public MainWindow <>4__this;

			private TaskAwaiter<CgApiUser> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow @object = this.<>4__this;
				bool? result;
				try
				{
					TaskAwaiter<CgApiUser> taskAwaiter;
					if (num != 0)
					{
						SettingsHolder.get_Settings().set_ENC_AuthToken(string.Empty);
						taskAwaiter = Helper.GetCurrentUserFromSettings().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<CgApiUser>, MainWindow.<JsonOAuthRestClient_UserNotAuthorized>d__86>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<CgApiUser>);
						this.<>1__state = -1;
					}
					CgApiUser arg_7F_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<CgApiUser>);
					ObjectHolder.CurrentUser = arg_7F_0;
					ObjectHolder.MainContext.Post(new SendOrPostCallback(@object.<JsonOAuthRestClient_UserNotAuthorized>b__86_0), null);
					result = new bool?(true);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <DoLogout>d__87 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			public MainWindow <>4__this;

			private TaskAwaiter<bool> <>u__1;

			private TaskAwaiter<LoginResultObject> <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				bool result;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						TaskAwaiter<LoginResultObject> taskAwaiter2;
						if (num != 1)
						{
							mainWindow.LblHeaderLogin.set_DisplayName(Alerts.MainWindow_DoLogout_Logging_out);
							if (Theming.CurrentTheme == Theming.Theme.Pro)
							{
								if (ObjectHolder.CurrentUser == null)
								{
									goto IL_12B;
								}
								taskAwaiter = ObjectHolder.CurrentUser.Logout().GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									this.<>1__state = 0;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, MainWindow.<DoLogout>d__87>(ref taskAwaiter, ref this);
									return;
								}
								goto IL_11B;
							}
							else
							{
								taskAwaiter2 = Helper.Login().GetAwaiter();
								if (!taskAwaiter2.IsCompleted)
								{
									this.<>1__state = 1;
									this.<>u__2 = taskAwaiter2;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<LoginResultObject>, MainWindow.<DoLogout>d__87>(ref taskAwaiter2, ref this);
									return;
								}
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__2;
							this.<>u__2 = default(TaskAwaiter<LoginResultObject>);
							this.<>1__state = -1;
						}
						LoginResultObject arg_F4_0 = taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<LoginResultObject>);
						Navigation.GoToPage("home", null, null);
						mainWindow.OnUserOrPlanHasChanged();
						result = (arg_F4_0.User != null);
						goto IL_170;
					}
					taskAwaiter = this.<>u__1;
					this.<>u__1 = default(TaskAwaiter<bool>);
					this.<>1__state = -1;
					IL_11B:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					IL_12B:
					SettingsHolder.get_Settings().set_ENC_AuthToken(string.Empty);
					ObjectHolder.CurrentUser = null;
					mainWindow.OnUserOrPlanHasChanged();
					Navigation.GoToPage("Login", null, null);
					result = true;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_170:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <PollUserTimerTick>d__88 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public MainWindow <>4__this;

			public object source;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = mainWindow.UpdateLoggedInUser(this.source != null, this.source != null).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, MainWindow.<PollUserTimerTick>d__88>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <UpdateStatus>d__89 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			private CgApiServiceStatus <status>5__1;

			public MainWindow <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				try
				{
					if (num != 0)
					{
						this.<status>5__1 = (ObjectHolder.CurrentStatus ?? new CgApiServiceStatus());
					}
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							if (!(DateTime.Now - this.<status>5__1.LastItemFetch > TimeSpan.FromSeconds(30.0)))
							{
								goto IL_BC;
							}
							taskAwaiter = this.<status>5__1.Fetch().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, MainWindow.<UpdateStatus>d__89>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<bool>);
							this.<>1__state = -1;
						}
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<bool>);
						IL_BC:
						ObjectHolder.PollUserTimer = this.<status>5__1.get_StatusUpdateInterval();
						if (mainWindow._userPollTimer != null)
						{
							mainWindow._userPollTimer.Interval = (double)(ObjectHolder.PollUserTimer * 1000);
						}
						ObjectHolder.CurrentStatus = this.<status>5__1;
						EventSender expr_FB = ObjectHolder.CyberGhostCom;
						if (expr_FB != null)
						{
							expr_FB.GetConnectionStatus();
						}
						CyberGhost.Pages.Home expr_10C = CyberGhost.Pages.Home._Home;
						if (expr_10C != null)
						{
							expr_10C.UpdateMotd();
						}
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("COULD NOT UPDATE STATUS {0}", ex.Message));
					}
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <ConnectWithProfile>d__97 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder;

			public MainWindow <>4__this;

			public CgBase aProfile;

			public bool isReconnect;

			public bool isAppProtection;

			public bool updateHistory;

			private TaskAwaiter<MainWindow.ConnectResultAdvanced> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				MainWindow.ConnectResultAdvanced result;
				try
				{
					TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter;
					if (num != 0)
					{
						MainWindow arg_47_0 = mainWindow;
						CgBase arg_47_1 = this.aProfile;
						string arg_47_2;
						if (!this.isReconnect)
						{
							arg_47_2 = null;
						}
						else
						{
							VpnServerLastConnectionInfos expr_28 = ObjectHolder.CurrentConnectionInfos;
							arg_47_2 = ((expr_28 != null) ? expr_28.ServerIp : null);
						}
						taskAwaiter = arg_47_0.InternalConnectWithProfile(arg_47_1, arg_47_2, this.isReconnect, this.isAppProtection, this.updateHistory, false).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, MainWindow.<ConnectWithProfile>d__97>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
						this.<>1__state = -1;
					}
					MainWindow.ConnectResultAdvanced arg_A9_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					MainWindow.ConnectResultAdvanced connectResultAdvanced = arg_A9_0;
					mainWindow.ProcessPreflightConnectResult(connectResultAdvanced);
					result = connectResultAdvanced;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <Connect>d__99 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder;

			public MainWindow <>4__this;

			public bool isReconnect;

			public bool isAppProtection;

			public bool forceCertificateCheck;

			private TaskAwaiter<MainWindow.ConnectResultAdvanced> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				MainWindow.ConnectResultAdvanced result;
				try
				{
					TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = mainWindow.InternalConnect(null, this.isReconnect, this.isAppProtection, !this.isReconnect, this.forceCertificateCheck).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, MainWindow.<Connect>d__99>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
						this.<>1__state = -1;
					}
					MainWindow.ConnectResultAdvanced arg_90_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					MainWindow.ConnectResultAdvanced connectResultAdvanced = arg_90_0;
					mainWindow.ProcessPreflightConnectResult(connectResultAdvanced);
					result = connectResultAdvanced;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <InternalConnectWithProfile>d__100 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder;

			public MainWindow <>4__this;

			public CgBase aProfile;

			public bool isReconnect;

			public string lastServerIp;

			private ServerTestResult <testResult>5__1;

			private Exception <lastException>5__2;

			public bool isAppProtection;

			public bool updateHistory;

			public bool forceCerfificateCheck;

			private TaskAwaiter<string> <>u__1;

			private ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter <>u__2;

			private ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter <>u__3;

			private TaskAwaiter<MainWindow.ConnectResultAdvanced> <>u__4;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				MainWindow.ConnectResultAdvanced result;
				try
				{
					TaskAwaiter<string> taskAwaiter;
					TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter2;
					switch (num)
					{
					case 0:
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<string>);
						int arg_241_1 = -1;
						num = -1;
						this.<>1__state = arg_241_1;
						break;
					}
					case 1:
					{
						IL_32F:
						try
						{
							ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter configuredTaskAwaiter;
							if (num != 1)
							{
								configuredTaskAwaiter = this.aProfile.GetServer(this.lastServerIp, ObjectHolder.CyberGhostCom).ConfigureAwait(false).GetAwaiter();
								if (!configuredTaskAwaiter.IsCompleted)
								{
									int arg_368_1 = 1;
									num = 1;
									this.<>1__state = arg_368_1;
									this.<>u__2 = configuredTaskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter, MainWindow.<InternalConnectWithProfile>d__100>(ref configuredTaskAwaiter, ref this);
									return;
								}
							}
							else
							{
								configuredTaskAwaiter = this.<>u__2;
								this.<>u__2 = default(ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter);
								int arg_3A0_1 = -1;
								num = -1;
								this.<>1__state = arg_3A0_1;
							}
							ServerTestResult arg_3B4_0 = configuredTaskAwaiter.GetResult();
							configuredTaskAwaiter = default(ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter);
							ServerTestResult serverTestResult = arg_3B4_0;
							this.<testResult>5__1 = serverTestResult;
						}
						catch (Exception ex)
						{
							this.<lastException>5__2 = ex;
						}
						if (mainWindow._cancelConnection)
						{
							Navigation.GoHome();
							result = new MainWindow.ConnectResultAdvanced
							{
								AdditionalData = "CANCEL",
								ConnectResult = MainWindow.ConnectResult.PopupCancelled
							};
							goto IL_58C;
						}
						if (this.<testResult>5__1 == null)
						{
							ObjectHolder.ConnectionStatus = -1;
							result = new MainWindow.ConnectResultAdvanced
							{
								ConnectResult = MainWindow.ConnectResult.CouldNotFetchServer,
								Exception = this.<lastException>5__2
							};
							goto IL_58C;
						}
						CgApiAccessToken cgApiAccessToken = this.aProfile.ProfileToFeaturesToken();
						goto IL_42F;
					}
					case 2:
						goto IL_42F;
					case 3:
					{
						taskAwaiter2 = this.<>u__4;
						this.<>u__4 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
						int arg_55C_1 = -1;
						num = -1;
						this.<>1__state = arg_55C_1;
						goto IL_561;
					}
					default:
					{
						if (ObjectHolder.CurrentUser == null)
						{
							Navigation.GoHome();
							result = new MainWindow.ConnectResultAdvanced
							{
								AdditionalData = "CANCEL",
								ConnectResult = MainWindow.ConnectResult.PopupCancelled
							};
							goto IL_58C;
						}
						CancellationTokenSource expr_54 = mainWindow._connectionCancellationTokenSource;
						if (expr_54 != null)
						{
							expr_54.Cancel(false);
						}
						mainWindow._connectionCancellationTokenSource = new CancellationTokenSource();
						mainWindow._cancelConnection = false;
						ObjectHolder.CurrentProfile = this.aProfile;
						SettingsHolder.get_Settings().set_LastConnectedProfile(this.aProfile.GetBaseName());
						SettingsHolder.get_Settings().set_ConnectedProfileName(this.aProfile.GetBaseName());
						if (Theming.CurrentTheme == Theming.Theme.Pro)
						{
							if (this.aProfile is CgProfileAnonymousBrowsing)
							{
								SettingsHolder.get_Settings().set_ConnectedProfileNamePretty(CyberGhost.Translations.Home.GhostBrowsing);
							}
							else if (this.aProfile is CgProfileAnonymousDownloading)
							{
								SettingsHolder.get_Settings().set_ConnectedProfileNamePretty(CyberGhost.Translations.Home.GhostDownloads);
							}
							else if (this.aProfile is CgProfileNetwork)
							{
								SettingsHolder.get_Settings().set_ConnectedProfileNamePretty(CyberGhost.Translations.Home.GhostNetwork);
							}
							else if (this.aProfile is CgProfileWifi)
							{
								SettingsHolder.get_Settings().set_ConnectedProfileNamePretty(CyberGhost.Translations.Home.GhostWifi);
							}
							else if (this.aProfile is CgProfileCustom)
							{
								SettingsHolder.get_Settings().set_ConnectedProfileNamePretty(CyberGhost.Translations.Home.GhostPro);
							}
							else if (this.aProfile is CgProfileUnblock)
							{
								SettingsHolder.get_Settings().set_ConnectedProfileNamePretty(CyberGhost.Translations.Home.GhostStreaming);
							}
							else if (this.aProfile is CgProfileUncensoring)
							{
								SettingsHolder.get_Settings().set_ConnectedProfileNamePretty(CyberGhost.Translations.Home.GhostAntiCensor);
							}
						}
						else
						{
							SettingsHolder.get_Settings().set_ConnectedProfileNamePretty(this.aProfile.GetProfileName());
						}
						ObjectHolder.ConnectionStatus = 10;
						Navigation.NavigateToConnectedScreen();
						CancellationTokenSource expr_1B4 = ObjectHolder.ConnectTokenSource;
						if (expr_1B4 != null)
						{
							expr_1B4.Cancel(false);
						}
						ObjectHolder.ConnectTokenSource = new CancellationTokenSource();
						if (this.isReconnect || !ObjectHolder.CurrentUser.IsFreeUser())
						{
							goto IL_2CF;
						}
						taskAwaiter = NotificationPopup.ShowWithResult(PopUpZone.Connecting, mainWindow._connectionCancellationTokenSource.Token).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							int arg_209_1 = 0;
							num = 0;
							this.<>1__state = arg_209_1;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, MainWindow.<InternalConnectWithProfile>d__100>(ref taskAwaiter, ref this);
							return;
						}
						break;
					}
					}
					string arg_255_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<string>);
					string text = arg_255_0;
					if (mainWindow._cancelConnection)
					{
						Navigation.GoHome();
						result = new MainWindow.ConnectResultAdvanced
						{
							AdditionalData = "CANCEL",
							ConnectResult = MainWindow.ConnectResult.PopupCancelled
						};
						goto IL_58C;
					}
					if (!text.Equals("OK", StringComparison.InvariantCultureIgnoreCase) && !text.Equals("TIMEOUT", StringComparison.InvariantCultureIgnoreCase))
					{
						if (!text.Equals("CONVERT", StringComparison.CurrentCultureIgnoreCase))
						{
							Navigation.GoHome();
						}
						result = new MainWindow.ConnectResultAdvanced
						{
							AdditionalData = text,
							ConnectResult = MainWindow.ConnectResult.PopupCancelled
						};
						goto IL_58C;
					}
					IL_2CF:
					if (!this.isReconnect)
					{
						MainWindow.SendConnectionAttemptEvent();
						mainWindow.WasConnected = false;
					}
					this.<lastException>5__2 = null;
					this.<testResult>5__1 = null;
					LogHelper.LogMessage("--- CONNECTING WITH THE FOLLOWING PROFILE ---");
					LogHelper.LogMessage(string.Format("Profile: {0}", this.aProfile.GetProfileNamePretty()));
					LogHelper.LogMessage(string.Format("Configuration: {0}", this.aProfile.GetConfigurationAsString()));
					goto IL_32F;
					IL_42F:
					try
					{
						ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter configuredTaskAwaiter2;
						if (num != 2)
						{
							CgApiAccessToken cgApiAccessToken;
							if (cgApiAccessToken == null)
							{
								goto IL_4A8;
							}
							configuredTaskAwaiter2 = cgApiAccessToken.PutAccessToken().ConfigureAwait(false).GetAwaiter();
							if (!configuredTaskAwaiter2.IsCompleted)
							{
								int arg_45B_1 = 2;
								num = 2;
								this.<>1__state = arg_45B_1;
								this.<>u__3 = configuredTaskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter, MainWindow.<InternalConnectWithProfile>d__100>(ref configuredTaskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							configuredTaskAwaiter2 = this.<>u__3;
							this.<>u__3 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
							int arg_493_1 = -1;
							num = -1;
							this.<>1__state = arg_493_1;
						}
						configuredTaskAwaiter2.GetResult();
						configuredTaskAwaiter2 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
						IL_4A8:;
					}
					catch (Exception ex2)
					{
						HelperFunctions.DebugLine("cannot put token" + ex2.Message);
					}
					if (mainWindow._cancelConnection)
					{
						Navigation.GoHome();
						result = new MainWindow.ConnectResultAdvanced
						{
							AdditionalData = "CANCEL",
							ConnectResult = MainWindow.ConnectResult.PopupCancelled
						};
						goto IL_58C;
					}
					taskAwaiter2 = mainWindow.InternalConnect(this.<testResult>5__1, this.isReconnect, this.isAppProtection, this.updateHistory, this.forceCerfificateCheck).GetAwaiter();
					if (!taskAwaiter2.IsCompleted)
					{
						int arg_527_1 = 3;
						num = 3;
						this.<>1__state = arg_527_1;
						this.<>u__4 = taskAwaiter2;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, MainWindow.<InternalConnectWithProfile>d__100>(ref taskAwaiter2, ref this);
						return;
					}
					IL_561:
					MainWindow.ConnectResultAdvanced arg_570_0 = taskAwaiter2.GetResult();
					taskAwaiter2 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					result = arg_570_0;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_58C:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass101_0
		{
			public VpnServerConnectionParams connectionParams;

			internal bool? <InternalConnect>b__0()
			{
				EventSender expr_05 = ObjectHolder.CyberGhostCom;
				if (expr_05 == null)
				{
					return null;
				}
				return new bool?(expr_05.ConnectToVpnServer(this.connectionParams));
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <InternalConnect>d__101 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder;

			public MainWindow <>4__this;

			public bool isAppProtection;

			public bool isReconnect;

			public bool forceCertificateCheck;

			private Exception <lastException>5__1;

			public ServerTestResult aServerTestResult;

			private MainWindow.<>c__DisplayClass101_0 <>8__2;

			private string <nameServer1>5__3;

			private string <nameServer2>5__4;

			private ProxyServer <proxy>5__5;

			public bool updateHistory;

			private TaskAwaiter<MainWindow.TapAdapterInstallationResult> <>u__1;

			private ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter <>u__2;

			private ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter <>u__3;

			private TaskAwaiter<List<IPAddress>> <>u__4;

			private TaskAwaiter<MainWindow.ConnectResultAdvanced> <>u__5;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				MainWindow.ConnectResultAdvanced result;
				try
				{
					TaskAwaiter<MainWindow.TapAdapterInstallationResult> taskAwaiter;
					TaskAwaiter<List<IPAddress>> taskAwaiter2;
					TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter3;
					switch (num)
					{
					case 0:
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<MainWindow.TapAdapterInstallationResult>);
						int arg_108_1 = -1;
						num = -1;
						this.<>1__state = arg_108_1;
						break;
					}
					case 1:
					{
						IL_18D:
						bool flag;
						try
						{
							ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter configuredTaskAwaiter;
							if (num != 1)
							{
								CgApiCaCertificateManager cgApiCaCertificateManager;
								configuredTaskAwaiter = cgApiCaCertificateManager.Fetch(Constants.get_UserDataPath(), false).ConfigureAwait(false).GetAwaiter();
								if (!configuredTaskAwaiter.IsCompleted)
								{
									int arg_1BD_1 = 1;
									num = 1;
									this.<>1__state = arg_1BD_1;
									this.<>u__2 = configuredTaskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter, MainWindow.<InternalConnect>d__101>(ref configuredTaskAwaiter, ref this);
									return;
								}
							}
							else
							{
								configuredTaskAwaiter = this.<>u__2;
								this.<>u__2 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
								int arg_1F5_1 = -1;
								num = -1;
								this.<>1__state = arg_1F5_1;
							}
							bool arg_209_0 = configuredTaskAwaiter.GetResult();
							configuredTaskAwaiter = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
							flag = arg_209_0;
						}
						catch (WebException arg_210_0)
						{
							flag = false;
							HelperFunctions.DebugLine(arg_210_0.Message);
						}
						if (!flag)
						{
							result = new MainWindow.ConnectResultAdvanced
							{
								ConnectResult = MainWindow.ConnectResult.CaCertificateCheckFailed
							};
							goto IL_A13;
						}
						CgApiUserCertificateManager cgApiUserCertificateManager = new CgApiUserCertificateManager();
						goto IL_239;
					}
					case 2:
						goto IL_239;
					case 3:
						IL_339:
						try
						{
							ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter configuredTaskAwaiter2;
							if (num != 3)
							{
								CgBase arg_368_0 = ObjectHolder.CurrentProfile;
								string arg_368_1;
								if (!this.isReconnect)
								{
									arg_368_1 = "";
								}
								else
								{
									VpnServerLastConnectionInfos expr_357 = ObjectHolder.CurrentConnectionInfos;
									arg_368_1 = ((expr_357 != null) ? expr_357.ServerIp : null);
								}
								configuredTaskAwaiter2 = arg_368_0.GetServer(arg_368_1, ObjectHolder.CyberGhostCom).ConfigureAwait(false).GetAwaiter();
								if (!configuredTaskAwaiter2.IsCompleted)
								{
									int arg_38B_1 = 3;
									num = 3;
									this.<>1__state = arg_38B_1;
									this.<>u__3 = configuredTaskAwaiter2;
									this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter, MainWindow.<InternalConnect>d__101>(ref configuredTaskAwaiter2, ref this);
									return;
								}
							}
							else
							{
								configuredTaskAwaiter2 = this.<>u__3;
								this.<>u__3 = default(ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter);
								int arg_3C3_1 = -1;
								num = -1;
								this.<>1__state = arg_3C3_1;
							}
							ServerTestResult arg_3D7_0 = configuredTaskAwaiter2.GetResult();
							configuredTaskAwaiter2 = default(ConfiguredTaskAwaitable<ServerTestResult>.ConfiguredTaskAwaiter);
							ServerTestResult serverTestResult = arg_3D7_0;
							this.aServerTestResult = serverTestResult;
						}
						catch (Exception ex)
						{
							this.aServerTestResult = null;
							this.<lastException>5__1 = ex;
						}
						goto IL_3F6;
					case 4:
					{
						taskAwaiter2 = this.<>u__4;
						this.<>u__4 = default(TaskAwaiter<List<IPAddress>>);
						int arg_791_1 = -1;
						num = -1;
						this.<>1__state = arg_791_1;
						goto IL_796;
					}
					case 5:
					{
						taskAwaiter3 = this.<>u__5;
						this.<>u__5 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
						int arg_9E3_1 = -1;
						num = -1;
						this.<>1__state = arg_9E3_1;
						goto IL_9E8;
					}
					default:
						if (ObjectHolder.CurrentUser == null)
						{
							mainWindow._cancelConnection = true;
						}
						SettingsHolder.get_Settings().SaveSettingsAsync(false);
						mainWindow._mIsAppProtectionConnect = this.isAppProtection;
						if (mainWindow._cancelConnection)
						{
							Navigation.GoHome();
							result = new MainWindow.ConnectResultAdvanced
							{
								AdditionalData = "CANCEL",
								ConnectResult = MainWindow.ConnectResult.PopupCancelled
							};
							goto IL_A13;
						}
						if (!this.isReconnect)
						{
							mainWindow._reconnectRetries = 0;
							mainWindow.Reconnecting = false;
						}
						else
						{
							mainWindow._reconnectRetries++;
							mainWindow.Reconnecting = true;
						}
						HelperFunctions.DebugLine("CHECKING TAP INSTALLATION");
						taskAwaiter = MainWindow.CheckAndInstallTapAdapter(false, false, true).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							int arg_D0_1 = 0;
							num = 0;
							this.<>1__state = arg_D0_1;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.TapAdapterInstallationResult>, MainWindow.<InternalConnect>d__101>(ref taskAwaiter, ref this);
							return;
						}
						break;
					}
					MainWindow.TapAdapterInstallationResult arg_11C_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<MainWindow.TapAdapterInstallationResult>);
					MainWindow.TapAdapterInstallationResult tapAdapterInstallationResult = arg_11C_0;
					if (tapAdapterInstallationResult.InstallationStatus != MainWindow.TapAdapterInstallationStatus.Ok)
					{
						result = new MainWindow.ConnectResultAdvanced
						{
							ConnectResult = MainWindow.ConnectResult.TapAdapterInstallationFailed,
							AdditionalData = EumExtensions.GetDescription<MainWindow.TapAdapterInstallationStatus>(tapAdapterInstallationResult.InstallationStatus),
							Exception = tapAdapterInstallationResult.Exception
						};
						goto IL_A13;
					}
					this.<lastException>5__1 = null;
					EventSender expr_160 = ObjectHolder.CyberGhostCom;
					if (expr_160 != null)
					{
						expr_160.RevertAllNameServerChanges();
					}
					mainWindow.WhiteListCurrentDnsServers();
					if (!this.isReconnect | this.forceCertificateCheck)
					{
						CgApiCaCertificateManager cgApiCaCertificateManager = new CgApiCaCertificateManager();
						goto IL_18D;
					}
					goto IL_310;
					IL_239:
					bool flag2;
					try
					{
						ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter configuredTaskAwaiter;
						if (num != 2)
						{
							if (ObjectHolder.CurrentUser == null)
							{
								flag2 = false;
								goto IL_2D1;
							}
							CgApiUserCertificateManager cgApiUserCertificateManager;
							configuredTaskAwaiter = cgApiUserCertificateManager.Fetch(ObjectHolder.CurrentUser.get_Token(), Constants.get_UserDataPath(), Constants.get_OpenVpnBinPath()).ConfigureAwait(false).GetAwaiter();
							if (!configuredTaskAwaiter.IsCompleted)
							{
								int arg_27E_1 = 2;
								num = 2;
								this.<>1__state = arg_27E_1;
								this.<>u__2 = configuredTaskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter, MainWindow.<InternalConnect>d__101>(ref configuredTaskAwaiter, ref this);
								return;
							}
						}
						else
						{
							configuredTaskAwaiter = this.<>u__2;
							this.<>u__2 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
							int arg_2BB_1 = -1;
							num = -1;
							this.<>1__state = arg_2BB_1;
						}
						bool arg_2CF_0 = configuredTaskAwaiter.GetResult();
						configuredTaskAwaiter = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
						flag2 = arg_2CF_0;
						IL_2D1:;
					}
					catch (WebException ex2)
					{
						flag2 = false;
						HelperFunctions.DebugLine(ex2.Message);
						this.<lastException>5__1 = ex2;
					}
					if (!flag2)
					{
						result = new MainWindow.ConnectResultAdvanced
						{
							ConnectResult = MainWindow.ConnectResult.UserCertificateCheckFailed,
							Exception = this.<lastException>5__1
						};
						goto IL_A13;
					}
					IL_310:
					Navigation.HideMessageOverlay(true);
					if (!this.isReconnect)
					{
						Navigation.NavigateToConnectedScreen();
					}
					if (this.aServerTestResult != null)
					{
						goto IL_41C;
					}
					if (ObjectHolder.CurrentProfile != null)
					{
						goto IL_339;
					}
					IL_3F6:
					if (this.aServerTestResult == null)
					{
						result = new MainWindow.ConnectResultAdvanced
						{
							ConnectResult = MainWindow.ConnectResult.CouldNotFetchServer,
							Exception = this.<lastException>5__1
						};
						goto IL_A13;
					}
					IL_41C:
					if (this.isReconnect)
					{
						Navigation.NavigateToConnectedScreen();
					}
					if (this.aServerTestResult.Configuration == null)
					{
						result = new MainWindow.ConnectResultAdvanced
						{
							ConnectResult = MainWindow.ConnectResult.CouldNotFetchServerConfig,
							AdditionalData = "No config delivered"
						};
						goto IL_A13;
					}
					if (SettingsHolder.get_Settings().get_Proxy_Type() != null && !string.IsNullOrWhiteSpace(SettingsHolder.get_Settings().get_Proxy_URL()))
					{
						this.<proxy>5__5 = new ProxyServer
						{
							ProxyType = SettingsHolder.get_Settings().get_Proxy_Type(),
							ProxyAdress = SettingsHolder.get_Settings().get_Proxy_URL().Trim(),
							ProxyAuth = SettingsHolder.get_Settings().get_Proxy_HTTPAuth_Type(),
							ProxyPort = SettingsHolder.get_Settings().get_Proxy_Port(),
							ProxyUser = SettingsHolder.get_Settings().get_Proxy_Username(),
							ProxyPass = SettingsHolder.get_Settings().get_ENC_Proxy_Password()
						};
					}
					else
					{
						this.<proxy>5__5 = new ProxyServer
						{
							ProxyType = 0,
							ProxyAdress = string.Empty,
							ProxyAuth = 0,
							ProxyPort = 0,
							ProxyPass = string.Empty,
							ProxyUser = string.Empty
						};
					}
					if (this.aServerTestResult.Port > -1)
					{
						this.<>8__2 = new MainWindow.<>c__DisplayClass101_0();
						List<string> list = new List<string>
						{
							OAuthData.LoginServer,
							"advertiser.cyberghostvpn.com",
							"mp-feedback.cyberghostvpn.com",
							"store.cyberghostvpn.com",
							"static.cleverbridge.com"
						};
						if (SettingsHolder.get_Settings().get_ExceptionList().Count > 0)
						{
							list.AddRange(SettingsHolder.get_Settings().get_ExceptionList());
						}
						this.<nameServer1>5__3 = (SettingsHolder.get_Settings().get_OverwriteSystemNs() ? this.aServerTestResult.Configuration.get_Dns1() : string.Empty);
						this.<nameServer2>5__4 = (SettingsHolder.get_Settings().get_OverwriteSystemNs() ? this.aServerTestResult.Configuration.get_Dns2() : string.Empty);
						List<IPAddress> list2 = new List<IPAddress>();
						IPAddress item;
						if (!string.IsNullOrWhiteSpace(this.<nameServer1>5__3) && IPAddress.TryParse(this.<nameServer1>5__3, out item))
						{
							list2.Add(item);
							EventSender expr_63D = ObjectHolder.CyberGhostCom;
							if (expr_63D != null)
							{
								expr_63D.AddHostToConnectionWhiteList("_DNS_", this.<nameServer1>5__3);
							}
						}
						IPAddress item2;
						if (!string.IsNullOrWhiteSpace(this.<nameServer2>5__4) && IPAddress.TryParse(this.<nameServer2>5__4, out item2))
						{
							list2.Add(item2);
							EventSender expr_67D = ObjectHolder.CyberGhostCom;
							if (expr_67D != null)
							{
								expr_67D.AddHostToConnectionWhiteList("_DNS_", this.<nameServer2>5__4);
							}
						}
						taskAwaiter2 = HelperFunctions.ResolveIpParallel(new ReadOnlyCollection<string>(list), false, (list2.Count > 0) ? list2 : null).GetAwaiter();
						if (!taskAwaiter2.IsCompleted)
						{
							int arg_6C6_1 = 4;
							num = 4;
							this.<>1__state = arg_6C6_1;
							this.<>u__4 = taskAwaiter2;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<List<IPAddress>>, MainWindow.<InternalConnect>d__101>(ref taskAwaiter2, ref this);
							return;
						}
					}
					else
					{
						if (ObjectHolder.CurrentProfile == null)
						{
							result = new MainWindow.ConnectResultAdvanced
							{
								ConnectResult = MainWindow.ConnectResult.PortCheckFailed
							};
							goto IL_A13;
						}
						ServerTestResult nextServer = ObjectHolder.CurrentProfile.GetNextServer(this.aServerTestResult);
						if (nextServer == null)
						{
							result = new MainWindow.ConnectResultAdvanced
							{
								ConnectResult = MainWindow.ConnectResult.PortCheckFailed
							};
							goto IL_A13;
						}
						taskAwaiter3 = mainWindow.InternalConnect(nextServer, this.isReconnect, this.isAppProtection, this.updateHistory, false).GetAwaiter();
						if (!taskAwaiter3.IsCompleted)
						{
							int arg_735_1 = 5;
							num = 5;
							this.<>1__state = arg_735_1;
							this.<>u__5 = taskAwaiter3;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, MainWindow.<InternalConnect>d__101>(ref taskAwaiter3, ref this);
							return;
						}
						goto IL_9E8;
					}
					IL_796:
					List<IPAddress> arg_7A5_0 = taskAwaiter2.GetResult();
					taskAwaiter2 = default(TaskAwaiter<List<IPAddress>>);
					List<IPAddress> list3 = arg_7A5_0;
					MainWindow.<>c__DisplayClass101_0 arg_8D3_0 = this.<>8__2;
					VpnServerConnectionParams expr_7B2 = new VpnServerConnectionParams();
					expr_7B2.CaCertificateBasePath = Constants.get_UserDataPath();
					expr_7B2.UserCertificateBasePath = Constants.get_UserDataPath();
					expr_7B2.ServerIp = this.aServerTestResult.Ip;
					expr_7B2.ServerCountry = this.aServerTestResult.Server.get_Location().get_CountryCode();
					expr_7B2.ServerName = this.aServerTestResult.Server.get_Name();
					expr_7B2.ServerPort = this.aServerTestResult.Port;
					CgApiUser expr_821 = ObjectHolder.CurrentUser;
					expr_7B2.UserName = ((expr_821 != null) ? expr_821.get_Token() : null);
					CgApiUser expr_838 = ObjectHolder.CurrentUser;
					expr_7B2.UserPassword = ((expr_838 != null) ? expr_838.get_TokenSecret() : null);
					expr_7B2.ConnectionLost = SettingsHolder.get_Settings().get_ConnectionLostHandling();
					expr_7B2.SecureConnect = SettingsHolder.get_Settings().get_SecureConnect();
					expr_7B2.SecureConnectMode = SettingsHolder.get_Settings().get_SecureConnectMode();
					expr_7B2.ConnectionString = this.aServerTestResult.Configuration.get_ClientData();
					expr_7B2.NameServer1 = this.<nameServer1>5__3;
					expr_7B2.NameServer2 = this.<nameServer2>5__4;
					expr_7B2.AddDefaultRoutes = true;
					expr_7B2.GuiHandlesDisconnects = true;
					expr_7B2.RoutingExceptions = Helpers.ConvertIpListToListWithMask(list3).ToArray();
					expr_7B2.Proxy = this.<proxy>5__5;
					arg_8D3_0.connectionParams = expr_7B2;
					ObjectHolder.CurrentConnectionInfos = this.<>8__2.connectionParams;
					if (mainWindow._cancelConnection)
					{
						Navigation.GoHome();
						result = new MainWindow.ConnectResultAdvanced
						{
							AdditionalData = "CANCEL",
							ConnectResult = MainWindow.ConnectResult.PopupCancelled
						};
						goto IL_A13;
					}
					mainWindow.DoBeforeConnect(this.isReconnect, this.isAppProtection);
					CgApiConfiguration expr_930 = this.aServerTestResult.Configuration;
					int tapAdapterMtu = Helpers.GetMtuFromConfig((expr_930 != null) ? expr_930.get_ClientData() : null);
					if (SettingsHolder.get_Settings().get_TapMtuOverride())
					{
						tapAdapterMtu = SettingsHolder.get_Settings().get_TapMtu();
					}
					EventSender expr_960 = ObjectHolder.CyberGhostCom;
					if (expr_960 != null)
					{
						expr_960.SetTapAdapterMtu(tapAdapterMtu);
					}
					Task.Factory.StartNew<bool?>(new Func<bool?>(this.<>8__2.<InternalConnect>b__0)).ConfigureAwait(false);
					this.<>8__2 = null;
					this.<nameServer1>5__3 = null;
					this.<nameServer2>5__4 = null;
					ObjectHolder.FirstTimeVisitedConnectedScreen = true;
					if (this.updateHistory)
					{
						NotifierHelper.AddProfileToHistory(ObjectHolder.CurrentProfile);
					}
					result = new MainWindow.ConnectResultAdvanced
					{
						ConnectResult = MainWindow.ConnectResult.Ok
					};
					goto IL_A13;
					IL_9E8:
					MainWindow.ConnectResultAdvanced arg_9F7_0 = taskAwaiter3.GetResult();
					taskAwaiter3 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					result = arg_9F7_0;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_A13:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <ConnectDirect>d__109 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public MainWindow <>4__this;

			public HelperFunctions.WlanInfos wifi;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						if (!(DateTime.Now - mainWindow._lastWifiConnect > TimeSpan.FromSeconds(60.0)))
						{
							goto IL_137;
						}
						mainWindow._lastWifiConnect = DateTime.Now;
						Wifi arg_D8_0 = new Wifi();
						List<string> list = (this.wifi.Security == 1) ? SettingsHolder.get_Settings().get_WiFiUnsecureSsids() : SettingsHolder.get_Settings().get_WiFiSecureSsids();
						if (!list.Contains(this.wifi.Ssid))
						{
							list.Add(this.wifi.Ssid);
						}
						ObjectHolder.WifiType = ((this.wifi.Security == 1) ? "unsecure" : "secure");
						TrackingHelper.SendProfileClickedEvent(SettingsHolder.get_Settings().get_ProfileWifi().GetBaseName(), "Hotspot Protection");
						taskAwaiter = arg_D8_0.ConnectToServer(this.wifi.Ssid).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, MainWindow.<ConnectDirect>d__109>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					IL_137:;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass111_0
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<_wifiDetector_OnNewWiFiDetected>b__0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				public MainWindow.<>c__DisplayClass111_0 <>4__this;

				private HelperFunctions.WlanInfos <wifi>5__1;

				private SsidAction <setting>5__2;

				private HelperFunctions.WlanInfos[] <>7__wrap1;

				private int <>7__wrap2;

				private TaskAwaiter<WifiPopup.WifiConnectionResult> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					MainWindow.<>c__DisplayClass111_0 <>c__DisplayClass111_ = this.<>4__this;
					try
					{
						WifiPopup.WifiConnectionResult action;
						TaskAwaiter<WifiPopup.WifiConnectionResult> taskAwaiter;
						if (num != 0)
						{
							if (!GuiHelper.IsProLoginRequired())
							{
								this.<>7__wrap1 = <>c__DisplayClass111_.newWiFis;
								this.<>7__wrap2 = 0;
								while (this.<>7__wrap2 < this.<>7__wrap1.Length)
								{
									this.<wifi>5__1 = this.<>7__wrap1[this.<>7__wrap2];
									this.<setting>5__2 = WifiHelpers.GetSettingForSsid(this.<wifi>5__1.Ssid);
									if (this.<setting>5__2 == 1 && ObjectHolder.ConnectionStatus == -1)
									{
										action = WifiPopup.WifiConnectionResult.Ask;
										if (!(DateTime.Now - <>c__DisplayClass111_.<>4__this._lastWifiDetected > TimeSpan.FromMinutes(5.0)))
										{
											HelperFunctions.DebugLine("NEW WIFI DETECTED, IGNORING CAUSE IT'S TOO EARLY");
											goto IL_1D0;
										}
										<>c__DisplayClass111_.<>4__this._lastWifiDetected = DateTime.Now;
										taskAwaiter = MainWindow._wifiOpenMessageBox(this.<wifi>5__1.Ssid).GetAwaiter();
										if (!taskAwaiter.IsCompleted)
										{
											this.<>1__state = 0;
											this.<>u__1 = taskAwaiter;
											this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<WifiPopup.WifiConnectionResult>, MainWindow.<>c__DisplayClass111_0.<<_wifiDetector_OnNewWiFiDetected>b__0>d>(ref taskAwaiter, ref this);
											return;
										}
										goto IL_1BA;
									}
									else
									{
										if (this.<setting>5__2 == 2 && ObjectHolder.ConnectionStatus == -1)
										{
											ObjectHolder.WifiProtectionSetting = WifiPopup.WifiConnectionResult.Always;
											<>c__DisplayClass111_.<>4__this.ConnectDirect(this.<wifi>5__1);
											break;
										}
										if (this.<setting>5__2 != 3 || ObjectHolder.ConnectionStatus != null)
										{
											this.<wifi>5__1 = null;
											this.<>7__wrap2++;
										}
										else
										{
											if (ObjectHolder.CurrentProfile.GetBaseName().Equals(SettingsHolder.get_Settings().get_ProfileWifi().GetBaseName()))
											{
												<>c__DisplayClass111_.<>4__this.Disconnect();
												break;
											}
											break;
										}
									}
								}
								goto IL_21D;
							}
							goto IL_224;
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<WifiPopup.WifiConnectionResult>);
							this.<>1__state = -1;
						}
						IL_1BA:
						WifiPopup.WifiConnectionResult arg_1C9_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<WifiPopup.WifiConnectionResult>);
						action = arg_1C9_0;
						ObjectHolder.WifiProtectionSetting = WifiPopup.WifiConnectionResult.Ask;
						IL_1D0:
						WifiHelpers.SetStateForWifiOrAddNewWifi(this.<wifi>5__1.Ssid, action);
						switch (action)
						{
						case WifiPopup.WifiConnectionResult.Always:
							<>c__DisplayClass111_.<>4__this.ConnectDirect(this.<wifi>5__1);
							break;
						case WifiPopup.WifiConnectionResult.Once:
							<>c__DisplayClass111_.<>4__this.ConnectDirect(this.<wifi>5__1);
							break;
						}
						IL_21D:
						this.<>7__wrap1 = null;
						IL_224:;
					}
					catch (Exception exception)
					{
						this.<>1__state = -2;
						this.<>t__builder.SetException(exception);
						return;
					}
					this.<>1__state = -2;
					this.<>t__builder.SetResult();
				}

				[DebuggerHidden]
				void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
				{
					this.<>t__builder.SetStateMachine(stateMachine);
				}
			}

			public HelperFunctions.WlanInfos[] newWiFis;

			public MainWindow <>4__this;

			[AsyncStateMachine(typeof(MainWindow.<>c__DisplayClass111_0.<<_wifiDetector_OnNewWiFiDetected>b__0>d))]
			internal void <_wifiDetector_OnNewWiFiDetected>b__0(object o)
			{
				MainWindow.<>c__DisplayClass111_0.<<_wifiDetector_OnNewWiFiDetected>b__0>d <<_wifiDetector_OnNewWiFiDetected>b__0>d;
				<<_wifiDetector_OnNewWiFiDetected>b__0>d.<>4__this = this;
				<<_wifiDetector_OnNewWiFiDetected>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<_wifiDetector_OnNewWiFiDetected>b__0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<_wifiDetector_OnNewWiFiDetected>b__0>d.<>t__builder;
				<>t__builder.Start<MainWindow.<>c__DisplayClass111_0.<<_wifiDetector_OnNewWiFiDetected>b__0>d>(ref <<_wifiDetector_OnNewWiFiDetected>b__0>d);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass112_0
		{
			public System.Drawing.Point windowPosition;

			public System.Drawing.Point windowRightBottomPosition;

			internal bool ctor>b__0(Screen screen)
			{
				return screen.WorkingArea.Contains(this.windowPosition) && screen.WorkingArea.Contains(this.windowRightBottomPosition);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <OpenLogin>d__122 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			public MainWindow <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				bool result;
				try
				{
					if (num != 0)
					{
						mainWindow.OnUserOrPlanHasChanged();
						if (ObjectHolder.CurrentUser.get_AutoCreated() && ObjectHolder.CurrentUser.IsFreeUser())
						{
							if (ObjectHolder.ConnectionStatus == -1 || (ObjectHolder.ConnectionStatus != -1 && ModernDialogExtension.ShowDialogYesNo(General.MainWindow_StartForegroundUpdate_ConnectionWillBeDropped, CyberGhost.Translations.MainWindow.MainWindow_OpenLogin_DisconnectWarning) == MessageBoxResult.Yes))
							{
								Navigation.GoToPage("Login", null, null);
								goto IL_167;
							}
							goto IL_167;
						}
						else if ((ObjectHolder.ConnectionStatus != -1 || ModernDialogExtension.ShowDialogYesNo(Alerts.MainWindow_OpenLogin_Logout, Alerts.MainWindow_OpenLogin_Do_you_really_want_to_logout__) != MessageBoxResult.Yes) && (ObjectHolder.ConnectionStatus == -1 || ModernDialogExtension.ShowDialogYesNo(General.MainWindow_StartForegroundUpdate_ConnectionWillBeDropped, CyberGhost.Translations.MainWindow.MainWindow_OpenLogin_DisconnectWarning) != MessageBoxResult.Yes))
						{
							goto IL_167;
						}
					}
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							taskAwaiter = mainWindow.DoLogout().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, MainWindow.<OpenLogin>d__122>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<bool>);
							this.<>1__state = -1;
						}
						bool arg_10D_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<bool>);
						if (!arg_10D_0)
						{
							mainWindow.PollUserTimerTick(null, null);
							ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
							result = false;
							goto IL_184;
						}
						GuiHelper.ResetProfilesToDefault(null);
						CommandManager.InvalidateRequerySuggested();
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("{0}::{1} {2}", mainWindow.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
					}
					IL_167:
					result = true;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_184:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass123_0
		{
			public bool restartApplication;

			public MainWindow <>4__this;

			internal void <Exit>b__0()
			{
				this.<>4__this.Dispatcher.BeginInvoke(new Action(this.<Exit>b__1), new object[0]);
			}

			internal void <Exit>b__1()
			{
				ApplicationInstanceManager.ReleaseCurrentInstance(Assembly.GetExecutingAssembly().GetName().Name + "6");
				System.Windows.Application.Current.Shutdown();
				if (this.restartApplication)
				{
					Process.Start(HelperFunctions.get_AppExe());
				}
				Environment.Exit(0);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <Exit>d__123 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public MainWindow <>4__this;

			public bool restartApplication;

			private Task <closeEvent>5__1;

			private MainWindow.<>c__DisplayClass123_0 <>8__2;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						if (num == 1)
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter);
							this.<>1__state = -1;
							goto IL_168;
						}
						this.<>8__2 = new MainWindow.<>c__DisplayClass123_0();
						this.<>8__2.<>4__this = mainWindow;
						this.<>8__2.restartApplication = this.restartApplication;
						this.<closeEvent>5__1 = BaseMixpanelObject.FireEventAsync<ApplicationClosedEvent>();
						try
						{
							Navigation.GoHome();
							mainWindow.Hide();
							mainWindow.Close();
							mainWindow.ShowInTaskbar = false;
						}
						catch (Exception)
						{
						}
						if (ObjectHolder.TaskbarIcon != null && !ObjectHolder.TaskbarIcon.get_IsDisposed())
						{
							ObjectHolder.TaskbarIcon.Visibility = Visibility.Hidden;
							ObjectHolder.TaskbarIcon.set_Icon(null);
							ObjectHolder.TaskbarIcon.Dispose();
							ObjectHolder.TaskbarIcon = null;
						}
						taskAwaiter = SettingsHolder.get_Settings().SaveSettingsAsync(false).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, MainWindow.<Exit>d__123>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					if (this.<closeEvent>5__1 == null)
					{
						goto IL_177;
					}
					taskAwaiter = this.<closeEvent>5__1.GetAwaiter();
					if (!taskAwaiter.IsCompleted)
					{
						this.<>1__state = 1;
						this.<>u__1 = taskAwaiter;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, MainWindow.<Exit>d__123>(ref taskAwaiter, ref this);
						return;
					}
					IL_168:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					IL_177:
					mainWindow.FinalizeService();
					new Thread(new ThreadStart(this.<>8__2.<Exit>b__0)).Start();
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <ShowMe>d__130 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public MainWindow <>4__this;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						mainWindow.Visibility = Visibility.Visible;
						mainWindow.WindowState = WindowState.Normal;
						mainWindow.Show();
						WindowExtensions.MoveToActiveDesktop(mainWindow);
						mainWindow.Topmost = true;
						taskAwaiter = Task.Delay(100).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, MainWindow.<ShowMe>d__130>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					mainWindow.Topmost = false;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <<-ctor>b__112_6>d : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			public MainWindow <>4__this;

			private TaskAwaiter<Uri> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				MainWindow mainWindow = this.<>4__this;
				try
				{
					TaskAwaiter<Uri> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = Helper.GetLink("go_feedback_windows_zendesk").GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<Uri>, MainWindow.<<-ctor>b__112_6>d>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<Uri>);
						this.<>1__state = -1;
					}
					Uri arg_75_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<Uri>);
					Uri uri = arg_75_0;
					if (uri == null)
					{
						mainWindow.CreateSupportTicket();
					}
					else
					{
						HelperFunctions.OpenFileInBrowser(uri.AbsoluteUri, false);
					}
					BaseMixpanelObject.FireEvent<GiveFeedbackClickedEvent>();
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		private readonly object _syncLock = new object();

		private System.Timers.Timer _mTimedPopupTimer;

		private System.Windows.Forms.Timer _mForceUpdateTimer;

		private System.Windows.Forms.Timer _mReestablishedCooldownTimer;

		private bool _mIsAppProtectionConnect;

		private int _reconnectRetries;

		private int _reestablishedCount;

		public bool WasConnected;

		private CancellationTokenSource _forcedDisconnectTokenSource;

		private DateTime _mLastNetwokChangedTime = DateTime.MinValue;

		private DateTime _mLastServiceNotAvailabeMessageShown = DateTime.MinValue;

		private bool _mServiceNotAvailableVisible;

		private System.Timers.Timer _userPollTimer;

		private bool _cancelConnection;

		private CancellationTokenSource _connectionCancellationTokenSource;

		private const string DnsFirewallListName = "_DNS_";

		private readonly WiFiDetector _wifiDetector;

		private DateTime _lastWifiDetected = DateTime.MinValue;

		private DateTime _lastWifiConnect = DateTime.MinValue;

		internal Link LblHeaderLogin;

		internal Link TitleLinkFeedback;

		internal TaskbarIcon TaskbarIcon;

		private bool _contentLoaded;

		public long PrevBytesReceived
		{
			get;
			set;
		}

		public long PrevBytesSent
		{
			get;
			set;
		}

		public double TotalDownloadInBytes
		{
			get;
			set;
		}

		public long BytesReceivedPerSec
		{
			get;
			set;
		}

		public long BytesSentPerSec
		{
			get;
			set;
		}

		public bool Reconnecting
		{
			get;
			set;
		}

		public string LastTapError
		{
			get;
			private set;
		}

		internal void SetupService()
		{
			if (ObjectHolder.CyberGhostCom == null)
			{
				ObjectHolder.CyberGhostCom = new EventSender("CyherGhostPipe");
			}
			UdpClientExtensions.add_UdpError(new UdpClientExtensions.UdpErrorDelegate(this.UdpClientExtensions_UdpError));
			ObjectHolder.CyberGhostCom.add_OnCertificateMissingEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCertificateMissingEvent));
			ObjectHolder.CyberGhostCom.add_OnConnectionStatusChangedEvent(new EventSender.ConnectionStatusChanged(this.CyberGhostCom_OnConnectionStatusChangedEvent));
			ObjectHolder.CyberGhostCom.add_OnTapUpdateRequiredEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnTapUpdateRequiredEvent));
			ObjectHolder.CyberGhostCom.add_OnClientUpdateAvailableEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnClientUpdateAvailableEvent));
			ObjectHolder.CyberGhostCom.add_OnTrafficChangedEvent(new EventSender.TrafficChanged(this.CyberGhostCom_OnTrafficChangedEvent));
			ObjectHolder.CyberGhostCom.add_OnCheckForPlanUpgradeEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCheckForPlanUpgradeEvent));
			ObjectHolder.CyberGhostCom.add_OnUpdateDiEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnUpdateDiEvent));
			ObjectHolder.CyberGhostCom.add_OnSetCredentialsEvent(new EventSender.SetCredentialsEvent(this.CyberGhostCom_OnSetCredentialsEvent));
			NetworkChange.NetworkAddressChanged += new NetworkAddressChangedEventHandler(this.NetworkChange_NetworkAddressChanged);
			NetworkChange.NetworkAvailabilityChanged += new NetworkAvailabilityChangedEventHandler(this.NetworkChange_NetworkAvailabilityChanged);
			ConnectionStatus connectionStatus = ObjectHolder.CyberGhostCom.GetConnectionStatus();
			this._mReestablishedCooldownTimer = new System.Windows.Forms.Timer
			{
				Interval = 60000
			};
			this._mReestablishedCooldownTimer.Tick += new EventHandler(this._mReestablishedCooldownTimer_Tick);
			this._mReestablishedCooldownTimer.Start();
			if (connectionStatus == null)
			{
				VpnServerLastConnectionInfos lastConnectionInfos = ObjectHolder.CyberGhostCom.GetLastConnectionInfos();
				ObjectHolder.CurrentConnectionInfos = lastConnectionInfos;
				Theming.CurrentThemeSet = Theming.ThemeSet.Connected;
				this.CyberGhostCom_OnConnectionStatusChangedEvent(new ConnectionStatusChangedEventArgs
				{
					CurrentConnectionStatus = connectionStatus,
					ServerCountry = lastConnectionInfos.ServerCountry,
					ServerIp = lastConnectionInfos.ServerIp,
					ServerName = lastConnectionInfos.ServerName
				});
			}
		}

		public static Task<MainWindow.TapAdapterInstallationResult> CheckAndInstallTapAdapter(bool forceInstall = false, bool silent = false, bool overrideActiveCardCheck = true)
		{
			MainWindow.<>c__DisplayClass22_0 <>c__DisplayClass22_ = new MainWindow.<>c__DisplayClass22_0();
			<>c__DisplayClass22_.forceInstall = forceInstall;
			<>c__DisplayClass22_.awaiter = new TaskCompletionSource<MainWindow.TapAdapterInstallationResult>();
			<>c__DisplayClass22_.res = new MainWindow.TapAdapterInstallationResult();
			if (!<>c__DisplayClass22_.forceInstall && Helpers.IsTapV9Installed("9.0.0.9", overrideActiveCardCheck))
			{
				<>c__DisplayClass22_.res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Ok;
				<>c__DisplayClass22_.awaiter.TrySetResult(<>c__DisplayClass22_.res);
			}
			else if (!silent)
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass22_.<CheckAndInstallTapAdapter>b__0), null);
			}
			else
			{
				Helpers.InstallTapResult installTapResult = Helpers.InstallTap("9.0.0.9", <>c__DisplayClass22_.forceInstall);
				if (installTapResult.InstallationResult)
				{
					EventSender expr_98 = ObjectHolder.CyberGhostCom;
					if (expr_98 != null)
					{
						expr_98.CorrectTapProtocolls(SettingsHolder.get_Settings().get_DisableIpV6Protocol());
					}
					SettingsHolder.get_Settings().set_TapReinstalled(false);
					<>c__DisplayClass22_.res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Ok;
					<>c__DisplayClass22_.awaiter.TrySetResult(<>c__DisplayClass22_.res);
				}
				else
				{
					<>c__DisplayClass22_.res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Error;
					<>c__DisplayClass22_.res.Exception = installTapResult.Exception;
					<>c__DisplayClass22_.awaiter.TrySetResult(<>c__DisplayClass22_.res);
				}
			}
			return <>c__DisplayClass22_.awaiter.Task;
		}

		private void CyberGhostCom_OnSetCredentialsEvent(object sender, string username, string password)
		{
			MainWindow.<>c__DisplayClass25_0 <>c__DisplayClass25_ = new MainWindow.<>c__DisplayClass25_0();
			<>c__DisplayClass25_.username = username;
			<>c__DisplayClass25_.password = password;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass25_.<CyberGhostCom_OnSetCredentialsEvent>b__0), null);
		}

		private void UdpClientExtensions_UdpError(UdpClientExtensions.ErrorType errorType, Exception e, IPAddress remoteAddress)
		{
			new DnsResolveErrorEvent
			{
				DnsServer = ((remoteAddress != null) ? remoteAddress.ToString() : null),
				ErrorType = errorType.ToString(),
				Exception = ((e != null) ? e.ToString() : null)
			}.FireEvent();
		}

		public void CreateScreenShot(int width, int height, Visual control, string filePath)
		{
			RenderTargetBitmap renderTargetBitmap = new RenderTargetBitmap(width, height, 96.0, 96.0, PixelFormats.Pbgra32);
			renderTargetBitmap.Render(control);
			PngBitmapEncoder pngBitmapEncoder = new PngBitmapEncoder();
			pngBitmapEncoder.Frames.Add(BitmapFrame.Create(renderTargetBitmap));
			using (Stream stream = File.Create(filePath))
			{
				pngBitmapEncoder.Save(stream);
			}
		}

		internal void FinalizeService()
		{
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.remove_OnCertificateMissingEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCertificateMissingEvent));
				ObjectHolder.CyberGhostCom.remove_OnConnectionStatusChangedEvent(new EventSender.ConnectionStatusChanged(this.CyberGhostCom_OnConnectionStatusChangedEvent));
				ObjectHolder.CyberGhostCom.remove_OnTapUpdateRequiredEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnTapUpdateRequiredEvent));
				ObjectHolder.CyberGhostCom.remove_OnClientUpdateAvailableEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnClientUpdateAvailableEvent));
				ObjectHolder.CyberGhostCom.remove_OnTrafficChangedEvent(new EventSender.TrafficChanged(this.CyberGhostCom_OnTrafficChangedEvent));
				ObjectHolder.CyberGhostCom.remove_OnCheckForPlanUpgradeEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCheckForPlanUpgradeEvent));
				ObjectHolder.CyberGhostCom.remove_OnUpdateDiEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnUpdateDiEvent));
				ObjectHolder.CyberGhostCom.remove_OnSetCredentialsEvent(new EventSender.SetCredentialsEvent(this.CyberGhostCom_OnSetCredentialsEvent));
				ObjectHolder.CyberGhostCom.Dispose();
				ObjectHolder.CyberGhostCom = null;
			}
			NetworkChange.NetworkAddressChanged -= new NetworkAddressChangedEventHandler(this.NetworkChange_NetworkAddressChanged);
			NetworkChange.NetworkAvailabilityChanged -= new NetworkAvailabilityChangedEventHandler(this.NetworkChange_NetworkAvailabilityChanged);
			this._mReestablishedCooldownTimer.Stop();
		}

		private bool ComputeTrafficData(long currentBytesReceived, long currentBytesSend)
		{
			bool result = true;
			long num = currentBytesReceived - this.PrevBytesReceived;
			this.PrevBytesReceived = currentBytesReceived;
			if (num > 0L)
			{
				this.BytesReceivedPerSec = num;
				this.TotalDownloadInBytes += (double)this.BytesReceivedPerSec;
			}
			else
			{
				result = false;
			}
			long num2 = currentBytesSend - this.PrevBytesSent;
			this.PrevBytesSent = currentBytesSend;
			if (num2 > 0L)
			{
				this.BytesSentPerSec = num2;
			}
			SettingsHolder expr_65 = SettingsHolder.get_Settings();
			ulong downloadTotalTime = expr_65.get_DownloadTotalTime();
			expr_65.set_DownloadTotalTime(downloadTotalTime + 1uL);
			this.FormatTrafficData();
			return result;
		}

		private void FormatTrafficData()
		{
			object syncLock = this._syncLock;
			lock (syncLock)
			{
				ObjectHolder.DownloadAll = GuiHelper.GetFormatedBytes(this.TotalDownloadInBytes);
				ObjectHolder.Download = GuiHelper.GetFormatedBytesPerSecond((double)this.BytesReceivedPerSec, null);
				if (ObjectHolder.Download.Value > ObjectHolder.MaxSpeed.Value)
				{
					ObjectHolder.MaxSpeed = ObjectHolder.Download;
				}
			}
		}

		private void WhiteListCurrentDnsServers()
		{
			string[] allNetworkAdapters = Helpers.GetAllNetworkAdapters();
			for (int i = 0; i < allNetworkAdapters.Length; i++)
			{
				string nsForAdapter = Helpers.GetNsForAdapter(allNetworkAdapters[i]);
				EventSender expr_18 = ObjectHolder.CyberGhostCom;
				if (expr_18 != null)
				{
					expr_18.AddHostToConnectionWhiteList("_DNS_", nsForAdapter);
				}
			}
		}

		private double GetTimeedPopUpUpdateInterval()
		{
			if (ObjectHolder.CurrentStatus != null)
			{
				double popupTimerInterval = ObjectHolder.CurrentStatus.GetPopupTimerInterval("timer_interval");
				if (popupTimerInterval > 0.0)
				{
					return popupTimerInterval * 1000.0;
				}
			}
			return 3600000.0;
		}

		public void SetupTimedPopUp()
		{
			this._mTimedPopupTimer = new System.Timers.Timer
			{
				Interval = this.GetTimeedPopUpUpdateInterval()
			};
			this._mTimedPopupTimer.Elapsed += new ElapsedEventHandler(this._mTimedPopupTimer_Elapsed);
			this._mTimedPopupTimer.Enabled = true;
		}

		private void _mTimedPopupTimer_Elapsed(object sender, ElapsedEventArgs e)
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<_mTimedPopupTimer_Elapsed>b__35_0), null);
		}

		private static void SendConnectionTerminatedEvent()
		{
			ConnectionTerminatedEvent connectionTerminatedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionTerminatedEvent = new WiFiConnectionTerminatedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionTerminatedEvent = new StreamingServiceConnectionTerminatedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionTerminatedEvent = new UnblockServiceConnectionTerminatedEvent();
			}
			else
			{
				connectionTerminatedEvent = new ConnectionTerminatedEvent();
			}
			connectionTerminatedEvent.FireEvent();
		}

		private void SendConnectionOkEvent()
		{
			ConnectionEstablishedEvent connectionEstablishedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionEstablishedEvent = new WiFiConnectionEstablishedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionEstablishedEvent = new StreamingServiceConnectionEstablishedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionEstablishedEvent = new UnblockServiceConnectionEstablishedEvent();
			}
			else
			{
				connectionEstablishedEvent = new ConnectionEstablishedEvent();
			}
			connectionEstablishedEvent.AutomaticRetries = this._reconnectRetries;
			connectionEstablishedEvent.FireEvent();
		}

		private static void SendConnectionAttemptEvent()
		{
			ConnectionAttemptEvent connectionAttemptEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionAttemptEvent = new WifiConnectionAttemptEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionAttemptEvent = new StreamingServiceConnectionAttemptEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionAttemptEvent = new UnblockServiceConnectionAttemptEvent();
			}
			else
			{
				connectionAttemptEvent = new ConnectionAttemptEvent();
			}
			connectionAttemptEvent.FireEvent();
		}

		private void SendConnectionFailedEvent(ConnectionStatusChangedEventArgs e)
		{
			if (e == null)
			{
				return;
			}
			this.SendConnectionFailedEvent(string.IsNullOrWhiteSpace(e.Reason) ? string.Format("{0}", e.CurrentConnectionStatus) : e.Reason, e.Exception, e.ExceptionData, e.AdditionalData);
		}

		private void SendConnectionFailedEvent(string reason, string error, string errorData, string advancedErrorData)
		{
			ConnectionFailedEvent connectionFailedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionFailedEvent = new WiFiConnectionFailedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionFailedEvent = new StreamingServiceConnectionFailedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionFailedEvent = new UnblockServiceConnectionFailedEvent();
			}
			else
			{
				connectionFailedEvent = new ConnectionFailedEvent();
			}
			connectionFailedEvent.AutomaticRetries = this._reconnectRetries;
			if (!string.IsNullOrWhiteSpace(reason))
			{
				connectionFailedEvent.Reason = reason;
			}
			if (!string.IsNullOrWhiteSpace(error))
			{
				connectionFailedEvent.Error = error;
			}
			if (!string.IsNullOrWhiteSpace(errorData))
			{
				connectionFailedEvent.ErrorData = errorData;
			}
			if (!string.IsNullOrWhiteSpace(advancedErrorData))
			{
				connectionFailedEvent.AdvancedErrorData = advancedErrorData;
			}
			else
			{
				string[] lastLogEntries = ObjectHolder.CyberGhostCom.GetLastLogEntries(2);
				if (lastLogEntries != null && lastLogEntries.Length != 0)
				{
					connectionFailedEvent.AdvancedErrorData = string.Join("\r\n", lastLogEntries).Trim();
				}
			}
			connectionFailedEvent.FireEvent();
		}

		private static void SendConnectionDroppedEvent()
		{
			ConnectionDroppedEvent connectionDroppedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionDroppedEvent = new WiFiConnectionDroppedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionDroppedEvent = new StreamingServiceConnectionDroppedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionDroppedEvent = new UnblockServiceConnectionDroppedEvent();
			}
			else
			{
				connectionDroppedEvent = new ConnectionDroppedEvent();
			}
			connectionDroppedEvent.FireEvent();
		}

		private static void SendConnectionReestablishedEvent()
		{
			ConnectionReestablishedEvent connectionReestablishedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionReestablishedEvent = new WiFiConnectionReestablishedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionReestablishedEvent = new StreamingServiceConnectionReestablishedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionReestablishedEvent = new UnblockServiceConnectionReestablishedEvent();
			}
			else
			{
				connectionReestablishedEvent = new ConnectionReestablishedEvent();
			}
			connectionReestablishedEvent.FireEvent();
		}

		private static void SendConnectionAttemptAbortedEvent()
		{
			ConnectionAttemptAbortedEvent connectionAttemptAbortedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionAttemptAbortedEvent = new WifiConnectionAttemptAbortedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionAttemptAbortedEvent = new StreamingServiceConnectionAttemptAbortedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionAttemptAbortedEvent = new UnblockServiceConnectionAttemptAbortedEvent();
			}
			else
			{
				connectionAttemptAbortedEvent = new ConnectionAttemptAbortedEvent();
			}
			connectionAttemptAbortedEvent.Reason = "user cancelled";
			connectionAttemptAbortedEvent.FireEvent();
		}

		public void StartForegroundUpdate()
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<StartForegroundUpdate>b__44_0), null);
		}

		public static void DoStartForegroundUpdate(UpdaterArgs.UpdaterNotifyEvent exitEvent)
		{
			string text = (SettingsHolder.get_Settings().get_ReleaseChannel() != 5) ? string.Format("https://download.cyberghostvpn.com/windows/updates/6/{0}/", SettingsHolder.get_Settings().get_ReleaseChannel().ToString().ToLower()) : (string.IsNullOrEmpty(SettingsHolder.get_Settings().get_UpdateUrl()) ? "https://download.cyberghostvpn.com/windows/updates/6/" : SettingsHolder.get_Settings().get_UpdateUrl());
			HelperFunctions.DebugLine(string.Format("Checking for Update on {0}", text));
			UpdaterArgs updaterArgs = new UpdaterArgs
			{
				DirectStart = true,
				UpdateUrl = text
			};
			if (exitEvent != null)
			{
				updaterArgs.add_OnNeedsExitApplication(exitEvent);
			}
			ServiceSettings.get_Settings().LoadSettings();
			ServiceSettings.get_Settings().set_ClientWasRunningBeforeUpdating(true);
			ServiceSettings.get_Settings().SaveSettings(false);
			HelperFunctions.CallUpdaterThreaded(updaterArgs);
		}

		private bool UpdaterArgs_OnNeedsExitApplication()
		{
			if (ObjectHolder.MainContext != null)
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<UpdaterArgs_OnNeedsExitApplication>b__46_0), null);
			}
			else
			{
				this.Exit(false);
			}
			return true;
		}

		private void CyberGhostCom_OnClientUpdateAvailableEvent(object sender)
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<CyberGhostCom_OnClientUpdateAvailableEvent>b__63_0), null);
		}

		private void NetworkChange_NetworkAvailabilityChanged(object sender, NetworkAvailabilityEventArgs e)
		{
			this._mLastNetwokChangedTime = DateTime.Now;
		}

		private void NetworkChange_NetworkAddressChanged(object sender, EventArgs e)
		{
			this._mLastNetwokChangedTime = DateTime.Now;
		}

		private void _mForceUpdateTimer_Tick(object sender, EventArgs e)
		{
			if (ObjectHolder.ConnectionStatus == -1)
			{
				ObjectHolder.CyberGhostCom.StartClientUpdate(false);
				ObjectHolder.MainForm.Exit(false);
			}
		}

		private void CyberGhostCom_OnTapUpdateRequiredEvent(object sender, string reason)
		{
			ObjectHolder.ConnectionStatus = 3000;
			this.LastTapError = reason;
			MainWindow.CheckAndInstallTapAdapter(true, false, false);
		}

		private void CyberGhostCom_OnTrafficChangedEvent(object sender, TrafficChangeParams e)
		{
			MainWindow.<>c__DisplayClass68_0 <>c__DisplayClass68_ = new MainWindow.<>c__DisplayClass68_0();
			<>c__DisplayClass68_.<>4__this = this;
			<>c__DisplayClass68_.e = e;
			if (sender != null && <>c__DisplayClass68_.e != null)
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass68_.<CyberGhostCom_OnTrafficChangedEvent>b__0), null);
				return;
			}
		}

		private void CyberGhostCom_OnCheckForPlanUpgradeEvent(object sender)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = MainWindow.<>c.<>9__69_0) == null)
			{
				arg_25_1 = (MainWindow.<>c.<>9__69_0 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		[AsyncStateMachine(typeof(MainWindow.<CyberGhostCom_OnUpdateDiEvent>d__70))]
		private void CyberGhostCom_OnUpdateDiEvent(object sender, string aDistinctId)
		{
			MainWindow.<CyberGhostCom_OnUpdateDiEvent>d__70 <CyberGhostCom_OnUpdateDiEvent>d__;
			<CyberGhostCom_OnUpdateDiEvent>d__.aDistinctId = aDistinctId;
			<CyberGhostCom_OnUpdateDiEvent>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<CyberGhostCom_OnUpdateDiEvent>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <CyberGhostCom_OnUpdateDiEvent>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<CyberGhostCom_OnUpdateDiEvent>d__70>(ref <CyberGhostCom_OnUpdateDiEvent>d__);
		}

		private void CyberGhostCom_OnCertificateMissingEvent(object sender)
		{
			string path = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.crt", ObjectHolder.CurrentUser.get_Token()));
			string path2 = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.key", ObjectHolder.CurrentUser.get_Token()));
			string path3 = Path.Combine(Constants.get_UserDataPath(), "ca.crt");
			try
			{
				if (File.Exists(path))
				{
					File.Delete(path);
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(path2))
				{
					File.Delete(path2);
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(path3))
				{
					File.Delete(path3);
				}
			}
			catch (Exception)
			{
			}
			if (this._reconnectRetries < 3)
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<CyberGhostCom_OnCertificateMissingEvent>b__71_0), null);
				return;
			}
			this.CyberGhostCom_OnConnectionStatusChangedEvent(new ConnectionStatusChangedEventArgs
			{
				CurrentConnectionStatus = 5000
			});
		}

		private void _mReestablishedCooldownTimer_Tick(object sender, EventArgs e)
		{
			if (this._reestablishedCount > 0)
			{
				this._reestablishedCount--;
			}
		}

		private void CyberGhostCom_OnConnectionStatusChangedEvent(ConnectionStatusChangedEventArgs e)
		{
			MainWindow.<>c__DisplayClass73_0 <>c__DisplayClass73_ = new MainWindow.<>c__DisplayClass73_0();
			<>c__DisplayClass73_.e = e;
			if (ObjectHolder.ConnectionStatus == -1 && <>c__DisplayClass73_.e.CurrentConnectionStatus == 20)
			{
				return;
			}
			LogHelper.LogMessage(string.Format("--> {0}: CHANGED CONNECTION STATUS {1} TO {2}", base.GetType().Name, ObjectHolder.ConnectionStatus, <>c__DisplayClass73_.e.CurrentConnectionStatus));
			if (ObjectHolder.ConnectionStatus == 10000 && (<>c__DisplayClass73_.e.CurrentConnectionStatus == null || <>c__DisplayClass73_.e.CurrentConnectionStatus == 1))
			{
				this._reestablishedCount++;
				if (this._reestablishedCount > 10)
				{
					SynchronizationContext arg_BD_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_BD_1;
					if ((arg_BD_1 = MainWindow.<>c.<>9__73_0) == null)
					{
						arg_BD_1 = (MainWindow.<>c.<>9__73_0 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_0));
					}
					arg_BD_0.Post(arg_BD_1, null);
					ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
					return;
				}
				MainWindow.SendConnectionReestablishedEvent();
			}
			if (ObjectHolder.ConnectionStatus == null && <>c__DisplayClass73_.e.CurrentConnectionStatus == 10000)
			{
				MainWindow.SendConnectionDroppedEvent();
			}
			if (ObjectHolder.ConnectionStatus == 20 && <>c__DisplayClass73_.e.CurrentConnectionStatus == -1)
			{
				this._reestablishedCount = 0;
				ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_1), null);
			}
			if (<>c__DisplayClass73_.e.CurrentConnectionStatus == null)
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_2), this.WasConnected);
				if (!this.Reconnecting && ObjectHolder.ConnectionStatus == 10 && !this.WasConnected)
				{
					this.WasConnected = true;
					this.SendConnectionOkEvent();
					SynchronizationContext arg_1A3_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_1A3_1;
					if ((arg_1A3_1 = MainWindow.<>c.<>9__73_3) == null)
					{
						arg_1A3_1 = (MainWindow.<>c.<>9__73_3 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_3));
					}
					arg_1A3_0.Post(arg_1A3_1, null);
				}
				ObjectHolder.ConnectionStatus = <>c__DisplayClass73_.e.CurrentConnectionStatus;
			}
			if (ObjectHolder.ConnectionStatus == 3000 && <>c__DisplayClass73_.e.CurrentConnectionStatus == 6000)
			{
				<>c__DisplayClass73_.e.CurrentConnectionStatus = 3000;
			}
			if (ObjectHolder.ConnectionStatus != 10 && <>c__DisplayClass73_.e.CurrentConnectionStatus == 10000)
			{
				ObjectHolder.ConnectionStatus = 10000;
			}
			else
			{
				ObjectHolder.ConnectionStatus = <>c__DisplayClass73_.e.CurrentConnectionStatus;
			}
			ConnectionStatus currentConnectionStatus = <>c__DisplayClass73_.e.CurrentConnectionStatus;
			if (currentConnectionStatus <= 5000)
			{
				if (currentConnectionStatus > 20)
				{
					if (currentConnectionStatus <= 2000)
					{
						if (currentConnectionStatus != 1000)
						{
							if (currentConnectionStatus != 2000)
							{
								goto IL_65B;
							}
							goto IL_438;
						}
					}
					else
					{
						if (currentConnectionStatus == 3000)
						{
							this.SendConnectionFailedEvent(<>c__DisplayClass73_.e);
							SynchronizationContext arg_392_0 = ObjectHolder.MainContext;
							SendOrPostCallback arg_392_1;
							if ((arg_392_1 = MainWindow.<>c.<>9__73_12) == null)
							{
								arg_392_1 = (MainWindow.<>c.<>9__73_12 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_12));
							}
							arg_392_0.Post(arg_392_1, null);
							goto IL_6CA;
						}
						if (currentConnectionStatus == 4000)
						{
							goto IL_438;
						}
						if (currentConnectionStatus != 5000)
						{
							goto IL_65B;
						}
					}
					if (!this.WasConnected)
					{
						this.WasConnected = true;
						this.SendConnectionFailedEvent(<>c__DisplayClass73_.e);
					}
					SynchronizationContext arg_357_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_357_1;
					if ((arg_357_1 = MainWindow.<>c.<>9__73_7) == null)
					{
						arg_357_1 = (MainWindow.<>c.<>9__73_7 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_7));
					}
					arg_357_0.Post(arg_357_1, null);
					goto IL_6CA;
				}
				if (currentConnectionStatus <= 1)
				{
					if (currentConnectionStatus != -1)
					{
						if (currentConnectionStatus <= 1)
						{
							ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_5), null);
							goto IL_6CA;
						}
						goto IL_65B;
					}
				}
				else
				{
					if (currentConnectionStatus == 10)
					{
						SynchronizationContext arg_2CD_0 = ObjectHolder.MainContext;
						SendOrPostCallback arg_2CD_1;
						if ((arg_2CD_1 = MainWindow.<>c.<>9__73_6) == null)
						{
							arg_2CD_1 = (MainWindow.<>c.<>9__73_6 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_6));
						}
						arg_2CD_0.Post(arg_2CD_1, null);
						goto IL_6CA;
					}
					if (currentConnectionStatus != 20)
					{
						goto IL_65B;
					}
					SynchronizationContext arg_29E_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_29E_1;
					if ((arg_29E_1 = MainWindow.<>c.<>9__73_13) == null)
					{
						arg_29E_1 = (MainWindow.<>c.<>9__73_13 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_13));
					}
					arg_29E_0.Post(arg_29E_1, null);
					goto IL_6CA;
				}
			}
			else if (currentConnectionStatus <= 6090)
			{
				if (currentConnectionStatus <= 6010)
				{
					if (currentConnectionStatus != 6000 && currentConnectionStatus != 6010)
					{
						goto IL_65B;
					}
					goto IL_438;
				}
				else
				{
					if (currentConnectionStatus == 6020)
					{
						goto IL_438;
					}
					if (currentConnectionStatus != 6090)
					{
						goto IL_65B;
					}
				}
			}
			else if (currentConnectionStatus <= 10010)
			{
				if (currentConnectionStatus != 10000 && currentConnectionStatus != 10010)
				{
					goto IL_65B;
				}
				goto IL_438;
			}
			else
			{
				if (currentConnectionStatus - 20000 > 1 && currentConnectionStatus != 30001 && currentConnectionStatus != 99999)
				{
					goto IL_65B;
				}
				SynchronizationContext arg_6C5_0 = ObjectHolder.MainContext;
				SendOrPostCallback arg_6C5_1;
				if ((arg_6C5_1 = MainWindow.<>c.<>9__73_11) == null)
				{
					arg_6C5_1 = (MainWindow.<>c.<>9__73_11 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_11));
				}
				arg_6C5_0.Post(arg_6C5_1, null);
				goto IL_6CA;
			}
			this._reconnectRetries = 0;
			this.Reconnecting = false;
			ObjectHolder.ConnectionStatus = -1;
			SettingsHolder.get_Settings().set_ConnectedProfileName(string.Empty);
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass73_.<CyberGhostCom_OnConnectionStatusChangedEvent>b__4), null);
			goto IL_6CA;
			IL_438:
			IconHelpers.Instance.SetTrayIconBySelectedProfile(false, false);
			LogHelper.LogMessage(string.Format("!!!--- CONNECTION DROPPED {0} RETRY {1} ---!!!", <>c__DisplayClass73_.e.CurrentConnectionStatus, this._reconnectRetries));
			if (<>c__DisplayClass73_.e.CurrentConnectionStatus == 10000 && DateTime.Now - this._mLastNetwokChangedTime < TimeSpan.FromMinutes(5.0) && this._reconnectRetries < 1)
			{
				LogHelper.LogMessage("!!!--- DETECTED NETWORK CHANGE! FORCING RECONNECT TO NEW SERVER ---!!!");
				this._reconnectRetries = 2;
			}
			if (<>c__DisplayClass73_.e.CurrentConnectionStatus == 2000 && this._reconnectRetries < 2)
			{
				LogHelper.LogMessage("!!!--- FETCHING NEW SERVER DUE TO TLS-ERROR ---!!!");
				this._reconnectRetries = 2;
			}
			if (<>c__DisplayClass73_.e.CurrentConnectionStatus == 10010 && this._reconnectRetries < 1)
			{
				LogHelper.LogMessage("!!!--- DETECTED OPENVPN EXITED! FORCING RECONNECT TO NEW SERVER ---!!!");
				this._reconnectRetries = 2;
			}
			if (this._reconnectRetries < 2)
			{
				this.Reconnecting = true;
				if (<>c__DisplayClass73_.e.CurrentConnectionStatus != 10000)
				{
					LogHelper.LogMessage("!!!--- FETCHING NEW SERVER ---!!!");
					SynchronizationContext arg_568_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_568_1;
					if ((arg_568_1 = MainWindow.<>c.<>9__73_8) == null)
					{
						arg_568_1 = (MainWindow.<>c.<>9__73_8 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_8));
					}
					arg_568_0.Post(arg_568_1, null);
					goto IL_6CA;
				}
				LogHelper.LogMessage("!!!--- WAITING FOR RECONNECT ---!!!");
				this._reconnectRetries++;
				goto IL_6CA;
			}
			else
			{
				if (this._reconnectRetries < 3)
				{
					SynchronizationContext arg_5BD_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_5BD_1;
					if ((arg_5BD_1 = MainWindow.<>c.<>9__73_9) == null)
					{
						arg_5BD_1 = (MainWindow.<>c.<>9__73_9 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9));
					}
					arg_5BD_0.Post(arg_5BD_1, null);
					goto IL_6CA;
				}
				MainWindow.<>c__DisplayClass73_1 <>c__DisplayClass73_2 = new MainWindow.<>c__DisplayClass73_1();
				<>c__DisplayClass73_2.CS$<>8__locals1 = <>c__DisplayClass73_;
				LogHelper.LogMessage("!!!--- GIVING UP ---!!!");
				<>c__DisplayClass73_2.wc = this.WasConnected;
				if (!this.WasConnected)
				{
					this.WasConnected = true;
					this.SendConnectionFailedEvent(<>c__DisplayClass73_2.CS$<>8__locals1.e);
				}
				ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass73_2.<CyberGhostCom_OnConnectionStatusChangedEvent>b__10), null);
				this._reconnectRetries = 100;
				this.Reconnecting = false;
				ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
				goto IL_6CA;
			}
			IL_65B:
			SynchronizationContext arg_680_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_680_1;
			if ((arg_680_1 = MainWindow.<>c.<>9__73_14) == null)
			{
				arg_680_1 = (MainWindow.<>c.<>9__73_14 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_14));
			}
			arg_680_0.Post(arg_680_1, null);
			LogHelper.LogMessage(string.Format("--> GOT AN UNDEFINDED CONNECTION STATUS {0}", ObjectHolder.ConnectionStatus));
			IL_6CA:
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass73_.<CyberGhostCom_OnConnectionStatusChangedEvent>b__15), null);
		}

		public void DoBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			MainWindow.<>c__DisplayClass74_0 <>c__DisplayClass74_ = new MainWindow.<>c__DisplayClass74_0();
			<>c__DisplayClass74_.isReconnect = isReconnect;
			<>c__DisplayClass74_.isAppProtection = isAppProtection;
			try
			{
				if (!<>c__DisplayClass74_.isReconnect)
				{
					HelperFunctions.StartProcessList(ObjectHolder.AppListLaunchConnectBefore);
					foreach (string current in ObjectHolder.AppListKillConnectBefore)
					{
						ObjectHolder.CyberGhostCom.CloseApplication(current);
					}
				}
				if (ObjectHolder.MainContext != null)
				{
					ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass74_.<DoBeforeConnect>b__0), null);
				}
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("EXCEPTION ON DoBeforeConnect: {0}", ex.Message));
			}
		}

		public void DoAfterConnect(bool isReconnect, bool isAppProtection)
		{
			try
			{
				if (!isReconnect)
				{
					Action arg_22_0;
					if ((arg_22_0 = MainWindow.<>c.<>9__75_0) == null)
					{
						arg_22_0 = (MainWindow.<>c.<>9__75_0 = new Action(MainWindow.<>c.<>9.<DoAfterConnect>b__75_0));
					}
					Task.Run(arg_22_0);
					if (isAppProtection)
					{
						Action arg_4A_0;
						if ((arg_4A_0 = MainWindow.<>c.<>9__75_1) == null)
						{
							arg_4A_0 = (MainWindow.<>c.<>9__75_1 = new Action(MainWindow.<>c.<>9.<DoAfterConnect>b__75_1));
						}
						Task.Run(arg_4A_0);
					}
				}
				if (!isReconnect)
				{
					CancellationTokenSource expr_5C = this._forcedDisconnectTokenSource;
					if (expr_5C != null)
					{
						expr_5C.Cancel(false);
					}
					this._forcedDisconnectTokenSource = new CancellationTokenSource();
					if (ObjectHolder.CurrentUser.IsFreeUser())
					{
						double popupTimerInterval = ObjectHolder.CurrentStatus.GetPopupTimerInterval("forced_disconnect_timer_interval");
						if (popupTimerInterval > -1.0)
						{
							NotificationPopup.ShowOnceTimed(PopUpZone.ForcedDisconnect, popupTimerInterval, this._forcedDisconnectTokenSource.Token);
						}
					}
					if (ObjectHolder.CurrentProfile == null)
					{
						goto IL_37F;
					}
					string text = string.Empty;
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						if (ObjectHolder.CurrentProfile.GetBaseName().Equals("wifi"))
						{
							text = CyberGhost.Translations.Home.GhostWifi + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("network"))
						{
							text = CyberGhost.Translations.Home.GhostNetwork + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousBrowsing"))
						{
							text = CyberGhost.Translations.Home.GhostBrowsing + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousDownloading"))
						{
							text = CyberGhost.Translations.Home.GhostDownloads + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("custom"))
						{
							text = CyberGhost.Translations.Home.GhostPro + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("unblock"))
						{
							text = CyberGhost.Translations.Home.GhostStreaming + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("antiCensor"))
						{
							text = CyberGhost.Translations.Home.GhostAntiCensor + Status._IS_ACTIVE;
						}
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("wifi"))
					{
						text = CyberGhost.Translations.Home._Wifiprotection + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("network"))
					{
						text = CyberGhost.Translations.Home._Networkprotection + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousBrowsing"))
					{
						text = CyberGhost.Translations.Home.HeadlinePrivateBrowsing + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousDownloading"))
					{
						text = CyberGhost.Translations.Home.HeaderAnonDownloading + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("custom"))
					{
						text = CyberGhost.Translations.Home.HeaderCustom + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("unblock"))
					{
						text = CyberGhost.Translations.Home.HeaderUnblock + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("antiCensor"))
					{
						text = CyberGhost.Translations.Home.HeaderAnti + Status._IS_ACTIVE;
					}
					try
					{
						Toaster.ShowSuccess(this, Status.Status_Head_CyberGhost_6, text, 1, 0, 10.0);
						goto IL_37F;
					}
					catch (Exception ex)
					{
						LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
						goto IL_37F;
					}
				}
				try
				{
					Toaster.ShowSuccess(this, Status.Status_Head_CyberGhost_6, Status.reestablished, 1, 0, 10.0);
				}
				catch (Exception ex2)
				{
					LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex2.Message));
				}
				IL_37F:
				if (ObjectHolder.CurrentProfile != null)
				{
					try
					{
						IConnectionStates expr_390 = ObjectHolder.CurrentProfile as IConnectionStates;
						if (expr_390 != null)
						{
							expr_390.OnAfterConnected(isReconnect, isAppProtection);
						}
					}
					catch (Exception ex3)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterConnected FOR PROFILE: {0}", ex3.Message));
					}
				}
				try
				{
					NotifiyHome expr_3BF = ObjectHolder.NotifiyIcon;
					if (expr_3BF != null)
					{
						expr_3BF.OnAfterConnected(isReconnect, isAppProtection);
					}
				}
				catch (Exception ex4)
				{
					LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterConnected FOR NotifyIcon: {0}", ex4.Message));
				}
				if (ObjectHolder.CurrentConnectingScreen != null)
				{
					try
					{
						IConnectionStates expr_3F4 = ObjectHolder.CurrentConnectingScreen;
						if (expr_3F4 != null)
						{
							expr_3F4.OnAfterConnected(isReconnect, isAppProtection);
						}
					}
					catch (Exception ex5)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterConnected FOR CONNECTING SCREEN: {0}", ex5.Message));
					}
				}
				if (CyberGhost.Pages.Home._Home != null)
				{
					CyberGhost.Pages.Home._Home.OnAfterConnected(isReconnect, isAppProtection);
				}
			}
			catch (Exception ex6)
			{
				HelperFunctions.DebugLine(string.Format("EXCEPTION ON OnAfterConnected: {0}", ex6.Message));
			}
		}

		public void DoBeforeDisconnect()
		{
			try
			{
				CancellationTokenSource expr_06 = this._forcedDisconnectTokenSource;
				if (expr_06 != null)
				{
					expr_06.Cancel(false);
				}
				HelperFunctions.StartProcessList(ObjectHolder.AppListLaunchDisconnectBefore);
				foreach (string current in ObjectHolder.AppListKillDisconnectBefore)
				{
					ObjectHolder.CyberGhostCom.CloseApplication(current);
				}
				if (SettingsHolder.get_Settings().get_AppProtection())
				{
					foreach (string current2 in SettingsHolder.get_Settings().get_AppSandboxList())
					{
						ObjectHolder.CyberGhostCom.CloseApplication(current2);
					}
				}
				ProcessHelpers.ReenableProcessWatcherDebugger();
				if (ObjectHolder.CurrentProfile != null)
				{
					try
					{
						IConnectionStates expr_B1 = ObjectHolder.CurrentProfile as IConnectionStates;
						if (expr_B1 != null)
						{
							expr_B1.OnBeforeDisconnect();
						}
					}
					catch (Exception ex)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnBeforeDisconnect FOR PROFILE: {0}", ex.Message));
					}
				}
				try
				{
					NotifiyHome expr_DE = ObjectHolder.NotifiyIcon;
					if (expr_DE != null)
					{
						expr_DE.OnBeforeDisconnect();
					}
				}
				catch (Exception ex2)
				{
					LogHelper.LogMessage(string.Format("EXCEPTION ON OnBeforeDisconnect FOR NotifyIcon: {0}", ex2.Message));
				}
				if (ObjectHolder.CurrentConnectingScreen != null)
				{
					try
					{
						IConnectionStates expr_111 = ObjectHolder.CurrentConnectingScreen;
						if (expr_111 != null)
						{
							expr_111.OnBeforeDisconnect();
						}
					}
					catch (Exception ex3)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnBeforeDisconnect FOR CONNECTING SCREEN: {0}", ex3.Message));
					}
				}
				if (CyberGhost.Pages.Home._Home != null)
				{
					CyberGhost.Pages.Home._Home.OnBeforeDisconnect();
				}
			}
			catch (Exception ex4)
			{
				LogHelper.LogMessage(string.Format("EXCEPTION ON OnBeforeDisconnect: {0}", ex4.Message));
			}
		}

		public void DoAfterDisconnect(bool wasConnected)
		{
			try
			{
				HelperFunctions.StartProcessList(ObjectHolder.AppListLaunchDisconnectAfter);
				foreach (string current in ObjectHolder.AppListKillDisconnectAfter)
				{
					ObjectHolder.CyberGhostCom.CloseApplication(current);
				}
				if (ObjectHolder.CurrentProfile != null)
				{
					try
					{
						IConnectionStates expr_55 = ObjectHolder.CurrentProfile as IConnectionStates;
						if (expr_55 != null)
						{
							expr_55.OnAfterDisconnected();
						}
					}
					catch (Exception ex)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterDisconnected FOR PROFILE: {0}", ex.Message));
					}
				}
				try
				{
					NotifiyHome expr_80 = ObjectHolder.NotifiyIcon;
					if (expr_80 != null)
					{
						expr_80.OnAfterDisconnected();
					}
				}
				catch (Exception ex2)
				{
					LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterDisconnected FOR PROFILE: {0}", ex2.Message));
				}
				if (ObjectHolder.CurrentConnectingScreen != null)
				{
					try
					{
						IConnectionStates expr_B1 = ObjectHolder.CurrentConnectingScreen;
						if (expr_B1 != null)
						{
							expr_B1.OnAfterDisconnected();
						}
					}
					catch (Exception ex3)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterDisconnected FOR CONNECTING SCREEN: {0}", ex3.Message));
					}
				}
				if (CyberGhost.Pages.Home._Home != null)
				{
					CyberGhost.Pages.Home._Home.OnAfterDisconnected();
				}
				DebugWindow expr_EE = ObjectHolder.DebugWindow;
				if (expr_EE != null)
				{
					expr_EE.CreateNewSession();
				}
				ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				try
				{
					if (wasConnected)
					{
						Toaster.ShowSuccess(this, Status.Status_Head_CyberGhost_6, Status.disconnected, 1, 0, 10.0);
					}
				}
				catch (Exception ex4)
				{
					LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex4.Message));
				}
			}
			catch (Exception ex5)
			{
				LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterDisconnected: {0}", ex5.Message));
			}
		}

		public void ClearResumePurchaseCookie()
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = MainWindow.<>c.<>9__81_0) == null)
			{
				arg_25_1 = (MainWindow.<>c.<>9__81_0 = new SendOrPostCallback(MainWindow.<>c.<>9.<ClearResumePurchaseCookie>b__81_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		[AsyncStateMachine(typeof(MainWindow.<UpdateLoggedInUser>d__82))]
		public Task<bool> UpdateLoggedInUser(bool updateStatus, bool forceUserRefresh)
		{
			MainWindow.<UpdateLoggedInUser>d__82 <UpdateLoggedInUser>d__;
			<UpdateLoggedInUser>d__.<>4__this = this;
			<UpdateLoggedInUser>d__.updateStatus = updateStatus;
			<UpdateLoggedInUser>d__.forceUserRefresh = forceUserRefresh;
			<UpdateLoggedInUser>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<UpdateLoggedInUser>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <UpdateLoggedInUser>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<UpdateLoggedInUser>d__82>(ref <UpdateLoggedInUser>d__);
			return <UpdateLoggedInUser>d__.<>t__builder.Task;
		}

		public void UpdateUserLabel()
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<UpdateUserLabel>b__83_0), null);
		}

		[AsyncStateMachine(typeof(MainWindow.<EnablePollUser>d__84))]
		public Task EnablePollUser()
		{
			MainWindow.<EnablePollUser>d__84 <EnablePollUser>d__;
			<EnablePollUser>d__.<>4__this = this;
			<EnablePollUser>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<EnablePollUser>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <EnablePollUser>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<EnablePollUser>d__84>(ref <EnablePollUser>d__);
			return <EnablePollUser>d__.<>t__builder.Task;
		}

		private Task<bool?> JsonOAuthRestClient_ServiceNotAvailable(object sender, CallInfos infos)
		{
			if (!new string[]
			{
				"feedback",
				"me",
				"status"
			}.Contains(infos.get_Action()) && ObjectHolder.MainForm.IsVisible && DateTime.Now - this._mLastServiceNotAvailabeMessageShown > TimeSpan.FromSeconds(10.0))
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<JsonOAuthRestClient_ServiceNotAvailable>b__85_0), null);
			}
			return Task.FromResult<bool?>(new bool?(true));
		}

		[AsyncStateMachine(typeof(MainWindow.<JsonOAuthRestClient_UserNotAuthorized>d__86))]
		private Task<bool?> JsonOAuthRestClient_UserNotAuthorized(object sender, CallInfos infos)
		{
			MainWindow.<JsonOAuthRestClient_UserNotAuthorized>d__86 <JsonOAuthRestClient_UserNotAuthorized>d__;
			<JsonOAuthRestClient_UserNotAuthorized>d__.<>4__this = this;
			<JsonOAuthRestClient_UserNotAuthorized>d__.<>t__builder = AsyncTaskMethodBuilder<bool?>.Create();
			<JsonOAuthRestClient_UserNotAuthorized>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool?> <>t__builder = <JsonOAuthRestClient_UserNotAuthorized>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<JsonOAuthRestClient_UserNotAuthorized>d__86>(ref <JsonOAuthRestClient_UserNotAuthorized>d__);
			return <JsonOAuthRestClient_UserNotAuthorized>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<DoLogout>d__87))]
		public Task<bool> DoLogout()
		{
			MainWindow.<DoLogout>d__87 <DoLogout>d__;
			<DoLogout>d__.<>4__this = this;
			<DoLogout>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<DoLogout>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <DoLogout>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<DoLogout>d__87>(ref <DoLogout>d__);
			return <DoLogout>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<PollUserTimerTick>d__88))]
		private void PollUserTimerTick(object source, ElapsedEventArgs e)
		{
			MainWindow.<PollUserTimerTick>d__88 <PollUserTimerTick>d__;
			<PollUserTimerTick>d__.<>4__this = this;
			<PollUserTimerTick>d__.source = source;
			<PollUserTimerTick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<PollUserTimerTick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <PollUserTimerTick>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<PollUserTimerTick>d__88>(ref <PollUserTimerTick>d__);
		}

		[AsyncStateMachine(typeof(MainWindow.<UpdateStatus>d__89))]
		public Task UpdateStatus()
		{
			MainWindow.<UpdateStatus>d__89 <UpdateStatus>d__;
			<UpdateStatus>d__.<>4__this = this;
			<UpdateStatus>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<UpdateStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <UpdateStatus>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<UpdateStatus>d__89>(ref <UpdateStatus>d__);
			return <UpdateStatus>d__.<>t__builder.Task;
		}

		public void ShowTitleLinkUpgrade()
		{
		}

		public void OnUserOrPlanHasChanged()
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<OnUserOrPlanHasChanged>b__91_0), null);
		}

		internal void Disconnect()
		{
			ThreadPool.QueueUserWorkItem(new WaitCallback(this.<Disconnect>b__95_0));
		}

		internal Task<MainWindow.ConnectResultAdvanced> ConnectWithProfile(string aProfileClass, bool isReconnect = false, bool isAppProtection = false, bool updateHistory = true)
		{
			object settingByName = SettingsHolder.get_Settings().GetSettingByName(aProfileClass);
			if (settingByName == null)
			{
				return Task.FromResult<MainWindow.ConnectResultAdvanced>(new MainWindow.ConnectResultAdvanced
				{
					ConnectResult = MainWindow.ConnectResult.ProfileNotSet
				});
			}
			return this.ConnectWithProfile(settingByName as CgBase, isReconnect, isAppProtection, updateHistory);
		}

		[AsyncStateMachine(typeof(MainWindow.<ConnectWithProfile>d__97))]
		internal Task<MainWindow.ConnectResultAdvanced> ConnectWithProfile(CgBase aProfile, bool isReconnect = false, bool isAppProtection = false, bool updateHistory = true)
		{
			MainWindow.<ConnectWithProfile>d__97 <ConnectWithProfile>d__;
			<ConnectWithProfile>d__.<>4__this = this;
			<ConnectWithProfile>d__.aProfile = aProfile;
			<ConnectWithProfile>d__.isReconnect = isReconnect;
			<ConnectWithProfile>d__.isAppProtection = isAppProtection;
			<ConnectWithProfile>d__.updateHistory = updateHistory;
			<ConnectWithProfile>d__.<>t__builder = AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced>.Create();
			<ConnectWithProfile>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder = <ConnectWithProfile>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<ConnectWithProfile>d__97>(ref <ConnectWithProfile>d__);
			return <ConnectWithProfile>d__.<>t__builder.Task;
		}

		private void ProcessPreflightConnectResult(MainWindow.ConnectResultAdvanced conResult)
		{
			if (conResult.ConnectResult != MainWindow.ConnectResult.Ok)
			{
				ConnectionStatusChangedEventArgs connectionStatusChangedEventArgs = new ConnectionStatusChangedEventArgs
				{
					Reason = string.Format("{0}", conResult.ConnectResult)
				};
				if (conResult.Exception != null)
				{
					connectionStatusChangedEventArgs.Exception = conResult.Exception.GetType().Name;
					StackFrame frame = new StackTrace(conResult.Exception, true).GetFrame(0);
					if (frame != null)
					{
						string text = frame.GetFileName();
						int num = string.IsNullOrEmpty(text) ? -1 : text.IndexOf("\\CyberGhost 6\\", StringComparison.InvariantCultureIgnoreCase);
						if (num > 0 && !string.IsNullOrEmpty(text))
						{
							text = text.Substring(num + "\\CyberGhost 6\\".Length);
						}
						else if (string.IsNullOrEmpty(text))
						{
							text = "UNKNOWN";
						}
						ConnectionStatusChangedEventArgs expr_B5 = connectionStatusChangedEventArgs;
						expr_B5.ExceptionData += string.Format("{0}::{1} {2}", text, frame.GetFileLineNumber(), conResult.Exception.Message);
					}
				}
				if (conResult.AdditionalData != null)
				{
					ConnectionStatusChangedEventArgs expr_EF = connectionStatusChangedEventArgs;
					expr_EF.AdditionalData += conResult.AdditionalData;
				}
				switch (conResult.ConnectResult)
				{
				case MainWindow.ConnectResult.TapAdapterInstallationFailed:
				{
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 3000;
					ObjectHolder.ConnectionStatus = 3000;
					SynchronizationContext arg_175_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_175_1;
					if ((arg_175_1 = MainWindow.<>c.<>9__98_0) == null)
					{
						arg_175_1 = (MainWindow.<>c.<>9__98_0 = new SendOrPostCallback(MainWindow.<>c.<>9.<ProcessPreflightConnectResult>b__98_0));
					}
					arg_175_0.Post(arg_175_1, null);
					break;
				}
				case MainWindow.ConnectResult.ProfileNotSet:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 6010;
					break;
				case MainWindow.ConnectResult.CouldNotFetchServer:
				case MainWindow.ConnectResult.CouldNotFetchServerConfig:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 6010;
					break;
				case MainWindow.ConnectResult.PortCheckFailed:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 6020;
					break;
				case MainWindow.ConnectResult.CaCertificateCheckFailed:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 5000;
					this.CyberGhostCom_OnCertificateMissingEvent(null);
					break;
				case MainWindow.ConnectResult.UserCertificateCheckFailed:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 5000;
					this.CyberGhostCom_OnCertificateMissingEvent(null);
					break;
				case MainWindow.ConnectResult.PopupCancelled:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 6090;
					break;
				}
				this.CyberGhostCom_OnConnectionStatusChangedEvent(connectionStatusChangedEventArgs);
			}
		}

		[AsyncStateMachine(typeof(MainWindow.<Connect>d__99))]
		internal Task<MainWindow.ConnectResultAdvanced> Connect(bool isReconnect = false, bool isAppProtection = false, bool forceCertificateCheck = false)
		{
			MainWindow.<Connect>d__99 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.isReconnect = isReconnect;
			<Connect>d__.isAppProtection = isAppProtection;
			<Connect>d__.forceCertificateCheck = forceCertificateCheck;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced>.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<Connect>d__99>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<InternalConnectWithProfile>d__100))]
		private Task<MainWindow.ConnectResultAdvanced> InternalConnectWithProfile(CgBase aProfile, string lastServerIp, bool isReconnect = false, bool isAppProtection = false, bool updateHistory = true, bool forceCerfificateCheck = false)
		{
			MainWindow.<InternalConnectWithProfile>d__100 <InternalConnectWithProfile>d__;
			<InternalConnectWithProfile>d__.<>4__this = this;
			<InternalConnectWithProfile>d__.aProfile = aProfile;
			<InternalConnectWithProfile>d__.lastServerIp = lastServerIp;
			<InternalConnectWithProfile>d__.isReconnect = isReconnect;
			<InternalConnectWithProfile>d__.isAppProtection = isAppProtection;
			<InternalConnectWithProfile>d__.updateHistory = updateHistory;
			<InternalConnectWithProfile>d__.forceCerfificateCheck = forceCerfificateCheck;
			<InternalConnectWithProfile>d__.<>t__builder = AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced>.Create();
			<InternalConnectWithProfile>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder = <InternalConnectWithProfile>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<InternalConnectWithProfile>d__100>(ref <InternalConnectWithProfile>d__);
			return <InternalConnectWithProfile>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<InternalConnect>d__101))]
		private Task<MainWindow.ConnectResultAdvanced> InternalConnect(ServerTestResult aServerTestResult, bool isReconnect, bool isAppProtection, bool updateHistory = true, bool forceCertificateCheck = false)
		{
			MainWindow.<InternalConnect>d__101 <InternalConnect>d__;
			<InternalConnect>d__.<>4__this = this;
			<InternalConnect>d__.aServerTestResult = aServerTestResult;
			<InternalConnect>d__.isReconnect = isReconnect;
			<InternalConnect>d__.isAppProtection = isAppProtection;
			<InternalConnect>d__.updateHistory = updateHistory;
			<InternalConnect>d__.forceCertificateCheck = forceCertificateCheck;
			<InternalConnect>d__.<>t__builder = AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced>.Create();
			<InternalConnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder = <InternalConnect>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<InternalConnect>d__101>(ref <InternalConnect>d__);
			return <InternalConnect>d__.<>t__builder.Task;
		}

		internal void LockInternet()
		{
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.LockInternetConnection();
			}
		}

		internal void UnlockInternet()
		{
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.UnlockInternetConnection();
			}
		}

		[AsyncStateMachine(typeof(MainWindow.<ConnectDirect>d__109))]
		private void ConnectDirect(HelperFunctions.WlanInfos wifi)
		{
			MainWindow.<ConnectDirect>d__109 <ConnectDirect>d__;
			<ConnectDirect>d__.<>4__this = this;
			<ConnectDirect>d__.wifi = wifi;
			<ConnectDirect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ConnectDirect>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ConnectDirect>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<ConnectDirect>d__109>(ref <ConnectDirect>d__);
		}

		private static Task<WifiPopup.WifiConnectionResult> _wifiOpenMessageBox(string wifiSsid)
		{
			return new WifiPopup
			{
				WifiSsid = wifiSsid
			}.ShowPopup(10000, ObjectHolder.ConnectTokenSource.Token);
		}

		private void _wifiDetector_OnNewWiFiDetected(HelperFunctions.WlanInfos[] newWiFis)
		{
			MainWindow.<>c__DisplayClass111_0 <>c__DisplayClass111_ = new MainWindow.<>c__DisplayClass111_0();
			<>c__DisplayClass111_.<>4__this = this;
			<>c__DisplayClass111_.newWiFis = newWiFis;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass111_.<_wifiDetector_OnNewWiFiDetected>b__0), null);
		}

		public MainWindow()
		{
			MainWindow.<>c__DisplayClass112_0 <>c__DisplayClass112_ = new MainWindow.<>c__DisplayClass112_0();
			try
			{
				this.InitializeComponent();
			}
			catch (Exception)
			{
			}
			base.DataContext = this;
			ObjectHolder.MainContext = SynchronizationContext.Current;
			ObjectHolder.MainForm = this;
			base.MinHeight = 550.0;
			base.MinWidth = 800.0;
			base.Icon = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Default\\Regular.ico")));
			System.Drawing.Point windowSize = SettingsHolder.get_Settings().get_WindowSize();
			if (windowSize.IsEmpty)
			{
				base.Width = 800.0;
				base.Height = 550.0;
			}
			else
			{
				base.Width = (double)windowSize.X;
				base.Height = (double)windowSize.Y;
			}
			<>c__DisplayClass112_.windowPosition = SettingsHolder.get_Settings().get_WindowPosition();
			<>c__DisplayClass112_.windowRightBottomPosition = new System.Drawing.Point(<>c__DisplayClass112_.windowPosition.X + (int)base.Width, <>c__DisplayClass112_.windowPosition.Y + (int)base.Height);
			if (!<>c__DisplayClass112_.windowPosition.IsEmpty)
			{
				if (!Screen.AllScreens.Any(new Func<Screen, bool>(<>c__DisplayClass112_.<.ctor>b__0)))
				{
					base.WindowStartupLocation = WindowStartupLocation.CenterScreen;
				}
				else
				{
					base.Left = (double)<>c__DisplayClass112_.windowPosition.X;
					base.Top = (double)<>c__DisplayClass112_.windowPosition.Y;
				}
			}
			else
			{
				base.WindowStartupLocation = WindowStartupLocation.CenterScreen;
			}
			Theming.ThemeChanged += new Theming.NotifyEvent(this.UpdateTheme);
			this.UpdateTheme();
			Dictionary<Uri, ICommand> arg_1E5_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_1E5_1 = new Uri("auth://go_account");
			Func<Task> arg_1E0_0;
			if ((arg_1E0_0 = MainWindow.<>c.<>9__112_1) == null)
			{
				arg_1E0_0 = (MainWindow.<>c.<>9__112_1 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_1));
			}
			arg_1E5_0.Add(arg_1E5_1, new AsyncDelegateCommand(arg_1E0_0, new Func<bool>(MainWindow.CanExecute)));
			Dictionary<Uri, ICommand> arg_22F_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_22F_1 = new Uri("auth://go_upgrade");
			Func<Task> arg_22A_0;
			if ((arg_22A_0 = MainWindow.<>c.<>9__112_2) == null)
			{
				arg_22A_0 = (MainWindow.<>c.<>9__112_2 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_2));
			}
			arg_22F_0.Add(arg_22F_1, new AsyncDelegateCommand(arg_22A_0, new Func<bool>(MainWindow.CanExecute)));
			base.get_LinkNavigator().get_Commands().Add(new Uri("auth://login"), new AsyncDelegateCommand(new Func<Task>(this.OpenLogin), new Func<bool>(MainWindow.CanExecute)));
			Dictionary<Uri, ICommand> arg_2B0_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_2B0_1 = new Uri("auth://home");
			Func<Task> arg_2AB_0;
			if ((arg_2AB_0 = MainWindow.<>c.<>9__112_3) == null)
			{
				arg_2AB_0 = (MainWindow.<>c.<>9__112_3 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_3));
			}
			arg_2B0_0.Add(arg_2B0_1, new AsyncDelegateCommand(arg_2AB_0, new Func<bool>(MainWindow.CanExecute)));
			Dictionary<Uri, ICommand> arg_2FA_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_2FA_1 = new Uri("auth://back");
			Func<Task> arg_2F5_0;
			if ((arg_2F5_0 = MainWindow.<>c.<>9__112_4) == null)
			{
				arg_2F5_0 = (MainWindow.<>c.<>9__112_4 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_4));
			}
			arg_2FA_0.Add(arg_2FA_1, new AsyncDelegateCommand(arg_2F5_0, new Func<bool>(MainWindow.CanExecute)));
			Dictionary<Uri, ICommand> arg_344_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_344_1 = new Uri("auth://settings");
			Func<Task> arg_33F_0;
			if ((arg_33F_0 = MainWindow.<>c.<>9__112_5) == null)
			{
				arg_33F_0 = (MainWindow.<>c.<>9__112_5 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_5));
			}
			arg_344_0.Add(arg_344_1, new AsyncDelegateCommand(arg_33F_0, new Func<bool>(MainWindow.CanExecute)));
			base.get_LinkNavigator().get_Commands().Add(new Uri("auth://go_feedback"), new AsyncDelegateCommand(new Func<Task>(this.<.ctor>b__112_6), new Func<bool>(MainWindow.CanExecute)));
			Func<Task> arg_3A0_0;
			if ((arg_3A0_0 = MainWindow.<>c.<>9__112_7) == null)
			{
				arg_3A0_0 = (MainWindow.<>c.<>9__112_7 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_7));
			}
			base.LogoLinkCommand = new AsyncDelegateCommand(arg_3A0_0);
			this._wifiDetector = new WiFiDetector();
			this._wifiDetector.add_OnNewWiFiDetected(new WiFiDetector.NewWiFiDetected(this._wifiDetector_OnNewWiFiDetected));
			ObjectHolder.WifiDetector = this._wifiDetector;
			this.SetupTimedPopUp();
			SystemEvents.PowerModeChanged += new PowerModeChangedEventHandler(this.SystemEvents_PowerModeChanged);
			SystemEvents.SessionEnding += new SessionEndingEventHandler(this.SystemEvents_SessionEnding);
			base.Loaded += new RoutedEventHandler(this.<.ctor>b__112_8);
			KeyValuePair<string, int> lastUsedProfileAndCounter = GuiHelper.GetLastUsedProfileAndCounter();
			if (!string.IsNullOrWhiteSpace(lastUsedProfileAndCounter.Key) && lastUsedProfileAndCounter.Value >= 3 && (!SettingsHolder.get_Settings().get_AutoConnect() || string.IsNullOrEmpty(SettingsHolder.get_Settings().get_AutoStartProfile()) || ObjectHolder.MainForm == null || ObjectHolder.ConnectionStatus != -1 || ObjectHolder.AppListLaunchConnectAfterOnce.Count != 0))
			{
				TrackingHelper.SendProfileClickedEvent(lastUsedProfileAndCounter.Key, "automatic");
				this.LaunchPage(lastUsedProfileAndCounter.Key);
			}
		}

		private void UpdateTheme()
		{
			base.Title = Theming.GetProductName();
			if (Theming.CurrentTheme == Theming.Theme.Pro)
			{
				base.get_MenuLinkGroups()[0].set_DisplayName(CyberGhost.Translations.Home.GhostBrowsing);
				base.get_MenuLinkGroups()[1].set_DisplayName(CyberGhost.Translations.Home.GhostDownloads);
				base.get_MenuLinkGroups()[2].set_DisplayName(CyberGhost.Translations.Home.GhostPro);
				base.get_MenuLinkGroups()[3].set_DisplayName(CyberGhost.Translations.Home.GhostStreaming);
				base.get_MenuLinkGroups()[4].set_DisplayName(CyberGhost.Translations.Home.GhostAntiCensor);
				base.get_MenuLinkGroups()[5].set_DisplayName(CyberGhost.Translations.Home.GhostWifi);
				base.get_MenuLinkGroups()[6].set_DisplayName(CyberGhost.Translations.Home.GhostNetwork);
			}
			base.Icon = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Default\\Regular.ico")));
		}

		public static string UpgradeChannel()
		{
			string result = "client";
			if (DateTime.Now - Constants.get_AffiliateCooldown() <= TimeSpan.FromDays(30.0))
			{
				result = "affiliatecenter";
			}
			return result;
		}

		private void CreateSupportTicket()
		{
			string str = HelperFunctions.RandomString(8L);
			string path = "ticket-" + str + ".png";
			string text = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), path);
			DependencyObject child = VisualTreeHelper.GetChild(this, 0);
			this.CreateScreenShot((int)base.Width, (int)base.Height, (Visual)child, text);
			new Support
			{
				ScreenShotPath = text
			}.Show();
		}

		public void Dispose()
		{
			SystemEvents.PowerModeChanged -= new PowerModeChangedEventHandler(this.SystemEvents_PowerModeChanged);
			if (ObjectHolder.CyberGhostCom == null)
			{
				return;
			}
			ObjectHolder.CyberGhostCom.remove_OnCertificateMissingEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCertificateMissingEvent));
			ObjectHolder.CyberGhostCom.remove_OnConnectionStatusChangedEvent(new EventSender.ConnectionStatusChanged(this.CyberGhostCom_OnConnectionStatusChangedEvent));
			ObjectHolder.CyberGhostCom.remove_OnTapUpdateRequiredEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnTapUpdateRequiredEvent));
			ObjectHolder.CyberGhostCom.remove_OnClientUpdateAvailableEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnClientUpdateAvailableEvent));
			ObjectHolder.CyberGhostCom.remove_OnTrafficChangedEvent(new EventSender.TrafficChanged(this.CyberGhostCom_OnTrafficChangedEvent));
		}

		private void LaunchPage(string profile)
		{
			uint num = <PrivateImplementationDetails>.ComputeStringHash(profile);
			if (num <= 1377339077u)
			{
				if (num != 120087624u)
				{
					if (num != 542584942u)
					{
						if (num != 1377339077u)
						{
							return;
						}
						if (!(profile == "network"))
						{
							return;
						}
						Navigation.GoToPage("Profiles/Network", null, null);
						return;
					}
					else
					{
						if (!(profile == "custom"))
						{
							return;
						}
						Navigation.GoToPage("Profiles/Custom", null, null);
						return;
					}
				}
				else
				{
					if (!(profile == "wifi"))
					{
						return;
					}
					Navigation.GoToPage("Profiles/Wifi", null, null);
					return;
				}
			}
			else if (num <= 1879243226u)
			{
				if (num != 1741922751u)
				{
					if (num != 1879243226u)
					{
						return;
					}
					if (!(profile == "anonymousDownloading"))
					{
						return;
					}
					Navigation.GoToPage("Profiles/AnonymousDownloading", null, null);
					return;
				}
				else
				{
					if (!(profile == "unblock"))
					{
						return;
					}
					Navigation.GoToPage("Profiles/Unblock", null, null);
					return;
				}
			}
			else if (num != 2687971255u)
			{
				if (num != 2889374611u)
				{
					return;
				}
				if (!(profile == "antiCensor"))
				{
					return;
				}
				Navigation.GoToPage("Profiles/Uncensoring", null, null);
				return;
			}
			else
			{
				if (!(profile == "anonymousBrowsing"))
				{
					return;
				}
				Navigation.GoToPage("Profiles/AnonymousBrowsing", null, null);
				return;
			}
		}

		private void ContentFrame_Navigating(object sender, NavigatingCancelEventArgs e)
		{
			if (e.get_Source() != null && e.get_Source().ToString().ToLower().Contains("/pages/profiles/"))
			{
				GuiHelper.StartInactivityCheck(1800000);
				return;
			}
			GuiHelper.StopInactivityCheck();
		}

		private void SystemEvents_SessionEnding(object sender, SessionEndingEventArgs e)
		{
			this.Disconnect();
			this.Exit(false);
		}

		private void SystemEvents_PowerModeChanged(object sender, PowerModeChangedEventArgs e)
		{
			if (e.Mode == PowerModes.Suspend && ObjectHolder.CyberGhostCom.GetConnectionStatus() == null)
			{
				DebugLogHelper.Instance.Info(string.Format("{0}: !!! HIBERNATING DETECTED !!! LOCKING UP !!!", MethodBase.GetCurrentMethod().Name));
				DebugLogHelper.Instance.Info(string.Format("--> {0}: Save/Set connection status in ObjectHolder to DROPPED", MethodBase.GetCurrentMethod().Name));
				ObjectHolder.ConnectionStatus = 10000;
				ObjectHolder.CyberGhostCom.LockInternetConnection();
				ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
				return;
			}
			if (e.Mode == PowerModes.Resume && ObjectHolder.CyberGhostCom.IsInternetConnectionLocked())
			{
				DebugLogHelper.Instance.Info(string.Format("{0}: !!! RESUME DETECTED !!! INIT RECONNECT !!!", MethodBase.GetCurrentMethod().Name));
				ObjectHolder.MainForm.Connect(false, false, false);
			}
		}

		private static bool CanExecute()
		{
			return ObjectHolder.MainForm.ContentBlockerVisibility != Visibility.Visible && (ObjectHolder.ConnectionStatus == null || ObjectHolder.ConnectionStatus == -1 || ObjectHolder.ConnectionStatus == 3000);
		}

		[AsyncStateMachine(typeof(MainWindow.<OpenLogin>d__122))]
		public Task<bool> OpenLogin()
		{
			MainWindow.<OpenLogin>d__122 <OpenLogin>d__;
			<OpenLogin>d__.<>4__this = this;
			<OpenLogin>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<OpenLogin>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <OpenLogin>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<OpenLogin>d__122>(ref <OpenLogin>d__);
			return <OpenLogin>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<Exit>d__123))]
		internal void Exit(bool restartApplication)
		{
			MainWindow.<Exit>d__123 <Exit>d__;
			<Exit>d__.<>4__this = this;
			<Exit>d__.restartApplication = restartApplication;
			<Exit>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Exit>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Exit>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<Exit>d__123>(ref <Exit>d__);
		}

		private void ModernWindow_LocationChanged(object sender, EventArgs e)
		{
			System.Drawing.Point windowPosition = new System.Drawing.Point((int)base.Left, (int)base.Top);
			SettingsHolder.get_Settings().set_WindowPosition(windowPosition);
		}

		private void MainWindow_OnSizeChanged(object sender, SizeChangedEventArgs e)
		{
			System.Drawing.Point windowSize = new System.Drawing.Point((int)base.Width, (int)base.Height);
			SettingsHolder.get_Settings().set_WindowSize(windowSize);
		}

		private void MainWindow_OnIsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			if (!this._wifiDetector.get_Enabled())
			{
				this._wifiDetector.set_Enabled(true);
			}
		}

		private void ModernWindowWithMessage_Closing(object sender, CancelEventArgs e)
		{
			e.Cancel = true;
			if (GuiHelper.IsProLoginRequired())
			{
				this.Exit(false);
				return;
			}
			base.Visibility = Visibility.Hidden;
		}

		private void ModernWindowWithMessage_Activated(object sender, EventArgs e)
		{
		}

		private void ModernWindowWithMessage_Deactivated(object sender, EventArgs e)
		{
		}

		[AsyncStateMachine(typeof(MainWindow.<ShowMe>d__130))]
		public void ShowMe()
		{
			MainWindow.<ShowMe>d__130 <ShowMe>d__;
			<ShowMe>d__.<>4__this = this;
			<ShowMe>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ShowMe>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ShowMe>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<ShowMe>d__130>(ref <ShowMe>d__);
		}

		private void TaskbarIcon_OnTrayMouseDoubleClick(object sender, RoutedEventArgs e)
		{
			MainWindow expr_05 = ObjectHolder.MainForm;
			if (expr_05 == null)
			{
				return;
			}
			expr_05.ShowMe();
		}

		private void TaskbarIcon_OnPreviewTrayPopupOpen(object sender, RoutedEventArgs e)
		{
			e.Handled = GuiHelper.IsProLoginRequired();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/mainwindow.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		internal Delegate _CreateDelegate(Type delegateType, string handler)
		{
			return Delegate.CreateDelegate(delegateType, this, handler);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.LblHeaderLogin = (Link)target;
				return;
			case 2:
				this.TitleLinkFeedback = (Link)target;
				return;
			case 3:
				this.TaskbarIcon = (TaskbarIcon)target;
				this.TaskbarIcon.add_TrayMouseDoubleClick(new RoutedEventHandler(this.TaskbarIcon_OnTrayMouseDoubleClick));
				this.TaskbarIcon.add_PreviewTrayPopupOpen(new RoutedEventHandler(this.TaskbarIcon_OnPreviewTrayPopupOpen));
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <_mTimedPopupTimer_Elapsed>b__35_0(object o)
		{
			this._mTimedPopupTimer.Enabled = false;
			this._mTimedPopupTimer.Interval = this.GetTimeedPopUpUpdateInterval();
			NotificationPopup.ShowWithResult(PopUpZone.Timed, CancellationToken.None).ContinueWith(new Action<Task<string>>(this.<_mTimedPopupTimer_Elapsed>b__35_1));
		}

		[CompilerGenerated]
		private void <_mTimedPopupTimer_Elapsed>b__35_1(Task<string> popupTask)
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<_mTimedPopupTimer_Elapsed>b__35_2), null);
		}

		[CompilerGenerated]
		private void <_mTimedPopupTimer_Elapsed>b__35_2(object i)
		{
			this._mTimedPopupTimer.Enabled = true;
		}

		[CompilerGenerated]
		private void <StartForegroundUpdate>b__44_0(object o)
		{
			if (ObjectHolder.ConnectionStatus == -1 || (ObjectHolder.ConnectionStatus != -1 && ModernDialogExtension.ShowDialogYesNo(General.MainWindow_StartForegroundUpdate_ConnectionWillBeDropped, General.MainWindow_StartForegroundUpdate_ConnectionWillBeDroppedMessage) == MessageBoxResult.Yes))
			{
				MainWindow.DoStartForegroundUpdate(new UpdaterArgs.UpdaterNotifyEvent(this.UpdaterArgs_OnNeedsExitApplication));
			}
		}

		[CompilerGenerated]
		private void <UpdaterArgs_OnNeedsExitApplication>b__46_0(object e)
		{
			this.Exit(false);
		}

		[CompilerGenerated]
		private void <CyberGhostCom_OnClientUpdateAvailableEvent>b__63_0(object o)
		{
			if (ObjectHolder.UpdatePanel != null)
			{
				ObjectHolder.UpdatePanel.Visibility = Visibility.Visible;
			}
			if (this._mForceUpdateTimer == null)
			{
				this._mForceUpdateTimer = new System.Windows.Forms.Timer
				{
					Interval = 1800000
				};
				this._mForceUpdateTimer.Tick += new EventHandler(this._mForceUpdateTimer_Tick);
				this._mForceUpdateTimer.Enabled = true;
			}
		}

		[CompilerGenerated]
		private void <CyberGhostCom_OnCertificateMissingEvent>b__71_0(object o)
		{
			this.Connect(true, false, true);
		}

		[CompilerGenerated]
		private void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_1(object o)
		{
			this.DoAfterDisconnect(this.WasConnected);
			if (this.WasConnected)
			{
				MainWindow.SendConnectionTerminatedEvent();
				ObjectHolder.CurrentProfile = null;
				NotificationPopup.ShowWithoutResult(PopUpZone.Disconnected);
			}
		}

		[CompilerGenerated]
		private void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_2(object o)
		{
			this.DoAfterConnect((bool)o, this._mIsAppProtectionConnect);
		}

		[CompilerGenerated]
		private void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_5(object o)
		{
			Theming.CurrentThemeSet = Theming.ThemeSet.Connected;
			this.WasConnected = true;
			IconHelpers.Instance.SetTrayIconBySelectedProfile(true, true);
			Navigation.NavigateToConnectedScreen();
			this._reconnectRetries = 0;
			this.Reconnecting = false;
			EventSender expr_32 = ObjectHolder.CyberGhostCom;
			if (expr_32 == null)
			{
				return;
			}
			expr_32.ClearConnectionWhiteList("_DNS_");
		}

		[CompilerGenerated]
		private void <UpdateLoggedInUser>b__82_1(object o)
		{
			this.OnUserOrPlanHasChanged();
			if (SettingsHolder.get_Settings().get_LastProductId() != 0)
			{
				ObjectHolder.MainForm.ShowMe();
				Navigation.ShowMessageOverlay("PlanChanged", false);
			}
			SettingsHolder.get_Settings().set_LastProductId(ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Id());
			SettingsHolder.get_Settings().SaveSettingsAsync(false).ConfigureAwait(false);
			Navigation.GoToPage("hOme", null, null);
		}

		[CompilerGenerated]
		private void <UpdateUserLabel>b__83_0(object o)
		{
			if (ObjectHolder.CurrentUser != null && !GuiHelper.IsProLoginRequired())
			{
				if (ObjectHolder.CurrentUser.get_AutoCreated() && ObjectHolder.CurrentUser.get_Subscription() != null && ObjectHolder.CurrentUser.IsFreeUser())
				{
					this.LblHeaderLogin.set_DisplayName(CyberGhost.Translations.MainWindow.login);
				}
				else
				{
					this.LblHeaderLogin.set_DisplayName(string.Format(CyberGhost.Translations.MainWindow.Logout, ObjectHolder.CurrentUser.get_UserName()));
				}
			}
			else
			{
				this.LblHeaderLogin.set_DisplayName(CyberGhost.Translations.MainWindow.login);
			}
			this.ShowTitleLinkUpgrade();
		}

		[CompilerGenerated]
		private void <JsonOAuthRestClient_ServiceNotAvailable>b__85_0(object o)
		{
			if (!this._mServiceNotAvailableVisible && (ObjectHolder.ConnectionStatus == null || ObjectHolder.ConnectionStatus == -1))
			{
				this._mLastServiceNotAvailabeMessageShown = DateTime.MaxValue;
				this._mServiceNotAvailableVisible = true;
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
				this._mLastServiceNotAvailabeMessageShown = DateTime.Now;
				this._mServiceNotAvailableVisible = false;
			}
		}

		[CompilerGenerated]
		private void <JsonOAuthRestClient_UserNotAuthorized>b__86_0(object o)
		{
			this.PollUserTimerTick(null, null);
		}

		[CompilerGenerated]
		private void <OnUserOrPlanHasChanged>b__91_0(object o)
		{
			if (Custom.Serverlist != null)
			{
				Custom.Serverlist = new CgApiServerList();
			}
			if (NotifiyHome.Servers != null)
			{
				NotifiyHome.Servers = new CgApiServerList();
			}
			if (AnonymousBrowsing.Servers != null)
			{
				AnonymousBrowsing.Servers = new CgApiServerList();
			}
			this.ClearResumePurchaseCookie();
			this.UpdateUserLabel();
		}

		[CompilerGenerated]
		private void <Disconnect>b__95_0(object <p0>)
		{
			this._cancelConnection = true;
			if (ObjectHolder.ConnectionStatus != -1)
			{
				if (ObjectHolder.ConnectionStatus == 10 && !this.WasConnected)
				{
					MainWindow.SendConnectionAttemptAbortedEvent();
				}
				ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<Disconnect>b__95_1), null);
				return;
			}
			SynchronizationContext arg_62_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_62_1;
			if ((arg_62_1 = MainWindow.<>c.<>9__95_2) == null)
			{
				arg_62_1 = (MainWindow.<>c.<>9__95_2 = new SendOrPostCallback(MainWindow.<>c.<>9.<Disconnect>b__95_2));
			}
			arg_62_0.Post(arg_62_1, null);
		}

		[CompilerGenerated]
		private void <Disconnect>b__95_1(object o)
		{
			this.DoBeforeDisconnect();
			ObjectHolder.MainForm.Reconnecting = false;
			CancellationTokenSource expr_17 = this._connectionCancellationTokenSource;
			if (expr_17 != null)
			{
				expr_17.Cancel(false);
			}
			this._connectionCancellationTokenSource = null;
			ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(true);
		}

		[AsyncStateMachine(typeof(MainWindow.<<-ctor>b__112_6>d)), CompilerGenerated]
		private Task ctor>b__112_6()
		{
			MainWindow.<<-ctor>b__112_6>d <<-ctor>b__112_6>d;
			<<-ctor>b__112_6>d.<>4__this = this;
			<<-ctor>b__112_6>d.<>t__builder = AsyncTaskMethodBuilder.Create();
			<<-ctor>b__112_6>d.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <<-ctor>b__112_6>d.<>t__builder;
			<>t__builder.Start<MainWindow.<<-ctor>b__112_6>d>(ref <<-ctor>b__112_6>d);
			return <<-ctor>b__112_6>d.<>t__builder.Task;
		}

		[CompilerGenerated]
		private void ctor>b__112_8(object sender, RoutedEventArgs e)
		{
			base.ContentFrame.add_Navigating(new EventHandler<NavigatingCancelEventArgs>(this.ContentFrame_Navigating));
		}
	}
}

using System;
using System.IO;
using ZendeskApi.Contracts.Models;

namespace CyberGhost
{
	public class MyHttpPostedFile : IHttpPostedFile
	{
		public string ContentType
		{
			get;
			set;
		}

		public string FileName
		{
			get;
			set;
		}

		public Stream InputStream
		{
			get;
			set;
		}
	}
}

using CyberGhost.Annotations;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using FirstFloor.ModernUI.Windows.Controls;
using MobileConcepts.Components.CustomEvent;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace CyberGhost
{
	public class NotifiyHome : UserControl, IComponentConnector, IStyleConnector, IConnectionStates, ITrafficDataChanged, INotifyPropertyChanged
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass50_0
		{
			public TrafficDataChangedEventArgs trafficData;

			public NotifiyHome <>4__this;

			internal void <OnTrafficDataChanged>b__0()
			{
				if (this.trafficData != null)
				{
					this.<>4__this.LblDownload.Text = this.trafficData.get_CurrentSpeed().Key;
					this.<>4__this.LblDownloadMax.Text = this.trafficData.get_TotalReceived().Key;
					this.<>4__this.LblDownloadAverage.Text = this.trafficData.get_MaxSpeed().Key;
				}
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <QuickConnect_OnClick>d__64 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public NotifiyHome <>4__this;

			private TaskAwaiter<MainWindow.ConnectResultAdvanced> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				NotifiyHome notifiyHome = this.<>4__this;
				try
				{
					if (num != 0)
					{
						ObjectHolder.CurrentConnectionTime = null;
						if (notifiyHome.CountryComboBox.SelectedItem == null)
						{
							goto IL_14F;
						}
						TrackingHelper.SendProfileClickedEvent("anonymousBrowsing", "quicklaunch");
						notifiyHome.LoadingRing.Foreground = notifiyHome._anonSurfColor;
					}
					try
					{
						TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter;
						if (num != 0)
						{
							if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(13))
							{
								ConversionPopUpHelpers.ShowConversionPopUp(13);
								notifiyHome.OnAfterDisconnected();
								goto IL_14F;
							}
							notifiyHome.OnBeforeConnect(false, false);
							SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_CountryCode(((CountryData)notifiyHome.CountryComboBox.SelectedItem).get_CountryCode());
							taskAwaiter = ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing(), false, false, true).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, NotifiyHome.<QuickConnect_OnClick>d__64>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
							this.<>1__state = -1;
						}
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					}
					catch (Exception)
					{
						ObjectHolder.MainForm.ShowMe();
						Navigation.GoToPage("Profiles/AnonymousBrowsing", null, null);
						notifiyHome.OnAfterDisconnected();
						goto IL_14F;
					}
					notifiyHome.HandleConnectedWithAnonSurfing();
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_14F:
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <Exit_OnClick>d__69 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public NotifiyHome <>4__this;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				NotifiyHome notifiyHome = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						notifiyHome.Visibility = Visibility.Hidden;
						Task task = Task.Delay(500);
						taskAwaiter = Task.WhenAll(new Task[]
						{
							task
						}).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, NotifiyHome.<Exit_OnClick>d__69>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					ObjectHolder.MainForm.Exit(false);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <UpgradeButton_OnClick>d__78 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = Navigation.GoInAppPurchase("Tray_button", null).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, NotifiyHome.<UpgradeButton_OnClick>d__78>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					ObjectHolder.MainForm.ShowMe();
					ObjectHolder.MainForm.Focus();
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <ConnectToSelectedHistoryItem>d__92 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public NotifiyHome <>4__this;

			private CgBase <profile>5__1;

			private TaskAwaiter<MainWindow.ConnectResultAdvanced> <>u__1;

			private TaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				NotifiyHome notifiyHome = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					switch (num)
					{
					case 0:
						break;
					case 1:
						goto IL_2C1;
					case 2:
						goto IL_383;
					case 3:
						goto IL_4A1;
					case 4:
						goto IL_563;
					case 5:
						goto IL_625;
					case 6:
						goto IL_6E7;
					case 7:
						taskAwaiter = this.<>u__2;
						this.<>u__2 = default(TaskAwaiter);
						this.<>1__state = -1;
						goto IL_82A;
					default:
						notifiyHome.RestoreFeedbackState();
						ObjectHolder.CurrentConnectionTime = null;
						notifiyHome.Exit.IsEnabled = false;
						this.<profile>5__1 = notifiyHome.SelectedHistoryItem.get_Profile();
						notifiyHome.SelectedHistoryItem.set_LastUsed(DateTime.Now.Ticks);
						notifiyHome.SelectedHistoryItem.set_LastUsedDateTime(DateTime.Now);
						if (this.<profile>5__1 == null || ObjectHolder.MainForm == null)
						{
							goto IL_854;
						}
						if (this.<profile>5__1 is CgProfileAnonymousBrowsing)
						{
							TrackingHelper.SendProfileClickedEvent("anonymousBrowsing", "tray");
							notifiyHome.LoadingRing.Foreground = notifiyHome._anonSurfColor;
						}
						else
						{
							if (this.<profile>5__1 is CgProfileAnonymousDownloading)
							{
								TrackingHelper.SendProfileClickedEvent("anonymousDownloading", "tray");
								notifiyHome.LoadingRing.Foreground = notifiyHome._anonDownloadColor;
								goto IL_2C1;
							}
							if (this.<profile>5__1 is CgProfileCustom)
							{
								TrackingHelper.SendProfileClickedEvent("custom", "tray");
								notifiyHome.LoadingRing.Foreground = notifiyHome._customColor;
								goto IL_383;
							}
							if (this.<profile>5__1 is CgProfileNetwork)
							{
								TrackingHelper.SendProfileClickedEvent("network", "tray");
								notifiyHome.LoadingRing.Foreground = notifiyHome._wifiColor;
								goto IL_4A1;
							}
							if (this.<profile>5__1 is CgProfileWifi)
							{
								TrackingHelper.SendProfileClickedEvent("wifi", "tray");
								notifiyHome.LoadingRing.Foreground = notifiyHome._wifiColor;
								goto IL_563;
							}
							if (this.<profile>5__1 is CgProfileUnblock)
							{
								TrackingHelper.SendProfileClickedEvent("unblock", "tray");
								notifiyHome.LoadingRing.Foreground = notifiyHome._unblockColor;
								goto IL_625;
							}
							if (this.<profile>5__1 is CgProfileUncensoring)
							{
								TrackingHelper.SendProfileClickedEvent("antiCensor", "tray");
								notifiyHome.LoadingRing.Foreground = notifiyHome._antiCensorColor;
								goto IL_6E7;
							}
							goto IL_7A4;
						}
						break;
					}
					try
					{
						TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter2;
						if (num != 0)
						{
							if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(13))
							{
								ConversionPopUpHelpers.ShowConversionPopUp(13);
								goto IL_854;
							}
							notifiyHome.OnBeforeConnect(false, false);
							taskAwaiter2 = ObjectHolder.MainForm.ConnectWithProfile(this.<profile>5__1, false, false, false).GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
							this.<>1__state = -1;
						}
						taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					}
					catch (Exception)
					{
						ObjectHolder.MainForm.ShowMe();
						Navigation.GoToPage("Profiles/AnonymousBrowsing", null, null);
						goto IL_854;
					}
					notifiyHome.HandleConnectedWithAnonSurfing();
					goto IL_7A4;
					IL_2C1:
					try
					{
						TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter2;
						if (num != 1)
						{
							if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(18))
							{
								ConversionPopUpHelpers.ShowConversionPopUp(18);
								goto IL_854;
							}
							notifiyHome.OnBeforeConnect(false, false);
							taskAwaiter2 = ObjectHolder.MainForm.ConnectWithProfile(this.<profile>5__1, false, false, false).GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								this.<>1__state = 1;
								this.<>u__1 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
							this.<>1__state = -1;
						}
						taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					}
					catch (Exception)
					{
						ObjectHolder.MainForm.ShowMe();
						Navigation.GoToPage("Profiles/AnonymousDownloading", null, null);
						goto IL_854;
					}
					notifiyHome.HandleConnectedWithAnonDownloading();
					goto IL_7A4;
					IL_383:
					try
					{
						TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter2;
						if (num != 2)
						{
							if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(16))
							{
								ConversionPopUpHelpers.ShowConversionPopUp(16);
								goto IL_854;
							}
							CgProfileCustom cgProfileCustom = (CgProfileCustom)this.<profile>5__1;
							if (cgProfileCustom.Type == null)
							{
								cgProfileCustom.Type = "custom";
							}
							ObjectHolder.ConnectionType = "automatic";
							if (cgProfileCustom.get_SelectedServerId() > 0)
							{
								ObjectHolder.ConnectionType = "specific server";
							}
							if (!string.IsNullOrEmpty(cgProfileCustom.get_SelectedCountry()))
							{
								ObjectHolder.ConnectionType = "specific country";
							}
							ObjectHolder.CurrentProfileTab = "none";
							taskAwaiter2 = ObjectHolder.MainForm.ConnectWithProfile(cgProfileCustom, false, false, false).GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								this.<>1__state = 2;
								this.<>u__1 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
							this.<>1__state = -1;
						}
						taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					}
					catch (Exception)
					{
						ObjectHolder.MainForm.ShowMe();
						Navigation.GoToPage("Profiles/Custom", null, null);
						goto IL_854;
					}
					notifiyHome.HandleConnectedWithCustom();
					goto IL_7A4;
					IL_4A1:
					try
					{
						TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter2;
						if (num != 3)
						{
							if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(17))
							{
								ConversionPopUpHelpers.ShowConversionPopUp(17);
								goto IL_854;
							}
							notifiyHome.OnBeforeConnect(false, false);
							taskAwaiter2 = ObjectHolder.MainForm.ConnectWithProfile(this.<profile>5__1, false, false, false).GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								this.<>1__state = 3;
								this.<>u__1 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
							this.<>1__state = -1;
						}
						taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					}
					catch (Exception)
					{
						ObjectHolder.MainForm.ShowMe();
						Navigation.GoToPage("Profiles/Network", null, null);
						goto IL_854;
					}
					notifiyHome.HandleConnectedWithNetwork();
					goto IL_7A4;
					IL_563:
					try
					{
						TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter2;
						if (num != 4)
						{
							if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(11))
							{
								ConversionPopUpHelpers.ShowConversionPopUp(11);
								goto IL_854;
							}
							notifiyHome.OnBeforeConnect(false, false);
							taskAwaiter2 = ObjectHolder.MainForm.ConnectWithProfile(this.<profile>5__1, false, false, false).GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								this.<>1__state = 4;
								this.<>u__1 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
							this.<>1__state = -1;
						}
						taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					}
					catch (Exception)
					{
						ObjectHolder.MainForm.ShowMe();
						Navigation.GoToPage("Profiles/Wifi", null, null);
						goto IL_854;
					}
					notifiyHome.HandleConnectedWithWifi();
					goto IL_7A4;
					IL_625:
					try
					{
						TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter2;
						if (num != 5)
						{
							if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(12))
							{
								ConversionPopUpHelpers.ShowConversionPopUp(12);
								goto IL_854;
							}
							notifiyHome.OnBeforeConnect(false, false);
							taskAwaiter2 = ObjectHolder.MainForm.ConnectWithProfile(this.<profile>5__1, false, false, false).GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								this.<>1__state = 5;
								this.<>u__1 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
							this.<>1__state = -1;
						}
						taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					}
					catch (Exception)
					{
						ObjectHolder.MainForm.ShowMe();
						Navigation.GoToPage("Profiles/Unblock", null, null);
						goto IL_854;
					}
					notifiyHome.HandleConnectedWithUnblock();
					goto IL_7A4;
					IL_6E7:
					try
					{
						TaskAwaiter<MainWindow.ConnectResultAdvanced> taskAwaiter2;
						if (num != 6)
						{
							if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(14))
							{
								ConversionPopUpHelpers.ShowConversionPopUp(14);
								goto IL_854;
							}
							notifiyHome.OnBeforeConnect(false, false);
							taskAwaiter2 = ObjectHolder.MainForm.ConnectWithProfile(this.<profile>5__1, false, false, false).GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								this.<>1__state = 6;
								this.<>u__1 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.ConnectResultAdvanced>, NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
							this.<>1__state = -1;
						}
						taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<MainWindow.ConnectResultAdvanced>);
					}
					catch (Exception)
					{
						ObjectHolder.MainForm.ShowMe();
						Navigation.GoToPage("Profiles/Uncensoring", null, null);
						goto IL_854;
					}
					notifiyHome.HandleConnectedWithUncensoring();
					IL_7A4:
					notifiyHome.SelectedHistoryItem.set_LastUsed(DateTime.Now.Ticks);
					notifiyHome.SelectedHistoryItem.set_LastUsedDateTime(DateTime.Now);
					NotifierHelper.ReorderCollection();
					taskAwaiter = SettingsHolder.get_Settings().SaveSettingsAsync(false).GetAwaiter();
					if (!taskAwaiter.IsCompleted)
					{
						this.<>1__state = 7;
						this.<>u__2 = taskAwaiter;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref taskAwaiter, ref this);
						return;
					}
					IL_82A:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_854:
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		private readonly SolidColorBrush _anonDownloadColor;

		private readonly SolidColorBrush _anonSurfColor;

		private readonly SolidColorBrush _antiCensorColor;

		private readonly SolidColorBrush _customColor;

		private readonly DispatcherTimer _dt = new DispatcherTimer();

		private readonly SolidColorBrush _unblockColor;

		private readonly SolidColorBrush _wifiColor;

		private bool _firstrun = true;

		private bool _controlEnable;

		private TrayHistoryData _selectedHistoryItem;

		public Grid BeforeConnect;

		internal Grid Header;

		internal TextBlock Status;

		internal StackPanel UpdatePanel;

		internal TextBlock UpdateLabel;

		internal Button UpdateButton;

		internal StackPanel LoadingScreen;

		internal ModernProgressRing LoadingRing;

		internal Image Ghostie;

		internal TextBlock CancelConnection;

		internal Label QuickConnectLabel;

		internal StackPanel CountrySelectionStackPanel;

		internal ComboBox CountryComboBox;

		internal Button QuickConnect;

		internal Grid ProfileQuickGrid;

		internal Label ProfileQuickLabel;

		internal DataGrid HistoryDataGrid;

		internal DataGridTemplateColumn HistoryColumn;

		internal Button Exit;

		internal Button Maximize;

		internal Button UpgradeButton;

		public Grid WhileConnect;

		internal Grid CurrentProfileGrid;

		internal Image ConnectedImage;

		internal TextBlock ConnnectedLabel;

		internal Grid AnonSurf;

		internal ImageBrush GridBackgroundImage;

		internal TextBlock LblServerNameSurf;

		internal TextBlock LblServerNameTextSurf;

		internal Image LblImageCountryCustomSurf;

		internal TextBlock LblImageCountryCustomTextSurf;

		internal TextBlock LblIpSurf;

		internal TextBlock LblIpTextSurf;

		internal TextBlock LblTimeCustomSurf;

		internal TextBlock LblTimeCustomTextSurf;

		internal Grid Wifi;

		internal ImageBrush WifiBackgroundImage;

		internal TextBlock LblMalwareWifi;

		internal TextBlock LblMalwareWifiText;

		internal TextBlock LblTrackingWifi;

		internal TextBlock LblTrackingWifiText;

		internal TextBlock LblAddsWifi;

		internal TextBlock LblAddsWifiText;

		internal TextBlock LblTimerWifi;

		internal TextBlock LblTimerWifiText;

		internal Grid Uncensoring;

		internal ImageBrush UncensoringBackgroundImage;

		internal TextBlock LblUnblockNameAnti;

		internal TextBlock LblUnblockNameTextAnti;

		internal Image LblImageCountryAnti;

		internal TextBlock LblImageCountryTextAnti;

		internal Label LblFeedback;

		internal Button YesButtonAnti;

		internal Label LblYesAnti;

		internal Button NoButtonAnti;

		internal Label LblNoAnti;

		internal Grid AnonDownload;

		internal ImageBrush AnonDownloadBackgroundImage;

		internal TextBlock LblDownload;

		internal TextBlock LblDownloadText;

		internal TextBlock LblDownloadAverage;

		internal TextBlock LblDownloadAverageText;

		internal TextBlock LblDownloadMax;

		internal TextBlock LblDownloadMaxText;

		internal TextBlock LblDownloadTimer;

		internal TextBlock LblDownloadTimerText;

		internal Grid Unblocking;

		internal ImageBrush UnblockingBackgroundImage;

		internal TextBlock LblUnblockName;

		internal TextBlock LblUnblockNameText;

		internal Image LblImageCountry;

		internal TextBlock LblImageCountryText;

		internal Label LblFeedbackAnti;

		internal Button YesButton;

		internal Label LblYes;

		internal Button NoButton;

		internal Label LblNo;

		internal Grid CustomSet;

		internal ImageBrush CustomSetBackGroundImage;

		internal TextBlock LblServerName;

		internal TextBlock LblServerNameText;

		internal Image LblImageCountryCustom;

		internal TextBlock LblImageCountryCustomText;

		internal TextBlock LblIp;

		internal TextBlock LblIpText;

		internal TextBlock LblTimeCustom;

		internal TextBlock LblTimeCustomText;

		internal Button SwitchProfiletButton;

		internal Button DisconnectButton;

		internal Button UpgradeConnectedButton;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public bool ControlEnable
		{
			get
			{
				return this._controlEnable;
			}
			set
			{
				if (this._controlEnable == value)
				{
					return;
				}
				this._controlEnable = value;
				this.OnPropertyChanged("ControlEnable");
			}
		}

		private Uri IcoBrowseColor
		{
			get;
			set;
		}

		private Uri IcoDownloadColor
		{
			get;
			set;
		}

		private Uri IcoLanColor
		{
			get;
			set;
		}

		private Uri IcoWifiColor
		{
			get;
			set;
		}

		private Uri IcoAntiColor
		{
			get;
			set;
		}

		private Uri IcoUnblockColor
		{
			get;
			set;
		}

		private Uri IcoSettingColor
		{
			get;
			set;
		}

		public static CgApiServerList Servers
		{
			get;
			set;
		}

		public TrayHistoryData SelectedHistoryItem
		{
			get
			{
				return this._selectedHistoryItem;
			}
			set
			{
				if (this._selectedHistoryItem == value)
				{
					return;
				}
				this._selectedHistoryItem = value;
				this.OnPropertyChanged("SelectedHistoryItem");
			}
		}

		public string ServerName
		{
			get;
			set;
		}

		public NotifiyHome()
		{
			this.InitializeComponent();
			this.DetermineFormVisibility();
			base.DataContext = SettingsHolder.get_Settings();
			SettingsHolder.get_Settings().get_ProfileUncensoring().add_OnDidItWorkEvent(new CgProfileUncensoring.DidItWorkReplied(this.ProfileUncensoring_OnDidItWorkEvent));
			SettingsHolder.get_Settings().get_ProfileUnblock().add_OnDidItWorkEvent(new CgProfileUnblock.DidItWorkReplied(this.ProfileUnblock_OnDidItWorkEvent));
			this.CountrySelectionStackPanel.DataContext = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
			NotifierHelper.InitHistoryCollection();
			this._dt.Tick += new EventHandler(this.dt_Tick);
			this._dt.Interval = new TimeSpan(0, 0, 0, 0, 100);
			ObjectHolder.NotifiyIcon = this;
			this._anonSurfColor = new SolidColorBrush(GuiHelper.GenerateColor("#FFCC00"));
			this._anonDownloadColor = new SolidColorBrush(GuiHelper.GenerateColor("#844cb1"));
			this._wifiColor = new SolidColorBrush(GuiHelper.GenerateColor("#009fde"));
			this._unblockColor = new SolidColorBrush(GuiHelper.GenerateColor("#FFe4502a"));
			this._customColor = new SolidColorBrush(GuiHelper.GenerateColor("#FFbf2866"));
			this._antiCensorColor = new SolidColorBrush(GuiHelper.GenerateColor("#bfbfbf"));
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.Exit.IsEnabled = false;
			this.ControlEnable = false;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
			this._dt.Stop();
			if (ObjectHolder.ConnectedDispatcherTimer != null)
			{
				ObjectHolder.ConnectedDispatcherTimer.Stop();
				ObjectHolder.ConnectedDispatcherTimer.Interval = new TimeSpan(0, 0, 0, 1);
			}
			this.BeforeConnect.Visibility = Visibility.Visible;
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.LoadingScreen.Visibility = Visibility.Visible;
			this.CancelConnection.Visibility = Visibility.Visible;
			this.ProfileQuickGrid.Visibility = Visibility.Hidden;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
			this.Status.Text = CyberGhost.Translations.Status.StatusMessage_connecting;
			this.HideQuickBar();
		}

		public void OnBeforeDisconnect()
		{
			this.Status.Text = CyberGhost.Translations.Status._DISCONNECTING;
			this.LoadingRing.Visibility = Visibility.Visible;
			this.BeforeConnect.Visibility = Visibility.Visible;
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.ProfileQuickGrid.Visibility = Visibility.Hidden;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this.Exit.IsEnabled = true;
			this.BeforeConnect.Visibility = Visibility.Hidden;
			this.WhileConnect.Visibility = Visibility.Visible;
			ObjectHolder.CurrentConnectionTime = null;
			if (ObjectHolder.ConnectedDispatcherTimer != null)
			{
				ObjectHolder.ConnectedDispatcherTimer.Start();
			}
			this._dt.Stop();
			this._dt.Start();
			this.ProfileQuickGrid.Visibility = Visibility.Hidden;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
		}

		public void OnAfterDisconnected()
		{
			this.ControlEnable = true;
			this.HistoryDataGrid.Visibility = Visibility.Visible;
			this.BeforeConnect.Visibility = Visibility.Visible;
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.LoadingScreen.Visibility = Visibility.Hidden;
			this.Status.Text = Home.HeadlineText;
			this.ProfileQuickGrid.Visibility = Visibility.Visible;
			this.HistoryDataGrid.Visibility = Visibility.Visible;
			this.DisconnectButton.IsEnabled = true;
			this.ShowQuickBar();
			this.Exit.IsEnabled = true;
			this.RestoreFeedbackState();
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
		}

		public void OnTrafficDataChanged(TrafficDataChangedEventArgs trafficData)
		{
			NotifiyHome.<>c__DisplayClass50_0 <>c__DisplayClass50_ = new NotifiyHome.<>c__DisplayClass50_0();
			<>c__DisplayClass50_.<>4__this = this;
			<>c__DisplayClass50_.trafficData = trafficData;
			base.Dispatcher.BeginInvoke(DispatcherPriority.Normal, new Action(<>c__DisplayClass50_.<OnTrafficDataChanged>b__0));
		}

		public void RestoreFeedbackState()
		{
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.LblFeedbackAnti.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
			this.LblYesAnti.Visibility = Visibility.Visible;
			this.LblNoAnti.Visibility = Visibility.Visible;
			this.YesButtonAnti.Visibility = Visibility.Visible;
			this.NoButtonAnti.Visibility = Visibility.Visible;
		}

		public void SetUpgradeVisibility()
		{
			if (ObjectHolder.CurrentUser != null)
			{
				this.UpgradeConnectedButton.Visibility = (ObjectHolder.CurrentUser.IsFreeUser() ? Visibility.Visible : Visibility.Hidden);
				this.UpgradeButton.Visibility = (ObjectHolder.CurrentUser.IsFreeUser() ? Visibility.Visible : Visibility.Hidden);
			}
		}

		private void DetermineFormVisibility()
		{
			if (ObjectHolder.ConnectionStatus == null)
			{
				this.BeforeConnect.Visibility = Visibility.Hidden;
				this.WhileConnect.Visibility = Visibility.Visible;
				return;
			}
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.BeforeConnect.Visibility = Visibility.Visible;
		}

		private void InitIcons()
		{
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-browse-color.png")))
			{
				this.IcoBrowseColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-browse-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-download-color.png")))
			{
				this.IcoDownloadColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-download-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-lan-color.png")))
			{
				this.IcoLanColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-lan-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-wifi-color.pngg")))
			{
				this.IcoWifiColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-wifi-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-anti.png")))
			{
				this.IcoAntiColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-anti.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-unblock-color.png")))
			{
				this.IcoUnblockColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-unblock-color.png"));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-setting-color.png")))
			{
				this.IcoSettingColor = new Uri(Theming.GetThemedImage("Icons\\ProfileTabs\\ico-setting-color.png"));
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\anonSurfQuick.png")))
				{
					this.GridBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anonSurfQuick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\wifiquick.png")))
				{
					this.WifiBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\wifiquick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\anticensorQuick.png")))
				{
					this.UncensoringBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anticensorQuick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\anonDownloadQuick.png")))
				{
					this.AnonDownloadBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anonDownloadQuick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\unblockQuick.png")))
				{
					this.UnblockingBackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\unblockQuick.png")));
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(Theming.GetThemedImage("Background\\customQuick.png")))
				{
					this.CustomSetBackGroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\customQuick.png")));
				}
			}
			catch (Exception)
			{
			}
		}

		private void HandleConnectedWithAnonSurfing()
		{
			if (this.IcoBrowseColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoBrowseColor);
			}
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._anonSurfColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			VpnServerLastConnectionInfos expr_5E = ObjectHolder.CurrentConnectionInfos;
			if (!string.IsNullOrEmpty((expr_5E != null) ? expr_5E.ServerIp : null))
			{
				TextBlock arg_88_0 = this.LblIpSurf;
				VpnServerLastConnectionInfos expr_7C = ObjectHolder.CurrentConnectionInfos;
				arg_88_0.Text = ((expr_7C != null) ? expr_7C.ServerIp : null);
			}
			VpnServerLastConnectionInfos expr_92 = ObjectHolder.CurrentConnectionInfos;
			if (!string.IsNullOrEmpty((expr_92 != null) ? expr_92.ServerCountry : null))
			{
				this.LblServerNameSurf.Text = this.MutateServerName(ObjectHolder.CurrentConnectionInfos.ServerName, this.LblServerNameSurf);
			}
			string arg_EB_0 = "Icons\\Flags\\24";
			string arg_E6_0 = "{0}.png";
			VpnServerLastConnectionInfos expr_D5 = ObjectHolder.CurrentConnectionInfos;
			string themedImage = Theming.GetThemedImage(Path.Combine(arg_EB_0, string.Format(arg_E6_0, (expr_D5 != null) ? expr_D5.ServerCountry.ToLower() : null)));
			bool flag = File.Exists(themedImage);
			VpnServerLastConnectionInfos expr_102 = ObjectHolder.CurrentConnectionInfos;
			if (!string.IsNullOrEmpty((expr_102 != null) ? expr_102.ServerCountry : null) & flag)
			{
				this.LblImageCountryCustomSurf.Source = new BitmapImage(new Uri(themedImage));
			}
			VpnServerLastConnectionInfos expr_135 = ObjectHolder.CurrentConnectionInfos;
			string countrycode = (expr_135 != null) ? expr_135.ServerCountry : null;
			this.LblImageCountryCustomTextSurf.Text = GuiHelper.FindTranslationForCountry(countrycode);
			this.AnonSurf.Visibility = Visibility.Visible;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Exit.IsEnabled = true;
		}

		private string MutateServerName(string servername, TextBlock lblUpLeftFirstLine)
		{
			string[] array = servername.Split(new char[]
			{
				'-'
			});
			string result;
			if (array.Length != 0)
			{
				if (array[0].Length <= 25)
				{
					result = array[0];
					lblUpLeftFirstLine.ToolTip = null;
				}
				else
				{
					lblUpLeftFirstLine.ToolTip = array[0];
					result = GuiHelper.Truncate(servername, 40);
				}
			}
			else
			{
				result = servername;
				lblUpLeftFirstLine.ToolTip = null;
			}
			return result;
		}

		private void HandleConnectedWithAnonDownloading()
		{
			if (this.IcoDownloadColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoDownloadColor);
			}
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._anonDownloadColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Visible;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithNetwork()
		{
			if (this.IcoLanColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoLanColor);
			}
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._wifiColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			GuiHelper.SetCurrentFeatureNumbers(SettingsHolder.get_Settings().get_ProfileNetwork(), this.LblAddsWifi, this.LblMalwareWifi, this.LblTrackingWifi);
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Visible;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithWifi()
		{
			if (this.IcoWifiColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoWifiColor);
			}
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._wifiColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			GuiHelper.SetCurrentFeatureNumbers(SettingsHolder.get_Settings().get_ProfileWifi(), this.LblAddsWifi, this.LblMalwareWifi, this.LblTrackingWifi);
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Visible;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithUncensoring()
		{
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = new SolidColorBrush(GuiHelper.GenerateColor("#FFDCDCDC"));
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			if (this.IcoAntiColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoAntiColor);
			}
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Visible;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.LblUnblockNameAnti.Text = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemNameShort();
			if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryImage()))
			{
				this.LblImageCountryAnti.Source = new BitmapImage(new Uri(SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryImage()));
			}
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUncensoring().get_SelectedItemCountryCode();
			this.LblImageCountryTextAnti.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithUnblock()
		{
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._unblockColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			if (this.IcoUnblockColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoUnblockColor);
			}
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Visible;
			this.LblUnblockName.Text = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemNameShort();
			if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage()))
			{
				this.LblImageCountry.Source = new BitmapImage(new Uri(SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage()));
			}
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode();
			this.LblImageCountryText.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			this.Exit.IsEnabled = true;
		}

		private void HandleConnectedWithCustom()
		{
			if (Theming.CurrentTheme == Theming.Theme.Regular)
			{
				this.ConnnectedLabel.Foreground = this._customColor;
			}
			else
			{
				this.ConnnectedLabel.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
			}
			if (this.IcoSettingColor != null)
			{
				this.ConnectedImage.Source = new BitmapImage(this.IcoSettingColor);
			}
			this.AnonSurf.Visibility = Visibility.Hidden;
			this.AnonDownload.Visibility = Visibility.Hidden;
			this.Wifi.Visibility = Visibility.Hidden;
			this.Uncensoring.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.CustomSet.Visibility = Visibility.Visible;
			this.LblIp.Text = SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerIp();
			if (ObjectHolder.CurrentConnectionInfos != null)
			{
				this.LblServerName.Text = this.MutateServerName(ObjectHolder.CurrentConnectionInfos.ServerName, this.LblServerName);
			}
			else
			{
				this.LblServerName.Text = SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerName();
			}
			if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry()))
			{
				this.LblImageCountryCustom.Source = new BitmapImage(new Uri(Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry().ToLower())))));
			}
			string selectedCountry = SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry();
			this.LblImageCountryCustomText.Text = GuiHelper.FindTranslationForCountry(selectedCountry);
			this.Exit.IsEnabled = true;
		}

		private void Update_Click(object sender, RoutedEventArgs e)
		{
			if (ObjectHolder.MainForm != null)
			{
				ObjectHolder.MainForm.StartForegroundUpdate();
			}
		}

		[AsyncStateMachine(typeof(NotifiyHome.<QuickConnect_OnClick>d__64))]
		private void QuickConnect_OnClick(object sender, RoutedEventArgs e)
		{
			NotifiyHome.<QuickConnect_OnClick>d__64 <QuickConnect_OnClick>d__;
			<QuickConnect_OnClick>d__.<>4__this = this;
			<QuickConnect_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<QuickConnect_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <QuickConnect_OnClick>d__.<>t__builder;
			<>t__builder.Start<NotifiyHome.<QuickConnect_OnClick>d__64>(ref <QuickConnect_OnClick>d__);
		}

		private void UserControl_Loaded(object sender, RoutedEventArgs e)
		{
			this.HistoryDataGrid.ItemsSource = SettingsHolder.get_Settings().get_TrayHistory();
			this.HistoryDataGrid.Visibility = Visibility.Visible;
			this.Ghostie.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Logos\\ghost.png")));
			GuiHelper.InitializeServerList(NotifiyHome.Servers, this.CountryComboBox);
			if (ObjectHolder.UpdatePanel != null)
			{
				this.UpdatePanel.Visibility = ObjectHolder.UpdatePanel.Visibility;
			}
			this.SetUpgradeVisibility();
			string connectedProfileName = SettingsHolder.get_Settings().get_ConnectedProfileName();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(connectedProfileName);
			if (num <= 1377339077u)
			{
				if (num != 120087624u)
				{
					if (num != 542584942u)
					{
						if (num == 1377339077u)
						{
							if (connectedProfileName == "network")
							{
								this.HandleConnectedWithNetwork();
							}
						}
					}
					else if (connectedProfileName == "custom")
					{
						this.HandleConnectedWithCustom();
					}
				}
				else if (connectedProfileName == "wifi")
				{
					this.HandleConnectedWithWifi();
				}
			}
			else if (num <= 1879243226u)
			{
				if (num != 1741922751u)
				{
					if (num == 1879243226u)
					{
						if (connectedProfileName == "anonymousDownloading")
						{
							this.HandleConnectedWithAnonDownloading();
						}
					}
				}
				else if (connectedProfileName == "unblock")
				{
					this.HandleConnectedWithUnblock();
				}
			}
			else if (num != 2687971255u)
			{
				if (num == 2889374611u)
				{
					if (connectedProfileName == "antiCensor")
					{
						this.HandleConnectedWithUncensoring();
					}
				}
			}
			else if (connectedProfileName == "anonymousBrowsing")
			{
				this.HandleConnectedWithAnonSurfing();
			}
			this.DetermineFormVisibility();
			NotifierHelper.InitHistoryCollection();
			if (this.WhileConnect.Visibility == Visibility.Visible && this._firstrun && ObjectHolder.ConnectionStatus == null)
			{
				DispatcherTimer expr_1A2 = this._dt;
				if (expr_1A2 != null)
				{
					expr_1A2.Start();
				}
				this._firstrun = false;
			}
			if (ObjectHolder.ConnectionStatus == null)
			{
				this._firstrun = true;
			}
			if (ObjectHolder.ConnectionStatus.Equals(-1))
			{
				this.OnAfterDisconnected();
			}
			if (ObjectHolder.ConnectionStatus.Equals(20))
			{
				this.CancelConnection.Visibility = Visibility.Hidden;
			}
			if (ObjectHolder.ConnectionStatus.Equals(10) || ObjectHolder.ConnectionStatus.Equals(10000) || ObjectHolder.ConnectionStatus.Equals(30001))
			{
				this.CancelConnection.Visibility = Visibility.Visible;
				this.OnBeforeConnect(false, false);
			}
			if (this.LoadingRing.Visibility.Equals(Visibility.Visible) && ObjectHolder.CurrentProfile != null)
			{
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("wifi") || ObjectHolder.CurrentProfile.GetBaseName().Equals("network"))
				{
					this.LoadingRing.Foreground = this._wifiColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousBrowsing"))
				{
					this.LoadingRing.Foreground = this._anonSurfColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousDownloading"))
				{
					this.LoadingRing.Foreground = this._anonDownloadColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("custom"))
				{
					this.LoadingRing.Foreground = this._customColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("unblock"))
				{
					this.LoadingRing.Foreground = this._unblockColor;
				}
				if (ObjectHolder.CurrentProfile.GetBaseName().Equals("antiCensor"))
				{
					this.LoadingRing.Foreground = this._antiCensorColor;
				}
			}
			this.Exit.IsEnabled = (ObjectHolder.ConnectionStatus.Equals(0) || ObjectHolder.ConnectionStatus.Equals(-1) || ObjectHolder.ConnectionStatus.Equals(3000));
		}

		private void CancelConnection_OnMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			ObjectHolder.MainForm.Disconnect();
			this.OnBeforeDisconnect();
		}

		private void dt_Tick(object sender, EventArgs e)
		{
			this.LblTimerWifi.Text = ObjectHolder.CurrentConnectionTime;
			this.LblTimeCustom.Text = ObjectHolder.CurrentConnectionTime;
			this.LblTimeCustomSurf.Text = ObjectHolder.CurrentConnectionTime;
			this.LblDownloadTimer.Text = ObjectHolder.CurrentConnectionTime;
		}

		private void Show_OnClick(object sender, RoutedEventArgs e)
		{
			MainWindow expr_05 = ObjectHolder.MainForm;
			if (expr_05 == null)
			{
				return;
			}
			expr_05.ShowMe();
		}

		[AsyncStateMachine(typeof(NotifiyHome.<Exit_OnClick>d__69))]
		private void Exit_OnClick(object sender, RoutedEventArgs e)
		{
			NotifiyHome.<Exit_OnClick>d__69 <Exit_OnClick>d__;
			<Exit_OnClick>d__.<>4__this = this;
			<Exit_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Exit_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Exit_OnClick>d__.<>t__builder;
			<>t__builder.Start<NotifiyHome.<Exit_OnClick>d__69>(ref <Exit_OnClick>d__);
		}

		private void DisconnectButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.DisconnectButton.IsEnabled = false;
			ObjectHolder.MainForm.Disconnect();
			this.CancelConnection.Visibility = Visibility.Hidden;
			ObjectHolder.MainForm.WindowState = WindowState.Normal;
		}

		private void ShowQuickBar()
		{
			this.CountryComboBox.Visibility = Visibility.Visible;
			this.QuickConnect.Visibility = Visibility.Visible;
			this.QuickConnectLabel.Visibility = Visibility.Visible;
			this.ProfileQuickLabel.Visibility = Visibility.Visible;
			this.HistoryDataGrid.Visibility = Visibility.Visible;
		}

		private void HideQuickBar()
		{
			this.CountryComboBox.Visibility = Visibility.Hidden;
			this.QuickConnect.Visibility = Visibility.Hidden;
			this.QuickConnectLabel.Visibility = Visibility.Hidden;
			this.ProfileQuickLabel.Visibility = Visibility.Hidden;
			this.HistoryDataGrid.Visibility = Visibility.Hidden;
		}

		private void SwitchProfiletButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.ShowQuickBar();
			this.Status.Text = Home.HeadlineText;
			this.LoadingScreen.Visibility = Visibility.Hidden;
			this.WhileConnect.Visibility = Visibility.Hidden;
			this.BeforeConnect.Visibility = Visibility.Visible;
		}

		public void UpdateWifiDisplay(HelperFunctions.WlanInfos newWiFiInfos, bool showDisplay)
		{
		}

		private void NoButton_OnClick(object sender, RoutedEventArgs e)
		{
			if (sender == null)
			{
				return;
			}
			this.SetFeedbackContent(sender);
		}

		private void YesButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.SetFeedbackContent(sender);
		}

		private void SetFeedbackContent(object sender)
		{
			if (((Button)sender).Name.IndexOf("ANTI", StringComparison.OrdinalIgnoreCase) > -1)
			{
				SettingsHolder.get_Settings().get_ProfileUncensoring().set_DidItWorkDisabled(true);
				return;
			}
			SettingsHolder.get_Settings().get_ProfileUnblock().set_DidItWorkDisabled(true);
		}

		[AsyncStateMachine(typeof(NotifiyHome.<UpgradeButton_OnClick>d__78))]
		private void UpgradeButton_OnClick(object sender, RoutedEventArgs e)
		{
			NotifiyHome.<UpgradeButton_OnClick>d__78 <UpgradeButton_OnClick>d__;
			<UpgradeButton_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpgradeButton_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpgradeButton_OnClick>d__.<>t__builder;
			<>t__builder.Start<NotifiyHome.<UpgradeButton_OnClick>d__78>(ref <UpgradeButton_OnClick>d__);
		}

		private void OpenHomeScreen_OnClick(object sender, RoutedEventArgs e)
		{
			ObjectHolder.MainForm.ShowMe();
			Navigation.GoHome();
		}

		private void ProfileUncensoring_OnDidItWorkEvent(object sender, DidItWorkEventArgs args)
		{
			if (sender == null || args == null)
			{
				return;
			}
			if (args.get_HasBeenReplied())
			{
				this.LblFeedback.Visibility = Visibility.Visible;
				this.LblFeedbackAnti.Visibility = Visibility.Visible;
				this.LblYesAnti.Visibility = Visibility.Hidden;
				this.LblNoAnti.Visibility = Visibility.Hidden;
				this.YesButtonAnti.Visibility = Visibility.Hidden;
				this.NoButtonAnti.Visibility = Visibility.Hidden;
				return;
			}
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.LblFeedbackAnti.Visibility = Visibility.Hidden;
			this.LblYesAnti.Visibility = Visibility.Visible;
			this.LblNoAnti.Visibility = Visibility.Visible;
			this.YesButtonAnti.Visibility = Visibility.Visible;
			this.NoButtonAnti.Visibility = Visibility.Visible;
		}

		private void ProfileUnblock_OnDidItWorkEvent(object sender, DidItWorkEventArgs args)
		{
			if (sender == null || args == null)
			{
				return;
			}
			if (args.get_HasBeenReplied())
			{
				this.LblFeedback.Visibility = Visibility.Visible;
				this.LblFeedbackAnti.Visibility = Visibility.Visible;
				this.LblYes.Visibility = Visibility.Hidden;
				this.LblNo.Visibility = Visibility.Hidden;
				this.YesButton.Visibility = Visibility.Hidden;
				this.NoButton.Visibility = Visibility.Hidden;
				return;
			}
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.LblFeedbackAnti.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
		}

		public void Dispose()
		{
			if (SettingsHolder.get_Settings().get_ProfileUnblock() != null)
			{
				SettingsHolder.get_Settings().get_ProfileUnblock().remove_OnDidItWorkEvent(new CgProfileUnblock.DidItWorkReplied(this.ProfileUnblock_OnDidItWorkEvent));
			}
			if (SettingsHolder.get_Settings().get_ProfileUncensoring() != null)
			{
				SettingsHolder.get_Settings().get_ProfileUncensoring().remove_OnDidItWorkEvent(new CgProfileUncensoring.DidItWorkReplied(this.ProfileUncensoring_OnDidItWorkEvent));
			}
		}

		private void OnCountrySelectionChanged(object sender, UserSelectionChangedEventArgs e)
		{
			if (e.get_SelectionChangedByUser())
			{
				GuiHelper.CountryComboBoxChanged((ComboBox)sender);
			}
		}

		[AsyncStateMachine(typeof(NotifiyHome.<ConnectToSelectedHistoryItem>d__92))]
		private void ConnectToSelectedHistoryItem()
		{
			NotifiyHome.<ConnectToSelectedHistoryItem>d__92 <ConnectToSelectedHistoryItem>d__;
			<ConnectToSelectedHistoryItem>d__.<>4__this = this;
			<ConnectToSelectedHistoryItem>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ConnectToSelectedHistoryItem>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ConnectToSelectedHistoryItem>d__.<>t__builder;
			<>t__builder.Start<NotifiyHome.<ConnectToSelectedHistoryItem>d__92>(ref <ConnectToSelectedHistoryItem>d__);
		}

		private void RemoveItemFromCollectionOnSelected()
		{
			try
			{
				SettingsHolder.get_Settings().get_TrayHistory().Remove(this.SelectedHistoryItem);
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				this.SelectedHistoryItem = null;
			}
			catch (ArgumentOutOfRangeException ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1}: --> {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
		}

		private void Trash_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (!(sender is Label))
			{
				return;
			}
			if (this.SelectedHistoryItem != null)
			{
				this.RemoveItemFromCollectionOnSelected();
				this.HistoryDataGrid.RowBackground = (base.FindResource("WindowBackgroundColorBrush") as SolidColorBrush);
				this.HistoryDataGrid.Background = (base.FindResource("WindowBackgroundColorBrush") as SolidColorBrush);
			}
		}

		private void HistoryItemStackPanel_MouseEnter(object sender, MouseEventArgs e)
		{
			Guid g = (Guid)(sender as StackPanel).Tag;
			foreach (TrayHistoryData current in SettingsHolder.get_Settings().get_TrayHistory())
			{
				if (current.get_ItemId().Equals(g))
				{
					this.SelectedHistoryItem = current;
					break;
				}
			}
		}

		private void HistoryItemStackPanel_LayoutUpdated(object sender, EventArgs e)
		{
			this.HistoryDataGrid.SelectedIndex = -1;
		}

		private void CountryImage_OnMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (this.SelectedHistoryItem == null)
			{
				return;
			}
			this.ConnectToSelectedHistoryItem();
		}

		private void ProfileNameLabel_OnMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (this.SelectedHistoryItem == null)
			{
				return;
			}
			this.ConnectToSelectedHistoryItem();
		}

		private void HistoryItemStackPanel_OnToolTipOpening(object sender, ToolTipEventArgs e)
		{
			StackPanel stackPanel = sender as StackPanel;
			if (stackPanel == null)
			{
				return;
			}
			stackPanel.ToolTip = string.Format("{0}", this.SelectedHistoryItem.get_LastUsedDateTime());
		}

		[NotifyPropertyChangedInvocator]
		protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChangedEventHandler expr_06 = this.PropertyChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new PropertyChangedEventArgs(propertyName));
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/notifiyhome.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((NotifiyHome)target).Loaded += new RoutedEventHandler(this.UserControl_Loaded);
				return;
			case 2:
				this.BeforeConnect = (Grid)target;
				return;
			case 3:
				this.Header = (Grid)target;
				return;
			case 4:
				this.Status = (TextBlock)target;
				return;
			case 5:
				this.UpdatePanel = (StackPanel)target;
				return;
			case 6:
				this.UpdateLabel = (TextBlock)target;
				return;
			case 7:
				this.UpdateButton = (Button)target;
				this.UpdateButton.Click += new RoutedEventHandler(this.Update_Click);
				return;
			case 8:
				this.LoadingScreen = (StackPanel)target;
				return;
			case 9:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			case 10:
				this.Ghostie = (Image)target;
				return;
			case 11:
				this.CancelConnection = (TextBlock)target;
				this.CancelConnection.MouseLeftButtonUp += new MouseButtonEventHandler(this.CancelConnection_OnMouseLeftButtonUp);
				return;
			case 12:
				this.QuickConnectLabel = (Label)target;
				return;
			case 13:
				this.CountrySelectionStackPanel = (StackPanel)target;
				return;
			case 14:
				this.CountryComboBox = (ComboBox)target;
				this.CountryComboBox.AddHandler(UserSelectionChangedBehavior.UserSelectionChangedEvent, new UserSelectionChangedEventHandler(this.OnCountrySelectionChanged));
				return;
			case 15:
				this.QuickConnect = (Button)target;
				this.QuickConnect.Click += new RoutedEventHandler(this.QuickConnect_OnClick);
				return;
			case 16:
				this.ProfileQuickGrid = (Grid)target;
				return;
			case 17:
				this.ProfileQuickLabel = (Label)target;
				return;
			case 18:
				this.HistoryDataGrid = (DataGrid)target;
				return;
			case 19:
				this.HistoryColumn = (DataGridTemplateColumn)target;
				return;
			case 24:
				this.Exit = (Button)target;
				this.Exit.Click += new RoutedEventHandler(this.Exit_OnClick);
				return;
			case 25:
				this.Maximize = (Button)target;
				this.Maximize.Click += new RoutedEventHandler(this.Show_OnClick);
				return;
			case 26:
				this.UpgradeButton = (Button)target;
				this.UpgradeButton.Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			case 27:
				this.WhileConnect = (Grid)target;
				return;
			case 28:
				this.CurrentProfileGrid = (Grid)target;
				return;
			case 29:
				this.ConnectedImage = (Image)target;
				return;
			case 30:
				this.ConnnectedLabel = (TextBlock)target;
				return;
			case 31:
				this.AnonSurf = (Grid)target;
				return;
			case 32:
				this.GridBackgroundImage = (ImageBrush)target;
				return;
			case 33:
				this.LblServerNameSurf = (TextBlock)target;
				return;
			case 34:
				this.LblServerNameTextSurf = (TextBlock)target;
				return;
			case 35:
				this.LblImageCountryCustomSurf = (Image)target;
				return;
			case 36:
				this.LblImageCountryCustomTextSurf = (TextBlock)target;
				return;
			case 37:
				this.LblIpSurf = (TextBlock)target;
				return;
			case 38:
				this.LblIpTextSurf = (TextBlock)target;
				return;
			case 39:
				this.LblTimeCustomSurf = (TextBlock)target;
				return;
			case 40:
				this.LblTimeCustomTextSurf = (TextBlock)target;
				return;
			case 41:
				this.Wifi = (Grid)target;
				return;
			case 42:
				this.WifiBackgroundImage = (ImageBrush)target;
				return;
			case 43:
				this.LblMalwareWifi = (TextBlock)target;
				return;
			case 44:
				this.LblMalwareWifiText = (TextBlock)target;
				return;
			case 45:
				this.LblTrackingWifi = (TextBlock)target;
				return;
			case 46:
				this.LblTrackingWifiText = (TextBlock)target;
				return;
			case 47:
				this.LblAddsWifi = (TextBlock)target;
				return;
			case 48:
				this.LblAddsWifiText = (TextBlock)target;
				return;
			case 49:
				this.LblTimerWifi = (TextBlock)target;
				return;
			case 50:
				this.LblTimerWifiText = (TextBlock)target;
				return;
			case 51:
				this.Uncensoring = (Grid)target;
				return;
			case 52:
				this.UncensoringBackgroundImage = (ImageBrush)target;
				return;
			case 53:
				this.LblUnblockNameAnti = (TextBlock)target;
				return;
			case 54:
				this.LblUnblockNameTextAnti = (TextBlock)target;
				return;
			case 55:
				this.LblImageCountryAnti = (Image)target;
				return;
			case 56:
				this.LblImageCountryTextAnti = (TextBlock)target;
				return;
			case 57:
				this.LblFeedback = (Label)target;
				return;
			case 58:
				this.YesButtonAnti = (Button)target;
				this.YesButtonAnti.Click += new RoutedEventHandler(this.YesButton_OnClick);
				return;
			case 59:
				this.LblYesAnti = (Label)target;
				return;
			case 60:
				this.NoButtonAnti = (Button)target;
				this.NoButtonAnti.Click += new RoutedEventHandler(this.NoButton_OnClick);
				return;
			case 61:
				this.LblNoAnti = (Label)target;
				return;
			case 62:
				this.AnonDownload = (Grid)target;
				return;
			case 63:
				this.AnonDownloadBackgroundImage = (ImageBrush)target;
				return;
			case 64:
				this.LblDownload = (TextBlock)target;
				return;
			case 65:
				this.LblDownloadText = (TextBlock)target;
				return;
			case 66:
				this.LblDownloadAverage = (TextBlock)target;
				return;
			case 67:
				this.LblDownloadAverageText = (TextBlock)target;
				return;
			case 68:
				this.LblDownloadMax = (TextBlock)target;
				return;
			case 69:
				this.LblDownloadMaxText = (TextBlock)target;
				return;
			case 70:
				this.LblDownloadTimer = (TextBlock)target;
				return;
			case 71:
				this.LblDownloadTimerText = (TextBlock)target;
				return;
			case 72:
				this.Unblocking = (Grid)target;
				return;
			case 73:
				this.UnblockingBackgroundImage = (ImageBrush)target;
				return;
			case 74:
				this.LblUnblockName = (TextBlock)target;
				return;
			case 75:
				this.LblUnblockNameText = (TextBlock)target;
				return;
			case 76:
				this.LblImageCountry = (Image)target;
				return;
			case 77:
				this.LblImageCountryText = (TextBlock)target;
				return;
			case 78:
				this.LblFeedbackAnti = (Label)target;
				return;
			case 79:
				this.YesButton = (Button)target;
				this.YesButton.Click += new RoutedEventHandler(this.YesButton_OnClick);
				return;
			case 80:
				this.LblYes = (Label)target;
				return;
			case 81:
				this.NoButton = (Button)target;
				this.NoButton.Click += new RoutedEventHandler(this.NoButton_OnClick);
				return;
			case 82:
				this.LblNo = (Label)target;
				return;
			case 83:
				this.CustomSet = (Grid)target;
				return;
			case 84:
				this.CustomSetBackGroundImage = (ImageBrush)target;
				return;
			case 85:
				this.LblServerName = (TextBlock)target;
				return;
			case 86:
				this.LblServerNameText = (TextBlock)target;
				return;
			case 87:
				this.LblImageCountryCustom = (Image)target;
				return;
			case 88:
				this.LblImageCountryCustomText = (TextBlock)target;
				return;
			case 89:
				this.LblIp = (TextBlock)target;
				return;
			case 90:
				this.LblIpText = (TextBlock)target;
				return;
			case 91:
				this.LblTimeCustom = (TextBlock)target;
				return;
			case 92:
				this.LblTimeCustomText = (TextBlock)target;
				return;
			case 93:
				this.SwitchProfiletButton = (Button)target;
				this.SwitchProfiletButton.Click += new RoutedEventHandler(this.SwitchProfiletButton_OnClick);
				return;
			case 94:
				this.DisconnectButton = (Button)target;
				this.DisconnectButton.Click += new RoutedEventHandler(this.DisconnectButton_OnClick);
				return;
			case 95:
				this.UpgradeConnectedButton = (Button)target;
				this.UpgradeConnectedButton.Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			}
			this._contentLoaded = true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 20:
				((StackPanel)target).MouseEnter += new MouseEventHandler(this.HistoryItemStackPanel_MouseEnter);
				((StackPanel)target).LayoutUpdated += new EventHandler(this.HistoryItemStackPanel_LayoutUpdated);
				((StackPanel)target).ToolTipOpening += new ToolTipEventHandler(this.HistoryItemStackPanel_OnToolTipOpening);
				return;
			case 21:
				((Image)target).MouseLeftButtonDown += new MouseButtonEventHandler(this.CountryImage_OnMouseLeftButtonDown);
				return;
			case 22:
				((Label)target).MouseLeftButtonDown += new MouseButtonEventHandler(this.ProfileNameLabel_OnMouseLeftButtonDown);
				return;
			case 23:
				((Label)target).MouseLeftButtonDown += new MouseButtonEventHandler(this.Trash_MouseLeftButtonDown);
				return;
			default:
				return;
			}
		}

		static NotifiyHome()
		{
			// Note: this type is marked as 'beforefieldinit'.
			NotifiyHome.<Servers>k__BackingField = new CgApiServerList();
		}
	}
}

using CyberGhost.RESTCommunicator.OAuth;
using CyberGhost.Settings;
using System;

namespace CyberGhost
{
	public class OAuthData
	{
		internal const string OAuthKey = "45d3fdd1635601b1c28a3d2f1d78d83e1c7edbb4";

		internal const string OAuthSecret = "b97627f1c114d6b5eb567aa70b956001da3e5eea";

		internal static readonly string LoginServer = string.IsNullOrEmpty(SettingsHolder.get_Settings().get_LoginServer()) ? "rest.cyberghostvpn.com" : SettingsHolder.get_Settings().get_LoginServer();

		internal static readonly Uri OAuthBaseUri = new Uri(new Uri("https://" + OAuthData.LoginServer), "/cg/");

		internal static readonly Uri OAuthPurchaseBaseUri = new Uri(new Uri("https://payment.cyberghostvpn.com"), "/cg/");

		public static OAuthRequestInfos GetOAuthRequestInfos()
		{
			return new OAuthRequestInfos
			{
				ConsumerKey = "45d3fdd1635601b1c28a3d2f1d78d83e1c7edbb4",
				ConsumerSecret = "b97627f1c114d6b5eb567aa70b956001da3e5eea",
				BaseUri = OAuthData.OAuthBaseUri,
				PurchaseUri = (OAuthData.LoginServer.Contains("dev-api") ? OAuthData.OAuthBaseUri : OAuthData.OAuthPurchaseBaseUri)
			};
		}
	}
}

using CyberGhost.Communication;
using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Components.Popups;
using CyberGhost.Helpers;
using CyberGhost.Pages;
using CyberGhost.Pages.SettingsSubPages;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.RESTCommunicator.OAuth;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Signature;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using CyberGhost.VPNServices.Helpers;
using FirstFloor.ModernUI.Windows.Controls;
using Microsoft.Win32;
using MobileConcepts.Components.SingleInstance;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security.AccessControl;
using System.Security.Principal;
using System.ServiceProcess;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using WpfAnimatedGif;

namespace CyberGhost
{
	public class Splash : ModernWindow, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<InitCyberGhost>b__18_2>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				private TaskAwaiter <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					try
					{
						TaskAwaiter taskAwaiter;
						switch (num)
						{
						case 0:
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter);
							this.<>1__state = -1;
							break;
						case 1:
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter);
							this.<>1__state = -1;
							goto IL_129;
						case 2:
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter);
							this.<>1__state = -1;
							goto IL_18B;
						case 3:
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter);
							this.<>1__state = -1;
							goto IL_1EA;
						default:
							if (SettingsHolder.get_Settings().get_HintDate().HasValue && (DateTime.Now - SettingsHolder.get_Settings().get_HintDate().Value).TotalDays <= (double)Constants.ProgramAndHintDayInterval)
							{
								goto IL_138;
							}
							SettingsHolder.get_Settings().set_HintDate(new DateTime?(DateTime.Now));
							taskAwaiter = CgApiHelper.FetchRandomHintS().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<>c.<<InitCyberGhost>b__18_2>d>(ref taskAwaiter, ref this);
								return;
							}
							break;
						}
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter);
						taskAwaiter = CgApiHelper.FetchProgramList().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 1;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<>c.<<InitCyberGhost>b__18_2>d>(ref taskAwaiter, ref this);
							return;
						}
						IL_129:
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter);
						IL_138:
						taskAwaiter = CgApiHelper.LoadHintsFromCsv().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 2;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<>c.<<InitCyberGhost>b__18_2>d>(ref taskAwaiter, ref this);
							return;
						}
						IL_18B:
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter);
						taskAwaiter = CgApiHelper.LoadProgramsFromCsv().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 3;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<>c.<<InitCyberGhost>b__18_2>d>(ref taskAwaiter, ref this);
							return;
						}
						IL_1EA:
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter);
					}
					catch (System.Exception exception)
					{
						this.<>1__state = -2;
						this.<>t__builder.SetException(exception);
						return;
					}
					this.<>1__state = -2;
					this.<>t__builder.SetResult();
				}

				[DebuggerHidden]
				void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
				{
					this.<>t__builder.SetStateMachine(stateMachine);
				}
			}

			public static readonly Splash.<>c <>9 = new Splash.<>c();

			public static Action <>9__3_0;

			public static Action <>9__5_1;

			public static Action <>9__5_2;

			public static Action <>9__15_0;

			public static Action <>9__18_1;

			public static Action <>9__18_2;

			internal void <HandleCommandLine>b__3_0()
			{
				Helper.OpenLink("go_account", false);
			}

			internal void <HandleLaunchCommandLine>b__5_1()
			{
				ProcessHelpers.StartProcessListAndDisableDebugger(ObjectHolder.AppListLaunchConnectAfterOnce);
				ObjectHolder.AppListKillDisconnectBefore.Clear();
				ObjectHolder.AppListLaunchConnectAfterOnce.Clear();
			}

			internal void <HandleLaunchCommandLine>b__5_2()
			{
				ProcessHelpers.StartProcessListAndDisableDebugger(ObjectHolder.AppListLaunchConnectAfterOnce);
				ObjectHolder.AppListLaunchConnectAfterOnce.Clear();
			}

			internal void <PreloadControls>b__15_0()
			{
				HelperFunctions.PreLoadAssembliesFromPath(HelperFunctions.get_AppPath(), new string[]
				{
					"BugSplatRc.dll"
				});
			}

			internal void <InitCyberGhost>b__18_1()
			{
				Application.Current.Shutdown();
				Environment.Exit(0);
			}

			[AsyncStateMachine(typeof(Splash.<>c.<<InitCyberGhost>b__18_2>d))]
			internal void <InitCyberGhost>b__18_2()
			{
				Splash.<>c.<<InitCyberGhost>b__18_2>d <<InitCyberGhost>b__18_2>d;
				<<InitCyberGhost>b__18_2>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<InitCyberGhost>b__18_2>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<InitCyberGhost>b__18_2>d.<>t__builder;
				<>t__builder.Start<Splash.<>c.<<InitCyberGhost>b__18_2>d>(ref <<InitCyberGhost>b__18_2>d);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <HandleCommandLine>d__3 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			public IList<string> aCommandLine;

			private IList<string> <commandLine>5__1;

			private TaskAwaiter<LoginResultObject> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				bool result;
				try
				{
					TaskAwaiter<LoginResultObject> taskAwaiter;
					if (num != 0)
					{
						Splash._mShowMainForm = true;
						if (this.aCommandLine == null)
						{
							goto IL_73A;
						}
						this.<commandLine>5__1 = this.aCommandLine;
						if (this.<commandLine>5__1.Contains("/updateInstalled"))
						{
							ObjectHolder.ShowUpdateInstalled = true;
						}
						if (this.<commandLine>5__1.Contains("/exit"))
						{
							Splash._mShowMainForm = false;
							if (ObjectHolder.MainForm != null)
							{
								ObjectHolder.MainForm.Exit(false);
							}
							result = false;
							goto IL_757;
						}
						if (this.<commandLine>5__1.Contains("/min") || this.<commandLine>5__1.Contains("/autostart") || this.<commandLine>5__1.Contains("/silent"))
						{
							Splash._mShowMainForm = false;
							if (ObjectHolder.MainForm != null && !GuiHelper.IsProLoginRequired())
							{
								ObjectHolder.MainForm.Visibility = Visibility.Hidden;
							}
						}
						if (this.<commandLine>5__1.Contains("/start-app-before-connect"))
						{
							Splash._mShowMainForm = false;
							List<string> commandLineParams = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/start-app-before-connect", "/");
							ObjectHolder.AppListLaunchConnectBefore.AddRange(commandLineParams);
						}
						if (this.<commandLine>5__1.Contains("/start-app-after-connect"))
						{
							Splash._mShowMainForm = false;
							List<string> commandLineParams2 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/start-app-after-connect", "/");
							ObjectHolder.AppListLaunchConnectAfter.AddRange(commandLineParams2);
						}
						if (this.<commandLine>5__1.Contains("/start-app-before-disconnect"))
						{
							Splash._mShowMainForm = false;
							List<string> commandLineParams3 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/start-app-before-disconnect", "/");
							ObjectHolder.AppListLaunchDisconnectBefore.AddRange(commandLineParams3);
						}
						if (this.<commandLine>5__1.Contains("/start-app-after-disconnect"))
						{
							Splash._mShowMainForm = false;
							List<string> commandLineParams4 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/start-app-after-disconnect", "/");
							ObjectHolder.AppListLaunchDisconnectAfter.AddRange(commandLineParams4);
						}
						if (this.<commandLine>5__1.Contains("/terminate-app-before-connect"))
						{
							Splash._mShowMainForm = false;
							List<string> commandLineParams5 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/terminate-app-before-connect", "/");
							ObjectHolder.AppListKillConnectBefore.AddRange(commandLineParams5);
						}
						if (this.<commandLine>5__1.Contains("/terminate-app-after-connect"))
						{
							Splash._mShowMainForm = false;
							List<string> commandLineParams6 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/terminate-app-after-connect", "/");
							ObjectHolder.AppListKillConnectAfter.AddRange(commandLineParams6);
						}
						if (this.<commandLine>5__1.Contains("/terminate-app-before-disconnect"))
						{
							Splash._mShowMainForm = false;
							List<string> commandLineParams7 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/terminate-app-before-disconnect", "/");
							ObjectHolder.AppListKillDisconnectBefore.AddRange(commandLineParams7);
						}
						if (this.<commandLine>5__1.Contains("/terminate-app-after-disconnect"))
						{
							Splash._mShowMainForm = false;
							List<string> commandLineParams8 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/terminate-app-after-disconnect", "/");
							ObjectHolder.AppListKillDisconnectAfter.AddRange(commandLineParams8);
						}
						Splash.HandleLaunchCommandLine(this.<commandLine>5__1, false);
						if (this.<commandLine>5__1.Contains("/disconnect"))
						{
							Splash._mShowMainForm = false;
							if (ObjectHolder.MainForm != null)
							{
								ObjectHolder.MainForm.Disconnect();
							}
						}
						if (this.<commandLine>5__1.Contains("/connect"))
						{
							Splash._mShowMainForm = false;
							if (ObjectHolder.MainForm != null)
							{
								ObjectHolder.MainForm.Connect(false, false, false);
							}
						}
						if (this.<commandLine>5__1.Contains("/connectProfile"))
						{
							List<string> commandLineParams9 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/connectProfile", "/");
							if (ObjectHolder.MainForm != null && commandLineParams9.Count > 0)
							{
								ObjectHolder.MainForm.ConnectWithProfile(commandLineParams9[0], false, false, true);
							}
						}
						if (this.<commandLine>5__1.Contains("/show") && ObjectHolder.MainForm != null)
						{
							ObjectHolder.MainForm.ShowMe();
						}
						if (this.<commandLine>5__1.Contains("/lock-internet"))
						{
							Splash._mShowMainForm = false;
							if (ObjectHolder.MainForm != null)
							{
								ObjectHolder.MainForm.LockInternet();
							}
						}
						if (this.<commandLine>5__1.Contains("/unlock-internet"))
						{
							Splash._mShowMainForm = false;
							if (ObjectHolder.MainForm != null)
							{
								ObjectHolder.MainForm.UnlockInternet();
							}
						}
						if (this.<commandLine>5__1.Contains("/restart"))
						{
							if (ObjectHolder.MainForm != null)
							{
								ObjectHolder.MainForm.Exit(true);
							}
							result = false;
							goto IL_757;
						}
						if (this.<commandLine>5__1.Contains("/uninstall"))
						{
							if (ObjectHolder.MainForm != null)
							{
								ObjectHolder.MainForm.Exit(false);
							}
							result = false;
							goto IL_757;
						}
						if (this.<commandLine>5__1.Contains("/uninstallv2"))
						{
							if (ObjectHolder.MainForm != null)
							{
								ObjectHolder.MainForm.Exit(false);
							}
							result = false;
							goto IL_757;
						}
						if (this.<commandLine>5__1.Contains("/firststart") || SettingsHolder.get_Settings().get_FirstStartRetries() > 0)
						{
							ObjectHolder.IsFirstStart = true;
							if (this.<commandLine>5__1.Contains("/firststart"))
							{
								SettingsHolder.get_Settings().set_FirstStartRetries(2);
							}
							else
							{
								SettingsHolder expr_491 = SettingsHolder.get_Settings();
								int firstStartRetries = expr_491.get_FirstStartRetries();
								expr_491.set_FirstStartRetries(firstStartRetries - 1);
							}
							bool flag = this.<commandLine>5__1.Contains("/silent");
							GuiHelper.ResetProfilesToDefault(null);
							if (!flag)
							{
								if (Theming.CurrentTheme == Theming.Theme.Pro)
								{
									Navigation.ShowMessageOverlay("ActivateLicense", false);
								}
								string domainPrefix = Splash.GetDomainPrefix();
								HelperFunctions.OpenFileInBrowser(string.Format("https://{0}.cyberghostvpn.com/firststart?&{1}&{2}", domainPrefix, MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, new string[]
								{
									"hid",
									"Succesfull connections",
									"Unsuccesfull connections",
									"Connection attempts",
									"Application launches",
									"Total secure hotspots protected",
									"Total unsecure hotspots protected",
									"Last used profile"
								}), SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString()), false);
							}
							if (flag)
							{
								Splash._mShowMainForm = false;
								result = false;
								goto IL_757;
							}
						}
						if (!HelperFunctions.StringListContainsSubString(this.<commandLine>5__1, "cyberghost://recover/"))
						{
							goto IL_6AC;
						}
						List<string> commandLineParams10 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "cyberghost://recover/", "cyberghost://recover/");
						if (commandLineParams10.Count != 1)
						{
							goto IL_6AC;
						}
						string text = commandLineParams10[0].Substring("cyberghost://recover/".Length).Trim();
						if (string.IsNullOrWhiteSpace(text))
						{
							goto IL_6AC;
						}
						Navigation.ShowMessageOverlay("ActivateLicense", false);
						taskAwaiter = Helper.Login(string.Empty, text, true).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<LoginResultObject>, Splash.<HandleCommandLine>d__3>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<LoginResultObject>);
						this.<>1__state = -1;
					}
					LoginResultObject arg_635_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<LoginResultObject>);
					if (arg_635_0.LoginStatusCode != HttpStatusCode.OK)
					{
						Navigation.HideMessageOverlay(true);
					}
					HttpStatusCode loginStatusCode = arg_635_0.LoginStatusCode;
					if (loginStatusCode - HttpStatusCode.Unauthorized > 2)
					{
						if (loginStatusCode == HttpStatusCode.RequestTimeout)
						{
							ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
						}
					}
					else if (ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.General.Maximum_devices_reached, CyberGhost.Translations.General.You_have_reached_the_maximum_of_allowed_devices) == MessageBoxResult.OK)
					{
						Action arg_6A6_0;
						if ((arg_6A6_0 = Splash.<>c.<>9__3_0) == null)
						{
							arg_6A6_0 = (Splash.<>c.<>9__3_0 = new Action(Splash.<>c.<>9.<HandleCommandLine>b__3_0));
						}
						Task.Run(arg_6A6_0);
					}
					IL_6AC:
					if (this.<commandLine>5__1.Contains("/updateInstalled"))
					{
						string domainPrefix2 = Splash.GetDomainPrefix();
						HelperFunctions.OpenFileInBrowser(string.Format("http://{0}.cyberghostvpn.com/updateinstalled?&{1}&{2}", domainPrefix2, MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, new string[]
						{
							"hid",
							"Succesfull connections",
							"Unsuccesfull connections",
							"Connection attempts",
							"Application launches",
							"Total secure hotspots protected",
							"Total unsecure hotspots protected",
							"Last used profile"
						}), SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString()), false);
					}
					this.<commandLine>5__1 = null;
					IL_73A:
					result = true;
				}
				catch (System.Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_757:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass5_0
		{
			public string connectProfile;

			internal void <HandleLaunchCommandLine>b__0(object o)
			{
				ObjectHolder.ConnectionSource = "app-protection";
				if (ObjectHolder.MainForm != null)
				{
					ObjectHolder.MainForm.ConnectWithProfile(this.connectProfile, false, true, false);
				}
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <PreloadControls>d__15 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						Action arg_29_0;
						if ((arg_29_0 = Splash.<>c.<>9__15_0) == null)
						{
							arg_29_0 = (Splash.<>c.<>9__15_0 = new Action(Splash.<>c.<>9.<PreloadControls>b__15_0));
						}
						taskAwaiter = Task.Run(arg_29_0).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<PreloadControls>d__15>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
				}
				catch (System.Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <InitTheInit>d__17 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public Splash <>4__this;

			public int initTrys;

			private TaskAwaiter<InitStatus> <>u__1;

			private TaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Splash splash = this.<>4__this;
				try
				{
					try
					{
						try
						{
							TaskAwaiter taskAwaiter;
							TaskAwaiter<InitStatus> taskAwaiter2;
							if (num != 0)
							{
								if (num == 1)
								{
									taskAwaiter = this.<>u__2;
									this.<>u__2 = default(TaskAwaiter);
									int arg_6F_1 = -1;
									num = -1;
									this.<>1__state = arg_6F_1;
									goto IL_130;
								}
								taskAwaiter2 = splash.InitCyberGhost(this.initTrys > 0).GetAwaiter();
								if (!taskAwaiter2.IsCompleted)
								{
									int arg_38_1 = 0;
									num = 0;
									this.<>1__state = arg_38_1;
									this.<>u__1 = taskAwaiter2;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<InitStatus>, Splash.<InitTheInit>d__17>(ref taskAwaiter2, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter2 = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter<InitStatus>);
								int arg_90_1 = -1;
								num = -1;
								this.<>1__state = arg_90_1;
							}
							InitStatus arg_A4_0 = taskAwaiter2.GetResult();
							taskAwaiter2 = default(TaskAwaiter<InitStatus>);
							InitStatus initStatus = arg_A4_0;
							if (initStatus == InitStatus.Ok)
							{
								goto IL_1EB;
							}
							if (initStatus != InitStatus.NotOnline || this.initTrys >= 10 || !HelperFunctions.IsAutostart("/autostart"))
							{
								if (!Splash.HandleLaunchCommandLine(Environment.GetCommandLineArgs(), true))
								{
									splash.Hide();
									ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.General.Splash_InitTheInit_Service_not_reachable, CyberGhost.Translations.General.Splash_InitTheInit_The_CyberGhost_login_system_is_not_reach);
								}
								Environment.Exit(1);
								goto IL_1AD;
							}
							splash.Status.Text = string.Format(CyberGhost.Translations.Splash.Splash_InitTheInit_ServiceIsNotReachableRetry, this.initTrys + 1);
							taskAwaiter = Task.Delay(1000).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								int arg_110_1 = 1;
								num = 1;
								this.<>1__state = arg_110_1;
								this.<>u__2 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<InitTheInit>d__17>(ref taskAwaiter, ref this);
								return;
							}
							IL_130:
							taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter);
							splash.InitTheInit(this.initTrys + 1);
						}
						catch (System.Exception ex)
						{
							HelperFunctions.DebugLine(string.Format("EXCEPTION DURING InitCyberGhost: {0}", ex.Message));
							ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.General.Splash_InitTheInit_Service_not_reachable, CyberGhost.Translations.General.Splash_InitTheInit_The_CyberGhost_login_system_is_not_reach);
							Environment.Exit(1);
						}
						IL_1AD:;
					}
					finally
					{
						if (num < 0 && Environment.GetCommandLineArgs().Contains("/crashtest"))
						{
							throw new System.Exception("Testexception");
						}
					}
				}
				catch (System.Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_1EB:
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <InitCyberGhost>d__18 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<InitStatus> <>t__builder;

			public bool isRetry;

			public Splash <>4__this;

			private IList<string> <commandLine>5__1;

			private MainWindow <mainWindow>5__2;

			private TaskAwaiter <>u__1;

			private TaskAwaiter<bool> <>u__2;

			private TaskAwaiter<CgApiUser> <>u__3;

			private TaskAwaiter<MainWindow.TapAdapterInstallationResult> <>u__4;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Splash splash = this.<>4__this;
				InitStatus result;
				try
				{
					TaskAwaiter taskAwaiter;
					TaskAwaiter<bool> taskAwaiter2;
					CgApiCaCertificateManager cgApiCaCertificateManager;
					TaskAwaiter<CgApiUser> taskAwaiter3;
					TaskAwaiter<MainWindow.TapAdapterInstallationResult> taskAwaiter4;
					switch (num)
					{
					case 0:
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						int arg_19C_1 = -1;
						num = -1;
						this.<>1__state = arg_19C_1;
						break;
					}
					case 1:
					{
						taskAwaiter2 = this.<>u__2;
						this.<>u__2 = default(TaskAwaiter<bool>);
						int arg_385_1 = -1;
						num = -1;
						this.<>1__state = arg_385_1;
						goto IL_38A;
					}
					case 2:
					{
						IL_4FD:
						try
						{
							if (num != 2)
							{
								taskAwaiter2 = ObjectHolder.CurrentStatus.Fetch().GetAwaiter();
								if (!taskAwaiter2.IsCompleted)
								{
									int arg_520_1 = 2;
									num = 2;
									this.<>1__state = arg_520_1;
									this.<>u__2 = taskAwaiter2;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Splash.<InitCyberGhost>d__18>(ref taskAwaiter2, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter2 = this.<>u__2;
								this.<>u__2 = default(TaskAwaiter<bool>);
								int arg_558_1 = -1;
								num = -1;
								this.<>1__state = arg_558_1;
							}
							taskAwaiter2.GetResult();
							taskAwaiter2 = default(TaskAwaiter<bool>);
						}
						catch (System.Exception)
						{
							result = InitStatus.NotOnline;
							goto IL_C44;
						}
						if (!CgApiHelper.DoVersionCheck())
						{
							ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.Splash.Splash_InitCyberGhost_CyberGhostIsOutdated, CyberGhost.Translations.Splash.Splash_InitCyberGhost_Splash_InitCyberGhost_CyberGhostIsOutdated_Text);
							splash.Close();
							MainWindow.DoStartForegroundUpdate(null);
							new Thread(new ThreadStart(splash.<InitCyberGhost>b__18_0)).Start();
							result = InitStatus.PreconditionFailed;
							goto IL_C44;
						}
						if (ObjectHolder.CyberGhostCom == null)
						{
							ObjectHolder.CyberGhostCom = new EventSender("CyherGhostPipe");
						}
						ConnectionStatus connectionStatus = ObjectHolder.CyberGhostCom.GetConnectionStatus();
						ObjectHolder.ConnectionStatus = connectionStatus;
						if (connectionStatus == 10000 || (ObjectHolder.CyberGhostCom.IsInternetConnectionLocked() && connectionStatus != null))
						{
							splash.Visibility = Visibility.Hidden;
							if (ModernDialogExtension.ShowDialogYesNo(CyberGhost.Translations.General.Splash_InitCyberGhost_Connection_locked, CyberGhost.Translations.General.Splash_InitCyberGhost_) != MessageBoxResult.Yes)
							{
								splash.Close();
								result = InitStatus.PreconditionFailed;
								goto IL_C44;
							}
							ObjectHolder.CyberGhostCom.UnlockInternetConnection();
							ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
							splash.Visibility = Visibility.Visible;
						}
						if (connectionStatus != -1)
						{
							goto IL_70B;
						}
						if (this.<commandLine>5__1.Contains("/firststart"))
						{
							goto IL_6E5;
						}
						SettingsHolder.get_Settings().set_DnsServerList(ObjectHolder.CurrentStatus.get_KnownDnsForwarders());
						taskAwaiter = SettingsHolder.get_Settings().SaveSettingsAsync(true).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							int arg_682_1 = 3;
							num = 3;
							this.<>1__state = arg_682_1;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<InitCyberGhost>d__18>(ref taskAwaiter, ref this);
							return;
						}
						goto IL_6CC;
					}
					case 3:
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						int arg_6C7_1 = -1;
						num = -1;
						this.<>1__state = arg_6C7_1;
						goto IL_6CC;
					}
					case 4:
						IL_75F:
						try
						{
							if (num != 4)
							{
								taskAwaiter2 = cgApiCaCertificateManager.Fetch(Constants.get_UserDataPath(), false).GetAwaiter();
								if (!taskAwaiter2.IsCompleted)
								{
									int arg_784_1 = 4;
									num = 4;
									this.<>1__state = arg_784_1;
									this.<>u__2 = taskAwaiter2;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Splash.<InitCyberGhost>d__18>(ref taskAwaiter2, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter2 = this.<>u__2;
								this.<>u__2 = default(TaskAwaiter<bool>);
								int arg_7BC_1 = -1;
								num = -1;
								this.<>1__state = arg_7BC_1;
							}
							bool arg_7D0_0 = taskAwaiter2.GetResult();
							taskAwaiter2 = default(TaskAwaiter<bool>);
							if (!arg_7D0_0)
							{
								result = InitStatus.NotOnline;
								goto IL_C44;
							}
						}
						catch (WebException ex)
						{
							HelperFunctions.DebugLine(string.Format("CA CHECK FAILED DURING STARTUP {0}", ex.Message));
							result = InitStatus.NotOnline;
							goto IL_C44;
						}
						splash.Status.Text = CyberGhost.Translations.General.Splash_InitCyberGhost_Logging_in____;
						taskAwaiter3 = Helper.GetCurrentUserFromSettings().GetAwaiter();
						if (!taskAwaiter3.IsCompleted)
						{
							int arg_823_1 = 5;
							num = 5;
							this.<>1__state = arg_823_1;
							this.<>u__3 = taskAwaiter3;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<CgApiUser>, Splash.<InitCyberGhost>d__18>(ref taskAwaiter3, ref this);
							return;
						}
						goto IL_860;
					case 5:
					{
						taskAwaiter3 = this.<>u__3;
						this.<>u__3 = default(TaskAwaiter<CgApiUser>);
						int arg_85B_1 = -1;
						num = -1;
						this.<>1__state = arg_85B_1;
						goto IL_860;
					}
					case 6:
					{
						taskAwaiter4 = this.<>u__4;
						this.<>u__4 = default(TaskAwaiter<MainWindow.TapAdapterInstallationResult>);
						int arg_947_1 = -1;
						num = -1;
						this.<>1__state = arg_947_1;
						goto IL_94C;
					}
					case 7:
						IL_9AB:
						try
						{
							if (num != 7)
							{
								taskAwaiter = Splash.PreloadControls().GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									int arg_9C9_1 = 7;
									num = 7;
									this.<>1__state = arg_9C9_1;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<InitCyberGhost>d__18>(ref taskAwaiter, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter);
								int arg_A01_1 = -1;
								num = -1;
								this.<>1__state = arg_A01_1;
							}
							taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter);
						}
						catch (System.Exception ex2)
						{
							HelperFunctions.DebugLine(string.Format("Could not preload controls {0}", ex2.Message));
						}
						Splash.SetProfileNames();
						taskAwaiter = this.<mainWindow>5__2.EnablePollUser().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							int arg_A55_1 = 8;
							num = 8;
							this.<>1__state = arg_A55_1;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<InitCyberGhost>d__18>(ref taskAwaiter, ref this);
							return;
						}
						goto IL_A92;
					case 8:
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						int arg_A8D_1 = -1;
						num = -1;
						this.<>1__state = arg_A8D_1;
						goto IL_A92;
					}
					case 9:
					{
						taskAwaiter2 = this.<>u__2;
						this.<>u__2 = default(TaskAwaiter<bool>);
						int arg_B11_1 = -1;
						num = -1;
						this.<>1__state = arg_B11_1;
						goto IL_B16;
					}
					default:
					{
						this.<commandLine>5__1 = Environment.GetCommandLineArgs();
						if (this.isRetry)
						{
							goto IL_715;
						}
						if (this.<commandLine>5__1.Contains("/setlogin"))
						{
							List<string> commandLineParams = Splash.GetCommandLineParams(this.<commandLine>5__1, "/setlogin");
							if (commandLineParams.Count == 1)
							{
								RegistryKey currentUser = Registry.CurrentUser;
								RegistryKey registryKey = currentUser.OpenSubKey("SOFTWARE\\CyberGhost", true);
								if (registryKey != null)
								{
									registryKey.SetValue("LoginServer", string.Format("{0}.cyberghostvpn.com", commandLineParams[0]));
									registryKey.Close();
									currentUser.Close();
								}
							}
						}
						IconHelpers.Instance.InitTrayIcons();
						Edition edition = SettingsHolder.get_Settings().get_Edition();
						if (edition == 1)
						{
							Theming.CurrentTheme = Theming.Theme.Pro;
						}
						if (!this.<commandLine>5__1.Contains("/delay") || !this.<commandLine>5__1.Contains("/firststart"))
						{
							goto IL_1B0;
						}
						List<string> commandLineParams2 = HelperFunctions.GetCommandLineParams(this.<commandLine>5__1, "/delay", "/");
						int num2;
						if (commandLineParams2.Count != 1 || !int.TryParse(commandLineParams2[0], out num2))
						{
							goto IL_1B0;
						}
						taskAwaiter = Task.Delay(num2 * 1000).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							int arg_164_1 = 0;
							num = 0;
							this.<>1__state = arg_164_1;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<InitCyberGhost>d__18>(ref taskAwaiter, ref this);
							return;
						}
						break;
					}
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					IL_1B0:
					BitmapImage bitmapImage = new BitmapImage();
					bitmapImage.BeginInit();
					bitmapImage.UriSource = new Uri(Theming.GetThemedImage("Icons\\Default\\drehbolla.gif"));
					bitmapImage.EndInit();
					splash.Icon = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Default\\Regular.ico")));
					ImageBehavior.SetAnimatedSource(splash.Loader, bitmapImage);
					SettingsHolder.get_Settings().set_Version(Assembly.GetExecutingAssembly().GetName().Version.ToString());
					Thread.CurrentThread.CurrentCulture = new CultureInfo(SettingsHolder.get_Settings().get_Language());
					Thread.CurrentThread.CurrentUICulture = new CultureInfo(SettingsHolder.get_Settings().get_Language());
					ServicePointManager.Expect100Continue = false;
					ObjectHolder.EventLogger = new EventLogger();
					if (!File.Exists(Path.Combine(HelperFunctions.get_AppPath(), "wyUpdate.exe")))
					{
						ModernDialogExtension.ShowDialogOk("Installation corrupted", "Your CyberGhost installation seems to miss some files. Please reinstall CyberGhost!");
						result = InitStatus.PreconditionFailed;
						goto IL_C44;
					}
					string[] array = new string[]
					{
						"CyberGhost.exe",
						"CyberGhost.Service.exe",
						"CyberGhost.RESTCommunicator.dll"
					};
					int i;
					for (i = 0; i < array.Length; i++)
					{
						string path = array[i];
						if (!StrongNameSignature.SelfCheckAssembly(Path.Combine(HelperFunctions.get_AppPath(), path)))
						{
							ModernDialogExtension.ShowDialogOk("Installation corrupted", "Your CyberGhost installation seems to miss some files. Please reinstall CyberGhost!");
							result = InitStatus.PreconditionFailed;
							goto IL_C44;
						}
					}
					if (WindowsIdentity.GetCurrent().IsGuest)
					{
						ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.General.Splash_InitCyberGhost_Privileges_required, CyberGhost.Translations.General.Splash_InitCyberGhost_CyberGhost_cant_be_excecuted_on_a_guest_account_);
						result = InitStatus.PreconditionFailed;
						goto IL_C44;
					}
					CgApiGlobalOAuthData.set_OAuthRequestInfos(OAuthData.GetOAuthRequestInfos());
					splash.Status.Text = CyberGhost.Translations.Splash.Splash_InitCyberGhost_Waiting_for_CyberGhost_Service_to_start____;
					taskAwaiter2 = splash.CheckInstallation().GetAwaiter();
					if (!taskAwaiter2.IsCompleted)
					{
						int arg_336_1 = 1;
						num = 1;
						this.<>1__state = arg_336_1;
						this.<>u__2 = taskAwaiter2;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Splash.<InitCyberGhost>d__18>(ref taskAwaiter2, ref this);
						return;
					}
					IL_38A:
					bool arg_399_0 = taskAwaiter2.GetResult();
					taskAwaiter2 = default(TaskAwaiter<bool>);
					if (!arg_399_0)
					{
						splash.Close();
						if (ObjectHolder.TaskbarIcon != null)
						{
							ObjectHolder.TaskbarIcon.Dispose();
							ObjectHolder.TaskbarIcon = null;
						}
						result = InitStatus.PreconditionFailed;
						goto IL_C44;
					}
					SettingsHolder expr_3C4 = SettingsHolder.get_Settings();
					i = expr_3C4.get_TotalApplicationLaunches();
					expr_3C4.set_TotalApplicationLaunches(i + 1);
					if (!this.<commandLine>5__1.Contains("/silent"))
					{
						splash.Visibility = Visibility.Visible;
					}
					OAuthInfos.OAuthUserAgent = "CG6Win";
					OAuthInfos.ClientId = SettingsHolder.get_Settings().get_ENC_CertID();
					DefaultParameters.get_DefaultParameterList().Add(new KeyValuePair<string, string>("os", "win"));
					DefaultParameters.get_DefaultParameterList().Add(new KeyValuePair<string, string>("osver", HelperFunctions.GetOsVersion().ToString()));
					DefaultParameters.get_DefaultParameterList().Add(new KeyValuePair<string, string>("version", HelperFunctions.get_AppVersion().ToString()));
					DefaultParameters.get_DefaultParameterList().Add(new KeyValuePair<string, string>("lang", SettingsHolder.get_Settings().get_Language()));
					DefaultParameters.get_DefaultParameterList().Add(new KeyValuePair<string, string>("region", HelperFunctions.GetSystemRegionCode()));
					DefaultParameters.get_DefaultParameterList().Add(new KeyValuePair<string, string>("environment", EumExtensions.GetDescription<Channel>(CgApiHelper.GetLoginSystemChannel())));
					DefaultParameters.get_DefaultParameterList().Add(new KeyValuePair<string, string>("affiliate", Constants.get_AffiliateId()));
					DefaultParameters.get_DefaultParameterList().Add(new KeyValuePair<string, string>("hid", FingerPrint.Value()));
					splash.Status.Text = CyberGhost.Translations.General.Splash_InitCyberGhost_Getting_current_connection_state____;
					ObjectHolder.CurrentStatus = new CgApiServiceStatus();
					goto IL_4FD;
					IL_6CC:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					ObjectHolder.CyberGhostCom.RevertAllNameServerChanges();
					IL_6E5:
					try
					{
						if (!SettingsHolder.get_Settings().get_DontResetTapAdapter())
						{
							ObjectHolder.CyberGhostCom.CorrectTapProtocolls(SettingsHolder.get_Settings().get_DisableIpV6Protocol());
						}
					}
					catch (System.Exception)
					{
					}
					IL_70B:
					HelperFunctions.SetBrowserCompatMode("CyberGhost.exe");
					IL_715:
					if (!this.isRetry)
					{
						splash.Status.Text = CyberGhost.Translations.General.Splash_InitCyberGhost_Checking_CA_certificate____;
					}
					try
					{
						string path2 = Path.Combine(Constants.get_UserDataPath(), "openssl.txt");
						if (File.Exists(path2))
						{
							File.Delete(path2);
						}
					}
					catch (System.Exception)
					{
					}
					cgApiCaCertificateManager = new CgApiCaCertificateManager(OAuthData.GetOAuthRequestInfos());
					goto IL_75F;
					IL_860:
					CgApiUser arg_86F_0 = taskAwaiter3.GetResult();
					taskAwaiter3 = default(TaskAwaiter<CgApiUser>);
					ObjectHolder.CurrentUser = arg_86F_0;
					splash.Status.Text = CyberGhost.Translations.General.Splash_InitCyberGhost_Loading_GUI____;
					this.<mainWindow>5__2 = new MainWindow();
					ObjectHolder.MainForm = this.<mainWindow>5__2;
					this.<mainWindow>5__2.SetupService();
					if (this.<commandLine>5__1.Contains("/silent") || this.<commandLine>5__1.Contains("/exit") || this.<commandLine>5__1.Contains("/uninstall") || this.<commandLine>5__1.Contains("/uninstallv2"))
					{
						goto IL_95C;
					}
					taskAwaiter4 = MainWindow.CheckAndInstallTapAdapter(false, false, true).GetAwaiter();
					if (!taskAwaiter4.IsCompleted)
					{
						int arg_90F_1 = 6;
						num = 6;
						this.<>1__state = arg_90F_1;
						this.<>u__4 = taskAwaiter4;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<MainWindow.TapAdapterInstallationResult>, Splash.<InitCyberGhost>d__18>(ref taskAwaiter4, ref this);
						return;
					}
					IL_94C:
					taskAwaiter4.GetResult();
					taskAwaiter4 = default(TaskAwaiter<MainWindow.TapAdapterInstallationResult>);
					IL_95C:
					if (ObjectHolder.TaskbarIcon == null)
					{
						ObjectHolder.TaskbarIcon = this.<mainWindow>5__2.TaskbarIcon;
					}
					ObjectHolder.TaskbarIcon.set_ToolTipText(Theming.GetProductName());
					Action arg_9A1_0;
					if ((arg_9A1_0 = Splash.<>c.<>9__18_2) == null)
					{
						arg_9A1_0 = (Splash.<>c.<>9__18_2 = new Action(Splash.<>c.<>9.<InitCyberGhost>b__18_2));
					}
					new Task(arg_9A1_0).Start();
					goto IL_9AB;
					IL_A92:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					if (!this.<commandLine>5__1.Contains("/firststart"))
					{
						BaseMixpanelObject.FireEvent<ApplicationLaunchedEvent>();
					}
					taskAwaiter2 = Splash.HandleCommandLine(this.<commandLine>5__1).GetAwaiter();
					if (!taskAwaiter2.IsCompleted)
					{
						int arg_AD9_1 = 9;
						num = 9;
						this.<>1__state = arg_AD9_1;
						this.<>u__2 = taskAwaiter2;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Splash.<InitCyberGhost>d__18>(ref taskAwaiter2, ref this);
						return;
					}
					IL_B16:
					bool arg_B25_0 = taskAwaiter2.GetResult();
					taskAwaiter2 = default(TaskAwaiter<bool>);
					if (arg_B25_0 && Splash._mShowMainForm)
					{
						this.<mainWindow>5__2.Show();
					}
					splash.Close();
					splash.SetTrayIcon();
					if (ObjectHolder.CurrentUser != null && SettingsHolder.get_Settings().get_AutoConnect() && !string.IsNullOrEmpty(SettingsHolder.get_Settings().get_AutoStartProfile()) && ObjectHolder.MainForm != null && ObjectHolder.ConnectionStatus == -1 && ObjectHolder.AppListLaunchConnectAfterOnce.Count == 0)
					{
						if (!GuiHelper.IsProfileAvailableInPlan(SettingsHolder.get_Settings().get_AutoStartProfile()))
						{
							SettingsHolder.get_Settings().set_AutoStartProfile("ProfileAnonymousBrowsing");
						}
						CgBase cgBase = (CgBase)SettingsHolder.get_Settings().GetSettingByName(SettingsHolder.get_Settings().get_AutoStartProfile());
						if (cgBase != null)
						{
							TrackingHelper.SendProfileClickedEvent(cgBase.GetBaseName(), "automatic");
							ObjectHolder.ConnectionSource = "autostart";
							ObjectHolder.MainForm.ConnectWithProfile(cgBase, false, false, false);
						}
						else
						{
							Navigation.GoHome();
						}
					}
					else
					{
						Navigation.GoHome();
					}
					NotificationPopup.ShowOnceTimed(PopUpZone.StartUp, 5.0);
					ObjectHolder.TaskbarIcon.Visibility = Visibility.Visible;
					result = InitStatus.Ok;
				}
				catch (System.Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_C44:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <CheckInstallation>d__20 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			private IList<string> <commandLine>5__1;

			public Splash <>4__this;

			private ServiceController <cgService>5__2;

			private TaskAwaiter<bool> <>u__1;

			private TaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Splash splash = this.<>4__this;
				bool result;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					switch (num)
					{
					case 0:
						break;
					case 1:
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						int arg_4F5_1 = -1;
						num = -1;
						this.<>1__state = arg_4F5_1;
						goto IL_4FA;
					}
					case 2:
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						int arg_53F_1 = -1;
						num = -1;
						this.<>1__state = arg_53F_1;
						goto IL_544;
					}
					case 3:
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						int arg_587_1 = -1;
						num = -1;
						this.<>1__state = arg_587_1;
						goto IL_58C;
					}
					case 4:
					case 5:
						goto IL_5BA;
					default:
						this.<commandLine>5__1 = Environment.GetCommandLineArgs();
						if (this.<commandLine>5__1.Contains("/install"))
						{
							taskAwaiter = Cg5UpgradeHelper.CheckForCg5AndUninstall().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								int arg_64_1 = 0;
								num = 0;
								this.<>1__state = arg_64_1;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Splash.<CheckInstallation>d__20>(ref taskAwaiter, ref this);
								return;
							}
							goto IL_466;
						}
						else if (this.<commandLine>5__1.Contains("/install-nodriver"))
						{
							taskAwaiter = Cg5UpgradeHelper.CheckForCg5AndUninstall().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								int arg_B0_1 = 2;
								num = 2;
								this.<>1__state = arg_B0_1;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Splash.<CheckInstallation>d__20>(ref taskAwaiter, ref this);
								return;
							}
							goto IL_544;
						}
						else if (this.<commandLine>5__1.Contains("/installtap"))
						{
							if (!this.<commandLine>5__1.Contains("/force") && Helpers.IsTapV9Installed("9.0.0.9", false))
							{
								goto IL_59C;
							}
							taskAwaiter = Helpers.ReInstallTapV9Driver(Constants.get_OpenVpnBinPath()).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								int arg_123_1 = 3;
								num = 3;
								this.<>1__state = arg_123_1;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Splash.<CheckInstallation>d__20>(ref taskAwaiter, ref this);
								return;
							}
							goto IL_58C;
						}
						else
						{
							if (this.<commandLine>5__1.Contains("/uninstallv2"))
							{
								Splash.OpenUninstallWebsite();
								AppProtection.DisableAppProtection();
								Splash.StopService();
								Splash.UnInstallService();
								Splash.RemoveTap();
								Splash.DeleteUserData();
								result = false;
								goto IL_852;
							}
							if (this.<commandLine>5__1.Contains("/uninstall"))
							{
								AppProtection.DisableAppProtection();
								Splash.StopService();
								Splash.UnInstallService();
								Splash.RemoveTap();
								Splash.DeleteUserData();
								result = false;
								goto IL_852;
							}
							if (this.<commandLine>5__1.Contains("/update"))
							{
								Splash.CorrectUserRegKey();
							}
							if (this.<commandLine>5__1.Contains("/startservice"))
							{
								Splash.StartService(true);
								result = false;
								goto IL_852;
							}
							if (this.<commandLine>5__1.Contains("/stopservice"))
							{
								Splash.StopService();
								result = false;
								goto IL_852;
							}
							if (this.<commandLine>5__1.Contains("/restartservice"))
							{
								Splash.StopService();
								Splash.StartService(true);
								result = false;
								goto IL_852;
							}
							if (this.<commandLine>5__1.Contains("/firststart"))
							{
								HelperFunctions.RegisterAsAutoStartObject("CyberGhost", "/autostart /min");
							}
							try
							{
								if (!ApplicationInstanceManager.CreateSingleInstance(Assembly.GetExecutingAssembly().GetName().Name + "6", new EventHandler<InstanceCallbackEventArgs>(Splash.SingleInstanceCallback)))
								{
									HelperFunctions.DebugLine("ANOTHER INSTANCE IS ALREADY RUNNING ...");
									result = false;
									goto IL_852;
								}
							}
							catch (System.Exception ex)
							{
								HelperFunctions.DebugLine("EX CREATING SINGLE INSTANCE " + ex.Message);
								if (ObjectHolder.CyberGhostCom != null)
								{
									ObjectHolder.CyberGhostCom.OnDebugDataAvailable("COULD NOT CREATE SINGLE INSTANCE " + ex.Message);
								}
							}
							if (this.<commandLine>5__1.Contains("/exit"))
							{
								result = false;
								goto IL_852;
							}
							ApplicationInstanceManager.SendCommandToInstance(Assembly.GetExecutingAssembly().GetName().Name, new string[]
							{
								"/exit"
							});
							if (this.<commandLine>5__1.Contains("/exit") || this.<commandLine>5__1.Contains("/uninstall") || this.<commandLine>5__1.Contains("/uninstallv2") || this.<commandLine>5__1.Contains("/silent"))
							{
								goto IL_835;
							}
							splash.Visibility = Visibility.Visible;
							if (HelperFunctions.IsServiceInstalledAndRunning("CG6Service"))
							{
								goto IL_835;
							}
							if (HelperFunctions.IsServiceInstalled("CG6Service"))
							{
								this.<cgService>5__2 = HelperFunctions.GetServiceByName("CG6Service");
								goto IL_5BA;
							}
							if (!HelperFunctions.IsAdmin())
							{
								if (ModernDialogExtension.ShowDialogYesNo(CyberGhost.Translations.General.Splash_CheckInstallation_Service_not_installed_, CyberGhost.Translations.General.Splash_CheckInstallation__) != MessageBoxResult.Yes)
								{
									result = false;
									goto IL_852;
								}
							}
							ProcessStartInfo processStartInfo = new ProcessStartInfo
							{
								FileName = Path.Combine(HelperFunctions.get_AppPath(), "CyberGhost.exe"),
								Arguments = "/install"
							};
							if (!HelperFunctions.IsAdmin())
							{
								processStartInfo.Verb = "runas";
							}
							try
							{
								Process process = Process.Start(processStartInfo);
								if (process != null)
								{
									process.WaitForExit();
									bool expr_401 = HelperFunctions.IsServiceInstalledAndRunning("CG6Service");
									if (!expr_401)
									{
										ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.Splash.Service_installation_failed_header, CyberGhost.Translations.Splash.Service_installation_failed);
									}
									result = expr_401;
									goto IL_852;
								}
								result = false;
								goto IL_852;
							}
							catch (System.Exception ex2)
							{
								HelperFunctions.DebugLine(string.Format("Splash_StartupFunctions::{0} COULD NOT EXECUTE PROCESS {1}", MethodBase.GetCurrentMethod().Name, ex2.Message));
								result = false;
								goto IL_852;
							}
						}
						break;
					}
					taskAwaiter = this.<>u__1;
					this.<>u__1 = default(TaskAwaiter<bool>);
					int arg_461_1 = -1;
					num = -1;
					this.<>1__state = arg_461_1;
					IL_466:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					Splash.UnInstallService();
					Splash.InstallService();
					Splash.CorrectUserRegKey();
					Splash.StartService(true);
					HelperFunctions.SetBrowserCompatMode("CyberGhost.exe");
					if (Helpers.IsTapV9Installed("9.0.0.9", false))
					{
						goto IL_50A;
					}
					taskAwaiter = Helpers.ReInstallTapV9Driver(Constants.get_OpenVpnBinPath()).GetAwaiter();
					if (!taskAwaiter.IsCompleted)
					{
						int arg_4BF_1 = 1;
						num = 1;
						this.<>1__state = arg_4BF_1;
						this.<>u__1 = taskAwaiter;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Splash.<CheckInstallation>d__20>(ref taskAwaiter, ref this);
						return;
					}
					IL_4FA:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					IL_50A:
					SettingsHolder.get_Settings().set_TapReinstalled(true);
					SettingsHolder.get_Settings().SaveSettings(false);
					result = false;
					goto IL_852;
					IL_544:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					Splash.UnInstallService();
					Splash.InstallService();
					Splash.CorrectUserRegKey();
					Splash.StartService(true);
					result = false;
					goto IL_852;
					IL_58C:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					IL_59C:
					SettingsHolder.get_Settings().set_TapReinstalled(true);
					SettingsHolder.get_Settings().SaveSettings(false);
					result = false;
					goto IL_852;
					IL_5BA:
					try
					{
						if (num != 4)
						{
							if (num != 5)
							{
								if (HelperFunctions.IsAdmin())
								{
									goto IL_729;
								}
								if (this.<commandLine>5__1.Contains("/autostart"))
								{
									goto IL_693;
								}
								if (this.<cgService>5__2.Status == ServiceControllerStatus.Stopped)
								{
									goto IL_729;
								}
							}
							try
							{
								TaskAwaiter taskAwaiter2;
								if (num != 5)
								{
									taskAwaiter2 = ServiceControllerExtensions.WaitForStatusAsync(this.<cgService>5__2, ServiceControllerStatus.Running, new TimeSpan(0, 0, 0, 30)).GetAwaiter();
									if (!taskAwaiter2.IsCompleted)
									{
										int arg_625_1 = 5;
										num = 5;
										this.<>1__state = arg_625_1;
										this.<>u__2 = taskAwaiter2;
										this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<CheckInstallation>d__20>(ref taskAwaiter2, ref this);
										return;
									}
								}
								else
								{
									taskAwaiter2 = this.<>u__2;
									this.<>u__2 = default(TaskAwaiter);
									int arg_65D_1 = -1;
									num = -1;
									this.<>1__state = arg_65D_1;
								}
								taskAwaiter2.GetResult();
								taskAwaiter2 = default(TaskAwaiter);
								goto IL_729;
							}
							catch (System.Exception ex3)
							{
								HelperFunctions.DebugLine("COULD NOT START SERVICE " + ex3.Message);
								goto IL_729;
							}
						}
						IL_693:
						try
						{
							TaskAwaiter taskAwaiter2;
							if (num != 4)
							{
								taskAwaiter2 = ServiceControllerExtensions.WaitForStatusAsync(this.<cgService>5__2, ServiceControllerStatus.Running, new TimeSpan(0, 0, 1, 0)).GetAwaiter();
								if (!taskAwaiter2.IsCompleted)
								{
									int arg_6C1_1 = 4;
									num = 4;
									this.<>1__state = arg_6C1_1;
									this.<>u__2 = taskAwaiter2;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Splash.<CheckInstallation>d__20>(ref taskAwaiter2, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter2 = this.<>u__2;
								this.<>u__2 = default(TaskAwaiter);
								int arg_6F9_1 = -1;
								num = -1;
								this.<>1__state = arg_6F9_1;
							}
							taskAwaiter2.GetResult();
							taskAwaiter2 = default(TaskAwaiter);
						}
						catch (System.Exception ex4)
						{
							HelperFunctions.DebugLine("COULD NOT START SERVICE " + ex4.Message);
						}
						IL_729:
						this.<cgService>5__2.Refresh();
						if (this.<cgService>5__2.Status != ServiceControllerStatus.Running)
						{
							if (!HelperFunctions.IsAdmin())
							{
								if (ModernDialogExtension.ShowDialogYesNo(CyberGhost.Translations.General.Splash_CheckInstallation_Service_is_not_running_, CyberGhost.Translations.General.Splash_CheckInstallation_) != MessageBoxResult.Yes)
								{
									result = false;
									goto IL_852;
								}
							}
							ProcessStartInfo processStartInfo2 = new ProcessStartInfo
							{
								FileName = Path.Combine(HelperFunctions.get_AppPath(), "CyberGhost.exe"),
								Arguments = "/startservice"
							};
							if (!HelperFunctions.IsAdmin())
							{
								processStartInfo2.Verb = "runas";
							}
							try
							{
								Process process2 = Process.Start(processStartInfo2);
								if (process2 == null)
								{
									result = false;
									goto IL_852;
								}
								process2.WaitForExit();
								try
								{
									EventSender expr_7C0 = new EventSender("CyherGhostPipe");
									expr_7C0.GetConnectionStatus();
									expr_7C0.DisconnectFromService();
								}
								catch (System.Exception ex5)
								{
									Thread.Sleep(1000);
									HelperFunctions.DebugLine("COULD NOT CONNECT " + ex5.Message);
								}
							}
							catch (System.Exception ex6)
							{
								HelperFunctions.DebugLine("COULD NOT EXECUTE PROCESS " + ex6.Message);
								result = false;
								goto IL_852;
							}
						}
					}
					finally
					{
						if (num < 0 && this.<cgService>5__2 != null)
						{
							((IDisposable)this.<cgService>5__2).Dispose();
						}
					}
					this.<cgService>5__2 = null;
					IL_835:
					result = true;
				}
				catch (System.Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_852:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass21_0
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<SingleInstanceCallback>b__0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				public Splash.<>c__DisplayClass21_0 <>4__this;

				private TaskAwaiter<bool> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					Splash.<>c__DisplayClass21_0 <>c__DisplayClass21_ = this.<>4__this;
					try
					{
						try
						{
							TaskAwaiter<bool> taskAwaiter;
							if (num != 0)
							{
								taskAwaiter = Splash.HandleCommandLine(<>c__DisplayClass21_.args.get_CommandLineArgs()).GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									this.<>1__state = 0;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Splash.<>c__DisplayClass21_0.<<SingleInstanceCallback>b__0>d>(ref taskAwaiter, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter<bool>);
								this.<>1__state = -1;
							}
							bool arg_7F_0 = taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter<bool>);
							if (arg_7F_0 && Splash._mShowMainForm)
							{
								ObjectHolder.MainForm.ShowMe();
							}
						}
						catch (System.Exception ex)
						{
							if (ObjectHolder.CyberGhostCom != null)
							{
								ObjectHolder.CyberGhostCom.OnDebugDataAvailable(string.Format("EX SINGLEINSTANCEFALLBACK" + ex.Message, new object[0]));
							}
						}
					}
					catch (System.Exception exception)
					{
						this.<>1__state = -2;
						this.<>t__builder.SetException(exception);
						return;
					}
					this.<>1__state = -2;
					this.<>t__builder.SetResult();
				}

				[DebuggerHidden]
				void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
				{
					this.<>t__builder.SetStateMachine(stateMachine);
				}
			}

			public InstanceCallbackEventArgs args;

			[AsyncStateMachine(typeof(Splash.<>c__DisplayClass21_0.<<SingleInstanceCallback>b__0>d))]
			internal void <SingleInstanceCallback>b__0(object o)
			{
				Splash.<>c__DisplayClass21_0.<<SingleInstanceCallback>b__0>d <<SingleInstanceCallback>b__0>d;
				<<SingleInstanceCallback>b__0>d.<>4__this = this;
				<<SingleInstanceCallback>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<SingleInstanceCallback>b__0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<SingleInstanceCallback>b__0>d.<>t__builder;
				<>t__builder.Start<Splash.<>c__DisplayClass21_0.<<SingleInstanceCallback>b__0>d>(ref <<SingleInstanceCallback>b__0>d);
			}
		}

		private static bool _mShowMainForm;

		internal TextBlock Version;

		internal Image Loader;

		internal TextBlock Status;

		private bool _contentLoaded;

		public Splash()
		{
			this.InitializeComponent();
			this.Version.Text = string.Format(CyberGhost.Translations.Splash.Version, Assembly.GetExecutingAssembly().GetName().Version);
			this.InitTheInit(0);
		}

		internal static List<string> GetCommandLineParams(IList<string> commandLine, string commandLineSwitch)
		{
			List<string> list = new List<string>();
			for (int i = 0; i < commandLine.Count; i++)
			{
				if (string.Equals(commandLine[i].Trim(), commandLineSwitch, StringComparison.CurrentCultureIgnoreCase) && i < commandLine.Count)
				{
					list.Add(commandLine[i + 1].Trim().Trim(new char[]
					{
						'"'
					}).Trim());
				}
			}
			return list;
		}

		[AsyncStateMachine(typeof(Splash.<HandleCommandLine>d__3))]
		private static Task<bool> HandleCommandLine(IList<string> aCommandLine)
		{
			Splash.<HandleCommandLine>d__3 <HandleCommandLine>d__;
			<HandleCommandLine>d__.aCommandLine = aCommandLine;
			<HandleCommandLine>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<HandleCommandLine>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <HandleCommandLine>d__.<>t__builder;
			<>t__builder.Start<Splash.<HandleCommandLine>d__3>(ref <HandleCommandLine>d__);
			return <HandleCommandLine>d__.<>t__builder.Task;
		}

		private static string GetDomainPrefix()
		{
			string text = (Theming.CurrentTheme == Theming.Theme.Pro) ? "pro" : "www";
			string result = text;
			if (SettingsHolder.get_Settings().get_LoginServer().Contains("dev-api"))
			{
				result = string.Format("dev-{0}", text);
			}
			else if (SettingsHolder.get_Settings().get_LoginServer().Contains("beta-api"))
			{
				result = string.Format("beta-{0}", text);
			}
			return result;
		}

		private static bool HandleLaunchCommandLine(IList<string> commandLine, bool waitForExecution)
		{
			if (commandLine.Contains("/launch"))
			{
				Splash._mShowMainForm = false;
				using (List<string>.Enumerator enumerator = HelperFunctions.GetCommandLineParams(commandLine, "/launch", "!//!").GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						string[] array = HelperFunctions.CommandLineToArgs(enumerator.Current);
						if (array.Length != 0 && !string.IsNullOrEmpty(array[0]))
						{
							string text = string.Empty;
							if (array.Length > 1)
							{
								for (int i = 1; i < array.Length; i++)
								{
									text = text + array[i] + " ";
								}
							}
							ProcessStartInfo processStartInfo = (!string.IsNullOrEmpty(text)) ? new ProcessStartInfo(array[0], text) : new ProcessStartInfo(array[0]);
							processStartInfo.WorkingDirectory = Path.GetDirectoryName(array[0]);
							ObjectHolder.AppListLaunchConnectAfterOnce.Add(processStartInfo);
						}
					}
				}
				if (ObjectHolder.AppListLaunchConnectAfterOnce.Count > 0)
				{
					if (ObjectHolder.ConnectionStatus == -1)
					{
						if (HelperFunctions.CheckInternetConnection(1000, "www.google.com"))
						{
							Splash.<>c__DisplayClass5_0 <>c__DisplayClass5_ = new Splash.<>c__DisplayClass5_0();
							<>c__DisplayClass5_.connectProfile = SettingsHolder.get_Settings().get_AppProfile();
							if (!GuiHelper.IsProfileAvailableInPlan(<>c__DisplayClass5_.connectProfile))
							{
								<>c__DisplayClass5_.connectProfile = "ProfileAnonymousBrowsing";
							}
							SynchronizationContext expr_12C = ObjectHolder.MainContext;
							if (expr_12C != null)
							{
								expr_12C.Post(new SendOrPostCallback(<>c__DisplayClass5_.<HandleLaunchCommandLine>b__0), null);
							}
						}
						else if (ModernDialogExtension.ShowDialogYesNo(CyberGhost.Translations.General.HandleCommandLine_No_internet_connection, CyberGhost.Translations.General.HandleCommandLine_No_internet_connection_message) == MessageBoxResult.Yes)
						{
							ObjectHolder.AppListKillDisconnectBefore.Clear();
							Action arg_182_0;
							if ((arg_182_0 = Splash.<>c.<>9__5_1) == null)
							{
								arg_182_0 = (Splash.<>c.<>9__5_1 = new Action(Splash.<>c.<>9.<HandleLaunchCommandLine>b__5_1));
							}
							Task task = Task.Run(arg_182_0);
							if (waitForExecution)
							{
								task.Wait();
							}
						}
						return true;
					}
					Action arg_1B4_0;
					if ((arg_1B4_0 = Splash.<>c.<>9__5_2) == null)
					{
						arg_1B4_0 = (Splash.<>c.<>9__5_2 = new Action(Splash.<>c.<>9.<HandleLaunchCommandLine>b__5_2));
					}
					Task.Run(arg_1B4_0);
				}
			}
			return false;
		}

		private static void InstallService()
		{
			if (!HelperFunctions.IsServiceInstalled("CG6Service"))
			{
				Splash.CheckDependenciesAndStart();
				try
				{
					ProcessStartInfo processStartInfo = new ProcessStartInfo
					{
						FileName = Path.Combine(HelperFunctions.get_AppPath(), "CyberGhost.Service.exe"),
						Arguments = "--install"
					};
					if (!HelperFunctions.IsAdmin())
					{
						processStartInfo.Verb = "runas";
					}
					try
					{
						Process expr_54 = Process.Start(processStartInfo);
						if (expr_54 != null)
						{
							expr_54.WaitForExit();
						}
					}
					catch (System.Exception ex)
					{
						HelperFunctions.DebugLine("COULD NOT EXECUTE PROCESS " + ex.Message);
					}
				}
				catch (System.Exception ex2)
				{
					if (ObjectHolder.CyberGhostCom != null)
					{
						ObjectHolder.CyberGhostCom.OnDebugDataAvailable("COULD NOT INSTALL SERVICE " + ex2.Message);
					}
				}
			}
		}

		private static bool CheckDependenciesAndStart()
		{
			if (!HelperFunctions.CheckAndCorrectAutoStartService("Dhcp"))
			{
				return false;
			}
			if (!HelperFunctions.CheckAndCorrectAutoStartService("LanmanServer"))
			{
				return false;
			}
			if (!HelperFunctions.CheckAndCorrectAutoStartService("Winmgmt"))
			{
				return false;
			}
			if (!HelperFunctions.CheckAndCorrectAutoStartService("RpcSs"))
			{
				return false;
			}
			if (!HelperFunctions.CheckAndCorrectAutoStartService("wlansvc"))
			{
				return false;
			}
			HelperFunctions.CheckAndCorrectAutoStartService("Dnscache");
			return true;
		}

		private static void UnInstallService()
		{
			if (HelperFunctions.IsServiceInstalled("CG6Service"))
			{
				Splash.StopService();
				try
				{
					ProcessStartInfo processStartInfo = new ProcessStartInfo
					{
						FileName = Path.Combine(HelperFunctions.get_AppPath(), "CyberGhost.Service.exe"),
						Arguments = "--uninstall"
					};
					if (!HelperFunctions.IsAdmin())
					{
						processStartInfo.Verb = "runas";
					}
					try
					{
						Process expr_53 = Process.Start(processStartInfo);
						if (expr_53 != null)
						{
							expr_53.WaitForExit();
						}
					}
					catch (System.Exception ex)
					{
						HelperFunctions.DebugLine("COULD NOT EXECUTE PROCESS " + ex.Message);
					}
				}
				catch (System.Exception ex2)
				{
					if (ObjectHolder.CyberGhostCom != null)
					{
						ObjectHolder.CyberGhostCom.OnDebugDataAvailable("COULD NOT UNINSTALL SERVICE " + ex2.Message);
					}
				}
			}
		}

		private static void StartService(bool waitForStart)
		{
			if (!Splash.CheckDependenciesAndStart())
			{
				return;
			}
			using (ServiceController serviceByName = HelperFunctions.GetServiceByName("CG6Service"))
			{
				if (serviceByName != null && serviceByName.Status != ServiceControllerStatus.Running)
				{
					HelperFunctions.ServiceInfo serviceInfo;
					try
					{
						serviceInfo = HelperFunctions.GetServiceInfo("CG6Service");
					}
					catch
					{
						return;
					}
					if (serviceInfo.StartType == 4)
					{
						HelperFunctions.ChangeStartMode(serviceByName, ServiceStartMode.Automatic);
					}
					try
					{
						serviceByName.Start();
						if (waitForStart)
						{
							while (serviceByName.Status != ServiceControllerStatus.Running)
							{
								Thread.Sleep(500);
								serviceByName.Refresh();
							}
						}
					}
					catch (System.Exception ex)
					{
						HelperFunctions.DebugLine("COULD NOT START CYBERGHOST SERVICE " + ex.Message);
						HelperFunctions.DebugLine(ex.StackTrace);
					}
				}
			}
		}

		private static void StopService()
		{
			ServiceController serviceByName = HelperFunctions.GetServiceByName("CG6Service");
			if (serviceByName != null && serviceByName.Status != ServiceControllerStatus.Stopped)
			{
				try
				{
					serviceByName.Stop();
					int num = 0;
					while (serviceByName.Status != ServiceControllerStatus.Stopped)
					{
						Thread.Sleep(100);
						serviceByName.Refresh();
						num++;
						if (num > 100)
						{
							HelperFunctions.CloseProcess("CyberGhost.Service.exe", null);
							IL_4E:
							serviceByName.Close();
							return;
						}
					}
					goto IL_4E;
				}
				catch (System.Exception ex)
				{
					if (ObjectHolder.CyberGhostCom != null)
					{
						ObjectHolder.CyberGhostCom.OnDebugDataAvailable("COULD NOT STOP SERVICE " + ex.Message);
					}
				}
			}
		}

		private static void CorrectUserRegKey()
		{
			using (RegistryKey settingsKey = SettingsHolder.get_Settings().GetSettingsKey(false, false, false))
			{
				HelperFunctions.SetRegistryKeyAccess(settingsKey, HelperFunctions.GetEveryoneUserIdentifier(), RegistryRights.FullControl);
			}
		}

		private static void DeleteUserData()
		{
			HelperFunctions.DeleteDirectoryRecursive(Constants.get_UserDataPath());
		}

		private static void RemoveTap()
		{
			string text;
			if (Environment.Is64BitOperatingSystem && !Environment.Is64BitProcess)
			{
				text = Environment.GetEnvironmentVariable("ProgramW6432");
			}
			else
			{
				text = Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles);
			}
			if (!string.IsNullOrEmpty(text))
			{
				string text2 = Path.Combine(text, "TAP-Windows\\Uninstall.exe");
				if (File.Exists(text2))
				{
					HelperFunctions.ExecuteProcessAndGetResult(text2, "/S", false);
				}
			}
		}

		private static void OpenUninstallWebsite()
		{
			string domainPrefix = Splash.GetDomainPrefix();
			HelperFunctions.OpenFileInBrowser(string.Format("http://{0}.cyberghostvpn.com/uninstall?utm_medium=Windows&utm_campaign=Uninstall&utm_source=Client_Uninstall&utm_medium=Windows&utm_campaign=Uninstall&{1}&{2}", domainPrefix, MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, new string[]
			{
				"hid",
				"Succesfull connections",
				"Unsuccesfull connections",
				"Connection attempts",
				"Application launches",
				"Total secure hotspots protected",
				"Total unsecure hotspots protected",
				"Last used profile"
			}), SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString()), false);
		}

		[AsyncStateMachine(typeof(Splash.<PreloadControls>d__15))]
		private static Task PreloadControls()
		{
			Splash.<PreloadControls>d__15 <PreloadControls>d__;
			<PreloadControls>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<PreloadControls>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <PreloadControls>d__.<>t__builder;
			<>t__builder.Start<Splash.<PreloadControls>d__15>(ref <PreloadControls>d__);
			return <PreloadControls>d__.<>t__builder.Task;
		}

		private void SetTrayIcon()
		{
			if (ObjectHolder.ConnectionStatus == -1)
			{
				ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				return;
			}
			if (SettingsHolder.get_Settings().get_ConnectedProfileName() == null)
			{
				IconHelpers.Instance.SetTrayIconBySelectedProfile(false, false);
				return;
			}
			if (ObjectHolder.ConnectionStatus == null)
			{
				IconHelpers.Instance.SetTrayIconBySelectedProfile(true, true);
				return;
			}
			IconHelpers.Instance.SetTrayIconBySelectedProfile(false, false);
		}

		[AsyncStateMachine(typeof(Splash.<InitTheInit>d__17))]
		public void InitTheInit(int initTrys = 0)
		{
			Splash.<InitTheInit>d__17 <InitTheInit>d__;
			<InitTheInit>d__.<>4__this = this;
			<InitTheInit>d__.initTrys = initTrys;
			<InitTheInit>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<InitTheInit>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <InitTheInit>d__.<>t__builder;
			<>t__builder.Start<Splash.<InitTheInit>d__17>(ref <InitTheInit>d__);
		}

		[AsyncStateMachine(typeof(Splash.<InitCyberGhost>d__18))]
		public Task<InitStatus> InitCyberGhost(bool isRetry)
		{
			Splash.<InitCyberGhost>d__18 <InitCyberGhost>d__;
			<InitCyberGhost>d__.<>4__this = this;
			<InitCyberGhost>d__.isRetry = isRetry;
			<InitCyberGhost>d__.<>t__builder = AsyncTaskMethodBuilder<InitStatus>.Create();
			<InitCyberGhost>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<InitStatus> <>t__builder = <InitCyberGhost>d__.<>t__builder;
			<>t__builder.Start<Splash.<InitCyberGhost>d__18>(ref <InitCyberGhost>d__);
			return <InitCyberGhost>d__.<>t__builder.Task;
		}

		private static void SetProfileNames()
		{
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_ProfileName(Profiles.AnonymousBrowsing_ConnectToServer_Anonymous_Browsing);
			SettingsHolder.get_Settings().get_ProfileCustom().set_ProfileName(Profiles.Custom_ConnectToWishedServer_Custom);
			SettingsHolder.get_Settings().get_ProfileAnonymousDownloading().set_ProfileName(Profiles.AnonymousDownloading_ConnectToServer_Anonymous_Downloading);
			SettingsHolder.get_Settings().get_ProfileNetwork().set_ProfileName(Profiles.Network_ConnectToServer_Network_Protection);
			SettingsHolder.get_Settings().get_ProfileUnblock().set_ProfileName(Profiles.Unblock_Connect_Unblock_website);
			SettingsHolder.get_Settings().get_ProfileUncensoring().set_ProfileName(Profiles.Uncensoring_ConnectToServer_Anti_Censorship);
			SettingsHolder.get_Settings().get_ProfileWifi().set_ProfileName(Profiles.Wifi_ConnectToServer_Wifi_Protection);
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_ProfileNamePretty(Profiles.AnonymousBrowsing_ConnectToServer_Anonymous_Browsing);
			SettingsHolder.get_Settings().get_ProfileCustom().set_ProfileNamePretty(Profiles.Custom_ConnectToWishedServer_Custom);
			SettingsHolder.get_Settings().get_ProfileAnonymousDownloading().set_ProfileNamePretty(Profiles.AnonymousDownloading_ConnectToServer_Anonymous_Downloading);
			SettingsHolder.get_Settings().get_ProfileNetwork().set_ProfileNamePretty(Profiles.Network_ConnectToServer_Network_Protection);
			SettingsHolder.get_Settings().get_ProfileUnblock().set_ProfileNamePretty(Profiles.Unblock_Connect_Unblock_website);
			SettingsHolder.get_Settings().get_ProfileUncensoring().set_ProfileNamePretty(Profiles.Uncensoring_ConnectToServer_Anti_Censorship);
			SettingsHolder.get_Settings().get_ProfileWifi().set_ProfileNamePretty(Profiles.Wifi_ConnectToServer_Wifi_Protection);
		}

		[AsyncStateMachine(typeof(Splash.<CheckInstallation>d__20))]
		private Task<bool> CheckInstallation()
		{
			Splash.<CheckInstallation>d__20 <CheckInstallation>d__;
			<CheckInstallation>d__.<>4__this = this;
			<CheckInstallation>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<CheckInstallation>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <CheckInstallation>d__.<>t__builder;
			<>t__builder.Start<Splash.<CheckInstallation>d__20>(ref <CheckInstallation>d__);
			return <CheckInstallation>d__.<>t__builder.Task;
		}

		private static void SingleInstanceCallback(object sender, InstanceCallbackEventArgs args)
		{
			Splash.<>c__DisplayClass21_0 <>c__DisplayClass21_ = new Splash.<>c__DisplayClass21_0();
			<>c__DisplayClass21_.args = args;
			if (<>c__DisplayClass21_.args != null && ObjectHolder.MainForm != null && ObjectHolder.MainContext != null)
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass21_.<SingleInstanceCallback>b__0), null);
				return;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/splash.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.Version = (TextBlock)target;
				return;
			case 2:
				this.Loader = (Image)target;
				return;
			case 3:
				this.Status = (TextBlock)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <InitCyberGhost>b__18_0()
		{
			Dispatcher arg_2B_0 = base.Dispatcher;
			Action arg_2B_1;
			if ((arg_2B_1 = Splash.<>c.<>9__18_1) == null)
			{
				arg_2B_1 = (Splash.<>c.<>9__18_1 = new Action(Splash.<>c.<>9.<InitCyberGhost>b__18_1));
			}
			arg_2B_0.BeginInvoke(arg_2B_1, new object[0]);
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows.Controls;
using MobileConcepts.Components.Log;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Management;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media.Imaging;
using ZendeskApi.Client;
using ZendeskApi.Contracts.Models;
using ZendeskApi.Contracts.Requests;
using ZendeskApi.Contracts.Responses;

namespace CyberGhost
{
	public class Support : ModernWindow, IComponentConnector
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass26_0
		{
			public Random random;

			internal char <CreateRandomString>b__0(string s)
			{
				return s[this.random.Next(s.Length)];
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass27_0
		{
			public TicketRequest request;

			public Support <>4__this;

			internal void <SendFeedback>b__2(object o)
			{
				TicketRequest arg_58_0 = this.request;
				Ticket expr_0B = new Ticket();
				expr_0B.set_Subject(this.<>4__this.Subject.Text);
				TicketRequester expr_27 = new TicketRequester();
				expr_27.set_Email(this.<>4__this.EMail.Text);
				expr_27.set_Name(this.<>4__this.UserName.Text);
				expr_0B.set_Requester(expr_27);
				arg_58_0.set_Item(expr_0B);
			}

			internal void <SendFeedback>b__3(object o)
			{
				this.request.get_Item().get_Comment().set_Body(this.<>4__this.Message.Text);
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Support.<>c <>9 = new Support.<>c();

			public static SendOrPostCallback <>9__27_5;

			public static SendOrPostCallback <>9__27_7;

			internal void <SendFeedback>b__27_5(object o)
			{
				ModernDialogExtension.ShowDialogOk(Status.Support_SendFeedback_Ticket_was_send, Status.Support_SendFeedback_Thank_you_for_your_request__One_of_our_employees_will_contact_you_);
			}

			internal void <SendFeedback>b__27_7(object o)
			{
				ModernDialogExtension.ShowDialogOk(Status.Support_SendFeedback_Ticket_was_not_send, Status.Support_SendFeedback_Please_check_your_internet_connection_or_try_again_later_);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <SendFeedback>d__27 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public Support <>4__this;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Support @object = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = Task.Factory.StartNew(new Action(@object.<SendFeedback>b__27_0)).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Support.<SendFeedback>d__27>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		private const long FieldIdOperatingSystem = 30617265L;

		private const long FieldIdFirewall = 30726749L;

		private const long FieldIdAntiSpyWare = 30726769L;

		private const long FieldIdAntiVirus = 30846385L;

		private const long FieldIdProductVersion = 30726789L;

		private const long FieldIdProductName = 30846405L;

		private const long FieldIdUsername = 30726829L;

		private const long FieldIdUserId = 30846585L;

		private const long FieldIdIpconfig = 30728009L;

		private const long FieldIdRoutingTable = 30847745L;

		private const long FieldIdCpu = 39721349L;

		private readonly SynchronizationContext _context;

		private DebugWindow _debugWindow;

		public string ScreenShotPath = "";

		private bool _addScreenshot = true;

		internal System.Windows.Controls.Image Screenshot;

		internal System.Windows.Controls.Image DeleteScreenshot;

		internal TextBox UserName;

		internal Label NameLabel;

		internal TextBox EMail;

		internal Label EMailLabel;

		internal TextBox Subject;

		internal Label SubjectLabel;

		internal TextBox Message;

		internal Label MessageLabel;

		internal Button SendFeedbackButton;

		internal ModernProgressRing LoadingRing;

		private bool _contentLoaded;

		public Support()
		{
			this.InitializeComponent();
			this._context = SynchronizationContext.Current;
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.DeleteScreenshot.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Functions\\delete.PNG")));
		}

		private void Name_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.NameLabel.Visibility = Visibility.Hidden;
		}

		private void Name_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.UserName.Text.Length == 0)
			{
				this.NameLabel.Visibility = Visibility.Visible;
			}
		}

		private void Email_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.EMailLabel.Visibility = Visibility.Hidden;
		}

		private void Email_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.EMail.Text.Length == 0)
			{
				this.EMailLabel.Visibility = Visibility.Visible;
			}
		}

		private void Subject_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.SubjectLabel.Visibility = Visibility.Hidden;
		}

		private void Subject_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.Subject.Text.Length == 0)
			{
				this.SubjectLabel.Visibility = Visibility.Visible;
			}
		}

		private void Message_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.MessageLabel.Visibility = Visibility.Hidden;
		}

		private void Message_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.Message.Text.Length == 0)
			{
				this.MessageLabel.Visibility = Visibility.Visible;
			}
		}

		private void SaveDebugLog(string filename)
		{
			this._debugWindow.SaveSilent(filename);
		}

		private string CreateRandomString()
		{
			Support.<>c__DisplayClass26_0 <>c__DisplayClass26_ = new Support.<>c__DisplayClass26_0();
			string arg_18_0 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
			<>c__DisplayClass26_.random = new Random();
			return new string(Enumerable.Repeat<string>(arg_18_0, 12).Select(new Func<string, char>(<>c__DisplayClass26_.<CreateRandomString>b__0)).ToArray<char>());
		}

		[AsyncStateMachine(typeof(Support.<SendFeedback>d__27))]
		private void SendFeedback(object sender, RoutedEventArgs e)
		{
			Support.<SendFeedback>d__27 <SendFeedback>d__;
			<SendFeedback>d__.<>4__this = this;
			<SendFeedback>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SendFeedback>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SendFeedback>d__.<>t__builder;
			<>t__builder.Start<Support.<SendFeedback>d__27>(ref <SendFeedback>d__);
		}

		private byte[] ImageToByteArray(System.Drawing.Image imageIn)
		{
			MemoryStream memoryStream = new MemoryStream();
			imageIn.Save(memoryStream, ImageFormat.Png);
			return memoryStream.ToArray();
		}

		private void Support_OnLoaded(object sender, RoutedEventArgs e)
		{
			if (File.Exists(this.ScreenShotPath))
			{
				this.Screenshot.Source = new BitmapImage(new Uri(this.ScreenShotPath));
			}
		}

		private void DeleteScreenshot_OnClick(object sender, RoutedEventArgs e)
		{
			string themedImage = Theming.GetThemedImage("Icons\\Flags\\24\\blank.png");
			if (File.Exists(themedImage))
			{
				this.Screenshot.Source = new BitmapImage(new Uri(themedImage));
			}
			this.DeleteScreenshot.Visibility = Visibility.Hidden;
			this._addScreenshot = false;
		}

		private void Screenshot_OnLoaded(object sender, RoutedEventArgs e)
		{
			if (File.Exists(this.ScreenShotPath))
			{
				this.Screenshot.Source = new BitmapImage(new Uri(this.ScreenShotPath));
			}
			this._debugWindow = new DebugWindow();
			this.SendFeedbackButton.Visibility = Visibility.Visible;
			this.LoadingRing.Visibility = Visibility.Hidden;
		}

		private void Name_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.CheckIfButtonCanBeEnabled();
		}

		private void EMail_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.CheckIfButtonCanBeEnabled();
		}

		private void Subject_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.CheckIfButtonCanBeEnabled();
		}

		private void Message_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.CheckIfButtonCanBeEnabled();
		}

		private void CheckIfButtonCanBeEnabled()
		{
			this.SendFeedbackButton.IsEnabled = (this.EMail.Text != "" && this.EMail.Text.Contains("@") && this.Subject.Text != "" && this.Message.Text != "");
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/support.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((Support)target).Loaded += new RoutedEventHandler(this.Support_OnLoaded);
				return;
			case 2:
				this.Screenshot = (System.Windows.Controls.Image)target;
				this.Screenshot.Loaded += new RoutedEventHandler(this.Screenshot_OnLoaded);
				return;
			case 3:
				this.DeleteScreenshot = (System.Windows.Controls.Image)target;
				this.DeleteScreenshot.MouseLeftButtonUp += new MouseButtonEventHandler(this.DeleteScreenshot_OnClick);
				return;
			case 4:
				this.UserName = (TextBox)target;
				this.UserName.GotFocus += new RoutedEventHandler(this.Name_OnGotFocus);
				this.UserName.TextChanged += new TextChangedEventHandler(this.Name_OnTextChanged);
				this.UserName.LostFocus += new RoutedEventHandler(this.Name_OnLostFocus);
				return;
			case 5:
				this.NameLabel = (Label)target;
				return;
			case 6:
				this.EMail = (TextBox)target;
				this.EMail.GotFocus += new RoutedEventHandler(this.Email_OnGotFocus);
				this.EMail.TextChanged += new TextChangedEventHandler(this.EMail_OnTextChanged);
				this.EMail.LostFocus += new RoutedEventHandler(this.Email_OnLostFocus);
				return;
			case 7:
				this.EMailLabel = (Label)target;
				return;
			case 8:
				this.Subject = (TextBox)target;
				this.Subject.GotFocus += new RoutedEventHandler(this.Subject_OnGotFocus);
				this.Subject.TextChanged += new TextChangedEventHandler(this.Subject_OnTextChanged);
				this.Subject.LostFocus += new RoutedEventHandler(this.Subject_OnLostFocus);
				return;
			case 9:
				this.SubjectLabel = (Label)target;
				return;
			case 10:
				this.Message = (TextBox)target;
				this.Message.GotFocus += new RoutedEventHandler(this.Message_OnGotFocus);
				this.Message.LostFocus += new RoutedEventHandler(this.Message_OnLostFocus);
				this.Message.TextChanged += new TextChangedEventHandler(this.Message_OnTextChanged);
				return;
			case 11:
				this.MessageLabel = (Label)target;
				return;
			case 12:
				this.SendFeedbackButton = (Button)target;
				this.SendFeedbackButton.Click += new RoutedEventHandler(this.SendFeedback);
				return;
			case 13:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <SendFeedback>b__27_0()
		{
			Support.<>c__DisplayClass27_0 <>c__DisplayClass27_ = new Support.<>c__DisplayClass27_0();
			<>c__DisplayClass27_.<>4__this = this;
			this._context.Post(new SendOrPostCallback(this.<SendFeedback>b__27_1), null);
			ZendeskClient zendeskClient = new ZendeskClient(new Uri("https://cyberghosthelp.zendesk.com"), new ZendeskDefaultConfiguration("timo.beyel@cyberghost.ro", "MMqAMg56foN1CSHZSCxSruV2E4lBY7SNG9LNHr7l"), null, null, null);
			<>c__DisplayClass27_.request = new TicketRequest();
			this._context.Post(new SendOrPostCallback(<>c__DisplayClass27_.<SendFeedback>b__2), null);
			string text = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "debuglog.json");
			this.SaveDebugLog(text);
			<>c__DisplayClass27_.request.get_Item().set_Comment(new TicketComment());
			if (this._addScreenshot)
			{
				string token = this.CreateRandomString();
				UploadRequest uploadRequest = new UploadRequest();
				Stream inputStream = new MemoryStream(this.ImageToByteArray(System.Drawing.Image.FromFile(this.ScreenShotPath)));
				MyHttpPostedFile item = new MyHttpPostedFile
				{
					ContentType = "image/png",
					FileName = "screenshot.png",
					InputStream = inputStream
				};
				uploadRequest.set_Item(item);
				uploadRequest.set_Token(token);
				try
				{
					UploadResponse uploadResponse = (UploadResponse)zendeskClient.get_Upload().Post(uploadRequest);
					<>c__DisplayClass27_.request.get_Item().get_Comment().AddAttachmentToComment(uploadResponse.get_Item().get_Token());
				}
				catch (Exception)
				{
				}
			}
			this._context.Post(new SendOrPostCallback(<>c__DisplayClass27_.<SendFeedback>b__3), null);
			string token2 = this.CreateRandomString();
			UploadRequest uploadRequest2 = new UploadRequest();
			MemoryStream inputStream2 = new MemoryStream(File.ReadAllBytes(text));
			MyHttpPostedFile item2 = new MyHttpPostedFile
			{
				ContentType = "text/plain",
				FileName = "debuglog.json",
				InputStream = inputStream2
			};
			uploadRequest2.set_Item(item2);
			uploadRequest2.set_Token(token2);
			try
			{
				UploadResponse uploadResponse2 = (UploadResponse)zendeskClient.get_Upload().Post(uploadRequest2);
				<>c__DisplayClass27_.request.get_Item().get_Comment().AddAttachmentToComment(uploadResponse2.get_Item().get_Token());
			}
			catch (Exception)
			{
			}
			McInitLogItem mcInitLogItem = new McInitLogItem();
			string text2 = string.Empty;
			try
			{
				ManagementObjectSearcher arg_206_0 = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_Processor");
				text2 = "";
				foreach (ManagementBaseObject current in arg_206_0.Get())
				{
					try
					{
						text2 = text2 + current["Name"] + " ";
					}
					catch (Exception)
					{
					}
				}
			}
			catch (Exception)
			{
			}
			Ticket arg_450_0 = <>c__DisplayClass27_.request.get_Item();
			List<CustomField> expr_269 = new List<CustomField>();
			CustomField expr_26F = new CustomField();
			expr_26F.set_Id(30617265L);
			expr_26F.set_Value(Environment.OSVersion.VersionString);
			expr_269.Add(expr_26F);
			CustomField expr_299 = new CustomField();
			expr_299.set_Id(39721349L);
			expr_299.set_Value(text2.Trim());
			expr_269.Add(expr_299);
			CustomField expr_2C0 = new CustomField();
			expr_2C0.set_Id(30846585L);
			expr_2C0.set_Value(ObjectHolder.CurrentUser.get_Id().ToString());
			expr_269.Add(expr_2C0);
			CustomField expr_2F3 = new CustomField();
			expr_2F3.set_Id(30726829L);
			expr_2F3.set_Value(ObjectHolder.CurrentUser.get_UserName());
			expr_269.Add(expr_2F3);
			CustomField expr_31D = new CustomField();
			expr_31D.set_Id(30726769L);
			expr_31D.set_Value(mcInitLogItem.get_AntiSpyWare().get_InstalledAntiSpyware());
			expr_269.Add(expr_31D);
			CustomField expr_349 = new CustomField();
			expr_349.set_Id(30846385L);
			expr_349.set_Value(mcInitLogItem.get_AntiVirus().get_InstalledAntiVirus());
			expr_269.Add(expr_349);
			CustomField expr_375 = new CustomField();
			expr_375.set_Id(30726749L);
			expr_375.set_Value(mcInitLogItem.get_FireWall().get_InstalledFireWall());
			expr_269.Add(expr_375);
			CustomField expr_3A1 = new CustomField();
			expr_3A1.set_Id(30728009L);
			expr_3A1.set_Value(mcInitLogItem.get_IpConfig().get_IpConfigInfo());
			expr_269.Add(expr_3A1);
			CustomField expr_3CD = new CustomField();
			expr_3CD.set_Id(30847745L);
			expr_3CD.set_Value(mcInitLogItem.get_RoutingTable().get_RoutingTableInfo());
			expr_269.Add(expr_3CD);
			CustomField expr_3F9 = new CustomField();
			expr_3F9.set_Id(30846405L);
			expr_3F9.set_Value(mcInitLogItem.get_ProductName().get_ProductName());
			expr_269.Add(expr_3F9);
			CustomField expr_425 = new CustomField();
			expr_425.set_Id(30726789L);
			expr_425.set_Value(mcInitLogItem.get_ProductVersion().get_ProductVersion().ToString());
			expr_269.Add(expr_425);
			arg_450_0.set_CustomFields(expr_269);
			this._context.Post(new SendOrPostCallback(this.<SendFeedback>b__27_4), null);
			try
			{
				zendeskClient.get_Tickets().Post(<>c__DisplayClass27_.request);
				SynchronizationContext arg_4A5_0 = this._context;
				SendOrPostCallback arg_4A5_1;
				if ((arg_4A5_1 = Support.<>c.<>9__27_5) == null)
				{
					arg_4A5_1 = (Support.<>c.<>9__27_5 = new SendOrPostCallback(Support.<>c.<>9.<SendFeedback>b__27_5));
				}
				arg_4A5_0.Post(arg_4A5_1, null);
				this._context.Post(new SendOrPostCallback(this.<SendFeedback>b__27_6), null);
			}
			catch (Exception arg_4CA_0)
			{
				HelperFunctions.LogException(arg_4CA_0, "", false);
				SynchronizationContext arg_4F6_0 = this._context;
				SendOrPostCallback arg_4F6_1;
				if ((arg_4F6_1 = Support.<>c.<>9__27_7) == null)
				{
					arg_4F6_1 = (Support.<>c.<>9__27_7 = new SendOrPostCallback(Support.<>c.<>9.<SendFeedback>b__27_7));
				}
				arg_4F6_0.Post(arg_4F6_1, null);
				this._context.Post(new SendOrPostCallback(this.<SendFeedback>b__27_8), null);
			}
		}

		[CompilerGenerated]
		private void <SendFeedback>b__27_1(object o)
		{
			this.SendFeedbackButton.Visibility = Visibility.Hidden;
			this.LoadingRing.Visibility = Visibility.Visible;
		}

		[CompilerGenerated]
		private void <SendFeedback>b__27_4(object o)
		{
			base.Hide();
		}

		[CompilerGenerated]
		private void <SendFeedback>b__27_6(object o)
		{
			base.Close();
		}

		[CompilerGenerated]
		private void <SendFeedback>b__27_8(object o)
		{
			base.Close();
		}
	}
}
