using CyberGhost.Settings;
using Microsoft.Win32;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading.Tasks;

namespace CyberGhost.Helpers
{
	public static class Cg5UpgradeHelper
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <CheckForCg5AndUninstall>d__0 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			private ConfiguredTaskAwaitable <uninstallTask>5__1;

			private RegistryKey <backupKey>5__2;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				bool result;
				try
				{
					RegistryKey settingsKey;
					if (num != 0)
					{
						if (Cg5UpgradeHelper.IsCg5Installed())
						{
							HelperFunctions.DebugLine("CG 5.5 found ...");
							string cg5Uninstaller = Cg5UpgradeHelper.GetCg5Uninstaller();
							if (!string.IsNullOrEmpty(cg5Uninstaller))
							{
								HelperFunctions.DebugLine("Uninstaller found " + cg5Uninstaller);
								this.<backupKey>5__2 = Registry.CurrentUser.CreateSubKey("Software\\CyberGhostBackup", RegistryKeyPermissionCheck.ReadWriteSubTree);
								if (this.<backupKey>5__2 != null)
								{
									HelperFunctions.DebugLine("Backup key ok");
									settingsKey = SettingsHolder.get_Settings().GetSettingsKey(false, false, false);
									RegistryExtension.CopyTo(settingsKey, this.<backupKey>5__2);
									settingsKey.Close();
									this.<uninstallTask>5__1 = HelperFunctions.RunProcessAsync(cg5Uninstaller, "/SILENT").ConfigureAwait(false);
									goto IL_CD;
								}
								this.<backupKey>5__2 = null;
							}
						}
						result = false;
						goto IL_21A;
					}
					TaskAwaiter taskAwaiter = this.<>u__1;
					this.<>u__1 = default(TaskAwaiter);
					this.<>1__state = -1;
					goto IL_113;
					IL_CD:
					HelperFunctions.CloseProcessList(new string[]
					{
						"chrome",
						"iexplore",
						"firefox",
						"opera"
					}, null);
					taskAwaiter = Task.Delay(100).GetAwaiter();
					if (!taskAwaiter.IsCompleted)
					{
						this.<>1__state = 0;
						this.<>u__1 = taskAwaiter;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Cg5UpgradeHelper.<CheckForCg5AndUninstall>d__0>(ref taskAwaiter, ref this);
						return;
					}
					IL_113:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					if (!this.<uninstallTask>5__1.GetAwaiter().IsCompleted)
					{
						goto IL_CD;
					}
					settingsKey = SettingsHolder.get_Settings().GetSettingsKey(false, false, false);
					RegistryExtension.CopyTo(this.<backupKey>5__2, settingsKey);
					this.<backupKey>5__2.Close();
					settingsKey.Close();
					SettingsHolder.get_Settings().LoadSettings();
					SettingsHolder.get_Settings().set_IsCg5Upgrade(true);
					SettingsHolder.get_Settings().SaveSettings(false);
					HelperFunctions.DebugLine("Backup restored ...");
					this.<backupKey>5__2 = Registry.CurrentUser.OpenSubKey("Software", RegistryKeyPermissionCheck.ReadWriteSubTree);
					if (this.<backupKey>5__2 != null)
					{
						HelperFunctions.DebugLine("Deleting backup ...");
						this.<backupKey>5__2.DeleteSubKeyTree("CyberGhostBackup");
						this.<backupKey>5__2.Close();
					}
					HelperFunctions.DebugLine("Upgrade complete!");
					result = true;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_21A:
				this.<>1__state = -2;
				this.<>t__builder.SetResult(result);
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[AsyncStateMachine(typeof(Cg5UpgradeHelper.<CheckForCg5AndUninstall>d__0))]
		public static Task<bool> CheckForCg5AndUninstall()
		{
			Cg5UpgradeHelper.<CheckForCg5AndUninstall>d__0 <CheckForCg5AndUninstall>d__;
			<CheckForCg5AndUninstall>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<CheckForCg5AndUninstall>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <CheckForCg5AndUninstall>d__.<>t__builder;
			<>t__builder.Start<Cg5UpgradeHelper.<CheckForCg5AndUninstall>d__0>(ref <CheckForCg5AndUninstall>d__);
			return <CheckForCg5AndUninstall>d__.<>t__builder.Task;
		}

		public static bool IsCg5Installed()
		{
			RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall", RegistryKeyPermissionCheck.ReadSubTree);
			if (registryKey != null)
			{
				bool result = HelperFunctions.RegKeyHasSubKey(registryKey, "CyberGhost 5_is1");
				registryKey.Close();
				return result;
			}
			return false;
		}

		public static string GetCg5Uninstaller()
		{
			RegistryKey registryKey = Registry.LocalMachine.OpenSubKey("Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\CyberGhost 5_is1", RegistryKeyPermissionCheck.ReadSubTree);
			if (registryKey != null)
			{
				string arg_2F_0 = registryKey.GetValue("UninstallString", string.Empty).ToString();
				registryKey.Close();
				return arg_2F_0;
			}
			return string.Empty;
		}
	}
}

using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Helpers;
using CyberGhost.Settings.Settings;
using MobileConcepts.Helpers;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace CyberGhost.Helpers
{
	public class CgApiHelper
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <LoadHintsFromCsv>d__1 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			private string <path>5__1;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					try
					{
						TaskAwaiter taskAwaiter;
						if (num != 0)
						{
							this.<path>5__1 = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "hint");
							if (File.Exists(this.<path>5__1))
							{
								goto IL_95;
							}
							taskAwaiter = CgApiHelper.FetchRandomHintS().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, CgApiHelper.<LoadHintsFromCsv>d__1>(ref taskAwaiter, ref this);
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
						IL_95:
						string[] arg_CE_0 = CgApiHelper.Base64Decode(File.ReadAllText(this.<path>5__1)).Split(new char[]
						{
							'\n'
						});
						ObjectHolder.HintList = new CgApiHintList();
						ObjectHolder.HintList.get_Items().Clear();
						string[] array = arg_CE_0;
						for (int i = 0; i < array.Length; i++)
						{
							string text = array[i];
							if (!string.IsNullOrEmpty(text))
							{
								string[] array2 = text.Split(new char[]
								{
									';'
								});
								CgApiHint expr_100 = new CgApiHint();
								expr_100.set_Id(int.Parse(array2[0]));
								CgApiDisplaynameLocalization expr_115 = new CgApiDisplaynameLocalization();
								expr_115.set_DefaultString(array2[2]);
								expr_115.set_Strings(new Dictionary<string, string>());
								expr_100.set_Description(expr_115);
								CgApiHint cgApiHint = expr_100;
								cgApiHint.get_Description().get_Strings()["de"] = array2[1];
								cgApiHint.get_Description().get_Strings()["en"] = array2[2];
								cgApiHint.get_Description().get_Strings()["es"] = array2[3];
								cgApiHint.get_Description().get_Strings()["fr"] = array2[4];
								cgApiHint.get_Description().get_Strings()["it"] = array2[5];
								cgApiHint.get_Description().get_Strings()["pl"] = array2[6];
								cgApiHint.get_Description().get_Strings()["ro"] = array2[7];
								cgApiHint.get_Description().get_Strings()["ru"] = array2[8];
								cgApiHint.set_Profile(array2[9]);
								ObjectHolder.HintList.get_Items().Add(cgApiHint);
							}
						}
						this.<path>5__1 = null;
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("CgiApiHelper::{0} COULD NOT LOAD HINT FROM CSV {1}", MethodBase.GetCurrentMethod().Name, ex.Message));
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
		private struct <FetchRandomHintS>d__2 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			private StringBuilder <csv>5__1;

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
							this.<csv>5__1 = new StringBuilder();
							ObjectHolder.HintList = new CgApiHintList();
							taskAwaiter = ObjectHolder.HintList.Fetch().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								int arg_3D_1 = 0;
								num = 0;
								this.<>1__state = arg_3D_1;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, CgApiHelper.<FetchRandomHintS>d__2>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<bool>);
							int arg_73_1 = -1;
							num = -1;
							this.<>1__state = arg_73_1;
						}
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<bool>);
						List<CgApiHint>.Enumerator enumerator = ObjectHolder.HintList.get_Items().GetEnumerator();
						try
						{
							while (enumerator.MoveNext())
							{
								CgApiHint current = enumerator.Current;
								string text = current.get_Description().get_DefaultString();
								string text2 = current.get_Description().get_DefaultString();
								string text3 = current.get_Description().get_DefaultString();
								string text4 = current.get_Description().get_DefaultString();
								string text5 = current.get_Description().get_DefaultString();
								string text6 = current.get_Description().get_DefaultString();
								string text7 = current.get_Description().get_DefaultString();
								string text8 = current.get_Description().get_DefaultString();
								string profile = current.get_Profile();
								if (current.get_Description().get_Strings().ContainsKey("de"))
								{
									text = current.get_Description().get_Strings()["de"];
								}
								if (current.get_Description().get_Strings().ContainsKey("en"))
								{
									text2 = current.get_Description().get_Strings()["en"];
								}
								if (current.get_Description().get_Strings().ContainsKey("es"))
								{
									text3 = current.get_Description().get_Strings()["es"];
								}
								if (current.get_Description().get_Strings().ContainsKey("fr"))
								{
									text4 = current.get_Description().get_Strings()["fr"];
								}
								if (current.get_Description().get_Strings().ContainsKey("it"))
								{
									text5 = current.get_Description().get_Strings()["it"];
								}
								if (current.get_Description().get_Strings().ContainsKey("pl"))
								{
									text6 = current.get_Description().get_Strings()["pl"];
								}
								if (current.get_Description().get_Strings().ContainsKey("ro"))
								{
									text8 = current.get_Description().get_Strings()["ro"];
								}
								if (current.get_Description().get_Strings().ContainsKey("ru"))
								{
									text7 = current.get_Description().get_Strings()["ru"];
								}
								string value = string.Format("{0};{1};{2};{3};{4};{5};{6};{7};{8};{9}", new object[]
								{
									current.get_Id(),
									text,
									text2,
									text3,
									text4,
									text5,
									text6,
									text8,
									text7,
									profile
								});
								this.<csv>5__1.AppendLine(value);
							}
						}
						finally
						{
							if (num < 0)
							{
								((IDisposable)enumerator).Dispose();
							}
						}
						File.WriteAllText(Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "hint"), CgApiHelper.Base64Encode(this.<csv>5__1.ToString()));
						this.<csv>5__1 = null;
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("CgiApiHelper::{0} COULD NOT FETCH RANDOM HINT {1}", MethodBase.GetCurrentMethod().Name, ex.Message));
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
		private struct <LoadProgramsFromCsv>d__3 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			private string <path>5__1;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					try
					{
						TaskAwaiter taskAwaiter;
						if (num != 0)
						{
							this.<path>5__1 = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "programs");
							if (File.Exists(this.<path>5__1))
							{
								goto IL_95;
							}
							taskAwaiter = CgApiHelper.FetchProgramList().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, CgApiHelper.<LoadProgramsFromCsv>d__3>(ref taskAwaiter, ref this);
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
						IL_95:
						string[] arg_CE_0 = CgApiHelper.Base64Decode(File.ReadAllText(this.<path>5__1)).Split(new char[]
						{
							'\n'
						});
						ObjectHolder.ProgramList = new CgApiProgramList();
						ObjectHolder.ProgramList.get_Items().Clear();
						string[] array = arg_CE_0;
						for (int i = 0; i < array.Length; i++)
						{
							string text = array[i];
							if (!string.IsNullOrEmpty(text))
							{
								string[] array2 = text.Split(new char[]
								{
									';'
								});
								CgApiProgram expr_FA = new CgApiProgram();
								expr_FA.set_Id(int.Parse(array2[0]));
								expr_FA.set_ExeName(array2[1]);
								expr_FA.set_RegName(array2[2]);
								CgApiProgram item = expr_FA;
								ObjectHolder.ProgramList.get_Items().Add(item);
							}
						}
						this.<path>5__1 = null;
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("CgApiHelper::{0} COULD NOT LOAD PROGS FROM CSV {1}", MethodBase.GetCurrentMethod().Name, ex.Message));
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
		private struct <FetchProgramList>d__4 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			private StringBuilder <csv>5__1;

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
							this.<csv>5__1 = new StringBuilder();
							ObjectHolder.ProgramList = new CgApiProgramList();
							taskAwaiter = ObjectHolder.ProgramList.Fetch().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								int arg_3D_1 = 0;
								num = 0;
								this.<>1__state = arg_3D_1;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, CgApiHelper.<FetchProgramList>d__4>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<bool>);
							int arg_73_1 = -1;
							num = -1;
							this.<>1__state = arg_73_1;
						}
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<bool>);
						List<CgApiProgram>.Enumerator enumerator = ObjectHolder.ProgramList.get_Items().GetEnumerator();
						try
						{
							while (enumerator.MoveNext())
							{
								CgApiProgram expr_A2 = enumerator.Current;
								string arg = expr_A2.get_Id().ToString();
								string exeName = expr_A2.get_ExeName();
								string regName = expr_A2.get_RegName();
								string value = string.Format("{0};{1};{2}", arg, exeName, regName);
								this.<csv>5__1.AppendLine(value);
							}
						}
						finally
						{
							if (num < 0)
							{
								((IDisposable)enumerator).Dispose();
							}
						}
						File.WriteAllText(Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "programs"), CgApiHelper.Base64Encode(this.<csv>5__1.ToString()));
						this.<csv>5__1 = null;
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("CgApiHelper::{0} COULD NOT FETCH PROGRAM {1}", MethodBase.GetCurrentMethod().Name, ex.Message));
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

		public static bool DoVersionCheck()
		{
			Version version = ObjectHolder.CurrentStatus.RequiredCg6ClientVersion();
			Version version2 = Assembly.GetExecutingAssembly().GetName().Version;
			Version obj = Version.Parse("6.0.0.0");
			return version == null || version2.Equals(obj) || version2 >= version;
		}

		[AsyncStateMachine(typeof(CgApiHelper.<LoadHintsFromCsv>d__1))]
		public static Task LoadHintsFromCsv()
		{
			CgApiHelper.<LoadHintsFromCsv>d__1 <LoadHintsFromCsv>d__;
			<LoadHintsFromCsv>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<LoadHintsFromCsv>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <LoadHintsFromCsv>d__.<>t__builder;
			<>t__builder.Start<CgApiHelper.<LoadHintsFromCsv>d__1>(ref <LoadHintsFromCsv>d__);
			return <LoadHintsFromCsv>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(CgApiHelper.<FetchRandomHintS>d__2))]
		public static Task FetchRandomHintS()
		{
			CgApiHelper.<FetchRandomHintS>d__2 <FetchRandomHintS>d__;
			<FetchRandomHintS>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<FetchRandomHintS>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <FetchRandomHintS>d__.<>t__builder;
			<>t__builder.Start<CgApiHelper.<FetchRandomHintS>d__2>(ref <FetchRandomHintS>d__);
			return <FetchRandomHintS>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(CgApiHelper.<LoadProgramsFromCsv>d__3))]
		public static Task LoadProgramsFromCsv()
		{
			CgApiHelper.<LoadProgramsFromCsv>d__3 <LoadProgramsFromCsv>d__;
			<LoadProgramsFromCsv>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<LoadProgramsFromCsv>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <LoadProgramsFromCsv>d__.<>t__builder;
			<>t__builder.Start<CgApiHelper.<LoadProgramsFromCsv>d__3>(ref <LoadProgramsFromCsv>d__);
			return <LoadProgramsFromCsv>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(CgApiHelper.<FetchProgramList>d__4))]
		public static Task FetchProgramList()
		{
			CgApiHelper.<FetchProgramList>d__4 <FetchProgramList>d__;
			<FetchProgramList>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<FetchProgramList>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <FetchProgramList>d__.<>t__builder;
			<>t__builder.Start<CgApiHelper.<FetchProgramList>d__4>(ref <FetchProgramList>d__);
			return <FetchProgramList>d__.<>t__builder.Task;
		}

		public static string Base64Encode(string plainText)
		{
			return Convert.ToBase64String(Encoding.UTF8.GetBytes(plainText));
		}

		public static string Base64Decode(string base64EncodedData)
		{
			byte[] bytes = Convert.FromBase64String(base64EncodedData);
			return Encoding.UTF8.GetString(bytes);
		}

		public static CgBase SetFeaturesByProfile(CgBase profile, CgApiUser user = null)
		{
			if (profile == null)
			{
				return null;
			}
			if (user == null)
			{
				user = ObjectHolder.CurrentUser;
			}
			if (user == null)
			{
				return null;
			}
			string baseName = profile.GetBaseName();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(baseName);
			if (num <= 1377339077u)
			{
				if (num != 120087624u)
				{
					if (num != 542584942u)
					{
						if (num == 1377339077u)
						{
							if (baseName == "network")
							{
								SettingsHelpers.SetDefaultFeaturesNetwork(profile, user);
							}
						}
					}
					else if (baseName == "custom")
					{
						SettingsHelpers.SetDefaultFeaturesCustom(profile, user);
					}
				}
				else if (baseName == "wifi")
				{
					SettingsHelpers.SetDefaultFeaturesWifi(profile, user);
				}
			}
			else if (num <= 1879243226u)
			{
				if (num != 1741922751u)
				{
					if (num == 1879243226u)
					{
						if (baseName == "anonymousDownloading")
						{
							SettingsHelpers.SetDefaultFeaturesAnonymousDownloading(profile, user);
						}
					}
				}
				else if (baseName == "unblock")
				{
					SettingsHelpers.SetDefaultFeaturesUnblock(profile, user);
				}
			}
			else if (num != 2687971255u)
			{
				if (num == 2889374611u)
				{
					if (baseName == "antiCensor")
					{
						SettingsHelpers.SetDefaultFeaturesAntiCensor(profile, user);
					}
				}
			}
			else if (baseName == "anonymousBrowsing")
			{
				SettingsHelpers.SetDefaultFeaturesAnonymousBrowsing(profile, user);
			}
			return profile;
		}

		public static Channel GetLoginSystemChannel()
		{
			string text = SettingsHolder.get_Settings().get_LoginServer();
			if (string.IsNullOrEmpty(text))
			{
				text = "rest.cyberghostvpn.com";
			}
			if (text.Contains("rest"))
			{
				return 5;
			}
			if (text.Contains("beta-api"))
			{
				return 3;
			}
			if (text.Contains("dev-api"))
			{
				return 1;
			}
			return 0;
		}
	}
}

using CyberGhost.Pages;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Translations;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace CyberGhost.Helpers
{
	public class ConversionPopUpHelpers
	{
		public static void CloseConverionPopUp()
		{
			((Frame)ObjectHolder.MainForm.Template.FindName("ConversionFrame", ObjectHolder.MainForm)).Visibility = Visibility.Hidden;
			ObjectHolder.MainForm.ContentBlockerVisibility = Visibility.Hidden;
			CommandManager.InvalidateRequerySuggested();
		}

		public static void ShowConversionPopUp(CgApiFeature.Feature aFeature)
		{
			string conversionInfo;
			string conversionTitle;
			switch (aFeature)
			{
			case 1:
				conversionInfo = Conversion.ConversionAdblockMessage;
				conversionTitle = Profiles.ads_head;
				goto IL_13F;
			case 2:
				conversionInfo = Conversion.ConversionMalwareMessage;
				conversionTitle = Profiles.malware_head;
				goto IL_13F;
			case 3:
				conversionInfo = Conversion.ConversionZipMessage;
				conversionTitle = Profiles.compression_head;
				goto IL_13F;
			case 4:
				conversionInfo = Conversion.ConversionTrackingMessage;
				conversionTitle = Profiles.tracking_head;
				goto IL_13F;
			case 8:
				conversionInfo = Conversion.ConversionHttpsEverywhereMessage;
				conversionTitle = Profiles.https_everywhere;
				goto IL_13F;
			case 9:
				conversionInfo = Conversion.ConversionExtraSpeedMessage;
				conversionTitle = Profiles.speed_head;
				goto IL_13F;
			case 11:
				conversionInfo = Conversion.ConversionConnectNetworkMessage;
				conversionTitle = Conversion.ConversionConnectWifiTitle;
				goto IL_13F;
			case 12:
				conversionInfo = Conversion.ConversionConnectUnblockMessage;
				conversionTitle = Conversion.ConversionConnectUnblockTitle;
				goto IL_13F;
			case 13:
				conversionInfo = Conversion.ConversionConnectSurfMessage;
				conversionTitle = Conversion.ConversionConnectSurfTitle;
				goto IL_13F;
			case 14:
				conversionInfo = Conversion.ConversionConnectUnblockMessage;
				conversionTitle = Conversion.ConversionConnectUnblockTitle;
				goto IL_13F;
			case 16:
				conversionInfo = Conversion.ConversionConnectCustomMessage;
				conversionTitle = Conversion.ConversionConnectCustomTitle;
				goto IL_13F;
			case 17:
				conversionInfo = Conversion.ConversionConnectNetworkMessage;
				conversionTitle = Conversion.ConversionConnectNetworkTitle;
				goto IL_13F;
			case 18:
				conversionInfo = Conversion.ConversionConnectDownloadMessage;
				conversionTitle = Conversion.ConversionConnectDownloadTitle;
				goto IL_13F;
			case 19:
				conversionInfo = Conversion.ConversionCountrySelectionMessage;
				conversionTitle = Conversion.ConversionCountrySelectionTitle;
				goto IL_13F;
			}
			throw new ArgumentOutOfRangeException("aFeature", aFeature, null);
			IL_13F:
			Frame frame = (Frame)ObjectHolder.MainForm.Template.FindName("ConversionFrame", ObjectHolder.MainForm);
			frame.Visibility = Visibility.Visible;
			ObjectHolder.MainForm.ContentBlockerVisibility = Visibility.Visible;
			ConversionPopUp conversionPopUp = new ConversionPopUp(aFeature)
			{
				ConversionTitle = conversionTitle,
				ConversionInfo = conversionInfo,
				ContentFrame = frame
			};
			conversionPopUp.ContentFrame.Navigate(conversionPopUp);
			ObjectHolder.MainForm.ShowMe();
		}
	}
}

