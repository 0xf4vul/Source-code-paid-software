using CyberGhost.Communication;
using CyberGhost.Components;
using CyberGhost.Components.Popups;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.RESTCommunicator.OAuth;
using CyberGhost.Settings.Settings;
using CyberGhost.VPNServices;
using Hardcodet.Wpf.TaskbarNotification;
using MobileConcepts.Components.Network;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Numerics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Controls;
using System.Windows.Threading;

namespace CyberGhost
{
	internal static class ObjectHolder
	{
		private static CgApiUser _mCurrentUser;

		public static DateTime StartTime;

		public static bool IsFirstStart;

		public static List<string> AppListLaunchConnectBefore
		{
			[CompilerGenerated]
			get
			{
				return ObjectHolder.<AppListLaunchConnectBefore>k__BackingField;
			}
		}

		public static List<string> AppListLaunchConnectAfter
		{
			[CompilerGenerated]
			get
			{
				return ObjectHolder.<AppListLaunchConnectAfter>k__BackingField;
			}
		}

		public static List<string> AppListKillConnectBefore
		{
			[CompilerGenerated]
			get
			{
				return ObjectHolder.<AppListKillConnectBefore>k__BackingField;
			}
		}

		public static List<string> AppListKillConnectAfter
		{
			[CompilerGenerated]
			get
			{
				return ObjectHolder.<AppListKillConnectAfter>k__BackingField;
			}
		}

		public static List<string> AppListLaunchDisconnectBefore
		{
			[CompilerGenerated]
			get
			{
				return ObjectHolder.<AppListLaunchDisconnectBefore>k__BackingField;
			}
		}

		public static List<string> AppListLaunchDisconnectAfter
		{
			[CompilerGenerated]
			get
			{
				return ObjectHolder.<AppListLaunchDisconnectAfter>k__BackingField;
			}
		}

		public static List<string> AppListKillDisconnectBefore
		{
			[CompilerGenerated]
			get
			{
				return ObjectHolder.<AppListKillDisconnectBefore>k__BackingField;
			}
		}

		public static List<string> AppListKillDisconnectAfter
		{
			[CompilerGenerated]
			get
			{
				return ObjectHolder.<AppListKillDisconnectAfter>k__BackingField;
			}
		}

		public static List<ProcessStartInfo> AppListLaunchConnectAfterOnce
		{
			[CompilerGenerated]
			get
			{
				return ObjectHolder.<AppListLaunchConnectAfterOnce>k__BackingField;
			}
		}

		public static JsonOAuthRestClient.OnHttpErrorHandler UserNotAuthorizedErrorHandler
		{
			get;
			set;
		}

		public static JsonOAuthRestClient.OnHttpErrorHandler ServiceNotAvailablErrorHandler
		{
			get;
			set;
		}

		public static int PollUserTimer
		{
			get;
			set;
		}

		public static CgApiUser CurrentUser
		{
			get
			{
				return ObjectHolder._mCurrentUser;
			}
			set
			{
				ObjectHolder._mCurrentUser = value;
				MainWindow expr_0B = ObjectHolder.MainForm;
				if (expr_0B == null)
				{
					return;
				}
				expr_0B.OnUserOrPlanHasChanged();
			}
		}

		public static CgBase CurrentProfile
		{
			get;
			set;
		}

		public static IConnectionStates CurrentConnectingScreen
		{
			get;
			set;
		}

		public static EventSender CyberGhostCom
		{
			get;
			set;
		}

		public static VpnServerLastConnectionInfos CurrentConnectionInfos
		{
			get;
			set;
		}

		public static MainWindow MainForm
		{
			get;
			set;
		}

		public static SynchronizationContext MainContext
		{
			get;
			set;
		}

		public static ConnectionStatus ConnectionStatus
		{
			get;
			set;
		}

		public static CgApiHintList HintList
		{
			get;
			set;
		}

