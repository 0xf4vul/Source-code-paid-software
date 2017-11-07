using NordVpn.Core.Native.Structures;
using NordVpn.Settings.Storage;
using System;
using System.CodeDom.Compiler;
using System.Collections.Specialized;
using System.Configuration;
using System.Diagnostics;
using System.Runtime.CompilerServices;

namespace WindowsApp.Properties
{
	[GeneratedCode("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "15.1.0.0"), CompilerGenerated]
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

		[ApplicationScopedSetting, DefaultSettingValue("https://downloads.nordvpn.com/apps/windows/update.xml"), DebuggerNonUserCode]
		public string UpdateURI
		{
			get
			{
				return (string)this["UpdateURI"];
			}
		}

		[DefaultSettingValue("udp"), UserScopedSetting, DebuggerNonUserCode]
		public string OvpnProtocol
		{
			get
			{
				return (string)this["OvpnProtocol"];
			}
			set
			{
				this["OvpnProtocol"] = value;
			}
		}

		[DefaultSettingValue("imperial"), UserScopedSetting, DebuggerNonUserCode]
		public string Units
		{
			get
			{
				return (string)this["Units"];
			}
			set
			{
				this["Units"] = value;
			}
		}

		[DefaultSettingValue("True"), UserScopedSetting, DebuggerNonUserCode]
		public bool ShowNotifications
		{
			get
			{
				return (bool)this["ShowNotifications"];
			}
			set
			{
				this["ShowNotifications"] = value;
			}
		}

		[DefaultSettingValue("True"), UserScopedSetting, DebuggerNonUserCode]
		public bool AppFirstRun
		{
			get
			{
				return (bool)this["AppFirstRun"];
			}
			set
			{
				this["AppFirstRun"] = value;
			}
		}

		[DefaultSettingValue("False"), UserScopedSetting, DebuggerNonUserCode]
		public bool AutoConnect
		{
			get
			{
				return (bool)this["AutoConnect"];
			}
			set
			{
				this["AutoConnect"] = value;
			}
		}

		[DefaultSettingValue("True"), UserScopedSetting, DebuggerNonUserCode]
		public bool StartOnStartup
		{
			get
			{
				return (bool)this["StartOnStartup"];
			}
			set
			{
				this["StartOnStartup"] = value;
			}
		}

		[DefaultSettingValue(""), UserScopedSetting, DebuggerNonUserCode]
		public string OpenvpnZipEtag
		{
			get
			{
				return (string)this["OpenvpnZipEtag"];
			}
			set
			{
				this["OpenvpnZipEtag"] = value;
			}
		}

		[DefaultSettingValue("False"), UserScopedSetting, DebuggerNonUserCode]
		public bool KillSwitch
		{
			get
			{
				return (bool)this["KillSwitch"];
			}
			set
			{
				this["KillSwitch"] = value;
			}
		}

		[DefaultSettingValue(""), UserScopedSetting, DebuggerNonUserCode]
		public string DeviceID
		{
			get
			{
				return (string)this["DeviceID"];
			}
			set
			{
				this["DeviceID"] = value;
			}
		}

		[DefaultSettingValue(""), UserScopedSetting, DebuggerNonUserCode]
		public string AutoConnectTarget
		{
			get
			{
				return (string)this["AutoConnectTarget"];
			}
			set
			{
				this["AutoConnectTarget"] = value;
			}
		}

		[DefaultSettingValue(""), UserScopedSetting, DebuggerNonUserCode]
		public string AutoConnectMode
		{
			get
			{
				return (string)this["AutoConnectMode"];
			}
			set
			{
				this["AutoConnectMode"] = value;
			}
		}

		[DefaultSettingValue("False"), UserScopedSetting, DebuggerNonUserCode]
		public bool UseCustomDns
		{
			get
			{
				return (bool)this["UseCustomDns"];
			}
			set
			{
				this["UseCustomDns"] = value;
			}
		}

		[DefaultSettingValue("True"), UserScopedSetting, DebuggerNonUserCode]
		public bool ShowServerList
		{
			get
			{
				return (bool)this["ShowServerList"];
			}
			set
			{
				this["ShowServerList"] = value;
			}
		}

		[DefaultSettingValue("True"), UserScopedSetting, DebuggerNonUserCode]
		public bool ShowMap
		{
			get
			{
				return (bool)this["ShowMap"];
			}
			set
			{
				this["ShowMap"] = value;
			}
		}

		[UserScopedSetting, DebuggerNonUserCode]
		public WindowPlacement WindowPlacement
		{
			get
			{
				return (WindowPlacement)this["WindowPlacement"];
			}
			set
			{
				this["WindowPlacement"] = value;
			}
		}

		[DefaultSettingValue("False"), UserScopedSetting, DebuggerNonUserCode]
		public bool StartMinimized
		{
			get
			{
				return (bool)this["StartMinimized"];
			}
			set
			{
				this["StartMinimized"] = value;
			}
		}

		[DefaultSettingValue(""), UserScopedSetting, DebuggerNonUserCode]
		public string Username
		{
			get
			{
				return (string)this["Username"];
			}
			set
			{
				this["Username"] = value;
			}
		}

		[DefaultSettingValue(""), UserScopedSetting, DebuggerNonUserCode]
		public string Password
		{
			get
			{
				return (string)this["Password"];
			}
			set
			{
				this["Password"] = value;
			}
		}

		[DefaultSettingValue(""), UserScopedSetting, DebuggerNonUserCode]
		public string DnsHosts
		{
			get
			{
				return (string)this["DnsHosts"];
			}
			set
			{
				this["DnsHosts"] = value;
			}
		}

		[DefaultSettingValue(""), UserScopedSetting, DebuggerNonUserCode]
		public string OpenvpnXorZipEtag
		{
			get
			{
				return (string)this["OpenvpnXorZipEtag"];
			}
			set
			{
				this["OpenvpnXorZipEtag"] = value;
			}
		}

		[DefaultSettingValue("False"), UserScopedSetting, DebuggerNonUserCode]
		public bool CyberSec
		{
			get
			{
				return (bool)this["CyberSec"];
			}
			set
			{
				this["CyberSec"] = value;
			}
		}

		[DefaultSettingValue("True"), UserScopedSetting, DebuggerNonUserCode]
		public bool ShowCyberSecPopup
		{
			get
			{
				return (bool)this["ShowCyberSecPopup"];
			}
			set
			{
				this["ShowCyberSecPopup"] = value;
			}
		}

		[UserScopedSetting, DebuggerNonUserCode]
		public StringCollection CyberSecHosts
		{
			get
			{
				return (StringCollection)this["CyberSecHosts"];
			}
			set
			{
				this["CyberSecHosts"] = value;
			}
		}

		[UserScopedSetting, DebuggerNonUserCode]
		public KillSwitchSettings KillSwitchApps
		{
			get
			{
				return (KillSwitchSettings)this["KillSwitchApps"];
			}
			set
			{
				this["KillSwitchApps"] = value;
			}
		}
	}
}
