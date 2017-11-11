using NordVpn.Core.Models.Settings.Structures;
using System;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Interop;

namespace NordVpn.Application.Native
{
	public static class WindowPlacementExtensions
	{
		private const int SW_SHOWNORMAL = 1;

		private const int SW_SHOWMINIMIZED = 2;

		public static WindowPlacement GetWindowPlacement(this Window window)
		{
			WindowPlacement windowPlacement = new WindowPlacement();
			WindowPlacementExtensions.GetWindowPlacement(new WindowInteropHelper(window).Handle, windowPlacement);
			return windowPlacement;
		}

		public static bool SetWindowPlacement(this Window window, WindowPlacement placement, bool restoreFromMinimizedState)
		{
			placement.Length = Marshal.SizeOf(typeof(WindowPlacement));
			placement.Flags = 0;
			if (restoreFromMinimizedState)
			{
				placement.ShowCommand = ((placement.ShowCommand == 2) ? 1 : placement.ShowCommand);
			}
			return WindowPlacementExtensions.SetWindowPlacement(new WindowInteropHelper(window).Handle, placement);
		}

		[DllImport("user32.dll")]
		private static extern bool SetWindowPlacement(IntPtr hWnd, [In] WindowPlacement lpwndpl);

		[DllImport("user32.dll")]
		private static extern bool GetWindowPlacement(IntPtr hWnd, [In] [Out] WindowPlacement lpwndpl);
	}
}