using MobileConcepts.Components.Log;
using System;
using System.Runtime.CompilerServices;

namespace CyberGhost.Helpers
{
	public sealed class DebugLogHelper
	{
		private McSystemLogItem BaseEvent
		{
			[CompilerGenerated]
			get
			{
				return this.<BaseEvent>k__BackingField;
			}
		}

		public static DebugLogHelper Instance
		{
			[CompilerGenerated]
			get
			{
				return DebugLogHelper.<Instance>k__BackingField;
			}
		}

		public void Info(string info)
		{
			this.BaseEvent.set_Info(info);
			ObjectHolder.EventLogger.LogLocalEvent(this.BaseEvent);
		}

		static DebugLogHelper()
		{
			DebugLogHelper.<Instance>k__BackingField = new DebugLogHelper();
		}

		private DebugLogHelper()
		{
			this.<BaseEvent>k__BackingField = new McSystemLogItem();
		}
	}
}

using System;
using System.Management;
using System.Security.Cryptography;
using System.Text;

namespace CyberGhost.Helpers
{
	public class FingerPrint
	{
		private static string _fingerPrint = string.Empty;

		public static string Value()
		{
			if (string.IsNullOrEmpty(FingerPrint._fingerPrint))
			{
				FingerPrint._fingerPrint = FingerPrint.GetHash(string.Concat(new string[]
				{
					"CPU >> ",
					FingerPrint.CpuId(),
					"\nBIOS >> ",
					FingerPrint.BiosId(),
					"\nBASE >> ",
					FingerPrint.BaseId(),
					FingerPrint.VideoId(),
					"\nMAC >> ",
					FingerPrint.MacId()
				}));
			}
			return FingerPrint._fingerPrint;
		}

		private static string GetHash(string s)
		{
			HashAlgorithm arg_12_0 = new MD5CryptoServiceProvider();
			byte[] bytes = new ASCIIEncoding().GetBytes(s);
			return FingerPrint.GetHexString(arg_12_0.ComputeHash(bytes));
		}

		private static string GetHexString(byte[] bt)
		{
			string text = string.Empty;
			for (int i = 0; i < bt.Length; i++)
			{
				byte expr_10 = bt[i];
				int num = (int)(expr_10 & 15);
				int num2 = expr_10 >> 4 & 15;
				if (num2 > 9)
				{
					text += ((char)(num2 - 10 + 65)).ToString();
				}
				else
				{
					text += num2.ToString();
				}
				if (num > 9)
				{
					text += ((char)(num - 10 + 65)).ToString();
				}
				else
				{
					text += num.ToString();
				}
				if (i + 1 != bt.Length && (i + 1) % 2 == 0)
				{
					text += "-";
				}
			}
			return text;
		}

		private static string identifier(string wmiClass, string wmiProperty, string wmiMustBeTrue)
		{
			string text = "";
			using (ManagementObjectCollection.ManagementObjectEnumerator enumerator = new ManagementClass(wmiClass).GetInstances().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					ManagementObject managementObject = (ManagementObject)enumerator.Current;
					if (managementObject[wmiMustBeTrue].ToString() == "True" && text == "")
					{
						try
						{
							text = managementObject[wmiProperty].ToString();
							break;
						}
						catch
						{
						}
					}
				}
			}
			return text;
		}

