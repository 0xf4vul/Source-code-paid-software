using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using Catel.MVVM.Views;
using Catel.Services;
using Catel.Windows;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogUT.GoldenFrog.WebAPIs;
using GoldenFrogUT.Networking;
using GoldenFrogUT.Utilities;
using GoldenFrogUT.WebAPIs.GoldenFrog;
using GoldenFrogUT.WindowsUtils;
using GoldenFrogUX.Controls;
using GoldenFrogUX.Converters;
using GoldenFrogVPN;
using GoldenFrogVPN.Interfaces;
using Hardcodet.Wpf.SystemTrayNotification;
using IPC;
using IPC.Classes;
using Log;
using Newtonsoft.Json.Linq;
using ServiceManager.Classes;
using ServiceManager.Interfaces;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Media;
using System.Net;
using System.Net.Security;
using System.Reflection;
using System.Resources;
using System.Runtime.CompilerServices;
using System.ServiceModel;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Baml2006;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Markup;
using System.Windows.Media.Imaging;
using System.Windows.Shell;
using System.Xaml;
using System.Xml;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Models;
using VyprVPN.Properties;
using VyprVPN.ViewModels;
using VyprVPN.Views;
using VyprVPN.Views.FeedbackDialogs;
using VyprVPN.Views.MainWindow;
using VyprVPN.Views.MainWindow.ServerListWindow;
using VyprVPN.Views.MainWindow.ServerListWindow.ServerListHelpers;
using VyprVPN.Views.NewFeatureModal;
using VyprVPN.Views.PreferencesWindow.Account;
using VyprVPN.Views.PreferencesWindow.Advanced;
using VyprVPN.Views.PreferencesWindow.Connection;
using VyprVPN.Views.PreferencesWindow.DNS;
using VyprVPN.Views.PreferencesWindow.Protocol;
using VyprVPN.Views.UpdateInformationWindow;

namespace VyprVPN
{
	public class App : Application
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly App.<>c <>9 = new App.<>c();

			public static Func<ServiceLocatorRegistration, IServerList> <>9__38_0;

			public static Func<ServiceLocatorRegistration, ICombinedFilter> <>9__38_1;

			public static Func<ServiceLocatorRegistration, IOpenVpnCommandLineConfig> <>9__38_2;

			public static Action <>9__57_1;

			public static Action<DictionaryEntry> <>9__61_1;

			public static Action <>9__65_0;

			public static Action <>9__66_0;

			public static Action <>9__67_1;

			public static Func<VPNServer, bool> <>9__78_1;

			public static Comparison<VPNServer> <>9__78_2;

			internal IServerList <RegisterTypeFactories>b__38_0(ServiceLocatorRegistration T)
			{
				return new ServerList();
			}

			internal ICombinedFilter <RegisterTypeFactories>b__38_1(ServiceLocatorRegistration T)
			{
				return new CombinedFilter();
			}

			internal IOpenVpnCommandLineConfig <RegisterTypeFactories>b__38_2(ServiceLocatorRegistration T)
			{
				return new OpenVpnCommandLineConfig();
			}

