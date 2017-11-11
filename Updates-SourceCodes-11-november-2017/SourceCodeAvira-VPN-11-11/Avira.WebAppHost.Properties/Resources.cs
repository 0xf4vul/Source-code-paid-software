using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Drawing;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace Avira.WebAppHost.Properties
{
	[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0"), DebuggerNonUserCode, CompilerGenerated]
	internal class Resources
	{
		private static ResourceManager resourceMan;

		private static CultureInfo resourceCulture;

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		internal static ResourceManager ResourceManager
		{
			get
			{
				if (Resources.resourceMan == null)
				{
					Resources.resourceMan = new ResourceManager("Avira.WebAppHost.Properties.Resources", typeof(Resources).Assembly);
				}
				return Resources.resourceMan;
			}
		}

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		internal static CultureInfo Culture
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

		internal static Icon appIcon
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("appIcon", Resources.resourceCulture);
			}
		}

		internal static Icon Connected
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("Connected", Resources.resourceCulture);
			}
		}

		internal static Icon Connecting
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("Connecting", Resources.resourceCulture);
			}
		}

		internal static Icon Disconnected
		{
			get
			{
				return (Icon)Resources.ResourceManager.GetObject("Disconnected", Resources.resourceCulture);
			}
		}

		[SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
		internal Resources()
		{
		}
	}
}
