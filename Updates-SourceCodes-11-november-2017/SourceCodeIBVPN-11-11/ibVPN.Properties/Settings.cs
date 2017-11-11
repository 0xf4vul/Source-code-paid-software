using System;
using System.CodeDom.Compiler;
using System.Configuration;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;

namespace ibVPN.Properties
{
	[GeneratedCode("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "14.0.0.0"), CompilerGenerated]
	public sealed class Settings : ApplicationSettingsBase
	{
		private static Settings defaultInstance = (Settings)SettingsBase.Synchronized(new Settings());

		public static Settings Default
		{
			get
			{
				return Settings.defaultInstance;
			}
		}

		[ApplicationScopedSetting, DefaultSettingValue("True"), DebuggerNonUserCode]
		public bool ThemeAware
		{
			get
			{
				return (bool)this["ThemeAware"];
			}
		}

		[DefaultSettingValue("247, 247, 247"), UserScopedSetting, DebuggerNonUserCode]
		public Color BackColor
		{
			get
			{
				return (Color)this["BackColor"];
			}
			set
			{
				this["BackColor"] = value;
			}
		}
	}
}
