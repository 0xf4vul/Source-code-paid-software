using System;
using System.ComponentModel;
using System.Windows;

namespace VyprVPN.Properties
{
	public interface ISettings
	{
		bool CallUpgrade
		{
			get;
			set;
		}

		string ConnectSoundFilePath
		{
			get;
			set;
		}

		string DisconnectSoundFilePath
		{
			get;
			set;
		}

		string Favorites
		{
			get;
			set;
		}

		Rect GraphWindowStartupLocation
		{
			get;
			set;
		}

		Point MainWindowStartupLocation
		{
			get;
			set;
		}

		bool PerformUpgrade
		{
			get;
			set;
		}

		Point PreferencesWindowStartupLocation
		{
			get;
			set;
		}

		string SelectedUILocale
		{
			get;
			set;
		}

		string ServerSelectionWindowColumnSort
		{
			get;
			set;
		}

		ListSortDirection ServerSelectionWindowColumnSortOrder
		{
			get;
			set;
		}

		bool ServerSelectionWindowRegionAfrica
		{
			get;
			set;
		}

		bool ServerSelectionWindowRegionAsia
		{
			get;
			set;
		}

		bool ServerSelectionWindowRegionAutomatic
		{
			get;
			set;
		}

		bool ServerSelectionWindowRegionVyprVpnServer
		{
			get;
			set;
		}

		bool ServerSelectionWindowRegionEurope
		{
			get;
			set;
		}

		bool ServerSelectionWindowRegionNorthAmerica
		{
			get;
			set;
		}

		bool ServerSelectionWindowRegionOceania
		{
			get;
			set;
		}

		bool ServerSelectionWindowRegionSouthAmerica
		{
			get;
			set;
		}

		bool CorrectServiceAutoStartIssues
		{
			get;
			set;
		}

		Rect ServerSelectionWindowStartupLocation
		{
			get;
			set;
		}

		int ServerSelectionWindowTab
		{
			get;
			set;
		}

		bool ShowTimeConnected
		{
			get;
			set;
		}

		string Theme
		{
			get;
			set;
		}

		string UserID
		{
			get;
			set;
		}

		void Upgrade();

		void Save();

