using System;
using System.ComponentModel;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Interop;

namespace NordVpn.Application.Native
{
	public static class User32
	{
		public enum WindowShowStyle : uint
		{
			SwHide,
			SwShownormal,
			SwShowminimized,
			SwMaximize,
			SwShowmaximized = 3u,
			SwShowNoActivate,
			SwShow,
			SwMinimize,
			SwShowMinNoactive,
			SwShowna,
			SwRestore,
			SwShowdefault,
			SwForceminimize
		}

		private struct FLASHWINFO
		{
			public uint cbSize;

			public IntPtr hwnd;

			public uint dwFlags;

			public uint uCount;

			public uint dwTimeout;
		}

		[StructLayout(LayoutKind.Sequential, Size = 1)]
		private struct DwFlag
		{
			public const uint Stop = 0u;

			public const uint Caption = 1u;

			public const uint Tray = 2u;

			public const uint All = 3u;

			public const uint Timer = 4u;

			public const uint TimerNofg = 12u;
		}

		[DllImport("User32", SetLastError = true)]
		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool SetForegroundWindow(IntPtr hWnd);

		[DllImport("User32", CharSet = CharSet.Unicode, SetLastError = true)]
		public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

		[DllImport("User32")]
		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool ShowWindow(IntPtr hWnd, User32.WindowShowStyle nCmdShow);

		public static bool FlashWindowUntillFocus(Window window)
		{
			IntPtr expr_0B = new WindowInteropHelper(window).Handle;
			if (expr_0B == IntPtr.Zero)
			{
				throw new Win32Exception();
			}
			User32.FLASHWINFO fLASHWINFO = User32.CreateFlashWInfo(expr_0B, 15u, 10u, 0u);
			return User32.FlashWindowEx(ref fLASHWINFO);
		}

		[DllImport("user32.dll")]
		[return: MarshalAs(UnmanagedType.Bool)]
		private static extern bool FlashWindowEx(ref User32.FLASHWINFO pwfi);

		private static User32.FLASHWINFO CreateFlashWInfo(IntPtr handle, uint dwFlags, uint count, uint timeout)
		{
			User32.FLASHWINFO fLASHWINFO = default(User32.FLASHWINFO);
			fLASHWINFO.cbSize = Convert.ToUInt32(Marshal.SizeOf<User32.FLASHWINFO>(fLASHWINFO));
			fLASHWINFO.hwnd = handle;
			fLASHWINFO.dwFlags = dwFlags;
			fLASHWINFO.uCount = count;
			fLASHWINFO.dwTimeout = timeout;
			return fLASHWINFO;
		}
	}
}
