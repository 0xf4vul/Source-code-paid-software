using System;
using System.Runtime.InteropServices;

namespace NordVpn.Application.Native
{
	public static class Win32ApplicationRestart
	{
		[Flags]
		private enum RestartFlags
		{
			None = 0,
			RestartNoCrash = 1,
			RestartNoHang = 2,
			RestartNoPatch = 4,
			RestartNoReboot = 8
		}

		public static bool RegisterApplicationForRestart()
		{
			return Win32ApplicationRestart.RegisterApplicationRestart("", Win32ApplicationRestart.RestartFlags.None) == 0u;
		}

		[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
		private static extern uint RegisterApplicationRestart(string pwsCommandLine, Win32ApplicationRestart.RestartFlags dwFlags);
	}
}