		private static string identifier(string wmiClass, string wmiProperty)
		{
			string text = "";
			using (ManagementObjectCollection.ManagementObjectEnumerator enumerator = new ManagementClass(wmiClass).GetInstances().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					ManagementObject managementObject = (ManagementObject)enumerator.Current;
					if (text == "")
					{
						try
						{
							object expr_3A = managementObject[wmiProperty];
							text = ((expr_3A != null) ? expr_3A.ToString() : null);
							break;
						}
						catch
						{
						}
					}
				}
			}
			return text;
		}

		private static string CpuId()
		{
			string text = FingerPrint.identifier("Win32_Processor", "UniqueId");
			if (text == "")
			{
				text = FingerPrint.identifier("Win32_Processor", "ProcessorId");
				if (text == "")
				{
					text = FingerPrint.identifier("Win32_Processor", "Name");
					if (text == "")
					{
						text = FingerPrint.identifier("Win32_Processor", "Manufacturer");
					}
					text += FingerPrint.identifier("Win32_Processor", "MaxClockSpeed");
				}
			}
			return text;
		}

		private static string BiosId()
		{
			return string.Concat(new string[]
			{
				FingerPrint.identifier("Win32_BIOS", "Manufacturer"),
				FingerPrint.identifier("Win32_BIOS", "SMBIOSBIOSVersion"),
				FingerPrint.identifier("Win32_BIOS", "IdentificationCode"),
				FingerPrint.identifier("Win32_BIOS", "SerialNumber"),
				FingerPrint.identifier("Win32_BIOS", "ReleaseDate"),
				FingerPrint.identifier("Win32_BIOS", "Version")
			});
		}

		private static string DiskId()
		{
			return FingerPrint.identifier("Win32_DiskDrive", "Model") + FingerPrint.identifier("Win32_DiskDrive", "Manufacturer") + FingerPrint.identifier("Win32_DiskDrive", "Signature") + FingerPrint.identifier("Win32_DiskDrive", "TotalHeads");
		}

		private static string BaseId()
		{
			return FingerPrint.identifier("Win32_BaseBoard", "Model") + FingerPrint.identifier("Win32_BaseBoard", "Manufacturer") + FingerPrint.identifier("Win32_BaseBoard", "Name") + FingerPrint.identifier("Win32_BaseBoard", "SerialNumber");
		}

		private static string VideoId()
		{
			return FingerPrint.identifier("Win32_VideoController", "DriverVersion") + FingerPrint.identifier("Win32_VideoController", "Name");
		}

		private static string MacId()
		{
			return FingerPrint.identifier("Win32_NetworkAdapterConfiguration", "MACAddress", "IPEnabled");
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using HtmlAgilityPack;
using MobileConcepts.Helpers;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Numerics;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace CyberGhost.Helpers
{
	public static class GuiHelper
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass10_0
		{
			public string profil;

			public TextBlock hint;

			public Random rnd;

			public System.Windows.Forms.Timer hintTimer;

			internal void <SetRandomHint>b__0(object sender, EventArgs e)
			{
				if (ObjectHolder.ConnectionStatus != 10)
				{
					if (ObjectHolder.ConnectionStatus != -1)
					{
						this.hintTimer.Stop();
						return;
					}
				}
				try
				{
					List<CgApiHint> list = new List<CgApiHint>();
					foreach (CgApiHint current in ObjectHolder.HintList.get_Items())
					{
						if (current.get_Profile().Replace("\r", "").Contains(this.profil))
						{
							list.Add(current);
						}
					}
					string newValue = "";
					this.hint.Text = Status.Connecting_DefaultHint.Replace("%PROFILE%", newValue);
					if (list.Count > 0)
					{
						int index = this.rnd.Next(list.Count);
						CgApiHint cgApiHint = (CgApiHint)list.ToArray().GetValue(index);
						if (SettingsHolder.get_Settings().get_Language() != null)
						{
							string text = cgApiHint.get_Description().get_Strings()[SettingsHolder.get_Settings().get_Language()].Replace("%PROFILE%", newValue);
							if (!string.IsNullOrEmpty(text))
							{
								this.hint.Text = text;
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
		private sealed class <>c__DisplayClass11_0
		{
			public string countrycode;

			public Func<KeyValuePair<string, string>, bool> <>9__0;

			internal bool <FindTranslationForCountry>b__0(KeyValuePair<string, string> country)
			{
				return country.Key.Equals(this.countrycode, StringComparison.InvariantCultureIgnoreCase);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <ShowUpgradeDialog>d__23 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public string profileName;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						new ConversionWindowEvent
						{
							ConversionPoint = this.profileName
						}.FireEvent();
						if (ModernDialogExtension.ShowDialogYesNo(Profiles.FeatureBox_Feature_Premium, Profiles.FeatureBox_FeatureBoxButton_Desc) != MessageBoxResult.Yes)
						{
							goto IL_A3;
						}
						taskAwaiter = Navigation.GoInAppPurchase(string.Format("Profile_Not_Available_{0}", this.profileName), null).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, GuiHelper.<ShowUpgradeDialog>d__23>(ref taskAwaiter, ref this);
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
					IL_A3:;
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
		private struct <DownloadFavIcon>d__31 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<string> <>t__builder;

			public string directDownloadUrl;

			public string unblockname;

			public string uristring;

			public CancellationToken cancellationToken;

			private Uri <url>5__1;

			private string <savePath>5__2;

			private string <extension>5__3;

			private TaskAwaiter<string> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				string result;
				try
				{
					if (num > 1)
					{
						this.<extension>5__3 = "ico";
						if (!string.IsNullOrWhiteSpace(this.directDownloadUrl))
						{
							this.<extension>5__3 = this.directDownloadUrl.Substring(this.directDownloadUrl.Length - 3, 3);
						}
						string text = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), HelperFunctions.GetValidLocalFileName(this.unblockname) + "." + this.<extension>5__3);
						if (File.Exists(text))
						{
							result = text;
							goto IL_259;
						}
					}
					try
					{
						TaskAwaiter<string> taskAwaiter;
						string text2;
						if (num != 0)
						{
							if (num != 1)
							{
								this.<url>5__1 = new UriBuilder(this.uristring).Uri;
								this.<savePath>5__2 = (string.IsNullOrWhiteSpace(this.unblockname) ? Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), this.<url>5__1.Host) : Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), HelperFunctions.GetValidLocalFileName(this.unblockname)));
								if (!string.IsNullOrWhiteSpace(this.directDownloadUrl))
								{
									taskAwaiter = GuiHelper.DownloadImage(this.cancellationToken, this.uristring, this.<savePath>5__2, this.<extension>5__3).GetAwaiter();
									if (!taskAwaiter.IsCompleted)
									{
										this.<>1__state = 0;
										this.<>u__1 = taskAwaiter;
										this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, GuiHelper.<DownloadFavIcon>d__31>(ref taskAwaiter, ref this);
										return;
									}
									goto IL_1F9;
								}
								else
								{
									taskAwaiter = GuiHelper.DownloadImage(this.cancellationToken, this.<url>5__1.AbsoluteUri + "favicon.ico", this.<savePath>5__2, this.<extension>5__3).GetAwaiter();
									if (!taskAwaiter.IsCompleted)
									{
										this.<>1__state = 1;
										this.<>u__1 = taskAwaiter;
										this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, GuiHelper.<DownloadFavIcon>d__31>(ref taskAwaiter, ref this);
										return;
									}
								}
							}
							else
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter<string>);
								this.<>1__state = -1;
							}
							string arg_1D9_0 = taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter<string>);
							text2 = arg_1D9_0;
							goto IL_209;
						}
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<string>);
						this.<>1__state = -1;
						IL_1F9:
						string arg_208_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<string>);
						text2 = arg_208_0;
						IL_209:
						this.<savePath>5__2 = text2;
						result = this.<savePath>5__2;
						goto IL_259;
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("COULD NOT DOWNLOAD FAVIVON DownloadFavIcon EX: {0}", ex.Message));
					}
					result = Theming.GetThemedImage("Icons\\Functions\\icon_play.png");
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_259:
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
		private sealed class <>c__DisplayClass34_0
		{
			public CgBase profile;

			public TextBlock lblAdds;

			public TextBlock lblMalware;

			public TextBlock lblTracking;

			internal void <SetCurrentFeatureNumbers>b__0(object o)
			{
				if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.get_TokenObj() != null && ObjectHolder.CurrentUser.get_TokenObj().get_Features() != null)
				{
					using (List<CgApiFeatures>.Enumerator enumerator = ObjectHolder.CurrentUser.get_TokenObj().get_Features().GetEnumerator())
					{
						while (enumerator.MoveNext())
						{
							CgApiFeatures current = enumerator.Current;
							if (current.get_Id() == 1 && this.profile.get_FeatureAdBlock())
							{
								this.lblAdds.Text = current.get_Statistics().ToString();
							}
							if (current.get_Id() == 2 && this.profile.get_FeatureMalware())
							{
								this.lblMalware.Text = current.get_Statistics().ToString();
							}
							if (current.get_Id() == 4 && this.profile.get_FeatureTracking())
							{
								this.lblTracking.Text = current.get_Statistics().ToString();
							}
						}
						return;
					}
				}
				if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.get_TokenObj() != null && ObjectHolder.CurrentUser.get_TokenObj().get_Features() == null)
				{
					Tuple<string, string, string> tuple = GuiHelper.DetermineStatus(this.profile);
					this.lblAdds.Text = (this.profile.get_FeatureAdBlock() ? "0" : tuple.Item1);
					this.lblMalware.Text = (this.profile.get_FeatureMalware() ? "0" : tuple.Item2);
					this.lblTracking.Text = (this.profile.get_FeatureTracking() ? "0" : tuple.Item3);
				}
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <DownloadImage>d__36 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<string> <>t__builder;

			public string saveloc;

			public string extension;

			public CancellationToken cancellationToken;

			public string url;

			private string <exFile>5__1;

			private WebClient <wc>5__2;

			private TaskAwaiter<byte[]> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				string result;
				try
				{
					if (num != 0)
					{
						this.<exFile>5__1 = string.Format("{0}.{1}", this.saveloc, this.extension);
						if (File.Exists(this.<exFile>5__1))
						{
							result = this.<exFile>5__1;
							goto IL_287;
						}
					}
					try
					{
						if (num != 0)
						{
							this.<wc>5__2 = new WebClient();
						}
						try
						{
							TaskAwaiter<byte[]> taskAwaiter;
							if (num != 0)
							{
								this.cancellationToken.Register(new Action(this.<wc>5__2.CancelAsync));
								taskAwaiter = this.<wc>5__2.DownloadDataTaskAsync(this.url).GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									int arg_94_1 = 0;
									num = 0;
									this.<>1__state = arg_94_1;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<byte[]>, GuiHelper.<DownloadImage>d__36>(ref taskAwaiter, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter<byte[]>);
								int arg_CC_1 = -1;
								num = -1;
								this.<>1__state = arg_CC_1;
							}
							byte[] arg_E0_0 = taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter<byte[]>);
							byte[] bytes = arg_E0_0;
							if (this.cancellationToken.IsCancellationRequested)
							{
								this.saveloc = string.Empty;
								result = this.saveloc;
								goto IL_287;
							}
							if (!string.IsNullOrEmpty(this.extension))
							{
								if (!File.Exists(this.<exFile>5__1))
								{
									File.WriteAllBytes(this.<exFile>5__1, bytes);
								}
								result = this.<exFile>5__1;
								goto IL_287;
							}
							string text = this.<wc>5__2.ResponseHeaders[HttpResponseHeader.ContentType];
							if (this.extension != null && this.extension.Equals("ico"))
							{
								text = "image/ico";
							}
							if (text != null)
							{
								if (!(text == "image/jpeg"))
								{
									if (!(text == "image/gif"))
									{
										if (!(text == "image/png"))
										{
											if (text == "image/ico")
											{
												this.saveloc += ".ico";
											}
										}
										else
										{
											this.saveloc += ".png";
										}
									}
									else
									{
										this.saveloc += ".gif";
									}
								}
								else
								{
									this.saveloc += ".jpg";
								}
								try
								{
									if (!File.Exists(this.saveloc))
									{
										File.WriteAllBytes(this.saveloc, bytes);
									}
									result = this.saveloc;
									goto IL_287;
								}
								catch (Exception)
								{
								}
							}
						}
						finally
						{
							if (num < 0 && this.<wc>5__2 != null)
							{
								((IDisposable)this.<wc>5__2).Dispose();
							}
						}
						this.<wc>5__2 = null;
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine("Error in downloadimage" + ex.Message);
					}
					result = this.saveloc;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_287:
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
		private sealed class <>c__DisplayClass45_0
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<InitializeServerList>b__0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncTaskMethodBuilder <>t__builder;

				public GuiHelper.<>c__DisplayClass45_0 <>4__this;

				private TaskAwaiter<bool> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					GuiHelper.<>c__DisplayClass45_0 <>c__DisplayClass45_ = this.<>4__this;
					try
					{
						try
						{
							TaskAwaiter<bool> taskAwaiter;
							if (num != 0)
							{
								taskAwaiter = <>c__DisplayClass45_.servers.FetchByFilter(13, null, null, false).GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									this.<>1__state = 0;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, GuiHelper.<>c__DisplayClass45_0.<<InitializeServerList>b__0>d>(ref taskAwaiter, ref this);
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
							HelperFunctions.DebugLine("! *** InitializeServerList FAILED FETCH QUICK SERVER *** !");
						}
						SynchronizationContext arg_B4_0 = ObjectHolder.MainContext;
						SendOrPostCallback arg_B4_1;
						if ((arg_B4_1 = <>c__DisplayClass45_.<>9__1) == null)
						{
							arg_B4_1 = (<>c__DisplayClass45_.<>9__1 = new SendOrPostCallback(<>c__DisplayClass45_.<InitializeServerList>b__1));
						}
						arg_B4_0.Post(arg_B4_1, null);
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

			public CgApiServerList servers;

			public Selector box;

			public SendOrPostCallback <>9__1;

			[AsyncStateMachine(typeof(GuiHelper.<>c__DisplayClass45_0.<<InitializeServerList>b__0>d))]
			internal Task <InitializeServerList>b__0()
			{
				GuiHelper.<>c__DisplayClass45_0.<<InitializeServerList>b__0>d <<InitializeServerList>b__0>d;
				<<InitializeServerList>b__0>d.<>4__this = this;
				<<InitializeServerList>b__0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
				<<InitializeServerList>b__0>d.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <<InitializeServerList>b__0>d.<>t__builder;
				<>t__builder.Start<GuiHelper.<>c__DisplayClass45_0.<<InitializeServerList>b__0>d>(ref <<InitializeServerList>b__0>d);
				return <<InitializeServerList>b__0>d.<>t__builder.Task;
			}

			internal void <InitializeServerList>b__1(object o)
			{
				if (SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries().Count == this.servers.get_Items().Count + 1)
				{
					return;
				}
				try
				{
					GuiHelper.FillCountriesForView(this.servers, this.box);
					GuiHelper.UpdateSelection();
				}
				catch (Exception)
				{
				}
			}
		}

		private static readonly List<Selector> RegisteredBoxes;

		public static System.Windows.Forms.Timer GoBackHomeTimer
		{
			get;
			set;
		}

		public static Dictionary<string, string> CountryList
		{
			[CompilerGenerated]
			get
			{
				return GuiHelper.<CountryList>k__BackingField;
			}
		}

		public static Color GenerateColor(string colorString)
		{
			Color result = default(Color);
			object obj = ColorConverter.ConvertFromString(colorString);
			if (obj != null)
			{
				result = (Color)obj;
			}
			return result;
		}

		public static string GetFragment(string aUriString)
		{
			if (aUriString.Contains("#"))
			{
				return aUriString.Substring(aUriString.IndexOf("#", StringComparison.InvariantCultureIgnoreCase) + 1);
			}
			return string.Empty;
		}

		public static void SetUpgradeBarVisiblity(FeatureGroup featureGroup)
		{
			if (GuiHelper.CheckIfUpgradeBarIsVisible())
			{
				featureGroup.DockForFree.Visibility = Visibility.Visible;
				featureGroup.DockForPremium.Visibility = Visibility.Hidden;
				return;
			}
			featureGroup.DockForFree.Visibility = Visibility.Hidden;
			featureGroup.DockForPremium.Visibility = Visibility.Visible;
		}

		public static void SetRandomHint(TextBlock hint, string profil)
		{
			GuiHelper.<>c__DisplayClass10_0 expr_05 = new GuiHelper.<>c__DisplayClass10_0();
			expr_05.profil = profil;
			expr_05.hint = hint;
			expr_05.rnd = new Random();
			expr_05.hintTimer = new System.Windows.Forms.Timer
			{
				Interval = Constants.HintInterval,
				Enabled = true
			};
			EventHandler eventHandler = new EventHandler(expr_05.<SetRandomHint>b__0);
			expr_05.hintTimer.Tick += eventHandler;
			eventHandler(null, null);
		}

		public static string FindTranslationForCountry(string countrycode)
		{
			GuiHelper.<>c__DisplayClass11_0 <>c__DisplayClass11_ = new GuiHelper.<>c__DisplayClass11_0();
			<>c__DisplayClass11_.countrycode = countrycode;
			if (string.IsNullOrEmpty(<>c__DisplayClass11_.countrycode))
			{
				return string.Empty;
			}
			IEnumerable<KeyValuePair<string, string>> arg_44_0 = GuiHelper.CountryList;
			Func<KeyValuePair<string, string>, bool> arg_44_1;
			if ((arg_44_1 = <>c__DisplayClass11_.<>9__0) == null)
			{
				arg_44_1 = (<>c__DisplayClass11_.<>9__0 = new Func<KeyValuePair<string, string>, bool>(<>c__DisplayClass11_.<FindTranslationForCountry>b__0));
			}
			string value;
			using (IEnumerator<KeyValuePair<string, string>> enumerator = arg_44_0.Where(arg_44_1).GetEnumerator())
			{
				if (!enumerator.MoveNext())
				{
					goto IL_78;
				}
				KeyValuePair<string, string> current = enumerator.Current;
				value = current.Value;
			}
			return value;
			IL_78:
			return <>c__DisplayClass11_.countrycode;
		}

		public static void StartInactivityCheck(int timerInterval = 1800000)
		{
			if (GuiHelper.GoBackHomeTimer == null)
			{
				GuiHelper.GoBackHomeTimer = new System.Windows.Forms.Timer();
				ObjectHolder.MainForm.MouseMove += new System.Windows.Input.MouseEventHandler(GuiHelper.MainForm_MouseMove);
			}
			GuiHelper.GoBackHomeTimer.Enabled = false;
			GuiHelper.GoBackHomeTimer.Interval = timerInterval;
			GuiHelper.GoBackHomeTimer.Tick += new EventHandler(GuiHelper.TimerTick);
			GuiHelper.GoBackHomeTimer.Enabled = true;
		}

		private static void MainForm_MouseMove(object sender, System.Windows.Input.MouseEventArgs e)
		{
			if (GuiHelper.GoBackHomeTimer.Enabled)
			{
				GuiHelper.GoBackHomeTimer.Stop();
				GuiHelper.GoBackHomeTimer.Start();
			}
		}

		public static void StopInactivityCheck()
		{
			System.Windows.Forms.Timer expr_05 = GuiHelper.GoBackHomeTimer;
			if (expr_05 == null)
			{
				return;
			}
			expr_05.Stop();
		}

		private static void TimerTick(object sender, EventArgs e)
		{
			GuiHelper.StopInactivityCheck();
			if (ObjectHolder.MainForm.ContentFrame.get_Source() != null && ObjectHolder.MainForm.ContentFrame.get_Source().ToString().ToLower().Contains("/pages/profiles/"))
			{
				Navigation.GoHome();
			}
		}

		public static KeyValuePair<string, double> GetFormatedBytes(double bytes)
		{
			double num = 0.0;
			string arg = "kB";
			if (bytes < 1048576.0)
			{
				arg = "kB";
				num = bytes / 1024.0;
			}
			else if (bytes >= 1048576.0 && bytes < 1073741824.0)
			{
				arg = "MB";
				num = bytes / 1048576.0;
			}
			else if (bytes >= 1073741824.0 && bytes < 1099511627776.0)
			{
				arg = "GB";
				num = bytes / 1073741824.0;
			}
			else if (bytes >= 1099511627776.0)
			{
				arg = "TB";
				num = bytes / 1099511627776.0;
			}
			return new KeyValuePair<string, double>(string.Format("{0:0.##} {1}", num, arg), bytes);
		}

		public static KeyValuePair<string, double> GetFormatedBytesPerSecond(double bytes, BigInteger? downloadTimerCounter = null)
		{
			if (downloadTimerCounter.HasValue && (double)downloadTimerCounter.Value > 0.0)
			{
				bytes = Math.Round(bytes / (double)downloadTimerCounter.Value, 2, MidpointRounding.AwayFromZero);
			}
			double num = 0.0;
			string arg = "kB/s";
			if (bytes < 1000000.0)
			{
				arg = "kB/s";
				num = bytes / 1000.0;
			}
			else if (bytes >= 1000000.0 && bytes < 1000000000.0)
			{
				arg = "MB/s";
				num = bytes / 1000000.0;
			}
			else if (bytes >= 1000000000.0 && bytes < 1000000000000.0)
			{
				arg = "GB/s";
				num = bytes / 1000000000.0;
			}
			else if (bytes >= 1000000000000.0)
			{
				arg = "TB/s";
				num = bytes / 1000000000000.0;
			}
			return new KeyValuePair<string, double>(string.Format("{0:0.##} {1}", num, arg), bytes);
		}

		public static bool CheckIfUpgradeBarIsVisible()
		{
			return ObjectHolder.CurrentUser == null || (!ObjectHolder.CurrentUser.HasUserAccessToFeature(9) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(2) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(1) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(4) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(3) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(8));
		}

		public static bool IsProfileAvailableInPlan(CgBase profile)
		{
			return GuiHelper.IsProfileAvailableInPlan(profile.GetBaseName());
		}

		public static CgApiFeature.Feature ProfileStringToFeature(string aProfileString)
		{
			string text = aProfileString.ToLower();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(text);
			if (num <= 1850259554u)
			{
				if (num <= 542584942u)
				{
					if (num != 120087624u)
					{
						if (num != 438410970u)
						{
							if (num != 542584942u)
							{
								goto IL_1E5;
							}
							if (!(text == "custom"))
							{
								goto IL_1E5;
							}
							return 16;
						}
						else if (!(text == "profileunblock"))
						{
							goto IL_1E5;
						}
					}
					else
					{
						if (!(text == "wifi"))
						{
							goto IL_1E5;
						}
						return 11;
					}
				}
				else if (num <= 1511892090u)
				{
					if (num != 1377339077u)
					{
						if (num != 1511892090u)
						{
							goto IL_1E5;
						}
						if (!(text == "anonymousdownloading"))
						{
							goto IL_1E5;
						}
						return 18;
					}
					else
					{
						if (!(text == "network"))
						{
							goto IL_1E5;
						}
						return 17;
					}
				}
				else if (num != 1741922751u)
				{
					if (num != 1850259554u)
					{
						goto IL_1E5;
					}
					if (!(text == "profileanonymousbrowsing"))
					{
						goto IL_1E5;
					}
					return 13;
				}
				else if (!(text == "unblock"))
				{
					goto IL_1E5;
				}
				return 12;
			}
			if (num > 3057390481u)
			{
				if (num <= 3518019237u)
				{
					if (num != 3515211989u)
					{
						if (num != 3518019237u)
						{
							goto IL_1E5;
						}
						if (text == "profilecustom")
						{
							return 16;
						}
						goto IL_1E5;
					}
					else if (!(text == "profileuncensoring"))
					{
						goto IL_1E5;
					}
				}
				else if (num != 4065159347u)
				{
					if (num != 4177272540u)
					{
						goto IL_1E5;
					}
					if (!(text == "profileanticensor"))
					{
						goto IL_1E5;
					}
				}
				else if (!(text == "anticensor"))
				{
					goto IL_1E5;
				}
				return 14;
			}
			if (num <= 2644265356u)
			{
				if (num != 2151041499u)
				{
					if (num != 2644265356u)
					{
						goto IL_1E5;
					}
					if (!(text == "profilenetwork"))
					{
						goto IL_1E5;
					}
				}
				else
				{
					if (text == "profilewifi")
					{
						return 11;
					}
					goto IL_1E5;
				}
			}
			else if (num != 2902123479u)
			{
				if (num != 3057390481u)
				{
					goto IL_1E5;
				}
				if (text == "profileanonymousdownloading")
				{
					return 18;
				}
				goto IL_1E5;
			}
			else
			{
				if (text == "anonymousbrowsing")
				{
					return 13;
				}
				goto IL_1E5;
			}
			return 17;
			IL_1E5:
			throw new ArgumentOutOfRangeException("aProfileString", aProfileString, null);
		}

		public static bool IsProfileAvailableInPlan(string profileBaseName)
		{
			return ObjectHolder.CurrentUser != null && !string.IsNullOrEmpty(profileBaseName) && ObjectHolder.CurrentUser.HasUserAccessToFeature(GuiHelper.ProfileStringToFeature(profileBaseName));
		}

		public static bool IsProLoginRequired()
		{
			return Theming.CurrentTheme == Theming.Theme.Pro && (ObjectHolder.CurrentUser == null || ObjectHolder.CurrentUser.IsFreeUser());
		}

		[AsyncStateMachine(typeof(GuiHelper.<ShowUpgradeDialog>d__23))]
		public static void ShowUpgradeDialog(string profileName)
		{
			GuiHelper.<ShowUpgradeDialog>d__23 <ShowUpgradeDialog>d__;
			<ShowUpgradeDialog>d__.profileName = profileName;
			<ShowUpgradeDialog>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ShowUpgradeDialog>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ShowUpgradeDialog>d__.<>t__builder;
			<>t__builder.Start<GuiHelper.<ShowUpgradeDialog>d__23>(ref <ShowUpgradeDialog>d__);
		}

		public static void ResetProfilesToDefault(CgApiUser user = null)
		{
			if (user == null)
			{
				user = ObjectHolder.CurrentUser;
			}
			SettingsHolder.get_Settings().set_LastUsedProfileCounter(0);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileCustom(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileNetwork(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileWifi(), user);
			CgApiHelper.SetFeaturesByProfile(SettingsHolder.get_Settings().get_ProfileUnblock(), user);
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_BrowserStartOption("yesIncognito");
			SettingsHolder.get_Settings().get_ProfileAnonymousDownloading().set_DownloadToolExeName("empty");
			SettingsHolder.get_Settings().get_ProfileWifi().set_HotspotProtection("ask");
			SettingsHolder.get_Settings().get_ProfileCustom().set_BrowserProtectionNewUserAgent("NONE");
			SettingsHolder.get_Settings().get_ProfileCustom().set_FeatureBrowserLanguage("false");
			SettingsHolder.get_Settings().get_ProfileCustom().set_FeatureBrowserAgent("false");
			SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServer("minimum");
			SettingsHolder.get_Settings().get_ProfileUncensoring().set_CountryToUncensor("auto");
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountry("Automatic");
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountryCode(string.Empty);
		}

		public static string Truncate(string tstring, int length)
		{
			if (tstring.Length > length)
			{
				return tstring.Substring(0, length) + "...";
			}
			return tstring;
		}

		public static void ResetDownloadStats()
		{
			SettingsHolder.get_Settings().set_DownloadTotalTime(0uL);
			ObjectHolder.DownloadTimerCounter = 0;
			ObjectHolder.Download = new KeyValuePair<string, double>("0 kB/s", 0.0);
			ObjectHolder.DownloadAll = new KeyValuePair<string, double>("0 kB", 0.0);
		}

		public static TrafficDataChangedEventArgs ResetTrafficData()
		{
			TrafficDataChangedEventArgs expr_05 = new TrafficDataChangedEventArgs();
			expr_05.set_MaxSpeed(new KeyValuePair<string, double>("0 kB/s", 0.0));
			expr_05.set_CurrentSpeed(new KeyValuePair<string, double>("0 kB/s", 0.0));
			expr_05.set_TotalReceived(new KeyValuePair<string, double>("0 kB", 0.0));
			expr_05.set_TotalSent(new KeyValuePair<string, double>("0 kB", 0.0));
			GuiHelper.ResetDownloadStats();
			return expr_05;
		}

		public static string GetValueFromLabel(string label, int lengthToCrop)
		{
			if (!string.IsNullOrWhiteSpace(label) && label.Length > lengthToCrop)
			{
				return label.Substring(0, label.Length - lengthToCrop);
			}
			return string.Empty;
		}

		public static void DisplayTrafficIcons(bool isOnDownloadPage, Image imageUpLeft, Image imageDownLeft, Image imageUpRight)
		{
			if (isOnDownloadPage)
			{
				try
				{
					imageUpLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\download.png")));
					imageDownLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\maxspeed.png")));
					imageUpRight.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\averragespeed.png")));
				}
				catch (Exception ex)
				{
					HelperFunctions.DebugLine(string.Format("GuiHelper::{0} COULD NOT SET BITMAP {1}", MethodBase.GetCurrentMethod().Name, ex.Message));
				}
			}
		}

		public static void CreateMaxSpeedToolTip(TextBlock control, string content)
		{
			if (control != null && !string.IsNullOrWhiteSpace(content))
			{
				System.Windows.Controls.ToolTip toolTip = new System.Windows.Controls.ToolTip
				{
					Content = content
				};
				control.ToolTip = toolTip;
				return;
			}
		}

		[AsyncStateMachine(typeof(GuiHelper.<DownloadFavIcon>d__31))]
		public static Task<string> DownloadFavIcon(CancellationToken cancellationToken, string uristring, string unblockname = "", string directDownloadUrl = "")
		{
			GuiHelper.<DownloadFavIcon>d__31 <DownloadFavIcon>d__;
			<DownloadFavIcon>d__.cancellationToken = cancellationToken;
			<DownloadFavIcon>d__.uristring = uristring;
			<DownloadFavIcon>d__.unblockname = unblockname;
			<DownloadFavIcon>d__.directDownloadUrl = directDownloadUrl;
			<DownloadFavIcon>d__.<>t__builder = AsyncTaskMethodBuilder<string>.Create();
			<DownloadFavIcon>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<string> <>t__builder = <DownloadFavIcon>d__.<>t__builder;
			<>t__builder.Start<GuiHelper.<DownloadFavIcon>d__31>(ref <DownloadFavIcon>d__);
			return <DownloadFavIcon>d__.<>t__builder.Task;
		}

		public static string FetchWebsite(string url)
		{
			try
			{
				HtmlNode expr_10 = new HtmlWeb().Load(url).get_DocumentNode();
				HtmlNode htmlNode = (expr_10 != null) ? expr_10.SelectSingleNode("//meta[@name='description']") : null;
				if (htmlNode != null)
				{
					HtmlAttribute expr_35 = htmlNode.get_Attributes().get_Item("content");
					string result = (expr_35 != null) ? expr_35.get_Value() : null;
					return result;
				}
			}
			catch (Exception)
			{
				string result = string.Empty;
				return result;
			}
			return string.Empty;
		}

		public static void IcoToPng(string inPath, string outPath)
		{
			if (!File.Exists(inPath))
			{
				return;
			}
			Stream stream = new FileStream(inPath, FileMode.Open);
			using (IEnumerator<BitmapFrame> enumerator = new IconBitmapDecoder(stream, BitmapCreateOptions.PreservePixelFormat, BitmapCacheOption.None).Frames.GetEnumerator())
			{
				if (enumerator.MoveNext())
				{
					BitmapFrame current = enumerator.Current;
					BitmapEncoder bitmapEncoder = new PngBitmapEncoder();
					bitmapEncoder.Frames.Add(current);
					using (Stream stream2 = new FileStream(outPath, FileMode.Create))
					{
						bitmapEncoder.Save(stream2);
					}
					stream.Close();
				}
			}
		}

		public static void SetCurrentFeatureNumbers(CgBase profile, TextBlock lblAdds, TextBlock lblMalware, TextBlock lblTracking)
		{
			GuiHelper.<>c__DisplayClass34_0 <>c__DisplayClass34_ = new GuiHelper.<>c__DisplayClass34_0();
			<>c__DisplayClass34_.profile = profile;
			<>c__DisplayClass34_.lblAdds = lblAdds;
			<>c__DisplayClass34_.lblMalware = lblMalware;
			<>c__DisplayClass34_.lblTracking = lblTracking;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass34_.<SetCurrentFeatureNumbers>b__0), null);
		}

		public static Tuple<string, string, string> DetermineStatus(CgBase profile)
		{
			string dISABLED = Status._DISABLED;
			string nOT_AVAILABLE = Status._NOT_AVAILABLE;
			Type left = (profile != null) ? profile.GetType() : null;
			Tuple<string, string, string> result;
			if (!(left == typeof(CgProfileUncensoring)) && !(left == typeof(CgProfileUnblock)))
			{
				if (left == typeof(CgProfileAnonymousDownloading))
				{
					result = new Tuple<string, string, string>(nOT_AVAILABLE, dISABLED, dISABLED);
				}
				else
				{
					result = new Tuple<string, string, string>(dISABLED, dISABLED, dISABLED);
				}
			}
			else
			{
				result = new Tuple<string, string, string>(nOT_AVAILABLE, nOT_AVAILABLE, nOT_AVAILABLE);
			}
			return result;
		}

		[AsyncStateMachine(typeof(GuiHelper.<DownloadImage>d__36))]
		public static Task<string> DownloadImage(CancellationToken cancellationToken, string url, string saveloc, string extension)
		{
			GuiHelper.<DownloadImage>d__36 <DownloadImage>d__;
			<DownloadImage>d__.cancellationToken = cancellationToken;
			<DownloadImage>d__.url = url;
			<DownloadImage>d__.saveloc = saveloc;
			<DownloadImage>d__.extension = extension;
			<DownloadImage>d__.<>t__builder = AsyncTaskMethodBuilder<string>.Create();
			<DownloadImage>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<string> <>t__builder = <DownloadImage>d__.<>t__builder;
			<>t__builder.Start<GuiHelper.<DownloadImage>d__36>(ref <DownloadImage>d__);
			return <DownloadImage>d__.<>t__builder.Task;
		}

		public static void SetDisplayFeatureStatsById(CgApiFeatures feature, TextBlock tbUpLeftFirstLine, TextBlock tbDownLeftFirstLine, TextBlock tbUpRightFirstLine, CgBase profile)
		{
			switch (feature.get_Id())
			{
			case 1:
				if (profile.get_FeatureAdBlock())
				{
					tbDownLeftFirstLine.Text = feature.get_Statistics().ToString();
					return;
				}
				if (profile is CgProfileAnonymousDownloading)
				{
					tbDownLeftFirstLine.Text = Status._NOT_AVAILABLE;
					return;
				}
				break;
			case 2:
				if (profile.get_FeatureMalware())
				{
					tbUpLeftFirstLine.Text = feature.get_Statistics().ToString();
					return;
				}
				break;
			case 3:
				break;
			case 4:
				if (profile.get_FeatureTracking())
				{
					tbUpRightFirstLine.Text = feature.get_Statistics().ToString();
				}
				break;
			default:
				return;
			}
		}

		public static void SetVisibilityUpgradeButton(System.Windows.Controls.UserControl upgrade, System.Windows.Controls.Button connect, CgApiFeature.Feature feature)
		{
			if (upgrade == null || connect == null)
			{
				return;
			}
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(feature))
			{
				connect.Visibility = Visibility.Collapsed;
				upgrade.Visibility = Visibility.Visible;
				return;
			}
			upgrade.Visibility = Visibility.Collapsed;
			connect.Visibility = Visibility.Visible;
		}

		public static KeyValuePair<string, int> GetLastUsedProfileAndCounter()
		{
			return new KeyValuePair<string, int>(SettingsHolder.get_Settings().get_LastUsedProfileBaseName(), SettingsHolder.get_Settings().get_LastUsedProfileCounter());
		}

		public static void SetLastUsedProfile(string profileBaseName)
		{
			SettingsHolder settings = SettingsHolder.get_Settings();
			if (settings.get_LastUsedProfileBaseName().Equals(profileBaseName))
			{
				if (settings.get_LastUsedProfileCounter() < 2147483647)
				{
					SettingsHolder expr_22 = settings;
					expr_22.set_LastUsedProfileCounter(expr_22.get_LastUsedProfileCounter() + 1);
				}
				else
				{
					settings.set_LastUsedProfileCounter(3);
				}
			}
			else
			{
				settings.set_LastUsedProfileBaseName(profileBaseName);
				settings.set_LastUsedProfileCounter(1);
			}
			settings.SaveSettingsAsync(false);
		}

		public static string UppercaseFirst(string s)
		{
			if (string.IsNullOrEmpty(s))
			{
				return string.Empty;
			}
			return char.ToUpper(s[0]).ToString() + s.Substring(1);
		}

		private static void ResetCountryComboToAuto(Selector box)
		{
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountry(Profiles.Automatic);
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountryCode(string.Empty);
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_CountryCode(string.Empty);
			if (box.Items.Count > 0)
			{
				box.SelectedItem = box.Items[0];
			}
		}

		public static void CountryComboBoxChanged(System.Windows.Controls.ComboBox box)
		{
			if (ObjectHolder.CurrentUser.HasUserAccessToFeature(19))
			{
				CountryData countryData = (CountryData)box.SelectedItem;
				if (box.SelectedItem != null)
				{
					SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_SelectedCountryCode(((CountryData)box.SelectedItem).get_CountryCode());
					SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_CountryCode(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_SelectedCountryCode());
				}
				if (countryData == null)
				{
					return;
				}
				if (!countryData.get_AvailableForUser())
				{
					GuiHelper.ResetCountryComboToAuto(box);
					ConversionPopUpHelpers.ShowConversionPopUp(19);
				}
			}
			else
			{
				CountryData expr_85 = (CountryData)box.SelectedItem;
				if (string.IsNullOrEmpty((expr_85 != null) ? expr_85.get_CountryCode() : null))
				{
					return;
				}
				GuiHelper.ResetCountryComboToAuto(box);
				ConversionPopUpHelpers.ShowConversionPopUp(19);
			}
			GuiHelper.UpdateSelection();
		}

		public static void InitializeServerList(CgApiServerList servers, Selector box)
		{
			GuiHelper.<>c__DisplayClass45_0 <>c__DisplayClass45_ = new GuiHelper.<>c__DisplayClass45_0();
			<>c__DisplayClass45_.servers = servers;
			<>c__DisplayClass45_.box = box;
			List<Selector> registeredBoxes = GuiHelper.RegisteredBoxes;
			lock (registeredBoxes)
			{
				if (!GuiHelper.RegisteredBoxes.Contains(<>c__DisplayClass45_.box))
				{
					GuiHelper.RegisteredBoxes.Add(<>c__DisplayClass45_.box);
				}
			}
			if (SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing() == null || SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries() == null)
			{
				return;
			}
			if (!(DateTime.Now - <>c__DisplayClass45_.servers.LastItemFetch >= TimeSpan.FromMinutes(5.0)) && <>c__DisplayClass45_.servers.get_Items().Count != 0)
			{
				GuiHelper.UpdateSelection();
				return;
			}
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries().Clear();
			CountryData expr_D0 = new CountryData();
			expr_D0.set_AvailableForUser(true);
			expr_D0.set_CountryImage(new Uri(Theming.GetThemedImage("Icons\\Flags\\24\\blank.png")));
			expr_D0.set_CountryName(Profiles.Automatic);
			expr_D0.set_CountryCode(string.Empty);
			CountryData item = expr_D0;
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries().Add(item);
			Task.Run(new Func<Task>(<>c__DisplayClass45_.<InitializeServerList>b__0));
		}

		public static void FillCountriesForView(CgApiServerList fetchedServers, Selector box)
		{
			if (fetchedServers == null || (fetchedServers.get_Items() != null && fetchedServers.get_Items().Count <= 0))
			{
				HelperFunctions.DebugLine("! *** ANON BROWS SERVER LIST IS EMPTY *** !");
				return;
			}
			if (fetchedServers.get_Items() == null)
			{
				return;
			}
			List<CgApiServer> items = fetchedServers.get_Items();
			lock (items)
			{
				foreach (CgApiServer current in fetchedServers.get_Items())
				{
					CountryData expr_55 = new CountryData();
					expr_55.set_AvailableForUser(current.get_AvailableForUser());
					expr_55.set_CountryCode(current.get_CountryCode());
					expr_55.set_CountryName(GuiHelper.FindTranslationForCountry(current.get_CountryCode()));
					expr_55.set_CountryImage(new Uri(Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", current.get_CountryCode().ToLower())))));
					CountryData item = expr_55;
					SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries().Add(item);
				}
			}
			GuiHelper.UpdateSelection();
		}

		private static void UpdateSelection()
		{
			List<Selector> registeredBoxes = GuiHelper.RegisteredBoxes;
			lock (registeredBoxes)
			{
				GuiHelper.RegisteredBoxes.ForEach(new Action<Selector>(GuiHelper.UpdateSelection));
			}
		}

		private static void UpdateSelection(Selector box)
		{
			List<Selector> registeredBoxes = GuiHelper.RegisteredBoxes;
			lock (registeredBoxes)
			{
				if (!GuiHelper.RegisteredBoxes.Contains(box))
				{
					GuiHelper.RegisteredBoxes.Add(box);
				}
			}
			string selectedCountryCode = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_SelectedCountryCode();
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_CountryCode(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_SelectedCountryCode());
			int num = -1;
			bool flag2 = false;
			foreach (CountryData arg_8C_0 in SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries())
			{
				num++;
				if (arg_8C_0.get_CountryCode().Equals(selectedCountryCode, StringComparison.InvariantCultureIgnoreCase))
				{
					flag2 = true;
					break;
				}
			}
			if (!flag2)
			{
				num = 0;
			}
			SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().set_CountryIndex(num);
			if (ObjectHolder.CurrentUser.HasUserAccessToFeature(19) && SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing().get_Countries()[num].get_AvailableForUser())
			{
				if (box.Items.Count >= num - 1)
				{
					box.SelectedItem = box.Items[num];
					return;
				}
			}
			else
			{
				GuiHelper.ResetCountryComboToAuto(box);
			}
		}

		static GuiHelper()
		{
			// Note: this type is marked as 'beforefieldinit'.
			GuiHelper.<CountryList>k__BackingField = new Dictionary<string, string>
			{
				{
					"AF",
					Components.GuiHelper_CountryList_Afghanistan
				},
				{
					"AL",
					Components.GuiHelper_CountryList_Albania
				},
				{
					"AS",
					Components.GuiHelper_CountryList_American_Samoa
				},
				{
					"AD",
					Components.GuiHelper_CountryList_Andorra
				},
				{
					"AO",
					Components.GuiHelper_CountryList_Angola
				},
				{
					"AI",
					Components.GuiHelper_CountryList_Anguilla
				},
				{
					"AQ",
					Components.GuiHelper_CountryList_Antarctica
				},
				{
					"AG",
					Components.GuiHelper_CountryList_Antigua_and_Barbuda
				},
				{
					"AR",
					Components.GuiHelper_CountryList_Argentina
				},
				{
					"AM",
					Components.GuiHelper_CountryList_Armenia
				},
				{
					"AW",
					Components.GuiHelper_CountryList_Aruba
				},
				{
					"AT",
					Components.GuiHelper_CountryList_Austria
				},
				{
					"AU",
					Components.GuiHelper_CountryList_Australia
				},
				{
					"AZ",
					Components.GuiHelper_CountryList_Azerbaijan
				},
				{
					"BS",
					Components.GuiHelper_CountryList_Bahamas
				},
				{
					"BH",
					Components.GuiHelper_CountryList_Bahrain
				},
				{
					"BD",
					Components.GuiHelper_CountryList_Bangladesh
				},
				{
					"BB",
					Components.GuiHelper_CountryList_Barbados
				},
				{
					"BY",
					Components.GuiHelper_CountryList_Belarus
				},
				{
					"BE",
					Components.GuiHelper_CountryList_Belgium
				},
				{
					"BZ",
					Components.GuiHelper_CountryList_Belize
				},
				{
					"BJ",
					Components.GuiHelper_CountryList_Benin
				},
				{
					"BM",
					Components.GuiHelper_CountryList_Bermuda
				},
				{
					"BT",
					Components.GuiHelper_CountryList_Bhutan
				},
				{
					"BO",
					Components.GuiHelper_CountryList_Bolivia
				},
				{
					"BA",
					Components.GuiHelper_CountryList_Bosnia_and_Herzegovina
				},
				{
					"BW",
					Components.GuiHelper_CountryList_Botswana
				},
				{
					"BV",
					Components.GuiHelper_CountryList_Bouvet_Island
				},
				{
					"BR",
					Components.GuiHelper_CountryList_Brazil
				},
				{
					"BN",
					Components.GuiHelper_CountryList_Brunei_Darussalam
				},
				{
					"BG",
					Components.GuiHelper_CountryList_Bulgaria
				},
				{
					"BF",
					Components.GuiHelper_CountryList_Burkina_Faso
				},
				{
					"BI",
					Components.GuiHelper_CountryList_Burundi
				},
				{
					"KH",
					Components.GuiHelper_CountryList_Cambodia
				},
				{
					"CM",
					Components.GuiHelper_CountryList_Cameroon
				},
				{
					"CA",
					Components.GuiHelper_CountryList_Canada
				},
				{
					"CV",
					Components.GuiHelper_CountryList_Cape_Verde
				},
				{
					"KY",
					Components.GuiHelper_CountryList_Cayman_Islands
				},
				{
					"CF",
					Components.GuiHelper_CountryList_Central_African_Republic
				},
				{
					"TD",
					Components.GuiHelper_CountryList_Chad
				},
				{
					"CL",
					Components.GuiHelper_CountryList_Chile
				},
				{
					"CN",
					Components.GuiHelper_CountryList_China
				},
				{
					"CO",
					Components.GuiHelper_CountryList_Colombia
				},
				{
					"KM",
					Components.GuiHelper_CountryList_Comoros
				},
				{
					"CG",
					Components.GuiHelper_CountryList_Congo
				},
				{
					"CK",
					Components.GuiHelper_CountryList_Cook_Islands
				},
				{
					"CR",
					Components.GuiHelper_CountryList_Costa_Rica
				},
				{
					"CI",
					Components.GuiHelper_CountryList_Caymand_Islands
				},
				{
					"HR",
					Components.GuiHelper_CountryList_Croatia
				},
				{
					"CU",
					Components.GuiHelper_CountryList_Cuba
				},
				{
					"CZ",
					Components.GuiHelper_CountryList_Czech_Republic
				},
				{
					"DK",
					Components.GuiHelper_CountryList_Denmark
				},
				{
					"DJ",
					Components.GuiHelper_CountryList_Djibouti
				},
				{
					"DO",
					Components.GuiHelper_CountryList_Dominican_Republic
				},
				{
					"TP",
					Components.GuiHelper_CountryList_East_Timor
				},
				{
					"EC",
					Components.GuiHelper_CountryList_Ecuador
				},
				{
					"EG",
					Components.GuiHelper_CountryList_Egypt
				},
				{
					"SV",
					Components.GuiHelper_CountryList_El_salvador
				},
				{
					"GQ",
					Components.GuiHelper_CountryList_Equatorial_Guinea
				},
				{
					"ER",
					Components.GuiHelper_CountryList_Eritrea
				},
				{
					"EE",
					Components.GuiHelper_CountryList_Estonia
				},
				{
					"ET",
					Components.GuiHelper_CountryList_Ethiopia
				},
				{
					"FK",
					Components.GuiHelper_CountryList_Falkland_Islands
				},
				{
					"FO",
					Components.GuiHelper_CountryList_Faroe_Islands
				},
				{
					"FJ",
					Components.GuiHelper_CountryList_Fiji
				},
				{
					"FI",
					Components.GuiHelper_CountryList_Finland
				},
				{
					"FR",
					Components.GuiHelper_CountryList_France
				},
				{
					"GF",
					Components.GuiHelper_CountryList_French_Guiana
				},
				{
					"PF",
					Components.GuiHelper_CountryList_French_Polynesia
				},
				{
					"GA",
					Components.GuiHelper_CountryList_Gabon
				},
				{
					"GM",
					Components.GuiHelper_CountryList_Gambia
				},
				{
					"GE",
					Components.GuiHelper_CountryList_Georgia
				},
				{
					"DE",
					Components.GuiHelper_CountryList_Germany
				},
				{
					"GH",
					Components.GuiHelper_CountryList_Ghana
				},
				{
					"GI",
					Components.GuiHelper_CountryList_Gibraltar
				},
				{
					"GR",
					Components.GuiHelper_CountryList_Greece
				},
				{
					"GL",
					Components.GuiHelper_CountryList_Greenland
				},
				{
					"GD",
					Components.GuiHelper_CountryList_Grenada
				},
				{
					"GP",
					Components.GuiHelper_CountryList_Guadeloupe
				},
				{
					"GU",
					Components.GuiHelper_CountryList_Guam
				},
				{
					"GT",
					Components.GuiHelper_CountryList_Guatemala
				},
				{
					"GN",
					Components.GuiHelper_CountryList_Guinea
				},
				{
					"GY",
					Components.GuiHelper_CountryList_Guyana
				},
				{
					"HT",
					Components.GuiHelper_CountryList_Haiti
				},
				{
					"VA",
					Components.GuiHelper_CountryList_Vatican
				},
				{
					"HN",
					Components.GuiHelper_CountryList_Honduras
				},
				{
					"HU",
					Components.GuiHelper_CountryList_Hungary
				},
				{
					"IS",
					Components.GuiHelper_CountryList_Iceland
				},
				{
					"IN",
					Components.GuiHelper_CountryList_India
				},
				{
					"ID",
					Components.GuiHelper_CountryList_Indonesia
				},
				{
					"IR",
					Components.GuiHelper_CountryList_Iran
				},
				{
					"IQ",
					Components.GuiHelper_CountryList_Iraq
				},
				{
					"IE",
					Components.GuiHelper_CountryList_Ireland
				},
				{
					"IL",
					Components.GuiHelper_CountryList_Israel
				},
				{
					"IT",
					Components.GuiHelper_CountryList_Italy
				},
				{
					"JM",
					Components.GuiHelper_CountryList_Jamaica
				},
				{
					"JP",
					Components.GuiHelper_CountryList_Japan
				},
				{
					"JO",
					Components.GuiHelper_CountryList_Jordan
				},
				{
					"KZ",
					Components.GuiHelper_CountryList_Kazakstan
				},
				{
					"KE",
					Components.GuiHelper_CountryList_Kenya
				},
				{
					"KI",
					Components.GuiHelper_CountryList_Kiribati
				},
				{
					"KW",
					Components.GuiHelper_CountryList_Kuwait
				},
				{
					"KG",
					Components.GuiHelper_CountryList_Kyrgystan
				},
				{
					"LA",
					Components.GuiHelper_CountryList_Lao
				},
				{
					"LV",
					Components.GuiHelper_CountryList_Latvia
				},
				{
					"LB",
					Components.GuiHelper_CountryList_Lebanon
				},
				{
					"LS",
					Components.GuiHelper_CountryList_Lesotho
				},
				{
					"LI",
					Components.GuiHelper_CountryList_Liechtenstein
				},
				{
					"LT",
					Components.GuiHelper_CountryList_Lithuania
				},
				{
					"LU",
					Components.GuiHelper_CountryList_Luxembourg
				},
				{
					"MO",
					Components.GuiHelper_CountryList_Macau
				},
				{
					"MK",
					Components.GuiHelper_CountryList_Macedonia
				},
				{
					"MG",
					Components.GuiHelper_CountryList_Madagascar
				},
				{
					"MW",
					Components.GuiHelper_CountryList_Malawi
				},
				{
					"MY",
					Components.GuiHelper_CountryList_Malaysia
				},
				{
					"MV",
					Components.GuiHelper_CountryList_Maldives
				},
				{
					"ML",
					Components.GuiHelper_CountryList_Mali
				},
				{
					"MT",
					Components.GuiHelper_CountryList_Malta
				},
				{
					"MR",
					Components.GuiHelper_CountryList_Mauritania
				},
				{
					"MU",
					Components.GuiHelper_CountryList_Mauritius
				},
				{
					"YT",
					Components.GuiHelper_CountryList_Mayotte
				},
				{
					"MX",
					Components.GuiHelper_CountryList_Mexico
				},
				{
					"FM",
					Components.GuiHelper_CountryList_Micronesia
				},
				{
					"MD",
					Components.GuiHelper_CountryList_Moldova
				},
				{
					"MC",
					Components.GuiHelper_CountryList_Monaco
				},
				{
					"MN",
					Components.GuiHelper_CountryList_Mongolia
				},
				{
					"MS",
					Components.GuiHelper_CountryList_Montserrat
				},
				{
					"MA",
					Components.GuiHelper_CountryList_Morocco
				},
				{
					"MZ",
					Components.GuiHelper_CountryList_Mozambique
				},
				{
					"MM",
					Components.GuiHelper_CountryList_Myanmar
				},
				{
					"NA",
					Components.GuiHelper_CountryList_Namibia
				},
				{
					"NR",
					Components.GuiHelper_CountryList_Nauru
				},
				{
					"NP",
					Components.GuiHelper_CountryList_Nepal
				},
				{
					"NL",
					Components.GuiHelper_CountryList_Netherlands
				},
				{
					"NZ",
					Components.GuiHelper_CountryList_New_Zealand
				},
				{
					"NI",
					Components.GuiHelper_CountryList_Nicaragua
				},
				{
					"NE",
					Components.GuiHelper_CountryList_Niger
				},
				{
					"NG",
					Components.GuiHelper_CountryList_Nigeria
				},
				{
					"NU",
					Components.GuiHelper_CountryList_Niue
				},
				{
					"NF",
					Components.GuiHelper_CountryList_Norfolk_Island
				},
				{
					"KP",
					Components.GuiHelper_CountryList_North_Korea
				},
				{
					"NO",
					Components.GuiHelper_CountryList_Norway
				},
				{
					"OM",
					Components.GuiHelper_CountryList_Oman
				},
				{
					"PK",
					Components.GuiHelper_CountryList_Pakistan
				},
				{
					"PW",
					Components.GuiHelper_CountryList_Palau
				},
				{
					"PA",
					Components.GuiHelper_CountryList_Panama
				},
				{
					"PG",
					Components.GuiHelper_CountryList_Papua_New_Guinea
				},
				{
					"PY",
					Components.GuiHelper_CountryList_Paraguay
				},
				{
					"PE",
					Components.GuiHelper_CountryList_Peru
				},
				{
					"PH",
					Components.GuiHelper_CountryList_Philippines
				},
				{
					"PL",
					Components.GuiHelper_CountryList_Poland
				},
				{
					"PT",
					Components.GuiHelper_CountryList_Portugal
				},
				{
					"PR",
					Components.GuiHelper_CountryList_Puerto_Rico
				},
				{
					"RO",
					Components.GuiHelper_CountryList_Romania
				},
				{
					"RU",
					Components.GuiHelper_CountryList_Russia
				},
				{
					"RW",
					Components.GuiHelper_CountryList_Rwanda
				},
				{
					"WS",
					Components.GuiHelper_CountryList_Samoa
				},
				{
					"SM",
					Components.GuiHelper_CountryList_San_Marino
				},
				{
					"SA",
					Components.GuiHelper_CountryList_Saudi_Arabia
				},
				{
					"SN",
					Components.GuiHelper_CountryList_Senegal
				},
				{
					"SC",
					Components.GuiHelper_CountryList_Seychelles
				},
				{
					"SL",
					Components.GuiHelper_CountryList_Sierra_Leone
				},
				{
					"SG",
					Components.GuiHelper_CountryList_Singapore
				},
				{
					"SK",
					Components.GuiHelper_CountryList_Slovakia
				},
				{
					"SB",
					Components.GuiHelper_CountryList_Solomon_Islands
				},
				{
					"SO",
					Components.GuiHelper_CountryList_Somalia
				},
				{
					"ZA",
					Components.GuiHelper_CountryList_South_Africa
				},
				{
					"KR",
					Components.GuiHelper_CountryList_South_Korea
				},
				{
					"ES",
					Components.GuiHelper_CountryList_Spain
				},
				{
					"LK",
					Components.GuiHelper_CountryList_Sri_Lanka
				},
				{
					"SD",
					Components.GuiHelper_CountryList_Sudan
				},
				{
					"SR",
					Components.GuiHelper_CountryList_Suriname
				},
				{
					"SZ",
					Components.GuiHelper_CountryList_Swaziland
				},
				{
					"SE",
					Components.GuiHelper_CountryList_Sweden
				},
				{
					"CH",
					Components.GuiHelper_CountryList_Switzerland
				},
				{
					"SY",
					Components.GuiHelper_CountryList_Syria
				},
				{
					"TW",
					Components.GuiHelper_CountryList_Taiwan
				},
				{
					"TJ",
					Components.GuiHelper_CountryList_Tajikistan
				},
				{
					"TZ",
					Components.GuiHelper_CountryList_Tanzania
				},
				{
					"TH",
					Components.GuiHelper_CountryList_Thailand
				},
				{
					"TG",
					Components.GuiHelper_CountryList_Togo
				},
				{
					"TO",
					Components.GuiHelper_CountryList_Tonga
				},
				{
					"TT",
					Components.GuiHelper_CountryList_Trinidad_and_Tobago
				},
				{
					"TN",
					Components.GuiHelper_CountryList_Tunisia
				},
				{
					"TR",
					Components.GuiHelper_CountryList_Turkey
				},
				{
					"TM",
					Components.GuiHelper_CountryList_Turkmenistan
				},
				{
					"TV",
					Components.GuiHelper_CountryList_Tuvalu
				},
				{
					"UG",
					Components.GuiHelper_CountryList_Uganda
				},
				{
					"UA",
					Components.GuiHelper_CountryList_Ukraine
				},
				{
					"AE",
					Components.GuiHelper_CountryList_United_Arab_Emirates
				},
				{
					"GB",
					Components.GuiHelper_CountryList_United_Kingdom
				},
				{
					"US",
					Components.GuiHelper_CountryList_United_States
				},
				{
					"UY",
					Components.GuiHelper_CountryList_Uruguay
				},
				{
					"UZ",
					Components.GuiHelper_CountryList_Uzbekistan
				},
				{
					"VU",
					Components.GuiHelper_CountryList_Vanuatu
				},
				{
					"VE",
					Components.GuiHelper_CountryList_Venezuela
				},
				{
					"VN",
					Components.GuiHelper_CountryList_Vietnam
				},
				{
					"VG",
					Components.GuiHelper_CountryList_Virgin_Islands
				},
				{
					"EH",
					Components.GuiHelper_CountryList_Western_Sahara
				},
				{
					"YE",
					Components.GuiHelper_CountryList_Yemen
				},
				{
					"YU",
					Components.GuiHelper_CountryList_Yugoslavia
				},
				{
					"ZR",
					Components.GuiHelper_CountryList_Zaire
				},
				{
					"ZM",
					Components.GuiHelper_CountryList_Zambia
				},
				{
					"ZW",
					Components.GuiHelper_CountryList_Zimbabwe
				},
				{
					"HK",
					Components.GuiHelper_CountryList_Hong_Kong
				}
			};
			GuiHelper.RegisteredBoxes = new List<Selector>();
		}
	}
}