			internal void <LaunchMainWindowIfNotLoggedIn>b__57_1()
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowApplicationWindow();
			}

			internal void <LoadTheme>b__61_1(DictionaryEntry kvp)
			{
				App.SourceResourceDictionary(kvp.Key as string, kvp.Value as UnmanagedMemoryStream);
			}

			internal void <InnerChannel_Faulted>b__65_0()
			{
				App.RestartIpcClient();
			}

			internal void <InnerDuplexChannel_Faulted>b__66_0()
			{
				App.RestartIpcClient();
			}

			internal void <RestartIpcClient>b__67_1()
			{
				new FeedbackWindow(new ContactSupportViewModel())
				{
					Owner = null
				}.ShowDialog();
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).TerminateApp();
			}

			internal bool <PopulateServerLocations>b__78_1(VPNServer s)
			{
				return s.get_IsPinned();
			}

			internal int <PopulateServerLocations>b__78_2(VPNServer s1, VPNServer s2)
			{
				return string.Compare(s1.get_Location(), s2.get_Location(), StringComparison.OrdinalIgnoreCase);
			}
		}

		private static readonly ILogger logger;

		private static string logFilePath;

		private static TrayIcon trayIcon;

		private static ContextMenu trayMenu;

		private static bool allowIPC;

		private static Dictionary<string, string> upgradeDictionary;

		private const string IPCEndpointURI = "net.pipe://localhost/com.goldenfrog.vyprvpn.2/vyprvpn_ipc";

		private static readonly BackOffTimeManager IpcConnectBackOffTimeManager;

		private static ManualResetEvent reset;

		private static bool repairsInProgress;

		private EventWaitHandle _newInstanceLaunchedEventWaitHandle;

		private EventWaitHandle _jumpListQuitEventWaitHandle;

		private EventWaitHandle _jumpListLoginEventWaitHandle;

		private EventWaitHandle _jumpListConnectEventWaitHandle;

		private EventWaitHandle _jumpListDisconnectEventWaitHandle;

		private EventWaitHandle _jumpListOpenSettingsEventWaitHandle;

		private EventWaitHandle _jumpListLogoutEventWaitHandle;

		private JumpList _jumpList;

		private JumpTask _loginJumpTask;

		private JumpTask _logoutJumpTask;

		private JumpTask _disconnectJumpTask;

		private JumpTask _connectJumpTask;

		private JumpTask _openSettingsJumpTask;

		private JumpTask _quitJumpTask;

		private string _jumpListCommand;

		private const string JumpListLoginCommand = "jumpListLogin";

		private const string JumpListLogoutCommand = "jumpListLogout";

		private const string JumpListConnectCommand = "jumpListConnect";

		private const string JumpListDisconnectCommand = "jumpListDisconnect";

		private const string JumpListOpenSettingsCommand = "jumpListOpenSettings";

		private const string JumpListQuitCommand = "jumpListQuit";

		private static readonly DateTime AppStartTime;

		private bool _startupMaximized;

		private bool _contentLoaded;

		private static IUIHelper UIHelper
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			}
		}

		public static ObservableCollection<MenuItem> ServerLocationsMenuItems
		{
			get;
			private set;
		}

		protected IVyprVPNController VyprVPNController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			}
		}

		protected ISettings UISettings
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
			}
		}

		static App()
		{
			App.allowIPC = true;
			App.upgradeDictionary = null;
			App.IpcConnectBackOffTimeManager = new BackOffTimeManager(500, 10000);
			App.reset = new ManualResetEvent(true);
			App.repairsInProgress = false;
			App.AppStartTime = DateTime.UtcNow;
			ServiceLocatorExtensions.RegisterInstance<ILogger>(ServiceLocator.get_Default(), FileLogger.get_Instance(), null);
			ServiceLocatorExtensions.RegisterInstance<IInformation>(ServiceLocator.get_Default(), new Information(), null);
			ServiceLocatorExtensions.RegisterInstance<IVyprFeatureToggler>(ServiceLocator.get_Default(), new VyprFeatureToggler(), null);
			ServiceLocatorExtensions.RegisterInstance<IServiceRepair>(ServiceLocator.get_Default(), new ServiceRepair(), null);
			App.logger = ServiceLocatorExtensions.ResolveType<ILogger>(ServiceLocator.get_Default(), null);
			App.InitializeLog();
			ServicePointManager.SecurityProtocol |= SecurityProtocolType.Tls12;
			App.ServerLocationsMenuItems = new ObservableCollection<MenuItem>();
		}

		private static void InitializeLog()
		{
			try
			{
				IInformation information = ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null);
				string path = string.Format("{0}.log", information.get_AssemblyName());
				App.logFilePath = Path.Combine(information.get_LocalApplicationDataFolder(), "Logs", path);
				FileLogger.Configure(App.logFilePath, 1, 1048576L);
				App.logger.Log(0, "Logging to '{0}'", new object[]
				{
					App.logFilePath
				});
				App.logger.Log(0, "{0} starting", new object[]
				{
					information.get_AssemblyName()
				});
				App.logger.Log(0, "VyprVPN {0}", new object[]
				{
					information.get_ApplicationVersionWithReleaseMode()
				});
			}
			catch (Exception ex)
			{
				App.logger.Log(3, "Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		protected override async void OnStartup(StartupEventArgs e)
		{
			try
			{
				AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(App.OnUnhandledException);
				ServiceLocatorExtensions.RegisterInstance<ICrypto>(ServiceLocator.get_Default(), new Crypto(), null);
				ServiceLocatorExtensions.RegisterInstance<IWindowsInformation>(ServiceLocator.get_Default(), new WindowsInformation(), null);
				ServiceLocatorExtensions.RegisterInstance<ISettings>(ServiceLocator.get_Default(), Settings.Default, null);
				ServiceLocatorExtensions.RegisterInstance<IUIHelper>(ServiceLocator.get_Default(), new UIHelper(), null);
				ServiceLocatorExtensions.RegisterInstance<IAvailability>(ServiceLocator.get_Default(), new Availability(), null);
				this.RegisterTypeFactories();
				string[] commandLineArgs = Environment.GetCommandLineArgs();
				this.processArgs(commandLineArgs);
				PreferencesModel.SelectDefaultUiLocale();
				if (this.UISettings.PerformUpgrade)
				{
					this.UISettings.Upgrade();
					this.UISettings.PerformUpgrade = false;
					this.UISettings.Save();
				}
				App.upgradeDictionary = UpgradeHandler.Upgrade();
				if (!this.handleMultipleAppInstances())
				{
					App.logger.Log(0, "Cancelling app initialization as a result of multi-app detection and/or processing.");
				}
				else
				{
					this.TestModeSetup();
					ServiceLocatorExtensions.RegisterType<IUIState, UIState>(ServiceLocator.get_Default(), 0, false);
					ServiceLocatorExtensions.RegisterInstance<IRegistryUtilities>(ServiceLocator.get_Default(), new RegistryUtilities(), null);
					ServiceLocatorExtensions.RegisterInstance<IWindowsPackageManagerUtilities>(ServiceLocator.get_Default(), new WindowsPackageManagerUtilities(), null);
					ServiceLocatorExtensions.RegisterInstance<IGeneralUtilities>(ServiceLocator.get_Default(), new GeneralUtilities(), null);
					ServiceLocatorExtensions.RegisterInstance<IWindowsPackageManagerUtilities>(ServiceLocator.get_Default(), new WindowsPackageManagerUtilities(), null);
					ServiceLocatorExtensions.RegisterInstance<IFileUtilities>(ServiceLocator.get_Default(), new FileUtilities(), null);
					ServiceLocatorExtensions.RegisterInstance<IImageUtilities>(ServiceLocator.get_Default(), new ImageUtilities(), null);
					ServiceLocatorExtensions.RegisterInstance<IFraudAbuseManager>(ServiceLocator.get_Default(), new FraudAbuseManager(), null);
					VyprVPNController vyprVPNController = new VyprVPNController();
					ServiceLocatorExtensions.RegisterInstance<IVyprVPNController>(ServiceLocator.get_Default(), vyprVPNController, null);
					IServiceLocator arg_1A8_0 = ServiceLocator.get_Default();
					ConnectionLog expr_19B = new ConnectionLog();
					expr_19B.set_Enabled(vyprVPNController.EnableConnectionLog);
					ServiceLocatorExtensions.RegisterInstance<IConnectionLog>(arg_1A8_0, expr_19B, null);
					this.setUpCatelUI();
					if (!App.RestartIpcClient())
					{
						App.logger.Log(0, "Cancelling app initialization as a result of RestartIpcClient() calling for a shutdown");
					}
					else
					{
						ServiceLocatorExtensions.RegisterInstance<INetworkStateMonitorFactory>(ServiceLocator.get_Default(), new NetworkStateMonitorFactory(), null);
						ServiceLocatorExtensions.RegisterInstance<INetworkModel>(ServiceLocator.get_Default(), new NetworkModel(), null);
						ServiceLocatorExtensions.RegisterInstance<IPreferencesModel>(ServiceLocator.get_Default(), VyprVPNSettings.CreatePreferencesModel(), null);
						ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).UpdateCurrentThreadLocale();
						try
						{
							App.trayIcon = (TrayIcon)this.FindResource("TrayIcon");
							App.trayIcon.DataContext = new TrayIconViewModel();
							App.trayMenu = (ContextMenu)this.FindResource("SystemTrayMenu");
							ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(App.trayMenu, Thread.CurrentThread, false);
						}
						catch (Exception ex)
						{
							App.logger.Log(4, "TrayIcon setup failed. Exception: {0}", new object[]
							{
								ex
							});
						}
						this.CreateJumpList();
						App.logger.Log(0, "App onStartup completed.  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
						if (!vyprVPNController.ConnectOnLaunch)
						{
							App.UIHelper.ShowApplicationWindow();
						}
					}
				}
			}
			catch (Exception ex2)
			{
				App.logger.Log(4, "Exception: {0}", new object[]
				{
					ex2
				});
				throw;
			}
		}

		private void RegisterTypeFactories()
		{
			IServiceLocator arg_26_0 = ServiceLocator.get_Default();
			Func<ServiceLocatorRegistration, IServerList> arg_26_1;
			if ((arg_26_1 = App.<>c.<>9__38_0) == null)
			{
				arg_26_1 = (App.<>c.<>9__38_0 = new Func<ServiceLocatorRegistration, IServerList>(App.<>c.<>9.<RegisterTypeFactories>b__38_0));
			}
			ServiceLocatorExtensions.RegisterType<IServerList>(arg_26_0, arg_26_1, 1, true);
			IServiceLocator arg_51_0 = ServiceLocator.get_Default();
			Func<ServiceLocatorRegistration, ICombinedFilter> arg_51_1;
			if ((arg_51_1 = App.<>c.<>9__38_1) == null)
			{
				arg_51_1 = (App.<>c.<>9__38_1 = new Func<ServiceLocatorRegistration, ICombinedFilter>(App.<>c.<>9.<RegisterTypeFactories>b__38_1));
			}
			ServiceLocatorExtensions.RegisterType<ICombinedFilter>(arg_51_0, arg_51_1, 1, true);
			ServiceLocatorExtensions.RegisterInstance<IPingServerWrapperFactory>(ServiceLocator.get_Default(), new PingServerWrapperFactory(), null);
			IServiceLocator arg_8C_0 = ServiceLocator.get_Default();
			Func<ServiceLocatorRegistration, IOpenVpnCommandLineConfig> arg_8C_1;
			if ((arg_8C_1 = App.<>c.<>9__38_2) == null)
			{
				arg_8C_1 = (App.<>c.<>9__38_2 = new Func<ServiceLocatorRegistration, IOpenVpnCommandLineConfig>(App.<>c.<>9.<RegisterTypeFactories>b__38_2));
			}
			ServiceLocatorExtensions.RegisterType<IOpenVpnCommandLineConfig>(arg_8C_0, arg_8C_1, 1, true);
		}

		private void TestModeSetup()
		{
			bool flag = false;
			string text = "TestMode.json";
			text = Path.Combine(Path.GetDirectoryName(ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationPath()), "TestMode", text);
			try
			{
				flag = (Extensions.Value<string>(JObject.Parse(File.ReadAllText(text)).get_Item("enabled")) == "true");
			}
			catch
			{
				flag = false;
			}
			if (flag)
			{
				ServiceLocatorExtensions.RegisterType<IContactWrapper, TestModeContactWrapper>(ServiceLocator.get_Default(), 1, true);
				return;
			}
			ServiceLocatorExtensions.RegisterType<IContactWrapper, ContactWrapper>(ServiceLocator.get_Default(), 1, true);
		}

		private void setUpCatelUI()
		{
			try
			{
				ServiceLocatorExtensions.RegisterType<IViewPropertySelector, ViewPropertySelector>(ServiceLocator.get_Default(), 0, true);
				StyleHelper.CreateStyleForwardersForDefaultStyles("Default");
				ModelBase.set_SuspendValidationForAllModels(true);
				App.LoadTheme(this.UISettings.Theme);
				this.RegisterMessages();
				this.RegisterWindows();
			}
			catch (Exception ex)
			{
				App.logger.Log(4, "Catel setup failed. Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		private bool handleMultipleAppInstances()
		{
			bool flag;
			this._newInstanceLaunchedEventWaitHandle = new EventWaitHandle(false, EventResetMode.ManualReset, "913DDDA4-323B-43D8-AD55-A0B8C91B05F4", out flag);
			this._jumpListQuitEventWaitHandle = new EventWaitHandle(false, EventResetMode.ManualReset, "08984556-2341-45D7-A6CB-DB490CC61809");
			this._jumpListLoginEventWaitHandle = new EventWaitHandle(false, EventResetMode.ManualReset, "A5D58703-FF16-48E9-85BD-87D5D357023E");
			this._jumpListLogoutEventWaitHandle = new EventWaitHandle(false, EventResetMode.ManualReset, "2C66A778-02AC-443B-A0B8-290F1FE70869");
			this._jumpListConnectEventWaitHandle = new EventWaitHandle(false, EventResetMode.ManualReset, "51C38F90-00C9-42BA-92E3-CDCEE794FE1C");
			this._jumpListDisconnectEventWaitHandle = new EventWaitHandle(false, EventResetMode.ManualReset, "C8BD86E2-C8E8-43A8-939D-60DB1B1C60DC");
			this._jumpListOpenSettingsEventWaitHandle = new EventWaitHandle(false, EventResetMode.ManualReset, "9F2FE844-2E49-4A1F-8AD1-C456CD3BB2F1");
			if (!flag)
			{
				if (!(this._jumpListCommand == "jumpListConnect") && !(this._jumpListCommand == "jumpListDisconnect"))
				{
					App.logger.Log(1, "Notifying existing instance to show itself");
					this._newInstanceLaunchedEventWaitHandle.Set();
				}
				App.logger.Log(1, "Performing actions if jump list command was selected");
				if (this._jumpListCommand == "jumpListQuit")
				{
					this._jumpListQuitEventWaitHandle.Set();
				}
				else if (this._jumpListCommand == "jumpListLogin")
				{
					this._jumpListLoginEventWaitHandle.Set();
				}
				else if (this._jumpListCommand == "jumpListLogout")
				{
					this._jumpListLogoutEventWaitHandle.Set();
				}
				else if (this._jumpListCommand == "jumpListConnect")
				{
					this._jumpListConnectEventWaitHandle.Set();
				}
				else if (this._jumpListCommand == "jumpListDisconnect")
				{
					this._jumpListDisconnectEventWaitHandle.Set();
				}
				else if (this._jumpListCommand == "jumpListOpenSettings")
				{
					this._jumpListOpenSettingsEventWaitHandle.Set();
				}
				App.logger.Log(1, "Exiting; another instance is running");
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).TerminateApp();
				return false;
			}
			try
			{
				this.CreateJumpListListeners();
				new Thread(delegate
				{
					this.WaitForAndHandleEventsHelper(this._newInstanceLaunchedEventWaitHandle, new Action(ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowApplicationWindow));
				})
				{
					Name = "Jump List Open GUI thread",
					IsBackground = true
				}.Start();
				AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(App.OnUnhandledException);
			}
			catch
			{
				App.logger.Log(3, "Setting up UI to respond to jumplists failed.");
			}
			return true;
		}

		private void processArgs(string[] args)
		{
			(new char[1])[0] = '=';
			if (args.Count<string>() > 1)
			{
				for (int i = 0; i < args.Length; i++)
				{
					string text = args[i];
					string arg_24_0 = string.Empty;
					string arg_2A_0 = string.Empty;
					if (text.StartsWith("--"))
					{
						string text2 = text.TrimStart(new char[]
						{
							'-'
						});
						if (!text2.Contains("="))
						{
							if (text2.Contains("jumpList"))
							{
								this._jumpListCommand = text2;
							}
							else
							{
								string a = text2.ToLower();
								if (a == "maximize")
								{
									this._startupMaximized = true;
								}
							}
						}
					}
				}
			}
		}

		private void CreateJumpList()
		{
			this._loginJumpTask = new JumpTask
			{
				Title = VyprVPN.Properties.Resources.LogIn,
				ApplicationPath = Assembly.GetEntryAssembly().Location,
				Arguments = "--jumpListLogin",
				IconResourceIndex = -1
			};
			this._logoutJumpTask = new JumpTask
			{
				Title = VyprVPN.Properties.Resources.LogOut,
				ApplicationPath = Assembly.GetEntryAssembly().Location,
				Arguments = "--jumpListLogout",
				IconResourceIndex = -1
			};
			this._disconnectJumpTask = new JumpTask
			{
				Title = VyprVPN.Properties.Resources.Disconnect,
				ApplicationPath = Assembly.GetEntryAssembly().Location,
				Arguments = "--jumpListDisconnect",
				IconResourceIndex = -1
			};
			this._connectJumpTask = new JumpTask
			{
				Title = VyprVPN.Properties.Resources.Connect,
				ApplicationPath = Assembly.GetEntryAssembly().Location,
				Arguments = "--jumpListConnect",
				IconResourceIndex = -1
			};
			this._openSettingsJumpTask = new JumpTask
			{
				Title = VyprVPN.Properties.Resources.OpenSettings,
				ApplicationPath = Assembly.GetEntryAssembly().Location,
				Arguments = "--jumpListOpenSettings",
				IconResourceIndex = -1
			};
			this._quitJumpTask = new JumpTask
			{
				Title = VyprVPN.Properties.Resources.QuitVyprVPN,
				ApplicationPath = Assembly.GetEntryAssembly().Location,
				Arguments = "--jumpListQuit",
				IconResourceIndex = -1
			};
			this._jumpList = new JumpList();
			this.UpdateJumpList();
			JumpList.SetJumpList(Application.Current, this._jumpList);
		}

		private void UpdateJumpList()
		{
			if (this._jumpList == null)
			{
				App.logger.Log(1, "Jump list hasn't been created yet. Unable to update.");
				return;
			}
			this._jumpList.JumpItems.Clear();
			if (this.VyprVPNController.AuthenticationState == null)
			{
				this._jumpList.JumpItems.Add(this._loginJumpTask);
			}
			else
			{
				this._jumpList.JumpItems.Add(this._logoutJumpTask);
				if (this.VyprVPNController.ConnectionStatus == 4)
				{
					this._jumpList.JumpItems.Add(this._disconnectJumpTask);
				}
				else if (this.VyprVPNController.ConnectionStatus == null)
				{
					this._jumpList.JumpItems.Add(this._connectJumpTask);
				}
				this._jumpList.JumpItems.Add(this._openSettingsJumpTask);
			}
			this._jumpList.JumpItems.Add(this._quitJumpTask);
		}

		private async Task OnJumpListItemClicked(string command)
		{
			if (!(command == "jumpListLogin"))
			{
				if (!(command == "jumpListLogout"))
				{
					if (!(command == "jumpListConnect"))
					{
						if (!(command == "jumpListDisconnect"))
						{
							if (!(command == "jumpListOpenSettings"))
							{
								if (command == "jumpListQuit")
								{
									TrayIconViewModel trayIconViewModel = App.trayIcon.DataContext as TrayIconViewModel;
									Timer animatedIconTimer = (trayIconViewModel != null) ? trayIconViewModel.AnimatedIconTimer : null;
									ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).QuitUI(this.VyprVPNController, animatedIconTimer);
								}
							}
							else
							{
								await VyprVPNSettings.ShowSettings();
							}
						}
						else if (this.VyprVPNController.VPNServer != null)
						{
							this.VyprVPNController.Disconnect(10);
						}
						else
						{
							App.logger.Log(1, "Jump List Disconnect triggered while VPNServer was Null");
						}
					}
					else if (this.VyprVPNController.VPNServer != null)
					{
						this.VyprVPNController.Connect(10);
					}
					else
					{
						App.logger.Log(1, "Jump List Connect triggered while VPNServer was Null");
					}
				}
				else
				{
					this.VyprVPNController.Logout();
				}
			}
			else
			{
				ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).ActiveScreen = Screen.Login;
			}
		}

		private void WaitForAndHandleEventsHelper(EventWaitHandle waitHandle, Action eventHandlerAction)
		{
			if (waitHandle == null)
			{
				App.logger.Log(4, "WaitHandle cannot be null in the thread that processes jump list actions");
				throw new ArgumentException("waitHandle cannot be null", "waitHandle");
			}
			if (eventHandlerAction == null)
			{
				App.logger.Log(4, "eventHandlerAction cannot be null in the thread that exists to fire that action in response to the the jump list.");
				throw new ArgumentException("eventHandlerAction cannot be null", "eventHandlerAction");
			}
			while (EventWaitHandleExtensions.YieldingInfiniteWaitOne(waitHandle, 1000))
			{
				if (Application.Current == null || Application.Current.Dispatcher == null)
				{
					App.logger.Log(3, "WaitForAndHandleEventsHelper triggered while the application lacks a dispatcher. This is probably due to the application being in the process of shutting down or starting up.");
				}
				else
				{
					Application.Current.Dispatcher.BeginInvoke(eventHandlerAction, new object[0]);
					waitHandle.Reset();
				}
			}
		}

		private void JumpListLoginListenerThread()
		{
			this.WaitForAndHandleEventsHelper(this._jumpListLoginEventWaitHandle, delegate
			{
				await this.OnJumpListItemClicked("jumpListLogin");
			});
		}

		private void JumpListLogoutListenerThread()
		{
			this.WaitForAndHandleEventsHelper(this._jumpListLogoutEventWaitHandle, delegate
			{
				await this.OnJumpListItemClicked("jumpListLogout");
			});
		}

		private void JumpListConnectListenerThread()
		{
			this.WaitForAndHandleEventsHelper(this._jumpListConnectEventWaitHandle, delegate
			{
				await this.OnJumpListItemClicked("jumpListConnect");
			});
		}

		private void JumpListDisconnectListenerThread()
		{
			this.WaitForAndHandleEventsHelper(this._jumpListDisconnectEventWaitHandle, delegate
			{
				await this.OnJumpListItemClicked("jumpListDisconnect");
			});
		}

		private void JumpListOpenSettingsListenerThread()
		{
			this.WaitForAndHandleEventsHelper(this._jumpListOpenSettingsEventWaitHandle, delegate
			{
				await this.OnJumpListItemClicked("jumpListOpenSettings");
			});
		}

		private void JumpListQuitGuiListenerThread()
		{
			this.WaitForAndHandleEventsHelper(this._jumpListQuitEventWaitHandle, delegate
			{
				await this.OnJumpListItemClicked("jumpListQuit");
			});
		}

		private void CreateJumpListListeners()
		{
			new Thread(new ThreadStart(this.JumpListLoginListenerThread))
			{
				Name = "Jump List Login thread",
				IsBackground = true
			}.Start();
			new Thread(new ThreadStart(this.JumpListLogoutListenerThread))
			{
				Name = "Jump List Logout thread",
				IsBackground = true
			}.Start();
			new Thread(new ThreadStart(this.JumpListConnectListenerThread))
			{
				Name = "Jump List Connect thread",
				IsBackground = true
			}.Start();
			new Thread(new ThreadStart(this.JumpListDisconnectListenerThread))
			{
				Name = "Jump List Disconnect thread",
				IsBackground = true
			}.Start();
			new Thread(new ThreadStart(this.JumpListOpenSettingsListenerThread))
			{
				Name = "Jump List Open Settings thread",
				IsBackground = true
			}.Start();
			new Thread(new ThreadStart(this.JumpListQuitGuiListenerThread))
			{
				Name = "Jump List Quit GUI thread",
				IsBackground = true
			}.Start();
		}

		private void RegisterMessages()
		{
			MessageBase<ConnectedChangedMessage, bool>.Register(this, delegate(ConnectedChangedMessage connected)
			{
				bool data = connected.get_Data();
				if (data && this.VyprVPNController.ConnectSound)
				{
					this.PlaySoundFile(this.UISettings.ConnectSoundFilePath);
					return;
				}
				if (!data && this.VyprVPNController.DisconnectSound)
				{
					this.PlaySoundFile(this.UISettings.DisconnectSoundFilePath);
				}
			}, null);
			MessageBase<FavoritesChangedMessage, IEnumerable<VPNServer>>.Register(this, delegate(FavoritesChangedMessage eData)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.PopulateServerLocations();
				});
			}, null);
			MessageBase<LocationChangedMessage, IVPNServer>.Register(this, delegate(LocationChangedMessage eData)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.PopulateServerLocations();
				});
			}, null);
			MessageBase<SettingsChangedMessage, AccountSettingsBag>.Register(this, delegate(SettingsChangedMessage eData)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.PopulateServerLocations();
					this.VyprVPNController.ProcessCrashReports("", true);
				});
			}, null);
			MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.Register(this, new Action<AuthenticationStateChangedMessage>(this.LaunchMainWindowIfNotLoggedIn), null);
			MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.Register(this, new Action<AuthenticationStateChangedMessage>(this.UpdateJumpListOnAuthenticationStateChange), null);
			MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.Register(this, new Action<AuthenticationStateChangedMessage>(this.ConnectIfConnectOnLaunch), null);
			MessageBase<VyprVPNStateChangedMessage, IVyprVPNController>.Register(this, new Action<VyprVPNStateChangedMessage>(this.UpdateJumpListOnConnectionStateChange), null);
			if (this.VyprVPNController.ConnectOnLaunch)
			{
				MessageBase<VyprVPNStateChangedMessage, IVyprVPNController>.Register(this, new Action<VyprVPNStateChangedMessage>(this.ShowMainWindowAfterConnectionStateUpdate), null);
			}
		}

		private void UpdateJumpListOnAuthenticationStateChange(AuthenticationStateChangedMessage obj)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.UpdateJumpList();
				this._jumpList.Apply();
			});
		}

		private void UpdateJumpListOnConnectionStateChange(VyprVPNStateChangedMessage obj)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.UpdateJumpList();
				this._jumpList.Apply();
			});
		}

		private void LaunchMainWindowIfNotLoggedIn(AuthenticationStateChangedMessage obj)
		{
			App.logger.Log(0, "Start time logged-in-detection running...");
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.UpdateJumpList();
				this._jumpList.Apply();
			});
			if (this.VyprVPNController.AuthenticationState == null)
			{
				App.logger.Log(0, "Showing main window...");
				Action arg_68_0;
				if ((arg_68_0 = App.<>c.<>9__57_1) == null)
				{
					arg_68_0 = (App.<>c.<>9__57_1 = new Action(App.<>c.<>9.<LaunchMainWindowIfNotLoggedIn>b__57_1));
				}
				Task.Run(arg_68_0);
			}
			Task.Run(delegate
			{
				MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.Unregister(this, new Action<AuthenticationStateChangedMessage>(this.LaunchMainWindowIfNotLoggedIn), null);
			});
		}

		private void ShowMainWindowAfterConnectionStateUpdate(VyprVPNStateChangedMessage obj)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowApplicationWindow();
			Task.Run(delegate
			{
				MessageBase<VyprVPNStateChangedMessage, IVyprVPNController>.Unregister(this, new Action<VyprVPNStateChangedMessage>(this.ShowMainWindowAfterConnectionStateUpdate), null);
			});
		}

		private void ConnectIfConnectOnLaunch(AuthenticationStateChangedMessage msg)
		{
			if (this.VyprVPNController.ConnectOnLaunch && this.VyprVPNController.ConnectionStatus == null && this.VyprVPNController.IsLoggedIn)
			{
				if (this.VyprVPNController.FastestServerSelected)
				{
					Task.Run(delegate
					{
						this.VyprVPNController.FindAndConnectToFastestServer(7);
					});
				}
				else
				{
					Task.Run(delegate
					{
						this.VyprVPNController.Connect(7);
					});
				}
			}
			else if (!this.VyprVPNController.IsLoggedIn && this.VyprVPNController.ConnectionStatus != null)
			{
				App.logger.Log(3, "Skipping connect on application start request because we are neither logged in nor disconnected.");
			}
			else if (!this.VyprVPNController.IsLoggedIn)
			{
				App.logger.Log(3, "Skipping connect on application start request because we are not logged in.");
			}
			else if (this.VyprVPNController.ConnectionStatus != null)
			{
				App.logger.Log(3, "Skipping connect on application start request because we are not disconnected.");
			}
			App.logger.Log(0, "Unregistering start time logged-in-detection...");
			Task.Run(delegate
			{
				MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.Unregister(this, new Action<AuthenticationStateChangedMessage>(this.ConnectIfConnectOnLaunch), null);
			});
		}

		protected override void OnExit(ExitEventArgs e)
		{
			App.logger.Log(0, "OnExit() called");
			try
			{
				if (ServiceLocatorExtensions.IsTypeRegistered<IIPCServer>(ServiceLocator.get_Default(), null))
				{
					IPCClient iPCClient = ServiceLocatorExtensions.ResolveType<IIPCServer>(ServiceLocator.get_Default(), null) as IPCClient;
					if (iPCClient != null)
					{
						try
						{
							iPCClient.Unsubscribe();
							Thread.Sleep(100);
							iPCClient.Close();
						}
						catch (Exception ex)
						{
							App.logger.Log(1, "Ignoring exception received shutting down IPC: {0}", new object[]
							{
								ex
							});
						}
					}
				}
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					JumpList jumpList = this._jumpList;
					if (jumpList != null)
					{
						jumpList.JumpItems.Clear();
						jumpList.Apply();
					}
				});
				App.DisposeTrayIcon();
				if (ServiceLocatorExtensions.IsTypeRegistered<INetworkModel>(ServiceLocator.get_Default(), null))
				{
					INetworkModel networkModel = ServiceLocatorExtensions.ResolveType<INetworkModel>(ServiceLocator.get_Default(), null);
					if (networkModel != null)
					{
						networkModel.Dispose();
					}
				}
				base.OnExit(e);
			}
			catch (Exception ex2)
			{
				App.logger.Log(4, "Exception: {0}", new object[]
				{
					ex2
				});
			}
		}

		private static void LoadTheme(string themeName)
		{
			if (string.IsNullOrEmpty(themeName))
			{
				App.logger.Log(1, "Cannot load theme. Theme name is null or empty.");
				return;
			}
			try
			{
				Assembly entryAssembly = Assembly.GetEntryAssembly();
				string name = string.Format("{0}.g.resources", entryAssembly.GetName().Name);
				Stream manifestResourceStream = entryAssembly.GetManifestResourceStream(name);
				if (manifestResourceStream == null)
				{
					App.logger.Log(1, "Theme resources could not be loaded!");
				}
				else
				{
					using (ResourceReader resourceReader = new ResourceReader(manifestResourceStream))
					{
						List<DictionaryEntry> arg_B3_0 = (from kvp in resourceReader.Cast<DictionaryEntry>().ToList<DictionaryEntry>()
						where kvp.Key.ToString().ToLower().EndsWith(string.Format("{0}theme.baml", themeName.ToLower()))
						select kvp).ToList<DictionaryEntry>();
						Action<DictionaryEntry> arg_B3_1;
						if ((arg_B3_1 = App.<>c.<>9__61_1) == null)
						{
							arg_B3_1 = (App.<>c.<>9__61_1 = new Action<DictionaryEntry>(App.<>c.<>9.<LoadTheme>b__61_1));
						}
						arg_B3_0.ForEach(arg_B3_1);
					}
				}
			}
			catch (Exception ex)
			{
				App.logger.Log(4, string.Format("Could not load theme '{0}'; Exception: {1}\n{2}", themeName, ex.Message, ex.StackTrace));
				if (!(themeName.ToLower() != "default"))
				{
					throw;
				}
				App.LoadTheme("Default");
			}
		}

		private static void DisposeTrayIcon()
		{
			try
			{
				TrayIcon trayIcon = App.trayIcon;
				if (trayIcon != null && !trayIcon.get_IsDisposed())
				{
					trayIcon.Visibility = Visibility.Collapsed;
					trayIcon.Dispose();
				}
			}
			catch (Exception ex)
			{
				App.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		private void RegisterWindows()
		{
			IDependencyResolver expr_06 = ObjectExtensions.GetDependencyResolver(this);
			IUIVisualizerService expr_0D = DependencyResolverExtensions.Resolve<IUIVisualizerService>(expr_06, null);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(ConfigureProtocolViewModel), typeof(ConfigureProtocolView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(AddParametersDialogViewModel), typeof(AddParametersDialogView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(SettingsRestoreDialogViewModel), typeof(SettingsRestoreDialogView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(OptimizeMtuDialogViewModel), typeof(OptimizeMtuDialogView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(DefaultBehaviorChangeWarningViewModel), typeof(DefaultBehaviorChangeWarningView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(StatusInformationDialogViewModel), typeof(StatusInformationDialogView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(ManageConnectionPerAppViewModel), typeof(ManageConnectionPerAppView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(UpdateInformationViewModel), typeof(UpdateInformationWindow), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(GraphViewModel), typeof(GraphView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(MainButtonAreaViewModel), typeof(MainButtonAreaView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(ServerListWindowViewModel), typeof(ServerListWindowView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(AccountViewModel), typeof(AccountView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(ConnectionViewModel), typeof(ConnectionView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(DNSViewModel), typeof(DNSView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(ConfigureKillSwitchDialogViewModel), typeof(ConfigureKillSwitchDialogView), true);
			IUIVisualizerServiceExtensions.Register(expr_0D, typeof(NewFeatureModalViewModel), typeof(NewFeatureModalView), true);
			IViewModelLocator expr_1C2 = DependencyResolverExtensions.Resolve<IViewModelLocator>(expr_06, null);
			expr_1C2.Register(typeof(ConfigureProtocolView), typeof(ConfigureProtocolViewModel));
			expr_1C2.Register(typeof(AddParametersDialogView), typeof(AddParametersDialogViewModel));
			expr_1C2.Register(typeof(SettingsRestoreDialogView), typeof(SettingsRestoreDialogViewModel));
			expr_1C2.Register(typeof(OptimizeMtuDialogView), typeof(OptimizeMtuDialogViewModel));
			expr_1C2.Register(typeof(DefaultBehaviorChangeWarningView), typeof(DefaultBehaviorChangeWarningViewModel));
			expr_1C2.Register(typeof(StatusInformationDialogView), typeof(StatusInformationDialogViewModel));
			expr_1C2.Register(typeof(ManageConnectionPerAppView), typeof(ManageConnectionPerAppViewModel));
			expr_1C2.Register(typeof(UpdateInformationWindow), typeof(UpdateInformationViewModel));
			expr_1C2.Register(typeof(GraphView), typeof(GraphViewModel));
			expr_1C2.Register(typeof(MainButtonAreaView), typeof(MainButtonAreaViewModel));
			expr_1C2.Register(typeof(ServerListWindowView), typeof(ServerListWindowViewModel));
			expr_1C2.Register(typeof(AccountView), typeof(AccountViewModel));
			expr_1C2.Register(typeof(ConnectionView), typeof(ConnectionViewModel));
			expr_1C2.Register(typeof(DNSView), typeof(DNSViewModel));
			expr_1C2.Register(typeof(ConfigureKillSwitchDialogView), typeof(ConfigureKillSwitchDialogViewModel));
			expr_1C2.Register(typeof(NewFeatureModalView), typeof(NewFeatureModalViewModel));
		}

		private static void serviceSubscriber_ServiceStopped(object sender, ServiceStopEventArgs e)
		{
			App.allowIPC = false;
			ServiceLocatorExtensions.ResolveType<IIPCServer>(ServiceLocator.get_Default(), null);
			App.logger.Log(0, "App.serviceSubscriber_ServiceStopped called with '{0}' reason in UI thread", new object[]
			{
				e.get_Reason().ToString()
			});
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).TerminateApp();
		}

		private static void InnerChannel_Faulted(object sender, EventArgs e)
		{
			App.logger.Log(1, "IPC Error: InnerChannel_Faulted");
			IUIHelper arg_3A_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			Action arg_3A_1;
			if ((arg_3A_1 = App.<>c.<>9__65_0) == null)
			{
				arg_3A_1 = (App.<>c.<>9__65_0 = new Action(App.<>c.<>9.<InnerChannel_Faulted>b__65_0));
			}
			arg_3A_0.Dispatch(arg_3A_1);
		}

		private static void InnerDuplexChannel_Faulted(object sender, EventArgs e)
		{
			App.logger.Log(1, "IPC Error: InnerDuplexChannel_Faulted");
			IUIHelper arg_3A_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			Action arg_3A_1;
			if ((arg_3A_1 = App.<>c.<>9__66_0) == null)
			{
				arg_3A_1 = (App.<>c.<>9__66_0 = new Action(App.<>c.<>9.<InnerDuplexChannel_Faulted>b__66_0));
			}
			arg_3A_0.Dispatch(arg_3A_1);
		}

		private static bool RestartIpcClient()
		{
			if (!App.allowIPC)
			{
				App.logger.Log(0, "allowIPC == False; not reconnecting to service.");
				return true;
			}
			IVyprVPNController vyprVPNController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			vyprVPNController.ServiceContacted = false;
			IPCClient iPCClient = null;
			if (ServiceLocatorExtensions.IsTypeRegistered<IIPCServer>(ServiceLocator.get_Default(), null))
			{
				try
				{
					iPCClient = (ServiceLocatorExtensions.ResolveType<IIPCServer>(ServiceLocator.get_Default(), null) as IPCClient);
					if (iPCClient != null && iPCClient.State != CommunicationState.Faulted)
					{
						iPCClient.Unsubscribe();
						iPCClient.Close();
					}
				}
				catch (Exception ex)
				{
					App.logger.Log(1, "Caught exception unsubscribing before reconnecting: {0}", new object[]
					{
						ex.Message
					});
				}
				finally
				{
					if (iPCClient != null)
					{
						iPCClient.Abort();
						iPCClient.InnerChannel.UnknownMessageReceived -= new EventHandler<UnknownMessageReceivedEventArgs>(App.InnerChannel_UnknownMessageReceived);
						iPCClient.InnerDuplexChannel.Faulted -= new EventHandler(App.InnerDuplexChannel_Faulted);
						iPCClient.InnerChannel.Faulted -= new EventHandler(App.InnerChannel_Faulted);
					}
				}
			}
			IServiceEventsSource serviceEventsSource = null;
			if (ServiceLocatorExtensions.IsTypeRegistered<IIPCServer>(ServiceLocator.get_Default(), null))
			{
				serviceEventsSource = ServiceLocatorExtensions.ResolveType<IServiceEventsSource>(ServiceLocator.get_Default(), null);
				if (serviceEventsSource != null)
				{
					serviceEventsSource.ServiceStoppedEvent -= new ServiceStoppedEventHandler(App.serviceSubscriber_ServiceStopped);
				}
			}
			VyprVPNServiceSubscriber vyprVPNServiceSubscriber = new VyprVPNServiceSubscriber();
			vyprVPNServiceSubscriber.ServiceStoppedEvent += new ServiceStoppedEventHandler(App.serviceSubscriber_ServiceStopped);
			ServiceLocatorExtensions.RegisterInstance<IIPCServerCallback>(ServiceLocator.get_Default(), vyprVPNServiceSubscriber, null);
			ServiceLocatorExtensions.RegisterInstance<IServiceEventsSource>(ServiceLocator.get_Default(), vyprVPNServiceSubscriber, null);
			IPCClient iPCClient2 = App.ConstructClient(vyprVPNServiceSubscriber);
			ServiceLocatorExtensions.RegisterInstance<IIPCServer>(ServiceLocator.get_Default(), iPCClient2, null);
			try
			{
				App.logger.Log(0, "Starting subscribe...");
				string text = iPCClient2.Subscribe(ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationVersion().ToString());
				if (text != ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationVersion().ToString())
				{
					App.logger.Log(1, "Client version: {0} Service version: {1}", new object[]
					{
						ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationVersion().ToString(),
						text
					});
				}
				App.logger.Log(0, "Finished subscribe.");
				if (ServiceLocatorExtensions.IsTypeRegistered<IVyprVPNController>(ServiceLocator.get_Default(), null))
				{
					ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).UpdateServiceEventSubscriptions(vyprVPNServiceSubscriber, serviceEventsSource);
				}
				if (App.upgradeDictionary != null)
				{
					iPCClient2.UpgradeSettings(App.upgradeDictionary);
					App.upgradeDictionary = null;
				}
				iPCClient2.InnerChannel.UnknownMessageReceived += new EventHandler<UnknownMessageReceivedEventArgs>(App.InnerChannel_UnknownMessageReceived);
				iPCClient2.InnerDuplexChannel.Faulted += new EventHandler(App.InnerDuplexChannel_Faulted);
				iPCClient2.InnerChannel.Faulted += new EventHandler(App.InnerChannel_Faulted);
				App.IpcConnectBackOffTimeManager.Reset();
				iPCClient2.RequestAllStatusNotifications();
			}
			catch (Exception ex2)
			{
				if (!(ex2 is EndpointNotFoundException) && !(ex2 is CommunicationException))
				{
					throw;
				}
				if (ex2 is EndpointNotFoundException)
				{
					App.logger.Log(1, "Service endpoint not found: {0}", new object[]
					{
						ex2.Message
					});
				}
				else
				{
					App.logger.Log(1, "CommunicationException during setup of connection to IPC server: {0}", new object[]
					{
						ex2.Message
					});
				}
				App.IpcConnectBackOffTimeManager.Sleep();
				bool result;
				if (App.IpcConnectBackOffTimeManager.get_CurrentCycle() >= 5)
				{
					ManualResetEvent obj = App.reset;
					lock (obj)
					{
						if (App.repairsInProgress)
						{
							App.logger.Log(0, "Service repairs already running. Waiting for repairs to finish.");
							EventWaitHandleExtensions.YieldingInfiniteWaitOne(App.reset, -1);
							result = false;
							return result;
						}
						App.repairsInProgress = true;
					}
					App.logger.Log(0, "Service not communicating with application.");
					ServiceLocatorExtensions.ResolveType<IServiceRepair>(ServiceLocator.get_Default(), null).set_LogPath(App.logFilePath);
					bool success = false;
					try
					{
						ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
						{
							App.logger.Log(0, "Attempting to show repair wizard.");
							using (ServiceRepairWizardViewModel serviceRepairWizardViewModel = new ServiceRepairWizardViewModel())
							{
								ServiceRepairWizardView serviceRepairWizardView = new ServiceRepairWizardView
								{
									DataContext = serviceRepairWizardViewModel
								};
								if (Application.Current == null || Application.Current.Windows.Count == 0)
								{
									serviceRepairWizardView.WindowStartupLocation = WindowStartupLocation.CenterScreen;
								}
								success = (serviceRepairWizardView.ShowDialog() ?? false);
							}
						});
					}
					catch (Exception arg)
					{
						App.logger.Log(4, string.Format("Service repairs failed due to exception from servie-repair wizard: {0}", arg));
						App.logger.Log(0, "Showing dedicated customer-support dialog as fallback.");
						int arg_3FA_0 = (int)NativeMethods.ShowTopMostMessageBox(VyprVPN.Properties.Resources.ServiceNotCommunicating + Environment.NewLine + Environment.NewLine + VyprVPN.Properties.Resources.ContactSupportNowQuestion, VyprVPN.Properties.Resources.ApplicationName, MessageBoxButton.YesNo, MessageBoxImage.Hand);
						App.logger.Log(0, "Showing customer support to finish fallback.");
						if (arg_3FA_0 == 6)
						{
							IUIHelper arg_426_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
							Action arg_426_1;
							if ((arg_426_1 = App.<>c.<>9__67_1) == null)
							{
								arg_426_1 = (App.<>c.<>9__67_1 = new Action(App.<>c.<>9.<RestartIpcClient>b__67_1));
							}
							arg_426_0.Dispatch(arg_426_1);
						}
					}
					if (success)
					{
						App.logger.Log(0, "Restarting application after successful service repair.");
						ServiceLocatorExtensions.ResolveType<IGeneralUtilities>(ServiceLocator.get_Default(), null).RestartApplication("VyprVPNRestart.bat", 5);
					}
					else
					{
						App.logger.Log(4, "Failed to repair service. Terminating application.");
						if (Application.Current != null)
						{
							ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).TerminateApp();
						}
					}
					App.repairsInProgress = false;
					App.reset.Set();
					result = false;
					return result;
				}
				result = App.RestartIpcClient();
				return result;
			}
			vyprVPNController.ServiceContacted = true;
			return true;
		}

		private static void InnerChannel_UnknownMessageReceived(object sender, UnknownMessageReceivedEventArgs e)
		{
			App.logger.Log(0, "Unknown Message Received: {0}", new object[]
			{
				e
			});
		}

		private static void SourceResourceDictionary(string path, Stream dictionaryStream)
		{
			if (string.IsNullOrEmpty(path) || dictionaryStream == null || dictionaryStream.Length <= 0L)
			{
				App.logger.Log(1, "Could not load resource dictionary. Arguments were bad");
				return;
			}
			try
			{
				using (Baml2006Reader baml2006Reader = new Baml2006Reader(dictionaryStream))
				{
					ResourceDictionary resourceDictionary = System.Windows.Markup.XamlReader.Load(baml2006Reader) as ResourceDictionary;
					if (resourceDictionary != null)
					{
						App.logger.Log(0, "Loading resourcedictionary '{0}'", new object[]
						{
							path
						});
						Application.Current.Resources.MergedDictionaries.Add(resourceDictionary);
					}
				}
			}
			catch (System.Xaml.XamlParseException ex)
			{
				App.logger.Log(3, "Could not load resource '{0}'; Exception: {1}", new object[]
				{
					path,
					ex
				});
			}
		}

		private static void OnUnhandledException(object sender, UnhandledExceptionEventArgs e)
		{
			Exception ex = e.ExceptionObject as Exception;
			if (ex != null)
			{
				App.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				NativeMethods.ShowTopMostMessageBox(ex.Message, string.Empty, MessageBoxButton.OK, MessageBoxImage.Asterisk);
				try
				{
					Dictionary<string, string> dictionary = new Dictionary<string, string>
					{
						{
							"CrashedProcess",
							"UI"
						},
						{
							"AppDuration",
							((int)(DateTime.UtcNow - App.AppStartTime).TotalSeconds).ToString()
						}
					};
					if (ServiceLocatorExtensions.IsTypeRegistered<IVyprVPNController>(ServiceLocator.get_Default(), null))
					{
						IVyprVPNController vyprVPNController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
						dictionary.Add("LoginState", vyprVPNController.IsLoggedIn ? "LoggedIn" : "LoggedOut");
						dictionary.Add("ConnectionState", EnumUtilities.GetEnumDescription(vyprVPNController.ConnectionStatus));
						dictionary.Add("Protocol", EnumUtilities.GetEnumDescription(vyprVPNController.Protocol));
						dictionary.Add("Server", (vyprVPNController.VPNServer != null) ? vyprVPNController.VPNServer.get_Location() : "None");
						dictionary.Add("ConnectAttempts", vyprVPNController.ConnectionAttempts.ToString());
						dictionary.Add("ConnectFails", vyprVPNController.ConnectionFails.ToString());
						dictionary.Add("ConnectSuccesses", vyprVPNController.ConnectionSuccesses.ToString());
						dictionary.Add("Disconnects", vyprVPNController.Disconnects.ToString());
					}
					new CrashReport(ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_LocalApplicationDataFolder(), ex, null, dictionary).WriteCrashReportFile();
				}
				catch (Exception ex2)
				{
					App.logger.Log(3, "Exception caught while processing Crash Report log: {0}", new object[]
					{
						ex2
					});
				}
			}
		}

		private static IPCClient ConstructClient(IIPCServerCallback subscriber)
		{
			IPCClient result;
			try
			{
				InstanceContext instanceContext = new InstanceContext(subscriber);
				NetNamedPipeBinding netNamedPipeBinding = new NetNamedPipeBinding(NetNamedPipeSecurityMode.Transport);
				netNamedPipeBinding.Security.Transport.ProtectionLevel = ProtectionLevel.EncryptAndSign;
				netNamedPipeBinding.MaxBufferPoolSize = 20000000L;
				netNamedPipeBinding.MaxBufferSize = 2000000;
				netNamedPipeBinding.MaxReceivedMessageSize = 2000000L;
				netNamedPipeBinding.ReaderQuotas = new XmlDictionaryReaderQuotas
				{
					MaxArrayLength = 2147483647,
					MaxBytesPerRead = 2147483647,
					MaxDepth = 2147483647,
					MaxNameTableCharCount = 2147483647,
					MaxStringContentLength = 2147483647
				};
				App.logger.Log(0, "MaxBufferPoolSize: {0}", new object[]
				{
					netNamedPipeBinding.MaxBufferPoolSize
				});
				App.logger.Log(0, "MaxBufferSize: {0}", new object[]
				{
					netNamedPipeBinding.MaxBufferSize
				});
				App.logger.Log(0, "MaxConnections: {0}", new object[]
				{
					netNamedPipeBinding.MaxConnections
				});
				App.logger.Log(0, "MaxReceivedMessageSize: {0}", new object[]
				{
					netNamedPipeBinding.MaxReceivedMessageSize
				});
				result = new ErrorCheckingIPCClient(instanceContext, netNamedPipeBinding, new EndpointAddress("net.pipe://localhost/com.goldenfrog.vyprvpn.2/vyprvpn_ipc"), new Action(App.Resubscribe));
			}
			catch (Exception ex)
			{
				App.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				result = null;
			}
			return result;
		}

		private static void Resubscribe()
		{
			App.logger.Log(1, "Communication object is in a faulted state. Restarting IPCClient.");
			App.RestartIpcClient();
		}

		private void PlaySoundFile(string path)
		{
			if (File.Exists(path))
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					try
					{
						new SoundPlayer(path).Play();
					}
					catch (Exception ex)
					{
						App.logger.Log(4, "Exception: {0}", new object[]
						{
							ex
						});
						MessageBox.Show(ex.Message);
					}
				});
				return;
			}
			MessageBox.Show(string.Format(VyprVPN.Properties.Resources.SoundFileMissing, path));
		}

		private void PopulateServerLocations()
		{
			App.logger.Log(1, "App.xaml.cs: PopulateServerLocations called");
			if (this.VyprVPNController.AccountSettingsBag == null)
			{
				App.logger.Log(1, "AccountSettingsBag unexpectedly null");
				return;
			}
			App.ServerLocationsMenuItems.Clear();
			IEnumerable<VPNServer> servers = this.VyprVPNController.AccountSettingsBag.get_Servers();
			BitmapImage star = new BitmapImage(new Uri("pack://application:,,,/images/Button-Star-Filled.png"));
			BitmapImage source = new BitmapImage(new Uri("pack://application:,,,/images/Button-Star-Hollow.png"));
			BitmapImage source2 = new BitmapImage(new Uri("pack://application:,,,/images/VyprWindows_FastestServer-Normal.png"));
			MultiBinding visibilityBinding = new MultiBinding
			{
				Converter = new ReversibleMultiBooleanToVisibilityConverter()
			};
			visibilityBinding.Bindings.Add(new Binding("ConnectionStatus")
			{
				Source = this.VyprVPNController,
				Converter = new EnumToBooleanConverter(),
				ConverterParameter = "Disconnected"
			});
			visibilityBinding.Bindings.Add(new Binding("IsLoggedIn")
			{
				Source = this.VyprVPNController
			});
			IVPNServer currentLocation = this.VyprVPNController.VPNServer;
			string selectedLocation = (currentLocation != null) ? currentLocation.get_Location() : null;
			if (this.VyprVPNController.FastestServerSelected)
			{
				selectedLocation = VyprVPN.Properties.Resources.FastestServer;
			}
			if (!string.IsNullOrEmpty(selectedLocation))
			{
				MenuItem menuItem = new MenuItem
				{
					Header = VyprVPN.Properties.Resources.ConnectTo,
					IsEnabled = false
				};
				BindingOperations.SetBinding(menuItem, UIElement.VisibilityProperty, visibilityBinding);
				App.ServerLocationsMenuItems.Add(menuItem);
				MenuItem expr_195 = new MenuItem();
				expr_195.Header = selectedLocation;
				expr_195.IsChecked = true;
				expr_195.IsCheckable = false;
				SimpleCommand expr_1B5 = new SimpleCommand();
				expr_1B5.set_ExecuteDelegate(delegate(object o)
				{
					if (this.VyprVPNController.FastestServerSelected)
					{
						this.VyprVPNController.FindAndConnectToFastestServer(8);
						return;
					}
					this.PinnedServerSelected(currentLocation);
				});
				expr_195.Command = expr_1B5;
				MenuItem menuItem2 = expr_195;
				BindingOperations.SetBinding(menuItem2, UIElement.VisibilityProperty, visibilityBinding);
				App.ServerLocationsMenuItems.Add(menuItem2);
			}
			if (servers == null)
			{
				App.logger.Log(3, "App.PopulateServerLocations() servers unexpectedly null");
				return;
			}
			IEnumerable<VPNServer> arg_221_0 = servers;
			Func<VPNServer, bool> arg_221_1;
			if ((arg_221_1 = App.<>c.<>9__78_1) == null)
			{
				arg_221_1 = (App.<>c.<>9__78_1 = new Func<VPNServer, bool>(App.<>c.<>9.<PopulateServerLocations>b__78_1));
			}
			List<VPNServer> list = arg_221_0.Where(arg_221_1).ToList<VPNServer>();
			List<VPNServer> arg_24E_0 = list;
			Comparison<VPNServer> arg_24E_1;
			if ((arg_24E_1 = App.<>c.<>9__78_2) == null)
			{
				arg_24E_1 = (App.<>c.<>9__78_2 = new Comparison<VPNServer>(App.<>c.<>9.<PopulateServerLocations>b__78_2));
			}
			arg_24E_0.Sort(arg_24E_1);
			if (list.Count > 0)
			{
				list.ForEach(delegate(VPNServer s)
				{
					if (s.get_Location() != null && s.get_Location() != selectedLocation)
					{
						MenuItem menuItem5 = new MenuItem
						{
							Header = s.get_Location(),
							Command = new AsynchronousCommand(delegate
							{
								this.PinnedServerSelected(s);
							}, null, null),
							Icon = new Image
							{
								Source = star
							}
						};
						BindingOperations.SetBinding(menuItem5, UIElement.VisibilityProperty, visibilityBinding);
						App.ServerLocationsMenuItems.Add(menuItem5);
					}
				});
			}
			else
			{
				MenuItem menuItem3 = new MenuItem
				{
					Header = VyprVPN.Properties.Resources.NoFavoritedServers,
					Icon = new Image
					{
						Source = source
					}
				};
				BindingOperations.SetBinding(menuItem3, UIElement.VisibilityProperty, visibilityBinding);
				App.ServerLocationsMenuItems.Add(menuItem3);
			}
			if (!this.VyprVPNController.FastestServerSelected)
			{
				MenuItem expr_2C7 = new MenuItem();
				expr_2C7.Header = VyprVPN.Properties.Resources.FastestServer;
				expr_2C7.Icon = new Image
				{
					Source = source2
				};
				SimpleCommand expr_2EA = new SimpleCommand();
				expr_2EA.set_ExecuteDelegate(delegate(object o)
				{
					if (this.VyprVPNController.IsLoggedIn)
					{
						this.VyprVPNController.FindAndConnectToFastestServer(8);
					}
				});
				expr_2C7.Command = expr_2EA;
				MenuItem menuItem4 = expr_2C7;
				BindingOperations.SetBinding(menuItem4, UIElement.VisibilityProperty, visibilityBinding);
				App.ServerLocationsMenuItems.Add(menuItem4);
			}
		}

		private void PinnedServerSelected(IVPNServer server)
		{
			if (server != null)
			{
				this.VyprVPNController.FastestServerSelected = false;
				this.VyprVPNController.VPNServer = server;
				Task.Run(delegate
				{
					this.VyprVPNController.Connect(8);
				});
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
			Uri resourceLocator = new Uri("/VyprVPN;component/app.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
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

using System;
using System.Collections.Concurrent;

namespace VyprVPN
{
	public interface INetworkModel
	{
		ConcurrentQueue<ThroughputMeasurement> ThroughputMeasurements
		{
			get;
		}

		void Dispose();
	}
}

using GoldenFrogVPN;
using GoldenFrogVPN.Enums;
using GoldenFrogVPN.Interfaces;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;

namespace VyprVPN
{
	public interface IPreferencesModel
	{
		event PropertyChangedEventHandler PropertyChangedEvent;

		bool LaunchOnLogin
		{
			get;
			set;
		}

		bool ConnectOnStartup
		{
			get;
			set;
		}

		bool ConnectOnLaunch
		{
			get;
			set;
		}

		bool EnableConnectionLog
		{
			get;
			set;
		}

		bool ReconnectOnDisconnect
		{
			get;
			set;
		}

		bool ConnectOnUnknownWifi
		{
			get;
			set;
		}

		ObservableCollection<string> ConnectOnUnknownWifiIgnoreSsids
		{
			get;
			set;
		}

		bool ConnectSound
		{
			get;
			set;
		}

		string ConnectSoundFilePath
		{
			get;
			set;
		}

		bool DisconnectSound
		{
			get;
			set;
		}

		string DisconnectSoundFilePath
		{
			get;
			set;
		}

		bool AnalyticsEnabled
		{
			get;
			set;
		}

		bool SendCrashReports
		{
			get;
			set;
		}

		Protocol Protocol
		{
			get;
			set;
		}

		Protocol SelectedOpenVPNProtocol
		{
			get;
			set;
		}

		OpenVpnPortsAndTransportProtocolConfigCollection OpenVpnPortsAndTransportProtocolConfigs
		{
			get;
			set;
		}

		string UiLocale
		{
			get;
			set;
		}

		bool LooseUpdatesEnabled
		{
			get;
			set;
		}

		bool AlternateDnsEnabled
		{
			get;
			set;
		}

		string AlternateDnsPrimary
		{
			get;
			set;
		}

		string AlternateDnsSecondary
		{
			get;
			set;
		}

		bool DnsLeakProtectionEnabled
		{
			get;
			set;
		}

		NotificationPreferenceEnum NotificationPreference
		{
			get;
			set;
		}

		bool KillSwitchEnabled
		{
			get;
			set;
		}

		KillSwitchModeEnum KillSwitchMode
		{
			get;
			set;
		}

		bool KillLanTrafficEnabled
		{
			get;
			set;
		}

		bool IsDirty
		{
			get;
		}

		int SelectedOpenVpnLogVerbosityLevel
		{
			get;
			set;
		}

		int SelectedRouteDelay
		{
			get;
			set;
		}

		int SelectedMtu
		{
			get;
			set;
		}

		int SelectedTlsTimeout
		{
			get;
			set;
		}

		TapAdapterType SelectedTAPAdapter
		{
			get;
			set;
		}

		string AdditionalOpenVpnParameters
		{
			get;
			set;
		}

		bool PerAppManagementEnabled
		{
			get;
			set;
		}

		PerAppBehavior PerAppInitialState
		{
			get;
			set;
		}

		IEnumerable<IApplicationItem> ApplicationList
		{
			get;
			set;
		}

		void ClearDirtyFlag();

		string[] GetDirtyProperties();
	}
}

using GoldenFrogVPN;
using GoldenFrogVPN.Classes;
using GoldenFrogVPN.Enums;
using System;
using VyprVPN.Classes;

namespace VyprVPN
{
	public interface IServiceEventsSource
	{
		event EventHandler<ConnectionInformationEventArgs> StatusChangedEvent;

		event EventHandler<ConnectionErrorEventArgs> ConnectionErrorEvent;

		event AccountSettingsChangedEventHandler AccountSettingsChangedEvent;

		event EventHandler<SendConfirmationEmailApiResultCode> SendConfirmationEmailResultEvent;

		event PingCompletedEventHandler PingCompletedEvent;

		event PropertyChangedEventHandler PropertyChangedEvent;

		event UpdateAvailableEventHandler UpgradeAvailableEvent;

		event ServiceStoppedEventHandler ServiceStoppedEvent;

		event AuthenticationStateChangedEventHandler AuthenticationStateChangedEvent;

		event AuthenticationErrorEventHandler AuthenticationErrorEvent;

		event KillSwitchStateChangedEventHandler KillSwitchStateChangedEvent;

		event UpdateDownloadProgressChangedEventHandler UpdateDownloadProgressChangedEvent;

		event UpdateDownloadCompletedEventHandler UpdateDownloadCompletedEvent;

		event GetAvailableUpdateSpecCompletedEventHandler GetAvailableUpdateSpecCompletedEvent;

		event GetAvailableUpdateSpecErrorEventHandler GetAvailableUpdateSpecErrorEvent;

		event UpdateAppsListFromFileSystemCompletedEventHandler UpdateAppsListFromFileSystemCompletedEvent;

		event UpdateAppsListFromFileSystemErrorEventHandler UpdateAppsListFromFileSystemErrorEvent;

		event GetOptimizedMtuCompletedEventHandler GetOptimizedMtuCompletedEvent;

		event GetOptimizedMtuErrorEventHandler GetOptimizedMtuErrorEvent;
	}
}

using Catel.Services;
using System;
using System.Threading;
using System.Windows;

namespace VyprVPN
{
	public interface IUIHelper
	{
		void Dispatch(Action action);

		void BeginStoryboard(FrameworkElement element, string resourceKey);

		void ShowApplicationWindow();

		void ShowMessage(string message, Action<MessageResult> completedCallback = null);

		void ShowError(Exception exc);

		void ShowServerLocationWindow();

		bool IsApplicationActive();

		bool IsApplicationWindowShown();

		void QuitUI(IVyprVPNController vyprVpnController, Timer animatedIconTimer);

		void TerminateApp();

		void ShowCustomerSupportDialog();

		void ShowUbaAccountExpiredDialog(IVyprVPNController vyprVpnController);

		void ShowNonRecurringPaymentMethodExpiredDialog(IVyprVPNController vyprVpnController);

		void UpdateCurrentThreadLocale();

		void LocalizeUI(DependencyObject uiObject, Thread uiThread, bool forceDidgitLocalization = false);
	}
}

using System;

namespace VyprVPN
{
	public interface IUIState
	{
		Screen ActiveScreen
		{
			get;
			set;
		}

		bool ShowGraphInMainWindow
		{
			get;
			set;
		}

		OnboardingViews OnboardingViewState
		{
			get;
			set;
		}

		void TearOutGraph();
	}
}

using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogUT.GoldenFrog.Enums;
using GoldenFrogVPN;
using GoldenFrogVPN.Classes;
using GoldenFrogVPN.Enums;
using GoldenFrogVPN.Interfaces;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Security;
using System.Threading.Tasks;

namespace VyprVPN
{
	public interface IVyprVPNController : INotifyPropertyChanged
	{
		event EventHandler ClearUpdateAvailable;

		bool IsLoggedIn
		{
			get;
		}

		bool IsConnected
		{
			get;
		}

		bool IsNatFirewallActive
		{
			get;
		}

		bool IsInitialLoginCompleted
		{
			get;
		}

		bool IsServiceFullyStarted
		{
			get;
		}

		bool ServiceContacted
		{
			get;
			set;
		}

		string Username
		{
			get;
		}

		ConnectionStatus ConnectionStatus
		{
			get;
		}

		AuthenticationState AuthenticationState
		{
			get;
		}

		Protocol Protocol
		{
			get;
			set;
		}

		IVPNServer VPNServer
		{
			get;
			set;
		}

		AccountSettingsBag AccountSettingsBag
		{
			get;
		}

		string TimeConnectedString
		{
			get;
		}

		bool AnalyticsEnabled
		{
			get;
			set;
		}

		bool SendCrashReports
		{
			get;
			set;
		}

		bool EnableConnectionLog
		{
			get;
			set;
		}

		bool ReconnectOnDisconnect
		{
			get;
			set;
		}

		bool ConnectOnUnknownWifi
		{
			get;
			set;
		}

		List<string> ConnectOnUnknownWifiIgnoreSsids
		{
			get;
			set;
		}

		OpenVpnPortsAndTransportProtocolConfigCollection OpenVpnPortsAndTransportProtocolConfigs
		{
			get;
			set;
		}

		Protocol SelectedOpenVPNProtocol
		{
			get;
			set;
		}

		string AdditionalOpenVpnParameters
		{
			get;
			set;
		}

		int SelectedMtu
		{
			get;
			set;
		}

		int SelectedOpenVpnLogVerbosityLevel
		{
			get;
			set;
		}

		int SelectedRouteDelay
		{
			get;
			set;
		}

		int SelectedTlsTimeout
		{
			get;
			set;
		}

		TapAdapterType SelectedTAPAdapter
		{
			get;
			set;
		}

		bool LooseUpdatesEnabled
		{
			get;
			set;
		}

		Version VersionToSkip
		{
			get;
			set;
		}

		bool AlternateDnsEnabled
		{
			get;
			set;
		}

		string AlternateDnsPrimary
		{
			get;
			set;
		}

		string AlternateDnsSecondary
		{
			get;
			set;
		}

		bool DnsLeakProtectionEnabled
		{
			get;
			set;
		}

		NotificationPreferenceEnum NotificationPreference
		{
			get;
			set;
		}

		bool KillSwitchEnabled
		{
			get;
			set;
		}

		KillSwitchModeEnum KillSwitchMode
		{
			get;
			set;
		}

		bool KillLanTrafficEnabled
		{
			get;
			set;
		}

		bool KillSwitchActive
		{
			get;
		}

		UpgradeAvailableEventArgs UpgradeInfo
		{
			get;
		}

		bool IsUpgradeAvailable
		{
			get;
		}

		AsynchronousCommand InstallUpgradeCommand
		{
			get;
		}

		bool FastestServerSelected
		{
			get;
			set;
		}

		IEnumerable<IApplicationItem> ApplicationList
		{
			get;
			set;
		}

		PerAppBehavior PerAppInitialState
		{
			get;
			set;
		}

		bool PerAppManagementEnabled
		{
			get;
			set;
		}

		bool LaunchOnLogin
		{
			get;
			set;
		}

		bool ConnectOnStartup
		{
			get;
			set;
		}

		bool ConnectOnLaunch
		{
			get;
			set;
		}

		bool ConnectSound
		{
			get;
			set;
		}

		string ConnectSoundFilePath
		{
			get;
			set;
		}

		bool DisconnectSound
		{
			get;
			set;
		}

		string DisconnectSoundFilePath
		{
			get;
			set;
		}

		int ConnectionAttempts
		{
			get;
		}

		int ConnectionFails
		{
			get;
		}

		int ConnectionSuccesses
		{
			get;
		}

		int Disconnects
		{
			get;
		}

		DataUsage DataUsage
		{
			get;
		}

		string AccountType
		{
			get;
		}

		string AccountLevel
		{
			get;
		}

		bool IsUsageBased
		{
			get;
		}

		int NextUbaThreshold
		{
			get;
		}

		AsynchronousCommand LaunchUpgradeAccountUrlCommand
		{
			get;
		}

		bool NonRecurringAccountHasExpired
		{
			get;
		}

		AsynchronousCommand LaunchManageAccountUrlCommand
		{
			get;
		}

		List<IVPNServer> Servers
		{
			get;
		}

		void InstallUpgrade();

		void InstallUpgrade(UpgradeAvailableEventArgs info);

		void GetAvailableUpgrade(GetAvailableUpdateSpecCompletedEventHandler completedCallback, GetAvailableUpdateSpecErrorEventHandler errorCallback);

		void IgnoreVersionsUpTo(Version version);

		void DownloadUpgrade(SerializableReleaseSpec ReleaseSpec);

		void GetOptimizedMtu(GetOptimizedMtuCompletedEventHandler completedCallback, GetOptimizedMtuErrorEventHandler errorCallback);

		void CancelOptimizeMtuTest();

		CreateAccountApiResultCode CreateAccount(string userCreatedUsername, SecureString userCreatedPassword);

		bool Login(string username, SecureString password);

		Task<CreateAccountApiResultCode> CreateAccountAsync(string userCreatedUsername, SecureString userCreatedPassword);

		Task<bool> LoginAsync(string username, SecureString password);

		Task<bool> CheckIsAccountConfirmedAsync(string username, SecureString password);

		void Logout();

		void RefreshAccountSettings(bool forceUpdate = false);

		Task<bool> ResetPasswordAsync(string username);

		Task<AccountConfirmationApiResultCode> ConfirmAccountAsync(string confirmationHash, string username, SecureString password);

		void CallSendConfirmationEmailApi(string userEmail);

		void SaveFavorites();

		void PingServers(List<VPNServer> servers);

		void FindAndConnectToFastestServer(VyprConnectionEventCause connectCause);

		void Connect(VyprConnectionEventCause cause);

		void Disconnect(VyprConnectionEventCause cause);

		void Reconnect(VyprConnectionEventCause cause);

		void OnboardingFunnelComplete();

		void SendViewedCarouselAnalyticsEvent();

		void SendStartedSignUpAnalyticsEvent();

		void SendResendEmailAnalyticsEvent();

		void SendConfirmedMyAccountAnalyticsEvent();

		void SendLoginAnalyticsEvent();

		void IncrementMtuOptimizeCount();

		void IncrementSettingsRestoredCount();

		string GetReferAFriendLink();

		string GetControlPanelLink();

		string GetSupportLink();

		string GetUpgradeAccountLink();

		bool ProcessCrashReports(string messageBody = "", bool withLogs = true);

		void UpdateUbaThreshold();

		void LaunchUpgradeAccountUrl();

		void LaunchManageAccountUrl();

		string AddGoogleAnalyticsToURL(string url, string campaign, string content);

		string GetDummyOpenVpnCommandLine(Protocol protocol, OpenVpnCommandLineConfig commandLineConfig);

		void UpdateServiceEventSubscriptions(IServiceEventsSource newSubscriber, IServiceEventsSource oldSubscriber);

		void UpdateAppsListFromFileSystem(UpdateAppsListFromFileSystemCompletedEventHandler completedCallback, UpdateAppsListFromFileSystemErrorEventHandler errorCallback);
	}
}

using System;

namespace VyprVPN
{
	public enum OnboardingViews
	{
		CreateAccount,
		Confirm,
		Login,
		ForgotPassword,
		ForgotPasswordSent
	}
}

using System;

namespace VyprVPN
{
	public enum OptimizeMtuDialogState
	{
		PromptingToOptimize,
		Optimizing,
		OptimizeSuccess,
		OptimizeFailed
	}
}

using System;

namespace VyprVPN
{
	public enum Screen
	{
		Main,
		Login,
		CreateAccount,
		Account,
		AccountDetails,
		VyprVPNDetails,
		DumpTruckDetails,
		GeneralPreferences,
		ConnectionPreferences,
		FindFastestLocation,
		ChooseProtocol,
		TearOutGraphWindowOpened,
		TearOutGraphWindowClosed
	}
}

using GoldenFrogUT.Networking;
using GoldenFrogVPN.Enums;
using System;

namespace VyprVPN
{
	[Serializable]
	public class ThroughputMeasurement
	{
		public BandwidthSnapshot Snapshot;

		public DateTime Timestamp;

		public ConnectionStatus ConnectionStatus;

		public ThroughputMeasurement(DateTime timestamp, BandwidthSnapshot snapshot, ConnectionStatus connectionStatus)
		{
			this.Timestamp = timestamp;
			this.Snapshot = snapshot;
			this.ConnectionStatus = connectionStatus;
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using GoldenFrogUX.Controls;
using GoldenFrogUX.Converters;
using GoldenFrogVPN;
using GoldenFrogVPN.Enums;
using Log;
using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Input;
using VyprVPN.Classes.Notifications;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN
{
	public class TrayIconViewModel : ViewModelBase
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly TrayIconViewModel.<>c <>9 = new TrayIconViewModel.<>c();

			public static Predicate<object> <>9__91_0;

			public static Action<object> <>9__91_4;

			internal bool <InitializeCommands>b__91_0(object o)
			{
				return true;
			}

			internal void <InitializeCommands>b__91_4(object o)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowApplicationWindow();
			}

			internal void cctor>b__95_0(object sender, AdvancedPropertyChangedEventArgs args)
			{
				TrayIconViewModel trayIconViewModel = sender as TrayIconViewModel;
				if (trayIconViewModel != null)
				{
					trayIconViewModel.AccountStateAvailable = (args.get_NewValue() != null);
				}
			}
		}

		public static readonly string ICON_DISCONNECTED = "Images\\Systray-Disconnected.ico";

		public static readonly string ICON_CONNECTED = "Images\\Systray-Connected.ico";

		public static readonly string[] ICONS_CONNECTING = new string[]
		{
			"Images\\Systray-Connecting1.ico",
			"Images\\Systray-Connecting2.ico",
			"Images\\Systray-Connecting3.ico",
			"Images\\Systray-Connecting4.ico"
		};

		public Timer AnimatedIconTimer;

		private int animationTick;

		private readonly AsynchronousCommand _controlPanelCommand;

		private readonly AsynchronousCommand _confirmAccountCommand;

		private readonly AsynchronousCommand _loginAgainCommand;

		public static readonly PropertyData IconSourceProperty = ModelBase.RegisterProperty<string>("IconSource", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData StatusProperty = ModelBase.RegisterProperty<string>("Status", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData DownloadSpeedTextProperty = ModelBase.RegisterProperty<string>("DownloadSpeedText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData UploadSpeedTextProperty = ModelBase.RegisterProperty<string>("UploadSpeedText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData TooltipProperty = ModelBase.RegisterProperty<string>("Tooltip", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData IsDebugProperty = ModelBase.RegisterProperty<bool>("IsDebug", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData AccountStateNotificationProperty = ModelBase.RegisterProperty("AccountStateNotification", typeof(AccountStateNotification), null, new EventHandler<AdvancedPropertyChangedEventArgs>(TrayIconViewModel.<>c.<>9.<.cctor>b__95_0), true, true, true);

		public static readonly PropertyData AccountStateAvailableProperty = ModelBase.RegisterProperty<bool>("AccountStateAvailable", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ServerLocationsVisibleProperty = ModelBase.RegisterProperty("ServerLocationsVisible", typeof(bool), null, null, true, true, true);

		private IUIHelper UIHelper
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			}
		}

		private ILogger logger
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ILogger>(ServiceLocator.get_Default(), null);
			}
		}

		private IServiceEventsSource _vpnServiceSubscriber
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IServiceEventsSource>(ServiceLocator.get_Default(), null);
			}
		}

		private IVyprVPNController _vyprVpnController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			}
		}

		public ICommand ClearCredentialsCommand
		{
			get;
			private set;
		}

		public ICommand LogInCommand
		{
			get;
			private set;
		}

		public ICommand OpenMainWindowCommand
		{
			get;
			private set;
		}

		public ICommand QuitCommand
		{
			get;
			private set;
		}

		public ICommand ConnectCommand
		{
			get;
			private set;
		}

		public ICommand DisconnectCommand
		{
			get;
			private set;
		}

		public ICommand CancelConnectCommand
		{
			get;
			private set;
		}

		public ICommand FastestServerCommand
		{
			get;
			private set;
		}

		public ICommand ShowServerListWindowCommand
		{
			get;
			private set;
		}

		public IVyprVPNController VyprVPNController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		public string IconSource
		{
			get
			{
				return base.GetValue<string>(TrayIconViewModel.IconSourceProperty);
			}
			set
			{
				base.SetValue(TrayIconViewModel.IconSourceProperty, value);
			}
		}

		public string Status
		{
			get
			{
				return base.GetValue<string>(TrayIconViewModel.StatusProperty);
			}
			set
			{
				base.SetValue(TrayIconViewModel.StatusProperty, value);
			}
		}

		public string DownloadSpeedText
		{
			get
			{
				return base.GetValue<string>(TrayIconViewModel.DownloadSpeedTextProperty);
			}
			set
			{
				base.SetValue(TrayIconViewModel.DownloadSpeedTextProperty, value);
			}
		}

		public string UploadSpeedText
		{
			get
			{
				return base.GetValue<string>(TrayIconViewModel.UploadSpeedTextProperty);
			}
			set
			{
				base.SetValue(TrayIconViewModel.UploadSpeedTextProperty, value);
			}
		}

		public string Tooltip
		{
			get
			{
				return base.GetValue<string>(TrayIconViewModel.TooltipProperty);
			}
			set
			{
				base.SetValue(TrayIconViewModel.TooltipProperty, value);
			}
		}

		public bool IsDebug
		{
			get
			{
				return base.GetValue<bool>(TrayIconViewModel.IsDebugProperty);
			}
			set
			{
				base.SetValue(TrayIconViewModel.IsDebugProperty, value);
			}
		}

		public AccountStateNotification AccountStateNotification
		{
			get
			{
				return base.GetValue<AccountStateNotification>(TrayIconViewModel.AccountStateNotificationProperty);
			}
			set
			{
				base.SetValue(TrayIconViewModel.AccountStateNotificationProperty, value);
			}
		}

		public bool AccountStateAvailable
		{
			get
			{
				return base.GetValue<bool>(TrayIconViewModel.AccountStateAvailableProperty);
			}
			set
			{
				base.SetValue(TrayIconViewModel.AccountStateAvailableProperty, value);
			}
		}

		public bool ServerLocationsVisible
		{
			get
			{
				return base.GetValue<bool>(TrayIconViewModel.ServerLocationsVisibleProperty);
			}
			set
			{
				base.SetValue(TrayIconViewModel.ServerLocationsVisibleProperty, value);
			}
		}

		public TrayIconViewModel()
		{
			try
			{
				this.InitializeCommands();
				this.RegisterMessages();
				this.IconSource = TrayIconViewModel.ICON_DISCONNECTED;
				this.AnimatedIconTimer = new Timer(new TimerCallback(this.AnimateIcon), null, -1, 500);
				this.ConnectCommand = new AsynchronousCommand(delegate
				{
					this.VyprVPNController.Connect(8);
				}, () => this.VyprVPNController.IsLoggedIn && this.VyprVPNController.VPNServer != null, null);
				this.DisconnectCommand = new AsynchronousCommand(delegate
				{
					this.VyprVPNController.Disconnect(8);
				}, () => this.VyprVPNController.IsLoggedIn && this.VyprVPNController.VPNServer != null, null);
				this.CancelConnectCommand = new AsynchronousCommand(delegate
				{
					this.VyprVPNController.Disconnect(8);
				}, () => this.VyprVPNController.IsLoggedIn && this.VyprVPNController.VPNServer != null, null);
				SimpleCommand expr_AD = new SimpleCommand();
				expr_AD.set_ExecuteDelegate(delegate(object o)
				{
					if (this.VyprVPNController.IsLoggedIn)
					{
						this.VyprVPNController.FindAndConnectToFastestServer(8);
					}
				});
				this.FastestServerCommand = expr_AD;
				this.ShowServerListWindowCommand = new Command(new Action(ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowServerLocationWindow), null, null);
				this._controlPanelCommand = new AsynchronousCommand(delegate
				{
					string text = "No URL Created...";
					try
					{
						text = this._vyprVpnController.GetControlPanelLink();
						Process.Start(text);
					}
					catch (Exception ex2)
					{
						this.logger.Log(1, "Unable to shell exec manage account URL {0}: {1}", new object[]
						{
							text,
							ex2.Message
						});
					}
					MessageBase<NotificationStateChangedMessage, Type>.SendWith(this.AccountStateNotification.GetType(), null);
				}, null, null);
				this._loginAgainCommand = new AsynchronousCommand(delegate
				{
					try
					{
						this._vyprVpnController.Logout();
					}
					catch (Exception ex2)
					{
						this.logger.Log(1, "Unable to log user out to retry login: {0}", new object[]
						{
							ex2.Message
						});
					}
					ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).ActiveScreen = Screen.Login;
					MessageBase<NotificationStateChangedMessage, Type>.SendWith(this.AccountStateNotification.GetType(), null);
				}, null, null);
				this._vpnServiceSubscriber.AuthenticationErrorEvent += delegate(object sender, AuthenticationErrorEventArgs args)
				{
					switch (args.get_Error())
					{
					case 0:
						if (this._vyprVpnController.IsLoggedIn)
						{
							this.AccountStateNotification = new AccountStateNotification
							{
								Message = Resources.AuthenticationError,
								CommandMessage = Resources.LoginAgain,
								Command = this._loginAgainCommand
							};
						}
						break;
					case 1:
						break;
					case 2:
						this.AccountStateNotification = new AccountStateNotification
						{
							Message = Resources.AccountUnconfirmed,
							CommandMessage = Resources.ConfirmAccount,
							Command = this._controlPanelCommand
						};
						return;
					case 3:
						this.AccountStateNotification = new AccountStateNotification
						{
							Message = Resources.AccountLocked,
							CommandMessage = Resources.MoreInfo,
							Command = this._controlPanelCommand
						};
						return;
					default:
						return;
					}
				};
				MessageBase<NotificationStateChangedMessage, Type>.Register(this, delegate(NotificationStateChangedMessage message)
				{
					AccountStateNotification accountStateNotification = this.AccountStateNotification;
					if (accountStateNotification != null && message.get_Data() == accountStateNotification.GetType())
					{
						this.AccountStateNotification = null;
					}
				}, null);
			}
			catch (Exception ex)
			{
				this.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				throw;
			}
		}

		private void InitializeCommands()
		{
			SimpleCommand expr_06 = new SimpleCommand();
			Predicate<object> arg_26_1;
			if ((arg_26_1 = TrayIconViewModel.<>c.<>9__91_0) == null)
			{
				arg_26_1 = (TrayIconViewModel.<>c.<>9__91_0 = new Predicate<object>(TrayIconViewModel.<>c.<>9.<InitializeCommands>b__91_0));
			}
			expr_06.set_CanExecuteDelegate(arg_26_1);
			expr_06.set_ExecuteDelegate(delegate(object o)
			{
				ServiceLocatorExtensions.ResolveType<IIPCServer>(ObjectExtensions.GetServiceLocator(this), null).ClearCredentials();
			});
			this.ClearCredentialsCommand = expr_06;
			SimpleCommand expr_48 = new SimpleCommand();
			expr_48.set_CanExecuteDelegate((object o) => !this.VyprVPNController.IsLoggedIn);
			expr_48.set_ExecuteDelegate(delegate(object o)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowApplicationWindow();
				ServiceLocatorExtensions.ResolveType<IUIState>(ObjectExtensions.GetServiceLocator(this), null).ActiveScreen = Screen.Login;
			});
			this.LogInCommand = expr_48;
			SimpleCommand expr_77 = new SimpleCommand();
			Action<object> arg_97_1;
			if ((arg_97_1 = TrayIconViewModel.<>c.<>9__91_4) == null)
			{
				arg_97_1 = (TrayIconViewModel.<>c.<>9__91_4 = new Action<object>(TrayIconViewModel.<>c.<>9.<InitializeCommands>b__91_4));
			}
			expr_77.set_ExecuteDelegate(arg_97_1);
			this.OpenMainWindowCommand = expr_77;
			SimpleCommand expr_A7 = new SimpleCommand();
			expr_A7.set_ExecuteDelegate(delegate(object o)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).QuitUI(this.VyprVPNController, this.AnimatedIconTimer);
			});
			this.QuitCommand = expr_A7;
		}

		private void RegisterMessages()
		{
			MessageBase<VyprVPNStateChangedMessage, IVyprVPNController>.Register(this, delegate(VyprVPNStateChangedMessage e)
			{
				this.UpdateConnectionState(e.get_Data().ConnectionStatus);
			}, null);
			MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.Register(this, delegate(AuthenticationStateChangedMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					if (e.get_Data().AuthenticationState == null)
					{
						this.Status = Resources.NotLoggedIn;
						this.IconSource = TrayIconViewModel.ICON_DISCONNECTED;
						this.Tooltip = Resources.NotLoggedIn;
						this.AccountStateNotification = null;
						this.ServerLocationsVisible = false;
						return;
					}
					this.UpdateConnectionState(this.VyprVPNController.ConnectionStatus);
				});
			}, null);
			MessageBase<ThroughputMeasuredMessage, ThroughputMeasurement>.Register(this, delegate(ThroughputMeasuredMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					ThroughputDisplayConverter throughputDisplayConverter = new ThroughputDisplayConverter();
					this.DownloadSpeedText = (string)throughputDisplayConverter.Convert(e.get_Data().Snapshot.get_DownstreamBitsPerSecond(), typeof(string), "bps", null);
					this.UploadSpeedText = (string)throughputDisplayConverter.Convert(e.get_Data().Snapshot.get_UpstreamBitsPerSecond(), typeof(string), "bps", null);
				});
			}, null);
			MessageBase<TimeConnectedChangedMessage, string>.Register(this, delegate(TimeConnectedChangedMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.Tooltip = string.Format("{0} {1}", Resources.ConnectedLabel, e.get_Data());
					this.Status = string.Format("{0} - {1}", Resources.Connected, e.get_Data());
				});
			}, null);
		}

		private void UpdateConnectionState(ConnectionStatus connectionStatus)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.ServerLocationsVisible = false;
				if (this.VyprVPNController.IsLoggedIn)
				{
					switch (connectionStatus)
					{
					case 0:
						this.Status = Resources.Disconnected;
						this.IconSource = TrayIconViewModel.ICON_DISCONNECTED;
						this.Tooltip = Resources.Disconnected;
						this.ServerLocationsVisible = true;
						break;
					case 1:
						break;
					case 2:
						this.Status = Resources.Connecting;
						this.Tooltip = string.Format("{0}", Resources.Connecting);
						this.AnimatedIconTimer.Change(0, 500);
						return;
					case 3:
						this.Status = Resources.Disconnecting;
						this.Tooltip = string.Format("{0}", Resources.Disconnecting);
						this.AnimatedIconTimer.Change(0, 500);
						return;
					case 4:
						this.Status = Resources.Connected;
						this.IconSource = TrayIconViewModel.ICON_CONNECTED;
						this.Tooltip = Resources.ConnectedLabel;
						return;
					default:
						return;
					}
				}
			});
		}

		private void AnimateIcon(object state)
		{
			ConnectionStatus connectionStatus = this.VyprVPNController.ConnectionStatus;
			if (connectionStatus == 2 || connectionStatus == 3)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					if (this.VyprVPNController.ConnectionStatus == 3 || this.VyprVPNController.ConnectionStatus == 2)
					{
						this.IconSource = TrayIconViewModel.ICONS_CONNECTING[this.animationTick % TrayIconViewModel.ICONS_CONNECTING.Length];
					}
				});
				this.animationTick++;
				return;
			}
			this.AnimatedIconTimer.Change(-1, 500);
		}
	}
}

