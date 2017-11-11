using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace NordVpn.Properties
{
	[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0"), DebuggerNonUserCode, CompilerGenerated]
	public class Resources
	{
		private static ResourceManager resourceMan;

		private static CultureInfo resourceCulture;

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static ResourceManager ResourceManager
		{
			get
			{
				if (Resources.resourceMan == null)
				{
					Resources.resourceMan = new ResourceManager("NordVpn.Properties.Resources", typeof(Resources).Assembly);
				}
				return Resources.resourceMan;
			}
		}

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static CultureInfo Culture
		{
			get
			{
				return Resources.resourceCulture;
			}
			set
			{
				Resources.resourceCulture = value;
			}
		}

		public static Icon _32x32_connected
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("_32x32_connected", Resources.resourceCulture);
			}
		}

		public static Icon _32x32_conneting
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("_32x32_conneting", Resources.resourceCulture);
			}
		}

		public static Icon _32x32_default
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("_32x32_default", Resources.resourceCulture);
			}
		}

		public static Icon _32x32_error
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("_32x32_error", Resources.resourceCulture);
			}
		}

		public static Icon _32x32_white
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("_32x32_white", Resources.resourceCulture);
			}
		}

		public static Icon app_window
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("app_window", Resources.resourceCulture);
			}
		}

		public static string Cancel
		{
			get
			{
				return Resources.ResourceManager.GetString("Cancel", Resources.resourceCulture);
			}
		}

		public static string DoYouWantToRestartYourPcMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("DoYouWantToRestartYourPcMessage", Resources.resourceCulture);
			}
		}

		public static string DoYouWantToTerminateVpnMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("DoYouWantToTerminateVpnMessage", Resources.resourceCulture);
			}
		}

		public static string EmailInUse
		{
			get
			{
				return Resources.ResourceManager.GetString("EmailInUse", Resources.resourceCulture);
			}
		}

		public static string EmptyLoginData
		{
			get
			{
				return Resources.ResourceManager.GetString("EmptyLoginData", Resources.resourceCulture);
			}
		}

		public static string FailedToConnect
		{
			get
			{
				return Resources.ResourceManager.GetString("FailedToConnect", Resources.resourceCulture);
			}
		}

		public static string IncorrectLoginData
		{
			get
			{
				return Resources.ResourceManager.GetString("IncorrectLoginData", Resources.resourceCulture);
			}
		}

		public static string LogoutWithVpnMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("LogoutWithVpnMessage", Resources.resourceCulture);
			}
		}

		public static string MainWindowTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("MainWindowTitle", Resources.resourceCulture);
			}
		}

		public static string NoInternet
		{
			get
			{
				return Resources.ResourceManager.GetString("NoInternet", Resources.resourceCulture);
			}
		}

		public static string ServiceUnreachable
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceUnreachable", Resources.resourceCulture);
			}
		}

		public static string WindowTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("WindowTitle", Resources.resourceCulture);
			}
		}

		internal Resources()
		{
		}
	}
}