using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.RESTCommunicator.Helpers;
using CyberGhost.RESTCommunicator.OAuth;
using CyberGhost.Settings;
using CyberGhost.Translations;
using MobileConcepts.Helpers;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;

namespace CyberGhost.Helpers
{
	public static class Helper
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <GetNewAutoCreatedUser>d__1 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<CgApiUser> <>t__builder;

			private CgApiUser <user>5__1;

			private TaskAwaiter<CgApiUser.CgApiOauthCredentials> <>u__1;

			private ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				CgApiUser result;
				try
				{
					if (num > 1)
					{
						if (Theming.CurrentTheme == Theming.Theme.Pro)
						{
							result = null;
							goto IL_228;
						}
						this.<user>5__1 = new CgApiUser(OAuthData.GetOAuthRequestInfos());
					}
					try
					{
						ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter configuredTaskAwaiter;
						TaskAwaiter<CgApiUser.CgApiOauthCredentials> taskAwaiter;
						if (num != 0)
						{
							if (num == 1)
							{
								configuredTaskAwaiter = this.<>u__2;
								this.<>u__2 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
								this.<>1__state = -1;
								goto IL_176;
							}
							taskAwaiter = this.<user>5__1.CreateUserAndGetCredentials(OAuthInfos.ClientId, SettingsHolder.get_Settings().get_Language(), null, null).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<CgApiUser.CgApiOauthCredentials>, Helper.<GetNewAutoCreatedUser>d__1>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<CgApiUser.CgApiOauthCredentials>);
							this.<>1__state = -1;
						}
						CgApiUser.CgApiOauthCredentials arg_D0_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<CgApiUser.CgApiOauthCredentials>);
						CgApiUser.CgApiOauthCredentials cgApiOauthCredentials = arg_D0_0;
						if (cgApiOauthCredentials == null)
						{
							result = null;
							goto IL_228;
						}
						SettingsHolder.get_Settings().set_ENC_AuthToken(cgApiOauthCredentials.ToString());
						SettingsHolder.get_Settings().SaveSettingsAsync(false).ConfigureAwait(false);
						OAuthRequestInfos oAuthRequestInfos = OAuthData.GetOAuthRequestInfos();
						oAuthRequestInfos.UserKey = cgApiOauthCredentials.get_Token();
						oAuthRequestInfos.UserSecret = cgApiOauthCredentials.get_TokenSecret();
						CgApiGlobalOAuthData.set_OAuthRequestInfos(oAuthRequestInfos);
						this.<user>5__1 = new CgApiUser(oAuthRequestInfos);
						configuredTaskAwaiter = this.<user>5__1.Fetch().ConfigureAwait(false).GetAwaiter();
						if (!configuredTaskAwaiter.IsCompleted)
						{
							this.<>1__state = 1;
							this.<>u__2 = configuredTaskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter, Helper.<GetNewAutoCreatedUser>d__1>(ref configuredTaskAwaiter, ref this);
							return;
						}
						IL_176:
						configuredTaskAwaiter.GetResult();
						configuredTaskAwaiter = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
						new CgApiUserCertificateManager().Fetch(this.<user>5__1.get_Token(), Constants.get_UserDataPath(), Constants.get_OpenVpnBinPath()).ConfigureAwait(false);
						if (ObjectHolder.UserNotAuthorizedErrorHandler != null)
						{
							CgApiGlobalOAuthData.get_OAuthRequestInfos().UserNotAuthorizedErrorHandler = ObjectHolder.UserNotAuthorizedErrorHandler;
						}
						if (ObjectHolder.ServiceNotAvailablErrorHandler != null)
						{
							OAuthRequestInfos expr_1CE = CgApiGlobalOAuthData.get_OAuthRequestInfos();
							expr_1CE.ServiceNotAvailablErrorHandler = (JsonOAuthRestClient.OnHttpErrorHandler)Delegate.Combine(expr_1CE.ServiceNotAvailablErrorHandler, ObjectHolder.ServiceNotAvailablErrorHandler);
						}
					}
					catch (WebException ex)
					{
						HelperFunctions.DebugLine("UNKNOWN WEBEXCEPTION IN GetNewAutoCreatedUser: " + ex.Message);
						result = null;
						goto IL_228;
					}
					result = this.<user>5__1;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_228:
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
		private struct <GetUserByCredentials>d__2 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<CgApiUser> <>t__builder;

			public CgApiUser.CgApiOauthCredentials credentials;

			private CgApiUser <user>5__1;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				CgApiUser result;
				try
				{
					if (num != 0)
					{
						SettingsHolder.get_Settings().set_ENC_AuthToken(this.credentials.ToString());
						SettingsHolder.get_Settings().SaveSettingsAsync(false).ConfigureAwait(false);
						OAuthRequestInfos oAuthRequestInfos = OAuthData.GetOAuthRequestInfos();
						oAuthRequestInfos.UserKey = this.credentials.get_Token();
						oAuthRequestInfos.UserSecret = this.credentials.get_TokenSecret();
						CgApiGlobalOAuthData.set_OAuthRequestInfos(oAuthRequestInfos);
						if (ObjectHolder.UserNotAuthorizedErrorHandler != null)
						{
							CgApiGlobalOAuthData.get_OAuthRequestInfos().UserNotAuthorizedErrorHandler = ObjectHolder.UserNotAuthorizedErrorHandler;
						}
						if (ObjectHolder.ServiceNotAvailablErrorHandler != null)
						{
							OAuthRequestInfos expr_84 = CgApiGlobalOAuthData.get_OAuthRequestInfos();
							expr_84.ServiceNotAvailablErrorHandler = (JsonOAuthRestClient.OnHttpErrorHandler)Delegate.Combine(expr_84.ServiceNotAvailablErrorHandler, ObjectHolder.ServiceNotAvailablErrorHandler);
						}
						this.<user>5__1 = new CgApiUser(oAuthRequestInfos);
					}
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							taskAwaiter = this.<user>5__1.Fetch().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Helper.<GetUserByCredentials>d__2>(ref taskAwaiter, ref this);
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
						new CgApiUserCertificateManager().Fetch(this.<user>5__1.get_Token(), Constants.get_UserDataPath(), Constants.get_OpenVpnBinPath()).ConfigureAwait(false);
					}
					catch (WebException ex)
					{
						HelperFunctions.DebugLine("UNKNOWN WEBEXCEPTION IN GetUserByCredentials: " + ex.Message);
						result = null;
						goto IL_17D;
					}
					result = this.<user>5__1;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_17D:
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
		private sealed class <>c__DisplayClass4_0
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<Login>b__0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				public Helper.<>c__DisplayClass4_0 <>4__this;

				private TaskAwaiter<bool> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					Helper.<>c__DisplayClass4_0 <>c__DisplayClass4_ = this.<>4__this;
					try
					{
						TaskAwaiter<bool> taskAwaiter;
						if (num != 0)
						{
							ObjectHolder.MainForm.OnUserOrPlanHasChanged();
							if (!<>c__DisplayClass4_.notifyIfCredentialsAreCorrect)
							{
								goto IL_C7;
							}
							if (!GuiHelper.IsProLoginRequired())
							{
								Navigation.ShowMessageOverlay("PlanChanged", false);
								goto IL_C7;
							}
							taskAwaiter = ObjectHolder.CurrentUser.Logout().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Helper.<>c__DisplayClass4_0.<<Login>b__0>d>(ref taskAwaiter, ref this);
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
						ObjectHolder.CurrentUser = null;
						SettingsHolder.get_Settings().set_ENC_AuthToken(string.Empty);
						ModernDialogExtension.ShowDialogOk(General.Login_DoLogin_Premium_subscription_required, General.Login_DoLogin_Premium_subscription_required_explenation);
						IL_C7:;
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

			public bool notifyIfCredentialsAreCorrect;

			[AsyncStateMachine(typeof(Helper.<>c__DisplayClass4_0.<<Login>b__0>d))]
			internal void <Login>b__0(object o)
			{
				Helper.<>c__DisplayClass4_0.<<Login>b__0>d <<Login>b__0>d;
				<<Login>b__0>d.<>4__this = this;
				<<Login>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<Login>b__0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<Login>b__0>d.<>t__builder;
				<>t__builder.Start<Helper.<>c__DisplayClass4_0.<<Login>b__0>d>(ref <<Login>b__0>d);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <Login>d__4 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<LoginResultObject> <>t__builder;

			public bool notifyIfCredentialsAreCorrect;

			public string password;

			public string username;

			private LoginResultObject <res>5__1;

			private CgApiUser.CgApiOauthCredentials <credentials>5__2;

			private Helper.<>c__DisplayClass4_0 <>8__3;

			private ConfiguredTaskAwaitable<CgApiUser.CgApiOauthCredentials>.ConfiguredTaskAwaiter <>u__1;

			private ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				LoginResultObject result;
				try
				{
					ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter configuredTaskAwaiter;
					CgApiUser cgApiUser;
					switch (num)
					{
					case 0:
						break;
					case 1:
						configuredTaskAwaiter = this.<>u__2;
						this.<>u__2 = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
						this.<>1__state = -1;
						goto IL_241;
					case 2:
						configuredTaskAwaiter = this.<>u__2;
						this.<>u__2 = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
						this.<>1__state = -1;
						goto IL_270;
					default:
						this.<>8__3 = new Helper.<>c__DisplayClass4_0();
						this.<>8__3.notifyIfCredentialsAreCorrect = this.notifyIfCredentialsAreCorrect;
						cgApiUser = new CgApiUser();
						this.<res>5__1 = new LoginResultObject();
						this.<credentials>5__2 = null;
						break;
					}
					try
					{
						ConfiguredTaskAwaitable<CgApiUser.CgApiOauthCredentials>.ConfiguredTaskAwaiter configuredTaskAwaiter2;
						if (num != 0)
						{
							if (string.IsNullOrEmpty(this.password))
							{
								goto IL_10B;
							}
							configuredTaskAwaiter2 = cgApiUser.GetOauthCredentials(this.username, this.password).ConfigureAwait(false).GetAwaiter();
							if (!configuredTaskAwaiter2.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = configuredTaskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<CgApiUser.CgApiOauthCredentials>.ConfiguredTaskAwaiter, Helper.<Login>d__4>(ref configuredTaskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							configuredTaskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(ConfiguredTaskAwaitable<CgApiUser.CgApiOauthCredentials>.ConfiguredTaskAwaiter);
							this.<>1__state = -1;
						}
						CgApiUser.CgApiOauthCredentials arg_DD_0 = configuredTaskAwaiter2.GetResult();
						configuredTaskAwaiter2 = default(ConfiguredTaskAwaitable<CgApiUser.CgApiOauthCredentials>.ConfiguredTaskAwaiter);
						CgApiUser.CgApiOauthCredentials cgApiOauthCredentials = arg_DD_0;
						this.<credentials>5__2 = cgApiOauthCredentials;
						if (this.<credentials>5__2 == null)
						{
							this.<res>5__1.LoginStatusCode = HttpStatusCode.NotFound;
							result = this.<res>5__1;
							goto IL_44A;
						}
						IL_10B:;
					}
					catch (WebException ex)
					{
						if (ex.Response != null)
						{
							HttpWebResponse httpWebResponse = (HttpWebResponse)ex.Response;
							this.<res>5__1.LoginStatusCode = httpWebResponse.StatusCode;
						}
						else
						{
							this.<res>5__1.LoginStatusCode = HttpStatusCode.RequestTimeout;
						}
						result = this.<res>5__1;
						goto IL_44A;
					}
					this.<res>5__1.LoginStatusCode = HttpStatusCode.OK;
					this.<res>5__1.LoginCredentials = this.<credentials>5__2;
					if (ObjectHolder.CyberGhostCom.GetConnectionStatus() == null)
					{
						ObjectHolder.MainForm.Disconnect();
					}
					if (this.<credentials>5__2 != null)
					{
						configuredTaskAwaiter = Helper.GetUserByCredentials(this.<credentials>5__2).ConfigureAwait(false).GetAwaiter();
						if (!configuredTaskAwaiter.IsCompleted)
						{
							this.<>1__state = 1;
							this.<>u__2 = configuredTaskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter, Helper.<Login>d__4>(ref configuredTaskAwaiter, ref this);
							return;
						}
					}
					else
					{
						configuredTaskAwaiter = Helper.GetNewAutoCreatedUser().ConfigureAwait(false).GetAwaiter();
						if (!configuredTaskAwaiter.IsCompleted)
						{
							this.<>1__state = 2;
							this.<>u__2 = configuredTaskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter, Helper.<Login>d__4>(ref configuredTaskAwaiter, ref this);
							return;
						}
						goto IL_270;
					}
					IL_241:
					CgApiUser arg_250_0 = configuredTaskAwaiter.GetResult();
					configuredTaskAwaiter = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
					CgApiUser cgApiUser2 = arg_250_0;
					goto IL_280;
					IL_270:
					CgApiUser arg_27F_0 = configuredTaskAwaiter.GetResult();
					configuredTaskAwaiter = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
					cgApiUser2 = arg_27F_0;
					IL_280:
					if (cgApiUser2 != null && cgApiUser2.get_Id() != 0)
					{
						this.<res>5__1.User = cgApiUser2;
						CgApiUser currentUser = ObjectHolder.CurrentUser;
						ObjectHolder.CurrentUser = cgApiUser2;
						SettingsHolder.get_Settings().set_LastProductId(ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Id());
						SettingsHolder.get_Settings().set_LastUserId(ObjectHolder.CurrentUser.get_Id());
						if (ObjectHolder.MainForm != null)
						{
							ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<>8__3.<Login>b__0), null);
						}
						if (currentUser != null && !currentUser.get_Id().Equals(cgApiUser2.get_Id()))
						{
							try
							{
								string path = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.crt", currentUser.get_Token()));
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
								string path2 = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.key", currentUser.get_Token()));
								if (File.Exists(path2))
								{
									File.Delete(path2);
								}
							}
							catch (Exception)
							{
							}
							currentUser.Logout().ConfigureAwait(false);
						}
						try
						{
							string path3 = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.crt", ObjectHolder.CurrentUser.get_Token()));
							if (File.Exists(path3))
							{
								File.Delete(path3);
							}
						}
						catch (Exception)
						{
						}
						try
						{
							string path4 = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.key", ObjectHolder.CurrentUser.get_Token()));
							if (File.Exists(path4))
							{
								File.Delete(path4);
							}
						}
						catch (Exception)
						{
						}
						SettingsHolder.get_Settings().SaveSettingsAsync(false).ConfigureAwait(false);
						result = this.<res>5__1;
					}
					else
					{
						this.<res>5__1.LoginStatusCode = HttpStatusCode.NotFound;
						result = this.<res>5__1;
					}
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_44A:
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
		private struct <RefreshCurrentUser>d__5 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			private HttpStatusCode <errorCode>5__1;

			private ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter <>u__1;

			private ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				bool result;
				try
				{
					ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter configuredTaskAwaiter;
					if (num > 1)
					{
						if (num == 2)
						{
							configuredTaskAwaiter = this.<>u__1;
							this.<>u__1 = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
							this.<>1__state = -1;
							goto IL_1FF;
						}
					}
					try
					{
						if (num != 0)
						{
							ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter configuredTaskAwaiter2;
							if (num != 1)
							{
								if (ObjectHolder.CurrentUser == null)
								{
									configuredTaskAwaiter = Helper.GetCurrentUserFromSettings().ConfigureAwait(false).GetAwaiter();
									if (!configuredTaskAwaiter.IsCompleted)
									{
										this.<>1__state = 0;
										this.<>u__1 = configuredTaskAwaiter;
										this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter, Helper.<RefreshCurrentUser>d__5>(ref configuredTaskAwaiter, ref this);
										return;
									}
									goto IL_11D;
								}
								else
								{
									configuredTaskAwaiter2 = ObjectHolder.CurrentUser.Fetch().ConfigureAwait(false).GetAwaiter();
									if (!configuredTaskAwaiter2.IsCompleted)
									{
										this.<>1__state = 1;
										this.<>u__2 = configuredTaskAwaiter2;
										this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter, Helper.<RefreshCurrentUser>d__5>(ref configuredTaskAwaiter2, ref this);
										return;
									}
								}
							}
							else
							{
								configuredTaskAwaiter2 = this.<>u__2;
								this.<>u__2 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
								this.<>1__state = -1;
							}
							configuredTaskAwaiter2.GetResult();
							configuredTaskAwaiter2 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
							goto IL_131;
						}
						configuredTaskAwaiter = this.<>u__1;
						this.<>u__1 = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
						this.<>1__state = -1;
						IL_11D:
						CgApiUser arg_12C_0 = configuredTaskAwaiter.GetResult();
						configuredTaskAwaiter = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
						ObjectHolder.CurrentUser = arg_12C_0;
						IL_131:
						result = true;
						goto IL_230;
					}
					catch (WebException ex)
					{
						this.<errorCode>5__1 = ((!ex.GetType().IsAssignableFrom(typeof(HttpWebResponse)) || ex.Response == null) ? HttpStatusCode.GatewayTimeout : ((HttpWebResponse)ex.Response).StatusCode);
					}
					catch (Exception ex2)
					{
						HelperFunctions.DebugLine("UNKNOWN EXCEPTION IN RefreshCurrentUser: " + ex2.Message);
						this.<errorCode>5__1 = HttpStatusCode.GatewayTimeout;
					}
					HttpStatusCode httpStatusCode = this.<errorCode>5__1;
					if (httpStatusCode - HttpStatusCode.Unauthorized > 1)
					{
						if (httpStatusCode != HttpStatusCode.GatewayTimeout)
						{
							goto IL_213;
						}
						result = true;
						goto IL_230;
					}
					else
					{
						configuredTaskAwaiter = Helper.GetNewAutoCreatedUser().ConfigureAwait(false).GetAwaiter();
						if (!configuredTaskAwaiter.IsCompleted)
						{
							this.<>1__state = 2;
							this.<>u__1 = configuredTaskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter, Helper.<RefreshCurrentUser>d__5>(ref configuredTaskAwaiter, ref this);
							return;
						}
					}
					IL_1FF:
					CgApiUser arg_20E_0 = configuredTaskAwaiter.GetResult();
					configuredTaskAwaiter = default(ConfiguredTaskAwaitable<CgApiUser>.ConfiguredTaskAwaiter);
					ObjectHolder.CurrentUser = arg_20E_0;
					IL_213:
					result = false;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_230:
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
		private struct <GetCurrentUserFromSettings>d__6 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<CgApiUser> <>t__builder;

			private CgApiUser <user>5__1;

			private HttpStatusCode <errorCode>5__2;

			private bool <userOk>5__3;

			private TaskAwaiter<CgApiUser> <>u__1;

			private TaskAwaiter<bool> <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				CgApiUser result;
				try
				{
					TaskAwaiter<CgApiUser> taskAwaiter;
					switch (num)
					{
					case 0:
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<CgApiUser>);
						this.<>1__state = -1;
						break;
					case 1:
						goto IL_158;
					case 2:
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<CgApiUser>);
						this.<>1__state = -1;
						goto IL_307;
					default:
						this.<userOk>5__3 = false;
						if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ENC_AuthToken()))
						{
							CgApiUser.CgApiOauthCredentials cgApiOauthCredentials = new CgApiUser.CgApiOauthCredentials();
							cgApiOauthCredentials.FromString(SettingsHolder.get_Settings().get_ENC_AuthToken());
							OAuthRequestInfos oAuthRequestInfos = OAuthData.GetOAuthRequestInfos();
							oAuthRequestInfos.UserKey = cgApiOauthCredentials.get_Token();
							oAuthRequestInfos.UserSecret = cgApiOauthCredentials.get_TokenSecret();
							CgApiGlobalOAuthData.set_OAuthRequestInfos(oAuthRequestInfos);
							this.<user>5__1 = new CgApiUser(oAuthRequestInfos);
							this.<errorCode>5__2 = HttpStatusCode.OK;
							goto IL_158;
						}
						this.<userOk>5__3 = true;
						taskAwaiter = Helper.GetNewAutoCreatedUser().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<CgApiUser>, Helper.<GetCurrentUserFromSettings>d__6>(ref taskAwaiter, ref this);
							return;
						}
						break;
					}
					CgApiUser arg_FD_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<CgApiUser>);
					CgApiUser cgApiUser = arg_FD_0;
					this.<user>5__1 = cgApiUser;
					if (this.<user>5__1 != null)
					{
						SettingsHolder.get_Settings().set_LastUserId(this.<user>5__1.get_Id());
						SettingsHolder.get_Settings().set_LastProductId(this.<user>5__1.get_Subscription().get_Product().get_Id());
						GuiHelper.ResetProfilesToDefault(this.<user>5__1);
						goto IL_32D;
					}
					result = null;
					goto IL_35A;
					IL_158:
					try
					{
						TaskAwaiter<bool> taskAwaiter2;
						if (num != 1)
						{
							taskAwaiter2 = this.<user>5__1.Fetch().GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								this.<>1__state = 1;
								this.<>u__2 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Helper.<GetCurrentUserFromSettings>d__6>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__2;
							this.<>u__2 = default(TaskAwaiter<bool>);
							this.<>1__state = -1;
						}
						bool arg_1C8_0 = taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<bool>);
						bool flag = arg_1C8_0;
						this.<userOk>5__3 = (flag && this.<user>5__1.get_Id() > 0);
					}
					catch (WebException ex)
					{
						this.<errorCode>5__2 = ((HttpWebResponse)ex.Response).StatusCode;
					}
					if (this.<errorCode>5__2 == HttpStatusCode.OK && (!this.<user>5__1.get_Active() || this.<user>5__1.get_Id() == 0))
					{
						this.<errorCode>5__2 = HttpStatusCode.PaymentRequired;
					}
					HttpStatusCode httpStatusCode = this.<errorCode>5__2;
					if (httpStatusCode != HttpStatusCode.OK)
					{
						if (httpStatusCode - HttpStatusCode.Unauthorized > 1)
						{
							goto IL_32D;
						}
						taskAwaiter = Helper.GetNewAutoCreatedUser().GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 2;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<CgApiUser>, Helper.<GetCurrentUserFromSettings>d__6>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						new CgApiUserCertificateManager().Fetch(this.<user>5__1.get_Token(), Constants.get_UserDataPath(), Constants.get_OpenVpnBinPath());
						if (ObjectHolder.UserNotAuthorizedErrorHandler != null)
						{
							CgApiGlobalOAuthData.get_OAuthRequestInfos().UserNotAuthorizedErrorHandler = ObjectHolder.UserNotAuthorizedErrorHandler;
						}
						if (ObjectHolder.ServiceNotAvailablErrorHandler != null)
						{
							OAuthRequestInfos expr_2CF = CgApiGlobalOAuthData.get_OAuthRequestInfos();
							expr_2CF.ServiceNotAvailablErrorHandler = (JsonOAuthRestClient.OnHttpErrorHandler)Delegate.Combine(expr_2CF.ServiceNotAvailablErrorHandler, ObjectHolder.ServiceNotAvailablErrorHandler);
							goto IL_32D;
						}
						goto IL_32D;
					}
					IL_307:
					CgApiUser arg_316_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<CgApiUser>);
					cgApiUser = arg_316_0;
					this.<user>5__1 = cgApiUser;
					this.<userOk>5__3 = (this.<user>5__1 != null);
					IL_32D:
					result = ((!this.<userOk>5__3) ? null : this.<user>5__1);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_35A:
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
		private struct <GetLink>d__7 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<Uri> <>t__builder;

			public string aLinkId;

			private CgApiLink <link>5__1;

			private ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Uri result;
				try
				{
					ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter configuredTaskAwaiter;
					if (num != 0)
					{
						this.<link>5__1 = new CgApiLink();
						configuredTaskAwaiter = this.<link>5__1.Fetch(this.aLinkId, null).ConfigureAwait(false).GetAwaiter();
						if (!configuredTaskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = configuredTaskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter, Helper.<GetLink>d__7>(ref configuredTaskAwaiter, ref this);
							return;
						}
					}
					else
					{
						configuredTaskAwaiter = this.<>u__1;
						this.<>u__1 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
						this.<>1__state = -1;
					}
					bool arg_8D_0 = configuredTaskAwaiter.GetResult();
					configuredTaskAwaiter = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
					if (arg_8D_0 && !string.IsNullOrWhiteSpace(this.<link>5__1.get_ParsedUrl()))
					{
						Uri uri = new Uri(this.<link>5__1.get_ParsedUrl());
						if (!string.IsNullOrEmpty(Constants.get_AffiliateId()))
						{
							uri = Helper.AddQueryParam(uri, "affiliate", Constants.get_AffiliateId());
						}
						result = uri;
					}
					else
					{
						result = null;
					}
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
		private struct <GetAuthLink>d__8 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<Uri> <>t__builder;

			public string aLinkId;

			public IDictionary<string, string> linkParams;

			private CgApiLink <link>5__1;

			private string <token>5__2;

			private ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter <>u__1;

			private ConfiguredTaskAwaitable<string>.ConfiguredTaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				Uri result;
				try
				{
					ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter configuredTaskAwaiter;
					if (num != 0)
					{
						if (num == 1)
						{
							goto IL_B3;
						}
						if (ObjectHolder.CurrentUser == null)
						{
							goto IL_20B;
						}
						this.<link>5__1 = new CgApiLink();
						configuredTaskAwaiter = this.<link>5__1.Fetch(this.aLinkId, this.linkParams).ConfigureAwait(false).GetAwaiter();
						if (!configuredTaskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = configuredTaskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter, Helper.<GetAuthLink>d__8>(ref configuredTaskAwaiter, ref this);
							return;
						}
					}
					else
					{
						configuredTaskAwaiter = this.<>u__1;
						this.<>u__1 = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
						int arg_8F_1 = -1;
						num = -1;
						this.<>1__state = arg_8F_1;
					}
					bool arg_A3_0 = configuredTaskAwaiter.GetResult();
					configuredTaskAwaiter = default(ConfiguredTaskAwaitable<bool>.ConfiguredTaskAwaiter);
					if (!arg_A3_0)
					{
						this.<link>5__1 = null;
						goto IL_20B;
					}
					this.<token>5__2 = "";
					IL_B3:
					try
					{
						ConfiguredTaskAwaitable<string>.ConfiguredTaskAwaiter configuredTaskAwaiter2;
						if (num != 1)
						{
							configuredTaskAwaiter2 = ObjectHolder.CurrentUser.FetchAuthToken().ConfigureAwait(false).GetAwaiter();
							if (!configuredTaskAwaiter2.IsCompleted)
							{
								this.<>1__state = 1;
								this.<>u__2 = configuredTaskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<string>.ConfiguredTaskAwaiter, Helper.<GetAuthLink>d__8>(ref configuredTaskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							configuredTaskAwaiter2 = this.<>u__2;
							this.<>u__2 = default(ConfiguredTaskAwaitable<string>.ConfiguredTaskAwaiter);
							this.<>1__state = -1;
						}
						string arg_12C_0 = configuredTaskAwaiter2.GetResult();
						configuredTaskAwaiter2 = default(ConfiguredTaskAwaitable<string>.ConfiguredTaskAwaiter);
						string text = arg_12C_0;
						this.<token>5__2 = text;
					}
					catch (Exception arg_138_0)
					{
						HelperFunctions.DebugLine(arg_138_0.Message);
					}
					if (SettingsHolder.get_Settings().get_LoginServer().Contains("dev-api") && this.<link>5__1.get_ParsedUrl().Contains("account.cyberghostvpn.com"))
					{
						this.<link>5__1.set_ParsedUrl("https://dev-account.cyberghostvpn.com/");
					}
					if (SettingsHolder.get_Settings().get_LoginServer().Contains("dev-api") && this.<link>5__1.get_ParsedUrl().Contains("pro.cyberghostvpn.com"))
					{
						this.<link>5__1.set_ParsedUrl("https://dev-pro.cyberghostvpn.com/order/");
					}
					Uri uri = Helper.AddQueryParam(new Uri(this.<link>5__1.get_ParsedUrl()), "auth", this.<token>5__2);
					if (!string.IsNullOrEmpty(Constants.get_AffiliateId()))
					{
						uri = Helper.AddQueryParam(uri, "affiliate", Constants.get_AffiliateId());
					}
					result = uri;
					goto IL_228;
					IL_20B:
					result = null;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_228:
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
		private struct <OpenAuthLink>d__9 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			public bool forceToken;

			public string aLinkId;

			public IDictionary<string, string> linkParams;

			public bool userBound;

			public string additionalParameters;

			private ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				bool result;
				try
				{
					try
					{
						ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter configuredTaskAwaiter;
						Uri uri;
						if (num != 0)
						{
							if (num != 1)
							{
								if (GuiHelper.IsProLoginRequired() && !this.forceToken)
								{
									configuredTaskAwaiter = Helper.GetLink(this.aLinkId).ConfigureAwait(false).GetAwaiter();
									if (!configuredTaskAwaiter.IsCompleted)
									{
										this.<>1__state = 0;
										this.<>u__1 = configuredTaskAwaiter;
										this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter, Helper.<OpenAuthLink>d__9>(ref configuredTaskAwaiter, ref this);
										return;
									}
									goto IL_105;
								}
								else
								{
									configuredTaskAwaiter = Helper.GetAuthLink(this.aLinkId, this.linkParams).ConfigureAwait(false).GetAwaiter();
									if (!configuredTaskAwaiter.IsCompleted)
									{
										this.<>1__state = 1;
										this.<>u__1 = configuredTaskAwaiter;
										this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter, Helper.<OpenAuthLink>d__9>(ref configuredTaskAwaiter, ref this);
										return;
									}
								}
							}
							else
							{
								configuredTaskAwaiter = this.<>u__1;
								this.<>u__1 = default(ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter);
								this.<>1__state = -1;
							}
							Uri arg_E6_0 = configuredTaskAwaiter.GetResult();
							configuredTaskAwaiter = default(ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter);
							uri = arg_E6_0;
							goto IL_115;
						}
						configuredTaskAwaiter = this.<>u__1;
						this.<>u__1 = default(ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter);
						this.<>1__state = -1;
						IL_105:
						Uri arg_114_0 = configuredTaskAwaiter.GetResult();
						configuredTaskAwaiter = default(ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter);
						uri = arg_114_0;
						IL_115:
						if (this.userBound && ObjectHolder.CurrentUser != null)
						{
							string text = this.aLinkId + "|uid:" + ObjectHolder.CurrentUser.get_Id();
							uri = Helper.AddQueryParam(uri, "uHash", HelperFunctions.HashMd5String(text));
						}
						if (uri != null)
						{
							if (!string.IsNullOrEmpty(this.additionalParameters) && !uri.ToString().Contains("?"))
							{
								this.additionalParameters = string.Format("?{0}", this.additionalParameters);
							}
							HelperFunctions.OpenFileInBrowser(uri + this.additionalParameters, false);
							result = true;
						}
						else
						{
							result = false;
						}
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("OpenAuthLink Exception {0}", ex.Message));
						result = false;
					}
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
		private struct <OpenLink>d__10 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			public string aLinkId;

			public bool addDefaultParams;

			private ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				bool result;
				try
				{
					try
					{
						ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter configuredTaskAwaiter;
						if (num != 0)
						{
							configuredTaskAwaiter = Helper.GetLink(this.aLinkId).ConfigureAwait(false).GetAwaiter();
							if (!configuredTaskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = configuredTaskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter, Helper.<OpenLink>d__10>(ref configuredTaskAwaiter, ref this);
								return;
							}
						}
						else
						{
							configuredTaskAwaiter = this.<>u__1;
							this.<>u__1 = default(ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter);
							this.<>1__state = -1;
						}
						Uri arg_80_0 = configuredTaskAwaiter.GetResult();
						configuredTaskAwaiter = default(ConfiguredTaskAwaitable<Uri>.ConfiguredTaskAwaiter);
						Uri uri = arg_80_0;
						if (uri == null)
						{
							result = false;
						}
						else
						{
							string arg = string.IsNullOrEmpty(uri.Query) ? "?" : "&";
							HelperFunctions.OpenFileInBrowser(uri + (this.addDefaultParams ? string.Format("{0}{1}&{2}", arg, MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, null), SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString()) : string.Empty), false);
							result = true;
						}
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("OpenLink Exception {0}", ex.Message));
						result = false;
					}
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

		internal static void UpdateTranslations()
		{
			Settings.Culture = Thread.CurrentThread.CurrentCulture;
			Account.Culture = Thread.CurrentThread.CurrentCulture;
			Alerts.Culture = Thread.CurrentThread.CurrentCulture;
			Components.Culture = Thread.CurrentThread.CurrentCulture;
			General.Culture = Thread.CurrentThread.CurrentCulture;
			Home.Culture = Thread.CurrentThread.CurrentCulture;
			CyberGhost.Translations.MainWindow.Culture = Thread.CurrentThread.CurrentCulture;
			Profiles.Culture = Thread.CurrentThread.CurrentCulture;
			CyberGhost.Translations.Splash.Culture = Thread.CurrentThread.CurrentCulture;
			Status.Culture = Thread.CurrentThread.CurrentCulture;
		}

		[AsyncStateMachine(typeof(Helper.<GetNewAutoCreatedUser>d__1))]
		public static Task<CgApiUser> GetNewAutoCreatedUser()
		{
			Helper.<GetNewAutoCreatedUser>d__1 <GetNewAutoCreatedUser>d__;
			<GetNewAutoCreatedUser>d__.<>t__builder = AsyncTaskMethodBuilder<CgApiUser>.Create();
			<GetNewAutoCreatedUser>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<CgApiUser> <>t__builder = <GetNewAutoCreatedUser>d__.<>t__builder;
			<>t__builder.Start<Helper.<GetNewAutoCreatedUser>d__1>(ref <GetNewAutoCreatedUser>d__);
			return <GetNewAutoCreatedUser>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(Helper.<GetUserByCredentials>d__2))]
		public static Task<CgApiUser> GetUserByCredentials(CgApiUser.CgApiOauthCredentials credentials)
		{
			Helper.<GetUserByCredentials>d__2 <GetUserByCredentials>d__;
			<GetUserByCredentials>d__.credentials = credentials;
			<GetUserByCredentials>d__.<>t__builder = AsyncTaskMethodBuilder<CgApiUser>.Create();
			<GetUserByCredentials>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<CgApiUser> <>t__builder = <GetUserByCredentials>d__.<>t__builder;
			<>t__builder.Start<Helper.<GetUserByCredentials>d__2>(ref <GetUserByCredentials>d__);
			return <GetUserByCredentials>d__.<>t__builder.Task;
		}

		public static Task<LoginResultObject> Login()
		{
			return Helper.Login(string.Empty, string.Empty, false);
		}

		[AsyncStateMachine(typeof(Helper.<Login>d__4))]
		public static Task<LoginResultObject> Login(string username, string password, bool notifyIfCredentialsAreCorrect = false)
		{
			Helper.<Login>d__4 <Login>d__;
			<Login>d__.username = username;
			<Login>d__.password = password;
			<Login>d__.notifyIfCredentialsAreCorrect = notifyIfCredentialsAreCorrect;
			<Login>d__.<>t__builder = AsyncTaskMethodBuilder<LoginResultObject>.Create();
			<Login>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<LoginResultObject> <>t__builder = <Login>d__.<>t__builder;
			<>t__builder.Start<Helper.<Login>d__4>(ref <Login>d__);
			return <Login>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(Helper.<RefreshCurrentUser>d__5))]
		public static Task<bool> RefreshCurrentUser()
		{
			Helper.<RefreshCurrentUser>d__5 <RefreshCurrentUser>d__;
			<RefreshCurrentUser>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<RefreshCurrentUser>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <RefreshCurrentUser>d__.<>t__builder;
			<>t__builder.Start<Helper.<RefreshCurrentUser>d__5>(ref <RefreshCurrentUser>d__);
			return <RefreshCurrentUser>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(Helper.<GetCurrentUserFromSettings>d__6))]
		public static Task<CgApiUser> GetCurrentUserFromSettings()
		{
			Helper.<GetCurrentUserFromSettings>d__6 <GetCurrentUserFromSettings>d__;
			<GetCurrentUserFromSettings>d__.<>t__builder = AsyncTaskMethodBuilder<CgApiUser>.Create();
			<GetCurrentUserFromSettings>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<CgApiUser> <>t__builder = <GetCurrentUserFromSettings>d__.<>t__builder;
			<>t__builder.Start<Helper.<GetCurrentUserFromSettings>d__6>(ref <GetCurrentUserFromSettings>d__);
			return <GetCurrentUserFromSettings>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(Helper.<GetLink>d__7))]
		public static Task<Uri> GetLink(string aLinkId)
		{
			Helper.<GetLink>d__7 <GetLink>d__;
			<GetLink>d__.aLinkId = aLinkId;
			<GetLink>d__.<>t__builder = AsyncTaskMethodBuilder<Uri>.Create();
			<GetLink>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<Uri> <>t__builder = <GetLink>d__.<>t__builder;
			<>t__builder.Start<Helper.<GetLink>d__7>(ref <GetLink>d__);
			return <GetLink>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(Helper.<GetAuthLink>d__8))]
		public static Task<Uri> GetAuthLink(string aLinkId, IDictionary<string, string> linkParams = null)
		{
			Helper.<GetAuthLink>d__8 <GetAuthLink>d__;
			<GetAuthLink>d__.aLinkId = aLinkId;
			<GetAuthLink>d__.linkParams = linkParams;
			<GetAuthLink>d__.<>t__builder = AsyncTaskMethodBuilder<Uri>.Create();
			<GetAuthLink>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<Uri> <>t__builder = <GetAuthLink>d__.<>t__builder;
			<>t__builder.Start<Helper.<GetAuthLink>d__8>(ref <GetAuthLink>d__);
			return <GetAuthLink>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(Helper.<OpenAuthLink>d__9))]
		public static Task<bool> OpenAuthLink(string aLinkId, bool userBound = false, string additionalParameters = null, bool forceToken = false, IDictionary<string, string> linkParams = null)
		{
			Helper.<OpenAuthLink>d__9 <OpenAuthLink>d__;
			<OpenAuthLink>d__.aLinkId = aLinkId;
			<OpenAuthLink>d__.userBound = userBound;
			<OpenAuthLink>d__.additionalParameters = additionalParameters;
			<OpenAuthLink>d__.forceToken = forceToken;
			<OpenAuthLink>d__.linkParams = linkParams;
			<OpenAuthLink>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<OpenAuthLink>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <OpenAuthLink>d__.<>t__builder;
			<>t__builder.Start<Helper.<OpenAuthLink>d__9>(ref <OpenAuthLink>d__);
			return <OpenAuthLink>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(Helper.<OpenLink>d__10))]
		public static Task<bool> OpenLink(string aLinkId, bool addDefaultParams = false)
		{
			Helper.<OpenLink>d__10 <OpenLink>d__;
			<OpenLink>d__.aLinkId = aLinkId;
			<OpenLink>d__.addDefaultParams = addDefaultParams;
			<OpenLink>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<OpenLink>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <OpenLink>d__.<>t__builder;
			<>t__builder.Start<Helper.<OpenLink>d__10>(ref <OpenLink>d__);
			return <OpenLink>d__.<>t__builder.Task;
		}
	}
}

