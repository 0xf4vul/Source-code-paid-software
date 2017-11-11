using System;
using System.Runtime.InteropServices;

namespace ibVPN.Helpers
{
	internal class Win32
	{
		public const uint SHGFI_ICON = 256u;

		public const uint SHGFI_LARGEICON = 0u;

		public const uint SHGFI_SMALLICON = 1u;

		[DllImport("shell32.dll")]
		public static extern IntPtr SHGetFileInfo(string pszPath, uint dwFileAttributes, ref SHFILEINFO psfi, uint cbSizeFileInfo, uint uFlags);
	}
}
