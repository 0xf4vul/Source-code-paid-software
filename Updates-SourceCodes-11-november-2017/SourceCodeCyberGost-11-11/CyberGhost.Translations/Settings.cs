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
	public class Settings
	{
		private static ResourceManager resourceMan;

		private static CultureInfo resourceCulture;

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static ResourceManager ResourceManager
		{
			get
			{
				if (Settings.resourceMan == null)
				{
					Settings.resourceMan = new ResourceManager("CyberGhost.Translations.Settings", typeof(Settings).Assembly);
				}
				return Settings.resourceMan;
			}
		}

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static CultureInfo Culture
		{
			get
			{
				return Settings.resourceCulture;
			}
			set
			{
				Settings.resourceCulture = value;
			}
		}

		public static string ActionHeader_
		{
			get
			{
				return Settings.ResourceManager.GetString("ActionHeader#", Settings.resourceCulture);
			}
		}

		public static string AddApp
		{
			get
			{
				return Settings.ResourceManager.GetString("AddApp", Settings.resourceCulture);
			}
		}

		public static string addException
		{
			get
			{
				return Settings.ResourceManager.GetString("addException", Settings.resourceCulture);
			}
		}

		public static string AppFirewall_DefaultComboBox_AlwaysAsk
		{
			get
			{
				return Settings.ResourceManager.GetString("AppFirewall_DefaultComboBox_AlwaysAsk", Settings.resourceCulture);
			}
		}

		public static string AppFirewall_DefaultComboBox_NeverAsk
		{
			get
			{
				return Settings.ResourceManager.GetString("AppFirewall_DefaultComboBox_NeverAsk", Settings.resourceCulture);
			}
		}

		public static string AppFirewall_Setting_DefaultForKnownApp
		{
			get
			{
				return Settings.ResourceManager.GetString("AppFirewall_Setting_DefaultForKnownApp", Settings.resourceCulture);
			}
		}

		public static string AppFirewall_Setting_DefaultForUnknownApp
		{
			get
			{
				return Settings.ResourceManager.GetString("AppFirewall_Setting_DefaultForUnknownApp", Settings.resourceCulture);
			}
		}

		public static string ApplicationFilter
		{
			get
			{
				return Settings.ResourceManager.GetString("ApplicationFilter", Settings.resourceCulture);
			}
		}

		public static string AppProtection
		{
			get
			{
				return Settings.ResourceManager.GetString("AppProtection", Settings.resourceCulture);
			}
		}

		public static string AppProtection_CatAddCyberGhost
		{
			get
			{
				return Settings.ResourceManager.GetString("AppProtection_CatAddCyberGhost", Settings.resourceCulture);
			}
		}

		public static string autodetectEmailSettings
		{
			get
			{
				return Settings.ResourceManager.GetString("autodetectEmailSettings", Settings.resourceCulture);
			}
		}

		public static string ConnectedWifi__wiFiDetector_OnWifiDisconnected_SWITCHING_WIFIS
		{
			get
			{
				return Settings.ResourceManager.GetString("ConnectedWifi__wiFiDetector_OnWifiDisconnected_SWITCHING_WIFIS", Settings.resourceCulture);
			}
		}

		public static string connection_activete_virtual_network
		{
			get
			{
				return Settings.ResourceManager.GetString("connection_activete_virtual_network", Settings.resourceCulture);
			}
		}

		public static string connection_disable_ip_v6
		{
			get
			{
				return Settings.ResourceManager.GetString("connection_disable_ip_v6", Settings.resourceCulture);
			}
		}

		public static string connection_force_using_cyberghost
		{
			get
			{
				return Settings.ResourceManager.GetString("connection_force_using_cyberghost", Settings.resourceCulture);
			}
		}

		public static string connection_fragment_size
		{
			get
			{
				return Settings.ResourceManager.GetString("connection_fragment_size", Settings.resourceCulture);
			}
		}

		public static string connection_headline
		{
			get
			{
				return Settings.ResourceManager.GetString("connection_headline", Settings.resourceCulture);
			}
		}

		public static string connection_network_settings
		{
			get
			{
				return Settings.ResourceManager.GetString("connection_network_settings", Settings.resourceCulture);
			}
		}

		public static string connection_please_change
		{
			get
			{
				return Settings.ResourceManager.GetString("connection_please_change", Settings.resourceCulture);
			}
		}

		public static string connection_prefer_tcp
		{
			get
			{
				return Settings.ResourceManager.GetString("connection_prefer_tcp", Settings.resourceCulture);
			}
		}

		public static string connection_use_random_port
		{
			get
			{
				return Settings.ResourceManager.GetString("connection_use_random_port", Settings.resourceCulture);
			}
		}

		public static string donothing
		{
			get
			{
				return Settings.ResourceManager.GetString("donothing", Settings.resourceCulture);
			}
		}

		public static string DonTResetVirtualNetworkCardDuringStartup
		{
			get
			{
				return Settings.ResourceManager.GetString("DonTResetVirtualNetworkCardDuringStartup", Settings.resourceCulture);
			}
		}

		public static string EnableAppProtection
		{
			get
			{
				return Settings.ResourceManager.GetString("EnableAppProtection", Settings.resourceCulture);
			}
		}

		public static string exceptions_add_host
		{
			get
			{
				return Settings.ResourceManager.GetString("exceptions_add_host", Settings.resourceCulture);
			}
		}

		public static string exceptions_exceptions
		{
			get
			{
				return Settings.ResourceManager.GetString("exceptions_exceptions", Settings.resourceCulture);
			}
		}

		public static string exceptions_existing_exception
		{
			get
			{
				return Settings.ResourceManager.GetString("exceptions_existing_exception", Settings.resourceCulture);
			}
		}

		public static string fragmentsizeHint
		{
			get
			{
				return Settings.ResourceManager.GetString("fragmentsizeHint", Settings.resourceCulture);
			}
		}

		public static string General_AppProfile_OnSelectionChanged_Please_first_select_a_country_or_server_in_the_advanced_profile_
		{
			get
			{
				return Settings.ResourceManager.GetString("General_AppProfile_OnSelectionChanged_Please_first_select_a_country_or_server_in_the_advanced_profile_", Settings.resourceCulture);
			}
		}

		public static string General_AppProfile_OnSelectionChanged_Profile_is_not_yet_configured_
		{
			get
			{
				return Settings.ResourceManager.GetString("General_AppProfile_OnSelectionChanged_Profile_is_not_yet_configured_", Settings.resourceCulture);
			}
		}

		public static string general_autostart
		{
			get
			{
				return Settings.ResourceManager.GetString("general_autostart", Settings.resourceCulture);
			}
		}

		public static string general_english
		{
			get
			{
				return Settings.ResourceManager.GetString("general_english", Settings.resourceCulture);
			}
		}

		public static string general_executeLast
		{
			get
			{
				return Settings.ResourceManager.GetString("general_executeLast", Settings.resourceCulture);
			}
		}

		public static string general_frensh
		{
			get
			{
				return Settings.ResourceManager.GetString("general_frensh", Settings.resourceCulture);
			}
		}

		public static string general_general
		{
			get
			{
				return Settings.ResourceManager.GetString("general_general", Settings.resourceCulture);
			}
		}

		public static string general_german
		{
			get
			{
				return Settings.ResourceManager.GetString("general_german", Settings.resourceCulture);
			}
		}

		public static string general_installBeta
		{
			get
			{
				return Settings.ResourceManager.GetString("general_installBeta", Settings.resourceCulture);
			}
		}

		public static string general_italian
		{
			get
			{
				return Settings.ResourceManager.GetString("general_italian", Settings.resourceCulture);
			}
		}

		public static string General_LanguageCombobox_SelectionChanged_Language_changed
		{
			get
			{
				return Settings.ResourceManager.GetString("General_LanguageCombobox_SelectionChanged_Language_changed", Settings.resourceCulture);
			}
		}

		public static string General_LanguageCombobox_SelectionChanged_Please_restart_the_client_in_order_to_change_the_language_
		{
			get
			{
				return Settings.ResourceManager.GetString("General_LanguageCombobox_SelectionChanged_Please_restart_the_client_in_order_to_change_the_language_", Settings.resourceCulture);
			}
		}

		public static string general_langugae
		{
			get
			{
				return Settings.ResourceManager.GetString("general_langugae", Settings.resourceCulture);
			}
		}

		public static string general_polish
		{
			get
			{
				return Settings.ResourceManager.GetString("general_polish", Settings.resourceCulture);
			}
		}

		public static string general_romanian
		{
			get
			{
				return Settings.ResourceManager.GetString("general_romanian", Settings.resourceCulture);
			}
		}

		public static string general_russian
		{
			get
			{
				return Settings.ResourceManager.GetString("general_russian", Settings.resourceCulture);
			}
		}

		public static string general_spanish
		{
			get
			{
				return Settings.ResourceManager.GetString("general_spanish", Settings.resourceCulture);
			}
		}

		public static string HostOrIP
		{
			get
			{
				return Settings.ResourceManager.GetString("HostOrIP", Settings.resourceCulture);
			}
		}

		public static string info
		{
			get
			{
				return Settings.ResourceManager.GetString("info", Settings.resourceCulture);
			}
		}

		public static string lockconnection
		{
			get
			{
				return Settings.ResourceManager.GetString("lockconnection", Settings.resourceCulture);
			}
		}

		public static string networkCard
		{
			get
			{
				return Settings.ResourceManager.GetString("networkCard", Settings.resourceCulture);
			}
		}

		public static string Programs
		{
			get
			{
				return Settings.ResourceManager.GetString("Programs", Settings.resourceCulture);
			}
		}

		public static string ProtectedApps
		{
			get
			{
				return Settings.ResourceManager.GetString("ProtectedApps", Settings.resourceCulture);
			}
		}

		public static string proxy_address
		{
			get
			{
				return Settings.ResourceManager.GetString("proxy_address", Settings.resourceCulture);
			}
		}

		public static string proxy_auth_type
		{
			get
			{
				return Settings.ResourceManager.GetString("proxy_auth_type", Settings.resourceCulture);
			}
		}

		public static string proxy_password
		{
			get
			{
				return Settings.ResourceManager.GetString("proxy_password", Settings.resourceCulture);
			}
		}

		public static string proxy_proxy
		{
			get
			{
				return Settings.ResourceManager.GetString("proxy_proxy", Settings.resourceCulture);
			}
		}

		public static string proxy_username
		{
			get
			{
				return Settings.ResourceManager.GetString("proxy_username", Settings.resourceCulture);
			}
		}

		public static string ProxyNone
		{
			get
			{
				return Settings.ResourceManager.GetString("ProxyNone", Settings.resourceCulture);
			}
		}

		public static string reconnect
		{
			get
			{
				return Settings.ResourceManager.GetString("reconnect", Settings.resourceCulture);
			}
		}

		public static string Remove
		{
			get
			{
				return Settings.ResourceManager.GetString("Remove", Settings.resourceCulture);
			}
		}

		public static string removeSelected
		{
			get
			{
				return Settings.ResourceManager.GetString("removeSelected", Settings.resourceCulture);
			}
		}

		public static string removeSelected_
		{
			get
			{
				return Settings.ResourceManager.GetString("removeSelected_", Settings.resourceCulture);
			}
		}

		public static string SelectConnectionProfile
		{
			get
			{
				return Settings.ResourceManager.GetString("SelectConnectionProfile", Settings.resourceCulture);
			}
		}

		public static string SelectExe
		{
			get
			{
				return Settings.ResourceManager.GetString("SelectExe", Settings.resourceCulture);
			}
		}

		public static string settings_account
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_account", Settings.resourceCulture);
			}
		}

		public static string settings_achievements_DisplayName
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_achievements_DisplayName", Settings.resourceCulture);
			}
		}

		public static string settings_button_default
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_button_default", Settings.resourceCulture);
			}
		}

		public static string settings_button_general
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_button_general", Settings.resourceCulture);
			}
		}

		public static string settings_conncetion
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_conncetion", Settings.resourceCulture);
			}
		}

		public static string settings_exceptions
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_exceptions", Settings.resourceCulture);
			}
		}

		public static string settings_general
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_general", Settings.resourceCulture);
			}
		}

		public static string settings_programfirewall
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_programfirewall", Settings.resourceCulture);
			}
		}

		public static string settings_proxy
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_proxy", Settings.resourceCulture);
			}
		}

		public static string Settings_ResetAsk
		{
			get
			{
				return Settings.ResourceManager.GetString("Settings_ResetAsk", Settings.resourceCulture);
			}
		}

		public static string Settings_Settings_Default_ResetSettings
		{
			get
			{
				return Settings.ResourceManager.GetString("Settings_Settings_Default_ResetSettings", Settings.resourceCulture);
			}
		}

		public static string settings_statistics
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_statistics", Settings.resourceCulture);
			}
		}

		public static string settings_wifi
		{
			get
			{
				return Settings.ResourceManager.GetString("settings_wifi", Settings.resourceCulture);
			}
		}

		public static string support_connection
		{
			get
			{
				return Settings.ResourceManager.GetString("support_connection", Settings.resourceCulture);
			}
		}

		public static string support_loginServer
		{
			get
			{
				return Settings.ResourceManager.GetString("support_loginServer", Settings.resourceCulture);
			}
		}

		public static string support_losthandlign
		{
			get
			{
				return Settings.ResourceManager.GetString("support_losthandlign", Settings.resourceCulture);
			}
		}

		public static string support_secureConnect
		{
			get
			{
				return Settings.ResourceManager.GetString("support_secureConnect", Settings.resourceCulture);
			}
		}

		public static string support_secureConnectMode
		{
			get
			{
				return Settings.ResourceManager.GetString("support_secureConnectMode", Settings.resourceCulture);
			}
		}

		public static string support_wifi
		{
			get
			{
				return Settings.ResourceManager.GetString("support_wifi", Settings.resourceCulture);
			}
		}

		public static string version
		{
			get
			{
				return Settings.ResourceManager.GetString("version", Settings.resourceCulture);
			}
		}

		public static string wifi_ask
		{
			get
			{
				return Settings.ResourceManager.GetString("wifi_ask", Settings.resourceCulture);
			}
		}

		public static string wifi_auto
		{
			get
			{
				return Settings.ResourceManager.GetString("wifi_auto", Settings.resourceCulture);
			}
		}

		public static string wifi_current
		{
			get
			{
				return Settings.ResourceManager.GetString("wifi_current", Settings.resourceCulture);
			}
		}

		public static string wifi_hotspot
		{
			get
			{
				return Settings.ResourceManager.GetString("wifi_hotspot", Settings.resourceCulture);
			}
		}

		public static string wifi_knownandtrusted
		{
			get
			{
				return Settings.ResourceManager.GetString("wifi_knownandtrusted", Settings.resourceCulture);
			}
		}

		public static string wifi_off
		{
			get
			{
				return Settings.ResourceManager.GetString("wifi_off", Settings.resourceCulture);
			}
		}

		public static string wifi_unsecureWifi
		{
			get
			{
				return Settings.ResourceManager.GetString("wifi_unsecureWifi", Settings.resourceCulture);
			}
		}

		public static string WifiHeader
		{
			get
			{
				return Settings.ResourceManager.GetString("WifiHeader", Settings.resourceCulture);
			}
		}

		public static string WifiKnownSettings
		{
			get
			{
				return Settings.ResourceManager.GetString("WifiKnownSettings", Settings.resourceCulture);
			}
		}

		internal Settings()
		{
		}
	}
}
