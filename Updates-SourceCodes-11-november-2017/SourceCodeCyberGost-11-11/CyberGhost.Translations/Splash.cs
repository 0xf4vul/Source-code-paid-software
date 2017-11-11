using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace CyberGhost.Translations
{
	[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0"), DebuggerNonUserCode, CompilerGenerated]
	public class Splash
	{
		private static ResourceManager resourceMan;

		private static CultureInfo resourceCulture;

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static ResourceManager ResourceManager
		{
			get
			{
				if (Splash.resourceMan == null)
				{
					Splash.resourceMan = new ResourceManager("CyberGhost.Translations.Splash", typeof(Splash).Assembly);
				}
				return Splash.resourceMan;
			}
		}

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static CultureInfo Culture
		{
			get
			{
				return Splash.resourceCulture;
			}
			set
			{
				Splash.resourceCulture = value;
			}
		}

		public static string Service_installation_failed
		{
			get
			{
				return Splash.ResourceManager.GetString("Service_installation_failed", Splash.resourceCulture);
			}
		}

		public static string Service_installation_failed_header
		{
			get
			{
				return Splash.ResourceManager.GetString("Service_installation_failed_header", Splash.resourceCulture);
			}
		}

		public static string Splash_InitCyberGhost_CyberGhostIsOutdated
		{
			get
			{
				return Splash.ResourceManager.GetString("Splash_InitCyberGhost_CyberGhostIsOutdated", Splash.resourceCulture);
			}
		}

		public static string Splash_InitCyberGhost_Splash_InitCyberGhost_CyberGhostIsOutdated_Text
		{
			get
			{
				return Splash.ResourceManager.GetString("Splash_InitCyberGhost_Splash_InitCyberGhost_CyberGhostIsOutdated_Text", Splash.resourceCulture);
			}
		}

		public static string Splash_InitCyberGhost_Waiting_for_CyberGhost_Service_to_start____
		{
			get
			{
				return Splash.ResourceManager.GetString("Splash_InitCyberGhost_Waiting_for_CyberGhost_Service_to_start____", Splash.resourceCulture);
			}
		}

		public static string Splash_InitTheInit_ServiceIsNotReachableRetry
		{
			get
			{
				return Splash.ResourceManager.GetString("Splash_InitTheInit_ServiceIsNotReachableRetry", Splash.resourceCulture);
			}
		}

		public static string Status
		{
			get
			{
				return Splash.ResourceManager.GetString("Status", Splash.resourceCulture);
			}
		}

		public static string Version
		{
			get
			{
				return Splash.ResourceManager.GetString("Version", Splash.resourceCulture);
			}
		}

		internal Splash()
		{
		}
	}
}
