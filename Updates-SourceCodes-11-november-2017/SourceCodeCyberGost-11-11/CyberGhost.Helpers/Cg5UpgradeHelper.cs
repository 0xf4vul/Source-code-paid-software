using CyberGhost.Settings;
using Microsoft.Win32;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace CyberGhost.Helpers
{
	public static class Cg5UpgradeHelper
	{
		public static async Task<bool> CheckForCg5AndUninstall()
		{
			bool result;
			if (Cg5UpgradeHelper.IsCg5Installed())
			{
				HelperFunctions.DebugLine("CG 5.5 found ...");
				string cg5Uninstaller = Cg5UpgradeHelper.GetCg5Uninstaller();
				if (!string.IsNullOrEmpty(cg5Uninstaller))
				{
					HelperFunctions.DebugLine("Uninstaller found " + cg5Uninstaller);
					RegistryKey registryKey = Registry.CurrentUser.CreateSubKey("Software\\CyberGhostBackup", RegistryKeyPermissionCheck.ReadWriteSubTree);
					if (registryKey != null)
					{
						HelperFunctions.DebugLine("Backup key ok");
						RegistryKey settingsKey = SettingsHolder.get_Settings().GetSettingsKey(false, false, false);
						RegistryExtension.CopyTo(settingsKey, registryKey);
						settingsKey.Close();
						ConfiguredTaskAwaitable configuredTaskAwaitable = HelperFunctions.RunProcessAsync(cg5Uninstaller, "/SILENT").ConfigureAwait(false);
						do
						{
							HelperFunctions.CloseProcessList(new string[]
							{
								"chrome",
								"iexplore",
								"firefox",
								"opera"
							}, null);
							TaskAwaiter var_4 = Task.Delay(100).GetAwaiter();
							if (!var_4.IsCompleted)
							{
								await var_4;
								TaskAwaiter taskAwaiter;
								var_4 = taskAwaiter;
								taskAwaiter = default(TaskAwaiter);
							}
							var_4.GetResult();
							var_4 = default(TaskAwaiter);
						}
						while (!configuredTaskAwaitable.GetAwaiter().IsCompleted);
						settingsKey = SettingsHolder.get_Settings().GetSettingsKey(false, false, false);
						RegistryExtension.CopyTo(registryKey, settingsKey);
						registryKey.Close();
						settingsKey.Close();
						SettingsHolder.get_Settings().LoadSettings();
						SettingsHolder.get_Settings().set_IsCg5Upgrade(true);
						SettingsHolder.get_Settings().SaveSettings(false);
						HelperFunctions.DebugLine("Backup restored ...");
						registryKey = Registry.CurrentUser.OpenSubKey("Software", RegistryKeyPermissionCheck.ReadWriteSubTree);
						if (registryKey != null)
						{
							HelperFunctions.DebugLine("Deleting backup ...");
							registryKey.DeleteSubKeyTree("CyberGhostBackup");
							registryKey.Close();
						}
						HelperFunctions.DebugLine("Upgrade complete!");
						result = true;
						return result;
					}
					registryKey = null;
				}
			}
			result = false;
			return result;
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
