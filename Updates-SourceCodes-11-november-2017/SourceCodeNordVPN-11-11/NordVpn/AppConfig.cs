using NordVpn.Shared;
using System;
using System.IO;
using System.Reflection;

namespace NordVpn
{
	public static class AppConfig
	{
		public static int OsBits
		{
			get
			{
				if (!Environment.Is64BitOperatingSystem)
				{
					return 32;
				}
				return 64;
			}
		}

		public static string OsVersion
		{
			get
			{
				return Environment.OSVersion.VersionString;
			}
		}

		public static string WinServiceName
		{
			get
			{
				return "nordvpn-service";
			}
		}

		public static string WinServiceExePath
		{
			get
			{
				return Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "nordvpn-service.exe");
			}
		}

		public static string DiagnosticsToolExePath
		{
			get
			{
				return Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Diagnostics.exe");
			}
		}

		public static string AppVersion
		{
			get
			{
				return Assembly.GetExecutingAssembly().GetName().Version.ToString();
			}
		}

		public static string UserAgent
		{
			get
			{
				return string.Format("NordApp windows (main/{0}) windows/{1}", AppConfig.AppVersion, Environment.OSVersion);
			}
		}

		public static string AppName
		{
			get
			{
				return "NordVPN";
			}
		}

		public static string OrderPageUrl
		{
			get
			{
				return "https://join.nordme.org/order/embedded/";
			}
		}

		public static string OrderPageProfileUrl
		{
			get
			{
				return "https://nordme.org/order/profile/";
			}
		}

		public static string SupportPageUrl
		{
			get
			{
				return "https://nordme.org/contact-us/";
			}
		}

		public static string ExecutablePath
		{
			get
			{
				return Assembly.GetEntryAssembly().Location;
			}
		}

		public static string WebCertsDir
		{
			get
			{
				return Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Resources", "Certificates");
			}
		}

		public static string LogsFilePathTemplate
		{
			get
			{
				return Path.Combine(AppConfig.GetLocalAppDataFolder(), "logs/app-${shortdate}.nwl");
			}
		}

		public static TimeSpan ServersUpdateInterval
		{
			get
			{
				return TimeSpan.FromHours(1.0);
			}
		}

		public static TimeSpan OpenVpnConfigsUpdateInterval
		{
			get
			{
				return TimeSpan.FromHours(1.0);
			}
		}

		public static TimeSpan ExpiredMembershipCheckInterval
		{
			get
			{
				return TimeSpan.FromHours(24.0);
			}
		}

		private static string OpenVpnServersFolder
		{
			get
			{
				return Path.Combine(AppConfig.ServersFolder, "ovpn").EnsureDirectoryExists();
			}
		}

		private static string ServersFolder
		{
			get
			{
				return Path.Combine(AppConfig.GetLocalAppDataFolder(), "servers").EnsureDirectoryExists();
			}
		}

		public static string GetServersJsonCacheFilePath()
		{
			return Path.Combine(AppConfig.ServersFolder, "servers.json");
		}

		public static string GetOpenvpnConfigPath()
		{
			return Path.Combine(new string[]
			{
				AppConfig.OpenVpnServersFolder
			}).EnsureDirectoryExists();
		}

		private static string GetLocalAppDataFolder()
		{
			return Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "NordVPN").EnsureDirectoryExists();
		}
	}
}