using Catel.IoC;
using Catel.Messaging;
using Catel.Services;
using GoldenFrogUT.Utilities;
using Log;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Interop;
using System.Windows.Markup;
using System.Windows.Media.Animation;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Properties;
using VyprVPN.ViewModels;
using VyprVPN.Views.FeedbackDialogs;
using VyprVPN.Views.MainWindow;
using VyprVPN.Views.MainWindow.ServerListWindow;
using VyprVPN.Views.OnboardingWindow;
using VyprVPN.Views.PaymentMethodExpiredDialog;
using VyprVPN.Views.QuitDialog;
using VyprVPN.Views.UbaExpiredDialog;

namespace VyprVPN
{
	public class UIHelper : IUIHelper
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly UIHelper.<>c <>9 = new UIHelper.<>c();

			public static Action <>9__20_0;

			public static Action <>9__21_0;

			internal void <TerminateApp>b__20_0()
			{
				Application.Current.Shutdown();
			}

			internal void <ShowCustomerSupportDialog>b__21_0()
			{
				new FeedbackWindow(new ContactSupportViewModel())
				{
					Owner = null
				}.ShowDialog();
			}
		}

		private EventWaitHandle _uiDoneInitializingEventWaitHandle = new EventWaitHandle(false, EventResetMode.ManualReset);

		private Task _waitForServiceFullyStartedThreadTask;

		private CancellationTokenSource _waitForServiceFullyStartedThreadCancellationTokenSource;

		private bool loadingApplicationWindow;

		private OnboardingWindowView onboardingWindowView;

		private ServerSelectionWindowView serverSelectionWindowView;

		private MainWindowView mainWindowView;

		private object _showNewFeatureModalsLock = new object();

		private bool _newFeatureModalsShown;

		private ILogger logger
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ILogger>(ServiceLocator.get_Default(), null);
			}
		}

		public void Dispatch(Action action)
		{
			if (action == null)
			{
				throw new ArgumentNullException("action");
			}
			IDispatcherService dispatcherService = ServiceLocatorExtensions.ResolveType<IDispatcherService>(ServiceLocator.get_Default(), null);
			if (dispatcherService != null)
			{
				dispatcherService.BeginInvokeIfRequired(action);
				return;
			}
			this.logger.Log(3, "ServiceLocator could not resolve IDispatcherService");
			throw new Exception("ServiceLocator could not resolve IDispatcherService");
		}

		public void BeginStoryboard(FrameworkElement element, string resourceKey)
		{
			Storyboard storyboard = element.TryFindResource(resourceKey) as Storyboard;
			if (storyboard != null)
			{
				storyboard.Begin();
				return;
			}
			string text = string.Format("Storyboard '{0}' could not be located in the resource dictionary tree belonging to FrameworkElement '{1}' of type '{2}'", resourceKey, string.IsNullOrEmpty(element.Name) ? "(unnamed)" : element.Name, element.GetType());
			this.logger.Log(3, text);
			throw new Exception(text);
		}

		public void ShowApplicationWindow()
		{
			this.Dispatch(delegate
			{
				try
				{
					if (this.loadingApplicationWindow)
					{
						this.logger.Log(0, "Already loading main window!");
					}
					else
					{
						this.logger.Log(0, "Checking if the UI is ready for the main window to be opened.");
						IVyprVPNController vyprVPNController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
						if (vyprVPNController == null || !vyprVPNController.IsServiceFullyStarted)
						{
							this.logger.Log(0, "UI is not yet ready to open, so we launch a thread and wait for the signal.");
							this.StartWaitForServiceFullyStartedThread();
						}
						else
						{
							this.logger.Log(0, "UI was ready to open, so we continue with showing main window.");
							this.loadingApplicationWindow = true;
							if (this.mainWindowView == null && this.onboardingWindowView == null)
							{
								MessageBase<UIStateChangedMessage, IUIState>.Register(this, new Action<UIStateChangedMessage>(this.OnUIStateChanged), null);
							}
							if (vyprVPNController.IsLoggedIn)
							{
								if (this.onboardingWindowView != null)
								{
									this.onboardingWindowView.Close();
								}
								if (this.mainWindowView == null)
								{
									this.mainWindowView = (this.mainWindowView ?? new MainWindowView());
									UIHelper.SetupAnApplicationWindow(this.mainWindowView);
								}
								UIHelper.ShowAnApplicationWindow(this.mainWindowView);
								this.ShowNewFeatureModals();
							}
							else
							{
								if (this.mainWindowView != null)
								{
									this.mainWindowView.Close();
								}
								if (this.onboardingWindowView == null)
								{
									this.onboardingWindowView = (this.onboardingWindowView ?? new OnboardingWindowView());
									UIHelper.SetupAnApplicationWindow(this.onboardingWindowView);
								}
								UIHelper.ShowAnApplicationWindow(this.onboardingWindowView);
							}
							this.loadingApplicationWindow = false;
						}
					}
				}
				catch (Exception ex)
				{
					this.logger.Log(1, "Error occurred while showing the main window: {0}", new object[]
					{
						ex
					});
				}
			});
		}

		public void ShowMessage(string message, Action<MessageResult> completedCallback = null)
		{
			if (string.IsNullOrWhiteSpace(message))
			{
				this.logger.Log(0, "Null message can not be displayed using ShowMessage.");
				return;
			}
			this.Dispatch(delegate
			{
				MessageResult obj = await ServiceLocatorExtensions.ResolveType<IMessageService>(ServiceLocator.get_Default(), null).Show(message, string.Empty, 1, 1);
				completedCallback(obj);
			});
		}

		public void ShowError(Exception exc)
		{
			this.Dispatch(delegate
			{
				ServiceLocatorExtensions.ResolveType<IMessageService>(ServiceLocator.get_Default(), null).ShowError(exc);
			});
		}

		public void ShowServerLocationWindow()
		{
			try
			{
				this.serverSelectionWindowView = (this.serverSelectionWindowView ?? new ServerSelectionWindowView());
				this.serverSelectionWindowView.Closed += new EventHandler(this.serverSelectionWindowView_Closed);
				this.serverSelectionWindowView.Show();
				this.serverSelectionWindowView.Focus();
			}
			catch (Exception ex)
			{
				this.logger.Log(1, "Error occurred while showing the server selection window: {0}", new object[]
				{
					ex
				});
			}
		}

		public bool IsApplicationActive()
		{
			using (IEnumerator<Window> enumerator = Application.Current.Windows.OfType<Window>().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if (UIHelper.IsActive(enumerator.Current))
					{
						return true;
					}
				}
			}
			return false;
		}

		public bool IsApplicationWindowShown()
		{
			return (this.mainWindowView != null || this.onboardingWindowView != null) && ((this.mainWindowView != null && this.mainWindowView.Visibility == Visibility.Visible && this.mainWindowView.ShowInTaskbar) || (this.onboardingWindowView != null && this.onboardingWindowView.Visibility == Visibility.Visible && this.onboardingWindowView.ShowInTaskbar));
		}

		public void QuitUI(IVyprVPNController vyprVpnController, Timer animatedIconTimer)
		{
			if (vyprVpnController.ConnectionStatus == 2 || vyprVpnController.ConnectionStatus == 4)
			{
				bool flag;
				if (vyprVpnController.KillSwitchEnabled && vyprVpnController.KillSwitchMode == 1)
				{
					string message = Resources.KillSwitchDisconnectAndQuitMessage;
					if (vyprVpnController.KillLanTrafficEnabled)
					{
						message = Resources.KillSwitchLanDisconnectAndQuitMessage;
					}
					flag = (new QuitDialog(Resources.KillSwitchActiveNotice, message, Resources.DoYouWantToQuit, "", "", "", false, true, false).ShowDialog() ?? false);
				}
				else
				{
					flag = (new QuitDialog(Resources.DisconnectAndQuitTitle, Resources.DisconnectAndQuitMessage, Resources.DoYouWantToQuit, "", "", "", false, true, false).ShowDialog() ?? false);
				}
				if (flag)
				{
					vyprVpnController.Disconnect(5);
					if (animatedIconTimer != null)
					{
						animatedIconTimer.Change(-1, -1);
					}
					this.TerminateApp();
					return;
				}
			}
			else
			{
				if (vyprVpnController.KillSwitchActive && vyprVpnController.KillSwitchMode == 1 && !(new QuitDialog(Resources.KillSwitchActiveNotice, Resources.SystemKillSwitchWarning, Resources.DoYouWantToQuit, "", "", "", false, true, false).ShowDialog() ?? false))
				{
					return;
				}
				if (animatedIconTimer != null)
				{
					animatedIconTimer.Change(-1, -1);
				}
				this.TerminateApp();
			}
		}

		public void TerminateApp()
		{
			IDispatcherService dispatcherService = ServiceLocatorExtensions.ResolveType<IDispatcherService>(ServiceLocator.get_Default(), null);
			if (dispatcherService != null)
			{
				IDispatcherService arg_2F_0 = dispatcherService;
				Action arg_2F_1;
				if ((arg_2F_1 = UIHelper.<>c.<>9__20_0) == null)
				{
					arg_2F_1 = (UIHelper.<>c.<>9__20_0 = new Action(UIHelper.<>c.<>9.<TerminateApp>b__20_0));
				}
				arg_2F_0.Invoke(arg_2F_1);
				return;
			}
			this.logger.Log(1, "Dispatcher was null when a shutdown was attempted. Hoping the current thread is the main thread.");
			Application.Current.Shutdown();
		}

		public void ShowCustomerSupportDialog()
		{
			IUIHelper arg_2B_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null);
			Action arg_2B_1;
			if ((arg_2B_1 = UIHelper.<>c.<>9__21_0) == null)
			{
				arg_2B_1 = (UIHelper.<>c.<>9__21_0 = new Action(UIHelper.<>c.<>9.<ShowCustomerSupportDialog>b__21_0));
			}
			arg_2B_0.Dispatch(arg_2B_1);
		}

		public void ShowUbaAccountExpiredDialog(IVyprVPNController vyprVpnController)
		{
			try
			{
				if (new UbaExpiredDialog(vyprVpnController.DataUsage.get_MBMax(), Resources.MegaByte).ShowDialog() ?? false)
				{
					vyprVpnController.LaunchUpgradeAccountUrl();
				}
			}
			catch (Exception ex)
			{
				this.logger.Log(1, "Error occurred while launching the UBA expired dialog: {0}", new object[]
				{
					ex
				});
			}
		}

		public void ShowNonRecurringPaymentMethodExpiredDialog(IVyprVPNController vyprVpnController)
		{
			try
			{
				if (new PaymentMethodExpiredDialog().ShowDialog() ?? false)
				{
					vyprVpnController.LaunchManageAccountUrl();
				}
			}
			catch (Exception ex)
			{
				this.logger.Log(1, "Error occurred while launching the non recurring payment method expired dialog: {0}", new object[]
				{
					ex
				});
			}
		}

		public void UpdateCurrentThreadLocale()
		{
			CultureInfo currentCulture = Thread.CurrentThread.CurrentCulture;
			try
			{
				ISettings settings = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				this.logger.Log(0, "Attempting to switch to {0}", new object[]
				{
					settings.SelectedUILocale
				});
				CultureInfo cultureInfo = new CultureInfo(settings.SelectedUILocale);
				Thread.CurrentThread.CurrentCulture = cultureInfo;
				Thread.CurrentThread.CurrentUICulture = cultureInfo;
				ILanguageService expr_65 = DependencyResolverExtensions.Resolve<ILanguageService>(ObjectExtensions.GetDependencyResolver(this), null);
				expr_65.set_PreferredCulture(cultureInfo);
				expr_65.set_FallbackCulture(cultureInfo);
			}
			catch
			{
				this.logger.Log(1, "Failed to switch the locale, resetting to system default: {0}", new object[]
				{
					currentCulture
				});
			}
		}

		public void LocalizeUI(DependencyObject uiObject, Thread uiThread, bool forceDidgitLocalization = false)
		{
			CultureInfo preferredCulture = DependencyResolverExtensions.Resolve<ILanguageService>(ObjectExtensions.GetDependencyResolver(this), null).get_PreferredCulture();
			uiThread.CurrentCulture = preferredCulture;
			uiThread.CurrentUICulture = preferredCulture;
			if (forceDidgitLocalization)
			{
				preferredCulture.NumberFormat.DigitSubstitution = DigitShapes.NativeNational;
				if (uiObject is FrameworkElement)
				{
					((FrameworkElement)uiObject).Language = XmlLanguage.GetLanguage(preferredCulture.IetfLanguageTag);
				}
			}
			if (preferredCulture.TextInfo.IsRightToLeft)
			{
				FrameworkElement.SetFlowDirection(uiObject, FlowDirection.RightToLeft);
				return;
			}
			FrameworkElement.SetFlowDirection(uiObject, FlowDirection.LeftToRight);
		}

		private void StartWaitForServiceFullyStartedThread()
		{
			CancellationTokenSource waitForServiceFullyStartedThreadCancellationTokenSource = this._waitForServiceFullyStartedThreadCancellationTokenSource;
			if (waitForServiceFullyStartedThreadCancellationTokenSource != null)
			{
				waitForServiceFullyStartedThreadCancellationTokenSource.Cancel();
			}
			this._waitForServiceFullyStartedThreadCancellationTokenSource = new CancellationTokenSource();
			this._waitForServiceFullyStartedThreadTask = Task.Run(delegate
			{
				this.WaitForServiceFullyStartedThread(this._waitForServiceFullyStartedThreadCancellationTokenSource.Token);
			}, this._waitForServiceFullyStartedThreadCancellationTokenSource.Token);
		}

		private void WaitForUiSetReady()
		{
			if (this._uiDoneInitializingEventWaitHandle == null || !EventWaitHandleExtensions.YieldingInfiniteWaitOne(this._uiDoneInitializingEventWaitHandle, 1000))
			{
				return;
			}
			this.logger.Log(0, "UI done initializing event received.");
			this.ShowApplicationWindow();
		}

		private void serverSelectionWindowView_Closed(object sender, EventArgs e)
		{
			try
			{
				ServerSelectionWindowView serverSelectionWindowView = this.serverSelectionWindowView;
				if (serverSelectionWindowView != null)
				{
					serverSelectionWindowView.Closed -= new EventHandler(this.serverSelectionWindowView_Closed);
				}
			}
			catch (Exception ex)
			{
				this.logger.Log(1, "Error occurred while closing the server selection window: {0}", new object[]
				{
					ex
				});
			}
			this.serverSelectionWindowView = null;
		}

		[DllImport("user32.dll")]
		private static extern IntPtr GetForegroundWindow();

		private static bool IsActive(Window wnd)
		{
			return wnd != null && UIHelper.GetForegroundWindow() == new WindowInteropHelper(wnd).Handle;
		}

		private static void SetupAnApplicationWindow(Window window)
		{
			window.Closing += delegate(object sennder, CancelEventArgs args)
			{
				args.Cancel = true;
				window.Visibility = Visibility.Collapsed;
				window.ShowInTaskbar = false;
			};
			window.Show();
		}

		private static void ShowAnApplicationWindow(Window window)
		{
			window.ShowInTaskbar = true;
			window.Visibility = Visibility.Visible;
			window.WindowState = WindowState.Normal;
			window.Focus();
		}

		private void ShowNewFeatureModals()
		{
			object showNewFeatureModalsLock = this._showNewFeatureModalsLock;
			lock (showNewFeatureModalsLock)
			{
				if (this._newFeatureModalsShown)
				{
					return;
				}
				this._newFeatureModalsShown = true;
			}
			try
			{
				new NewFeatureModalManager().ShowNewFeatureModals();
			}
			catch (Exception arg)
			{
				this.logger.Log(3, string.Format("Unexpected error while trying to show new-feature modals: {0}", arg));
			}
		}

		private void OnUIStateChanged(UIStateChangedMessage obj)
		{
			Screen activeScreen = obj.get_Data().ActiveScreen;
			if (activeScreen == Screen.Main || activeScreen == Screen.Login)
			{
				this.ShowApplicationWindow();
			}
		}

		private void WaitForServiceFullyStartedThread(CancellationToken cancellationToken)
		{
			try
			{
				this.logger.Log(0, "StartWaitForServiceFullyStartedThread started");
				WaitHandle[] waitHandles = new WaitHandle[]
				{
					cancellationToken.WaitHandle
				};
				while (!cancellationToken.IsCancellationRequested)
				{
					WaitHandle.WaitAny(waitHandles, 500);
					IVyprVPNController vyprVPNController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
					if (vyprVPNController != null && vyprVPNController.IsServiceFullyStarted)
					{
						this.logger.Log(0, "Service is fully initialized. We can now show the main window.");
						this.ShowApplicationWindow();
						break;
					}
				}
			}
			finally
			{
				this.logger.Log(0, "StartWaitForServiceFullyStartedThread exiting");
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using Catel.Services;
using GoldenFrogUX;
using Log;
using System;
using System.Windows;
using VyprVPN.Messages;
using VyprVPN.Properties;
using VyprVPN.ViewModels;
using VyprVPN.Views.Graph;

namespace VyprVPN
{
	[Serializable]
	public class UIState : ViewModelBase, IUIState
	{
		private static readonly FileLogger logger = FileLogger.get_Instance();

		private Screen activeScreen;

		private OnboardingViews _onboardingViewState;

		public static readonly PropertyData ShowGraphInMainWindowProperty = ModelBase.RegisterProperty<bool>("ShowGraphInMainWindow", typeof(bool), true, null, true, true, true);

		public Screen ActiveScreen
		{
			get
			{
				return this.activeScreen;
			}
			set
			{
				this.activeScreen = value;
				if (value == Screen.Login)
				{
					this._onboardingViewState = OnboardingViews.Login;
				}
				else if (value == Screen.CreateAccount)
				{
					this._onboardingViewState = OnboardingViews.CreateAccount;
				}
				ServiceLocatorExtensions.ResolveType<IDispatcherService>(ObjectExtensions.GetServiceLocator(this), null).Invoke(delegate
				{
					try
					{
						MessageBase<UIStateChangedMessage, IUIState>.SendWith(this, null);
					}
					catch (InvalidOperationException arg)
					{
						UIState.logger.Log(3, string.Format("Potential concurrency issue detected with Catel: {0}", arg));
					}
				});
			}
		}

		public OnboardingViews OnboardingViewState
		{
			get
			{
				return this._onboardingViewState;
			}
			set
			{
				this._onboardingViewState = value;
				ServiceLocatorExtensions.ResolveType<IDispatcherService>(ObjectExtensions.GetServiceLocator(this), null).Invoke(delegate
				{
					try
					{
						MessageBase<UIStateChangedMessage, IUIState>.SendWith(this, null);
					}
					catch (InvalidOperationException arg)
					{
						UIState.logger.Log(3, string.Format("Potential concurrency issue detected with Catel (*OVS*): {0}", arg));
					}
				});
			}
		}

		public bool ShowGraphInMainWindow
		{
			get
			{
				return base.GetValue<bool>(UIState.ShowGraphInMainWindowProperty);
			}
			set
			{
				base.SetValue(UIState.ShowGraphInMainWindowProperty, value);
			}
		}

		public void TearOutGraph()
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.ShowGraphInMainWindow = false;
				Rect graphWindowStartupLocation = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null).GraphWindowStartupLocation;
				graphWindowStartupLocation.Y = ((graphWindowStartupLocation.Y == -186200.0) ? (Application.Current.MainWindow.Top + Application.Current.MainWindow.ActualHeight / 2.0) : graphWindowStartupLocation.Y);
				graphWindowStartupLocation.X = ((graphWindowStartupLocation.X == -186200.0) ? (Application.Current.MainWindow.Left + Application.Current.MainWindow.Width / 2.0) : graphWindowStartupLocation.X);
				GraphWindowView expr_B3 = new GraphWindowView();
				expr_B3.DataContext = new GraphWindowViewModel();
				WindowHelpers.RestoreWindowLocation(expr_B3, graphWindowStartupLocation);
				expr_B3.Show();
			});
		}
	}
}

