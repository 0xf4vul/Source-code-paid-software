using System;
using System.IO;

namespace NordVpn.Shared
{
	internal static class PathExtensions
	{
		public static bool PathEquals(this string path, string otherPath)
		{
			return path.TrimEnd(new char[]
			{
				Path.DirectorySeparatorChar,
				Path.AltDirectorySeparatorChar
			}).Equals(otherPath.TrimEnd(new char[]
			{
				Path.DirectorySeparatorChar,
				Path.AltDirectorySeparatorChar
			}), StringComparison.OrdinalIgnoreCase);
		}

		public static string EnsureDirectoryExists(this string directory)
		{
			if (!Directory.Exists(directory))
			{
				Directory.CreateDirectory(directory);
			}
			return directory;
		}
	}
}