using CyberGhost.Settings;
using System;
using System.Drawing;
using System.Runtime.CompilerServices;

namespace CyberGhost.Helpers
{
	public sealed class IconHelpers
	{
		public static Icon DisabledIcon
		{
			get;
			set;
		}

		public static Icon RegularIcon
		{
			get;
			set;
		}

		public static Icon CensorConnectingIcon
		{
			get;
			set;
		}

		public static Icon CensorConnectedIcon
		{
			get;
			set;
		}

		public static Icon CustomConnectingIcon
		{
			get;
			set;
		}

		public static Icon CustomConnectedIcon
		{
			get;
			set;
		}

		public static Icon DownloadConnectingIcon
		{
			get;
			set;
		}

		public static Icon DownloadConnectedIcon
		{
			get;
			set;
		}

		public static Icon SurfConnectingIcon
		{
			get;
			set;
		}

		public static Icon SurfConnectedIcon
		{
			get;
			set;
		}

		public static Icon UnblockConnectingIcon
		{
			get;
			set;
		}

		public static Icon UnblockConnectedIcon
		{
			get;
			set;
		}

		public static Icon WifiConnectingIcon
		{
			get;
			set;
		}

		public static Icon WifiConnectedIcon
		{
			get;
			set;
		}

		public static IconHelpers Instance
		{
			[CompilerGenerated]
			get
			{
				return IconHelpers.<Instance>k__BackingField;
			}
		}

