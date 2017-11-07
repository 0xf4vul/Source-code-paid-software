using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Logging
{
	public static class LogTarget
	{
		public static string File
		{
			[CompilerGenerated]
			get
			{
				return LogTarget.<File>k__BackingField;
			}
		}

		public static string InMemory
		{
			[CompilerGenerated]
			get
			{
				return LogTarget.<InMemory>k__BackingField;
			}
		}

		static LogTarget()
		{
			// Note: this type is marked as 'beforefieldinit'.
			LogTarget.<File>k__BackingField = "File";
			LogTarget.<InMemory>k__BackingField = "InMemory";
		}
	}
}