		public static CgApiProgramList ProgramList
		{
			get;
			set;
		}

		public static TaskbarIcon TaskbarIcon
		{
			get;
			set;
		}

		public static EventLogger EventLogger
		{
			get;
			set;
		}

		public static WiFiDetector WifiDetector
		{
			get;
			set;
		}

		public static bool FirstTimeVisitedConnectedScreen
		{
			get;
			set;
		}

		public static DebugWindow DebugWindow
		{
			get;
			set;
		}

		public static CgApiServiceStatus CurrentStatus
		{
			get;
			set;
		}

		public static string ConnectionType
		{
			get;
			set;
		}

		public static string CurrentConnectionTime
		{
			get;
			set;
		}

		public static string ConnectionSource
		{
			get;
			set;
		}

		public static NotifiyHome NotifiyIcon
		{
			get;
			set;
		}

		public static BigInteger DownloadTimerCounter
		{
			get;
			set;
		}

		public static DockPanel UpdatePanel
		{
			get;
			set;
		}

		public static bool ShowUpdateInstalled
		{
			get;
			set;
		}

		public static bool DebugWindowIsOpen
		{
			get;
			set;
		}

		public static string LastConversionPoint
		{
			get;
			set;
		}

		public static string CustomUnblockItemUrl
		{
			get;
			set;
		}

		public static List<int> CustomUnblockItemServerIds
		{
			get;
			set;
		}

		public static string WifiType
		{
			get;
			set;
		}

		public static WifiPopup.WifiConnectionResult WifiProtectionSetting
		{
			get;
			set;
		}

		public static KeyValuePair<string, double> Download
		{
			get;
			set;
		}

		public static KeyValuePair<string, double> DownloadAll
		{
			get;
			set;
		}

		public static KeyValuePair<string, double> MaxSpeed
		{
			get;
			set;
		}

		public static long LastElapsedTimeForNotification
		{
			get;
			set;
		}

		public static DispatcherTimer ConnectedDispatcherTimer
		{
			get;
			set;
		}

		public static string CurrentProfileTab
		{
			get;
			set;
		}

		public static string ResumePurchaseUrl
		{
			get;
			set;
		}

		public static string SettingsDefaultName
		{
			get;
			set;
		}

		public static CancellationTokenSource ConnectTokenSource
		{
			get;
			set;
		}

		static ObjectHolder()
		{
			// Note: this type is marked as 'beforefieldinit'.
			ObjectHolder.<AppListLaunchConnectBefore>k__BackingField = new List<string>();
			ObjectHolder.<AppListLaunchConnectAfter>k__BackingField = new List<string>();
			ObjectHolder.<AppListKillConnectBefore>k__BackingField = new List<string>();
			ObjectHolder.<AppListKillConnectAfter>k__BackingField = new List<string>();
			ObjectHolder.<AppListLaunchDisconnectBefore>k__BackingField = new List<string>();
			ObjectHolder.<AppListLaunchDisconnectAfter>k__BackingField = new List<string>();
			ObjectHolder.<AppListKillDisconnectBefore>k__BackingField = new List<string>();
			ObjectHolder.<AppListKillDisconnectAfter>k__BackingField = new List<string>();
			ObjectHolder.<AppListLaunchConnectAfterOnce>k__BackingField = new List<ProcessStartInfo>();
			ObjectHolder.<PollUserTimer>k__BackingField = 300;
			ObjectHolder.<ConnectionStatus>k__BackingField = -1;
			ObjectHolder.<ConnectionSource>k__BackingField = string.Empty;
			ObjectHolder.StartTime = DateTime.UtcNow;
			ObjectHolder.IsFirstStart = false;
			ObjectHolder.<LastElapsedTimeForNotification>k__BackingField = 10000L;
			ObjectHolder.<CurrentProfileTab>k__BackingField = "none";
			ObjectHolder.<ConnectTokenSource>k__BackingField = new CancellationTokenSource();
		}
	}
}