		public void InitTrayIcons()
		{
			IconHelpers.DisabledIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\Disabled.ico"));
			IconHelpers.RegularIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\Regular.ico"));
			IconHelpers.CensorConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\CensorConnecting.ico"));
			IconHelpers.CensorConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\CensorOn.ico"));
			IconHelpers.CustomConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\CustomConnecting.ico"));
			IconHelpers.CustomConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\CustomOn.ico"));
			IconHelpers.DownloadConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\DownloadConnecting.ico"));
			IconHelpers.DownloadConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\DownloadOn.ico"));
			IconHelpers.SurfConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\SurfConnecting.ico"));
			IconHelpers.SurfConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\SurfOn.ico"));
			IconHelpers.UnblockConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\UnblockConnecting.ico"));
			IconHelpers.UnblockConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\UnblockOn.ico"));
			IconHelpers.WifiConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\WifiConnecting.ico"));
			IconHelpers.WifiConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\WifiOn.ico"));
		}

		public void SetTrayIconBySelectedProfile(bool isConnected, bool isRegularAsFallbackIcon)
		{
			if (ObjectHolder.TaskbarIcon == null)
			{
				return;
			}
			if (string.IsNullOrWhiteSpace(SettingsHolder.get_Settings().get_ConnectedProfileName()))
			{
				return;
			}
			if (ObjectHolder.TaskbarIcon != null)
			{
				ObjectHolder.TaskbarIcon.set_Icon(this.GetTrayIconBySelectedProfile(isConnected, isRegularAsFallbackIcon));
			}
		}

