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
	public class DebugWindow
	{
		private static ResourceManager resourceMan;

		private static CultureInfo resourceCulture;

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static ResourceManager ResourceManager
		{
			get
			{
				if (DebugWindow.resourceMan == null)
				{
					DebugWindow.resourceMan = new ResourceManager("CyberGhost.Translations.DebugWindow", typeof(DebugWindow).Assembly);
				}
				return DebugWindow.resourceMan;
			}
		}

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static CultureInfo Culture
		{
			get
			{
				return DebugWindow.resourceCulture;
			}
			set
			{
				DebugWindow.resourceCulture = value;
			}
		}

		public static string Cancel
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("Cancel", DebugWindow.resourceCulture);
			}
		}

		public static string ClearLog
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("ClearLog", DebugWindow.resourceCulture);
			}
		}

		public static string DebugWindowDateTime
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("DebugWindowDateTime", DebugWindow.resourceCulture);
			}
		}

		public static string DebugWindowName
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("DebugWindowName", DebugWindow.resourceCulture);
			}
		}

		public static string DebugWindowValue
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("DebugWindowValue", DebugWindow.resourceCulture);
			}
		}

		public static string Save
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("Save", DebugWindow.resourceCulture);
			}
		}

		public static string SaveLogFilter
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("SaveLogFilter", DebugWindow.resourceCulture);
			}
		}

		public static string SendToSupport
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("SendToSupport", DebugWindow.resourceCulture);
			}
		}

		public static string SendToSupport_Header
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("SendToSupport_Header", DebugWindow.resourceCulture);
			}
		}

		public static string SendToSupport_Message
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("SendToSupport_Message", DebugWindow.resourceCulture);
			}
		}

		public static string Title
		{
			get
			{
				return DebugWindow.ResourceManager.GetString("Title", DebugWindow.resourceCulture);
			}
		}

		internal DebugWindow()
		{
		}
	}
}