using System;

namespace VyprVPN
{
	public enum UpdateCheckState
	{
		NoStatus,
		Checking,
		NoneFound,
		Error
	}
}

using System;

namespace VyprVPN
{
	public enum UpdateDownloadState
	{
		Prompt,
		Downloading,
		Error
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogUT.GoldenFrog.Enums;
using GoldenFrogUT.Utilities;
using GoldenFrogVPN;
using GoldenFrogVPN.Classes;
using GoldenFrogVPN.Enums;
using GoldenFrogVPN.Interfaces;
using Log;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Security;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Messages.Account;
using VyprVPN.Properties;

namespace VyprVPN
{
	[Serializable]
	public class VyprVPNController : ViewModelBase, IVyprVPNController, INotifyPropertyChanged
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly VyprVPNController.<>c <>9 = new VyprVPNController.<>c();

			public static Func<VPNServer, bool> <>9__40_0;

			public static Func<VPNServer, bool> <>9__40_1;

			public static Converter<IApplicationItem, ApplicationItem> <>9__170_0;

			public static Func<VPNServer, IVPNServer> <>9__229_0;

			public static Func<VPNServer, bool> <>9__345_0;

			internal bool <vpnServiceSubscriber_AccountSettingsChanged>b__40_0(VPNServer s)
			{
				return s.get_IsPinned();
			}