		public Icon GetTrayIconBySelectedProfile(bool isConnected, bool isRegularAsFallbackIcon)
		{
			string connectedProfileName = SettingsHolder.get_Settings().get_ConnectedProfileName();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(connectedProfileName);
			Icon result;
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
								result = (isConnected ? IconHelpers.WifiConnectedIcon : IconHelpers.WifiConnectingIcon);
								return result;
							}
						}
					}
					else if (connectedProfileName == "custom")
					{
						result = (isConnected ? IconHelpers.CustomConnectedIcon : IconHelpers.CustomConnectingIcon);
						return result;
					}
				}
				else if (connectedProfileName == "wifi")
				{
					result = (isConnected ? IconHelpers.WifiConnectedIcon : IconHelpers.WifiConnectingIcon);
					return result;
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
							result = (isConnected ? IconHelpers.DownloadConnectedIcon : IconHelpers.DownloadConnectingIcon);
							return result;
						}
					}
				}
				else if (connectedProfileName == "unblock")
				{
					result = (isConnected ? IconHelpers.UnblockConnectedIcon : IconHelpers.UnblockConnectingIcon);
					return result;
				}
			}
			else if (num != 2687971255u)
			{
				if (num == 2889374611u)
				{
					if (connectedProfileName == "antiCensor")
					{
						result = (isConnected ? IconHelpers.CensorConnectedIcon : IconHelpers.CensorConnectingIcon);
						return result;
					}
				}
			}
			else if (connectedProfileName == "anonymousBrowsing")
			{
				result = (isConnected ? IconHelpers.SurfConnectedIcon : IconHelpers.SurfConnectingIcon);
				return result;
			}
			result = (isRegularAsFallbackIcon ? IconHelpers.RegularIcon : IconHelpers.DisabledIcon);
			return result;
		}

		static IconHelpers()
		{
			IconHelpers.<Instance>k__BackingField = new IconHelpers();
		}

		private IconHelpers()
		{
		}
	}
}

using MobileConcepts.Components.Log;
using System;

namespace CyberGhost.Helpers
{
	public static class LogHelper
	{
		public static void LogMessage(string message)
		{
			McSystemLogItem expr_05 = new McSystemLogItem();
			expr_05.set_Info(message);
			McSystemLogItem aEvent = expr_05;
			ObjectHolder.EventLogger.LogLocalEvent(aEvent);
		}
	}
}

using CyberGhost.Components.Mixpanel;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using MobileConcepts.Helpers;
using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;

namespace CyberGhost.Helpers
{
	public static class Navigation
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass1_0
		{
			public string aPageName;

			public string fragment;

			internal void <GoToPage>b__0()
			{
				ObjectHolder.MainForm.set_ContentSource(new Uri(string.Format("/Pages/{0}.xaml", this.aPageName) + ((this.fragment != null) ? string.Format("#{0}", this.fragment) : ""), UriKind.Relative));
				string resourceKey = "ModernButton";
				string text = this.aPageName.ToLower();
				uint num = <PrivateImplementationDetails>.ComputeStringHash(text);
				if (num <= 1957530021u)
				{
					if (num <= 1252843294u)
					{
						if (num <= 467226299u)
						{
							if (num != 222785755u)
							{
								if (num != 467226299u)
								{
									goto IL_2BA;
								}
								if (!(text == "connected/connecteduncensoring"))
								{
									goto IL_2BA;
								}
							}
							else if (!(text == "profiles/uncensoring"))
							{
								goto IL_2BA;
							}
							resourceKey = "ModernButtonAntiCensor";
							goto IL_2BA;
						}
						if (num != 1225406304u)
						{
							if (num != 1252843294u)
							{
								goto IL_2BA;
							}
							if (!(text == "connected/connectednetwork"))
							{
								goto IL_2BA;
							}
							goto IL_28A;
						}
						else if (!(text == "profiles/anonymousbrowsing"))
						{
							goto IL_2BA;
						}
					}
					else if (num <= 1528745012u)
					{
						if (num != 1423448183u)
						{
							if (num != 1528745012u)
							{
								goto IL_2BA;
							}
							if (!(text == "profiles/unblock"))
							{
								goto IL_2BA;
							}
							goto IL_2B4;
						}
						else
						{
							if (!(text == "connected/connectedanonymousdownloading"))
							{
								goto IL_2BA;
							}
							goto IL_24C;
						}
					}
					else if (num != 1668785984u)
					{
						if (num != 1957530021u)
						{
							goto IL_2BA;
						}
						if (!(text == "connected/connectedwifi"))
						{
							goto IL_2BA;
						}
						goto IL_28A;
					}
					else if (!(text == "connected/connectedanonymousbrowsing"))
					{
						goto IL_2BA;
					}
					resourceKey = "ModernButtonAnonBrowsing";
					goto IL_2BA;
				}
				if (num <= 3011460969u)
				{
					if (num <= 2649054014u)
					{
						if (num != 2235529491u)
						{
							if (num != 2649054014u)
							{
								goto IL_2BA;
							}
							if (!(text == "profiles/network"))
							{
								goto IL_2BA;
							}
							goto IL_28A;
						}
						else if (!(text == "profiles/custom"))
						{
							goto IL_2BA;
						}
					}
					else if (num != 2876959009u)
					{
						if (num != 3011460969u)
						{
							goto IL_2BA;
						}
						if (text == "recoverpurchasemain")
						{
							resourceKey = "ModernButtonRecoverPurchase";
							goto IL_2BA;
						}
						goto IL_2BA;
					}
					else
					{
						if (text == "managedevices")
						{
							resourceKey = "ModernButtonManageDevices";
							goto IL_2BA;
						}
						goto IL_2BA;
					}
				}
				else if (num <= 3229441815u)
				{
					if (num != 3104811778u)
					{
						if (num != 3229441815u)
						{
							goto IL_2BA;
						}
						if (text == "profiles/anonymousdownloading")
						{
							goto IL_24C;
						}
						goto IL_2BA;
					}
					else
					{
						if (!(text == "profiles/unblock_serverlist"))
						{
							goto IL_2BA;
						}
						goto IL_2B4;
					}
				}
				else if (num != 3367964692u)
				{
					if (num != 3675875443u)
					{
						if (num != 3993233221u)
						{
							goto IL_2BA;
						}
						if (text == "profiles/wifi")
						{
							goto IL_28A;
						}
						goto IL_2BA;
					}
					else if (!(text == "connected/connectedcustom"))
					{
						goto IL_2BA;
					}
				}
				else
				{
					if (text == "connected/connectedunblock")
					{
						goto IL_2B4;
					}
					goto IL_2BA;
				}
				resourceKey = "ModernButtonCustom";
				goto IL_2BA;
				IL_24C:
				resourceKey = "ModernButtonAnonDownload";
				goto IL_2BA;
				IL_28A:
				resourceKey = "ModernButtonWifi";
				goto IL_2BA;
				IL_2B4:
				resourceKey = "ModernButtonUnblock";
				IL_2BA:
				ObjectHolder.MainForm.set_BackButtonStyle(ObjectHolder.MainForm.FindResource(resourceKey) as Style);
				CommandManager.InvalidateRequerySuggested();
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <GoInAppPurchase>d__3 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder<bool> <>t__builder;

			public string conversionPoint;

			public string additionalParams;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				bool result;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						ObjectHolder.LastConversionPoint = this.conversionPoint;
						new ConversionWindowClickedEvent
						{
							ConversionPoint = this.conversionPoint
						}.FireEvent();
						if (HelperFunctions.IsAtleastIe8Installed())
						{
							MainWindow expr_3A = ObjectHolder.MainForm;
							if (expr_3A != null)
							{
								expr_3A.ShowMe();
							}
							result = Navigation.GoToPage("Conversion/InAppPurchase", null, this.additionalParams);
							goto IL_152;
						}
						taskAwaiter = Helper.OpenAuthLink("go_upgrade", false, string.Format("&channel=client&conversionpoint={0}&country={1}&{2}&{3}", new object[]
						{
							this.conversionPoint,
							ObjectHolder.CurrentUser.get_Location().get_CountryCode().ToLower(),
							MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, null),
							SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString()
						}) + (string.IsNullOrEmpty(this.additionalParams) ? "" : string.Format("&{0}", this.additionalParams)), false, null).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, Navigation.<GoInAppPurchase>d__3>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						this.<>1__state = -1;
					}
					bool arg_138_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					result = arg_138_0;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_152:
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
		private sealed class <>c__DisplayClass6_0
		{
			public string aPageName;

			public bool changeToErrorTheme;

			internal void <ShowMessageOverlay>b__0(object o)
			{
				ObjectHolder.MainForm.ShowMe();
				ObjectHolder.MainForm.ContentMessage = new Uri("/Pages/Alerts/" + this.aPageName + ".xaml", UriKind.Relative);
				ObjectHolder.MainForm.ContentMessageVisibility = Visibility.Visible;
				ObjectHolder.MainForm.set_IsHeadLinkVisible(false);
				Theming.CurrentThemeSet = (this.changeToErrorTheme ? Theming.ThemeSet.Error : Theming.ThemeSet.Regular);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass7_0
		{
			public bool showHeadLink;

			internal void <HideMessageOverlay>b__0(object o)
			{
				ObjectHolder.MainForm.ContentMessage = null;
				ObjectHolder.MainForm.ContentMessageVisibility = Visibility.Collapsed;
				ObjectHolder.MainForm.set_IsHeadLinkVisible(this.showHeadLink);
			}
		}

		public static string AdditionalParams;

		internal static bool GoToPage(string aPageName, string fragment = null, string additionalParams = null)
		{
			Navigation.<>c__DisplayClass1_0 <>c__DisplayClass1_ = new Navigation.<>c__DisplayClass1_0();
			<>c__DisplayClass1_.aPageName = aPageName;
			<>c__DisplayClass1_.fragment = fragment;
			if (ObjectHolder.MainForm != null)
			{
				Navigation.AdditionalParams = additionalParams;
				Application.Current.Dispatcher.Invoke(DispatcherPriority.Send, new Action(<>c__DisplayClass1_.<GoToPage>b__0));
				return true;
			}
			return false;
		}

		internal static Task<bool> GoInAppPurchase(CgBase conversionPointProfile, string type)
		{
			return Navigation.GoInAppPurchase(string.Format("upgrade_{0}_{1}", type, conversionPointProfile.GetBaseName()), null);
		}

		[AsyncStateMachine(typeof(Navigation.<GoInAppPurchase>d__3))]
		internal static Task<bool> GoInAppPurchase(string conversionPoint, string additionalParams = null)
		{
			Navigation.<GoInAppPurchase>d__3 <GoInAppPurchase>d__;
			<GoInAppPurchase>d__.conversionPoint = conversionPoint;
			<GoInAppPurchase>d__.additionalParams = additionalParams;
			<GoInAppPurchase>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<GoInAppPurchase>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <GoInAppPurchase>d__.<>t__builder;
			<>t__builder.Start<Navigation.<GoInAppPurchase>d__3>(ref <GoInAppPurchase>d__);
			return <GoInAppPurchase>d__.<>t__builder.Task;
		}

		internal static bool GoHome()
		{
			return Navigation.GoToPage(GuiHelper.IsProLoginRequired() ? "Login" : "Home", null, null);
		}

		internal static void GoBack()
		{
			NavigationCommands.BrowseBack.Execute(null, null);
		}

		internal static void ShowMessageOverlay(string aPageName, bool changeToErrorTheme = false)
		{
			Navigation.<>c__DisplayClass6_0 <>c__DisplayClass6_ = new Navigation.<>c__DisplayClass6_0();
			<>c__DisplayClass6_.aPageName = aPageName;
			<>c__DisplayClass6_.changeToErrorTheme = changeToErrorTheme;
			if (ObjectHolder.MainForm != null)
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass6_.<ShowMessageOverlay>b__0), null);
			}
		}

		internal static void HideMessageOverlay(bool showHeadLink = true)
		{
			Navigation.<>c__DisplayClass7_0 <>c__DisplayClass7_ = new Navigation.<>c__DisplayClass7_0();
			<>c__DisplayClass7_.showHeadLink = showHeadLink;
			if (ObjectHolder.MainForm != null)
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass7_.<HideMessageOverlay>b__0), null);
			}
		}

		public static bool NavigateToConnectedScreen()
		{
			if (ObjectHolder.ConnectionStatus == 10 || ObjectHolder.ConnectionStatus == null)
			{
				string connectedProfileName = SettingsHolder.get_Settings().get_ConnectedProfileName();
				if (!(connectedProfileName == "anonymousDownloading"))
				{
					if (!(connectedProfileName == "custom"))
					{
						if (!(connectedProfileName == "network"))
						{
							if (!(connectedProfileName == "wifi"))
							{
								if (!(connectedProfileName == "unblock"))
								{
									if (!(connectedProfileName == "antiCensor"))
									{
										ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
										Navigation.GoToPage("Connected/ConnectedAnonymousBrowsing", null, null);
									}
									else
									{
										ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUncensoring();
										Navigation.GoToPage("Connected/ConnectedUncensoring", null, null);
									}
								}
								else
								{
									ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUnblock();
									Navigation.GoToPage("Connected/ConnectedUnblock", null, null);
								}
							}
							else
							{
								ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileWifi();
								Navigation.GoToPage("Connected/ConnectedWifi", null, null);
							}
						}
						else
						{
							ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileNetwork();
							Navigation.GoToPage("Connected/ConnectedNetwork", null, null);
						}
					}
					else
					{
						ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileCustom();
						Navigation.GoToPage("Connected/ConnectedCustom", null, null);
					}
				}
				else
				{
					ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
					Navigation.GoToPage("Connected/ConnectedAnonymousDownloading", null, null);
				}
			}
			return true;
		}

		public static bool IsOnConnectedScreen()
		{
			return ObjectHolder.MainForm.get_ContentSource().ToString().StartsWith("/Pages/Connected", StringComparison.CurrentCultureIgnoreCase);
		}

		public static bool IsOnProfileScreen()
		{
			return ObjectHolder.MainForm.get_ContentSource().ToString().StartsWith("/Pages/Profiles", StringComparison.CurrentCultureIgnoreCase);
		}

		public static bool NavigateFromConnectedToProfileScreen()
		{
			string text = ObjectHolder.MainForm.get_ContentSource().ToString().ToLower();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(text);
			if (num <= 581804546u)
			{
				if (num != 461178977u)
				{
					if (num != 479047676u)
					{
						if (num == 581804546u)
						{
							if (text == "/pages/connected/connectedunblock.xaml")
							{
								Navigation.GoToPage("Profiles/Unblock", null, null);
								return true;
							}
						}
					}
					else if (text == "/pages/connected/connectednetwork.xaml")
					{
						Navigation.GoToPage("Profiles/Network", null, null);
						return true;
					}
				}
				else if (text == "/pages/connected/connectedwifi.xaml")
				{
					Navigation.GoToPage("Profiles/Wifi", null, null);
					return true;
				}
			}
			else if (num <= 1510191843u)
			{
				if (num != 1491918871u)
				{
					if (num == 1510191843u)
					{
						if (text == "/pages/connected/connecteduncensoring.xaml")
						{
							Navigation.GoToPage("Profiles/Uncensoring", null, null);
							return true;
						}
					}
				}
				else if (text == "/pages/connected/connectedanonymousdownloading.xaml")
				{
					Navigation.GoToPage("Profiles/AnonymousDownloading", null, null);
					return true;
				}
			}
			else if (num != 2608866234u)
			{
				if (num == 3392939587u)
				{
					if (text == "/pages/connected/connectedcustom.xaml")
					{
						Navigation.GoToPage("Profiles/Custom", null, null);
						return true;
					}
				}
			}
			else if (text == "/pages/connected/connectedanonymousbrowsing.xaml")
			{
				Navigation.GoToPage("Profiles/AnonymousBrowsing", null, null);
				return true;
			}
			return false;
		}
	}
}

using CyberGhost.RESTCommunicator.Classes;
using System;
using System.Net;

namespace CyberGhost.Helpers
{
	public class LoginResultObject
	{
		public CgApiUser.CgApiOauthCredentials LoginCredentials;

		public HttpStatusCode LoginStatusCode;

		public CgApiUser User;
	}
}

using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading;

