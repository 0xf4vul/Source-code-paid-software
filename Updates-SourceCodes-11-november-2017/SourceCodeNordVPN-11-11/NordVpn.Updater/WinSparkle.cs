using System;
using System.Runtime.InteropServices;

namespace NordVpn.Updater
{
	public static class WinSparkle
	{
		[UnmanagedFunctionPointer(CallingConvention.StdCall)]
		public delegate bool CanShutdownCallback();

		[UnmanagedFunctionPointer(CallingConvention.StdCall)]
		public delegate void ShutdownRequestCallback();

		[UnmanagedFunctionPointer(CallingConvention.StdCall)]
		public delegate void DidFindUpdateCallback();

		[UnmanagedFunctionPointer(CallingConvention.StdCall)]
		public delegate void UpdateCancelledCallback();

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_init")]
		private static extern void Init_Win32();

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_init")]
		private static extern void Init_x64();

		public static void Init()
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.Init_x64();
				return;
			}
			WinSparkle.Init_Win32();
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_cleanup")]
		private static extern void Cleanup_Win32();

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_cleanup")]
		private static extern void Cleanup_x64();

		public static void Cleanup()
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.Cleanup_x64();
				return;
			}
			WinSparkle.Cleanup_Win32();
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_check_update_without_ui")]
		private static extern void CheckUpdateWithoutUI_Win32();

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_check_update_without_ui")]
		private static extern void CheckUpdateWithoutUI_x64();

		public static void CheckUpdateWithoutUI()
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.CheckUpdateWithoutUI_x64();
				return;
			}
			WinSparkle.CheckUpdateWithoutUI_Win32();
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_check_update_with_ui")]
		private static extern void CheckUpdateWithUI_Win32();

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_check_update_with_ui")]
		private static extern void CheckUpdateWithUI_x64();

		public static void CheckUpdateWithUI()
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.CheckUpdateWithUI_x64();
				return;
			}
			WinSparkle.CheckUpdateWithUI_Win32();
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Unicode, EntryPoint = "win_sparkle_set_appcast_url")]
		private static extern void SetAppcastUrl_Win32([MarshalAs(UnmanagedType.AnsiBStr)] string url);

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Unicode, EntryPoint = "win_sparkle_set_appcast_url")]
		private static extern void SetAppcastUrl_x64([MarshalAs(UnmanagedType.AnsiBStr)] string url);

		public static void SetAppcastUrl(string url)
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.SetAppcastUrl_x64(url);
				return;
			}
			WinSparkle.SetAppcastUrl_Win32(url);
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Unicode, EntryPoint = "win_sparkle_set_app_details")]
		private static extern void SetAppDetails_Win32([MarshalAs(UnmanagedType.BStr)] string companyName, [MarshalAs(UnmanagedType.BStr)] string appName, [MarshalAs(UnmanagedType.BStr)] string appVersion);

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Unicode, EntryPoint = "win_sparkle_set_app_details")]
		private static extern void SetAppDetails_x64([MarshalAs(UnmanagedType.BStr)] string companyName, [MarshalAs(UnmanagedType.BStr)] string appName, [MarshalAs(UnmanagedType.BStr)] string appVersion);

		public static void SetAppDetails(string companyName, string appName, string version)
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.SetAppDetails_x64(companyName, appName, version);
				return;
			}
			WinSparkle.SetAppDetails_Win32(companyName, appName, version);
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_set_automatic_check_for_updates")]
		private static extern void SetAutomaticCheckForUpdates_Win32([MarshalAs(UnmanagedType.I4)] int enableAutomaticUpdates);

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_set_automatic_check_for_updates")]
		private static extern void SetAutomaticCheckForUpdates_x64([MarshalAs(UnmanagedType.I4)] int enableAutomaticUpdates);

		public static void SetAutomaticCheckForUpdates(bool value)
		{
			int num = 0;
			if (value)
			{
				num = 1;
			}
			if (Environment.Is64BitProcess)
			{
				WinSparkle.SetAutomaticCheckForUpdates_x64(num);
				return;
			}
			WinSparkle.SetAutomaticCheckForUpdates_Win32(num);
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_set_update_check_interval")]
		private static extern void SetUpdateCheckInterval_Win32([MarshalAs(UnmanagedType.I4)] int interval);

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_set_update_check_interval")]
		private static extern void SetUpdateCheckInterval_x64([MarshalAs(UnmanagedType.I4)] int interval);

		public static void SetUpdateCheckInterval(TimeSpan timespan)
		{
			if (timespan.TotalHours < 1.0)
			{
				throw new InvalidOperationException("timespan should be 1 hour or more");
			}
			if (Environment.Is64BitProcess)
			{
				WinSparkle.SetUpdateCheckInterval_x64(Convert.ToInt32(timespan.TotalSeconds));
				return;
			}
			WinSparkle.SetUpdateCheckInterval_Win32(Convert.ToInt32(timespan.TotalSeconds));
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_get_last_check_time")]
		private static extern long GetLastUpdateCheckTime_Win32();

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_get_last_check_time")]
		private static extern long GetLastUpdateCheckTime_x64();

		public static DateTime? GetLastUpdateCheckTime()
		{
			long num = Environment.Is64BitProcess ? WinSparkle.GetLastUpdateCheckTime_x64() : WinSparkle.GetLastUpdateCheckTime_Win32();
			if (num == -1L)
			{
				return null;
			}
			DateTime dateTime = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
			return new DateTime?(dateTime.AddSeconds((double)num).ToUniversalTime());
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi, EntryPoint = "win_sparkle_set_can_shutdown_callback")]
		private static extern void SetCanShutdownCallback_Win32([MarshalAs(UnmanagedType.FunctionPtr)] WinSparkle.CanShutdownCallback callback);

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi, EntryPoint = "win_sparkle_set_can_shutdown_callback")]
		private static extern void SetCanShutdownCallback_x64([MarshalAs(UnmanagedType.FunctionPtr)] WinSparkle.CanShutdownCallback callback);

		public static void SetCanShutdownCallback(WinSparkle.CanShutdownCallback callback)
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.SetCanShutdownCallback_x64(callback);
				return;
			}
			WinSparkle.SetCanShutdownCallback_Win32(callback);
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi, EntryPoint = "win_sparkle_set_shutdown_request_callback")]
		private static extern void SetShutdownRequestCallback_Win32([MarshalAs(UnmanagedType.FunctionPtr)] WinSparkle.ShutdownRequestCallback callback);

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi, EntryPoint = "win_sparkle_set_shutdown_request_callback")]
		private static extern void SetShutdownRequestCallback_x64([MarshalAs(UnmanagedType.FunctionPtr)] WinSparkle.ShutdownRequestCallback callback);

		public static void SetShutdownRequestCallback(WinSparkle.ShutdownRequestCallback callback)
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.SetShutdownRequestCallback_x64(callback);
				return;
			}
			WinSparkle.SetShutdownRequestCallback_Win32(callback);
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_check_update_with_ui_and_install")]
		private static extern void CheckUpdateWithUIAndInstall_Win32();

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, EntryPoint = "win_sparkle_check_update_with_ui_and_install")]
		private static extern void CheckUpdateWithUIAndInstall_X64();

		public static void CheckUpdateWithUIAndInstall()
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.CheckUpdateWithUIAndInstall_X64();
				return;
			}
			WinSparkle.CheckUpdateWithUIAndInstall_Win32();
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi, EntryPoint = "win_sparkle_set_did_find_update_callback")]
		private static extern void SetDidFindUpdateCallback_Win32([MarshalAs(UnmanagedType.FunctionPtr)] WinSparkle.DidFindUpdateCallback callback);

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi, EntryPoint = "win_sparkle_set_did_find_update_callback")]
		private static extern void SetDidFindUpdateCallback_X64([MarshalAs(UnmanagedType.FunctionPtr)] WinSparkle.DidFindUpdateCallback callback);

		public static void SetDidFindUpdateCallback(WinSparkle.DidFindUpdateCallback callback)
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.SetDidFindUpdateCallback_X64(callback);
				return;
			}
			WinSparkle.SetDidFindUpdateCallback_Win32(callback);
		}

		[DllImport("Resources/Binaries/32bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi, EntryPoint = "win_sparkle_set_update_cancelled_callback")]
		private static extern void SetUpdateCancelledCallback_Win32([MarshalAs(UnmanagedType.FunctionPtr)] WinSparkle.UpdateCancelledCallback callback);

		[DllImport("Resources/Binaries/64bit/WinSparkle.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi, EntryPoint = "win_sparkle_set_update_cancelled_callback")]
		private static extern void SetUpdateCancelledCallback_X64([MarshalAs(UnmanagedType.FunctionPtr)] WinSparkle.UpdateCancelledCallback callback);

		public static void SetUpdateCancelledCallback(WinSparkle.UpdateCancelledCallback callback)
		{
			if (Environment.Is64BitProcess)
			{
				WinSparkle.SetUpdateCancelledCallback_X64(callback);
				return;
			}
			WinSparkle.SetUpdateCancelledCallback_Win32(callback);
		}
	}
}
