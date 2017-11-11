using System;
using System.IO;
using System.Runtime;

namespace NordVpn.Application
{
	public static class ProfileOptimizationHelper
	{
		public static void CreateProfile()
		{
			string expr_16 = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), AppConfig.AppName, "ProfileOptimization");
			Directory.CreateDirectory(expr_16);
			ProfileOptimization.SetProfileRoot(expr_16);
			ProfileOptimization.StartProfile("Startup.profile");
		}
	}
}
