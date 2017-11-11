using System;
using System.Runtime.InteropServices;

namespace ibVPN.Helpers
{
	internal static class NativeWinAPI
	{
		internal static readonly int GWL_EXSTYLE = -20;

		internal static readonly int WS_EX_COMPOSITED = 33554432;

		[DllImport("user32")]
		internal static extern int GetWindowLong(IntPtr hWnd, int nIndex);

		[DllImport("user32")]
		internal static extern int SetWindowLong(IntPtr hWnd, int nIndex, int dwNewLong);
	}
}