		void Reset();
	}
}

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace VyprVPN.Properties
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
					Resources.resourceMan = new ResourceManager("VyprVPN.Properties.Resources", typeof(Resources).Assembly);
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

		public static string About
		{
			get
			{
				return Resources.ResourceManager.GetString("About", Resources.resourceCulture);
			}
		}

		public static string Account
		{
			get
			{
				return Resources.ResourceManager.GetString("Account", Resources.resourceCulture);
			}
		}

		public static string AccountCannotBeCreated
		{
			get
			{
				return Resources.ResourceManager.GetString("AccountCannotBeCreated", Resources.resourceCulture);
			}
		}

		public static string AccountConfirmationEmailSentErrorAlreadyConfirmed
		{
			get
			{
				return Resources.ResourceManager.GetString("AccountConfirmationEmailSentErrorAlreadyConfirmed", Resources.resourceCulture);
			}
		}

		public static string AccountConfirmationEmailSentErrorNoAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("AccountConfirmationEmailSentErrorNoAccount", Resources.resourceCulture);
			}
		}

		public static string AccountConfirmationEmailSentSuccess
		{
			get
			{
				return Resources.ResourceManager.GetString("AccountConfirmationEmailSentSuccess", Resources.resourceCulture);
			}
		}

		public static string AccountExpired
		{
			get
			{
				return Resources.ResourceManager.GetString("AccountExpired", Resources.resourceCulture);
			}
		}

		public static string AccountExpiredBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("AccountExpiredBlurb", Resources.resourceCulture);
			}
		}

		public static string AccountLocked
		{
			get
			{
				return Resources.ResourceManager.GetString("AccountLocked", Resources.resourceCulture);
			}
		}

		public static string AccountType
		{
			get
			{
				return Resources.ResourceManager.GetString("AccountType", Resources.resourceCulture);
			}
		}

		public static string AccountUnconfirmed
		{
			get
			{
				return Resources.ResourceManager.GetString("AccountUnconfirmed", Resources.resourceCulture);
			}
		}

		public static string Active
		{
			get
			{
				return Resources.ResourceManager.GetString("Active", Resources.resourceCulture);
			}
		}

		public static string AdBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("AdBlurb", Resources.resourceCulture);
			}
		}

		public static string Add
		{
			get
			{
				return Resources.ResourceManager.GetString("Add", Resources.resourceCulture);
			}
		}

		public static string AddAKnownWifiNetwork
		{
			get
			{
				return Resources.ResourceManager.GetString("AddAKnownWifiNetwork", Resources.resourceCulture);
			}
		}

		public static string AddOther
		{
			get
			{
				return Resources.ResourceManager.GetString("AddOther", Resources.resourceCulture);
			}
		}

		public static string AddParameters
		{
			get
			{
				return Resources.ResourceManager.GetString("AddParameters", Resources.resourceCulture);
			}
		}

		public static string AddParametersDialogTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("AddParametersDialogTitle", Resources.resourceCulture);
			}
		}

		public static string AdLinkBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("AdLinkBlurb", Resources.resourceCulture);
			}
		}

		public static string Advanced
		{
			get
			{
				return Resources.ResourceManager.GetString("Advanced", Resources.resourceCulture);
			}
		}

		public static string AdvancedWarning
		{
			get
			{
				return Resources.ResourceManager.GetString("AdvancedWarning", Resources.resourceCulture);
			}
		}

		public static string AdvancedWarningEmphasis
		{
			get
			{
				return Resources.ResourceManager.GetString("AdvancedWarningEmphasis", Resources.resourceCulture);
			}
		}

		public static string Africa
		{
			get
			{
				return Resources.ResourceManager.GetString("Africa", Resources.resourceCulture);
			}
		}

		public static string All
		{
			get
			{
				return Resources.ResourceManager.GetString("All", Resources.resourceCulture);
			}
		}

		public static string AllConnectionActivity
		{
			get
			{
				return Resources.ResourceManager.GetString("AllConnectionActivity", Resources.resourceCulture);
			}
		}

		public static string AlreadyHaveAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("AlreadyHaveAccount", Resources.resourceCulture);
			}
		}

		public static string AnalyticsOptOut
		{
			get
			{
				return Resources.ResourceManager.GetString("AnalyticsOptOut", Resources.resourceCulture);
			}
		}

		public static string AppKillSwitch
		{
			get
			{
				return Resources.ResourceManager.GetString("AppKillSwitch", Resources.resourceCulture);
			}
		}

		public static string AppKillSwitchDetail
		{
			get
			{
				return Resources.ResourceManager.GetString("AppKillSwitchDetail", Resources.resourceCulture);
			}
		}

		public static string ApplicationName
		{
			get
			{
				return Resources.ResourceManager.GetString("ApplicationName", Resources.resourceCulture);
			}
		}

		public static string ApplicationVersion
		{
			get
			{
				return Resources.ResourceManager.GetString("ApplicationVersion", Resources.resourceCulture);
			}
		}

		public static string Apply
		{
			get
			{
				return Resources.ResourceManager.GetString("Apply", Resources.resourceCulture);
			}
		}

		public static string Apps
		{
			get
			{
				return Resources.ResourceManager.GetString("Apps", Resources.resourceCulture);
			}
		}

		public static string AreYouSure
		{
			get
			{
				return Resources.ResourceManager.GetString("AreYouSure", Resources.resourceCulture);
			}
		}

		public static string Asia
		{
			get
			{
				return Resources.ResourceManager.GetString("Asia", Resources.resourceCulture);
			}
		}

		public static string AuthenticationError
		{
			get
			{
				return Resources.ResourceManager.GetString("AuthenticationError", Resources.resourceCulture);
			}
		}

		public static string Automatic
		{
			get
			{
				return Resources.ResourceManager.GetString("Automatic", Resources.resourceCulture);
			}
		}

		public static string AutomaticallySendCrashReports
		{
			get
			{
				return Resources.ResourceManager.GetString("AutomaticallySendCrashReports", Resources.resourceCulture);
			}
		}

		public static string AutomaticConnect
		{
			get
			{
				return Resources.ResourceManager.GetString("AutomaticConnect", Resources.resourceCulture);
			}
		}

		public static string AutomaticReconnect
		{
			get
			{
				return Resources.ResourceManager.GetString("AutomaticReconnect", Resources.resourceCulture);
			}
		}

		public static string AutoReconnect
		{
			get
			{
				return Resources.ResourceManager.GetString("AutoReconnect", Resources.resourceCulture);
			}
		}

		public static string AutoSelectServer
		{
			get
			{
				return Resources.ResourceManager.GetString("AutoSelectServer", Resources.resourceCulture);
			}
		}

		public static string Back
		{
			get
			{
				return Resources.ResourceManager.GetString("Back", Resources.resourceCulture);
			}
		}

		public static string Behavior
		{
			get
			{
				return Resources.ResourceManager.GetString("Behavior", Resources.resourceCulture);
			}
		}

		public static string BehaviorInformation
		{
			get
			{
				return Resources.ResourceManager.GetString("BehaviorInformation", Resources.resourceCulture);
			}
		}

		public static string BetaOptInLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("BetaOptInLabel", Resources.resourceCulture);
			}
		}

		public static string BetaUpdates
		{
			get
			{
				return Resources.ResourceManager.GetString("BetaUpdates", Resources.resourceCulture);
			}
		}

		public static string Bit160
		{
			get
			{
				return Resources.ResourceManager.GetString("Bit160", Resources.resourceCulture);
			}
		}

		public static string Bit256
		{
			get
			{
				return Resources.ResourceManager.GetString("Bit256", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogConnectionLogCheckboxText
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogConnectionLogCheckboxText", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogDescription", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogEmailHeadingText
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogEmailHeadingText", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogFeedbackHintText
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogFeedbackHintText", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogProgressDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogProgressDescription", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogProgressText
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogProgressText", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogSendFailureDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogSendFailureDescription", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogSendSuccessDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogSendSuccessDescription", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogSubmitButtonText
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogSubmitButtonText", Resources.resourceCulture);
			}
		}

		public static string BugReportDialogTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("BugReportDialogTitle", Resources.resourceCulture);
			}
		}

		public static string BypassVPNBehaviorExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("BypassVPNBehaviorExplanation", Resources.resourceCulture);
			}
		}

		public static string ByRegion
		{
			get
			{
				return Resources.ResourceManager.GetString("ByRegion", Resources.resourceCulture);
			}
		}

		public static string Cancel
		{
			get
			{
				return Resources.ResourceManager.GetString("Cancel", Resources.resourceCulture);
			}
		}

		public static string CancelAllCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("CancelAllCaps", Resources.resourceCulture);
			}
		}

		public static string Chameleon
		{
			get
			{
				return Resources.ResourceManager.GetString("Chameleon", Resources.resourceCulture);
			}
		}

		public static string ChameleonBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("ChameleonBlurb", Resources.resourceCulture);
			}
		}

		public static string ChameleonPreferenceLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("ChameleonPreferenceLabel", Resources.resourceCulture);
			}
		}

		public static string ChangeDefaultBehaviorWarning
		{
			get
			{
				return Resources.ResourceManager.GetString("ChangeDefaultBehaviorWarning", Resources.resourceCulture);
			}
		}

		public static string ChangeEngine
		{
			get
			{
				return Resources.ResourceManager.GetString("ChangeEngine", Resources.resourceCulture);
			}
		}

		public static string ChangeLog
		{
			get
			{
				return Resources.ResourceManager.GetString("ChangeLog", Resources.resourceCulture);
			}
		}

		public static string ChooseNameOfKnownWifiNetwork
		{
			get
			{
				return Resources.ResourceManager.GetString("ChooseNameOfKnownWifiNetwork", Resources.resourceCulture);
			}
		}

		public static string ChoosePassword
		{
			get
			{
				return Resources.ResourceManager.GetString("ChoosePassword", Resources.resourceCulture);
			}
		}

		public static string ChooseProtocolTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("ChooseProtocolTitle", Resources.resourceCulture);
			}
		}

		public static string ChooseSoundFile
		{
			get
			{
				return Resources.ResourceManager.GetString("ChooseSoundFile", Resources.resourceCulture);
			}
		}

		public static string ChooseThisLocation
		{
			get
			{
				return Resources.ResourceManager.GetString("ChooseThisLocation", Resources.resourceCulture);
			}
		}

		public static string ClearLog
		{
			get
			{
				return Resources.ResourceManager.GetString("ClearLog", Resources.resourceCulture);
			}
		}

		public static string Close
		{
			get
			{
				return Resources.ResourceManager.GetString("Close", Resources.resourceCulture);
			}
		}

		public static string Configure
		{
			get
			{
				return Resources.ResourceManager.GetString("Configure", Resources.resourceCulture);
			}
		}

		public static string ConfigureKillSwitchDialogTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("ConfigureKillSwitchDialogTitle", Resources.resourceCulture);
			}
		}

		public static string ConfirmAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("ConfirmAccount", Resources.resourceCulture);
			}
		}

		public static string ConfirmAccountAllCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("ConfirmAccountAllCaps", Resources.resourceCulture);
			}
		}

		public static string ConfirmationAuthenticationError
		{
			get
			{
				return Resources.ResourceManager.GetString("ConfirmationAuthenticationError", Resources.resourceCulture);
			}
		}

		public static string ConfirmationCodeHintTest
		{
			get
			{
				return Resources.ResourceManager.GetString("ConfirmationCodeHintTest", Resources.resourceCulture);
			}
		}

		public static string Confirming
		{
			get
			{
				return Resources.ResourceManager.GetString("Confirming", Resources.resourceCulture);
			}
		}

		public static string Connect
		{
			get
			{
				return Resources.ResourceManager.GetString("Connect", Resources.resourceCulture);
			}
		}

		public static string Connected
		{
			get
			{
				return Resources.ResourceManager.GetString("Connected", Resources.resourceCulture);
			}
		}

		public static string ConnectedAppStart
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectedAppStart", Resources.resourceCulture);
			}
		}

		public static string ConnectedAutoReconnect
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectedAutoReconnect", Resources.resourceCulture);
			}
		}

		public static string ConnectedCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectedCaps", Resources.resourceCulture);
			}
		}

		public static string ConnectedLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectedLabel", Resources.resourceCulture);
			}
		}

		public static string ConnectedTo
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectedTo", Resources.resourceCulture);
			}
		}

		public static string ConnectedUnknownWifi
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectedUnknownWifi", Resources.resourceCulture);
			}
		}

		public static string ConnectError
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectError", Resources.resourceCulture);
			}
		}

		public static string ConnectFileMissing
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectFileMissing", Resources.resourceCulture);
			}
		}

		public static string Connecting
		{
			get
			{
				return Resources.ResourceManager.GetString("Connecting", Resources.resourceCulture);
			}
		}

		public static string ConnectingCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectingCaps", Resources.resourceCulture);
			}
		}

		public static string Connection
		{
			get
			{
				return Resources.ResourceManager.GetString("Connection", Resources.resourceCulture);
			}
		}

		public static string ConnectionDropped
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectionDropped", Resources.resourceCulture);
			}
		}

		public static string ConnectionLog
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectionLog", Resources.resourceCulture);
			}
		}

		public static string ConnectionPerApp
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectionPerApp", Resources.resourceCulture);
			}
		}

		public static string ConnectOnLaunch
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectOnLaunch", Resources.resourceCulture);
			}
		}

		public static string ConnectOnStart
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectOnStart", Resources.resourceCulture);
			}
		}

		public static string ConnectOnStartup
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectOnStartup", Resources.resourceCulture);
			}
		}

		public static string ConnectOnUntrustedWifi
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectOnUntrustedWifi", Resources.resourceCulture);
			}
		}

		public static string ConnectSound
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectSound", Resources.resourceCulture);
			}
		}

		public static string ConnectTo
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectTo", Resources.resourceCulture);
			}
		}

		public static string ConnectUnsecuredWireless
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectUnsecuredWireless", Resources.resourceCulture);
			}
		}

		public static string ConnectWhenUsingUnkownWIFINetworks
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectWhenUsingUnkownWIFINetworks", Resources.resourceCulture);
			}
		}

		public static string ConnectWhenUsingUnkownWIFINetworksDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("ConnectWhenUsingUnkownWIFINetworksDescription", Resources.resourceCulture);
			}
		}

		public static string ContactSupport
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupport", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogConnectionLogCheckboxText
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogConnectionLogCheckboxText", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogDescription", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogEmailHeadingText
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogEmailHeadingText", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogFeedbackHintText
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogFeedbackHintText", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogProgressDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogProgressDescription", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogProgressText
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogProgressText", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogSendFailureDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogSendFailureDescription", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogSendSuccessDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogSendSuccessDescription", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogSubmitButtonText
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogSubmitButtonText", Resources.resourceCulture);
			}
		}

		public static string ContactSupportDialogTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportDialogTitle", Resources.resourceCulture);
			}
		}

		public static string ContactSupportNowQuestion
		{
			get
			{
				return Resources.ResourceManager.GetString("ContactSupportNowQuestion", Resources.resourceCulture);
			}
		}

		public static string Continue
		{
			get
			{
				return Resources.ResourceManager.GetString("Continue", Resources.resourceCulture);
			}
		}

		public static string CopyrightString
		{
			get
			{
				return Resources.ResourceManager.GetString("CopyrightString", Resources.resourceCulture);
			}
		}

		public static string CreateAccountAllCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("CreateAccountAllCaps", Resources.resourceCulture);
			}
		}

		public static string CreateAccountWarning
		{
			get
			{
				return Resources.ResourceManager.GetString("CreateAccountWarning", Resources.resourceCulture);
			}
		}

		public static string CreateFreeAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("CreateFreeAccount", Resources.resourceCulture);
			}
		}

		public static string CurrentValues
		{
			get
			{
				return Resources.ResourceManager.GetString("CurrentValues", Resources.resourceCulture);
			}
		}

		public static string DataUsageNoColon
		{
			get
			{
				return Resources.ResourceManager.GetString("DataUsageNoColon", Resources.resourceCulture);
			}
		}

		public static string DataUsageRemaining
		{
			get
			{
				return Resources.ResourceManager.GetString("DataUsageRemaining", Resources.resourceCulture);
			}
		}

		public static string DataUsedColon
		{
			get
			{
				return Resources.ResourceManager.GetString("DataUsedColon", Resources.resourceCulture);
			}
		}

		public static string Default
		{
			get
			{
				return Resources.ResourceManager.GetString("Default", Resources.resourceCulture);
			}
		}

		public static string DefaultBehaviorExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("DefaultBehaviorExplanation", Resources.resourceCulture);
			}
		}

		public static string DefaultBehaviorWarningTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("DefaultBehaviorWarningTitle", Resources.resourceCulture);
			}
		}

		public static string Delete
		{
			get
			{
				return Resources.ResourceManager.GetString("Delete", Resources.resourceCulture);
			}
		}

		public static string DesktopNotifications
		{
			get
			{
				return Resources.ResourceManager.GetString("DesktopNotifications", Resources.resourceCulture);
			}
		}

		public static string Detecting
		{
			get
			{
				return Resources.ResourceManager.GetString("Detecting", Resources.resourceCulture);
			}
		}

		public static string Disabled
		{
			get
			{
				return Resources.ResourceManager.GetString("Disabled", Resources.resourceCulture);
			}
		}

		public static string Disconnect
		{
			get
			{
				return Resources.ResourceManager.GetString("Disconnect", Resources.resourceCulture);
			}
		}

		public static string DisconnectAndQuitMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("DisconnectAndQuitMessage", Resources.resourceCulture);
			}
		}

		public static string DisconnectAndQuitTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("DisconnectAndQuitTitle", Resources.resourceCulture);
			}
		}

		public static string Disconnected
		{
			get
			{
				return Resources.ResourceManager.GetString("Disconnected", Resources.resourceCulture);
			}
		}

		public static string DisconnectedCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("DisconnectedCaps", Resources.resourceCulture);
			}
		}

		public static string DisconnectFileMissing
		{
			get
			{
				return Resources.ResourceManager.GetString("DisconnectFileMissing", Resources.resourceCulture);
			}
		}

		public static string Disconnecting
		{
			get
			{
				return Resources.ResourceManager.GetString("Disconnecting", Resources.resourceCulture);
			}
		}

		public static string DisconnectingCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("DisconnectingCaps", Resources.resourceCulture);
			}
		}

		public static string DisconnectSound
		{
			get
			{
				return Resources.ResourceManager.GetString("DisconnectSound", Resources.resourceCulture);
			}
		}

		public static string DisplayProxySettings
		{
			get
			{
				return Resources.ResourceManager.GetString("DisplayProxySettings", Resources.resourceCulture);
			}
		}

		public static string DnsLeak
		{
			get
			{
				return Resources.ResourceManager.GetString("DnsLeak", Resources.resourceCulture);
			}
		}

		public static string DnsLeakPrevention
		{
			get
			{
				return Resources.ResourceManager.GetString("DnsLeakPrevention", Resources.resourceCulture);
			}
		}

		public static string DnsLeakPreventionBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("DnsLeakPreventionBlurb", Resources.resourceCulture);
			}
		}

		public static string DontRemindMe
		{
			get
			{
				return Resources.ResourceManager.GetString("DontRemindMe", Resources.resourceCulture);
			}
		}

		public static string Download
		{
			get
			{
				return Resources.ResourceManager.GetString("Download", Resources.resourceCulture);
			}
		}

		public static string DownloadDesktop
		{
			get
			{
				return Resources.ResourceManager.GetString("DownloadDesktop", Resources.resourceCulture);
			}
		}

		public static string DownloadMobile
		{
			get
			{
				return Resources.ResourceManager.GetString("DownloadMobile", Resources.resourceCulture);
			}
		}

		public static string DoYouWantToQuit
		{
			get
			{
				return Resources.ResourceManager.GetString("DoYouWantToQuit", Resources.resourceCulture);
			}
		}

		public static string DumpTruckAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("DumpTruckAccount", Resources.resourceCulture);
			}
		}

		public static string DumpTruckUsage
		{
			get
			{
				return Resources.ResourceManager.GetString("DumpTruckUsage", Resources.resourceCulture);
			}
		}

		public static string Email
		{
			get
			{
				return Resources.ResourceManager.GetString("Email", Resources.resourceCulture);
			}
		}

		public static string EmailToSupport
		{
			get
			{
				return Resources.ResourceManager.GetString("EmailToSupport", Resources.resourceCulture);
			}
		}

		public static string EnableConnectionLog
		{
			get
			{
				return Resources.ResourceManager.GetString("EnableConnectionLog", Resources.resourceCulture);
			}
		}

		public static string Enabled
		{
			get
			{
				return Resources.ResourceManager.GetString("Enabled", Resources.resourceCulture);
			}
		}

		public static string EnableKillSwitch
		{
			get
			{
				return Resources.ResourceManager.GetString("EnableKillSwitch", Resources.resourceCulture);
			}
		}

		public static string Encryption128Bit
		{
			get
			{
				return Resources.ResourceManager.GetString("Encryption128Bit", Resources.resourceCulture);
			}
		}

		public static string Encryption160256Bit
		{
			get
			{
				return Resources.ResourceManager.GetString("Encryption160256Bit", Resources.resourceCulture);
			}
		}

		public static string Encryption256Bit
		{
			get
			{
				return Resources.ResourceManager.GetString("Encryption256Bit", Resources.resourceCulture);
			}
		}

		public static string EncryptionLevel
		{
			get
			{
				return Resources.ResourceManager.GetString("EncryptionLevel", Resources.resourceCulture);
			}
		}

		public static string EncryptionLevelBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("EncryptionLevelBlurb", Resources.resourceCulture);
			}
		}

		public static string EnterNameOfKnownWifiNetwork
		{
			get
			{
				return Resources.ResourceManager.GetString("EnterNameOfKnownWifiNetwork", Resources.resourceCulture);
			}
		}

		public static string Europe
		{
			get
			{
				return Resources.ResourceManager.GetString("Europe", Resources.resourceCulture);
			}
		}

		public static string FailedToConnect
		{
			get
			{
				return Resources.ResourceManager.GetString("FailedToConnect", Resources.resourceCulture);
			}
		}

		public static string FAQ
		{
			get
			{
				return Resources.ResourceManager.GetString("FAQ", Resources.resourceCulture);
			}
		}

		public static string FastestServer
		{
			get
			{
				return Resources.ResourceManager.GetString("FastestServer", Resources.resourceCulture);
			}
		}

		public static string Favorite
		{
			get
			{
				return Resources.ResourceManager.GetString("Favorite", Resources.resourceCulture);
			}
		}

		public static string Favorites
		{
			get
			{
				return Resources.ResourceManager.GetString("Favorites", Resources.resourceCulture);
			}
		}

		public static string FeatureRequest
		{
			get
			{
				return Resources.ResourceManager.GetString("FeatureRequest", Resources.resourceCulture);
			}
		}

		public static string Feedback
		{
			get
			{
				return Resources.ResourceManager.GetString("Feedback", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogDescription", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogEmailHeadingText
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogEmailHeadingText", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogEmailHintText
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogEmailHintText", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogFeedbackHintText
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogFeedbackHintText", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogProgressDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogProgressDescription", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogProgressText
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogProgressText", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogSendFailureDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogSendFailureDescription", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogSendSuccessDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogSendSuccessDescription", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogSubmitButtonText
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogSubmitButtonText", Resources.resourceCulture);
			}
		}

		public static string FeedbackDialogTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("FeedbackDialogTitle", Resources.resourceCulture);
			}
		}

		public static string FindFastestLocationTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("FindFastestLocationTitle", Resources.resourceCulture);
			}
		}

		public static string ForgotPassword
		{
			get
			{
				return Resources.ResourceManager.GetString("ForgotPassword", Resources.resourceCulture);
			}
		}

		public static string ForgotPasswordBody
		{
			get
			{
				return Resources.ResourceManager.GetString("ForgotPasswordBody", Resources.resourceCulture);
			}
		}

		public static string ForgotPasswordTextBoxGhost
		{
			get
			{
				return Resources.ResourceManager.GetString("ForgotPasswordTextBoxGhost", Resources.resourceCulture);
			}
		}

		public static string ForgotPasswordTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("ForgotPasswordTitle", Resources.resourceCulture);
			}
		}

		public static string Forum
		{
			get
			{
				return Resources.ResourceManager.GetString("Forum", Resources.resourceCulture);
			}
		}

		public static string FreeAccountOutOfData
		{
			get
			{
				return Resources.ResourceManager.GetString("FreeAccountOutOfData", Resources.resourceCulture);
			}
		}

		public static string FreeTrialLink
		{
			get
			{
				return Resources.ResourceManager.GetString("FreeTrialLink", Resources.resourceCulture);
			}
		}

		public static string General
		{
			get
			{
				return Resources.ResourceManager.GetString("General", Resources.resourceCulture);
			}
		}

		public static string GeneralVpnErrorApiCheckFailure
		{
			get
			{
				return Resources.ResourceManager.GetString("GeneralVpnErrorApiCheckFailure", Resources.resourceCulture);
			}
		}

		public static string GeneralVpnErrorFastestServer
		{
			get
			{
				return Resources.ResourceManager.GetString("GeneralVpnErrorFastestServer", Resources.resourceCulture);
			}
		}

		public static string GetStarted
		{
			get
			{
				return Resources.ResourceManager.GetString("GetStarted", Resources.resourceCulture);
			}
		}

		public static string GigaByte
		{
			get
			{
				return Resources.ResourceManager.GetString("GigaByte", Resources.resourceCulture);
			}
		}

		public static string GoldenFrogBetaProgram
		{
			get
			{
				return Resources.ResourceManager.GetString("GoldenFrogBetaProgram", Resources.resourceCulture);
			}
		}

		public static string Help
		{
			get
			{
				return Resources.ResourceManager.GetString("Help", Resources.resourceCulture);
			}
		}

		public static string HelpImprove
		{
			get
			{
				return Resources.ResourceManager.GetString("HelpImprove", Resources.resourceCulture);
			}
		}

		public static string HelpMeChoose
		{
			get
			{
				return Resources.ResourceManager.GetString("HelpMeChoose", Resources.resourceCulture);
			}
		}

		public static string Hide
		{
			get
			{
				return Resources.ResourceManager.GetString("Hide", Resources.resourceCulture);
			}
		}

		public static string ImproveVyprVPN
		{
			get
			{
				return Resources.ResourceManager.GetString("ImproveVyprVPN", Resources.resourceCulture);
			}
		}

		public static string Inactive
		{
			get
			{
				return Resources.ResourceManager.GetString("Inactive", Resources.resourceCulture);
			}
		}

		public static string InAppExpiryBlurbPart1
		{
			get
			{
				return Resources.ResourceManager.GetString("InAppExpiryBlurbPart1", Resources.resourceCulture);
			}
		}

		public static string InAppExpiryBlurbPart2
		{
			get
			{
				return Resources.ResourceManager.GetString("InAppExpiryBlurbPart2", Resources.resourceCulture);
			}
		}

		public static string Install
		{
			get
			{
				return Resources.ResourceManager.GetString("Install", Resources.resourceCulture);
			}
		}

		public static string InvalidCredentials
		{
			get
			{
				return Resources.ResourceManager.GetString("InvalidCredentials", Resources.resourceCulture);
			}
		}

		public static string InvalidPassword
		{
			get
			{
				return Resources.ResourceManager.GetString("InvalidPassword", Resources.resourceCulture);
			}
		}

		public static string InvalidUsername
		{
			get
			{
				return Resources.ResourceManager.GetString("InvalidUsername", Resources.resourceCulture);
			}
		}

		public static string InvalidUsernamePassword
		{
			get
			{
				return Resources.ResourceManager.GetString("InvalidUsernamePassword", Resources.resourceCulture);
			}
		}

		public static string KillSwitch
		{
			get
			{
				return Resources.ResourceManager.GetString("KillSwitch", Resources.resourceCulture);
			}
		}

		public static string KillSwitchActive
		{
			get
			{
				return Resources.ResourceManager.GetString("KillSwitchActive", Resources.resourceCulture);
			}
		}

		public static string KillSwitchActiveNotice
		{
			get
			{
				return Resources.ResourceManager.GetString("KillSwitchActiveNotice", Resources.resourceCulture);
			}
		}

		public static string KillSwitchDisconnectAndQuitMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("KillSwitchDisconnectAndQuitMessage", Resources.resourceCulture);
			}
		}

		public static string KillSwitchLanDisconnectAndQuitMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("KillSwitchLanDisconnectAndQuitMessage", Resources.resourceCulture);
			}
		}

		public static string L2TP
		{
			get
			{
				return Resources.ResourceManager.GetString("L2TP", Resources.resourceCulture);
			}
		}

		public static string L2TPBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("L2TPBlurb", Resources.resourceCulture);
			}
		}

		public static string L2TPPreferenceLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("L2TPPreferenceLabel", Resources.resourceCulture);
			}
		}

		public static string Label
		{
			get
			{
				return Resources.ResourceManager.GetString("Label", Resources.resourceCulture);
			}
		}

		public static string Language
		{
			get
			{
				return Resources.ResourceManager.GetString("Language", Resources.resourceCulture);
			}
		}

		public static string LaunchOnLogin
		{
			get
			{
				return Resources.ResourceManager.GetString("LaunchOnLogin", Resources.resourceCulture);
			}
		}

		public static string LaunchWebApp
		{
			get
			{
				return Resources.ResourceManager.GetString("LaunchWebApp", Resources.resourceCulture);
			}
		}

		public static string LimitedAccountExpired
		{
			get
			{
				return Resources.ResourceManager.GetString("LimitedAccountExpired", Resources.resourceCulture);
			}
		}

		public static string Location
		{
			get
			{
				return Resources.ResourceManager.GetString("Location", Resources.resourceCulture);
			}
		}

		public static string LocationHeader
		{
			get
			{
				return Resources.ResourceManager.GetString("LocationHeader", Resources.resourceCulture);
			}
		}

		public static string LocationLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("LocationLabel", Resources.resourceCulture);
			}
		}

		public static string LoggingIn
		{
			get
			{
				return Resources.ResourceManager.GetString("LoggingIn", Resources.resourceCulture);
			}
		}

		public static string LogIn
		{
			get
			{
				return Resources.ResourceManager.GetString("LogIn", Resources.resourceCulture);
			}
		}

		public static string LoginAgain
		{
			get
			{
				return Resources.ResourceManager.GetString("LoginAgain", Resources.resourceCulture);
			}
		}

		public static string LogInAllCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("LogInAllCaps", Resources.resourceCulture);
			}
		}

		public static string LoginLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("LoginLabel", Resources.resourceCulture);
			}
		}

		public static string LogInNoCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("LogInNoCaps", Resources.resourceCulture);
			}
		}

		public static string LoginServerUnreachable
		{
			get
			{
				return Resources.ResourceManager.GetString("LoginServerUnreachable", Resources.resourceCulture);
			}
		}

		public static string LoginToVyprVpn
		{
			get
			{
				return Resources.ResourceManager.GetString("LoginToVyprVpn", Resources.resourceCulture);
			}
		}

		public static string LoginTray
		{
			get
			{
				return Resources.ResourceManager.GetString("LoginTray", Resources.resourceCulture);
			}
		}

		public static string LogLevel
		{
			get
			{
				return Resources.ResourceManager.GetString("LogLevel", Resources.resourceCulture);
			}
		}

		public static string LogOut
		{
			get
			{
				return Resources.ResourceManager.GetString("LogOut", Resources.resourceCulture);
			}
		}

		public static string LogOutButton
		{
			get
			{
				return Resources.ResourceManager.GetString("LogOutButton", Resources.resourceCulture);
			}
		}

		public static string Manage
		{
			get
			{
				return Resources.ResourceManager.GetString("Manage", Resources.resourceCulture);
			}
		}

		public static string ManageAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("ManageAccount", Resources.resourceCulture);
			}
		}

		public static string ManageApps
		{
			get
			{
				return Resources.ResourceManager.GetString("ManageApps", Resources.resourceCulture);
			}
		}

		public static string ManageConnectionsPerApp
		{
			get
			{
				return Resources.ResourceManager.GetString("ManageConnectionsPerApp", Resources.resourceCulture);
			}
		}

		public static string Manual
		{
			get
			{
				return Resources.ResourceManager.GetString("Manual", Resources.resourceCulture);
			}
		}

		public static string ManualPortNumberInvalid
		{
			get
			{
				return Resources.ResourceManager.GetString("ManualPortNumberInvalid", Resources.resourceCulture);
			}
		}

		public static string MegaByte
		{
			get
			{
				return Resources.ResourceManager.GetString("MegaByte", Resources.resourceCulture);
			}
		}

		public static string Milliseconds
		{
			get
			{
				return Resources.ResourceManager.GetString("Milliseconds", Resources.resourceCulture);
			}
		}

		public static string More
		{
			get
			{
				return Resources.ResourceManager.GetString("More", Resources.resourceCulture);
			}
		}

		public static string MoreInfo
		{
			get
			{
				return Resources.ResourceManager.GetString("MoreInfo", Resources.resourceCulture);
			}
		}

		public static string MoreProducts
		{
			get
			{
				return Resources.ResourceManager.GetString("MoreProducts", Resources.resourceCulture);
			}
		}

		public static string MTU
		{
			get
			{
				return Resources.ResourceManager.GetString("MTU", Resources.resourceCulture);
			}
		}

		public static string MTUExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("MTUExplanation", Resources.resourceCulture);
			}
		}

		public static string MTUOptimizationError
		{
			get
			{
				return Resources.ResourceManager.GetString("MTUOptimizationError", Resources.resourceCulture);
			}
		}

		public static string MTUOptimizationErrorMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("MTUOptimizationErrorMessage", Resources.resourceCulture);
			}
		}

		public static string MTUOptimized
		{
			get
			{
				return Resources.ResourceManager.GetString("MTUOptimized", Resources.resourceCulture);
			}
		}

		public static string MTUOptimizedMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("MTUOptimizedMessage", Resources.resourceCulture);
			}
		}

		public static string MtuSupportLinkText
		{
			get
			{
				return Resources.ResourceManager.GetString("MtuSupportLinkText", Resources.resourceCulture);
			}
		}

		public static string NATFirewall
		{
			get
			{
				return Resources.ResourceManager.GetString("NATFirewall", Resources.resourceCulture);
			}
		}

		public static string NATFirewallLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("NATFirewallLabel", Resources.resourceCulture);
			}
		}

		public static string NeedAnAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("NeedAnAccount", Resources.resourceCulture);
			}
		}

		public static string NeedHelp
		{
			get
			{
				return Resources.ResourceManager.GetString("NeedHelp", Resources.resourceCulture);
			}
		}

		public static string NetworkName
		{
			get
			{
				return Resources.ResourceManager.GetString("NetworkName", Resources.resourceCulture);
			}
		}

		public static string Never
		{
			get
			{
				return Resources.ResourceManager.GetString("Never", Resources.resourceCulture);
			}
		}

		public static string NeverAskAgain
		{
			get
			{
				return Resources.ResourceManager.GetString("NeverAskAgain", Resources.resourceCulture);
			}
		}

		public static string NewMTU
		{
			get
			{
				return Resources.ResourceManager.GetString("NewMTU", Resources.resourceCulture);
			}
		}

		public static string No
		{
			get
			{
				return Resources.ResourceManager.GetString("No", Resources.resourceCulture);
			}
		}

		public static string NoFavoritedServers
		{
			get
			{
				return Resources.ResourceManager.GetString("NoFavoritedServers", Resources.resourceCulture);
			}
		}

		public static string NoInternetAndLanTraffic
		{
			get
			{
				return Resources.ResourceManager.GetString("NoInternetAndLanTraffic", Resources.resourceCulture);
			}
		}

		public static string NoInternetTraffic
		{
			get
			{
				return Resources.ResourceManager.GetString("NoInternetTraffic", Resources.resourceCulture);
			}
		}

		public static string None
		{
			get
			{
				return Resources.ResourceManager.GetString("None", Resources.resourceCulture);
			}
		}

		public static string NorthAmerica
		{
			get
			{
				return Resources.ResourceManager.GetString("NorthAmerica", Resources.resourceCulture);
			}
		}

		public static string NotConnected
		{
			get
			{
				return Resources.ResourceManager.GetString("NotConnected", Resources.resourceCulture);
			}
		}

		public static string NotLoggedIn
		{
			get
			{
				return Resources.ResourceManager.GetString("NotLoggedIn", Resources.resourceCulture);
			}
		}

		public static string NotNow
		{
			get
			{
				return Resources.ResourceManager.GetString("NotNow", Resources.resourceCulture);
			}
		}

		public static string Oceania
		{
			get
			{
				return Resources.ResourceManager.GetString("Oceania", Resources.resourceCulture);
			}
		}

		public static string OK
		{
			get
			{
				return Resources.ResourceManager.GetString("OK", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard1Text
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard1Text", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard1Title
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard1Title", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard2Text
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard2Text", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard2Title
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard2Title", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard3Text
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard3Text", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard3Title
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard3Title", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard4Text
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard4Text", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard4Title
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard4Title", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard5Text
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard5Text", Resources.resourceCulture);
			}
		}

		public static string OnboardingCard5Title
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingCard5Title", Resources.resourceCulture);
			}
		}

		public static string OnboardingConfirmationEmailText
		{
			get
			{
				return Resources.ResourceManager.GetString("OnboardingConfirmationEmailText", Resources.resourceCulture);
			}
		}

		public static string OnlyConnectionFailures
		{
			get
			{
				return Resources.ResourceManager.GetString("OnlyConnectionFailures", Resources.resourceCulture);
			}
		}

		public static string OpenSettings
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenSettings", Resources.resourceCulture);
			}
		}

		public static string OpenVPN160
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPN160", Resources.resourceCulture);
			}
		}

		public static string OpenVPN256
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPN256", Resources.resourceCulture);
			}
		}

		public static string OpenVPNBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNBlurb", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorAuthentication
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorAuthentication", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorBandwidth
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorBandwidth", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorCannotReachInternet
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorCannotReachInternet", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorCertificate
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorCertificate", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorInitialization
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorInitialization", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorNetworkConnection
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorNetworkConnection", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorPortsFailed
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorPortsFailed", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorProcess
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorProcess", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorProcessExitedUnexpectedly
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorProcessExitedUnexpectedly", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorPropertyFile
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorPropertyFile", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorRouteAddition
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorRouteAddition", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorServerConnection
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorServerConnection", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorTapAdapter
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorTapAdapter", Resources.resourceCulture);
			}
		}

		public static string OpenVPNErrorUnknown
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNErrorUnknown", Resources.resourceCulture);
			}
		}

		public static string OpenVPNPreferenceLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNPreferenceLabel", Resources.resourceCulture);
			}
		}

		public static string OpenVPNTAPOptionText
		{
			get
			{
				return Resources.ResourceManager.GetString("OpenVPNTAPOptionText", Resources.resourceCulture);
			}
		}

		public static string OptimizeMTU
		{
			get
			{
				return Resources.ResourceManager.GetString("OptimizeMTU", Resources.resourceCulture);
			}
		}

		public static string OptimizeMTUProgressHeader
		{
			get
			{
				return Resources.ResourceManager.GetString("OptimizeMTUProgressHeader", Resources.resourceCulture);
			}
		}

		public static string OptimizeMTUWarning
		{
			get
			{
				return Resources.ResourceManager.GetString("OptimizeMTUWarning", Resources.resourceCulture);
			}
		}

		public static string Options
		{
			get
			{
				return Resources.ResourceManager.GetString("Options", Resources.resourceCulture);
			}
		}

		public static string OtherOpenVPNParameters
		{
			get
			{
				return Resources.ResourceManager.GetString("OtherOpenVPNParameters", Resources.resourceCulture);
			}
		}

		public static string OtherOpenVPNParametersExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("OtherOpenVPNParametersExplanation", Resources.resourceCulture);
			}
		}

		public static string Password
		{
			get
			{
				return Resources.ResourceManager.GetString("Password", Resources.resourceCulture);
			}
		}

		public static string PaymentMethodExpired
		{
			get
			{
				return Resources.ResourceManager.GetString("PaymentMethodExpired", Resources.resourceCulture);
			}
		}

		public static string PerAppBehaviorBypassVpnViewString
		{
			get
			{
				return Resources.ResourceManager.GetString("PerAppBehaviorBypassVpnViewString", Resources.resourceCulture);
			}
		}

		public static string PerAppBehaviorVpnPreferredViewString
		{
			get
			{
				return Resources.ResourceManager.GetString("PerAppBehaviorVpnPreferredViewString", Resources.resourceCulture);
			}
		}

		public static string PerAppBehaviorVpnRequiredViewString
		{
			get
			{
				return Resources.ResourceManager.GetString("PerAppBehaviorVpnRequiredViewString", Resources.resourceCulture);
			}
		}

		public static string Ping
		{
			get
			{
				return Resources.ResourceManager.GetString("Ping", Resources.resourceCulture);
			}
		}

		public static string PingTest
		{
			get
			{
				return Resources.ResourceManager.GetString("PingTest", Resources.resourceCulture);
			}
		}

		public static string PingTestComplete
		{
			get
			{
				return Resources.ResourceManager.GetString("PingTestComplete", Resources.resourceCulture);
			}
		}

		public static string Port
		{
			get
			{
				return Resources.ResourceManager.GetString("Port", Resources.resourceCulture);
			}
		}

		public static string PortSettings
		{
			get
			{
				return Resources.ResourceManager.GetString("PortSettings", Resources.resourceCulture);
			}
		}

		public static string PortSettingsBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("PortSettingsBlurb", Resources.resourceCulture);
			}
		}

		public static string PPTP
		{
			get
			{
				return Resources.ResourceManager.GetString("PPTP", Resources.resourceCulture);
			}
		}

		public static string PPTPBlurb
		{
			get
			{
				return Resources.ResourceManager.GetString("PPTPBlurb", Resources.resourceCulture);
			}
		}

		public static string PPTPPreferenceLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("PPTPPreferenceLabel", Resources.resourceCulture);
			}
		}

		public static string ProductFeedback
		{
			get
			{
				return Resources.ResourceManager.GetString("ProductFeedback", Resources.resourceCulture);
			}
		}

		public static string Protocol
		{
			get
			{
				return Resources.ResourceManager.GetString("Protocol", Resources.resourceCulture);
			}
		}

		public static string ProtocolChameleonViewString
		{
			get
			{
				return Resources.ResourceManager.GetString("ProtocolChameleonViewString", Resources.resourceCulture);
			}
		}

		public static string ProtocolL2TPViewString
		{
			get
			{
				return Resources.ResourceManager.GetString("ProtocolL2TPViewString", Resources.resourceCulture);
			}
		}

		public static string ProtocolLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("ProtocolLabel", Resources.resourceCulture);
			}
		}

		public static string ProtocolOpenVPN160ViewString
		{
			get
			{
				return Resources.ResourceManager.GetString("ProtocolOpenVPN160ViewString", Resources.resourceCulture);
			}
		}

		public static string ProtocolOpenVPN256ViewString
		{
			get
			{
				return Resources.ResourceManager.GetString("ProtocolOpenVPN256ViewString", Resources.resourceCulture);
			}
		}

		public static string ProtocolPPTPViewString
		{
			get
			{
				return Resources.ResourceManager.GetString("ProtocolPPTPViewString", Resources.resourceCulture);
			}
		}

		public static string ProtocolUnsetViewString
		{
			get
			{
				return Resources.ResourceManager.GetString("ProtocolUnsetViewString", Resources.resourceCulture);
			}
		}

		public static string PublicIPAddress
		{
			get
			{
				return Resources.ResourceManager.GetString("PublicIPAddress", Resources.resourceCulture);
			}
		}

		public static string PublicIPLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("PublicIPLabel", Resources.resourceCulture);
			}
		}

		public static string QuitVyprVPN
		{
			get
			{
				return Resources.ResourceManager.GetString("QuitVyprVPN", Resources.resourceCulture);
			}
		}

		public static string Range
		{
			get
			{
				return Resources.ResourceManager.GetString("Range", Resources.resourceCulture);
			}
		}

		public static string RebootAndRetryConnection
		{
			get
			{
				return Resources.ResourceManager.GetString("RebootAndRetryConnection", Resources.resourceCulture);
			}
		}

		public static string Reconnect
		{
			get
			{
				return Resources.ResourceManager.GetString("Reconnect", Resources.resourceCulture);
			}
		}

		public static string ReconnectDropDownTimes
		{
			get
			{
				return Resources.ResourceManager.GetString("ReconnectDropDownTimes", Resources.resourceCulture);
			}
		}

		public static string ReconnectionAttempts
		{
			get
			{
				return Resources.ResourceManager.GetString("ReconnectionAttempts", Resources.resourceCulture);
			}
		}

		public static string ReconnectionRequired
		{
			get
			{
				return Resources.ResourceManager.GetString("ReconnectionRequired", Resources.resourceCulture);
			}
		}

		public static string ReferAFriend
		{
			get
			{
				return Resources.ResourceManager.GetString("ReferAFriend", Resources.resourceCulture);
			}
		}

		public static string RememberPassword
		{
			get
			{
				return Resources.ResourceManager.GetString("RememberPassword", Resources.resourceCulture);
			}
		}

		public static string Remove
		{
			get
			{
				return Resources.ResourceManager.GetString("Remove", Resources.resourceCulture);
			}
		}

		public static string ReportBug
		{
			get
			{
				return Resources.ResourceManager.GetString("ReportBug", Resources.resourceCulture);
			}
		}

		public static string RequestedAccountAlreadyExists
		{
			get
			{
				return Resources.ResourceManager.GetString("RequestedAccountAlreadyExists", Resources.resourceCulture);
			}
		}

		public static string Resend
		{
			get
			{
				return Resources.ResourceManager.GetString("Resend", Resources.resourceCulture);
			}
		}

		public static string ResendEmail
		{
			get
			{
				return Resources.ResourceManager.GetString("ResendEmail", Resources.resourceCulture);
			}
		}

		public static string ResetAllAppBehavior
		{
			get
			{
				return Resources.ResourceManager.GetString("ResetAllAppBehavior", Resources.resourceCulture);
			}
		}

		public static string ResetEmailSentOverlayBody
		{
			get
			{
				return Resources.ResourceManager.GetString("ResetEmailSentOverlayBody", Resources.resourceCulture);
			}
		}

		public static string ResetEmailSentOverlayTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("ResetEmailSentOverlayTitle", Resources.resourceCulture);
			}
		}

		public static string ResetPasswordAllCaps
		{
			get
			{
				return Resources.ResourceManager.GetString("ResetPasswordAllCaps", Resources.resourceCulture);
			}
		}

		public static string Restart
		{
			get
			{
				return Resources.ResourceManager.GetString("Restart", Resources.resourceCulture);
			}
		}

		public static string RestartRequired
		{
			get
			{
				return Resources.ResourceManager.GetString("RestartRequired", Resources.resourceCulture);
			}
		}

		public static string RestoreSettings
		{
			get
			{
				return Resources.ResourceManager.GetString("RestoreSettings", Resources.resourceCulture);
			}
		}

		public static string RestoreSettingsDialogPrompt
		{
			get
			{
				return Resources.ResourceManager.GetString("RestoreSettingsDialogPrompt", Resources.resourceCulture);
			}
		}

		public static string RestoreSettingsExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("RestoreSettingsExplanation", Resources.resourceCulture);
			}
		}

		public static string RestoreSettingsHeader
		{
			get
			{
				return Resources.ResourceManager.GetString("RestoreSettingsHeader", Resources.resourceCulture);
			}
		}

		public static string Retry
		{
			get
			{
				return Resources.ResourceManager.GetString("Retry", Resources.resourceCulture);
			}
		}

		public static string RouteDelay
		{
			get
			{
				return Resources.ResourceManager.GetString("RouteDelay", Resources.resourceCulture);
			}
		}

		public static string RouteDelayExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("RouteDelayExplanation", Resources.resourceCulture);
			}
		}

		public static string Save
		{
			get
			{
				return Resources.ResourceManager.GetString("Save", Resources.resourceCulture);
			}
		}

		public static string Search
		{
			get
			{
				return Resources.ResourceManager.GetString("Search", Resources.resourceCulture);
			}
		}

		public static string Second
		{
			get
			{
				return Resources.ResourceManager.GetString("Second", Resources.resourceCulture);
			}
		}

		public static string Seconds
		{
			get
			{
				return Resources.ResourceManager.GetString("Seconds", Resources.resourceCulture);
			}
		}

		public static string SelectProtocol
		{
			get
			{
				return Resources.ResourceManager.GetString("SelectProtocol", Resources.resourceCulture);
			}
		}

		public static string SelectServer
		{
			get
			{
				return Resources.ResourceManager.GetString("SelectServer", Resources.resourceCulture);
			}
		}

		public static string SelectYourPreferredLanguage
		{
			get
			{
				return Resources.ResourceManager.GetString("SelectYourPreferredLanguage", Resources.resourceCulture);
			}
		}

		public static string Server
		{
			get
			{
				return Resources.ResourceManager.GetString("Server", Resources.resourceCulture);
			}
		}

		public static string ServerError
		{
			get
			{
				return Resources.ResourceManager.GetString("ServerError", Resources.resourceCulture);
			}
		}

		public static string ServerLocation
		{
			get
			{
				return Resources.ResourceManager.GetString("ServerLocation", Resources.resourceCulture);
			}
		}

		public static string ServiceInstallFailed
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceInstallFailed", Resources.resourceCulture);
			}
		}

		public static string ServiceNotCommunicating
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceNotCommunicating", Resources.resourceCulture);
			}
		}

		public static string ServiceNotFoundInstallRequest
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceNotFoundInstallRequest", Resources.resourceCulture);
			}
		}

		public static string ServiceNotRunningRestartRequest
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceNotRunningRestartRequest", Resources.resourceCulture);
			}
		}

		public static string ServiceNotSetToAutoStartMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceNotSetToAutoStartMessage", Resources.resourceCulture);
			}
		}

		public static string ServiceNotSetToAutoStartQuestion
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceNotSetToAutoStartQuestion", Resources.resourceCulture);
			}
		}

		public static string ServiceRepairDialogAttemptingRepairsMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceRepairDialogAttemptingRepairsMessage", Resources.resourceCulture);
			}
		}

		public static string ServiceRepairDialogAttemptingRepairsTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceRepairDialogAttemptingRepairsTitle", Resources.resourceCulture);
			}
		}

		public static string ServiceRepairDialogCancelText
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceRepairDialogCancelText", Resources.resourceCulture);
			}
		}

		public static string ServiceRepairedThenStopped
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceRepairedThenStopped", Resources.resourceCulture);
			}
		}

		public static string ServiceRepairSuccessful
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceRepairSuccessful", Resources.resourceCulture);
			}
		}

		public static string Services
		{
			get
			{
				return Resources.ResourceManager.GetString("Services", Resources.resourceCulture);
			}
		}

		public static string ServiceStartFailedMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("ServiceStartFailedMessage", Resources.resourceCulture);
			}
		}

		public static string Settings
		{
			get
			{
				return Resources.ResourceManager.GetString("Settings", Resources.resourceCulture);
			}
		}

		public static string SettingsDnsChanges
		{
			get
			{
				return Resources.ResourceManager.GetString("SettingsDnsChanges", Resources.resourceCulture);
			}
		}

		public static string SettingsLanguageChanges
		{
			get
			{
				return Resources.ResourceManager.GetString("SettingsLanguageChanges", Resources.resourceCulture);
			}
		}

		public static string SettingsProtocolChanges
		{
			get
			{
				return Resources.ResourceManager.GetString("SettingsProtocolChanges", Resources.resourceCulture);
			}
		}

		public static string SettingsReconnectRequestedMessage1
		{
			get
			{
				return Resources.ResourceManager.GetString("SettingsReconnectRequestedMessage1", Resources.resourceCulture);
			}
		}

		public static string SettingsReconnectRequestedMessage2
		{
			get
			{
				return Resources.ResourceManager.GetString("SettingsReconnectRequestedMessage2", Resources.resourceCulture);
			}
		}

		public static string SettingsRestartRequestedMessage
		{
			get
			{
				return Resources.ResourceManager.GetString("SettingsRestartRequestedMessage", Resources.resourceCulture);
			}
		}

		public static string Show
		{
			get
			{
				return Resources.ResourceManager.GetString("Show", Resources.resourceCulture);
			}
		}

		public static string ShowNetworks
		{
			get
			{
				return Resources.ResourceManager.GetString("ShowNetworks", Resources.resourceCulture);
			}
		}

		public static string ShowServers
		{
			get
			{
				return Resources.ResourceManager.GetString("ShowServers", Resources.resourceCulture);
			}
		}

		public static string ShowTimeConnected
		{
			get
			{
				return Resources.ResourceManager.GetString("ShowTimeConnected", Resources.resourceCulture);
			}
		}

		public static string ShowVyprVPN
		{
			get
			{
				return Resources.ResourceManager.GetString("ShowVyprVPN", Resources.resourceCulture);
			}
		}

		public static string SignUpForVyprVpn
		{
			get
			{
				return Resources.ResourceManager.GetString("SignUpForVyprVpn", Resources.resourceCulture);
			}
		}

		public static string SignUpFree
		{
			get
			{
				return Resources.ResourceManager.GetString("SignUpFree", Resources.resourceCulture);
			}
		}

		public static string SortBy
		{
			get
			{
				return Resources.ResourceManager.GetString("SortBy", Resources.resourceCulture);
			}
		}

		public static string Sound
		{
			get
			{
				return Resources.ResourceManager.GetString("Sound", Resources.resourceCulture);
			}
		}

		public static string SoundFileMissing
		{
			get
			{
				return Resources.ResourceManager.GetString("SoundFileMissing", Resources.resourceCulture);
			}
		}

		public static string SouthAmerica
		{
			get
			{
				return Resources.ResourceManager.GetString("SouthAmerica", Resources.resourceCulture);
			}
		}

		public static string SpeedLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("SpeedLabel", Resources.resourceCulture);
			}
		}

		public static string StartingPingTest
		{
			get
			{
				return Resources.ResourceManager.GetString("StartingPingTest", Resources.resourceCulture);
			}
		}

		public static string Startup
		{
			get
			{
				return Resources.ResourceManager.GetString("Startup", Resources.resourceCulture);
			}
		}

		public static string StatusLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("StatusLabel", Resources.resourceCulture);
			}
		}

		public static string StopLanTraffic
		{
			get
			{
				return Resources.ResourceManager.GetString("StopLanTraffic", Resources.resourceCulture);
			}
		}

		public static string Support
		{
			get
			{
				return Resources.ResourceManager.GetString("Support", Resources.resourceCulture);
			}
		}

		public static string SystemKillSwitch
		{
			get
			{
				return Resources.ResourceManager.GetString("SystemKillSwitch", Resources.resourceCulture);
			}
		}

		public static string SystemKillSwitchDetail
		{
			get
			{
				return Resources.ResourceManager.GetString("SystemKillSwitchDetail", Resources.resourceCulture);
			}
		}

		public static string SystemKillSwitchWarning
		{
			get
			{
				return Resources.ResourceManager.GetString("SystemKillSwitchWarning", Resources.resourceCulture);
			}
		}

		public static string TakeATour
		{
			get
			{
				return Resources.ResourceManager.GetString("TakeATour", Resources.resourceCulture);
			}
		}

		public static string TakeBackInternet
		{
			get
			{
				return Resources.ResourceManager.GetString("TakeBackInternet", Resources.resourceCulture);
			}
		}

		public static string TAPAdapter
		{
			get
			{
				return Resources.ResourceManager.GetString("TAPAdapter", Resources.resourceCulture);
			}
		}

		public static string TAPAdapterExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("TAPAdapterExplanation", Resources.resourceCulture);
			}
		}

		public static string TCP
		{
			get
			{
				return Resources.ResourceManager.GetString("TCP", Resources.resourceCulture);
			}
		}

		public static string TermsOfService
		{
			get
			{
				return Resources.ResourceManager.GetString("TermsOfService", Resources.resourceCulture);
			}
		}

		public static string TimeConnected
		{
			get
			{
				return Resources.ResourceManager.GetString("TimeConnected", Resources.resourceCulture);
			}
		}

		public static string TlsTimeout
		{
			get
			{
				return Resources.ResourceManager.GetString("TlsTimeout", Resources.resourceCulture);
			}
		}

		public static string TlsTimeoutExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("TlsTimeoutExplanation", Resources.resourceCulture);
			}
		}

		public static string ToastExpanderText
		{
			get
			{
				return Resources.ResourceManager.GetString("ToastExpanderText", Resources.resourceCulture);
			}
		}

		public static string TransportProtocol
		{
			get
			{
				return Resources.ResourceManager.GetString("TransportProtocol", Resources.resourceCulture);
			}
		}

		public static string Type
		{
			get
			{
				return Resources.ResourceManager.GetString("Type", Resources.resourceCulture);
			}
		}

		public static string UDP
		{
			get
			{
				return Resources.ResourceManager.GetString("UDP", Resources.resourceCulture);
			}
		}

		public static string UpdateAvailable
		{
			get
			{
				return Resources.ResourceManager.GetString("UpdateAvailable", Resources.resourceCulture);
			}
		}

		public static string Upgrade
		{
			get
			{
				return Resources.ResourceManager.GetString("Upgrade", Resources.resourceCulture);
			}
		}

		public static string UpgradeAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("UpgradeAccount", Resources.resourceCulture);
			}
		}

		public static string UpgradeNow
		{
			get
			{
				return Resources.ResourceManager.GetString("UpgradeNow", Resources.resourceCulture);
			}
		}

		public static string UpgradeToUnlimitedAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("UpgradeToUnlimitedAccount", Resources.resourceCulture);
			}
		}

		public static string Upload
		{
			get
			{
				return Resources.ResourceManager.GetString("Upload", Resources.resourceCulture);
			}
		}

		public static string Username
		{
			get
			{
				return Resources.ResourceManager.GetString("Username", Resources.resourceCulture);
			}
		}

		public static string Verbosity
		{
			get
			{
				return Resources.ResourceManager.GetString("Verbosity", Resources.resourceCulture);
			}
		}

		public static string VerbosityExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("VerbosityExplanation", Resources.resourceCulture);
			}
		}

		public static string VerbositySupportLinkText
		{
			get
			{
				return Resources.ResourceManager.GetString("VerbositySupportLinkText", Resources.resourceCulture);
			}
		}

		public static string Version
		{
			get
			{
				return Resources.ResourceManager.GetString("Version", Resources.resourceCulture);
			}
		}

		public static string ViewConnectionLog
		{
			get
			{
				return Resources.ResourceManager.GetString("ViewConnectionLog", Resources.resourceCulture);
			}
		}

		public static string VistaNotSupported
		{
			get
			{
				return Resources.ResourceManager.GetString("VistaNotSupported", Resources.resourceCulture);
			}
		}

		public static string VPNPreferredBehaviorExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("VPNPreferredBehaviorExplanation", Resources.resourceCulture);
			}
		}

		public static string VPNProtocol
		{
			get
			{
				return Resources.ResourceManager.GetString("VPNProtocol", Resources.resourceCulture);
			}
		}

		public static string VPNRequiredBehaviorExplanation
		{
			get
			{
				return Resources.ResourceManager.GetString("VPNRequiredBehaviorExplanation", Resources.resourceCulture);
			}
		}

		public static string VyprDNSAlternateDNS
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSAlternateDNS", Resources.resourceCulture);
			}
		}

		public static string VyprDNSAlternateDNSPrimary
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSAlternateDNSPrimary", Resources.resourceCulture);
			}
		}

		public static string VyprDNSAlternateDNSSecondary
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSAlternateDNSSecondary", Resources.resourceCulture);
			}
		}

		public static string VyprDNSBlurbPart1
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSBlurbPart1", Resources.resourceCulture);
			}
		}

		public static string VyprDNSBlurbPart2
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSBlurbPart2", Resources.resourceCulture);
			}
		}

		public static string VyprDNSBlurbPart3
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSBlurbPart3", Resources.resourceCulture);
			}
		}

		public static string VyprDNSBlurbPart4
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSBlurbPart4", Resources.resourceCulture);
			}
		}

		public static string VyprDNSBlurbPart5
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSBlurbPart5", Resources.resourceCulture);
			}
		}

		public static string VyprDNSBlurbPart6
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSBlurbPart6", Resources.resourceCulture);
			}
		}

		public static string VyprDNSBlurbPart7
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSBlurbPart7", Resources.resourceCulture);
			}
		}

		public static string VyprDNSLearnMoreLink
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprDNSLearnMoreLink", Resources.resourceCulture);
			}
		}

		public static string VyprForBusiness
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprForBusiness", Resources.resourceCulture);
			}
		}

		public static string VyprVPNAccount
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVPNAccount", Resources.resourceCulture);
			}
		}

		public static string VyprVPNApps
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVPNApps", Resources.resourceCulture);
			}
		}

		public static string VyprVPNDNS
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVPNDNS", Resources.resourceCulture);
			}
		}

		public static string VyprVPNIPAddress
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVPNIPAddress", Resources.resourceCulture);
			}
		}

		public static string VyprVPNIPLabel
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVPNIPLabel", Resources.resourceCulture);
			}
		}

		public static string VyprVPNServer
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVPNServer", Resources.resourceCulture);
			}
		}

		public static string VyprVPNTAPOptionText
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVPNTAPOptionText", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdate
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdate", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateAppUpdates
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateAppUpdates", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateBeta
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateBeta", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateCheckForUpdates
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateCheckForUpdates", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateCheckingForUpdates
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateCheckingForUpdates", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateDescription
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateDescription", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateDownloadErrorHeading
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateDownloadErrorHeading", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateDownloadErrorText
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateDownloadErrorText", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateDownloadHeading
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateDownloadHeading", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateError
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateError", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateHeading
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateHeading", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateInstallUpdate
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateInstallUpdate", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateNoneFound
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateNoneFound", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateReleaseNotes
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateReleaseNotes", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateRemindMeLater
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateRemindMeLater", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateSkipThisVersion
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateSkipThisVersion", Resources.resourceCulture);
			}
		}

		public static string VyprVpnUpdateWindowTitle
		{
			get
			{
				return Resources.ResourceManager.GetString("VyprVpnUpdateWindowTitle", Resources.resourceCulture);
			}
		}

		public static string Yes
		{
			get
			{
				return Resources.ResourceManager.GetString("Yes", Resources.resourceCulture);
			}
		}

		public static string YourName
		{
			get
			{
				return Resources.ResourceManager.GetString("YourName", Resources.resourceCulture);
			}
		}

		internal Resources()
		{
		}
	}
}

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace VyprVPN.Properties
{
	[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0"), DebuggerNonUserCode, CompilerGenerated]
	public class Url
	{
		private static ResourceManager resourceMan;

		private static CultureInfo resourceCulture;

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static ResourceManager ResourceManager
		{
			get
			{
				if (Url.resourceMan == null)
				{
					Url.resourceMan = new ResourceManager("VyprVPN.Properties.Url", typeof(Url).Assembly);
				}
				return Url.resourceMan;
			}
		}

		[EditorBrowsable(EditorBrowsableState.Advanced)]
		public static CultureInfo Culture
		{
			get
			{
				return Url.resourceCulture;
			}
			set
			{
				Url.resourceCulture = value;
			}
		}

		public static string BetaProgram
		{
			get
			{
				return Url.ResourceManager.GetString("BetaProgram", Url.resourceCulture);
			}
		}

		public static string ContactSupportDefault
		{
			get
			{
				return Url.ResourceManager.GetString("ContactSupportDefault", Url.resourceCulture);
			}
		}

		public static string ControlPanel
		{
			get
			{
				return Url.ResourceManager.GetString("ControlPanel", Url.resourceCulture);
			}
		}

		public static string FAQ
		{
			get
			{
				return Url.ResourceManager.GetString("FAQ", Url.resourceCulture);
			}
		}

		public static string FeatureRequest
		{
			get
			{
				return Url.ResourceManager.GetString("FeatureRequest", Url.resourceCulture);
			}
		}

		public static string Forum
		{
			get
			{
				return Url.ResourceManager.GetString("Forum", Url.resourceCulture);
			}
		}

		public static string GoldenFrog
		{
			get
			{
				return Url.ResourceManager.GetString("GoldenFrog", Url.resourceCulture);
			}
		}

		public static string Help
		{
			get
			{
				return Url.ResourceManager.GetString("Help", Url.resourceCulture);
			}
		}

		public static string MtuSupport
		{
			get
			{
				return Url.ResourceManager.GetString("MtuSupport", Url.resourceCulture);
			}
		}

		public static string Privacy
		{
			get
			{
				return Url.ResourceManager.GetString("Privacy", Url.resourceCulture);
			}
		}

		public static string ReferAFriend
		{
			get
			{
				return Url.ResourceManager.GetString("ReferAFriend", Url.resourceCulture);
			}
		}

		public static string ReportBug
		{
			get
			{
				return Url.ResourceManager.GetString("ReportBug", Url.resourceCulture);
			}
		}

		public static string TakeBackInternet
		{
			get
			{
				return Url.ResourceManager.GetString("TakeBackInternet", Url.resourceCulture);
			}
		}

		public static string TermsOfService
		{
			get
			{
				return Url.ResourceManager.GetString("TermsOfService", Url.resourceCulture);
			}
		}

		public static string VerbositySupport
		{
			get
			{
				return Url.ResourceManager.GetString("VerbositySupport", Url.resourceCulture);
			}
		}

		public static string VyprDNS
		{
			get
			{
				return Url.ResourceManager.GetString("VyprDNS", Url.resourceCulture);
			}
		}

		public static string VyprVPNApps
		{
			get
			{
				return Url.ResourceManager.GetString("VyprVPNApps", Url.resourceCulture);
			}
		}

		public static string VyprVPNForBusiness
		{
			get
			{
				return Url.ResourceManager.GetString("VyprVPNForBusiness", Url.resourceCulture);
			}
		}

		internal Url()
		{
		}
	}
}