			internal bool <vpnServiceSubscriber_AccountSettingsChanged>b__40_1(VPNServer s)
			{
				return s.get_IsPinned();
			}

			internal ApplicationItem <set_ApplicationList>b__170_0(IApplicationItem x)
			{
				return (ApplicationItem)x;
			}

			internal IVPNServer <get_Servers>b__229_0(VPNServer s)
			{
				return s;
			}

			internal bool <SaveFavorites>b__345_0(VPNServer s)
			{
				return s.get_IsPinned();
			}
		}

		private static readonly FileLogger logger = FileLogger.get_Instance();

		private Timer connectedTimer;

		private DateTime connectionStartTime;

		private DateTime connectionStopTime;

		private bool currentConnectErrored;

		private Protocol _previousProtocolBeingUsed = -1;

		private VyprConnectionEventCause currentConnectCause;

		private ConnectionErrorType _lastConnectionErrorType = 4;

		private bool _connectionFailureDialogShownToUser;

		private bool _reconnectRequested;

		private VyprConnectionEventCause _reconnectRequestCause;

		private static readonly int[] UbaThresholds = new int[]
		{
			80,
			95,
			100
		};

		private bool _killSwitchActive;

		public static readonly PropertyData IsNatFirewallActiveProperty = ModelBase.RegisterProperty<bool>("IsNatFirewallActive", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData DataUsageProperty = ModelBase.RegisterProperty("DataUsage", typeof(DataUsage), null, null, true, true, true);

		public static readonly PropertyData AccountLevelProperty = ModelBase.RegisterProperty<string>("AccountLevel", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData AccountTypeProperty = ModelBase.RegisterProperty<string>("AccountType", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData IsUsageBasedProperty = ModelBase.RegisterProperty<bool>("IsUsageBased", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData NonRecurringAccountHasExpiredProperty = ModelBase.RegisterProperty<bool>("NonRecurringAccountHasExpired", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IsConnectedProperty = ModelBase.RegisterProperty<bool>("IsConnected", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ConnectionStatusProperty = ModelBase.RegisterProperty<ConnectionStatus>("ConnectionStatus", typeof(ConnectionStatus), 0, null, true, true, true);

		public static readonly PropertyData ConnectionErrorProperty = ModelBase.RegisterProperty("ConnectionError", typeof(ConnectionError), null, null, true, true, true);

		public static readonly PropertyData AuthenticationStateProperty = ModelBase.RegisterProperty<AuthenticationState>("AuthenticationState", typeof(AuthenticationState), 0, null, true, true, true);

		public static readonly PropertyData AccountSettingsBagProperty = ModelBase.RegisterProperty("AccountSettingsBag", typeof(AccountSettingsBag), null, null, true, true, true);

		public static readonly PropertyData OpenVpnPortsAndTransportProtocolConfigsProperty = ModelBase.RegisterProperty("OpenVpnPortsAndTransportProtocolConfigs", typeof(OpenVpnPortsAndTransportProtocolConfigCollection), null, null, true, true, true);

		public static readonly PropertyData SelectedOpenVPNProtocolProperty = ModelBase.RegisterProperty<Protocol>("SelectedOpenVPNProtocol", typeof(Protocol), 3, null, true, true, true);

		public static readonly PropertyData SelectedOpenVpnLogVerbosityLevelProperty = ModelBase.RegisterProperty<int>("SelectedOpenVpnLogVerbosityLevel", typeof(int), 0, null, true, true, true);

		public static readonly PropertyData SelectedRouteDelayProperty = ModelBase.RegisterProperty<int>("SelectedRouteDelay", typeof(int), 0, null, true, true, true);

		public static readonly PropertyData SelectedTlsTimeoutProperty = ModelBase.RegisterProperty<int>("SelectedTlsTimeout", typeof(int), 0, null, true, true, true);

		public static readonly PropertyData SelectedTAPAdapterProperty = ModelBase.RegisterProperty<TapAdapterType>("SelectedTAPAdapter", typeof(TapAdapterType), 0, null, true, true, true);

		public static readonly PropertyData SelectedMtuProperty = ModelBase.RegisterProperty<int>("SelectedMtu", typeof(int), 0, null, true, true, true);

		public static readonly PropertyData AdditionalOpenVpnParametersProperty = ModelBase.RegisterProperty<string>("AdditionalOpenVpnParameters", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData ProtocolProperty = ModelBase.RegisterProperty<Protocol>("Protocol", typeof(Protocol), -1, null, true, true, true);

		public static readonly PropertyData CurrentConnectionProtocolProperty = ModelBase.RegisterProperty<Protocol>("CurrentConnectionProtocol", typeof(Protocol), -1, null, true, true, true);

		public static readonly PropertyData VPNServerProperty = ModelBase.RegisterProperty("VPNServer", typeof(IVPNServer), null, null, true, true, true);

		public static readonly PropertyData FastestServerSelectedProperty = ModelBase.RegisterProperty<bool>("FastestServerSelected", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData NextUbaThresholdProperty = ModelBase.RegisterProperty<int>("NextUbaThreshold", typeof(int), VyprVPNController.UbaThresholds[0], null, true, true, true);

		public static readonly PropertyData TimeConnectedStringProperty = ModelBase.RegisterProperty<bool>("TimeConnectedString", typeof(string), false, null, true, true, true);

		public static readonly PropertyData PublicIPProperty = ModelBase.RegisterProperty<string>("PublicIP", typeof(string), Resources.Detecting, null, true, true, true);

		public static readonly PropertyData PinnedServersProperty = ModelBase.RegisterProperty("PinnedServers", typeof(IEnumerable<VPNServer>), null, null, true, true, true);

		public static readonly PropertyData AppsListProperty = ModelBase.RegisterProperty<List<IApplicationItem>>("AppsList", typeof(IEnumerable<IApplicationItem>), new List<IApplicationItem>(), null, true, true, true);

		public static readonly PropertyData PerAppInitialStateProperty = ModelBase.RegisterProperty<PerAppBehavior>("PerAppInitialState", typeof(PerAppBehavior), 2, null, true, true, true);

		public static readonly PropertyData PerAppManagementEnabledProperty = ModelBase.RegisterProperty<bool>("PerAppManagementEnabled", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData AnalyticsEnabledProperty = ModelBase.RegisterProperty<bool>("AnalyticsEnabled", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData SendCrashReportsProperty = ModelBase.RegisterProperty<bool>("SendCrashReports", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData EnableConnectionLogProperty = ModelBase.RegisterProperty<bool>("EnableConnectionLog", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData ReconnectOnDisconnectProperty = ModelBase.RegisterProperty<bool>("ReconnectOnDisconnect", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData ConnectOnUnknownWifiProperty = ModelBase.RegisterProperty<bool>("ConnectOnUnknownWifi", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData ConnectOnUnknownWifiIgnoreSsidsProperty = ModelBase.RegisterProperty<bool>("ConnectOnUnknownWifiIgnoreSsids", typeof(List<string>), true, null, true, true, true);

		public static readonly PropertyData IsUpgradeAvailableProperty = ModelBase.RegisterProperty<bool>("IsUpgradeAvailable", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ConnectionAttemptsProperty = ModelBase.RegisterProperty<int>("ConnectionAttempts", typeof(int), 0, null, true, true, true);

		public static readonly PropertyData DisconnectsProperty = ModelBase.RegisterProperty<int>("Disconnects", typeof(int), 0, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData AnalyticsViewedCarouselProperty = ModelBase.RegisterProperty("AnalyticsViewedCarousel", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData ServiceContactedProperty = ModelBase.RegisterProperty("ServiceContacted", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData UpgradeInfoProperty = ModelBase.RegisterProperty("UpgradeInfo", typeof(UpgradeAvailableEventArgs), null, null, true, true, true);

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler ClearUpdateAvailable;

		private IServiceEventsSource ServiceEventsSource
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IServiceEventsSource>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private IIPCServer IPCServer
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IIPCServer>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private ICrypto Crypto
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ICrypto>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private IConnectionLog connectionLog
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IConnectionLog>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private IGeneralUtilities generalUtilities
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IGeneralUtilities>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private IRegistryUtilities RegistryUtilities
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IRegistryUtilities>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private ISettings UISettings
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
			}
		}

		private IUIHelper UIHelper
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			}
		}

		private bool AnalyticsViewedCarousel
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(VyprVPNController.AnalyticsViewedCarouselProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(VyprVPNController.AnalyticsViewedCarouselProperty, value);
			}
		}

		public bool IsInitialLoginCompleted
		{
			get
			{
				return this.GetServiceProperty<bool>("InitialLoginCompleted", false);
			}
			set
			{
				this.SetServiceProperty("InitialLoginCompleted", value);
			}
		}

		public bool IsServiceFullyStarted
		{
			get
			{
				return this.ServiceContacted && this.GetServiceProperty<bool>("IsServiceFullyStarted", false);
			}
			set
			{
				this.SetServiceProperty("IsServiceFullyStarted", value);
			}
		}

		public bool ServiceContacted
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(VyprVPNController.ServiceContactedProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(VyprVPNController.ServiceContactedProperty, value);
			}
		}

		public UpgradeAvailableEventArgs UpgradeInfo
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<UpgradeAvailableEventArgs>(VyprVPNController.UpgradeInfoProperty);
			}
			[CompilerGenerated]
			private set
			{
				base.SetValue(VyprVPNController.UpgradeInfoProperty, value);
			}
		}

		public string Username
		{
			get
			{
				return this.IPCServer.GetUsername();
			}
		}

		public bool IsLoggedIn
		{
			get
			{
				return this.ServiceContacted && this.IPCServer.GetAuthenticationState() > 0;
			}
		}

		public bool IsNatFirewallActive
		{
			get
			{
				return base.GetValue<bool>(VyprVPNController.IsNatFirewallActiveProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.IsNatFirewallActiveProperty, value);
			}
		}

		public DataUsage DataUsage
		{
			get
			{
				return base.GetValue<DataUsage>(VyprVPNController.DataUsageProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.DataUsageProperty, value);
				base.RaisePropertyChanged<DataUsage>(() => this.DataUsage);
			}
		}

		public string AccountLevel
		{
			get
			{
				return base.GetValue<string>(VyprVPNController.AccountLevelProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.AccountLevelProperty, value);
			}
		}

		public string AccountType
		{
			get
			{
				return base.GetValue<string>(VyprVPNController.AccountTypeProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.AccountTypeProperty, value);
			}
		}

		public bool IsUsageBased
		{
			get
			{
				return base.GetValue<bool>(VyprVPNController.IsUsageBasedProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.IsUsageBasedProperty, value);
			}
		}

		public bool NonRecurringAccountHasExpired
		{
			get
			{
				return base.GetValue<bool>(VyprVPNController.NonRecurringAccountHasExpiredProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.NonRecurringAccountHasExpiredProperty, value);
				base.RaisePropertyChanged<bool>(() => this.NonRecurringAccountHasExpired);
			}
		}

		public bool IsConnected
		{
			get
			{
				return base.GetValue<bool>(VyprVPNController.IsConnectedProperty);
			}
			set
			{
				if (this.IsConnected != value)
				{
					base.SetValue(VyprVPNController.IsConnectedProperty, value);
					this.connectedTimer.Change(value ? 0 : -1, 1000);
					MessageBase<ConnectedChangedMessage, bool>.SendWith(value, null);
				}
			}
		}

		public ConnectionStatus ConnectionStatus
		{
			get
			{
				return (ConnectionStatus)base.GetValue(VyprVPNController.ConnectionStatusProperty);
			}
			set
			{
				if (this.ConnectionStatus != value)
				{
					base.SetValue(VyprVPNController.ConnectionStatusProperty, value);
					this.IsConnected = (value == 4 || value == 3);
					if (value == null)
					{
						base.RaisePropertyChanged<Protocol>(() => this.CurrentConnectionProtocol);
					}
					if (!this.IsLoggedIn)
					{
						this.IsNatFirewallActive = (bool)VyprVPNController.IsNatFirewallActiveProperty.GetDefaultValue();
					}
					MessageBase<VyprVPNStateChangedMessage, IVyprVPNController>.SendWith(this, null);
				}
			}
		}

		public ConnectionError ConnectionError
		{
			get
			{
				return base.GetValue<ConnectionError>(VyprVPNController.ConnectionErrorProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.ConnectionErrorProperty, value);
				MessageBase<ConnectionErrorMessage, IVyprVPNController>.SendWith(this, null);
			}
		}

		public AuthenticationState AuthenticationState
		{
			get
			{
				return base.GetValue<AuthenticationState>(VyprVPNController.AuthenticationStateProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.AuthenticationStateProperty, value);
				MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.SendWith(this, null);
				base.RaisePropertyChanged<bool>(() => this.IsLoggedIn);
			}
		}

		public AccountSettingsBag AccountSettingsBag
		{
			get
			{
				return base.GetValue<AccountSettingsBag>(VyprVPNController.AccountSettingsBagProperty);
			}
			private set
			{
				try
				{
					string favorites = this.UISettings.Favorites;
					if (!string.IsNullOrEmpty(favorites) && value != null && value.get_Servers() != null)
					{
						string[] array = favorites.Split(new char[]
						{
							';'
						}, StringSplitOptions.RemoveEmptyEntries);
						for (int i = 0; i < array.Length; i++)
						{
							string favorite = array[i];
							VPNServer vPNServer = value.get_Servers().FirstOrDefault((VPNServer s) => s.get_FQDN() != null && s.get_FQDN() == favorite);
							if (vPNServer != null)
							{
								vPNServer.set_IsPinned(true);
							}
						}
					}
				}
				catch (Exception ex)
				{
					VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
					{
						ex
					});
				}
				base.SetValue(VyprVPNController.AccountSettingsBagProperty, value);
				if (value != null)
				{
					base.RaisePropertyChanged<Protocol>(() => this.CurrentConnectionProtocol);
				}
			}
		}

		public OpenVpnPortsAndTransportProtocolConfigCollection OpenVpnPortsAndTransportProtocolConfigs
		{
			get
			{
				return this.GetServiceProperty<OpenVpnPortsAndTransportProtocolConfigCollection>("OpenVpnPortsAndTransportProtocolConfigs", null) ?? new OpenVpnPortsAndTransportProtocolConfigCollection();
			}
			set
			{
				this.SetServiceProperty("OpenVpnPortsAndTransportProtocolConfigs", value);
			}
		}

		public Protocol SelectedOpenVPNProtocol
		{
			get
			{
				return this.GetServiceProperty<Protocol>("SelectedOpenVPNProtocol", 3);
			}
			set
			{
				this.SetServiceProperty("SelectedOpenVPNProtocol", value);
			}
		}

		public int SelectedOpenVpnLogVerbosityLevel
		{
			get
			{
				return this.GetServiceProperty<int>("SelectedOpenVpnLogVerbosityLevel", 0);
			}
			set
			{
				this.SetServiceProperty("SelectedOpenVpnLogVerbosityLevel", value);
			}
		}

		public int SelectedRouteDelay
		{
			get
			{
				return this.GetServiceProperty<int>("SelectedRouteDelay", 0);
			}
			set
			{
				this.SetServiceProperty("SelectedRouteDelay", value);
			}
		}

		public int SelectedTlsTimeout
		{
			get
			{
				return this.GetServiceProperty<int>("SelectedTlsTimeout", 0);
			}
			set
			{
				this.SetServiceProperty("SelectedTlsTimeout", value);
			}
		}

		public TapAdapterType SelectedTAPAdapter
		{
			get
			{
				return this.GetServiceProperty<TapAdapterType>("SelectedTapAdapterType", 0);
			}
			set
			{
				this.SetServiceProperty("SelectedTapAdapterType", value);
			}
		}

		public int SelectedMtu
		{
			get
			{
				return this.GetServiceProperty<int>("SelectedMtu", 0);
			}
			set
			{
				this.SetServiceProperty("SelectedMtu", value);
			}
		}

		public string AdditionalOpenVpnParameters
		{
			get
			{
				return this.GetServiceProperty<string>("AdditionalOpenVpnParameters", string.Empty);
			}
			set
			{
				this.SetServiceProperty("AdditionalOpenVpnParameters", value);
			}
		}

		public Protocol Protocol
		{
			get
			{
				return this.GetServiceProperty<Protocol>("VpnProtocol", 0);
			}
			set
			{
				if (this.ConnectionStatus != null && this._previousProtocolBeingUsed == -1)
				{
					this._previousProtocolBeingUsed = this.Protocol;
				}
				this.SetServiceProperty("VpnProtocol", value);
				base.RaisePropertyChanged<Protocol>(() => this.CurrentConnectionProtocol);
			}
		}

		public Protocol CurrentConnectionProtocol
		{
			get
			{
				if (this.ConnectionStatus != null && this._previousProtocolBeingUsed != -1)
				{
					VyprVPNController.logger.Log(0, "Returning previously used protocol {0} to UI", new object[]
					{
						this._previousProtocolBeingUsed
					});
					return this._previousProtocolBeingUsed;
				}
				this._previousProtocolBeingUsed = -1;
				VyprVPNController.logger.Log(0, "Returning protocol {0} from settings to UI", new object[]
				{
					this._previousProtocolBeingUsed
				});
				return this.Protocol;
			}
		}

		public IVPNServer VPNServer
		{
			get
			{
				return this.GetServiceProperty<IVPNServer>("VpnServer", null);
			}
			set
			{
				this.SetServiceProperty("VpnServer", value);
			}
		}

		public bool FastestServerSelected
		{
			get
			{
				return this.GetServiceProperty<bool>("FastestServerSelected", false);
			}
			set
			{
				this.SetServiceProperty("FastestServerSelected", value);
				MessageBase<LocationChangedMessage, IVPNServer>.SendWith(this.VPNServer, null);
			}
		}

		public int NextUbaThreshold
		{
			get
			{
				return base.GetValue<int>(VyprVPNController.NextUbaThresholdProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.NextUbaThresholdProperty, value);
				base.RaisePropertyChanged<int>(() => this.NextUbaThreshold);
			}
		}

		public string TimeConnectedString
		{
			get
			{
				return base.GetValue<string>(VyprVPNController.TimeConnectedStringProperty);
			}
			private set
			{
				this.UIHelper.Dispatch(delegate
				{
					this.SetValue(VyprVPNController.TimeConnectedStringProperty, value);
					MessageBase<TimeConnectedChangedMessage, string>.SendWith(value, null);
				});
			}
		}

		public string PublicIP
		{
			get
			{
				return base.GetValue<string>(VyprVPNController.PublicIPProperty);
			}
			private set
			{
				base.SetValue(VyprVPNController.PublicIPProperty, value);
			}
		}

		public IEnumerable<VPNServer> PinnedServers
		{
			get
			{
				return (IEnumerable<VPNServer>)base.GetValue(VyprVPNController.PinnedServersProperty);
			}
			set
			{
				base.SetValue(VyprVPNController.PinnedServersProperty, value);
			}
		}

		public IEnumerable<IApplicationItem> ApplicationList
		{
			get
			{
				return this.GetServiceProperty<List<ApplicationItem>>("ApplicationList", null).AsEnumerable<IApplicationItem>();
			}
			set
			{
				if (value != null)
				{
					List<IApplicationItem> arg_2A_0 = value.ToList<IApplicationItem>();
					Converter<IApplicationItem, ApplicationItem> arg_2A_1;
					if ((arg_2A_1 = VyprVPNController.<>c.<>9__170_0) == null)
					{
						arg_2A_1 = (VyprVPNController.<>c.<>9__170_0 = new Converter<IApplicationItem, ApplicationItem>(VyprVPNController.<>c.<>9.<set_ApplicationList>b__170_0));
					}
					SerializableApplicationItemCollection value2 = new SerializableApplicationItemCollection(arg_2A_0.ConvertAll<ApplicationItem>(arg_2A_1));
					this.SetServiceProperty("ApplicationList", value2);
				}
			}
		}

		public PerAppBehavior PerAppInitialState
		{
			get
			{
				return this.GetServiceProperty<PerAppBehavior>("PerAppInitialState", 0);
			}
			set
			{
				this.SetServiceProperty("PerAppInitialState", value);
			}
		}

		public bool PerAppManagementEnabled
		{
			get
			{
				return this.GetServiceProperty<bool>("PerAppManagementEnabled", false);
			}
			set
			{
				this.SetServiceProperty("PerAppManagementEnabled", value);
			}
		}

		public bool ConnectOnStartup
		{
			get
			{
				return this.GetServiceProperty<bool>("ConnectOnStartup", false);
			}
			set
			{
				this.SetServiceProperty("ConnectOnStartup", value);
			}
		}

		public bool AnalyticsEnabled
		{
			get
			{
				return this.GetServiceProperty<bool>("AnalyticsEnabled", false);
			}
			set
			{
				this.SetServiceProperty("AnalyticsEnabled", value);
			}
		}

		public bool SendCrashReports
		{
			get
			{
				return this.GetServiceProperty<bool>("SendCrashReports", false);
			}
			set
			{
				this.SetServiceProperty("SendCrashReports", value);
			}
		}

		public bool EnableConnectionLog
		{
			get
			{
				return this.GetServiceProperty<bool>("EnableConnectionLog", true);
			}
			set
			{
				this.SetServiceProperty("EnableConnectionLog", value);
			}
		}

		public bool ReconnectOnDisconnect
		{
			get
			{
				return this.GetServiceProperty<bool>("ReconnectOnDisconnect", false);
			}
			set
			{
				this.SetServiceProperty("ReconnectOnDisconnect", value);
			}
		}

		public bool ConnectOnUnknownWifi
		{
			get
			{
				return this.GetServiceProperty<bool>("ConnectOnUnknownWifi", false);
			}
			set
			{
				this.SetServiceProperty("ConnectOnUnknownWifi", value);
			}
		}

		public List<string> ConnectOnUnknownWifiIgnoreSsids
		{
			get
			{
				string serviceProperty = this.GetServiceProperty<string>("ConnectOnUnknownWifiIgnoreSsids", null);
				if (serviceProperty == null)
				{
					return new List<string>();
				}
				return new List<string>(serviceProperty.Split(new char[]
				{
					','
				}).ToList<string>());
			}
			set
			{
				this.SetServiceProperty("ConnectOnUnknownWifiIgnoreSsids", string.Join(",", value));
			}
		}

		public bool LooseUpdatesEnabled
		{
			get
			{
				return this.GetServiceProperty<bool>("LooseUpdatesEnabled", false);
			}
			set
			{
				this.SetServiceProperty("LooseUpdatesEnabled", value);
			}
		}

		public Version VersionToSkip
		{
			get
			{
				return this.GetServiceProperty<Version>("VersionToSkip", null);
			}
			set
			{
				this.SetServiceProperty("VersionToSkip", value);
			}
		}

		public bool IsUpgradeAvailable
		{
			get
			{
				return (base.GetValue(VyprVPNController.IsUpgradeAvailableProperty) as bool?) ?? false;
			}
			private set
			{
				base.SetValue(VyprVPNController.IsUpgradeAvailableProperty, value);
			}
		}

		public int ConnectionAttempts
		{
			get
			{
				return base.GetValue<int>(VyprVPNController.ConnectionAttemptsProperty);
			}
			protected set
			{
				base.SetValue(VyprVPNController.ConnectionAttemptsProperty, value);
			}
		}

		public int Disconnects
		{
			get
			{
				return base.GetValue<int>(VyprVPNController.DisconnectsProperty);
			}
			protected set
			{
				base.SetValue(VyprVPNController.DisconnectsProperty, value);
			}
		}

		public int ConnectionSuccesses
		{
			get
			{
				return this.ConnectionAttempts - this.Disconnects;
			}
		}

		public int ConnectionFails
		{
			get
			{
				return this.ConnectionAttempts - this.ConnectionSuccesses;
			}
		}

		public List<IVPNServer> Servers
		{
			get
			{
				if (this.AccountSettingsBag == null || this.AccountSettingsBag.get_Servers() == null)
				{
					return null;
				}
				IEnumerable<VPNServer> arg_41_0 = this.AccountSettingsBag.get_Servers();
				Func<VPNServer, IVPNServer> arg_41_1;
				if ((arg_41_1 = VyprVPNController.<>c.<>9__229_0) == null)
				{
					arg_41_1 = (VyprVPNController.<>c.<>9__229_0 = new Func<VPNServer, IVPNServer>(VyprVPNController.<>c.<>9.<get_Servers>b__229_0));
				}
				return arg_41_0.Select(arg_41_1).ToList<IVPNServer>();
			}
		}

		public AsynchronousCommand LaunchUpgradeAccountUrlCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand LaunchManageAccountUrlCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand InstallUpgradeCommand
		{
			get;
			private set;
		}

		public bool LaunchOnLogin
		{
			get
			{
				return this.RegistryUtilities.IsRegValueSet<string>("Software\\Microsoft\\Windows\\CurrentVersion\\Run", "VyprVPN");
			}
			set
			{
				if (value != this.LaunchOnLogin)
				{
					if (value)
					{
						this.RegistryUtilities.SetRegKey<string>("Software\\Microsoft\\Windows\\CurrentVersion\\Run", "VyprVPN", Assembly.GetExecutingAssembly().Location);
						return;
					}
					this.RegistryUtilities.RemoveRegValue("Software\\Microsoft\\Windows\\CurrentVersion\\Run", "VyprVPN");
				}
			}
		}

		public bool ConnectOnLaunch
		{
			get
			{
				return this.GetServiceProperty<bool>("ConnectOnLaunch", false);
			}
			set
			{
				this.SetServiceProperty("ConnectOnLaunch", value);
			}
		}

		public bool ConnectSound
		{
			get
			{
				return this.GetServiceProperty<bool>("ConnectSound", false);
			}
			set
			{
				this.SetServiceProperty("ConnectSound", value);
			}
		}

		public string ConnectSoundFilePath
		{
			get
			{
				return this.UISettings.ConnectSoundFilePath;
			}
			set
			{
				this.UISettings.ConnectSoundFilePath = value;
				this.UISettings.Save();
			}
		}

		public bool DisconnectSound
		{
			get
			{
				return this.GetServiceProperty<bool>("DisconnectSound", false);
			}
			set
			{
				this.SetServiceProperty("DisconnectSound", value);
			}
		}

		public string DisconnectSoundFilePath
		{
			get
			{
				return this.UISettings.DisconnectSoundFilePath;
			}
			set
			{
				this.UISettings.DisconnectSoundFilePath = value;
				this.UISettings.Save();
			}
		}

		public bool AlternateDnsEnabled
		{
			get
			{
				return this.GetServiceProperty<bool>("AlternateDnsEnabled", false);
			}
			set
			{
				this.SetServiceProperty("AlternateDnsEnabled", value);
			}
		}

		public string AlternateDnsPrimary
		{
			get
			{
				return this.GetServiceProperty<string>("AlternateDnsPrimary", null);
			}
			set
			{
				this.SetServiceProperty("AlternateDnsPrimary", value);
			}
		}

		public string AlternateDnsSecondary
		{
			get
			{
				return this.GetServiceProperty<string>("AlternateDnsSecondary", null);
			}
			set
			{
				this.SetServiceProperty("AlternateDnsSecondary", value);
			}
		}

		public bool DnsLeakProtectionEnabled
		{
			get
			{
				return this.GetServiceProperty<bool>("DnsLeakProtectionEnabled", false);
			}
			set
			{
				this.SetServiceProperty("DnsLeakProtectionEnabled", value);
			}
		}

		public NotificationPreferenceEnum NotificationPreference
		{
			get
			{
				return this.GetServiceProperty<NotificationPreferenceEnum>("NotificationPreference", 0);
			}
			set
			{
				this.SetServiceProperty("NotificationPreference", value);
			}
		}

		public bool KillSwitchEnabled
		{
			get
			{
				return this.GetServiceProperty<bool>("KillSwitchEnabled", false);
			}
			set
			{
				this.SetServiceProperty("KillSwitchEnabled", value);
			}
		}

		public KillSwitchModeEnum KillSwitchMode
		{
			get
			{
				return this.GetServiceProperty<KillSwitchModeEnum>("KillSwitchMode", 0);
			}
			set
			{
				this.SetServiceProperty("KillSwitchMode", value);
			}
		}

		public bool KillLanTrafficEnabled
		{
			get
			{
				return this.GetServiceProperty<bool>("KillLanTrafficEnabled", false);
			}
			set
			{
				this.SetServiceProperty("KillLanTrafficEnabled", value);
			}
		}

		public bool KillSwitchActive
		{
			get
			{
				return this._killSwitchActive;
			}
			set
			{
				if (this._killSwitchActive != value)
				{
					this._killSwitchActive = value;
					base.RaisePropertyChanged<bool>(() => this.KillSwitchActive);
				}
			}
		}

		public VyprVPNController()
		{
			this.connectedTimer = new Timer(new TimerCallback(this.ElapsedConnectionTimeCallback), null, -1, 1000);
			this.InitializeCommands();
		}

		private void vpnServiceSubscriber_KillSwitchStateChangedEvent(object sender, KillSwitchStateChangedEventArgs e)
		{
			this.KillSwitchActive = e.get_IsActive();
		}

		private void vpnServiceSubscriber_AuthenticationStateChanged(object sender, AuthenticationStateEventArgs e)
		{
			this.AuthenticationState = e.get_NewState();
			this.UpdateKillSwitchActiveProperty();
			if (this.UIHelper.IsApplicationWindowShown())
			{
				this.UIHelper.ShowApplicationWindow();
			}
		}

		private void vpnServiceSubscriber_ConnectionError(object sender, ConnectionErrorEventArgs e)
		{
			VyprVPNController.logger.Log(0, "VyprVPNController: VPN Connection Error Received: {0}, type: {1}, fromState: {2}", new object[]
			{
				e.get_ConnectionError().get_Code(),
				e.get_ConnectionError().get_ErrorType(),
				e.get_ConnectionError().get_PreviousStatus()
			});
			if (e.get_ConnectionError().get_PreviousStatus() == 2)
			{
				string text = e.get_ConnectionError().get_Message();
				if (string.IsNullOrEmpty(text))
				{
					text = (Enum.IsDefined(typeof(GeneralVpnErrorCode), e.get_ConnectionError().get_Code()) ? this.RetrieveGeneralVPNErrorMessageString(e.get_ConnectionError().get_Code(), e.get_ConnectionError().get_AdditionalData()) : this.RetrieveOpenVPNErrorMessageString(e.get_ConnectionError().get_Code(), e.get_ConnectionError().get_AdditionalData()));
				}
				string notificationBody = string.Format("{0} - {1}", string.Format(Resources.ConnectError, e.get_ConnectionError().get_Code()), text);
				this.currentConnectErrored = true;
				ToastHelper.ShowToast(Resources.FailedToConnect, notificationBody, ToastButton.Reconnect, ToastLength.Long, ToastIconType.Error, null, null, true);
			}
			this._lastConnectionErrorType = e.get_ConnectionError().get_ErrorType();
			if (this._lastConnectionErrorType == 1 && !this._connectionFailureDialogShownToUser)
			{
				this.CheckConnectionFailureReasonAndShowDialog();
			}
		}

		private void vpnServiceSubscriber_UpgradeAvailable(object sender, UpgradeAvailableEventArgs e)
		{
			if (this.UpgradeInfo != null && this.UpgradeInfo.get_NewVersionNumber().Equals(e.get_NewVersionNumber()))
			{
				return;
			}
			if (Version.Parse(e.get_NewVersionNumber()) <= this.VersionToSkip)
			{
				return;
			}
			this.UpgradeInfo = e;
			this.IsUpgradeAvailable = true;
			MessageBase<UpgradeAvailableMessage, UpgradeAvailableEventArgs>.SendWith(e, null);
		}

		private void vpnServiceSubscriber_PropertyChanged(object sender, string property)
		{
			VyprVPNController.logger.Log(0, "VyprVPNController PropertyChanged({0})", new object[]
			{
				property
			});
			this.UIHelper.Dispatch(delegate
			{
				try
				{
					string property2 = property;
					if (!(property2 == "VpnProtocol"))
					{
						if (!(property2 == "VpnServer"))
						{
							this.RaisePropertyChanged(property);
						}
						else
						{
							VyprVPNController.logger.Log(0, "VyprVPNController PropertyChanged: Calling LocationChangedMessage");
							MessageBase<LocationChangedMessage, IVPNServer>.SendWith(this.VPNServer, null);
							this.RaisePropertyChanged("VPNServer");
						}
					}
					else
					{
						this.RaisePropertyChanged("Protocol");
					}
				}
				catch (Exception ex)
				{
					VyprVPNController.logger.Log(3, "Exception caught in VyprVPNController.vpnServiceSubscriber_PropertyChanged: {0}", new object[]
					{
						ex
					});
				}
			});
		}

		private void vpnServiceSubscriber_SendConfirmationEmailResult(object sender, SendConfirmationEmailApiResultCode result)
		{
			VyprVPNController.logger.Log(2, "VyprVPNController::vpnServiceSubscriber_SendConfirmationEmailResult: Received SendConfirmationEmailAPI result from subscriber: {0}", new object[]
			{
				result
			});
			MessageBase<SendConfirmationEmailResultMessage, SendConfirmationEmailApiResultCode>.SendWith(result, null);
		}

		private void vpnServiceSubscriber_AccountSettingsChanged(object sender, AccountSettingsBag newAccountSettingsBag)
		{
			if (newAccountSettingsBag == null)
			{
				VyprVPNController.logger.Log(0, "ASC: Received NULL or Empty account settings...");
				return;
			}
			VyprVPNController.logger.Log(0, "ASC: Received account settings...");
			VyprVPNController.logger.Log(0, "ASC: Calling LocationChangedMessage");
			MessageBase<LocationChangedMessage, IVPNServer>.SendWith(this.VPNServer, null);
			base.RaisePropertyChanged<IVPNServer>(() => this.VPNServer);
			if (newAccountSettingsBag.get_Servers() != null)
			{
				IEnumerable<VPNServer> arg_A2_0 = newAccountSettingsBag.get_Servers();
				Func<VPNServer, bool> arg_A2_1;
				if ((arg_A2_1 = VyprVPNController.<>c.<>9__40_0) == null)
				{
					arg_A2_1 = (VyprVPNController.<>c.<>9__40_0 = new Func<VPNServer, bool>(VyprVPNController.<>c.<>9.<vpnServiceSubscriber_AccountSettingsChanged>b__40_0));
				}
				if (arg_A2_0.Any(arg_A2_1))
				{
					IEnumerable<VPNServer> arg_CF_0 = newAccountSettingsBag.get_Servers();
					Func<VPNServer, bool> arg_CF_1;
					if ((arg_CF_1 = VyprVPNController.<>c.<>9__40_1) == null)
					{
						arg_CF_1 = (VyprVPNController.<>c.<>9__40_1 = new Func<VPNServer, bool>(VyprVPNController.<>c.<>9.<vpnServiceSubscriber_AccountSettingsChanged>b__40_1));
					}
					this.PinnedServers = arg_CF_0.Where(arg_CF_1).ToList<VPNServer>();
					VyprVPNController.logger.Log(0, "ASC: Calling FavoritesChangedMessage");
					MessageBase<FavoritesChangedMessage, IEnumerable<GoldenFrogVPN.VPNServer>>.SendWith(this.PinnedServers, null);
				}
			}
			this.IsNatFirewallActive = newAccountSettingsBag.get_NatFirewallActive();
			this.IsUsageBased = newAccountSettingsBag.get_IsUsageBased();
			this.AccountType = newAccountSettingsBag.get_AccountLevelDescription();
			this.AccountLevel = newAccountSettingsBag.get_AccountLevel();
			this.DataUsage = new DataUsage(newAccountSettingsBag.get_UsageMax().GetValueOrDefault(), newAccountSettingsBag.get_RemainingBytes().GetValueOrDefault());
			this.NonRecurringAccountHasExpired = newAccountSettingsBag.get_IsNonrecurringAccountExpired();
			AccountSettingsBag accountSettingsBag = this.AccountSettingsBag;
			if (accountSettingsBag != null)
			{
				if (!accountSettingsBag.get_UserID().Equals(newAccountSettingsBag.get_UserID(), StringComparison.OrdinalIgnoreCase))
				{
					VyprVPNController.logger.Log(0, "New UserID detected, purging UI settings");
					bool performUpgrade = this.UISettings.PerformUpgrade;
					this.UISettings.Reset();
					this.UISettings.PerformUpgrade = performUpgrade;
					this.UISettings.Save();
					this.LaunchOnLogin = false;
				}
				else
				{
					if (accountSettingsBag.get_Locked() && !newAccountSettingsBag.get_Locked())
					{
						MessageBase<AccountUnlockedMessage, string>.SendWith(newAccountSettingsBag.get_UserID(), null);
					}
					VyprVPNController.logger.Log(0, "UserID reused, UI settings preserved");
				}
			}
			this.AccountSettingsBag = newAccountSettingsBag;
			if (this._lastConnectionErrorType == 1 && !this._connectionFailureDialogShownToUser)
			{
				this.CheckConnectionFailureReasonAndShowDialog();
			}
			try
			{
				VyprVPNController.logger.Log(0, "ASC: Calling SettingsChangedMessage");
				MessageBase<SettingsChangedMessage, AccountSettingsBag>.SendWith(newAccountSettingsBag, null);
			}
			catch (InvalidOperationException ex)
			{
				VyprVPNController.logger.Log(1, "Error occurred while publishing SettingsChangedMessage: {0}", new object[]
				{
					ex.Message
				});
			}
		}

		private void vpnServiceSubscriber_StatusChanged(object sender, ConnectionInformationEventArgs e)
		{
			VyprVPNController.logger.Log(0, "VyprVPNController: VPN Status Changed Received: {0} {1} -> {2}, {3}", new object[]
			{
				sender,
				this.ConnectionStatus,
				e.get_ConnectionState(),
				e.get_ConnectionSubState()
			});
			if (this.ConnectionStatus != e.get_ConnectionState())
			{
				this.HandleToasts(this.ConnectionStatus, e.get_ConnectionState(), e);
			}
			this.ConnectionStatus = e.get_ConnectionState();
			this.PublicIP = ((e.get_PublicIP() == null) ? "null" : (e.get_PublicIP().Equals(IPAddress.Any) ? Resources.Detecting : e.get_PublicIP().ToString()));
			if (this.ConnectionStatus == 4)
			{
				this.connectionStartTime = e.get_ConnectionStart();
				this.connectionStopTime = DateTime.MinValue;
				this._lastConnectionErrorType = 4;
			}
			else if (this.ConnectionStatus == 3)
			{
				this.connectionStopTime = DateTime.Now;
			}
			else
			{
				this.connectionStartTime = DateTime.MinValue;
			}
			if (this.ConnectionStatus == null && this._reconnectRequested)
			{
				this._reconnectRequested = false;
				this.Connect(this._reconnectRequestCause);
			}
		}

		public CreateAccountApiResultCode CreateAccount(string userCreatedUsername, SecureString userCreatedPassword)
		{
			CreateAccountApiResultCode result = 5;
			try
			{
				VyprVPNController.logger.Log(0, "Calling IPCServer.CreateAccount");
				result = this.IPCServer.CreateAccount(userCreatedUsername, this.Crypto.EncodePassword(userCreatedPassword, userCreatedUsername, DataProtectionScope.LocalMachine));
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
			return result;
		}

		public bool Login(string username, SecureString password)
		{
			bool flag = false;
			try
			{
				VyprVPNController.logger.Log(0, "Calling SetCredentials()");
				flag = this.IPCServer.SetCredentials(username, this.Crypto.EncodePassword(password, username, DataProtectionScope.LocalMachine));
				VyprVPNController.logger.Log(0, "SetCredentials() returned {0}", new object[]
				{
					flag
				});
				if (flag)
				{
					MessageBase<UsernameChangedMessage, string>.SendWith(username, null);
				}
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
			return flag;
		}

		public bool CheckIsAccountConfirmed(string username, SecureString password)
		{
			bool flag = false;
			try
			{
				flag = this.IPCServer.CheckIsAccountConfirmed(username, this.Crypto.EncodePassword(password, username, DataProtectionScope.LocalMachine));
				if (flag)
				{
					VyprVPNController.logger.Log(0, "CheckIsAccountConfirmed() returned {0}", new object[]
					{
						flag
					});
				}
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
			return flag;
		}

		public bool ResetPassword(string username)
		{
			bool flag = false;
			try
			{
				VyprVPNController.logger.Log(0, "Calling ResetPassword()");
				flag = this.IPCServer.CallResetPasswordApi(username);
				VyprVPNController.logger.Log(0, "ResetPassword() returned {0}", new object[]
				{
					flag
				});
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
			return flag;
		}

		public AccountConfirmationApiResultCode ConfirmAccount(string confirmationHash, string username, SecureString password)
		{
			AccountConfirmationApiResultCode accountConfirmationApiResultCode = 2;
			try
			{
				VyprVPNController.logger.Log(0, "Calling CallAccountConfirmationApi()");
				accountConfirmationApiResultCode = this.IPCServer.CallAccountConfirmationApi(confirmationHash, username, this.Crypto.EncodePassword(password, username, DataProtectionScope.LocalMachine));
				VyprVPNController.logger.Log(0, "CallAccountConfirmationApi() returned {0}", new object[]
				{
					accountConfirmationApiResultCode
				});
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
			return accountConfirmationApiResultCode;
		}

		public async Task<CreateAccountApiResultCode> CreateAccountAsync(string userCreatedUsername, SecureString userCreatedPassword)
		{
			return await Task.Run<CreateAccountApiResultCode>(() => this.CreateAccount(userCreatedUsername, userCreatedPassword));
		}

		public async Task<bool> LoginAsync(string username, SecureString password)
		{
			return await Task.Run<bool>(() => this.Login(username, password));
		}

		public async Task<bool> CheckIsAccountConfirmedAsync(string username, SecureString password)
		{
			return await Task.Run<bool>(() => this.CheckIsAccountConfirmed(username, password));
		}

		public void Logout()
		{
			try
			{
				VyprVPNController.logger.Log(0, "Calling ClearCredentials()");
				this.UIHelper.Dispatch(delegate
				{
					bool flag = this.IPCServer.ClearCredentials();
					this.AccountSettingsBag = null;
					VyprVPNController.logger.Log(0, "ClearCredentials() returned {0}", new object[]
					{
						flag
					});
				});
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		public void PingServers(List<VPNServer> servers)
		{
			try
			{
				VyprVPNController.logger.Log(0, "Pinging servers.");
				this.IPCServer.BeginPingServers(servers);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		public void FindAndConnectToFastestServer(VyprConnectionEventCause connectCause)
		{
			try
			{
				VyprVPNController.logger.Log(0, "Finding and connecting to fastest server.");
				this.FastestServerSelected = true;
				this.IPCServer.BeginFindAndConnectToFastestServer(connectCause);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		public void RefreshAccountSettings(bool forceUpdate = false)
		{
			try
			{
				VyprVPNController.logger.Log(2, "RefreshAccountSettings called, sending request to service to be processed");
				this.IPCServer.BeginRefreshAccountSettings(forceUpdate);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		public async Task<bool> ResetPasswordAsync(string username)
		{
			return await Task.Run<bool>(() => this.ResetPassword(username));
		}

		public async Task<AccountConfirmationApiResultCode> ConfirmAccountAsync(string confirmationHash, string username, SecureString password)
		{
			return await Task.Run<AccountConfirmationApiResultCode>(() => this.ConfirmAccount(confirmationHash, username, password));
		}

		public void CallSendConfirmationEmailApi(string userEmail)
		{
			try
			{
				VyprVPNController.logger.Log(2, "CallSendConfirmationEmailApi called, sending request to service to be processed");
				this.IPCServer.CallSendConfirmationEmailApi(userEmail);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		private void SetServiceProperty(string property, object value)
		{
			try
			{
				this.IPCServer.SetProperty(property, value);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(3, "Error calling IPCServer.SetProperty({0}, {1}): {2}", new object[]
				{
					property,
					value,
					ex
				});
			}
		}

		private T GetServiceProperty<T>(string property, T defaultVlaue = null)
		{
			T result = defaultVlaue;
			object obj = null;
			try
			{
				if (ServiceLocatorExtensions.IsTypeRegistered<IIPCServer>(ObjectExtensions.GetServiceLocator(this), null))
				{
					obj = this.IPCServer.GetProperty(property);
				}
				else
				{
					VyprVPNController.logger.Log(1, "IPCServer is not yet registered; cannot retrieve property {0}", new object[]
					{
						property
					});
				}
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(3, "Error calling IPCServer.GetProperty({0}): {1}", new object[]
				{
					property,
					ex
				});
			}
			try
			{
				result = (T)((object)obj);
			}
			catch (Exception ex2)
			{
				VyprVPNController.logger.Log(2, "Error casting IPCServer.GetProperty({0}) to {1}: {2}", new object[]
				{
					property,
					typeof(T),
					ex2
				});
			}
			return result;
		}

		public void Connect(VyprConnectionEventCause cause)
		{
			this._connectionFailureDialogShownToUser = false;
			this.UIHelper.Dispatch(delegate
			{
				int connectionAttempts = this.ConnectionAttempts;
				this.ConnectionAttempts = connectionAttempts + 1;
			});
			if (this.VPNServer == null)
			{
				VyprVPNController.logger.Log(1, "Could not connect; VPNServer was null");
				return;
			}
			try
			{
				VyprVPNController.logger.Log(0, "Calling Connect()");
				this.IPCServer.Connect(cause);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
		}

		public void Disconnect(VyprConnectionEventCause cause)
		{
			this.UIHelper.Dispatch(delegate
			{
				int connectionAttempts = this.ConnectionAttempts;
				this.ConnectionAttempts = connectionAttempts + 1;
			});
			VyprVPNController.logger.Log(0, string.Format("VyprVPNController::Disconnect called with cause {0} on connectionAttempt {1}", cause, this.ConnectionAttempts));
			try
			{
				this.IPCServer.Disconnect(cause);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
		}

		public void Reconnect(VyprConnectionEventCause cause)
		{
			VyprVPNController.logger.Log(0, string.Format("VyprVPNController::Reconnect called with cause {0}", cause));
			this._reconnectRequested = true;
			this._reconnectRequestCause = cause;
			this.Disconnect(cause);
		}

		public void OnboardingFunnelComplete()
		{
			this.AnalyticsViewedCarousel = false;
		}

		public void SendViewedCarouselAnalyticsEvent()
		{
			if (!this.AnalyticsViewedCarousel)
			{
				this.AnalyticsEvent(3, null);
				this.AnalyticsViewedCarousel = true;
			}
		}

		public void SendStartedSignUpAnalyticsEvent()
		{
			this.AnalyticsEvent(4, null);
		}

		public void SendResendEmailAnalyticsEvent()
		{
			this.AnalyticsEvent(6, null);
		}

		public void SendConfirmedMyAccountAnalyticsEvent()
		{
			this.AnalyticsEvent(7, null);
		}

		public void SendLoginAnalyticsEvent()
		{
			this.AnalyticsEvent(11, null);
		}

		private void AnalyticsEvent(VyprVPNAnalyticsEvents eventName, Dictionary<string, object> properties)
		{
			try
			{
				this.IPCServer.QueueNewAnalyticsEvent(eventName, properties);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
		}

		public void IncrementMtuOptimizeCount()
		{
			try
			{
				int serviceProperty = this.GetServiceProperty<int>("MtuOptimizeCount", 0);
				this.SetServiceProperty("MtuOptimizeCount", serviceProperty + 1);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(3, "VyprVpnController::IncrementMtuOptimizeCount: Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		public void IncrementSettingsRestoredCount()
		{
			try
			{
				int serviceProperty = this.GetServiceProperty<int>("AdvancedOpenVpnSettingsChangedAndRestoredCount", 0);
				this.SetServiceProperty("AdvancedOpenVpnSettingsChangedAndRestoredCount", serviceProperty + 1);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(3, "VyprVpnController::IncrementSettingsRestoredCount: Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		public string GetReferAFriendLink()
		{
			try
			{
				return this.IPCServer.UrlWithSingleUseToken(this.AccountSettingsBag.get_URLs()["control_panel_vpn_refer"]);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
			return "https://www.goldenfrog.com/";
		}

		public string GetControlPanelLink()
		{
			string text = this.AccountSettingsBag.get_URLs()["control_panel_vpn_manage"];
			try
			{
				return this.IPCServer.UrlWithSingleUseToken(text);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
			return text;
		}

		public string GetSupportLink()
		{
			string text = this.AccountSettingsBag.get_URLs().ContainsKey("support") ? this.AccountSettingsBag.get_URLs()["support"] : Url.ContactSupportDefault;
			try
			{
				return this.IPCServer.UrlWithSingleUseToken(text);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
			return text;
		}

		public string GetUpgradeAccountLink()
		{
			string text = this.AccountSettingsBag.get_URLs().ContainsKey("control_panel_vpn_manage") ? this.AccountSettingsBag.get_URLs()["control_panel_vpn_manage"] : Url.ControlPanel;
			text += "/account";
			try
			{
				return this.IPCServer.UrlWithSingleUseToken(text);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
			return text;
		}

		public void LaunchUpgradeAccountUrl()
		{
			VyprVPNController.logger.Log(0, "Attempting to launch account upgrade url");
			try
			{
				string text = this.AddGoogleAnalyticsToURL(this.GetUpgradeAccountLink(), "upgrade", "upgrade-now");
				this.generalUtilities.StartWebUri(text);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
		}

		public void LaunchManageAccountUrl()
		{
			VyprVPNController.logger.Log(0, "Attempting to launch manage account url");
			try
			{
				string text = this.AddGoogleAnalyticsToURL(this.GetUpgradeAccountLink(), "upgrade", "manage-account");
				this.generalUtilities.StartWebUri(text);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
		}

		public string AddGoogleAnalyticsToURL(string url, string campaign, string content)
		{
			char c = '?';
			if (url.Contains('?'))
			{
				c = '&';
			}
			return string.Format("{0}{1}utm_source=windows-vyprvpn-{2}&utm_medium=application&utm_campaign={3}&utm_content={4}", new object[]
			{
				url,
				c,
				ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationVersionWithReleaseMode(),
				campaign,
				content
			});
		}

		public string GetDummyOpenVpnCommandLine(Protocol protocol, OpenVpnCommandLineConfig commandLineConfig)
		{
			try
			{
				return this.IPCServer.GetDummyOpenVpnCommandLine(protocol, commandLineConfig);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				this.UIHelper.ShowError(ex);
			}
			return string.Empty;
		}

		public void InstallUpgrade()
		{
			this.InstallUpgrade(this.UpgradeInfo);
		}

		public void InstallUpgrade(UpgradeAvailableEventArgs info)
		{
			try
			{
				if (info != null && !string.IsNullOrEmpty(info.get_UpgradePath()) && File.Exists(info.get_UpgradePath()))
				{
					VyprVPNController.logger.Log(0, "Running installer at '{0}'", new object[]
					{
						info.get_UpgradePath()
					});
					Process.Start(info.get_UpgradePath());
				}
			}
			catch (Win32Exception ex)
			{
				VyprVPNController.logger.Log(0, "Exception: {0}", new object[]
				{
					ex
				});
			}
			catch (Exception ex2)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex2
				});
			}
		}

		public void GetAvailableUpgrade(GetAvailableUpdateSpecCompletedEventHandler completedCallback, GetAvailableUpdateSpecErrorEventHandler errorCallback)
		{
			VyprVPNController.logger.Log(2, "called VyprVPNController.GetAvailableUpgrade");
			GetAvailableUpdateSpecCompletedEventHandler fullCompleteCallback = null;
			GetAvailableUpdateSpecErrorEventHandler fullErrorCallback = null;
			fullCompleteCallback = delegate(object sender, GetAvailableUpdateSpecCompletedEventArgs e)
			{
				this.ServiceEventsSource.GetAvailableUpdateSpecCompletedEvent -= fullCompleteCallback;
				this.ServiceEventsSource.GetAvailableUpdateSpecErrorEvent -= fullErrorCallback;
				completedCallback.Invoke(sender, e);
			};
			fullErrorCallback = delegate(object sender, GetAvailableUpdateSpecErrorEventArgs e)
			{
				this.ServiceEventsSource.GetAvailableUpdateSpecCompletedEvent -= fullCompleteCallback;
				this.ServiceEventsSource.GetAvailableUpdateSpecErrorEvent -= fullErrorCallback;
				errorCallback.Invoke(sender, e);
			};
			this.ServiceEventsSource.GetAvailableUpdateSpecCompletedEvent += fullCompleteCallback;
			this.ServiceEventsSource.GetAvailableUpdateSpecErrorEvent += fullErrorCallback;
			this.IPCServer.BeginCheckForUpdate();
		}

		public void DownloadUpgrade(SerializableReleaseSpec ReleaseSpec)
		{
			this.IPCServer.BeginUpdateDownload(ReleaseSpec);
		}

		public void IgnoreVersionsUpTo(Version version)
		{
			this.VersionToSkip = version;
			UpgradeAvailableEventArgs upgradeInfo = this.UpgradeInfo;
			if (this.IsUpgradeAvailable && upgradeInfo != null)
			{
				Version v = null;
				if (Version.TryParse(upgradeInfo.get_NewVersionNumber(), out v) && v <= version)
				{
					this.UIHelper.Dispatch(delegate
					{
						this.IsUpgradeAvailable = false;
						EventHandler clearUpdateAvailable = this.ClearUpdateAvailable;
						if (clearUpdateAvailable != null)
						{
							clearUpdateAvailable(this, null);
						}
					});
				}
			}
		}

		public void GetOptimizedMtu(GetOptimizedMtuCompletedEventHandler completedCallback, GetOptimizedMtuErrorEventHandler errorCallback)
		{
			VyprVPNController.logger.Log(2, "VyprVPNController::GetOptimizedMtu: Entered method");
			GetOptimizedMtuCompletedEventHandler fullCompleteCallback = null;
			GetOptimizedMtuErrorEventHandler fullErrorCallback = null;
			fullCompleteCallback = delegate(object sender, GetOptimizedMtuCompletedEventArgs e)
			{
				VyprVPNController.logger.Log(0, "VyprVPNController::GetOptimizedMtu: Completed call back received.");
				this.ServiceEventsSource.GetOptimizedMtuCompletedEvent -= fullCompleteCallback;
				this.ServiceEventsSource.GetOptimizedMtuErrorEvent -= fullErrorCallback;
				completedCallback.Invoke(sender, e);
			};
			fullErrorCallback = delegate(object sender, GetOptimizedMtuErrorEventArgs e)
			{
				VyprVPNController.logger.Log(0, "VyprVPNController::GetOptimizedMtu: Error call back received.");
				this.ServiceEventsSource.GetOptimizedMtuCompletedEvent -= fullCompleteCallback;
				this.ServiceEventsSource.GetOptimizedMtuErrorEvent -= fullErrorCallback;
				errorCallback.Invoke(sender, e);
			};
			this.ServiceEventsSource.GetOptimizedMtuCompletedEvent += fullCompleteCallback;
			this.ServiceEventsSource.GetOptimizedMtuErrorEvent += fullErrorCallback;
			this.IPCServer.BeginOptimizeMtuTest();
		}

		public void CancelOptimizeMtuTest()
		{
			this.IPCServer.CancelOptimizeMtuTest();
		}

		public void AppendConnectionLog(ConnectionLogEntry connectionLogEntry)
		{
			try
			{
				VyprVPNController.logger.Log(0, "Publishing connection log entry to service '{0}'", new object[]
				{
					connectionLogEntry
				});
				this.IPCServer.AppendEventToConnectionLog(connectionLogEntry);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(3, "Exception in AppendConnectionLog: {0}", new object[]
				{
					ex
				});
			}
		}

		public bool ProcessCrashReports(string messageBody = "", bool withLogs = true)
		{
			try
			{
				return this.IPCServer.ProcessCrashReports(ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_LocalApplicationDataFolder(), "", true);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(3, "Error sending crash reports: {0}", new object[]
				{
					ex
				});
			}
			return false;
		}

		public void UpdateAppsListFromFileSystem(UpdateAppsListFromFileSystemCompletedEventHandler completedCallback, UpdateAppsListFromFileSystemErrorEventHandler errorCallback)
		{
			VyprVPNController.logger.Log(2, "Called VyprVpnController.UpdateAppsListFromFileSystem");
			UpdateAppsListFromFileSystemCompletedEventHandler fullCompleteCallback = null;
			UpdateAppsListFromFileSystemErrorEventHandler fullErrorCallback = null;
			fullCompleteCallback = delegate(object sender, UpdateAppsListFromFileSystemCompletedEventArgs e)
			{
				this.ServiceEventsSource.UpdateAppsListFromFileSystemCompletedEvent -= fullCompleteCallback;
				this.ServiceEventsSource.UpdateAppsListFromFileSystemErrorEvent -= fullErrorCallback;
				completedCallback.Invoke(sender, e);
			};
			fullErrorCallback = delegate(object sender, UpdateAppsListFromFileSystemErrorEventArgs e)
			{
				this.ServiceEventsSource.UpdateAppsListFromFileSystemCompletedEvent -= fullCompleteCallback;
				this.ServiceEventsSource.UpdateAppsListFromFileSystemErrorEvent -= fullErrorCallback;
				errorCallback.Invoke(sender, e);
			};
			this.ServiceEventsSource.UpdateAppsListFromFileSystemCompletedEvent += fullCompleteCallback;
			this.ServiceEventsSource.UpdateAppsListFromFileSystemErrorEvent += errorCallback;
			try
			{
				this.IPCServer.UpdateAppsListFromFileSystem();
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(3, "Error calling IPCServer.UpdateAppsListFromFileSystem(): {0}", new object[]
				{
					ex
				});
			}
		}

		public void UpdateUbaThreshold()
		{
			this.UIHelper.Dispatch(delegate
			{
				if (this.DataUsage.get_UsedPercentage() >= 100)
				{
					this.NextUbaThreshold = VyprVPNController.UbaThresholds.Last<int>();
					return;
				}
				this.NextUbaThreshold = VyprVPNController.UbaThresholds.First((int t) => t > this.DataUsage.get_UsedPercentage());
			});
		}

		private void HandleToasts(ConnectionStatus fromState, ConnectionStatus toState, ConnectionInformationEventArgs e)
		{
			VyprConnectionEventCause vyprConnectionEventCause = 12;
			if (e != null && e.get_Cause().HasValue)
			{
				vyprConnectionEventCause = e.get_Cause().Value;
			}
			if (toState == 2 || toState == 4)
			{
				this.currentConnectErrored = false;
				if (e != null && e.get_Cause().HasValue)
				{
					this.currentConnectCause = e.get_Cause().Value;
				}
			}
			if (toState == 4)
			{
				string arg = null;
				IVPNServer vPNServer = this.VPNServer;
				if (e != null && e.get_Server() != null)
				{
					arg = e.get_Server().get_Location();
				}
				else if (vPNServer != null)
				{
					arg = vPNServer.get_Location();
				}
				string notificationBody = string.Format(Resources.ConnectedTo, arg);
				ToastButton buttonType = ToastButton.None;
				ToastLength length = ToastLength.Short;
				ToastIconType toastIcon = ToastIconType.Connected;
				string notificationText;
				if (vyprConnectionEventCause <= 2)
				{
					if (vyprConnectionEventCause != 1)
					{
						if (vyprConnectionEventCause != 2)
						{
							goto IL_D8;
						}
						notificationText = Resources.ConnectedAutoReconnect;
						goto IL_DE;
					}
				}
				else if (vyprConnectionEventCause != 7)
				{
					if (vyprConnectionEventCause == 9)
					{
						notificationText = Resources.ConnectedUnknownWifi;
						goto IL_DE;
					}
					goto IL_D8;
				}
				notificationText = Resources.ConnectedAppStart;
				goto IL_DE;
				IL_D8:
				notificationText = Resources.Connected;
				IL_DE:
				ToastHelper.ShowToast(notificationText, notificationBody, buttonType, length, toastIcon, null, null, false);
				return;
			}
			if (toState == null && !this.currentConnectErrored)
			{
				ToastIconType toastIcon2 = ToastIconType.Disconnected;
				if (VyprVPNAnalyticsCausesExtensions.IsManualDisconnectReason(vyprConnectionEventCause))
				{
					ToastHelper.ShowToast(Resources.Disconnected, null, ToastButton.None, ToastLength.Short, toastIcon2, null, null, false);
					return;
				}
				ToastHelper.ShowToast(Resources.Disconnected, Resources.ConnectionDropped, ToastButton.Reconnect, ToastLength.Long, toastIcon2, null, null, false);
			}
		}

		private string RetrieveGeneralVPNErrorMessageString(int generalVpnErrorCode, object additionalData)
		{
			string result = Resources.OpenVPNErrorUnknown;
			if (generalVpnErrorCode != 6050)
			{
				if (generalVpnErrorCode == 6051)
				{
					result = Resources.GeneralVpnErrorFastestServer;
				}
			}
			else
			{
				result = Resources.GeneralVpnErrorApiCheckFailure;
			}
			return result;
		}

		private string RetrieveOpenVPNErrorMessageString(int openVpnErrorCode, object additionalData)
		{
			if (openVpnErrorCode == 0)
			{
				return string.Empty;
			}
			string result = Resources.OpenVPNErrorUnknown;
			switch (openVpnErrorCode)
			{
			case 6000:
				result = Resources.OpenVPNErrorPropertyFile;
				break;
			case 6001:
				result = Resources.OpenVPNErrorCertificate;
				break;
			case 6002:
			case 6005:
			case 6014:
			case 6015:
			case 6017:
			case 6018:
			case 6019:
				result = Resources.OpenVPNErrorProcess;
				break;
			case 6003:
				result = Resources.OpenVPNErrorAuthentication;
				break;
			case 6004:
			case 6012:
			case 6022:
				result = Resources.OpenVPNErrorTapAdapter;
				break;
			case 6008:
				result = Resources.OpenVPNErrorRouteAddition;
				break;
			case 6010:
				result = Resources.OpenVPNErrorBandwidth;
				break;
			case 6011:
			case 6024:
			case 6025:
				result = Resources.OpenVPNErrorNetworkConnection;
				break;
			case 6013:
				result = Resources.OpenVPNErrorCannotReachInternet;
				break;
			case 6021:
				result = Resources.OpenVPNErrorServerConnection;
				break;
			case 6023:
				result = Resources.OpenVPNErrorInitialization;
				break;
			case 6026:
			{
				int num = (additionalData != null) ? ((int)additionalData) : 0;
				result = string.Format(Resources.OpenVPNErrorPortsFailed, num);
				break;
			}
			}
			return result;
		}

		private void CheckConnectionFailureReasonAndShowDialog()
		{
			if (this._connectionFailureDialogShownToUser)
			{
				return;
			}
			if (this.IsUsageBased && this.DataUsage == null)
			{
				VyprVPNController.logger.Log(1, "Data usage is null; cannot show usage dialog to user.");
			}
			if (this.IsUsageBased && this.DataUsage != null && this.DataUsage.get_RemainingBytes() <= 0uL)
			{
				VyprVPNController.logger.Log(0, "Cannot connect because user is over data usage limit.");
				this._connectionFailureDialogShownToUser = true;
				this.UIHelper.ShowUbaAccountExpiredDialog(this);
				return;
			}
			if (this.NonRecurringAccountHasExpired)
			{
				VyprVPNController.logger.Log(0, "Cannot connect because user's payment method is expired.");
				this._connectionFailureDialogShownToUser = true;
				this.UIHelper.ShowNonRecurringPaymentMethodExpiredDialog(this);
				return;
			}
		}

		private void UpdateKillSwitchActiveProperty()
		{
			this.KillSwitchActive = (this.KillSwitchEnabled && this.ConnectionStatus != 4 && (this.AuthenticationState == 1 || this.AuthenticationState == 2));
		}

		private void InitializeCommands()
		{
			this.InstallUpgradeCommand = new AsynchronousCommand(new Action(this.InstallUpgrade), () => this.IsUpgradeAvailable, null);
			this.LaunchUpgradeAccountUrlCommand = new AsynchronousCommand(new Action(this.LaunchUpgradeAccountUrl), () => this.IsUsageBased, null);
			this.LaunchManageAccountUrlCommand = new AsynchronousCommand(new Action(this.LaunchManageAccountUrl), () => this.NonRecurringAccountHasExpired, null);
		}

		private void ElapsedConnectionTimeCallback(object state)
		{
			DateTime dateTime = this.connectionStartTime;
			TimeSpan timeSpan;
			if (dateTime != DateTime.MinValue)
			{
				if (this.connectionStopTime == DateTime.MinValue || this.connectionStopTime < dateTime)
				{
					timeSpan = DateTime.Now - dateTime;
				}
				else
				{
					timeSpan = this.connectionStopTime - dateTime;
				}
			}
			else
			{
				timeSpan = TimeSpan.Zero;
			}
			this.TimeConnectedString = string.Format("{0}:{1}:{2}", ((int)timeSpan.TotalHours).ToString("D2"), timeSpan.Minutes.ToString("D2"), timeSpan.Seconds.ToString("D2"));
		}

		public void SaveFavorites()
		{
			try
			{
				StringBuilder favorites = new StringBuilder();
				IEnumerable<VPNServer> arg_3C_0 = this.AccountSettingsBag.get_Servers();
				Func<VPNServer, bool> arg_3C_1;
				if ((arg_3C_1 = VyprVPNController.<>c.<>9__345_0) == null)
				{
					arg_3C_1 = (VyprVPNController.<>c.<>9__345_0 = new Func<VPNServer, bool>(VyprVPNController.<>c.<>9.<SaveFavorites>b__345_0));
				}
				this.PinnedServers = arg_3C_0.Where(arg_3C_1).ToList<VPNServer>();
				this.PinnedServers.ToList<VPNServer>().ForEach(delegate(VPNServer s)
				{
					favorites.Append(s.get_FQDN() + ";");
				});
				this.UISettings.Favorites = favorites.ToString();
				this.UISettings.Save();
				MessageBase<FavoritesChangedMessage, IEnumerable<GoldenFrogVPN.VPNServer>>.SendWith(this.PinnedServers, null);
			}
			catch (Exception ex)
			{
				VyprVPNController.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
			}
		}

		public void UpdateServiceEventSubscriptions(IServiceEventsSource newSubscriber, IServiceEventsSource oldSubscriber)
		{
			this.UpdateKillSwitchActiveProperty();
			if (oldSubscriber != null)
			{
				oldSubscriber.StatusChangedEvent -= new EventHandler<ConnectionInformationEventArgs>(this.vpnServiceSubscriber_StatusChanged);
				oldSubscriber.AuthenticationStateChangedEvent -= new AuthenticationStateChangedEventHandler(this.vpnServiceSubscriber_AuthenticationStateChanged);
				oldSubscriber.AccountSettingsChangedEvent -= new AccountSettingsChangedEventHandler(this.vpnServiceSubscriber_AccountSettingsChanged);
				oldSubscriber.SendConfirmationEmailResultEvent -= new EventHandler<SendConfirmationEmailApiResultCode>(this.vpnServiceSubscriber_SendConfirmationEmailResult);
				oldSubscriber.PropertyChangedEvent -= new VyprVPN.Classes.PropertyChangedEventHandler(this.vpnServiceSubscriber_PropertyChanged);
				oldSubscriber.UpgradeAvailableEvent -= new UpdateAvailableEventHandler(this.vpnServiceSubscriber_UpgradeAvailable);
				oldSubscriber.ConnectionErrorEvent -= new EventHandler<ConnectionErrorEventArgs>(this.vpnServiceSubscriber_ConnectionError);
				oldSubscriber.KillSwitchStateChangedEvent -= new KillSwitchStateChangedEventHandler(this.vpnServiceSubscriber_KillSwitchStateChangedEvent);
			}
			if (newSubscriber != null)
			{
				newSubscriber.StatusChangedEvent += new EventHandler<ConnectionInformationEventArgs>(this.vpnServiceSubscriber_StatusChanged);
				newSubscriber.AuthenticationStateChangedEvent += new AuthenticationStateChangedEventHandler(this.vpnServiceSubscriber_AuthenticationStateChanged);
				newSubscriber.AccountSettingsChangedEvent += new AccountSettingsChangedEventHandler(this.vpnServiceSubscriber_AccountSettingsChanged);
				newSubscriber.SendConfirmationEmailResultEvent += new EventHandler<SendConfirmationEmailApiResultCode>(this.vpnServiceSubscriber_SendConfirmationEmailResult);
				newSubscriber.PropertyChangedEvent += new VyprVPN.Classes.PropertyChangedEventHandler(this.vpnServiceSubscriber_PropertyChanged);
				newSubscriber.UpgradeAvailableEvent += new UpdateAvailableEventHandler(this.vpnServiceSubscriber_UpgradeAvailable);
				newSubscriber.ConnectionErrorEvent += new EventHandler<ConnectionErrorEventArgs>(this.vpnServiceSubscriber_ConnectionError);
				newSubscriber.KillSwitchStateChangedEvent += new KillSwitchStateChangedEventHandler(this.vpnServiceSubscriber_KillSwitchStateChangedEvent);
				return;
			}
			VyprVPNController.logger.Log(1, "VyprVPNController un-subscribing from all subscriber events due to UpdateServiceSubscriber being called with a null newSubscriber");
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("IPCServer"))
			{
				base.RaisePropertyChanged("Username");
			}
			if (e.PropertyName.Equals("IPCServer"))
			{
				base.RaisePropertyChanged("IsLoggedIn");
			}
			if (e.PropertyName.Equals("RegistryUtilities"))
			{
				base.RaisePropertyChanged("LaunchOnLogin");
			}
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("ConnectSoundFilePath");
			}
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("DisconnectSoundFilePath");
			}
			if (e.PropertyName.Equals("ServiceContacted"))
			{
				base.RaisePropertyChanged("IsServiceFullyStarted");
			}
			if (e.PropertyName.Equals("ServiceContacted"))
			{
				base.RaisePropertyChanged("IsLoggedIn");
			}
			if (e.PropertyName.Equals("ConnectionStatus"))
			{
				base.RaisePropertyChanged("CurrentConnectionProtocol");
			}
			if (e.PropertyName.Equals("AccountSettingsBag"))
			{
				base.RaisePropertyChanged("Servers");
			}
			if (e.PropertyName.Equals("Protocol"))
			{
				base.RaisePropertyChanged("CurrentConnectionProtocol");
			}
			if (e.PropertyName.Equals("ConnectionAttempts"))
			{
				base.RaisePropertyChanged("ConnectionSuccesses");
			}
			if (e.PropertyName.Equals("ConnectionAttempts"))
			{
				base.RaisePropertyChanged("ConnectionFails");
			}
			if (e.PropertyName.Equals("Disconnects"))
			{
				base.RaisePropertyChanged("ConnectionSuccesses");
			}
			if (e.PropertyName.Equals("Disconnects"))
			{
				base.RaisePropertyChanged("ConnectionFails");
			}
			if (e.PropertyName.Equals("ConnectionSuccesses"))
			{
				base.RaisePropertyChanged("ConnectionFails");
			}
		}
	}
}
