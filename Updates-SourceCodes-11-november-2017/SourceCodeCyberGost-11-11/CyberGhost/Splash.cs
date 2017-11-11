using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows.Controls;
using Microsoft.Win32;
using MobileConcepts.Components.SingleInstance;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security.AccessControl;
using System.ServiceProcess;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

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

			internal async void <InitCyberGhost>b__18_2()
			{
				if (!SettingsHolder.get_Settings().get_HintDate().HasValue || (DateTime.Now - SettingsHolder.get_Settings().get_HintDate().Value).TotalDays > (double)Constants.ProgramAndHintDayInterval)
				{
					SettingsHolder.get_Settings().set_HintDate(new DateTime?(DateTime.Now));
					await CgApiHelper.FetchRandomHintS();
					await CgApiHelper.FetchProgramList();
				}
				await CgApiHelper.LoadHintsFromCsv();
				await CgApiHelper.LoadProgramsFromCsv();
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

		private static async Task<bool> HandleCommandLine(IList<string> aCommandLine)
		{
			Splash._mShowMainForm = true;
			bool result;
			if (aCommandLine != null)
			{
				IList<string> list = aCommandLine;
				if (list.Contains("/updateInstalled"))
				{
					ObjectHolder.ShowUpdateInstalled = true;
				}
				if (list.Contains("/exit"))
				{
					Splash._mShowMainForm = false;
					if (ObjectHolder.MainForm != null)
					{
						ObjectHolder.MainForm.Exit(false);
					}
					result = false;
					return result;
				}
				if (list.Contains("/min") || list.Contains("/autostart") || list.Contains("/silent"))
				{
					Splash._mShowMainForm = false;
					if (ObjectHolder.MainForm != null && !GuiHelper.IsProLoginRequired())
					{
						ObjectHolder.MainForm.Visibility = Visibility.Hidden;
					}
				}
				if (list.Contains("/start-app-before-connect"))
				{
					Splash._mShowMainForm = false;
					List<string> commandLineParams = HelperFunctions.GetCommandLineParams(list, "/start-app-before-connect", "/");
					ObjectHolder.AppListLaunchConnectBefore.AddRange(commandLineParams);
				}
				if (list.Contains("/start-app-after-connect"))
				{
					Splash._mShowMainForm = false;
					List<string> commandLineParams2 = HelperFunctions.GetCommandLineParams(list, "/start-app-after-connect", "/");
					ObjectHolder.AppListLaunchConnectAfter.AddRange(commandLineParams2);
				}
				if (list.Contains("/start-app-before-disconnect"))
				{
					Splash._mShowMainForm = false;
					List<string> commandLineParams3 = HelperFunctions.GetCommandLineParams(list, "/start-app-before-disconnect", "/");
					ObjectHolder.AppListLaunchDisconnectBefore.AddRange(commandLineParams3);
				}
				if (list.Contains("/start-app-after-disconnect"))
				{
					Splash._mShowMainForm = false;
					List<string> commandLineParams4 = HelperFunctions.GetCommandLineParams(list, "/start-app-after-disconnect", "/");
					ObjectHolder.AppListLaunchDisconnectAfter.AddRange(commandLineParams4);
				}
				if (list.Contains("/terminate-app-before-connect"))
				{
					Splash._mShowMainForm = false;
					List<string> commandLineParams5 = HelperFunctions.GetCommandLineParams(list, "/terminate-app-before-connect", "/");
					ObjectHolder.AppListKillConnectBefore.AddRange(commandLineParams5);
				}
				if (list.Contains("/terminate-app-after-connect"))
				{
					Splash._mShowMainForm = false;
					List<string> commandLineParams6 = HelperFunctions.GetCommandLineParams(list, "/terminate-app-after-connect", "/");
					ObjectHolder.AppListKillConnectAfter.AddRange(commandLineParams6);
				}
				if (list.Contains("/terminate-app-before-disconnect"))
				{
					Splash._mShowMainForm = false;
					List<string> commandLineParams7 = HelperFunctions.GetCommandLineParams(list, "/terminate-app-before-disconnect", "/");
					ObjectHolder.AppListKillDisconnectBefore.AddRange(commandLineParams7);
				}
				if (list.Contains("/terminate-app-after-disconnect"))
				{
					Splash._mShowMainForm = false;
					List<string> commandLineParams8 = HelperFunctions.GetCommandLineParams(list, "/terminate-app-after-disconnect", "/");
					ObjectHolder.AppListKillDisconnectAfter.AddRange(commandLineParams8);
				}
				Splash.HandleLaunchCommandLine(list, false);
				if (list.Contains("/disconnect"))
				{
					Splash._mShowMainForm = false;
					if (ObjectHolder.MainForm != null)
					{
						ObjectHolder.MainForm.Disconnect();
					}
				}
				if (list.Contains("/connect"))
				{
					Splash._mShowMainForm = false;
					if (ObjectHolder.MainForm != null)
					{
						ObjectHolder.MainForm.Connect(false, false, false);
					}
				}
				if (list.Contains("/connectProfile"))
				{
					List<string> commandLineParams9 = HelperFunctions.GetCommandLineParams(list, "/connectProfile", "/");
					if (ObjectHolder.MainForm != null && commandLineParams9.Count > 0)
					{
						ObjectHolder.MainForm.ConnectWithProfile(commandLineParams9[0], false, false, true);
					}
				}
				if (list.Contains("/show") && ObjectHolder.MainForm != null)
				{
					ObjectHolder.MainForm.ShowMe();
				}
				if (list.Contains("/lock-internet"))
				{
					Splash._mShowMainForm = false;
					if (ObjectHolder.MainForm != null)
					{
						ObjectHolder.MainForm.LockInternet();
					}
				}
				if (list.Contains("/unlock-internet"))
				{
					Splash._mShowMainForm = false;
					if (ObjectHolder.MainForm != null)
					{
						ObjectHolder.MainForm.UnlockInternet();
					}
				}
				if (list.Contains("/restart"))
				{
					if (ObjectHolder.MainForm != null)
					{
						ObjectHolder.MainForm.Exit(true);
					}
					result = false;
					return result;
				}
				if (list.Contains("/uninstall"))
				{
					if (ObjectHolder.MainForm != null)
					{
						ObjectHolder.MainForm.Exit(false);
					}
					result = false;
					return result;
				}
				if (list.Contains("/uninstallv2"))
				{
					if (ObjectHolder.MainForm != null)
					{
						ObjectHolder.MainForm.Exit(false);
					}
					result = false;
					return result;
				}
				if (list.Contains("/firststart") || SettingsHolder.get_Settings().get_FirstStartRetries() > 0)
				{
					ObjectHolder.IsFirstStart = true;
					if (list.Contains("/firststart"))
					{
						SettingsHolder.get_Settings().set_FirstStartRetries(2);
					}
					else
					{
						SettingsHolder expr_491 = SettingsHolder.get_Settings();
						int firstStartRetries = expr_491.get_FirstStartRetries();
						expr_491.set_FirstStartRetries(firstStartRetries - 1);
					}
					bool flag = list.Contains("/silent");
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
						return result;
					}
				}
				if (HelperFunctions.StringListContainsSubString(list, "cyberghost://recover/"))
				{
					List<string> commandLineParams10 = HelperFunctions.GetCommandLineParams(list, "cyberghost://recover/", "cyberghost://recover/");
					if (commandLineParams10.Count == 1)
					{
						string text = commandLineParams10[0].Substring("cyberghost://recover/".Length).Trim();
						if (!string.IsNullOrWhiteSpace(text))
						{
							Navigation.ShowMessageOverlay("ActivateLicense", false);
							LoginResultObject arg_635_0 = await Helper.Login(string.Empty, text, true);
							if (arg_635_0.LoginStatusCode != HttpStatusCode.OK)
							{
								Navigation.HideMessageOverlay(true);
							}
							HttpStatusCode var_17_64D = arg_635_0.LoginStatusCode;
							if (var_17_64D - HttpStatusCode.Unauthorized > 2)
							{
								if (var_17_64D == HttpStatusCode.RequestTimeout)
								{
									ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
								}
							}
							else if (ModernDialogExtension.ShowDialogOk(General.Maximum_devices_reached, General.You_have_reached_the_maximum_of_allowed_devices) == MessageBoxResult.OK)
							{
								Action arg_6A6_0;
								if ((arg_6A6_0 = Splash.<>c.<>9__3_0) == null)
								{
									arg_6A6_0 = (Splash.<>c.<>9__3_0 = new Action(Splash.<>c.<>9.<HandleCommandLine>b__3_0));
								}
								Task.Run(arg_6A6_0);
							}
						}
					}
				}
				if (list.Contains("/updateInstalled"))
				{
					HelperFunctions.OpenFileInBrowser(string.Format("http://{0}.cyberghostvpn.com/updateinstalled?&{1}&{2}", Splash.GetDomainPrefix(), MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, new string[]
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
				list = null;
			}
			result = true;
			return result;
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
							string connectProfile = SettingsHolder.get_Settings().get_AppProfile();
							if (!GuiHelper.IsProfileAvailableInPlan(connectProfile))
							{
								connectProfile = "ProfileAnonymousBrowsing";
							}
							SynchronizationContext expr_12C = ObjectHolder.MainContext;
							if (expr_12C != null)
							{
								expr_12C.Post(delegate(object o)
								{
									ObjectHolder.ConnectionSource = "app-protection";
									if (ObjectHolder.MainForm != null)
									{
										ObjectHolder.MainForm.ConnectWithProfile(connectProfile, false, true, false);
									}
								}, null);
							}
						}
						else if (ModernDialogExtension.ShowDialogYesNo(General.HandleCommandLine_No_internet_connection, General.HandleCommandLine_No_internet_connection_message) == MessageBoxResult.Yes)
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
					catch (Exception ex)
					{
						HelperFunctions.DebugLine("COULD NOT EXECUTE PROCESS " + ex.Message);
					}
				}
				catch (Exception ex2)
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
					catch (Exception ex)
					{
						HelperFunctions.DebugLine("COULD NOT EXECUTE PROCESS " + ex.Message);
					}
				}
				catch (Exception ex2)
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
					catch (Exception ex)
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
				catch (Exception ex)
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

		private static async Task PreloadControls()
		{
			Action arg_29_0;
			if ((arg_29_0 = Splash.<>c.<>9__15_0) == null)
			{
				arg_29_0 = (Splash.<>c.<>9__15_0 = new Action(Splash.<>c.<>9.<PreloadControls>b__15_0));
			}
			await Task.Run(arg_29_0);
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
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					Splash.<>c__DisplayClass21_0.<<SingleInstanceCallback>b__0>d <<SingleInstanceCallback>b__0>d;
					<<SingleInstanceCallback>b__0>d.<>4__this = <>c__DisplayClass21_;
					<<SingleInstanceCallback>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
					<<SingleInstanceCallback>b__0>d.<>1__state = -1;
					AsyncVoidMethodBuilder <>t__builder = <<SingleInstanceCallback>b__0>d.<>t__builder;
					<>t__builder.Start<Splash.<>c__DisplayClass21_0.<<SingleInstanceCallback>b__0>d>(ref <<SingleInstanceCallback>b__0>d);
				}, null);
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
	}
}