namespace CyberGhost.Helpers
{
	public class NotifierHelper
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass1_0
		{
			public CgBase aProfile;

			internal void <AddProfileToHistory>b__0(object o)
			{
				TrayHistoryData expr_05 = new TrayHistoryData();
				expr_05.set_Profile((CgBase)this.aProfile.Clone());
				expr_05.set_LastUsed(DateTime.Now.Ticks);
				TrayHistoryData trayHistoryData = expr_05;
				try
				{
					SettingsHolder.get_Settings().get_TrayHistory().Add(trayHistoryData);
					NotifierHelper.InitHistoryCollection();
					NotifierHelper.FindAndRemoveDuplicate(trayHistoryData);
					while (SettingsHolder.get_Settings().get_TrayHistory().Count > 5)
					{
						SettingsHolder.get_Settings().get_TrayHistory().RemoveAt(5);
					}
				}
				catch (Exception)
				{
					return;
				}
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly NotifierHelper.<>c <>9 = new NotifierHelper.<>c();

			public static Func<TrayHistoryData, long> <>9__4_0;

			internal long <ReorderCollection>b__4_0(TrayHistoryData x)
			{
				return x.get_LastUsed();
			}
		}

		public const int MaxTrayCount = 5;

		public static void AddProfileToHistory(CgBase aProfile)
		{
			NotifierHelper.<>c__DisplayClass1_0 <>c__DisplayClass1_ = new NotifierHelper.<>c__DisplayClass1_0();
			<>c__DisplayClass1_.aProfile = aProfile;
			if (<>c__DisplayClass1_.aProfile != null)
			{
				ObjectHolder.MainContext.Post(new SendOrPostCallback(<>c__DisplayClass1_.<AddProfileToHistory>b__0), null);
			}
		}

		public static void InitHistoryCollection()
		{
			SettingsHolder settings = SettingsHolder.get_Settings();
			if (settings.get_TrayHistory().Count == 0)
			{
				return;
			}
			List<TrayHistoryData> list = new List<TrayHistoryData>();
			string themedImage = Theming.GetThemedImage("Icons\\ProfileTabs\\");
			foreach (TrayHistoryData current in settings.get_TrayHistory())
			{
				if (current.get_Profile() == null)
				{
					list.Add(current);
				}
				else if (current.get_Profile() is CgProfileAnonymousBrowsing)
				{
					string arg = GuiHelper.FindTranslationForCountry(((CgProfileAnonymousBrowsing)current.get_Profile()).get_SelectedCountry());
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						current.set_ProfileName(GuiHelper.Truncate(string.Format("{0} {1}", Home.GhostBrowsing, arg).Trim(), 30));
					}
					else
					{
						current.set_ProfileName(GuiHelper.Truncate(string.Format("{0} {1}", Profiles.AnonymousBrowsing_ConnectToServer_Anonymous_Browsing, arg).Trim(), 30));
					}
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-browse-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileAnonymousDownloading)
				{
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						current.set_ProfileName(Home.GhostDownloads);
					}
					else
					{
						current.set_ProfileName(Profiles.AnonymousDownloading_ConnectToServer_Anonymous_Downloading);
					}
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-download-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileNetwork)
				{
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						current.set_ProfileName(Home.GhostNetwork);
					}
					else
					{
						current.set_ProfileName(Profiles.Network_ConnectToServer_Network_Protection);
					}
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-lan-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileWifi)
				{
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						current.set_ProfileName(Home.GhostWifi);
					}
					else
					{
						current.set_ProfileName(Profiles.Wifi_ConnectToServer_Wifi_Protection);
					}
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-wifi-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileCustom)
				{
					CgProfileCustom cgProfileCustom = (CgProfileCustom)current.get_Profile();
					current.set_ProfileName(GuiHelper.Truncate(string.Format("{0}", cgProfileCustom.get_SelectedServerDisplayName()).Trim(), 40));
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(new Uri(Path.Combine(themedImage, "ico-setting-color.png")));
					}
				}
				else if (current.get_Profile() is CgProfileUnblock)
				{
					CgProfileUnblock expr_2A3 = (CgProfileUnblock)current.get_Profile();
					string selectedItemName = expr_2A3.get_SelectedItemName();
					string selectedLogo = expr_2A3.get_SelectedLogo();
					string arg2 = GuiHelper.FindTranslationForCountry(expr_2A3.get_SelectedItemCountryCode());
					current.set_ProfileName(GuiHelper.Truncate(string.Format("{0} {1}", selectedItemName, arg2).Trim(), 30));
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(string.IsNullOrWhiteSpace(selectedLogo) ? new Uri(Path.Combine(themedImage, "ico-unblock-color.png")) : new Uri(selectedLogo));
					}
				}
				else if (current.get_Profile() is CgProfileUncensoring)
				{
					CgProfileUncensoring expr_337 = (CgProfileUncensoring)current.get_Profile();
					string selectedItemName2 = expr_337.get_SelectedItemName();
					string selectedLogo2 = expr_337.get_SelectedLogo();
					current.set_ProfileName(string.Format("{0}", selectedItemName2));
					if (current.get_ProfileIcon() == null)
					{
						current.set_ProfileIcon(string.IsNullOrWhiteSpace(selectedLogo2) ? new Uri(Path.Combine(themedImage, "ico-anti-color.png")) : new Uri(selectedLogo2));
					}
				}
			}
			foreach (TrayHistoryData current2 in list)
			{
				settings.get_TrayHistory().Remove(current2);
			}
			NotifierHelper.ReorderCollection();
		}

		public static void FindAndRemoveDuplicate(TrayHistoryData itemToFind)
		{
			ObservableCollection<TrayHistoryData> trayHistory = SettingsHolder.get_Settings().get_TrayHistory();
			if (itemToFind != null && trayHistory.Count > 1)
			{
				bool flag = false;
				int index = 0;
				int num = 0;
				foreach (TrayHistoryData current in trayHistory)
				{
					if (current.get_ProfileName() == itemToFind.get_ProfileName() && current.get_LastUsed() < itemToFind.get_LastUsed())
					{
						flag = true;
						index = num;
						break;
					}
					num++;
				}
				if (flag)
				{
					trayHistory.RemoveAt(index);
				}
				return;
			}
		}

		public static void ReorderCollection()
		{
			SettingsHolder expr_05 = SettingsHolder.get_Settings();
			IEnumerable<TrayHistoryData> arg_2A_0 = expr_05.get_TrayHistory();
			Func<TrayHistoryData, long> arg_2A_1;
			if ((arg_2A_1 = NotifierHelper.<>c.<>9__4_0) == null)
			{
				arg_2A_1 = (NotifierHelper.<>c.<>9__4_0 = new Func<TrayHistoryData, long>(NotifierHelper.<>c.<>9.<ReorderCollection>b__4_0));
			}
			ObservableCollection<TrayHistoryData> trayHistory = new ObservableCollection<TrayHistoryData>(arg_2A_0.OrderByDescending(arg_2A_1));
			expr_05.set_TrayHistory(trayHistory);
		}
	}
}

using System;
using System.Windows;
using System.Windows.Controls;

namespace CyberGhost.Helpers
{
	public static class PasswordBoxAssistant
	{
		public static readonly DependencyProperty BoundPassword = DependencyProperty.RegisterAttached("BoundPassword", typeof(string), typeof(PasswordBoxAssistant), new PropertyMetadata(string.Empty, new PropertyChangedCallback(PasswordBoxAssistant.OnBoundPasswordChanged)));

		public static readonly DependencyProperty BindPassword = DependencyProperty.RegisterAttached("BindPassword", typeof(bool), typeof(PasswordBoxAssistant), new PropertyMetadata(false, new PropertyChangedCallback(PasswordBoxAssistant.OnBindPasswordChanged)));

		private static readonly DependencyProperty UpdatingPassword = DependencyProperty.RegisterAttached("UpdatingPassword", typeof(bool), typeof(PasswordBoxAssistant), new PropertyMetadata(false));

		private static void OnBoundPasswordChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
		{
			PasswordBox passwordBox = d as PasswordBox;
			if (d != null && PasswordBoxAssistant.GetBindPassword(d))
			{
				if (passwordBox != null)
				{
					passwordBox.PasswordChanged -= new RoutedEventHandler(PasswordBoxAssistant.HandlePasswordChanged);
					string password = (string)e.NewValue;
					if (!PasswordBoxAssistant.GetUpdatingPassword(passwordBox))
					{
						passwordBox.Password = password;
					}
					passwordBox.PasswordChanged += new RoutedEventHandler(PasswordBoxAssistant.HandlePasswordChanged);
				}
				return;
			}
		}

		private static void OnBindPasswordChanged(DependencyObject dp, DependencyPropertyChangedEventArgs e)
		{
			PasswordBox passwordBox = dp as PasswordBox;
			if (passwordBox == null)
			{
				return;
			}
			bool arg_24_0 = (bool)e.OldValue;
			bool flag = (bool)e.NewValue;
			if (arg_24_0)
			{
				passwordBox.PasswordChanged -= new RoutedEventHandler(PasswordBoxAssistant.HandlePasswordChanged);
			}
			if (flag)
			{
				passwordBox.PasswordChanged += new RoutedEventHandler(PasswordBoxAssistant.HandlePasswordChanged);
			}
		}

		private static void HandlePasswordChanged(object sender, RoutedEventArgs e)
		{
			PasswordBox passwordBox = sender as PasswordBox;
			PasswordBoxAssistant.SetUpdatingPassword(passwordBox, true);
			if (passwordBox != null)
			{
				PasswordBoxAssistant.SetBoundPassword(passwordBox, passwordBox.Password);
				PasswordBoxAssistant.SetUpdatingPassword(passwordBox, false);
			}
		}

		public static void SetBindPassword(DependencyObject dp, bool value)
		{
			dp.SetValue(PasswordBoxAssistant.BindPassword, value);
		}

		public static bool GetBindPassword(DependencyObject dp)
		{
			return (bool)dp.GetValue(PasswordBoxAssistant.BindPassword);
		}

		public static string GetBoundPassword(DependencyObject dp)
		{
			return (string)dp.GetValue(PasswordBoxAssistant.BoundPassword);
		}

		public static void SetBoundPassword(DependencyObject dp, string value)
		{
			dp.SetValue(PasswordBoxAssistant.BoundPassword, value);
		}

		private static bool GetUpdatingPassword(DependencyObject dp)
		{
			return (bool)dp.GetValue(PasswordBoxAssistant.UpdatingPassword);
		}

		private static void SetUpdatingPassword(DependencyObject dp, bool value)
		{
			dp.SetValue(PasswordBoxAssistant.UpdatingPassword, value);
		}
	}
}

using CyberGhost.Settings;
using FirstFloor.ModernUI.Presentation;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using System;
using System.ComponentModel;
using System.IO;
using System.Runtime.CompilerServices;

namespace CyberGhost.Helpers
{
	public static class Theming
	{
		public delegate void NotifyEvent();

		public enum Theme
		{
			[Description("")]
			Regular,
			[Description("Pro")]
			Pro
		}

		public enum ThemeSet
		{
			Regular,
			Error,
			Connected
		}

		private static volatile Theming.Theme _currentTheme;

		private static volatile Theming.ThemeSet _currentThemeSet;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public static event Theming.NotifyEvent ThemeChanged;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public static event Theming.NotifyEvent ThemeSetChanged;

		public static Theming.Theme CurrentTheme
		{
			get
			{
				return Theming._currentTheme;
			}
			set
			{
				Theming._currentTheme = value;
				Theming.UpdateThemeSet();
				Theming.NotifyEvent expr_12 = Theming.ThemeChanged;
				if (expr_12 == null)
				{
					return;
				}
				expr_12();
			}
		}

		public static Theming.ThemeSet CurrentThemeSet
		{
			get
			{
				return Theming._currentThemeSet;
			}
			set
			{
				Theming._currentThemeSet = value;
				Theming.UpdateThemeSet();
				Theming.NotifyEvent expr_12 = Theming.ThemeSetChanged;
				if (expr_12 == null)
				{
					return;
				}
				expr_12();
			}
		}

		private static void UpdateThemeSet()
		{
			Theming.ThemeSet currentThemeSet = Theming._currentThemeSet;
			if (currentThemeSet == Theming.ThemeSet.Error)
			{
				Theming.SetErrorTheme();
				return;
			}
			if (currentThemeSet != Theming.ThemeSet.Connected)
			{
				Theming.SetRegularTheme();
				return;
			}
			Theming.SetProfileTheme();
		}

		public static string GetProductName()
		{
			Theming.Theme currentTheme = Theming.CurrentTheme;
			if (currentTheme != Theming.Theme.Pro)
			{
				return "CyberGhost";
			}
			return "CyberGhost Pro";
		}

		public static string GetThemedImage(string relativeImagePath)
		{
			relativeImagePath = relativeImagePath.Replace('/', '\\');
			if (relativeImagePath.StartsWith("\\") && relativeImagePath.Length > 1)
			{
				relativeImagePath = relativeImagePath.Substring(1);
			}
			string dataPath = HelperFunctions.get_DataPath();
			string text = Path.Combine(dataPath, "Assets", EumExtensions.GetDescription<Theming.Theme>(Theming.CurrentTheme), relativeImagePath);
			if (!File.Exists(text))
			{
				return Path.Combine(dataPath, "Assets", relativeImagePath);
			}
			return text;
		}

		private static string GetThemeFolder()
		{
			return string.Format("/Themes/{0}/", EumExtensions.GetDescription<Theming.Theme>(Theming.CurrentTheme)).Replace("//", "/");
		}

		private static void SetErrorTheme()
		{
			AppearanceManager.get_Current().set_ThemeSource(new Uri(string.Format("{0}ModernUI.CyberGhost.xaml", Theming.GetThemeFolder()), UriKind.Relative));
		}

		private static void SetRegularTheme()
		{
			AppearanceManager.get_Current().set_ThemeSource(new Uri(string.Format("{0}ModernUI.CyberGhost.xaml", Theming.GetThemeFolder()), UriKind.Relative));
		}

		private static void SetProfileTheme()
		{
			string text = string.Empty;
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
								text = "Network";
							}
						}
					}
					else if (connectedProfileName == "custom")
					{
						text = "Custom";
					}
				}
				else if (connectedProfileName == "wifi")
				{
					text = "Wifi";
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
							text = "AnonymousDownloading";
						}
					}
				}
				else if (connectedProfileName == "unblock")
				{
					text = "Unblock";
				}
			}
			else if (num != 2687971255u)
			{
				if (num == 2889374611u)
				{
					if (connectedProfileName == "antiCensor")
					{
						text = "Uncensoring";
					}
				}
			}
			else if (connectedProfileName == "anonymousBrowsing")
			{
				text = "AnonymousBrowsing";
			}
			if (!string.IsNullOrEmpty(text))
			{
				AppearanceManager.get_Current().set_ThemeSource(new Uri(string.Format("{0}ModernUI.CyberGhost.Connected.{1}.xaml", Theming.GetThemeFolder(), text), UriKind.Relative));
				return;
			}
			AppearanceManager.get_Current().set_ThemeSource(new Uri(string.Format("{0}ModernUI.CyberGhost.xaml", Theming.GetThemeFolder()), UriKind.Relative));
		}
	}
}

using CyberGhost.Components.Mixpanel;
using System;

namespace CyberGhost.Helpers
{
	public static class TrackingHelper
	{
		public static void SendProfileClickedEvent(string profileName, string source)
		{
			ObjectHolder.ConnectionSource = source;
			new ProfileClickedEvent
			{
				Profile = profileName,
				Source = source
			}.FireEvent();
		}
	}
}

using CyberGhost.Components.Popups;
using CyberGhost.Settings;
using CyberGhost.Settings.SettingsItems;
using MobileConcepts.Helpers;
using System;
using System.Collections.ObjectModel;

namespace CyberGhost.Helpers
{
	public static class WifiHelpers
	{
		public static bool CheckIfKnownSsidsContainsSsid(string ssid)
		{
			try
			{
				if (SettingsHolder.get_Settings().get_KnownSsids() == null)
				{
					SettingsHolder.get_Settings().set_KnownSsids(new ObservableCollection<SsidItem>());
				}
				ObservableCollection<SsidItem> knownSsids = SettingsHolder.get_Settings().get_KnownSsids();
				lock (knownSsids)
				{
					bool result;
					foreach (SsidItem current in SettingsHolder.get_Settings().get_KnownSsids())
					{
						if (current != null && current.get_Ssid().Equals(ssid))
						{
							result = true;
							return result;
						}
					}
					result = false;
					return result;
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("Exception in CheckIfKnownSsidsContainsSsid could not get entry EX: {0}", ex.Message));
			}
			return false;
		}

		public static void MutateKnownSsid(string ssid, WifiPopup.WifiConnectionResult action)
		{
			try
			{
				if (SettingsHolder.get_Settings().get_KnownSsids() == null)
				{
					SettingsHolder.get_Settings().set_KnownSsids(new ObservableCollection<SsidItem>());
				}
				bool flag = false;
				ObservableCollection<SsidItem> knownSsids = SettingsHolder.get_Settings().get_KnownSsids();
				lock (knownSsids)
				{
					foreach (SsidItem current in SettingsHolder.get_Settings().get_KnownSsids())
					{
						if (current != null && current.get_Ssid().Equals(ssid))
						{
							if (action == WifiPopup.WifiConnectionResult.Always)
							{
								current.set_Action(2);
							}
							else if (action == WifiPopup.WifiConnectionResult.Never)
							{
								current.set_Action(0);
							}
							else
							{
								if (action != WifiPopup.WifiConnectionResult.Ask)
								{
									if (action != WifiPopup.WifiConnectionResult.Once)
									{
										if (action == WifiPopup.WifiConnectionResult.Disconnect)
										{
											current.set_Action(3);
											goto IL_9B;
										}
										goto IL_9B;
									}
								}
								current.set_Action(1);
							}
							IL_9B:
							flag = true;
						}
					}
				}
				if (!flag)
				{
					WifiHelpers.AddNewWifi(ssid, action);
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("Exception in MutateKnownSsid could not get entry EX: {0}", ex.Message));
			}
		}

		public static void AddNewWifi(string ssid, WifiPopup.WifiConnectionResult action)
		{
			try
			{
				SsidItem expr_05 = new SsidItem();
				expr_05.set_Ssid(ssid);
				SsidItem ssidItem = expr_05;
				if (!string.IsNullOrEmpty(ssid))
				{
					if (action == WifiPopup.WifiConnectionResult.Always)
					{
						ssidItem.set_Action(2);
					}
					else if (action == WifiPopup.WifiConnectionResult.Never)
					{
						ssidItem.set_Action(0);
					}
					else if (action == WifiPopup.WifiConnectionResult.Ask)
					{
						ssidItem.set_Action(1);
					}
					else if (action == WifiPopup.WifiConnectionResult.Disconnect)
					{
						ssidItem.set_Action(3);
					}
					if (SettingsHolder.get_Settings().get_KnownSsids() == null)
					{
						SettingsHolder.get_Settings().set_KnownSsids(new ObservableCollection<SsidItem>());
					}
					ObservableCollection<SsidItem> knownSsids = SettingsHolder.get_Settings().get_KnownSsids();
					lock (knownSsids)
					{
						SettingsHolder.get_Settings().get_KnownSsids().Add(ssidItem);
					}
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("Exception in AddNewWifi could not get entry EX: {0}", ex.Message));
			}
		}

		public static SsidAction GetSettingForSsid(string wifiSsid)
		{
			SsidAction result = 1;
			try
			{
				if (SettingsHolder.get_Settings().get_KnownSsids() != null)
				{
					ObservableCollection<SsidItem> knownSsids = SettingsHolder.get_Settings().get_KnownSsids();
					lock (knownSsids)
					{
						foreach (SsidItem current in SettingsHolder.get_Settings().get_KnownSsids())
						{
							try
							{
								if (current != null)
								{
									if (current.get_Ssid().Equals(wifiSsid))
									{
										return current.get_Action();
									}
								}
							}
							catch (Exception ex)
							{
								HelperFunctions.DebugLine(string.Format("Exception in GetSettingForSsid could not get entry EX: {0}", ex.Message));
							}
						}
					}
					string hotspotProtection = SettingsHolder.get_Settings().get_ProfileWifi().get_HotspotProtection();
					if (!(hotspotProtection == "off"))
					{
						if (!(hotspotProtection == "auto"))
						{
							if (hotspotProtection == "ask")
							{
								result = 1;
							}
						}
						else
						{
							result = 2;
						}
					}
					else
					{
						result = 0;
					}
				}
				else
				{
					SettingsHolder.get_Settings().set_KnownSsids(new ObservableCollection<SsidItem>());
				}
			}
			catch (Exception ex2)
			{
				HelperFunctions.DebugLine(string.Format("Exception in GetSettingForSsid EX: {0}", ex2.Message));
			}
			return result;
		}

		public static void SetStateForWifiOrAddNewWifi(string ssid, string action)
		{
			WifiPopup.WifiConnectionResult action2 = WifiPopup.WifiConnectionResult.Ask;
			if (!(action == "ask"))
			{
				if (!(action == "disconnect"))
				{
					if (!(action == "always"))
					{
						if (!(action == "never"))
						{
							if (action == "once")
							{
								action2 = WifiPopup.WifiConnectionResult.Once;
							}
						}
						else
						{
							action2 = WifiPopup.WifiConnectionResult.Never;
						}
					}
					else
					{
						action2 = WifiPopup.WifiConnectionResult.Always;
					}
				}
				else
				{
					action2 = WifiPopup.WifiConnectionResult.Disconnect;
				}
			}
			else
			{
				action2 = WifiPopup.WifiConnectionResult.Ask;
			}
			WifiHelpers.SetStateForWifiOrAddNewWifi(ssid, action2);
		}

		public static void SetStateForWifiOrAddNewWifi(string ssid, WifiPopup.WifiConnectionResult action)
		{
			if (WifiHelpers.CheckIfKnownSsidsContainsSsid(ssid))
			{
				WifiHelpers.MutateKnownSsid(ssid, action);
				return;
			}
			WifiHelpers.AddNewWifi(ssid, action);
		}
	}
}
