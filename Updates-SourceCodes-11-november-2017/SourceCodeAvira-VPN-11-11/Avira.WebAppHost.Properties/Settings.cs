using System;
using System.CodeDom.Compiler;
using System.Configuration;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;

namespace Avira.WebAppHost.Properties
{
	[GeneratedCode("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "14.0.0.0"), CompilerGenerated]
	internal sealed class Settings : ApplicationSettingsBase
	{
		private static Settings defaultInstance = (Settings)SettingsBase.Synchronized(new Settings());

		public static Settings Default
		{
			get
			{
				return Settings.defaultInstance;
			}
		}

		[DefaultSettingValue("-1, -1"), UserScopedSetting, DebuggerNonUserCode]
		public Point WindowLocation
		{
			get
			{
				return (Point)this["WindowLocation"];
			}
			set
			{
				this["WindowLocation"] = value;
			}
		}

		[DefaultSettingValue(""), UserScopedSetting, DebuggerNonUserCode]
		public string UiSettings
		{
			get
			{
				return (string)this["UiSettings"];
			}
			set
			{
				this["UiSettings"] = value;
			}
		}

		[DefaultSettingValue("True"), UserScopedSetting, DebuggerNonUserCode]
		public bool CallUpgrade
		{
			get
			{
				return (bool)this["CallUpgrade"];
			}
			set
			{
				this["CallUpgrade"] = value;
			}
		}

		[ApplicationScopedSetting, DefaultSettingValue("en-US"), DebuggerNonUserCode]
		public string LANG
		{
			get
			{
				return (string)this["LANG"];
			}
		}

		[DefaultSettingValue("True"), UserScopedSetting, DebuggerNonUserCode]
		public bool SendDiagnosticData
		{
			get
			{
				return (bool)this["SendDiagnosticData"];
			}
			set
			{
				this["SendDiagnosticData"] = value;
			}
		}

		[DefaultSettingValue("False"), UserScopedSetting, DebuggerNonUserCode]
		public bool AutoSecureUntrustedWifi
		{
			get
			{
				return (bool)this["AutoSecureUntrustedWifi"];
			}
			set
			{
				this["AutoSecureUntrustedWifi"] = value;
			}
		}
	}
}
