using AutoUpdaterDotNET;
using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Controls;
using DevComponents.DotNetBar.Metro.ColorTables;
using DevComponents.DotNetBar.Rendering;
using HtmlAgilityPack;
using ibBLL;
using ibVPN.Helpers;
using ibVPN.Properties;
using ibVPN.UserControls;
using Microsoft.Win32.TaskScheduler;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Management;
using System.Net;
using System.Net.NetworkInformation;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security.Cryptography.X509Certificates;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;
using System.Xml.Linq;

namespace ibVPN.Forms
{
	public class MainForm : OfficeForm
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly MainForm.<>c <>9 = new MainForm.<>c();

			public static Func<Tuple<string, double, string, string, string, string>, double> <>9__790_0;

			public static Func<Tuple<string, double, string, string, string, string>, string> <>9__790_1;

			public static Func<Tuple<string, double, string, string, string, string>, double> <>9__791_0;

			public static Func<Tuple<string, double, string, string, string, string>, string> <>9__791_1;

			public static Func<Tuple<string, double, string, string, string, string>, double> <>9__792_0;

			public static Func<Tuple<string, double, string, string, string, string>, string> <>9__792_1;

			public static Func<ManagementObject, IEnumerable<PropertyData>> <>9__865_0;

			public static Func<PropertyData, bool> <>9__865_2;

			public static Func<PropertyData, bool> <>9__865_3;

			public static Func<IEnumerable<PropertyData>, bool> <>9__865_1;

			public static Func<PropertyData, bool> <>9__865_5;

			public static Func<PropertyData, bool> <>9__865_6;

			public static Func<IEnumerable<PropertyData>, <>f__AnonymousType0<object, object>> <>9__865_4;

			public static Func<ManagementObject, object> <>9__866_0;

			public static Func<ManagementObject, object> <>9__866_1;

			public static Func<ManagementObject, object> <>9__866_2;

			public static Func<NetworkInterface, bool> <>9__925_0;

			public static Func<NetworkInterface, bool> <>9__925_1;

			public static Func<NetworkInterface, IEnumerable<GatewayIPAddressInformation>> <>9__925_2;

			public static Func<GatewayIPAddressInformation, IPAddress> <>9__925_3;

			public static Func<IPAddress, bool> <>9__925_4;

			public static Func<Tuple<string, int, string, string>, int> <>9__955_0;

			internal double <WriteFastestServerXML>b__790_0(Tuple<string, double, string, string, string, string> sv)
			{
				return sv.Item2;
			}

			internal string <WriteFastestServerXML>b__790_1(Tuple<string, double, string, string, string, string> sv)
			{
				return sv.Item6;
			}

			internal double <WriteFastestFavouritesXML>b__791_0(Tuple<string, double, string, string, string, string> sv)
			{
				return sv.Item2;
			}

			internal string <WriteFastestFavouritesXML>b__791_1(Tuple<string, double, string, string, string, string> sv)
			{
				return sv.Item6;
			}

			internal double <WriteRotatingFavouritesXML>b__792_0(Tuple<string, double, string, string, string, string> sv)
			{
				return sv.Item2;
			}

			internal string <WriteRotatingFavouritesXML>b__792_1(Tuple<string, double, string, string, string, string> sv)
			{
				return sv.Item6;
			}

			internal IEnumerable<PropertyData> <AntivirusInstalled>b__865_0(ManagementObject i)
			{
				return i.Properties.OfType<PropertyData>();
			}

			internal bool <AntivirusInstalled>b__865_1(IEnumerable<PropertyData> pd)
			{
				Func<PropertyData, bool> arg_20_1;
				if ((arg_20_1 = MainForm.<>c.<>9__865_2) == null)
				{
					arg_20_1 = (MainForm.<>c.<>9__865_2 = new Func<PropertyData, bool>(MainForm.<>c.<>9.<AntivirusInstalled>b__865_2));
				}
				if (pd.Any(arg_20_1))
				{
					Func<PropertyData, bool> arg_47_1;
					if ((arg_47_1 = MainForm.<>c.<>9__865_3) == null)
					{
						arg_47_1 = (MainForm.<>c.<>9__865_3 = new Func<PropertyData, bool>(MainForm.<>c.<>9.<AntivirusInstalled>b__865_3));
					}
					return pd.Any(arg_47_1);
				}
				return false;
			}

			internal bool <AntivirusInstalled>b__865_2(PropertyData p)
			{
				return p.Name == "displayName";
			}

			internal bool <AntivirusInstalled>b__865_3(PropertyData p)
			{
				return p.Name == "pathToSignedProductExe";
			}

			internal <>f__AnonymousType0<object, object> <AntivirusInstalled>b__865_4(IEnumerable<PropertyData> pd)
			{
				Func<PropertyData, bool> arg_20_1;
				if ((arg_20_1 = MainForm.<>c.<>9__865_5) == null)
				{
					arg_20_1 = (MainForm.<>c.<>9__865_5 = new Func<PropertyData, bool>(MainForm.<>c.<>9.<AntivirusInstalled>b__865_5));
				}
				object arg_54_0 = pd.Single(arg_20_1).Value;
				Func<PropertyData, bool> arg_4A_1;
				if ((arg_4A_1 = MainForm.<>c.<>9__865_6) == null)
				{
					arg_4A_1 = (MainForm.<>c.<>9__865_6 = new Func<PropertyData, bool>(MainForm.<>c.<>9.<AntivirusInstalled>b__865_6));
				}
				return new
				{
					Name = arg_54_0,
					Path = pd.Single(arg_4A_1).Value
				};
			}

			internal bool <AntivirusInstalled>b__865_5(PropertyData p)
			{
				return p.Name == "displayName";
			}

			internal bool <AntivirusInstalled>b__865_6(PropertyData p)
			{
				return p.Name == "pathToSignedProductExe";
			}

			internal object <GetOSDetails>b__866_0(ManagementObject x)
			{
				return x.GetPropertyValue("Caption");
			}

			internal object <GetOSDetails>b__866_1(ManagementObject x)
			{
				return x.GetPropertyValue("OSArchitecture");
			}

			internal object <GetOSDetails>b__866_2(ManagementObject x)
			{
				return x.GetPropertyValue("Version");
			}

			internal bool <GetDefaultGateway>b__925_0(NetworkInterface n)
			{
				return n.OperationalStatus == OperationalStatus.Up;
			}

			internal bool <GetDefaultGateway>b__925_1(NetworkInterface n)
			{
				return n.NetworkInterfaceType != NetworkInterfaceType.Loopback;
			}

			internal IEnumerable<GatewayIPAddressInformation> <GetDefaultGateway>b__925_2(NetworkInterface n)
			{
				IPInterfaceProperties expr_06 = n.GetIPProperties();
				if (expr_06 == null)
				{
					return null;
				}
				return expr_06.GatewayAddresses;
			}

			internal IPAddress <GetDefaultGateway>b__925_3(GatewayIPAddressInformation g)
			{
				if (g == null)
				{
					return null;
				}
				return g.Address;
			}

			internal bool <GetDefaultGateway>b__925_4(IPAddress a)
			{
				return a != null;
			}

			internal int <UpdateKB>b__955_0(Tuple<string, int, string, string> x)
			{
				return x.Item2;
			}
		}

		private readonly VPNManager vpnManager;

		private readonly APIManager apiManager;

		private readonly VPNCryptography cryptography = new VPNCryptography();

		private int panel1Width;

		private int panel2Width;

		private int initialWidth;

		private const int DISCONNECT_ID = -1;

		private const int POINTS_NUMBER = 15;

		private const string NEWS_URL = "getNews";

		private const string PROMO_URL = "getPromo";

		private const string DNS_BUTTON_OFF = "ibDNS OFF";

		private const string DNS_BUTTON_ON = "ibDNS ON";

		private const string KILLSWITCH_BUTTON_OFF = "KillSwitch\nOFF";

		private const string KILLSWITCH_BUTTON_ON = "KillSwitch\nON";

		private const string FACEBOOK_URL = "http://on.fb.me/1QqezsT";

		private const string TWITTER_URL = "http://bit.ly/ibvpn-twitter-account";

		private const string GPLUS_URL = "http://bit.ly/gplus-account";

		private const string ACCOUNT_INFO_URL = "http://bit.ly/aio-client-area";

		private const string OPEN_TICKET_URL = "https://www.ibvpn.com/billing/submitticket.php";

		private const string SEND_EMAIL_URL = "mailto:support@ibvpn.com";

		private const string MYIP_URL = "https://xmyip.com";

		private const string LOGO_URL = "https://ibvpn.com";

		private const string UPGRADE_URL = "https://ibvpn.com/get-ibdns/";

		private const string UPDATE_URL = "https://download.ibvp.net/AIO_2.x/ibvpn.xml";

		private const string RELEASE_NOTES_URL = "https://download.ibvp.net/AIO_2.x/releasenotes.html";

		private const string KNOWLEDGEBASE_URL = "https://download.ibvp.net/AIO_2.x/knowledgebase.html";

		private const string L2TP = "Fast/Strong Encryption (L2TP)";

		private const string PPTP = "Fast/Light Encryption(PPTP)";

		private const string SSTP = "Fast/Extremely Secure(SSTP)";

		private const string IPSEC = "Fast/Secure (IPSec)";

		private const string OPENVPN_TCP = "Stable/Secure (OpenVPN-TCP)";

		private const string OPENVPN_UDP = "Stable/Fast (OpenVPN-UDP)";

		private const string LBLDNS_DASHBOARD_LONG = "DNS service is not available in your package.";

		private const string LBLDNS_PANEL_LONG = "You do not have an active DNS package. Please access Client Area on ibvpn.com, to place an order.";

		private const string LBLDNS_DASHBOARD = "ibDNS is not available.";

		private const string LBLDNS_PANEL = "ibDNS is not included in your package.";

		private const string LINK_NO_DNS_TEXT = "Upgrade";

		private const string SEND_INFORMATION_TEXT_LINE1 = " Add to the log: antivirus version, your ibVPN packages, your ibVPN AIO settings and version.";

		private const string NEW_VERSION_AVAILABLE = "A new version available.";

		private const string NO_UPDATES_AVAILABLE = "No updates available.";

		private const string TOOLTIP_CONNECT = "Connect to VPN";

		private const string TOOLTIP_DISCONNECT = "Disconnect from VPN";

		private const string TOOLTIP_CANCEL = "VPN is connecting";

		private const string INITIAL_INFO_STATUS = "VPN: Not Connected";

		private const string VPN_CONNECTING_STATUS = "VPN: Connecting..";

		private const string VPN_DISCONNECTING_STATUS = "VPN: Disconnecting..";

		private const string IP_CONNECTING_STATUS = "Updating..";

		private const int MAX_LOCATION_DIMENSION = 9000;

		private const string NOTIFICATION_MESSAGE_BOX = "ibVPN client notification/info message";

		private const int FAST_SERVERS_NUMBER = 5;

		private int fastFavouriteNumber;

		private GeneralHelper helper = new GeneralHelper();

		private bool btnUpdateWasClicked;

		private bool tabUpdateWasClicked;

		private const int PINGS_NUMBER_TIMEOUT = 3;

		private static readonly IntPtr HWND_TOPMOST = new IntPtr(-1);

		private const uint SWP_NOSIZE = 1u;

		private const uint SWP_NOMOVE = 2u;

		private const uint SWP_SHOWWINDOW = 64u;

		private static readonly IntPtr HWND_NOTOPMOST = new IntPtr(-2);

		private static readonly IntPtr HWND_TOP = new IntPtr(0);

		private static readonly IntPtr HWND_BOTTOM = new IntPtr(1);

		private const string IPSEC_CERTIFICATE_PATH = "\\script\\client.ibvpn.com.cer";

		private string buttonConnectText;

		private string buttonDisconnectText;

		private string buttonCancelText;

		private string ibDNS_ON;

		private string ibDNS_OFF;

		private string killSwitch_ON;

		private string killSwitch_OFF;

		private Color baseColor;

		private Color BlueIBVPN;

		private Color OrangeIBVPN;

		private Color GreenIBVPN;

		private Color RedIBVPN;

		private Color canvasColor;

		private Color connectButtonColor;

		private Color selectedMenuColor;

		private Color panel2DashboardColor;

		private Color dashboardFontColor;

		private Color redColor;

		private string r6TextLeft;

		private Color firstLineColor;

		private Color secondLineColor;

		private bool groupFavouriteMode;

		private bool groupContinentMode;

		private bool groupTorMode;

		private bool groupDoubleMode;

		private bool groupTorrentMode;

		private bool groupGamingMode;

		private object initialServerList;

		private object initialAccountServerList;

		private string lastConnectedServerName = string.Empty;

		private string lastDNSconnectedserver = string.Empty;

		private bool isServelistGridviewInitialized;

		private object[] cbProtocolItems;

		private object[] cbProtocolItems1;

		private int rowIndexBuffer;

		private bool changeServerOnCombo;

		private bool changeServerOnGrdView;

		private bool sortare;

		private bool keyPress;

		private bool resetFilters;

		private bool groupContinent;

		private bool groupFavorite;

		private bool groupNewServices;

		private DashboardUserControl dashboardServers;

		private DashboardUserControl dashboard;

		private DashboardUserControl dashboardAccount;

		private DashboardUserControl dashboardVPNSettings;

		private DashboardUserControl dashboardDNSSettings;

		private DashboardUserControl dashboardSupport;

		private const double timerUpdate = 1500.0;

		private System.Windows.Forms.Timer timerRefreshServersList;

		private const double timerRefreshServersListUpdate = 3600000.0;

		private int refreshServersListContor;

		private System.Windows.Forms.Timer timerRotatingFavourites;

		private int timerRotatingFavouritesUpdate = 300000;

		private NetworkInterface[] nicArr;

		private System.Windows.Forms.Timer timer;

		private System.Windows.Forms.Timer timerFreetrial;

		private const double timerFreetrialUpdate = 60000.0;

		private System.Windows.Forms.Timer timerUpdateFastestServers;

		private const double timerUpdateFastestServersUpdate = 7200000.0;

		private System.Windows.Forms.Timer timerPing;

		private const double timerPingUpdate = 4000.0;

		private System.Windows.Forms.Timer timerPingServerWhenInternetLock;

		private const double timerPingServerWhenInternetLockUpdate = 5000.0;

		private System.Windows.Forms.Timer timerTimeOutConnection;

		private const double timerTimeOutConnectionUpdate = 15000.0;

		private const string KSW_RF_MESSAGE = "We do not recommend using KillSwitch while the Rotating Favourite is selected. \n\n At this time, KillSwitch does not close the desired applications during disconnect/reconnect process on Rotating Favourite servers.";

		private string activeAdaperIP = string.Empty;

		private NetworkInterface activeNIC;

		private double downloadspeed;

		private double uploadSpeed;

		private double bytesSent;

		private double bytesReceived;

		private string protocolReconnect = string.Empty;

		private string lastSelectedProtocol = string.Empty;

		private string lastSelectedServer = string.Empty;

		private string serverReconnect = string.Empty;

		private string userXMLLocation = string.Empty;

		private string defaultXMLLocation = string.Empty;

		private bool askConfirmationOnExit = true;

		private bool askConfirmationOnExitSettings;

		private bool alwaysOnTop;

		public bool disableShutdown;

		public bool exitWasClicked;

		private bool autoReconnect;

		public bool sendToTray;

		public bool sendedToTray;

		private bool forceSecureDNS;

		private bool forceSecureDNSFirewall;

		private bool disableIPv6Traffic;

		private bool enableLog;

		private bool adBlock;

		public bool startMinimized;

		public bool startedMinimized;

		private bool buttonConnectWasClicked;

		private bool buttonDisconnectWasClicked = true;

		private bool buttonDisconnectWasClickedNew;

		private int autoReconnectTryNumber;

		private int fastestServerReconnectTryNumber;

		private ComponentResourceManager resources = new ComponentResourceManager(typeof(MainForm));

		private string protocolLabel = string.Empty;

		public bool logoutPressed;

		private string appName = Assembly.GetExecutingAssembly().GetName().Name;

		private string appPath = Application.ExecutablePath.ToString();

		private string xmlKSWLogPath = string.Empty;

		private string debugPath = string.Empty;

		private string mapPath = string.Empty;

		private string mapNorthAmericaPath = string.Empty;

		private string mapEuropePath = string.Empty;

		private string mapAsiaPath = string.Empty;

		private string mapAfricaPath = string.Empty;

		private string mapOceaniaPath = string.Empty;

		private string mapSouthAmericaPath = string.Empty;

		private string connectedPinPath = string.Empty;

		private string disConnectedPinPath = string.Empty;

		private string notConnectedPinPath = string.Empty;

		private ArrayList pinGroups = new ArrayList();

		private ArrayList pinGroupsPB = new ArrayList();

		private RadialMenu menu = new RadialMenu();

		private DNSManager dnsManager = new DNSManager();

		private bool isDnson;

		private SmartDNSAdapters adaptors;

		private bool askDNSServerChange;

		private bool askKswOn;

		private bool changeDNSServer;

		private bool killSwithInitialPaint;

		private DataTable killSwitchTable = new DataTable();

		private bool VPNConnectionWasIntterrupted;

		private ContextMenu notifyIconIbVPNContextMenu = new ContextMenu();

		private MenuItem menuItem1 = new MenuItem();

		private MenuItem menuItem2 = new MenuItem();

		private MenuItem menuItem3 = new MenuItem();

		private MenuItem menuItem4 = new MenuItem();

		private MenuItem menuItem5 = new MenuItem();

		private MenuItem menuItem6 = new MenuItem();

		private Point initialLocation;

		private bool centerWindow;

		private bool reopenClosedApplications;

		private Logger logger = new Logger();

		private Logger loggerKSW = new Logger();

		private int debugLevel;

		private int oldDebugLevel;

		private bool? newOpenVPNInstance = new bool?(true);

		public bool errorLoadServerList;

		public string lastConnectedServerForAutoconnect = string.Empty;

		public string lastProtocolForAutoconnect = string.Empty;

		public bool autoconnectLogin;

		private bool firstConnected;

		private bool updaterStarted;

		public bool formClosed;

		private bool noNews;

		private int logsNumber;

		private bool firstDNSLoad = true;

		private bool firstAppLoad = true;

		private bool firstMainFormShown = true;

		private bool disableNotifications;

		private bool firstLog = true;

		private ToolTip toolTipIbVPN = new ToolTip();

		private ToolTip toolTipKSW = new ToolTip();

		private ToolTip toolTipDNS = new ToolTip();

		private bool disableToolTips = true;

		private bool testPing;

		private bool disableDebugMode;

		private string kswTooltip = string.Empty;

		private string dnsToolTip = string.Empty;

		private bool isAutomaticProtocol;

		private string protocolForConnect = string.Empty;

		private bool logoutEventAboutServers;

		private bool logoutEventAboutKSW;

		private BackgroundWorker checkChangeExternalIpWorker = new BackgroundWorker();

		private BackgroundWorker getExternalIpWorker = new BackgroundWorker();

		private AbortableBackgroundWorker updateFastestServerListWorker = new AbortableBackgroundWorker();

		private BackgroundWorker testPingWorker = new BackgroundWorker();

		private BackgroundWorker kswWorker = new BackgroundWorker();

		private BackgroundWorker restartKilledApplicationWorker = new BackgroundWorker();

		private BackgroundWorker mediaWorker = new BackgroundWorker();

		private BackgroundWorker releaseNotesWorker = new BackgroundWorker();

		private BackgroundWorker KBWorker = new BackgroundWorker();

		private BackgroundWorker loggerWorker = new BackgroundWorker();

		private BackgroundWorker connectAmplitudeWorker = new BackgroundWorker();

		private BackgroundWorker failedConnectAmplitudeWorker = new BackgroundWorker();

		private BackgroundWorker notifyShowWorker = new BackgroundWorker();

		private BackgroundWorker nlmUserILWorker = new BackgroundWorker();

		private float dpiX;

		private int rowHeight = 30;

		private int columnHeadersHeight = 23;

		private int flagColumnWidth = 40;

		private int centerYScreen = 600;

		private int lastX;

		private int lastY;

		public bool fastServersListWasCreated;

		public bool fastFavouritesListWasCreated;

		public bool serverChanged;

		public bool serverDNSChanged;

		private bool workerStartsFromButton;

		private bool workerStartsFromAfterDNSOff;

		private bool workerStartsFromVPNPropertyChanged;

		private int failedPingsContor;

		private bool pingFailed;

		private bool disconnectVPNbyDNS;

		private bool exceptionShowNotifyBaloon;

		private string specificInitialProtocolsForFS = string.Empty;

		private string specificInitialProtocolsForFV = string.Empty;

		private int currentFavouriteNumber;

		private bool getExternalIpWorkerRunInitial;

		private bool loggerWorkerContinueFromServerChanged;

		private bool loggerWorkerContinue;

		private int initialDgvWidth;

		private int initialDgvHeight;

		private bool freetrial;

		private string freetrialtime = string.Empty;

		private int lifeTime = 1;

		private string appVersion = string.Empty;

		private AppNetworkListUser nlmUser = new AppNetworkListUser();

		private IList<string> sessionConnecteServers = new List<string>();

		private IList<string> existingServerRoutes = new List<string>();

		private bool forceRestoreInternet;

		private Point initialLnkKswSetLocation;

		private bool deletedDefaultRouteFlag;

		private bool delayAutoReconnect;

		private string beforeRefreshServerName = string.Empty;

		private bool isVPNConnectionInterrupted;

		private string failedConnectionError;

		private IList<Tuple<string, string>> urlList = new List<Tuple<string, string>>();

		private IList<Tuple<string, int, string, string>> urlList_New = new List<Tuple<string, int, string, string>>();

		private IList<Tuple<string, string>> urlListParsed = new List<Tuple<string, string>>();

		private bool firstDgvServerGetFocus = true;

		private string userName;

		private string vpnPassword;

		private int userId;

		private string password;

		private string apiUrl;

		private string expirationDate;

		private string newsLink;

		private string promoLink;

		private string ip;

		private string ip_country;

		private string ip_city;

		private string amplitude;

		private const string USER_AGENT = "WinAIO v2";

		private bool testKswPing;

		private bool disconnectedRF;

		private int indexRF;

		private bool firstLogsWasWritted;

		private bool menuItem1WasClicked;

		private bool menuItem2WasClicked;

		private bool changePackages;

		private IPAddress defaultGateway;

		private string savedDefaultGateway = string.Empty;

		private string Ksw1Message1 = string.Concat(new string[]
		{
			"The 'KillSwitch' button is disabled ",
			Environment.NewLine,
			" while connected to the VPN,",
			Environment.NewLine,
			" if Internet KillSwitch radio button is checked"
		});

		private bool linkServersWasClicked;

		private bool kswMessageAppeared;

		private string selectedServerLabelText = string.Empty;

		private bool btnWasClicked;

		private bool colFavouritesWasMoused;

		private int firstScrollLine;

		private int selectedCellRow;

		private int selectedCellRow1;

		private int selectedCellColumn1;

		private Color defColor = Color.FromArgb(242, 242, 242);

		private int penWidth = 1;

		private bool fastestFavouriteWasDeleted;

		private bool forceFSChange;

		private bool favoriteColumnWasClicked;

		private string isFav = string.Empty;

		private string lastFavouriteConnectedServer = string.Empty;

		private const int WM_SETICON = 128;

		private const int ICON_SMALL = 0;

		private const int ICON_BIG = 1;

		private int offsetLinkSettings = 40;

		private bool internetLock;

		private bool killConnectionWorker;

		private bool goDisconnectIfKsw1IsOn;

		private string lastUrlIP = string.Empty;

		private bool noWasClicked;

		private bool suntemInProcesulRF;

		private bool saProdusConectare;

		private int selectedServerIndex;

		private int rfNumbers;

		private int logGetValidRow;

		private int logGetValidRowShort;

		private int maxLogsNumber = 11;

		private KswInternetLockInformation kswInternetLockInformation = new KswInternetLockInformation();

		private KswInternetLockConfirmation kswInternetLockConfirmation = new KswInternetLockConfirmation();

		private bool isInTrayMode;

		private bool answerLogout = true;

		private bool stillShow;

		private bool notifyWasClicked;

		private bool notifyWasClickedDNS;

		public bool dgvDNSServerWasClicked;

		private string log1 = string.Empty;

		private IContainer components;

		private SideNavPanel snpDNSSettings;

		private SideNavPanel snpDashboard;

		private SideNav sideNavIbVPN;

		private Separator separator1;

		private SideNavItem sniDashboard;

		private StyleManager styleManager1;

		private SideNavPanel snpVPNSettings;

		private SideNavPanel snpAccount;

		private SideNavItem sniDNSSettings;

		private SideNavItem sniServers;

		private SideNavItem sniAccount;

		private SideNavItem sniVPNSettings;

		private SplitContainer spcAccount;

		private SplitContainer spcServers;

		private SplitContainer spcDashboard;

		private ColorPickerDropDown colorPickerDropDown1;

		private ColorPickerDropDown colorPickerDropDown2;

		private TextBoxItem textBoxItem1;

		private LabelX lblAppLanguage;

		private ComboBoxEx cmbLanguage;

		private SplitContainer spcVPNSettings;

		private SplitContainer spcDNSSettings;

		private TabControl tbcVPNSettings;

		private TabControlPanel tbpKillSwitch;

		private TabItem tbiKillSwitch;

		private TabControlPanel tbpBehaviour;

		private TabItem tbiBehaviour;

		private TabControlPanel tbpPrivacy;

		private TabItem tbiPrivacy;

		private ButtonX btnColapseServers;

		private ButtonX btnColapseVPNSettings;

		private ButtonX btnColapseDNSSettings;

		private ButtonX btnColapseAccount;

		private TabControl tbcServers;

		private TabControlPanel tbpUsageView;

		private TabItem tbiUsageView;

		private DataGridViewX dgvServers;

		private ImageList imageList1;

		private ButtonX buttonX39;

		private ButtonX btnSort;

		private ButtonX btnResetFiltersUV;

		private LabelX lblSearchUV;

		private ButtonX btnGroupBy;

		private ButtonItem Continent;

		private ButtonItem FavoriteItem;

		private RadialMenuItem radialMenuItem3;

		private CheckBoxX chkConfirmationChangeServer;

		private SideNavItem sniLogo;

		private SideNavPanel snpSupport;

		private SideNavItem sniSupport;

		private SideNavItem sniLogout;

		private SplitContainer spcSupport;

		private TabControl tbcSupport;

		private TabControlPanel tbpSupportSettings;

		private TabItem tbiSupportSettings;

		private TabControlPanel tbpServiceLog;

		private RichTextBoxEx txtLog;

		private TabItem tbiServiceLog;

		private SideNavPanel snpServers;

		private CheckBoxX chkMitmForceSecureDNSUsingFirewall;

		private CheckBoxX chkMitmForceSecureDNS;

		private CheckBoxX chkMitmDisableIPv6Traffic;

		private CheckBoxX chkConfirmationOnExit;

		private CheckBoxX chkAlwaysOnTop;

		private CheckBoxX chkSendToTray;

		private CheckBoxX chkStartMinimized;

		private CheckBoxX chkAutoReconnect;

		private CheckBoxX chkAutoConnect;

		private CheckBoxX chkAutoLogin;

		private CheckBoxX chkStartupLaunch;

		private CheckBoxX chkConfirmationChangeDNSServer;

		private CheckBoxX chkEnableLog;

		private LabelX lblInfoEnableLog;

		private LabelX lblInfoRepairOpenVPN;

		private SwitchButton swbKillSwitch;

		private Label lblKillSwitch;

		private Label lblIbDNS;

		private SwitchButton swbIbDNS;

		private Label lblInfoDNS;

		private TabControl tbcAccount;

		private TabControlPanel tbpAccount;

		private DataGridViewX dgvPackages;

		private TabItem tbiAccount;

		private DataGridViewX dgvAccountServers;

		private TabControl tbcDNSSettings;

		private TabControlPanel tbpDNSSettings;

		private TabItem tbiDNSSettings;

		private Label lblInfoPackage;

		private ButtonX btnClientArea;

		private Label lblInfoClientArea;

		private Label lblInfoServers;

		private Label lblInfoCont;

		public NotifyIcon notifyIconIbVPN;

		private ButtonX btnColapseSupport;

		private CheckBoxX chkSendInfo;

		private DataGridViewCheckBoxXColumn dataGridViewCheckBoxXColumn1;

		private Line line1;

		private Line line2;

		private DataGridViewX dgvDNSServers;

		private DataGridViewImageColumn CountryDNS;

		private ButtonX btnBrowse;

		private DataGridViewX dgvKillSwitch;

		private ButtonX btnProcess;

		private ButtonX btnRemoveSelected;

		private DataGridViewImageColumn KillSwitchAppColumn;

		private ImageList imageList2;

		private ButtonX btnKillSwitchPanel;

		private ButtonX btnRestartProcesses;

		private CheckBoxX chkCenterWindow;

		public ButtonX btnCopyToClipboard;

		private FilterBoxUserControl txtSearchUV;

		private CheckBoxX chkAskReopenClosedApplications;

		private LabelX lblInfoKillSwitch;

		private TabControlPanel tbcContact;

		private TabItem tbiContact;

		public ButtonX btnOpenTicket;

		public ButtonX btnSendEmail;

		private LabelX labelX2;

		private LabelX labelX1;

		private Line line3;

		private Line line4;

		private Label label1;

		private LabelX labelX3;

		private ButtonX btnClearLog;

		private LabelX lblDebugLevelInfo;

		private LabelX lblDebugLevel;

		public ComboBoxEx cmbDebugLevel;

		private TextBox textBox2;

		private TextBox textBox1;

		private LabelX labelX6;

		private LabelX labelX7;

		private LabelX labelX5;

		private LabelX labelX4;

		private TextBox textBox3;

		private TextBox textBox4;

		private TabControlPanel tbpAutoupdater;

		public ButtonX btnUpdate;

		private TabItem tbiAutoupdater;

		public ButtonX btnDownloadUpdates;

		private RichTextBox richTextBox1;

		private LabelX lblInfoNewVersion;

		private LabelX lblInfoReleaseNotes;

		private Line line7;

		private Line line6;

		private Line line5;

		private Line line8;

		private CheckBoxX chkDisableNotifications;

		private CheckBoxX chkShowToolTips;

		private Label lblDNSleak;

		private Line line15;

		private Line line9;

		private Line line14;

		private Label label2;

		private Line line10;

		private Line line11;

		private Line line12;

		private Line line13;

		private LabelX lblGrpNotif;

		private LabelX lblGrpConfir;

		private LabelX lblGrpBehav;

		private LabelX lblGrpStartup;

		private Line line21;

		private LabelX lblInfoRepairIpSecCertificate;

		private ButtonX btnRepairIpSecCertificate;

		private ButtonX btnRepairOpenVPN;

		private Line line17;

		private Line line23;

		private Line line22;

		private Line line24;

		private Label lblDescKsw;

		private ButtonX btnClearLogKsw;

		private RichTextBoxEx rchBoxKSWlog;

		private Line line25;

		private Line line26;

		private Label lblDescDns;

		private LabelX labelX8;

		private ButtonX btnResetApp;

		private ButtonX btnCopyKSWLogToClipboard;

		private CheckBoxX chkDisableShutdown;

		private Line line16;

		private Line line18;

		private Line line19;

		private Line line20;

		private Line line27;

		private Line line28;

		private DataGridViewTextBoxColumn FreeBand;

		private DataGridViewImageColumn Country;

		private DataGridViewTextBoxColumn SeverName;

		private DataGridViewTextBoxColumn ServerCountry;

		private DataGridViewCheckBoxXColumn Favourite;

		private TabControlPanel tbpProtocolsList;

		private GroupBox grpProtocols;

		private RadioButton rbAutomatic;

		private RadioButton rbOpenVPN_TCP;

		private RadioButton rbOpenVPN_UDP;

		private RadioButton rbPPTP;

		private RadioButton rbIPSec;

		private RadioButton rbSSTP;

		private RadioButton rbL2TP;

		private TabItem tbiProtocolList;

		private LabelX infoLblProtocolAuto;

		private LabelX infoLblProtocolOVPNTCP;

		private LabelX infoLblProtocolOVPNUDP;

		private LabelX infoLblProtocolIPSEC;

		private LabelX infoLblProtocolSSTP;

		private LabelX infoLblProtocolPPTP;

		private LabelX infoLblProtocolL2TP;

		private DataGridViewX dgvServersCopy;

		private DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;

		private DataGridViewImageColumn dataGridViewImageColumn1;

		private DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;

		private DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;

		private DataGridViewCheckBoxXColumn dataGridViewCheckBoxXColumn2;

		private CheckBoxX chkTestPing;

		private Line line29;

		private Label label3;

		public PictureBox pctPromo;

		private SideNavItem sniPromo;

		private ButtonX btnRefreshServerList;

		private LabelX lblSelectedServer;

		private ButtonItem TORoverVPN;

		private ButtonItem DoubleVPN;

		private ButtonItem Torrent;

		private ButtonItem Gaming;

		private LabelX lblSelectedServerBackground;

		private CheckBoxX chkDisableDebugMode;

		private Panel pnlInfoButtonDisable;

		private Panel pnlProtocolTooltip;

		private Panel pnlPrivacyTooltip;

		private Panel pnlComboOpenVPNTooltip;

		private Panel pnlButtonIpsecTooltip;

		private Panel pnlButtonOpenVPNTooltip;

		private LabelX lblInfoDisableDebug;

		private Line line30;

		private Line line31;

		private TabControlPanel tbpKB;

		private TabItem tbiKB;

		private Label lblInfoKB;

		private Panel pnlKB;

		private Label label4;

		private CheckBoxX chkBlockAds;

		private Line line32;

		private Label label5;

		private Line line33;

		public ComboBoxEx cmbRotatingFavourites;

		private LabelX labelX9;

		private RadioButton rbApplicationsKsw;

		private RadioButton rbInternetKsw;

		private ButtonX btnRestoreNet;

		private Label label6;

		public ButtonX btnDeleteDefaultRoute;

		public ButtonX btnRestoreInternet;

		public ButtonX btnAddRoute;

		public ButtonX btnDeleteRoute;

		private Panel pnlSwbKswTooltip;

		private CheckBoxX chkConfirmationKswOn;

		public string UserName
		{
			get
			{
				return this.userName;
			}
			set
			{
				this.userName = value;
			}
		}

		public string VpnPassword
		{
			get
			{
				return this.vpnPassword;
			}
			set
			{
				this.vpnPassword = value;
			}
		}

		public int UserId
		{
			get
			{
				return this.userId;
			}
			set
			{
				this.userId = value;
			}
		}

		public string Password
		{
			get
			{
				return this.password;
			}
			set
			{
				this.password = value;
			}
		}

		public string ApiUrl
		{
			get
			{
				return this.apiUrl;
			}
			set
			{
				this.apiUrl = value;
			}
		}

		public string ExpirationDate
		{
			get
			{
				return this.expirationDate;
			}
			set
			{
				this.expirationDate = value;
			}
		}

		public string NewsLink
		{
			get
			{
				return this.newsLink;
			}
			set
			{
				this.newsLink = value;
			}
		}

		public string PromoLink
		{
			get
			{
				return this.promoLink;
			}
			set
			{
				this.promoLink = value;
			}
		}

		public string Ip
		{
			get
			{
				return this.ip;
			}
			set
			{
				this.ip = value;
			}
		}

		public string Ip_country
		{
			get
			{
				return this.ip_country;
			}
			set
			{
				this.ip_country = value;
			}
		}

		public string Ip_city
		{
			get
			{
				return this.ip_city;
			}
			set
			{
				this.ip_city = value;
			}
		}

		public string Amplitude
		{
			get
			{
				return this.amplitude;
			}
			set
			{
				this.amplitude = value;
			}
		}

		protected override CreateParams CreateParams
		{
			get
			{
				CreateParams expr_06 = base.CreateParams;
				expr_06.ExStyle |= 33554432;
				return expr_06;
			}
		}

		[DllImport("user32.dll")]
		private static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags);

		[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
		public static extern IntPtr GetActiveWindow();

		[DllImport("user32.dll")]
		public static extern void DisableProcessWindowsGhosting();

		public MainForm()
		{
			MainForm.DisableProcessWindowsGhosting();
			this.StartLogger();
			this.StartLoggerKSW();
			this.appVersion = MainForm.GetAppVersion();
			this.logger.log("IbVPN version: " + this.appVersion);
			CultureInfo installedUICulture = CultureInfo.InstalledUICulture;
			this.logger.log("Default Language Info:");
			this.logger.log(string.Format("* Name: {0}", installedUICulture.Name));
			this.logger.log(string.Format("* Display Name: {0}", installedUICulture.DisplayName));
			this.logger.log(string.Format("* English Name: {0}", installedUICulture.EnglishName));
			this.logger.log(string.Format("* 2-letter ISO Name: {0}", installedUICulture.TwoLetterISOLanguageName));
			this.logger.log(string.Format("* 3-letter ISO Name: {0}", installedUICulture.ThreeLetterISOLanguageName));
			this.logger.log(string.Format("* 3-letter Win32 API Name: {0}", installedUICulture.ThreeLetterWindowsLanguageName));
			this.logger.log("incepe constructor MainForm 0 param");
			this.InitializeComponent();
			this.AvoidFlickering();
			this.vpnManager = new VPNManager(this);
			this.apiManager = new APIManager();
			this.cryptography = new VPNCryptography();
			this.GetResolution();
			this.SetHeightDPI();
			base.Shown += new EventHandler(this.MainForm_Shown1);
			base.VisibleChanged += new EventHandler(this.MainForm_VisibleChanged);
			this.logger.log("gata constructor MainForm 0 param");
		}

		private void SetHeightDPI()
		{
			if (this.dpiX != 96f)
			{
				this.MinimumSize = new Size(0, 0);
				this.MaximumSize = new Size(0, 0);
				int height = Convert.ToInt32((double)base.Height * 1.07);
				base.Height = height;
			}
		}

		private void MainForm_VisibleChanged(object sender, EventArgs e)
		{
			bool arg_06_0 = base.Visible;
		}

		public void SetchkStartupLaunchEnabled(bool userType)
		{
			this.chkStartupLaunch.Enabled = userType;
		}

		public void SetDebugLevelForAutoconnect()
		{
			new Hashtable();
			string text = (string)this.GetSettings(this.userXMLLocation)["debugLevel"];
			if (!(text == "0") && !(text == "1") && !(text == "2"))
			{
				this.debugLevel = 0;
			}
			else
			{
				this.debugLevel = Convert.ToInt32(text);
			}
			this.cmbDebugLevel.SelectedItem = this.debugLevel.ToString();
		}

		private void Bw_DoWork(object sender, DoWorkEventArgs e)
		{
		}

		private void LoginUser()
		{
			this.LoadUsersControls();
			this.InitializeControls();
		}

		private void InitializeTimers()
		{
			this.timer = new System.Windows.Forms.Timer();
			this.timer.Interval = 1500;
			this.timer.Tick += new EventHandler(this.timer_Tick);
			this.timerUpdateFastestServers = new System.Windows.Forms.Timer();
			this.timerUpdateFastestServers.Interval = 7200000;
			this.timerUpdateFastestServers.Tick += new EventHandler(this.TimerUpdateFastestServers_Tick);
			this.timerPing = new System.Windows.Forms.Timer();
			this.timerPing.Interval = 4000;
			this.timerPing.Tick += new EventHandler(this.timerPing_Tick);
			this.timerPingServerWhenInternetLock = new System.Windows.Forms.Timer();
			this.timerPingServerWhenInternetLock.Interval = 5000;
			this.timerPingServerWhenInternetLock.Tick += new EventHandler(this.TimerPingServerWhenInternetLock_Tick);
			this.timerTimeOutConnection = new System.Windows.Forms.Timer();
			this.timerTimeOutConnection.Interval = 15000;
			this.timerTimeOutConnection.Tick += new EventHandler(this.timerTimeOutConnection_Tick);
			this.timerRotatingFavourites = new System.Windows.Forms.Timer();
			this.timerRotatingFavourites.Interval = this.timerRotatingFavouritesUpdate;
			this.timerRotatingFavourites.Tick += new EventHandler(this.TimerRotatingFavourites_Tick);
		}

		private void TimerPingServerWhenInternetLock_Tick(object sender, EventArgs e)
		{
			this.testKswPing = this.TestKswPing(this.lastUrlIP);
			if (!this.nlmUserILWorker.IsBusy)
			{
				this.logger.log("s-a pornit nlmUserILWorker()");
				this.nlmUserILWorker.RunWorkerAsync();
			}
		}

		private void TimerRotatingFavourites_Tick(object sender, EventArgs e)
		{
			if (this.indexRF < this.rfNumbers && this.dashboard.lnkServers.Text == "Rotating Favourites" && this.vpnManager.get_ConnectionStatus() == "Connected")
			{
				this.logger.log("se lanseaza deconectarea RF - index server favorit=" + this.indexRF.ToString());
				this.disconnectedRF = true;
				this.indexRF++;
				this.Connecting(881, "TimerRotatingFavourites_Tick");
			}
		}

		private void InitializeTimerFreetrial()
		{
			this.timerFreetrial = new System.Windows.Forms.Timer();
			this.timerFreetrial.Interval = 60000;
			this.timerFreetrial.Tick += new EventHandler(this.TimerFreetrial_Tick);
		}

		private void InitializeTimerRefreshServersList()
		{
			this.timerRefreshServersList = new System.Windows.Forms.Timer();
			this.timerRefreshServersList.Interval = 3600000;
			this.timerRefreshServersList.Tick += new EventHandler(this.TimerRefreshServersList_Tick);
		}

		private void TimerFreetrial_Tick(object sender, EventArgs e)
		{
			if (this.freetrial)
			{
				long num = Convert.ToInt64(this.freetrialtime) - 60L;
				this.ExpirationDate = this.TransformFreetrialtime(num.ToString());
				this.freetrialtime = num.ToString();
				if (num / 60L <= 15L)
				{
					this.SetLblReamainingTimeColor();
				}
				this.SetPackagesExpirationDate();
			}
		}

		private void TimerRefreshServersList_Tick(object sender, EventArgs e)
		{
			this.refreshServersListContor = 1;
		}

		private void timerTimeOutConnection_Tick(object sender, EventArgs e)
		{
		}

		private void timerPing_Tick(object sender, EventArgs e)
		{
			if (!this.testPingWorker.IsBusy)
			{
				this.testPingWorker.RunWorkerAsync();
			}
		}

		private void TimerUpdateFastestServers_Tick(object sender, EventArgs e)
		{
		}

		private void timer_Tick(object sender, EventArgs e)
		{
			this.UpdateNetworkInterface(this.activeNIC);
		}

		private void UpdateNetworkInterface(NetworkInterface nic)
		{
			if (nic != null)
			{
				try
				{
					this.WriteUpdateNetworkInterfaceLog(1);
					IPv4InterfaceStatistics iPv4Statistics = nic.GetIPv4Statistics();
					this.WriteUpdateNetworkInterfaceLog(2);
					double num = Math.Round(8.0 * (((double)iPv4Statistics.BytesSent - this.bytesSent) / 1024.0 / 1024.0), 2);
					this.WriteUpdateNetworkInterfaceLog(3);
					double num2 = Math.Round(8.0 * (((double)iPv4Statistics.BytesReceived - this.bytesReceived) / 1024.0 / 1024.0), 2);
					this.WriteUpdateNetworkInterfaceLog(4);
					this.bytesSent = (double)iPv4Statistics.BytesSent;
					this.WriteUpdateNetworkInterfaceLog(5);
					this.bytesReceived = (double)iPv4Statistics.BytesReceived;
					this.WriteUpdateNetworkInterfaceLog(6);
					this.downloadspeed = num2;
					this.WriteUpdateNetworkInterfaceLog(7);
					this.uploadSpeed = num;
					this.WriteUpdateNetworkInterfaceLog(8);
					this.r6TextLeft = string.Concat(new string[]
					{
						Environment.NewLine,
						" IP: ",
						this.Ip,
						Environment.NewLine,
						" Protocol: ",
						this.protocolLabel,
						Environment.NewLine,
						" Download: ",
						string.Format("{0:f2}", this.downloadspeed),
						" Mbps",
						Environment.NewLine,
						" Upload: ",
						string.Format("{0:f2}", this.uploadSpeed),
						" Mbps"
					});
					this.WriteUpdateNetworkInterfaceLog(9);
					this.UpdateSpeedLabels();
					this.WriteUpdateNetworkInterfaceLog(10);
					this.UpdateChartPoints();
					this.WriteUpdateNetworkInterfaceLog(11);
					this.firstLogsWasWritted = true;
				}
				catch (Exception ex)
				{
					this.r6TextLeft = string.Concat(new string[]
					{
						Environment.NewLine,
						" IP: ",
						this.Ip,
						Environment.NewLine,
						" Protocol: ",
						this.protocolLabel,
						Environment.NewLine,
						" Download:  unknown",
						Environment.NewLine,
						" Upload:  unknown"
					});
					this.UpdateInfoPanelWhenChartNoWorks();
					this.logger.log("UpdateNetworkInterface - " + ex.Message);
				}
			}
		}

		private void WriteUpdateNetworkInterfaceLog(int step)
		{
			if (!this.firstLogsWasWritted)
			{
				this.logger.log("UpdateNetworkInterface - step " + step.ToString());
			}
		}

		private void UpdateChartPoints()
		{
			this.RecalculateChartScale(this.dashboard);
			this.GetUploadPoints(this.uploadSpeed, this.dashboard);
			this.GetDownloadPoints(this.downloadspeed, this.dashboard);
			this.RecalculateChartScale(this.dashboardServers);
			this.GetUploadPoints(this.uploadSpeed, this.dashboardServers);
			this.GetDownloadPoints(this.downloadspeed, this.dashboardServers);
			this.RecalculateChartScale(this.dashboardVPNSettings);
			this.GetUploadPoints(this.uploadSpeed, this.dashboardVPNSettings);
			this.GetDownloadPoints(this.downloadspeed, this.dashboardVPNSettings);
			this.RecalculateChartScale(this.dashboardDNSSettings);
			this.GetUploadPoints(this.uploadSpeed, this.dashboardDNSSettings);
			this.GetDownloadPoints(this.downloadspeed, this.dashboardDNSSettings);
			this.RecalculateChartScale(this.dashboardSupport);
			this.GetUploadPoints(this.uploadSpeed, this.dashboardSupport);
			this.GetDownloadPoints(this.downloadspeed, this.dashboardSupport);
			this.RecalculateChartScale(this.dashboardAccount);
			this.GetUploadPoints(this.uploadSpeed, this.dashboardAccount);
			this.GetDownloadPoints(this.downloadspeed, this.dashboardAccount);
		}

		private NetworkInterface GetActiveNIC()
		{
			try
			{
				this.logger.log("apel ReadNetworkAdapter");
				this.activeAdaperIP = this.ReadNetworkAdapter();
				this.logger.log("terminat apel ReadNetworkAdapter");
			}
			catch
			{
				this.logger.log("eroare ReadNetworkAdapter");
			}
			NetworkInterface[] array = this.nicArr;
			for (int i = 0; i < array.Length; i++)
			{
				NetworkInterface networkInterface = array[i];
				using (IEnumerator<UnicastIPAddressInformation> enumerator = networkInterface.GetIPProperties().UnicastAddresses.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						if (enumerator.Current.Address.ToString() == this.activeAdaperIP && !networkInterface.Name.Contains("ibvpn"))
						{
							return networkInterface;
						}
					}
				}
			}
			return null;
		}

		public static void DisplayDnsAddresses()
		{
			string text = string.Empty;
			NetworkInterface[] allNetworkInterfaces = NetworkInterface.GetAllNetworkInterfaces();
			for (int i = 0; i < allNetworkInterfaces.Length; i++)
			{
				NetworkInterface networkInterface = allNetworkInterfaces[i];
				text = text + networkInterface.Name + Environment.NewLine;
				IPAddressCollection dnsAddresses = networkInterface.GetIPProperties().DnsAddresses;
				if (dnsAddresses.Count > 0)
				{
					foreach (IPAddress current in dnsAddresses)
					{
						text = text + current.ToString() + Environment.NewLine;
					}
				}
			}
			MessageBox.Show(text);
		}

		public static string GetActiveNicDNS(NetworkInterface adapter)
		{
			string text = string.Empty;
			IPAddressCollection dnsAddresses = adapter.GetIPProperties().DnsAddresses;
			if (dnsAddresses.Count > 0)
			{
				foreach (IPAddress current in dnsAddresses)
				{
					text = text + " " + current.ToString();
				}
			}
			return text;
		}

		private void PrintActiveNetworkAdapter()
		{
			string name = Assembly.GetExecutingAssembly().GetName().Name;
			string text = Application.ExecutablePath.ToString();
			string text2 = text.Substring(0, text.Length - name.Length - 4) + "Resources\\routeprint.txt";
			string text3 = text.Substring(0, text.Length - name.Length - 4) + "Resources\\RoutePrint.bat";
			if (File.Exists(text2))
			{
				File.Delete(text2);
			}
			if (File.Exists(text3))
			{
				File.Delete(text3);
			}
			using (StreamWriter streamWriter = new StreamWriter(text3, true))
			{
				streamWriter.WriteLine("route print > \"" + text2 + "\"");
			}
			Process arg_C3_0 = new Process();
			arg_C3_0.StartInfo = new ProcessStartInfo
			{
				WindowStyle = ProcessWindowStyle.Hidden,
				FileName = text3
			};
			this.logger.log("PrintActiveNetworkAdapter - inainte de start process");
			arg_C3_0.Start();
			this.logger.log("PrintActiveNetworkAdapter - dupa start process");
			arg_C3_0.Close();
		}

		private string ReadNetworkAdapter()
		{
			this.logger.log("incepe ReadNetworkAdapter");
			int num = 0;
			bool flag = false;
			string text = string.Empty;
			ArrayList arrayList = new ArrayList();
			ArrayList arrayList2 = new ArrayList();
			int i = 75;
			string[] array = new string[0];
			List<int> list = new List<int>();
			string arg_48_0 = "\\s+";
			string replacement = "^";
			Regex regex = new Regex(arg_48_0);
			int num2 = 0;
			int num3 = 0;
			string text2 = string.Empty;
			string text3 = string.Empty;
			string result = string.Empty;
			this.logger.log("ReadNetworkAdapter pas 1");
			while (i > 0)
			{
				text += "=";
				i--;
			}
			this.logger.log("ReadNetworkAdapter pas 2");
			string name = Assembly.GetExecutingAssembly().GetName().Name;
			string text4 = Application.ExecutablePath.ToString();
			string arg_FE_0 = text4.Substring(0, text4.Length - name.Length - 4) + "\\Resources\\routeprint.txt";
			this.logger.log("ReadNetworkAdapter pas 3");
			StreamReader streamReader = new StreamReader(arg_FE_0);
			string text5;
			while ((text5 = streamReader.ReadLine()) != null && !flag)
			{
				if (text5.Contains("Metric") || arrayList.Count > num)
				{
					num = arrayList.IndexOf(text5);
					if (text5.Contains(text))
					{
						flag = true;
					}
					else
					{
						arrayList.Add(text5);
					}
				}
			}
			this.logger.log("ReadNetworkAdapter pas 4");
			arrayList.RemoveAt(0);
			foreach (string input in arrayList)
			{
				string text6 = regex.Replace(input, replacement);
				int num4 = 0;
				int num5 = 0;
				string text7 = text6;
				for (int j = 0; j < text7.Length; j++)
				{
					if (text7[j] == '^')
					{
						if (num5 == 3)
						{
							num2 = num4 + 1;
						}
						if (num5 == 4)
						{
							num3 = num4 + 1;
						}
						num5++;
					}
					num4++;
				}
				int num6 = text6.Length - num3 + 1;
				text2 = text6.Substring(num2, text6.Length - num2 - num6);
				text3 = text6.Substring(num3);
				array = new string[]
				{
					text2,
					text3
				};
				list.Add(Convert.ToInt32(array[1].ToString()));
				arrayList2.Add(array);
			}
			this.logger.log("ReadNetworkAdapter pas 5");
			int num7 = list.Min();
			foreach (string[] array2 in arrayList2)
			{
				if (array2[1] == num7.ToString())
				{
					result = array2[0];
				}
			}
			this.logger.log("ReadNetworkAdapter pas 6");
			streamReader.Close();
			this.logger.log("terminat ReadNetworkAdapter");
			return result;
		}

		private void RecalculateChartScale(DashboardUserControl db)
		{
			db.chartSpeed.ChartAreas["ChartArea1"].RecalculateAxesScale();
		}

		private void GetUploadPoints(double speed, DashboardUserControl db)
		{
			db.chartSpeed.Series["Upload"].Points.Add(new double[]
			{
				speed
			});
			if (db.chartSpeed.Series["Upload"].Points.Count > 15)
			{
				db.chartSpeed.Series["Upload"].Points.RemoveAt(0);
			}
		}

		private void InitializeChart(DashboardUserControl db)
		{
			db.chartSpeed.ChartAreas["ChartArea1"].AxisX.MajorGrid.LineWidth = 0;
			db.chartSpeed.ChartAreas["ChartArea1"].AxisY.MajorGrid.LineWidth = 0;
			db.chartSpeed.ChartAreas["ChartArea1"].AxisX.LabelStyle.Enabled = false;
			db.chartSpeed.ChartAreas["ChartArea1"].AxisY.LabelStyle.Enabled = false;
			for (int i = 15; i > 0; i--)
			{
				db.chartSpeed.Series["Upload"].Points.Add(new double[1]);
				db.chartSpeed.Series["Download"].Points.Add(new double[1]);
			}
		}

		private void GetDownloadPoints(double speed, DashboardUserControl db)
		{
			db.chartSpeed.Series["Download"].Points.Add(new double[]
			{
				speed
			});
			if (db.chartSpeed.Series["Download"].Points.Count > 15)
			{
				db.chartSpeed.Series["Download"].Points.RemoveAt(0);
			}
		}

		public void SetMainFormTopMost()
		{
			IntPtr activeWindow = MainForm.GetActiveWindow();
			if (this.alwaysOnTop)
			{
				MainForm.SetWindowPos(activeWindow, MainForm.HWND_TOPMOST, 0, 0, 0, 0, 67u);
				return;
			}
			MainForm.SetWindowPos(activeWindow, MainForm.HWND_NOTOPMOST, 0, 0, 0, 0, 67u);
		}

		private void InitializeNetworkInterface()
		{
			this.nicArr = NetworkInterface.GetAllNetworkInterfaces();
		}

		private void LoadUsersControls()
		{
			try
			{
				this.dashboard = new DashboardUserControl();
				this.dashboardServers = new DashboardUserControl();
				this.dashboardAccount = new DashboardUserControl();
				this.dashboardVPNSettings = new DashboardUserControl();
				this.dashboardDNSSettings = new DashboardUserControl();
				this.dashboardSupport = new DashboardUserControl();
				this.dashboardServers.Dock = DockStyle.Fill;
				this.dashboardAccount.Dock = DockStyle.Fill;
				this.dashboardVPNSettings.Dock = DockStyle.Fill;
				this.dashboardDNSSettings.Dock = DockStyle.Fill;
				this.dashboardSupport.Dock = DockStyle.Fill;
				this.spcDashboard.Panel1.Controls.Add(this.dashboard);
				this.spcServers.Panel1.Controls.Add(this.dashboardServers);
				this.spcVPNSettings.Panel1.Controls.Add(this.dashboardVPNSettings);
				this.spcDNSSettings.Panel1.Controls.Add(this.dashboardDNSSettings);
				this.spcAccount.Panel1.Controls.Add(this.dashboardAccount);
				this.spcSupport.Panel1.Controls.Add(this.dashboardSupport);
			}
			catch
			{
				this.RestoreDNS(1436, "LoadUsersControls");
			}
		}

		private void InitializeControls()
		{
			this.logger.log("incepe metoda InitializeControls");
			this.xmlKSWLogPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "ksw.txt";
			this.userXMLLocation = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\UserSettings.xml";
			this.defaultXMLLocation = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\DefaultSettings.xml";
			this.mapPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\World-Map.png";
			this.mapNorthAmericaPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\World-Map-NorthAmerica.png";
			this.mapSouthAmericaPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\World-Map-SouthAmerica.png";
			this.mapAsiaPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\World-Map-Asia.png";
			this.mapAfricaPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\World-Map-Africa.png";
			this.mapOceaniaPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\World-Map-Oceania.png";
			this.mapEuropePath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\World-Map-Europe.png";
			this.connectedPinPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\pin-connected.png";
			this.disConnectedPinPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\pin-disconnected.png";
			this.notConnectedPinPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\pin-not_connected.png";
			this.dgvDNSServers.SelectionChanged -= new EventHandler(this.dgvDNSServers_SelectionChanged);
			this.firstLineColor = Color.FromArgb(242, 242, 242);
			this.InitializeCharts();
			this.PrintActiveNetworkAdapter();
			this.AssignControlsEvents();
			this.baseColor = ColorFromHex.GetColorFromHex("#C6C6C6");
			this.BlueIBVPN = ColorFromHex.GetColorFromHex("#0078D7");
			this.OrangeIBVPN = ColorFromHex.GetColorFromHex("#FDBB2F");
			this.GreenIBVPN = ColorFromHex.GetColorFromHex("#1B9E1C");
			this.RedIBVPN = ColorFromHex.GetColorFromHex("#FF0040");
			this.canvasColor = ColorFromHex.GetColorFromHex("#F7F7F7");
			this.connectButtonColor = ColorFromHex.GetColorFromHex("#1B9E1C");
			this.selectedMenuColor = ColorFromHex.GetColorFromHex("#B1B2B1");
			this.panel2DashboardColor = ColorFromHex.GetColorFromHex("#E2E2E2");
			this.dashboardFontColor = ColorFromHex.GetColorFromHex("#3D3D3D");
			this.redColor = ColorFromHex.GetColorFromHex("#FF0040");
			this.secondLineColor = Color.FromArgb(238, 238, 238);
			this.buttonConnectText = "CONNECT";
			this.buttonDisconnectText = "DISCONNECT";
			this.buttonCancelText = "CANCEL";
			this.ibDNS_OFF = string.Concat(new string[]
			{
				"The ibDNS service is OFF.",
				Environment.NewLine,
				"Please disconnect ibVPN before",
				Environment.NewLine,
				"turning ibDNS ON"
			});
			this.ibDNS_ON = "The ibDNS service is ON";
			this.killSwitch_ON = "KillSwitch is ON.";
			this.killSwitch_OFF = "KillSwitch is OFF.";
			this.r6TextLeft = string.Concat(new string[]
			{
				"                  ",
				Environment.NewLine,
				" Loading...       ",
				Environment.NewLine,
				"                  ",
				Environment.NewLine,
				"                  "
			});
			this.SetControlsStyle();
			this.SetControlsStyle(this.canvasColor, this.baseColor);
			this.cmbDebugLevel.get_Items().AddRange(new object[]
			{
				"0",
				"1",
				"2"
			});
			this.cmbRotatingFavourites.get_Items().AddRange(new object[]
			{
				"5 min",
				"10 min",
				"15 min",
				"30 min",
				"60 min"
			});
			this.sniDashboard.set_Checked(true);
			this.initialWidth = base.Width;
			this.panel2Width = this.spcDashboard.Panel2.Width;
			this.panel1Width = this.spcDashboard.Panel1.Width;
			base.Width -= this.panel2Width;
			this.SetComboProtocolCollapsed(true);
			this.SetImagesStatus();
			this.SetButtonConnectStatus(true);
			this.tbcVPNSettings.set_SelectedTabIndex(0);
			this.tbcServers.set_SelectedTabIndex(0);
			this.SetMainFormSize(base.Width, base.Height);
			this.UpdateSpeedLabels();
			this.SetServersControlsVisibility(false);
			this.dashboard.btnExpand.Visible = false;
			this.sideNavIbVPN.Controls["titleBar"].Hide();
			this.logger.log("gata metoda InitializeControls");
		}

		private void MainForm_Shown1(object sender, EventArgs e)
		{
			if (this.startMinimized)
			{
				base.set_WindowState(FormWindowState.Minimized);
				base.ShowInTaskbar = false;
				this.ShowNotifyBaloon("ibVPN is still running");
				this.startedMinimized = true;
				this.stillShow = false;
			}
			Application.DoEvents();
			this.Cursor = Cursors.Default;
		}

		private void StartLogger()
		{
			this.debugPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "debug.txt";
			this.logger.filePath = this.debugPath;
		}

		private void StartLoggerKSW()
		{
			string filePath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "ksw.txt";
			this.loggerKSW.filePath = filePath;
		}

		private void InitializeNotifyInconContextMenu()
		{
			this.menuItem1.Index = 0;
			this.menuItem1.Text = "Connect";
			this.menuItem1.Click += new EventHandler(this.menuItem1_Click);
			this.menuItem2.Index = 1;
			this.menuItem2.Text = "Disconnect";
			this.menuItem2.Enabled = false;
			this.menuItem2.Click += new EventHandler(this.menuItem2_Click);
			this.menuItem3.Index = 2;
			this.menuItem3.Text = "Dashboard";
			this.menuItem3.Click += new EventHandler(this.menuItem3_Click);
			this.menuItem6.Index = 3;
			this.menuItem6.Text = "Server list";
			this.menuItem6.Click += new EventHandler(this.menuItem6_Click);
			this.menuItem4.Index = 4;
			this.menuItem4.Text = "View Log";
			this.menuItem4.Click += new EventHandler(this.menuItem4_Click);
			this.menuItem5.Index = 5;
			this.menuItem5.Text = "Exit";
			this.menuItem5.Click += new EventHandler(this.menuItem5_Click);
			this.notifyIconIbVPNContextMenu.MenuItems.Add(this.menuItem1);
			this.notifyIconIbVPNContextMenu.MenuItems.Add(this.menuItem2);
			this.notifyIconIbVPNContextMenu.MenuItems.Add("-");
			this.notifyIconIbVPNContextMenu.MenuItems.Add(this.menuItem3);
			this.notifyIconIbVPNContextMenu.MenuItems.Add(this.menuItem6);
			this.notifyIconIbVPNContextMenu.MenuItems.Add(this.menuItem4);
			this.notifyIconIbVPNContextMenu.MenuItems.Add("-");
			this.notifyIconIbVPNContextMenu.MenuItems.Add(this.menuItem5);
			this.notifyIconIbVPN.ContextMenu = this.notifyIconIbVPNContextMenu;
		}

		private void menuItem6_Click(object sender, EventArgs e)
		{
			this.SetNotifyIconClick();
			this.notifyWasClicked = false;
			this.sideNavIbVPN.set_SelectedItem(this.sniServers);
			this.sniServers_Click(this, null);
			this.SetNotifyIconClick();
		}

		private void menuItem4_Click(object sender, EventArgs e)
		{
			this.SetNotifyIconClick();
			this.notifyWasClicked = false;
			this.btnLogs_Click(this, null);
			this.SetNotifyIconClick();
		}

		private void menuItem3_Click(object sender, EventArgs e)
		{
			if (!this.logoutPressed)
			{
				this.SetNotifyIconClick();
			}
			this.notifyWasClicked = false;
			this.sideNavIbVPN.set_SelectedItem(this.sniDashboard);
			this.sniDashboard_Click(this, null);
			if (!this.logoutPressed)
			{
				this.SetNotifyIconClick();
			}
		}

		private void menuItem5_Click(object sender, EventArgs e)
		{
			this.SetNotifyIconClick();
			this.notifyWasClicked = false;
			this.exitWasClicked = true;
			base.Close();
			this.exitWasClicked = false;
			this.SetNotifyIconClick();
			this.notifyWasClicked = false;
		}

		private void menuItem1_Click(object sender, EventArgs e)
		{
			this.menuItem1WasClicked = true;
			this.notifyWasClicked = false;
			this.btnConnect_Click(this, null);
		}

		private void menuItem2_Click(object sender, EventArgs e)
		{
			this.menuItem2WasClicked = true;
			this.notifyWasClicked = false;
			this.btnConnect_Click(this, null);
		}

		private void GetFirstlineColor()
		{
			if (this.dgvDNSServers.Rows.Count > 0)
			{
				if (this.dgvDNSServers.Rows[0].DefaultCellStyle.BackColor != Color.LightGray)
				{
					this.firstLineColor = this.dgvDNSServers.Rows[0].DefaultCellStyle.BackColor;
					return;
				}
				if (this.dgvDNSServers.Rows.Count > 2)
				{
					this.firstLineColor = this.dgvDNSServers.Rows[2].DefaultCellStyle.BackColor;
					return;
				}
				this.firstLineColor = this.secondLineColor;
			}
		}

		private void SetDNSMessagesForNoDNSService()
		{
			if (!this.isDnson)
			{
				this.swbIbDNS.Enabled = false;
				this.lblInfoDNS.Text = "ibDNS is not included in your package.";
				this.SetDNSLinkPositionForNoDNS(this.dashboard);
				this.SetDNSLinkPositionForNoDNS(this.dashboardServers);
				this.SetDNSLinkPositionForNoDNS(this.dashboardVPNSettings);
				this.SetDNSLinkPositionForNoDNS(this.dashboardDNSSettings);
				this.SetDNSLinkPositionForNoDNS(this.dashboardSupport);
				this.SetDNSLinkPositionForNoDNS(this.dashboardAccount);
				this.dashboard.swbDNS.Enabled = false;
				this.dashboard.lblDNS.Text = "ibDNS is not available.";
				this.dashboardServers.swbDNS.Enabled = false;
				this.dashboardServers.lblDNS.Text = "ibDNS is not available.";
				this.dashboardVPNSettings.swbDNS.Enabled = false;
				this.dashboardVPNSettings.lblDNS.Text = "ibDNS is not available.";
				this.dashboardDNSSettings.swbDNS.Enabled = false;
				this.dashboardDNSSettings.lblDNS.Text = "ibDNS is not available.";
				this.dashboardSupport.swbDNS.Enabled = false;
				this.dashboardSupport.lblDNS.Text = "ibDNS is not available.";
				this.dashboardAccount.swbDNS.Enabled = false;
				this.dashboardAccount.lblDNS.Text = "ibDNS is not available.";
			}
		}

		private void SetDNSLinkPositionForNoDNS(DashboardUserControl duc)
		{
			duc.lnkDnsSet.Location = new Point(175, 8);
			duc.lnkDnsSet.MaximumSize = new Size(52, 15);
			duc.lnkDnsSet.MinimumSize = new Size(52, 15);
			duc.lnkDnsSet.Text = "Upgrade";
		}

		private void SetPackagesExpirationDate()
		{
			if (!this.freetrial)
			{
				if (this.ExpirationDate != "Unlimited period")
				{
					try
					{
						this.dashboard.lblLicensed.Text = "Subscription valid until: " + Convert.ToDateTime(this.ExpirationDate).ToShortDateString();
						this.dashboardServers.lblLicensed.Text = "Subscription valid until: " + Convert.ToDateTime(this.ExpirationDate).ToShortDateString();
						this.dashboardVPNSettings.lblLicensed.Text = "Subscription valid until: " + Convert.ToDateTime(this.ExpirationDate).ToShortDateString();
						this.dashboardDNSSettings.lblLicensed.Text = "Subscription valid until: " + Convert.ToDateTime(this.ExpirationDate).ToShortDateString();
						this.dashboardSupport.lblLicensed.Text = "Subscription valid until: " + Convert.ToDateTime(this.ExpirationDate).ToShortDateString();
						this.dashboardAccount.lblLicensed.Text = "Subscription valid until: " + Convert.ToDateTime(this.ExpirationDate).ToShortDateString();
						return;
					}
					catch
					{
						this.dashboard.lblLicensed.Text = "Subscription valid until: " + DateTime.Now.ToShortDateString();
						this.dashboardServers.lblLicensed.Text = "Subscription valid until: " + DateTime.Now.ToShortDateString();
						this.dashboardVPNSettings.lblLicensed.Text = "Subscription valid until: " + DateTime.Now.ToShortDateString();
						this.dashboardDNSSettings.lblLicensed.Text = "Subscription valid until: " + DateTime.Now.ToShortDateString();
						this.dashboardSupport.lblLicensed.Text = "Subscription valid until: " + DateTime.Now.ToShortDateString();
						this.dashboardAccount.lblLicensed.Text = "Subscription valid until: " + DateTime.Now.ToShortDateString();
						return;
					}
				}
				this.dashboard.lblLicensed.Text = "Subscription valid until: " + this.ExpirationDate;
				this.dashboardServers.lblLicensed.Text = "Subscription valid until: " + this.ExpirationDate;
				this.dashboardVPNSettings.lblLicensed.Text = "Subscription valid until: " + this.ExpirationDate;
				this.dashboardDNSSettings.lblLicensed.Text = "Subscription valid until: " + this.ExpirationDate;
				this.dashboardSupport.lblLicensed.Text = "Subscription valid until: " + this.ExpirationDate;
				this.dashboardAccount.lblLicensed.Text = "Subscription valid until: " + this.ExpirationDate;
				return;
			}
			this.dashboard.lblLicensed.Text = "Trial expires in: ";
			this.dashboardServers.lblLicensed.Text = "Trial expires in: ";
			this.dashboardVPNSettings.lblLicensed.Text = "Trial expires in: ";
			this.dashboardDNSSettings.lblLicensed.Text = "Trial expires in: ";
			this.dashboardSupport.lblLicensed.Text = "Trial expires in: ";
			this.dashboardAccount.lblLicensed.Text = "Trial expires in: ";
			this.dashboard.lblFreeTimeRemaining.Text = this.ExpirationDate;
			this.dashboardServers.lblFreeTimeRemaining.Text = this.ExpirationDate;
			this.dashboardVPNSettings.lblFreeTimeRemaining.Text = this.ExpirationDate;
			this.dashboardDNSSettings.lblFreeTimeRemaining.Text = this.ExpirationDate;
			this.dashboardSupport.lblFreeTimeRemaining.Text = this.ExpirationDate;
			this.dashboardAccount.lblFreeTimeRemaining.Text = this.ExpirationDate;
		}

		private void SetLblReamainingTimeColor()
		{
			this.dashboard.lblFreeTimeRemaining.ForeColor = Color.Red;
			this.dashboardServers.lblFreeTimeRemaining.ForeColor = Color.Red;
			this.dashboardVPNSettings.lblFreeTimeRemaining.ForeColor = Color.Red;
			this.dashboardDNSSettings.lblFreeTimeRemaining.ForeColor = Color.Red;
			this.dashboardSupport.lblFreeTimeRemaining.ForeColor = Color.Red;
			this.dashboardAccount.lblFreeTimeRemaining.ForeColor = Color.Red;
		}

		private void InitializeCharts()
		{
			this.InitializeChart(this.dashboard);
			this.InitializeChart(this.dashboardServers);
			this.InitializeChart(this.dashboardVPNSettings);
			this.InitializeChart(this.dashboardDNSSettings);
			this.InitializeChart(this.dashboardSupport);
			this.InitializeChart(this.dashboardAccount);
		}

		private void UpdateSpeedLabelsInitial()
		{
			this.dashboard.rchInfo.Text = this.r6TextLeft;
			this.SetInfoTrafficColor(this.dashboard);
		}

		private void UpdateInfoPanelWhenChartNoWorks()
		{
			this.dashboard.rchInfo.Text = this.r6TextLeft;
			this.dashboardServers.rchInfo.Text = this.r6TextLeft;
			this.dashboardVPNSettings.rchInfo.Text = this.r6TextLeft;
			this.dashboardDNSSettings.rchInfo.Text = this.r6TextLeft;
			this.dashboardSupport.rchInfo.Text = this.r6TextLeft;
			this.dashboardAccount.rchInfo.Text = this.r6TextLeft;
		}

		private void UpdateSpeedLabels()
		{
			this.dashboard.rchInfo.Text = this.r6TextLeft;
			this.dashboardServers.rchInfo.Text = this.r6TextLeft;
			this.dashboardVPNSettings.rchInfo.Text = this.r6TextLeft;
			this.dashboardDNSSettings.rchInfo.Text = this.r6TextLeft;
			this.dashboardSupport.rchInfo.Text = this.r6TextLeft;
			this.dashboardAccount.rchInfo.Text = this.r6TextLeft;
			this.SetInfoTrafficColor(this.dashboard);
			this.SetInfoTrafficColor(this.dashboardServers);
			this.SetInfoTrafficColor(this.dashboardVPNSettings);
			this.SetInfoTrafficColor(this.dashboardDNSSettings);
			this.SetInfoTrafficColor(this.dashboardSupport);
			this.SetInfoTrafficColor(this.dashboardAccount);
		}

		private void SetInfoTrafficColor(DashboardUserControl duc)
		{
			if (!this.r6TextLeft.StartsWith("                  "))
			{
				int num = this.AllIndexesOf(this.r6TextLeft, " Upload:").FirstOrDefault<int>();
				int num2 = this.AllIndexesOf(this.r6TextLeft, " Download:").FirstOrDefault<int>();
				duc.rchInfo.SelectionStart = num2 + 8;
				duc.rchInfo.SelectionLength = string.Format("{0:f2}", this.downloadspeed).Length;
				duc.rchInfo.SelectionColor = Color.Green;
				duc.rchInfo.SelectionStart = num + 5;
				duc.rchInfo.SelectionLength = string.Format("{0:f2}", this.uploadSpeed).Length;
				duc.rchInfo.SelectionColor = Color.Red;
			}
		}

		public List<int> AllIndexesOf(string str, string value)
		{
			if (string.IsNullOrEmpty(value))
			{
				throw new ArgumentException("the string to find may not be empty", "value");
			}
			List<int> list = new List<int>();
			int num = 0;
			while (true)
			{
				num = str.IndexOf(value, num);
				if (num == -1)
				{
					break;
				}
				list.Add(num);
				num += value.Length;
			}
			return list;
		}

		private void AvoidFlickering()
		{
			this.DoubleBuffered = true;
			int num = NativeWinAPI.GetWindowLong(base.Handle, NativeWinAPI.GWL_EXSTYLE);
			num |= NativeWinAPI.WS_EX_COMPOSITED;
			NativeWinAPI.SetWindowLong(base.Handle, NativeWinAPI.GWL_EXSTYLE, num);
		}

		private bool CreatePins(int pins, int rows)
		{
			bool result = false;
			int num = pins - rows;
			if (num < 0)
			{
				result = (num < -1);
			}
			if (num > 0)
			{
				result = (num > 1);
			}
			return result;
		}

		private void LoadNewMap()
		{
		}

		private void LoadMap(bool center)
		{
		}

		private void SetToolTips(PictureBox pb)
		{
			new ToolTip
			{
				AutoPopDelay = 5000,
				InitialDelay = 1000,
				ReshowDelay = 500,
				ShowAlways = true
			}.SetToolTip(pb, pb.Name);
		}

		private void SetServersControlsVisibility(bool visibility)
		{
			this.dgvServers.Visible = visibility;
			this.btnSort.Visible = visibility;
			this.lblSearchUV.Visible = visibility;
			this.txtSearchUV.Visible = visibility;
			this.btnResetFiltersUV.Visible = visibility;
			this.btnGroupBy.Visible = visibility;
		}

		private void SetControlsStyle()
		{
			this.spcAccount.BorderStyle = BorderStyle.None;
			this.spcServers.BorderStyle = BorderStyle.None;
			this.spcDashboard.BorderStyle = BorderStyle.None;
			this.spcVPNSettings.BorderStyle = BorderStyle.None;
			this.spcDNSSettings.BorderStyle = BorderStyle.None;
		}

		private void SetControlsStyle(Color canvasColor, Color baseColor)
		{
			this.sideNavIbVPN.get_Items().get_Item(0).set_Visible(false);
			eTabStripStyle style = (eTabStripStyle)Enum.Parse(typeof(eTabStripStyle), "Metro");
			this.SetTabStyle(style, this.tbcVPNSettings);
			this.SetTabStyle(style, this.tbcServers);
			this.SetTabStyle(style, this.tbcSupport);
			this.SetTabStyle(style, this.tbcAccount);
			this.SetTabStyle(style, this.tbcDNSSettings);
			this.SetCustomColors();
			this.SetButtonsColorTable();
			this.SetDNSControls();
			this.SetKillSwitchButtonStatus(false);
			string.Concat(new string[]
			{
				"View",
				Environment.NewLine,
				"full",
				Environment.NewLine,
				"log"
			});
			this.dgvServers.DefaultCellStyle.Font = new Font("Segoe UI", 9f);
			this.dgvServers.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 9f);
		}

		private void SetCustomColors()
		{
			this.tbpServiceLog.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpServiceLog.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpSupportSettings.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpSupportSettings.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbcContact.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbcContact.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpAutoupdater.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpAutoupdater.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpProtocolsList.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpProtocolsList.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
		}

		private void SetDNSControls()
		{
			if (this.isDnson)
			{
				string text = string.Empty;
				string btnText = string.Empty;
				if (!(this.vpnManager.get_ConnectionStatus() == "Not Connected") && !(this.vpnManager.get_ConnectionStatus() == "Connecting...") && !this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
				{
					if (this.vpnManager.get_ConnectionStatus() == "Connected")
					{
						if (!this.chkMitmForceSecureDNS.get_Checked() && !this.chkMitmForceSecureDNSUsingFirewall.get_Checked())
						{
							text = "ibDNS is OFF.";
						}
						else
						{
							text = "ibDNS is OFF.";
						}
						btnText = "ibDNS ON";
					}
				}
				else if (this.swbIbDNS.get_Value())
				{
					text = "ibDNS is ON.";
					btnText = "ibDNS OFF";
				}
				else
				{
					text = "ibDNS is OFF.";
					btnText = "ibDNS ON";
				}
				this.SetDNSTextsSize(text);
				this.SetDNSControlsStatus(text, btnText);
				this.SetDNSLabelsColor();
			}
		}

		private void SetDNSTextsSize(string lblText)
		{
			this.SetDNSTextSize(lblText, this.dashboard);
			this.SetDNSTextSize(lblText, this.dashboardServers);
			this.SetDNSTextSize(lblText, this.dashboardVPNSettings);
			this.SetDNSTextSize(lblText, this.dashboardDNSSettings);
			this.SetDNSTextSize(lblText, this.dashboardSupport);
			this.SetDNSTextSize(lblText, this.dashboardAccount);
		}

		private void SetDNSTextSize(string lblText, DashboardUserControl duc)
		{
			if (lblText.Length > 15)
			{
				duc.pnlDNS.Size = new Size(230, 45);
				duc.lblDNS.Size = new Size(166, 45);
				duc.lblDNS.Location = new Point(5, 0);
				return;
			}
			duc.pnlDNS.Size = new Size(230, 30);
			duc.lblDNS.Size = new Size(228, 18);
			duc.lblDNS.Location = new Point(5, 8);
		}

		private void SetDNSControlsStatus(string lblText, string btnText)
		{
			this.dashboard.lblDNS.Text = lblText;
			this.SetSwbDNSValue(btnText, this.dashboard);
			this.dashboardServers.lblDNS.Text = lblText;
			this.SetSwbDNSValue(btnText, this.dashboardServers);
			this.dashboardVPNSettings.lblDNS.Text = lblText;
			this.SetSwbDNSValue(btnText, this.dashboardVPNSettings);
			this.dashboardDNSSettings.lblDNS.Text = lblText;
			this.SetSwbDNSValue(btnText, this.dashboardDNSSettings);
			this.dashboardSupport.lblDNS.Text = lblText;
			this.SetSwbDNSValue(btnText, this.dashboardSupport);
			this.dashboardAccount.lblDNS.Text = lblText;
			this.SetSwbDNSValue(btnText, this.dashboardAccount);
		}

		private void SetSwbDNSValue(string btnText, DashboardUserControl duc)
		{
			this.swbIbDNS.remove_ValueChanged(new EventHandler(this.swbIbDNS_ValueChanged));
			if (btnText == "ibDNS ON")
			{
				duc.swbDNS.set_Value(false);
			}
			else
			{
				duc.swbDNS.set_Value(true);
			}
			this.swbIbDNS.add_ValueChanged(new EventHandler(this.swbIbDNS_ValueChanged));
		}

		private void SetKillSwitchLabelInitialStatus(DashboardUserControl duc)
		{
			if (duc.swbKillSwitch.get_Value())
			{
				duc.lblKillSwitch.Text = this.killSwitch_ON;
				return;
			}
			duc.lblKillSwitch.Text = this.killSwitch_OFF;
		}

		private void SetKillSwitchLabelsInitialStatus()
		{
			this.SetKillSwitchLabelInitialStatus(this.dashboard);
			this.SetKillSwitchLabelInitialStatus(this.dashboardServers);
			this.SetKillSwitchLabelInitialStatus(this.dashboardVPNSettings);
			this.SetKillSwitchLabelInitialStatus(this.dashboardDNSSettings);
			this.SetKillSwitchLabelInitialStatus(this.dashboardSupport);
			this.SetKillSwitchLabelInitialStatus(this.dashboardAccount);
			this.SetKillSwitchLabelColor(this.dashboard);
			this.SetKillSwitchLabelColor(this.dashboardServers);
			this.SetKillSwitchLabelColor(this.dashboardVPNSettings);
			this.SetKillSwitchLabelColor(this.dashboardDNSSettings);
			this.SetKillSwitchLabelColor(this.dashboardSupport);
			this.SetKillSwitchLabelColor(this.dashboardAccount);
		}

		private void SetDNSLabelsColor()
		{
			this.SetDNSLabelColor(this.dashboard);
			this.SetDNSLabelColor(this.dashboardServers);
			this.SetDNSLabelColor(this.dashboardVPNSettings);
			this.SetDNSLabelColor(this.dashboardDNSSettings);
			this.SetDNSLabelColor(this.dashboardSupport);
			this.SetDNSLabelColor(this.dashboardAccount);
		}

		private void SetKillSwitchLabelColor(DashboardUserControl duc)
		{
			if (this.swbKillSwitch.get_Value())
			{
				duc.lblKillSwitch.SelectionStart = 14;
				duc.lblKillSwitch.SelectionLength = 2;
				duc.lblKillSwitch.SelectionColor = Color.Green;
				return;
			}
			duc.lblKillSwitch.SelectionStart = 14;
			duc.lblKillSwitch.SelectionLength = 3;
			duc.lblKillSwitch.SelectionColor = Color.Red;
		}

		private void SetDNSLabelColor(DashboardUserControl duc)
		{
			if (duc.lblDNS.Text.Length < 15)
			{
				if (this.swbIbDNS.get_Value())
				{
					duc.lblDNS.SelectionStart = 9;
					duc.lblDNS.SelectionLength = 2;
					duc.lblDNS.SelectionColor = Color.Green;
					return;
				}
				duc.lblDNS.SelectionStart = 9;
				duc.lblDNS.SelectionLength = 3;
				duc.lblDNS.SelectionColor = Color.Red;
			}
		}

		private void SetKillSwitchButtonStatus(bool active)
		{
			if (active)
			{
				this.dashboard.lblKillSwitch.Text = this.killSwitch_ON;
				this.dashboard.swbKillSwitch.set_Value(true);
				this.dashboardServers.lblKillSwitch.Text = this.killSwitch_ON;
				this.dashboardServers.swbKillSwitch.set_Value(true);
				this.dashboardVPNSettings.lblKillSwitch.Text = this.killSwitch_ON;
				this.dashboardVPNSettings.swbKillSwitch.set_Value(true);
				this.dashboardDNSSettings.lblKillSwitch.Text = this.killSwitch_ON;
				this.dashboardDNSSettings.swbKillSwitch.set_Value(true);
				this.dashboardSupport.lblKillSwitch.Text = this.killSwitch_ON;
				this.dashboardSupport.swbKillSwitch.set_Value(true);
				this.dashboardAccount.lblKillSwitch.Text = this.killSwitch_ON;
				this.dashboardAccount.swbKillSwitch.set_Value(true);
			}
			else
			{
				this.dashboard.lblKillSwitch.Text = this.killSwitch_OFF;
				this.dashboard.swbKillSwitch.set_Value(false);
				this.dashboardServers.lblKillSwitch.Text = this.killSwitch_OFF;
				this.dashboardServers.swbKillSwitch.set_Value(false);
				this.dashboardVPNSettings.lblKillSwitch.Text = this.killSwitch_OFF;
				this.dashboardVPNSettings.swbKillSwitch.set_Value(false);
				this.dashboardDNSSettings.lblKillSwitch.Text = this.killSwitch_OFF;
				this.dashboardDNSSettings.swbKillSwitch.set_Value(false);
				this.dashboardSupport.lblKillSwitch.Text = this.killSwitch_OFF;
				this.dashboardSupport.swbKillSwitch.set_Value(false);
				this.dashboardAccount.lblKillSwitch.Text = this.killSwitch_OFF;
				this.dashboardAccount.swbKillSwitch.set_Value(false);
			}
			this.SetKillSwitchLabelColor(this.dashboard);
			this.SetKillSwitchLabelColor(this.dashboardServers);
			this.SetKillSwitchLabelColor(this.dashboardVPNSettings);
			this.SetKillSwitchLabelColor(this.dashboardDNSSettings);
			this.SetKillSwitchLabelColor(this.dashboardSupport);
			this.SetKillSwitchLabelColor(this.dashboardAccount);
		}

		private void AssignKillSwitchEvents()
		{
			this.dashboard.swbKillSwitch.add_ValueChanged(new EventHandler(this.dashboardSwbKillSwitch_ValueChanged));
			this.dashboardServers.swbKillSwitch.add_ValueChanged(new EventHandler(this.dashboardServersSwbKillSwitch_ValueChanged));
			this.dashboardVPNSettings.swbKillSwitch.add_ValueChanged(new EventHandler(this.dashboardVPNSettingsSwbKillSwitch_ValueChanged));
			this.dashboardDNSSettings.swbKillSwitch.add_ValueChanged(new EventHandler(this.dashboardDNSSettingsSwbKillSwitch_ValueChanged));
			this.dashboardSupport.swbKillSwitch.add_ValueChanged(new EventHandler(this.dashboardSupportSwbKillSwitch_ValueChanged));
			this.dashboardAccount.swbKillSwitch.add_ValueChanged(new EventHandler(this.dashboardAccountSwbKillSwitch_ValueChanged));
		}

		private void UnAssignKillSwitchEvents()
		{
			this.dashboard.swbKillSwitch.remove_ValueChanged(new EventHandler(this.dashboardSwbKillSwitch_ValueChanged));
			this.dashboardServers.swbKillSwitch.remove_ValueChanged(new EventHandler(this.dashboardServersSwbKillSwitch_ValueChanged));
			this.dashboardVPNSettings.swbKillSwitch.remove_ValueChanged(new EventHandler(this.dashboardVPNSettingsSwbKillSwitch_ValueChanged));
			this.dashboardDNSSettings.swbKillSwitch.remove_ValueChanged(new EventHandler(this.dashboardDNSSettingsSwbKillSwitch_ValueChanged));
			this.dashboardSupport.swbKillSwitch.remove_ValueChanged(new EventHandler(this.dashboardSupportSwbKillSwitch_ValueChanged));
			this.dashboardAccount.swbKillSwitch.remove_ValueChanged(new EventHandler(this.dashboardAccountSwbKillSwitch_ValueChanged));
		}

		private void SetButtonsColorTable()
		{
			Office2007ColorTable expr_0F = ((Office2007Renderer)GlobalManager.get_Renderer()).get_ColorTable();
			Office2007ButtonItemColorTable expr_1B = expr_0F.get_ButtonItemColors().get_Item(0);
			expr_1B.MouseOver.Background = new LinearGradientColorTable(Color.Gainsboro);
			expr_1B.MouseOver.OuterBorder = new LinearGradientColorTable(Color.Gainsboro);
			expr_1B.MouseOver.InnerBorder = new LinearGradientColorTable(Color.Gainsboro);
			Office2007ButtonItemColorTable expr_79 = expr_0F.get_ButtonItemColors().get_Item(Enum.GetName(typeof(eButtonColor), 0));
			expr_79.Pressed.OuterBorder = new LinearGradientColorTable(Color.FromArgb(40, 0, 0, 0));
			expr_79.Pressed.InnerBorder = new LinearGradientColorTable(Color.White);
			expr_79.Pressed.Background = new LinearGradientColorTable(Color.FromArgb(255, 68, 91, 114));
			expr_79.MouseOver.OuterBorder = new LinearGradientColorTable(Color.FromArgb(40, 0, 0, 0));
			expr_79.MouseOver.InnerBorder = new LinearGradientColorTable(Color.White);
			expr_79.MouseOver.Background = new LinearGradientColorTable(Color.FromArgb(255, 56, 76, 100));
			Office2007ButtonItemColorTable expr_135 = expr_0F.get_ButtonItemColors().get_Item(Enum.GetName(typeof(eButtonColor), 3));
			expr_135.MouseOver.OuterBorder = new LinearGradientColorTable(Color.Transparent);
			expr_135.MouseOver.InnerBorder = new LinearGradientColorTable(Color.Transparent);
			expr_135.MouseOver.Background = new LinearGradientColorTable(Color.Transparent);
			expr_135.Checked.OuterBorder = new LinearGradientColorTable(Color.Transparent);
			expr_135.Checked.InnerBorder = new LinearGradientColorTable(Color.Transparent);
			expr_135.Checked.Background = new LinearGradientColorTable(Color.Transparent);
			this.SetControlsColorTable();
			SideNavColorTable sideNav = ((Office2007Renderer)GlobalManager.get_Renderer()).get_ColorTable().SideNav;
			sideNav.TitleBackColor = Color.LimeGreen;
			sideNav.SideNavItem.MouseOver.BackColors = new Color[]
			{
				ColorFromHex.GetColorFromHex("#445b72")
			};
			sideNav.SideNavItem.MouseOver.BorderColors = new Color[0];
			sideNav.SideNavItem.Selected.BackColors = new Color[]
			{
				this.selectedMenuColor
			};
			sideNav.PanelBackColor = ColorFromHex.GetColorFromHex("#384C64");
			sideNav.SideNavItem.Selected.TextColor = Color.White;
			sideNav.SideNavItem.Selected.BackColors = new Color[]
			{
				ColorFromHex.GetColorFromHex("#384C64")
			};
			Office2007ScrollBarColorTable arg_32D_0 = ((Office2007Renderer)GlobalManager.get_Renderer()).get_ColorTable().AppScrollBar;
			Color color = Color.FromArgb(250, 250, 250);
			Color color2 = Color.FromArgb(180, 180, 180);
			Color color3 = Color.FromArgb(150, 150, 150);
			BackgroundColorBlendCollection backgroundColorBlendCollection = new BackgroundColorBlendCollection();
			BackgroundColorBlend backgroundColorBlend = new BackgroundColorBlend(color, 0f);
			backgroundColorBlendCollection.Add(backgroundColorBlend);
			BackgroundColorBlendCollection backgroundColorBlendCollection2 = new BackgroundColorBlendCollection();
			BackgroundColorBlend backgroundColorBlend2 = new BackgroundColorBlend(color, 0f);
			backgroundColorBlendCollection2.Add(backgroundColorBlend2);
			BackgroundColorBlendCollection arg_327_0 = new BackgroundColorBlendCollection();
			BackgroundColorBlend backgroundColorBlend3 = new BackgroundColorBlend(color3, 0f);
			arg_327_0.Add(backgroundColorBlend3);
			arg_32D_0.Default.Background = new LinearGradientColorTable(color);
			arg_32D_0.Default.TrackBackground = backgroundColorBlendCollection2;
			arg_32D_0.Default.ThumbBackground = backgroundColorBlendCollection;
			arg_32D_0.Default.ThumbSignBackground = new LinearGradientColorTable(color3);
			arg_32D_0.Default.TrackSignBackground = new LinearGradientColorTable(color2);
			arg_32D_0.Default.ThumbOuterBorder = new LinearGradientColorTable(color3);
			Office2007ColorTable expr_399 = ((Office2007Renderer)GlobalManager.get_Renderer()).get_ColorTable();
			Office2007ScrollBarColorTable expr_39F = expr_399.ScrollBar;
			expr_39F.Default.Background = new LinearGradientColorTable(color);
			expr_39F.Default.TrackBackground = backgroundColorBlendCollection2;
			expr_39F.Default.ThumbBackground = backgroundColorBlendCollection;
			expr_39F.Default.ThumbSignBackground = new LinearGradientColorTable(color3);
			expr_39F.Default.TrackSignBackground = new LinearGradientColorTable(color2);
			expr_39F.Default.ThumbOuterBorder = new LinearGradientColorTable(color3);
			MainForm.SetComboBoxColorStyle();
			Office2007DataGridViewColorTable expr_406 = expr_399.DataGridView;
			expr_406.ColumnHeaderMouseOverBackground = new LinearGradientColorTable(color2);
			expr_406.ColumnHeaderMouseOverBorder = color2;
			expr_406.ColumnHeaderSelectedBackground = new LinearGradientColorTable(color2);
			expr_406.ColumnHeaderSelectedMouseOverBackground = new LinearGradientColorTable(color2);
		}

		private static void SetComboBoxColorStyle()
		{
			Office2007ButtonItemColorTable expr_1A = ((Office2007Renderer)GlobalManager.get_Renderer()).get_ColorTable().get_ButtonItemColors().get_Item(0);
			expr_1A.MouseOver.Background = new LinearGradientColorTable(Color.White);
			expr_1A.MouseOver.Text = Color.Black;
		}

		private static void SetComboBoxColorStyle_Obsolete()
		{
			LinearGradientColorTable linearGradientColorTable = new LinearGradientColorTable(Color.DarkGray, Color.DarkGray);
			Office2007Renderer office2007Renderer = GlobalManager.get_Renderer() as Office2007Renderer;
			if (office2007Renderer == null)
			{
				return;
			}
			Office2007ComboBoxColorTable expr_2A = office2007Renderer.get_ColorTable().ComboBox;
			expr_2A.DefaultStandalone.Border = Color.Green;
			expr_2A.DefaultStandalone.Background = Color.White;
			expr_2A.DefaultStandalone.ExpandText = Color.LightGray;
			expr_2A.DefaultStandalone.ExpandBorderInner = linearGradientColorTable;
			expr_2A.DefaultStandalone.ExpandBorderOuter = linearGradientColorTable;
			expr_2A.MouseOver.Border = Color.Green;
			expr_2A.MouseOver.Background = Color.White;
			expr_2A.MouseOver.ExpandText = Color.LightGray;
			expr_2A.MouseOver.ExpandBorderInner = linearGradientColorTable;
			expr_2A.MouseOver.ExpandBorderOuter = linearGradientColorTable;
		}

		private void SetControlsColorTable()
		{
			this.dashboard.btnConnect.set_ColorTable(0);
			this.dashboardServers.btnConnect.set_ColorTable(0);
			this.dashboardVPNSettings.btnConnect.set_ColorTable(0);
			this.dashboardDNSSettings.btnConnect.set_ColorTable(0);
			this.dashboardSupport.btnConnect.set_ColorTable(0);
			this.dashboardAccount.btnConnect.set_ColorTable(0);
			this.btnColapseServers.set_ColorTable(0);
			this.btnColapseVPNSettings.set_ColorTable(0);
			this.btnColapseDNSSettings.set_ColorTable(0);
			this.btnColapseSupport.set_ColorTable(0);
			this.btnColapseAccount.set_ColorTable(0);
			this.btnGroupBy.set_ColorTable(0);
			this.btnSort.set_ColorTable(0);
			this.txtSearchUV.BackColor = this.panel2DashboardColor;
			this.txtSearchUV.txtSearch.BackColor = ColorFromHex.GetColorFromHex("#E2E2E2");
			this.lblSearchUV.BackColor = this.panel2DashboardColor;
			this.dashboard.btnExpand.set_ColorTable(0);
			this.dashboardServers.btnExpand.set_ColorTable(0);
			this.dashboardVPNSettings.btnExpand.set_ColorTable(0);
			this.dashboardDNSSettings.btnExpand.set_ColorTable(0);
			this.dashboardSupport.btnExpand.set_ColorTable(0);
			this.dashboardAccount.btnExpand.set_ColorTable(0);
			this.btnClearLog.set_ColorTable(0);
			this.btnRepairOpenVPN.set_ColorTable(0);
			this.btnRepairIpSecCertificate.set_ColorTable(0);
		}

		private void AssignControlsEvents()
		{
			this.vpnManager.add_PropertyChanged(new PropertyChangedEventHandler(this.VpnManager_PropertyChanged));
			this.apiManager.add_PropertyChanged(new PropertyChangedEventHandler(this.ApiManager_PropertyChanged));
			this.chkMitmDisableIPv6Traffic.add_CheckedChanged(new EventHandler(this.MitmDisableIPv6Traffic_CheckedChanged));
			this.dashboardServers.btnExpand.Click += new EventHandler(this.btnExpand_Click_Server);
			this.dashboardVPNSettings.btnExpand.Click += new EventHandler(this.btnExpand_Click_VPNSettings);
			this.dashboardDNSSettings.btnExpand.Click += new EventHandler(this.btnExpand_Click_DNSSettings);
			this.dashboardSupport.btnExpand.Click += new EventHandler(this.btnExpand_Click_Support);
			this.dashboardAccount.btnExpand.Click += new EventHandler(this.btnExpand_Click_Account);
			this.dashboard.btnConnect.Click += new EventHandler(this.btnConnect_Click);
			this.dashboardServers.btnConnect.Click += new EventHandler(this.btnConnect_Click);
			this.dashboardVPNSettings.btnConnect.Click += new EventHandler(this.btnConnect_Click);
			this.dashboardDNSSettings.btnConnect.Click += new EventHandler(this.btnConnect_Click);
			this.dashboardSupport.btnConnect.Click += new EventHandler(this.btnConnect_Click);
			this.dashboardAccount.btnConnect.Click += new EventHandler(this.btnConnect_Click);
			this.dashboard.btnConnect.DoubleClick += new EventHandler(this.btnConnect_Click);
			this.dashboardServers.btnConnect.DoubleClick += new EventHandler(this.btnConnect_Click);
			this.dashboardVPNSettings.btnConnect.DoubleClick += new EventHandler(this.btnConnect_Click);
			this.dashboardDNSSettings.btnConnect.DoubleClick += new EventHandler(this.btnConnect_Click);
			this.dashboardSupport.btnConnect.DoubleClick += new EventHandler(this.btnConnect_Click);
			this.dashboardAccount.btnConnect.DoubleClick += new EventHandler(this.btnConnect_Click);
			this.dashboard.btnConnect.MouseDown += new MouseEventHandler(this.btnConnect_MouseDown);
			this.dashboardServers.btnConnect.MouseDown += new MouseEventHandler(this.btnConnect_MouseDown);
			this.dashboardVPNSettings.btnConnect.MouseDown += new MouseEventHandler(this.btnConnect_MouseDown);
			this.dashboardDNSSettings.btnConnect.MouseDown += new MouseEventHandler(this.btnConnect_MouseDown);
			this.dashboardSupport.btnConnect.MouseDown += new MouseEventHandler(this.btnConnect_MouseDown);
			this.dashboardAccount.btnConnect.MouseDown += new MouseEventHandler(this.btnConnect_MouseDown);
			this.dashboard.rchTextLog.VisibleChanged += new EventHandler(this.RichTextLog_VisibleChanged);
			this.dashboardServers.rchTextLog.VisibleChanged += new EventHandler(this.RichTextLog_VisibleChanged_Servers);
			this.dashboardVPNSettings.rchTextLog.VisibleChanged += new EventHandler(this.RichTextLog_VisibleChanged_VPN);
			this.dashboardDNSSettings.rchTextLog.VisibleChanged += new EventHandler(this.RichTextLog_VisibleChanged_DNS);
			this.dashboardSupport.rchTextLog.VisibleChanged += new EventHandler(this.RichTextLog_VisibleChanged_Support);
			this.dashboardAccount.rchTextLog.VisibleChanged += new EventHandler(this.RichTextLog_VisibleChanged_Account);
			this.AssignDNSEvents();
			this.AssignKillSwitchEvents();
			this.dashboard.btnLogs.Click += new EventHandler(this.btnLogs_Click);
			this.dashboardServers.btnLogs.Click += new EventHandler(this.btnLogs_Click);
			this.dashboardVPNSettings.btnLogs.Click += new EventHandler(this.btnLogs_Click);
			this.dashboardDNSSettings.btnLogs.Click += new EventHandler(this.btnLogs_Click);
			this.dashboardSupport.btnLogs.Click += new EventHandler(this.btnLogs_Click);
			this.dashboardAccount.btnLogs.Click += new EventHandler(this.btnLogs_Click);
			this.dashboard.btnAccount.Click += new EventHandler(this.btnAccount_Click);
			this.dashboardServers.btnAccount.Click += new EventHandler(this.btnAccount_Click);
			this.dashboardVPNSettings.btnAccount.Click += new EventHandler(this.btnAccount_Click);
			this.dashboardDNSSettings.btnAccount.Click += new EventHandler(this.btnAccount_Click);
			this.dashboardSupport.btnAccount.Click += new EventHandler(this.btnAccount_Click);
			this.dashboardAccount.btnAccount.Click += new EventHandler(this.btnAccount_Click);
			this.txtSearchUV.txtSearch.TextChanged += new EventHandler(this.txtSearchUV_TextChanged);
			this.dgvPackages.SelectionChanged += new EventHandler(this.DataGridView2_SelectionChanged);
			this.AssignMediaLablesEvents();
			this.AssingSocialMediaLabelsEvents();
			AutoUpdater.add_CheckForUpdateEvent(new AutoUpdater.CheckForUpdateEventHandler(this.AutoUpdaterOnCheckForUpdateEvent));
			this.dgvKillSwitch.RowsAdded += new DataGridViewRowsAddedEventHandler(this.DgvKillSwitch_RowsAdded);
			this.dgvKillSwitch.RowsRemoved += new DataGridViewRowsRemovedEventHandler(this.DgvKillSwitch_RowsRemoved);
			this.dashboard.rchInfo.LinkClicked += new LinkClickedEventHandler(this.RchInfo_LinkClicked);
			this.checkChangeExternalIpWorker.DoWork += new DoWorkEventHandler(this.CheckChangeExternalIpWorker_DoWork);
			this.checkChangeExternalIpWorker.WorkerSupportsCancellation = true;
			this.getExternalIpWorker.DoWork += new DoWorkEventHandler(this.GetExternalIpWorker_DoWork);
			this.getExternalIpWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.GetExternalIpWorker_RunWorkerCompleted);
			this.getExternalIpWorker.WorkerSupportsCancellation = true;
			this.connectAmplitudeWorker.DoWork += new DoWorkEventHandler(this.ConnectAmplitudeWorker_DoWork);
			this.connectAmplitudeWorker.WorkerSupportsCancellation = true;
			this.failedConnectAmplitudeWorker.DoWork += new DoWorkEventHandler(this.FailedConnectAmplitudeWorker_DoWork);
			this.failedConnectAmplitudeWorker.WorkerSupportsCancellation = true;
			this.notifyShowWorker.DoWork += new DoWorkEventHandler(this.NotifyShowWorker_DoWork);
			this.notifyShowWorker.WorkerSupportsCancellation = true;
			this.mediaWorker.DoWork += new DoWorkEventHandler(this.MediaWorker_DoWork);
			this.mediaWorker.WorkerSupportsCancellation = true;
			this.mediaWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.MediaWorker_RunWorkerCompleted);
			this.releaseNotesWorker.DoWork += new DoWorkEventHandler(this.ReleaseNotesWorker_DoWork);
			this.releaseNotesWorker.WorkerSupportsCancellation = true;
			this.releaseNotesWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.ReleaseNotesWorker_RunWorkerCompleted);
			this.KBWorker.DoWork += new DoWorkEventHandler(this.KBWorker_DoWork);
			this.KBWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.KBWorker_RunWorkerCompleted);
			this.updateFastestServerListWorker.DoWork += new DoWorkEventHandler(this.UpdateFastestServerListWorker_DoWork);
			this.updateFastestServerListWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.UpdateFastestServerListWorker_RunWorkerCompleted);
			this.updateFastestServerListWorker.WorkerSupportsCancellation = true;
			this.testPingWorker.DoWork += new DoWorkEventHandler(this.TestPingWorker_DoWork);
			this.testPingWorker.WorkerSupportsCancellation = true;
			this.kswWorker.DoWork += new DoWorkEventHandler(this.KswWorker_DoWork);
			this.kswWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.KswWorker_RunWorkerCompleted);
			this.kswWorker.WorkerSupportsCancellation = true;
			this.restartKilledApplicationWorker.DoWork += new DoWorkEventHandler(this.RestartKilledApplicationWorker_DoWork);
			this.restartKilledApplicationWorker.WorkerSupportsCancellation = true;
			this.loggerWorker.DoWork += new DoWorkEventHandler(this.LoggerWorker_DoWork);
			this.loggerWorker.WorkerSupportsCancellation = true;
			this.loggerWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.LoggerWorkerDashboard1_RunWorkerCompleted);
			this.nlmUserILWorker.DoWork += new DoWorkEventHandler(this.NlmUserILWorker_DoWork);
			this.nlmUserILWorker.WorkerSupportsCancellation = true;
			this.AssignRadioButtonsEvents();
			this.dgvDNSServers.MouseLeave += new EventHandler(this.dgvDNSServers_MouseLeave);
			this.dgvDNSServers.MouseDown += new MouseEventHandler(this.dgvDNSServers_MouseDown);
			this.nlmUser.PropertyChanged += new PropertyChangedEventHandler(this.NlmUser_PropertyChanged);
			this.btnAddRoute.Click += delegate(object sender, EventArgs e)
			{
				this.btnAddRoute_Click(sender, e, 4193, "AssignControlsEvents");
			};
			this.btnRestoreInternet.Click += delegate(object sender, EventArgs e)
			{
				this.btnRestoreInternet_Click(sender, e, 4194, "AssignControlsEvents");
			};
			this.btnDeleteDefaultRoute.Click += delegate(object sender, EventArgs e)
			{
				this.btnDeleteDefaultRoute_Click(sender, e, 4195, "AssignControlsEvents");
			};
			this.btnDeleteRoute.Click += delegate(object sender, EventArgs e)
			{
				this.btnDeleteRoute_Click(sender, e, 4196, "AssignControlsEvents");
			};
			this.dgvServers.GotFocus += new EventHandler(this.DgvServers_GotFocus);
		}

		private void DgvServers_GotFocus(object sender, EventArgs e)
		{
			if (this.firstDgvServerGetFocus)
			{
				this.logger.log("prima sincronizare cu focusul");
				if (this.dgvServers.SelectedRows.Count > 0)
				{
					DataGridViewRow dataGridViewRow = this.dgvServers.SelectedRows[0];
					int index = this.dgvServers.CurrentRow.Index;
					if (dataGridViewRow.Index != index && dataGridViewRow != null && dataGridViewRow.Visible)
					{
						this.dgvServers.CurrentCell = this.dgvServers[2, dataGridViewRow.Index];
					}
				}
				this.firstDgvServerGetFocus = false;
			}
		}

		private void FailedConnectAmplitudeWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			this.SendAnalisticsFailedConnectedRequest();
		}

		private void NlmUserILWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			this.NlmUserIL();
		}

		private void NlmUserIL()
		{
			if (this.IsInternetLock() && this.testKswPing && this.vpnManager.get_ConnectionStatus() != "Connecting..." && this.vpnManager.get_ConnectionStatus() != "Connected")
			{
				this.logger.log("s-a produs NlmUserIL");
				this.logger.log("Status conexiune = " + this.vpnManager.get_ConnectionStatus());
				this.logger.log("isVPNConnectionInterrupted = " + this.isVPNConnectionInterrupted.ToString());
				this.logger.log("disponibilitate retea = " + this.IsNetworkAvailable().ToString());
				bool flagAR = this.GetFlagAR();
				if (this.autoReconnect && (flagAR || this.isVPNConnectionInterrupted))
				{
					Thread.Sleep(2000);
					this.logger.log("Este ping- testKswPing");
					this.timerPingServerWhenInternetLock.Stop();
					this.testKswPing = false;
					this.logger.log("Attempting to reconnect to the server...");
					string text = this.dashboard.lnkServers.Text;
					this.logger.log("Attempting to reconnect to the server...(din NlmUserIL)");
					if (!(text == "Fastest Server") && !(text == "Fastest Favourite") && !(text == "Rotating Favourites") && !this.isAutomaticProtocol)
					{
						this.AutoReconnect();
						return;
					}
					if (flagAR)
					{
						this.AutoReconnect();
						return;
					}
					this.ReconnectForAutomaticProtocolAndFastestServer(text, 4312, "NlmUserIL");
					return;
				}
				else
				{
					this.logger.log("Nu s-a incercat autoreconectul - din NlmUserIL");
				}
			}
		}

		private void NlmUser_PropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			if (!this.IsInternetLock() && e.PropertyName == "Connectivity")
			{
				this.logger.log("s-a produs NlmUser_PropertyChanged");
				this.logger.log("Status conexiune = " + this.vpnManager.get_ConnectionStatus());
				this.logger.log("isVPNConnectionInterrupted = " + this.isVPNConnectionInterrupted.ToString());
				this.logger.log("disponibilitate retea = " + this.IsNetworkAvailable().ToString());
				bool flagAR = this.GetFlagAR();
				if (this.autoReconnect && (flagAR || this.isVPNConnectionInterrupted))
				{
					if (this.IsNetworkAvailable())
					{
						Thread.Sleep(2000);
						this.logger.log("Este retea");
						this.logger.log("Attempting to reconnect to the server...");
						string text = this.dashboard.lnkServers.Text;
						this.logger.log("Attempting to reconnect to the server...(din Nlm_propertyChanged)");
						if (!(text == "Fastest Server") && !(text == "Fastest Favourite") && !(text == "Rotating Favourites") && !this.isAutomaticProtocol)
						{
							this.AutoReconnect();
						}
						else if (flagAR)
						{
							this.AutoReconnect();
						}
						else
						{
							this.ReconnectForAutomaticProtocolAndFastestServer(text, 4366, "NlmUser_PropertyChanged");
						}
					}
					else
					{
						this.logger.log("Nu este retea");
					}
				}
				if (this.IsNetworkAvailable())
				{
					this.SetImagesStatusNotConnected();
				}
			}
		}

		public bool IsNetworkAvailable()
		{
			return this.nlmUser.NLM.IsConnectedToInternet;
		}

		private void KBWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			if (e.Error != null)
			{
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.lblInfoKB.Text = "Content not available at this moment.";
					}));
					return;
				}
				this.lblInfoKB.Text = "Content not available at this moment.";
				return;
			}
			else
			{
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.lblInfoKB.Text = string.Empty;
					}));
					return;
				}
				this.lblInfoKB.Text = string.Empty;
				return;
			}
		}

		private void KBWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			this.UpdatKBShortAsync("https://download.ibvp.net/AIO_2.x/knowledgebase.html");
		}

		private void NotifyShowWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			string text = (string)e.Argument;
			this.logger.log("s-a afisat in balon mesajul urmator : " + text);
			this.notifyIconIbVPN.BalloonTipTitle = "ibVPN Notification";
			this.notifyIconIbVPN.BalloonTipText = text;
			this.notifyIconIbVPN.BalloonTipIcon = ToolTipIcon.Info;
			this.notifyIconIbVPN.ShowBalloonTip(25000);
		}

		private void ConnectAmplitudeWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			this.SendAnalisticsConnectedRequest();
		}

		private void LoggerWorkerDashboard1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			int length = this.vpnManager.get_TxtLog().Length;
			if (length > 11)
			{
				string a = this.vpnManager.get_TxtLog().Substring(length - 11, 9).ToUpper();
				if ((a == "CONNECTED" || a == "ESSFULLY." || a == "ONNECTED.") && !this.loggerWorker.IsBusy && this.loggerWorkerContinue)
				{
					this.loggerWorker.RunWorkerAsync();
					this.loggerWorkerContinue = false;
					if (this.loggerWorkerContinueFromServerChanged)
					{
						this.loggerWorkerContinue = true;
					}
					this.loggerWorkerContinueFromServerChanged = false;
				}
			}
		}

		private void SetFinalLogs()
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.SetRchLogText();
					this.SetLogs(this.txtLog);
					this.SetClipboardButton();
				}));
				return;
			}
			this.SetRchLogText();
			this.SetLogs(this.txtLog);
			this.SetClipboardButton();
		}

		private void LoggerWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			this.SetFinalLogs();
		}

		private void GetExternalIpWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			this.SetProtocolLabel();
			this.SetCheckIpNewLocation();
			if (!this.dashboard.lnkCheckIP.Visible)
			{
				this.SeLinkCheckIpVisibility();
			}
			this.InitializeInfoDashboardAndChart();
		}

		private void SeLinkCheckIpVisibility()
		{
			this.dashboard.lnkCheckIP.Visible = true;
			this.dashboardServers.lnkCheckIP.Visible = true;
			this.dashboardVPNSettings.lnkCheckIP.Visible = true;
			this.dashboardDNSSettings.lnkCheckIP.Visible = true;
			this.dashboardSupport.lnkCheckIP.Visible = true;
			this.dashboardAccount.lnkCheckIP.Visible = true;
		}

		private void GetExternalIpWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			try
			{
				this.SetIpDashboardLabel();
			}
			catch
			{
			}
		}

		private void ReleaseNotesWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.lblInfoReleaseNotes.Text = "Release notes:";
				}));
				return;
			}
			this.lblInfoReleaseNotes.Text = "Release notes:";
		}

		private void ReleaseNotesWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			this.UpdateLblVersionShortAsync("https://download.ibvp.net/AIO_2.x/releasenotes.html");
		}

		private void MediaWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			this.btnUpdateWasClicked = false;
			this.tabUpdateWasClicked = false;
		}

		private void MediaWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			try
			{
				AutoUpdater.Start("https://download.ibvp.net/AIO_2.x/ibvpn.xml");
				if (!this.tabUpdateWasClicked)
				{
					this.GetAPINews();
					this.SetPromoPictureBox();
				}
			}
			catch
			{
			}
		}

		private void RestartKilledApplicationWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			if (!this.restartKilledApplicationWorker.CancellationPending)
			{
				this.logger.log("restartKilledApplicationWorker nu este cancellationpending - s-a lansat  RestartKilledApplications");
				this.RestartKilledApplications();
				return;
			}
			this.logger.log("restartKilledApplicationWorker este cancellationpending - nu s-a lansat  RestartKilledApplications");
		}

		private void KswWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
		}

		private void KswWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			if (!this.kswWorker.CancellationPending)
			{
				this.logger.log("kswWorker nu este in cancellationPending si s-a lansat KillProcesses");
				this.KillProcesses();
				return;
			}
			this.logger.log("kswWorker este in cancellationPending si nu s-a lansat KillProcesses");
		}

		private void TestPingWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			if (!this.testPingWorker.CancellationPending)
			{
				this.TestPing();
			}
		}

		private void AssignRadioButtonsEvents()
		{
			this.rbAutomatic.CheckedChanged += new EventHandler(this.radioButtons_CheckedChanged);
			this.rbL2TP.CheckedChanged += new EventHandler(this.radioButtons_CheckedChanged);
			this.rbPPTP.CheckedChanged += new EventHandler(this.radioButtons_CheckedChanged);
			this.rbSSTP.CheckedChanged += new EventHandler(this.radioButtons_CheckedChanged);
			this.rbIPSec.CheckedChanged += new EventHandler(this.radioButtons_CheckedChanged);
			this.rbOpenVPN_UDP.CheckedChanged += new EventHandler(this.radioButtons_CheckedChanged);
			this.rbOpenVPN_TCP.CheckedChanged += new EventHandler(this.radioButtons_CheckedChanged);
			this.rbApplicationsKsw.CheckedChanged += new EventHandler(this.rbKsw_CheckedChanged);
			this.rbInternetKsw.CheckedChanged += new EventHandler(this.rbKsw_CheckedChanged);
		}

		private void SetInternetKswControlsEnabled(bool enable)
		{
			this.btnRestoreNet.Enabled = enable;
		}

		private void SetAppKswControlsEnabled(bool enable)
		{
			this.chkAskReopenClosedApplications.Enabled = enable;
			this.dgvKillSwitch.Enabled = enable;
			this.btnBrowse.Enabled = enable;
			this.btnProcess.Enabled = enable;
			this.btnRemoveSelected.Enabled = enable;
		}

		private void rbKsw_CheckedChanged(object sender, EventArgs e)
		{
			RadioButton radioButton = sender as RadioButton;
			if (radioButton != null && radioButton.Checked)
			{
				if (radioButton.Text == "Internet KillSwitch")
				{
					if (!this.swbKillSwitch.get_Value())
					{
						this.SetKswValues(true);
						return;
					}
					if (this.ShowKswMessageWindow(false, 4805, "rbKsw_CheckedChanged").Yes)
					{
						this.SetKswValues(true);
						return;
					}
				}
				else
				{
					this.SetKswValues(false);
					if (this.swbKillSwitch.get_Value())
					{
						this.ShowAppsAndRunningProcessesWhenKswListIsEmpty();
					}
				}
			}
		}

		private void SetKswValues(bool enable)
		{
			this.SetInternetKswControlsEnabled(enable);
			this.SetAppKswControlsEnabled(!enable);
			this.internetLock = enable;
			if (enable)
			{
				this.XmlWriter("internetLock", "True");
				return;
			}
			this.XmlWriter("internetLock", "False");
		}

		private void dgvDNSServers_MouseDown(object sender, MouseEventArgs e)
		{
			this.dgvDNSServerWasClicked = true;
		}

		private void dgvDNSServers_MouseLeave(object sender, EventArgs e)
		{
			this.dgvDNSServerWasClicked = false;
		}

		private void btnConnect_MouseDown(object sender, MouseEventArgs e)
		{
			string text = "Connect/Disconnect button pressed by user - " + this.dashboard.btnConnect.Text;
			this.UpdateKillSwitchLogger(text);
			this.logger.log(text);
			if (!(this.dashboard.btnConnect.Text == "DISCONNECT") && !(this.dashboard.btnConnect.Text == "CANCEL"))
			{
				this.goDisconnectIfKsw1IsOn = false;
			}
			else
			{
				this.goDisconnectIfKsw1IsOn = true;
			}
			if (!(this.dashboard.btnConnect.Text == "DISCONNECT") && !(this.dashboard.btnConnect.Text == "CANCEL"))
			{
				this.buttonDisconnectWasClickedNew = false;
			}
			else
			{
				this.buttonDisconnectWasClicked = true;
				this.buttonDisconnectWasClickedNew = true;
			}
			if (this.dashboard.btnConnect.Text == "CONNECT")
			{
				this.buttonConnectWasClicked = true;
			}
			else
			{
				this.buttonConnectWasClicked = false;
			}
			if (this.dashboard.btnConnect.Text == "CONNECT")
			{
				if (this.dashboard.lnkServers.Text == "Rotating Favourites")
				{
					this.suntemInProcesulRF = true;
					return;
				}
			}
			else if (this.dashboard.lnkServers.Text == "Rotating Favourites")
			{
				this.indexRF = 0;
				this.disconnectedRF = false;
				this.timerRotatingFavourites.Stop();
				this.suntemInProcesulRF = false;
			}
		}

		private void SetUpdateFastestServerListWorkerStartSource(string source)
		{
			if (source == "workerStartsFromButton")
			{
				this.workerStartsFromButton = true;
				this.workerStartsFromAfterDNSOff = false;
				this.workerStartsFromVPNPropertyChanged = false;
			}
			if (source == "workerStartsFromAfterDNSOff")
			{
				this.workerStartsFromButton = false;
				this.workerStartsFromAfterDNSOff = true;
				this.workerStartsFromVPNPropertyChanged = false;
			}
			if (source == "workerStartsFromVPNPropertyChanged")
			{
				this.workerStartsFromButton = false;
				this.workerStartsFromAfterDNSOff = false;
				this.workerStartsFromVPNPropertyChanged = true;
			}
		}

		private void UpdateFastestServerListWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			this.logger.log("trece 1");
			if (e.Error != null)
			{
				this.logger.log("trece 2");
				this.helper.MessageBoxShow("get fastest server list process error.", "ibVPN client notification/info message", 2, true, true);
				return;
			}
			if (e.Cancelled)
			{
				this.logger.log("trece 3");
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.SetControlsStatusWaitingForFSList(true);
					}));
				}
				else
				{
					this.SetControlsStatusWaitingForFSList(true);
				}
				if (this.dashboard.lnkServers.Text == "Fastest Server")
				{
					this.fastServersListWasCreated = false;
				}
				else if (this.dashboard.lnkServers.Text == "Fastest Favourite")
				{
					this.fastFavouritesListWasCreated = false;
				}
				this.SetGridConnectedServerColor();
				this.SetGridNotConnectedServerColorWhenServerChange();
				this.lastConnectedServerName = string.Empty;
				this.SetButtonConnectStatus(true);
				this.SetGridConnectedServerColor();
				this.RefreshControlsEnabled();
				this.SetProtocolListEnabled(true);
				this.SetButtonsRepairEnabled(true);
				this.cmbDebugLevel.Enabled = true;
				this.menuItem1.Enabled = true;
				this.menuItem2.Enabled = false;
				this.SetControlsPrivacyEnabled(true);
				this.rbInternetKsw.Enabled = true;
				this.rbApplicationsKsw.Enabled = true;
				return;
			}
			this.logger.log("trece 4");
			if (this.dashboard.lnkServers.Text == "Fastest Server")
			{
				this.fastServersListWasCreated = true;
			}
			else if (this.dashboard.lnkServers.Text == "Fastest Favourite")
			{
				this.fastFavouritesListWasCreated = true;
			}
			this.buttonDisconnectWasClickedNew = false;
			if (this.workerStartsFromAfterDNSOff)
			{
				this.ConnectingComplex(5064, "UpdateFastestServerListWorker_RunWorkerCompleted");
				return;
			}
			if (this.workerStartsFromVPNPropertyChanged)
			{
				this.btnConnect_ClickFaraFastServers(5066, "UpdateFastestServerListWorker_RunWorkerCompleted");
				return;
			}
			this.btnConnect_ClickFaraFastServers(5069, "UpdateFastestServerListWorker_RunWorkerCompleted");
		}

		private void UpdateFastestServerListWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			this.GetFastestServersList(this.dashboard.lnkServers.Text, 5086, "UpdateFastestServerListWorker_DoWork");
		}

		private void radioButtons_CheckedChanged(object sender, EventArgs e)
		{
			RadioButton radioButton = sender as RadioButton;
			if (radioButton != null && radioButton.Checked)
			{
				this.SetLinkProtocolText(radioButton.Text);
			}
			if (this.dashboard.lnkProtocol.Text != "Automatic")
			{
				this.protocolForConnect = this.dashboard.lnkProtocol.Text;
			}
			this.fastServersListWasCreated = false;
			this.fastFavouritesListWasCreated = false;
			this.WriteServersInXML();
		}

		private void BtnConnect_DoubleClick(object sender, EventArgs e)
		{
		}

		private void CheckChangeExternalIpWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			string text = this.apiManager.GetIp()[0].ToString();
			while (!this.checkChangeExternalIpWorker.CancellationPending)
			{
				Thread.Sleep(1000);
				string text2 = this.apiManager.GetIp()[0].ToString();
				if (text != text2)
				{
					ArrayList arg_7A_0 = this.apiManager.UpdateDNSIP(this.UserId, this.ApiUrl);
					this.logger.log("s-a rulat metoda apiManager.UpdateDNSIP - din worker");
					string text3 = arg_7A_0[0].ToString();
					this.logger.log(string.Concat(new string[]
					{
						"Mesaj de la API : ",
						text3,
						"  !!!!! \n Ip-ul s-a schimbat - oldIp = ...",
						text.Substring(0, 7),
						"; newIp= ...",
						text2.Substring(0, 7)
					}));
					text = text2;
				}
			}
		}

		private void RchInfo_LinkClicked(object sender, LinkClickedEventArgs e)
		{
		}

		private void DgvKillSwitch_RowsRemoved(object sender, DataGridViewRowsRemovedEventArgs e)
		{
		}

		private void DgvKillSwitch_RowsAdded(object sender, DataGridViewRowsAddedEventArgs e)
		{
		}

		private void ApiManager_PropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			ArrayList arrayList = new ArrayList();
			if (e.PropertyName == "LoadServersStatus" && this.apiManager.get_LoadServersStatus() == "Completed")
			{
				this.logger.log("s-a terminat metoda LoadServersAPI - apelare API pt. servere");
				bool flag = false;
				this.SetInitialAvailableProtocols();
				ArrayList favouritesServers = this.GetFavouritesServers();
				int num = 0;
				foreach (object current in favouritesServers)
				{
					if (!this.apiManager.CheckIfServerExists(this.dgvServers, current.ToString()))
					{
						this.DeleteFavourite(current.ToString());
						num++;
					}
				}
				this.RefreshDashboard(false, new int?(favouritesServers.Count - num));
				this.SetConnectButtonStatusWhenNoServers();
				this.logger.log("pas 1");
				arrayList = this.apiManager.serversAPI;
				this.logger.log("pas 2");
				if (arrayList != null)
				{
					if (arrayList.Count > 1)
					{
						this.UserName = arrayList[0].ToString();
						this.logger.log("pas 2.1");
						this.VpnPassword = arrayList[1].ToString();
						this.logger.log("pas 2.2");
						flag = (bool)arrayList[9];
						this.logger.log("pas 3 - load servers initial =" + flag.ToString());
						this.dgvServers.Enabled = true;
						this.initialAccountServerList = this.dgvAccountServers.DataSource;
						this.SetAccountGridServers();
						if (flag || this.changePackages)
						{
							this.InitializeTimerRefreshServersList();
							this.InitializeTimerFreetrial();
							this.freetrial = (bool)arrayList[7];
							this.freetrialtime = (string)arrayList[8];
							if (this.freetrialtime == string.Empty)
							{
								this.freetrialtime = "0";
							}
							this.freetrialtime = (Convert.ToInt64(this.freetrialtime) + 60L).ToString();
							if (!this.freetrial)
							{
								this.ExpirationDate = this.apiManager.GetExpirationDate(this.dgvPackages).ToString();
								this.SetLblFreeTrialVisibility(false);
								this.SetPackagesExpirationDate();
							}
							else
							{
								this.SetLblFreeTrialVisibility(true);
								long num2 = Convert.ToInt64(this.freetrialtime);
								if (num2 > 0L)
								{
									if (num2 / 60L <= 15L)
									{
										this.SetLblReamainingTimeColor();
									}
									this.timerFreetrial.Start();
									this.ExpirationDate = this.TransformFreetrialtime(this.freetrialtime);
									this.SetPackagesExpirationDate();
								}
								else
								{
									this.ExpirationDate = "00h : 00m";
									this.SetPackagesExpirationDate();
									this.ShowFreeTrialForm();
								}
							}
						}
						this.changePackages = false;
						this.logger.log("pas 2.3");
						this.isDnson = (bool)arrayList[6];
						this.logger.log("pas 2.4");
						if (flag)
						{
							this.logger.log("incepe apelul GetMedia ");
							ArrayList arrayList2 = new ArrayList();
							arrayList2.Add("Check our latest blogpost");
							arrayList2.Add("https://www.ibvpn.com/blog/");
							this.logger.log("s-a terminat apelul GetMedia ");
							this.logger.log("pas 4");
							if (arrayList2.Count > 1)
							{
								this.NewsLink = arrayList2[1].ToString();
							}
							else
							{
								this.noNews = true;
							}
							this.logger.log("pas 5");
							string newsLabels = arrayList2[0].ToString();
							this.logger.log("pas 6");
							this.SetNewsLabels(newsLabels);
							this.logger.log("pas 7");
							if (!this.getExternalIpWorker.IsBusy)
							{
								this.getExternalIpWorkerRunInitial = true;
								this.getExternalIpWorker.RunWorkerAsync();
							}
						}
						this.logger.log("pas 8");
					}
					else
					{
						this.errorLoadServerList = true;
						this.logger.log("pas 10");
						if (this.apiManager.get_ConnectionError() != "True")
						{
							this.helper.MessageBoxShow("Connection error. Please try again later !", "ibVPN client notification/info message", 1, true, true);
						}
						if (this.errorLoadServerList)
						{
							this.sniLogout_Click(this, null);
						}
						this.logger.log("pas 11");
					}
				}
				else
				{
					this.logger.log("error - cannot continue");
					string message = "Connection error." + Environment.NewLine + "Please restart application and try again.";
					this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 1, true, true);
					this.ExitApp();
				}
				if (flag)
				{
					this.InitializeControlsAfterLoadServers();
				}
				else
				{
					this.initialServerList = this.dgvServers.DataSource;
					this.dgvServersCopy.DataSource = this.initialServerList;
				}
				this.logger.log("dupa InitializeControlsAfterLoadServers - incepe sortare implicita");
				this.logger.log("pas 41");
				this.isServelistGridviewInitialized = false;
				this.logger.log("pas 42");
				this.InitializeGridAgain();
				this.logger.log("pas 43");
				this.SetAvailableProtocolsForFV();
				this.RefreshDashboard(true, new int?(favouritesServers.Count - num));
				this.SortInitialList();
				this.logger.log("pas 44");
				this.dgvServers.DefaultCellStyle.SelectionForeColor = Color.Black;
				this.dgvPackages.DefaultCellStyle.SelectionForeColor = Color.Black;
				this.dgvKillSwitch.DefaultCellStyle.SelectionForeColor = Color.Black;
				this.dgvServers.CellValueChanged += new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
				if (flag)
				{
					this.SetInitialMainFormPosition();
				}
				this.currentFavouriteNumber = this.GetFavouritesServers().Count;
				if (this.currentFavouriteNumber == 0)
				{
					this.apiManager.DeleteServerFavouriteRow(this.dgvServers);
					this.fastestFavouriteWasDeleted = true;
				}
				this.FavoriteItem_Click(this, null);
				if (flag)
				{
					this.adaptors = this.dnsManager.PrepareAdaptors(true);
				}
				if (flag)
				{
					this.SetDebugLevelForAutoconnect();
				}
				if (!flag)
				{
					if (this.beforeRefreshServerName != null && this.beforeRefreshServerName != string.Empty)
					{
						this.SetGridViewSelectedItem_New(this.beforeRefreshServerName, true, 5439, "ApiManager_PropertyChanged");
					}
					else
					{
						this.SetGridViewSelectedItem_New("Fastest Server", true, 5443, "ApiManager_PropertyChanged");
					}
					this.btnRefreshServerList.Enabled = true;
					this.SetControlsStatusWhenNoServers(true);
				}
				this.resetFilters = false;
				if (flag)
				{
					this.initialDgvWidth = this.dgvServers.MinimumSize.Width;
					this.initialDgvHeight = this.dgvServers.MinimumSize.Height;
					this.dgvServers.MinimumSize = new Size(0, 0);
					this.dgvServers.MaximumSize = new Size(0, 0);
					this.dgvServers.Size = new Size(this.initialDgvWidth, this.GetGridHeight());
				}
				this.menuItem1.Enabled = true;
				this.menuItem2.Enabled = false;
				this.CreateTooltipsForDisabledControls();
				this.timerRotatingFavourites.Interval = this.timerRotatingFavouritesUpdate;
				if (flag && !this.autoconnectLogin)
				{
					this.SetInitialDefaultGateway(5470, "ApiManager_PropertyChanged");
				}
				this.WriteDNSServers();
				this.logger.log("final total");
			}
		}

		public void SetInitialDefaultGateway([CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"s-a rulat SetInitialDefaultGateway()- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			this.defaultGateway = MainForm.GetDefaultGateway();
			if (this.defaultGateway != null && this.defaultGateway.ToString() != "0.0.0.0")
			{
				this.XmlWriter("defaultGateway", this.defaultGateway.ToString());
				return;
			}
			IPAddress iPAddress = IPAddress.Parse(this.savedDefaultGateway);
			if (iPAddress.ToString() != "0.0.0.0")
			{
				this.defaultGateway = iPAddress;
			}
		}

		private void CreateTooltipsForDisabledControls()
		{
			this.CreateTooltips(this.pnlInfoButtonDisable, "The 'Refresh List' button is disabled" + Environment.NewLine + " while connected to the VPN.");
			this.CreateTooltips(this.pnlProtocolTooltip, "The protocol cannot be changed" + Environment.NewLine + "while connected to the VPN.");
			this.CreateTooltips(this.pnlPrivacyTooltip, "The privacy settings cannot be changed" + Environment.NewLine + "while connected to the VPN.");
			this.CreateTooltips(this.pnlComboOpenVPNTooltip, "The debug level cannot be changed" + Environment.NewLine + "while connected to the VPN.");
			this.CreateTooltips(this.pnlButtonOpenVPNTooltip, "The 'Repair OpenVPN' button is disabled" + Environment.NewLine + " while connected to the VPN.");
			this.CreateTooltips(this.pnlButtonIpsecTooltip, "The 'Repair IpSec certificate' button is disabled" + Environment.NewLine + " while connected to the VPN.");
			this.CreateTooltips(this.pnlSwbKswTooltip, this.Ksw1Message1);
		}

		private void SetLblFreeTrialVisibility(bool visible)
		{
			this.dashboard.lblFreeTimeRemaining.Visible = visible;
			this.dashboardServers.lblFreeTimeRemaining.Visible = visible;
			this.dashboardVPNSettings.lblFreeTimeRemaining.Visible = visible;
			this.dashboardDNSSettings.lblFreeTimeRemaining.Visible = visible;
			this.dashboardSupport.lblFreeTimeRemaining.Visible = visible;
			this.dashboardAccount.lblFreeTimeRemaining.Visible = visible;
		}

		private string TransformFreetrialtime(string freetrialtime)
		{
			int expr_0A = Convert.ToInt32(freetrialtime);
			int num = expr_0A / 3600;
			int num2 = expr_0A % 3600 / 60;
			string str = string.Empty;
			string arg_6C_0 = (num < 10) ? ("0" + num.ToString()) : num.ToString();
			str = ((num2 < 10) ? ("0" + num2.ToString()) : num2.ToString());
			string result = arg_6C_0 + "h : " + str + "m";
			if (num + num2 == 0)
			{
				this.lifeTime = 0;
				this.logger.log("app. contor 00:00 - pas 1");
				this.timerFreetrial.Stop();
				this.logger.log("app. contor 00:00 - pas 2");
				ArrayList freeTrialParameters = this.apiManager.GetFreeTrialParameters(this.UserId, this.Password, this.ApiUrl, 0);
				if (freeTrialParameters != null && freeTrialParameters.Count > 0)
				{
					while (freeTrialParameters.Count != 3)
					{
						if (freeTrialParameters.Count > 0)
						{
							int num3 = Convert.ToInt32(freeTrialParameters[0]);
							freeTrialParameters = this.apiManager.GetFreeTrialParameters(this.UserId, this.Password, this.ApiUrl, num3);
						}
					}
				}
				this.logger.log("app. contor 00:00 - pas 3");
				if (freeTrialParameters != null && freeTrialParameters.Count > 0)
				{
					this.logger.log("app. contor 00:00 - pas 4");
					int num4 = (int)freeTrialParameters[0];
					bool flag = (bool)freeTrialParameters[1];
					int num5 = Convert.ToInt32((string)freeTrialParameters[2]);
					this.logger.log("app. contor 00:00 - pas 5");
					if (num4 == 3)
					{
						this.logger.log("app. contor 00:00 - pas 6");
						this.SetAppPropertiesWhenTrialExpired();
					}
					else if (num4 == 0)
					{
						this.logger.log("app. contor 00:00 - pas 7");
						if (flag && num5 <= 0)
						{
							this.logger.log("app. contor 00:00 - pas 8");
							this.SetAppPropertiesWhenTrialExpired();
						}
					}
				}
				else
				{
					this.logger.log("app. contor 00:00 - pas 9");
					this.SetAppPropertiesWhenTrialExpired();
				}
			}
			this.logger.log("app. contor 00:00 - pas 10");
			return result;
		}

		private void SetAppPropertiesWhenTrialExpired()
		{
			if (this.swbIbDNS.get_Value())
			{
				this.swbIbDNS.set_Value(false);
			}
			if (this.vpnManager.get_ConnectionStatus() == "Connected")
			{
				this.vpnManager.VPNConnectionManage(-1.ToString(), null, null, null, null, null, null, null, 0, null, null, null, null, null);
			}
			this.ExpirationDate = "00h : 00m";
			this.SetPackagesExpirationDate();
			this.ShowFreeTrialForm();
		}

		private void ShowFreeTrialForm()
		{
			FreeTrialForm freeTrialForm = new FreeTrialForm(this.UserId, this.Password, this.ApiUrl);
			if (base.get_WindowState() != FormWindowState.Normal)
			{
				Point point = new Point(Screen.PrimaryScreen.Bounds.Width / 2, Screen.PrimaryScreen.Bounds.Height / 2);
				int x = point.X - freeTrialForm.Width / 2;
				int y = point.Y - this.centerYScreen / 2;
				freeTrialForm.Location = new Point(x, y);
				freeTrialForm.StartPosition = FormStartPosition.Manual;
			}
			freeTrialForm.ShowDialog();
			if (freeTrialForm.IsActiveUser)
			{
				this.refreshServersListContor = 1;
				this.lifeTime = 1;
				this.changePackages = true;
				this.fastServersListWasCreated = false;
				this.fastFavouritesListWasCreated = false;
				this.btnRefreshServerList_Click(this, null);
			}
			if (freeTrialForm.CloseBreakHearts)
			{
				this.RestoreDNS(5680, "ShowFreeTrialForm");
				this.ExitApp();
			}
		}

		private void ExitApp()
		{
			this.checkChangeExternalIpWorker.CancelAsync();
			this.getExternalIpWorker.CancelAsync();
			this.updateFastestServerListWorker.CancelAsync();
			this.testPingWorker.CancelAsync();
			this.kswWorker.CancelAsync();
			this.restartKilledApplicationWorker.CancelAsync();
			this.mediaWorker.CancelAsync();
			this.releaseNotesWorker.CancelAsync();
			this.loggerWorker.CancelAsync();
			this.connectAmplitudeWorker.CancelAsync();
			this.failedConnectAmplitudeWorker.CancelAsync();
			this.notifyShowWorker.CancelAsync();
			Environment.Exit(1);
		}

		private void SetPromoPictureBox()
		{
			ArrayList promo = this.apiManager.GetPromo(this.UserId, this.Password, this.ApiUrl, "getPromo");
			if (promo.Count > 1 && promo[0].ToString() == "0")
			{
				bool arg_6A_0 = Convert.ToBoolean(promo[1]);
				string img = promo[3].ToString();
				string img2 = promo[4].ToString();
				if (arg_6A_0)
				{
					this.SetPromoPictureBoxVisibility(true);
					try
					{
						this.LoadPromoImage(img);
						goto IL_8D;
					}
					catch
					{
						this.LoadPromoImage(img2);
						goto IL_8D;
					}
				}
				this.SetPromoPictureBoxVisibility(false);
				IL_8D:
				this.PromoLink = promo[2].ToString();
			}
		}

		private void SetPromoPictureBoxVisibility(bool visible)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.sniPromo.set_Visible(visible);
				}));
				return;
			}
			this.sniPromo.set_Visible(visible);
		}

		private void LoadPromoImage(string img)
		{
			try
			{
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.pctPromo.Load(img);
						this.sniPromo.set_Image(this.pctPromo.Image);
					}));
				}
				else
				{
					this.pctPromo.Load(img);
					this.sniPromo.set_Image(this.pctPromo.Image);
				}
			}
			catch
			{
			}
		}

		private void SetConnectButtonStatusWhenNoServers()
		{
			if (this.fastestFavouriteWasDeleted)
			{
				if (this.dgvServers.Rows.Count == 3)
				{
					this.SetDisabledButtonConnectColor();
					return;
				}
			}
			else if (this.dgvServers.Rows.Count == 4)
			{
				this.SetDisabledButtonConnectColor();
			}
		}

		private void SetConnectButtonStatusWhenNoServers1()
		{
			if (this.fastestFavouriteWasDeleted)
			{
				if (this.dgvServers.Rows.Count == 3)
				{
					this.SetControlsStatusWhenNoServers(false);
					return;
				}
				this.SetControlsStatusWhenNoServers(true);
				return;
			}
			else
			{
				if (this.dgvServers.Rows.Count == 4)
				{
					this.SetControlsStatusWhenNoServers(false);
					return;
				}
				this.SetControlsStatusWhenNoServers(true);
				return;
			}
		}

		private void SetControlsStatusWhenNoServers(bool status)
		{
			if (this.dashboard.lnkServers.Text != "Fastest Server" && this.dashboard.lnkServers.Text != "Fastest Favourite")
			{
				this.dashboard.btnConnect.Enabled = status;
				this.dashboardServers.btnConnect.Enabled = status;
				this.dashboardVPNSettings.btnConnect.Enabled = status;
				this.dashboardDNSSettings.btnConnect.Enabled = status;
				this.dashboardSupport.btnConnect.Enabled = status;
				this.dashboardAccount.btnConnect.Enabled = status;
			}
			this.btnBrowse.Enabled = status;
			this.btnProcess.Enabled = status;
			this.btnRemoveSelected.Enabled = status;
			this.dgvKillSwitch.Enabled = status;
			this.menuItem1.Enabled = status;
			this.menuItem2.Enabled = status;
		}

		private void SetControlsStatusWaitingForFSList(bool status)
		{
			this.dashboard.btnConnect.Enabled = status;
			this.dashboardServers.btnConnect.Enabled = status;
			this.dashboardVPNSettings.btnConnect.Enabled = status;
			this.dashboardDNSSettings.btnConnect.Enabled = status;
			this.dashboardSupport.btnConnect.Enabled = status;
			this.dashboardAccount.btnConnect.Enabled = status;
			this.dashboard.swbKillSwitch.Enabled = status;
			this.dashboardServers.swbKillSwitch.Enabled = status;
			this.dashboardVPNSettings.swbKillSwitch.Enabled = status;
			this.dashboardDNSSettings.swbKillSwitch.Enabled = status;
			this.dashboardSupport.swbKillSwitch.Enabled = status;
			this.dashboardAccount.swbKillSwitch.Enabled = status;
			this.swbKillSwitch.Enabled = status;
			this.btnBrowse.Enabled = status;
			this.btnProcess.Enabled = status;
			this.btnRemoveSelected.Enabled = status;
			this.dgvKillSwitch.Enabled = status;
			this.dgvServers.Enabled = status;
			this.btnResetFiltersUV.Enabled = status;
			this.btnRefreshServerList.Enabled = status;
			this.btnGroupBy.Enabled = status;
			this.btnSort.Enabled = status;
			this.menuItem1.Enabled = status;
			this.menuItem2.Enabled = status;
		}

		private void SetInitialAvailableProtocols()
		{
			for (int i = 0; i < this.dgvServers.Rows.Count; i++)
			{
				if (this.GetValidServersRowShort(i))
				{
					this.specificInitialProtocolsForFS += this.dgvServers.Rows[i].Cells[7].Value.ToString();
				}
			}
		}

		private void SetAvailableProtocolsForFV()
		{
			this.specificInitialProtocolsForFV = string.Empty;
			for (int i = 0; i < this.dgvServers.Rows.Count; i++)
			{
				bool flag = Convert.ToBoolean(this.dgvServers.Rows[i].Cells[5].Value);
				if (this.GetValidServersRowShort(i) && flag)
				{
					this.specificInitialProtocolsForFV += this.dgvServers.Rows[i].Cells[7].Value.ToString();
				}
			}
			if (this.dashboard.lnkServers.Text == "Fastest Favourite")
			{
				this.SetSpecificProtocols(this.specificInitialProtocolsForFV);
			}
		}

		private void SetDisabledButtonConnectColor()
		{
			this.grpProtocols.Enabled = false;
			Office2007ButtonItemColorTable expr_3A = ((Office2007Renderer)GlobalManager.get_Renderer()).get_ColorTable().get_ButtonItemColors().get_Item(Enum.GetName(typeof(eButtonColor), 7));
			expr_3A.Disabled.Background = new LinearGradientColorTable(Color.Gainsboro);
			expr_3A.Disabled.OuterBorder = new LinearGradientColorTable(Color.Gainsboro);
			expr_3A.Disabled.InnerBorder = new LinearGradientColorTable(Color.Gainsboro);
			expr_3A.Disabled.Text = Color.Black;
			this.dashboard.btnConnect.set_ColorTable(7);
			this.dashboard.btnConnect.Enabled = false;
			this.dashboardServers.btnConnect.set_ColorTable(7);
			this.dashboardServers.btnConnect.Enabled = false;
			this.dashboardVPNSettings.btnConnect.set_ColorTable(7);
			this.dashboardVPNSettings.btnConnect.Enabled = false;
			this.dashboardDNSSettings.btnConnect.set_ColorTable(7);
			this.dashboardDNSSettings.btnConnect.Enabled = false;
			this.dashboardSupport.btnConnect.set_ColorTable(7);
			this.dashboardSupport.btnConnect.Enabled = false;
			this.dashboardAccount.btnConnect.set_ColorTable(7);
			this.dashboardAccount.btnConnect.Enabled = false;
			this.dashboard.swbKillSwitch.Enabled = false;
			this.dashboardServers.swbKillSwitch.Enabled = false;
			this.dashboardVPNSettings.swbKillSwitch.Enabled = false;
			this.dashboardDNSSettings.swbKillSwitch.Enabled = false;
			this.dashboardSupport.swbKillSwitch.Enabled = false;
			this.dashboardAccount.swbKillSwitch.Enabled = false;
			this.swbKillSwitch.Enabled = false;
			this.btnBrowse.set_ColorTable(7);
			this.btnBrowse.Enabled = false;
			this.btnProcess.set_ColorTable(7);
			this.btnProcess.Enabled = false;
			this.btnRemoveSelected.set_ColorTable(7);
			this.btnRemoveSelected.Enabled = false;
			this.dgvKillSwitch.Enabled = false;
			this.menuItem1.Enabled = false;
			this.menuItem2.Enabled = false;
		}

		private void RefreshDashboard(bool isFv, int? remainingFavourites = null)
		{
			if (this.dgvServers.Rows.Count > 3)
			{
				string linkServerText = string.Empty;
				if (this.autoconnectLogin)
				{
					if (this.lastConnectedServerForAutoconnect != string.Empty && this.lastProtocolForAutoconnect != string.Empty)
					{
						linkServerText = this.apiManager.SetInitialServerLinkValue(this.dgvServers, this.lastConnectedServerForAutoconnect, remainingFavourites);
						this.SetLinkServerText(linkServerText);
					}
				}
				else if (this.lastSelectedServer != null && this.lastSelectedServer != string.Empty)
				{
					linkServerText = this.apiManager.SetInitialServerLinkValue(this.dgvServers, this.lastSelectedServer, remainingFavourites);
					this.SetLinkServerText(linkServerText);
				}
				else
				{
					this.SetLinkServerText(this.dgvServers.Rows[1].Cells[2].Value.ToString());
				}
				this.RefreshDashboard2();
				string selectedProtocolIndex = this.GetSelectedProtocolIndex(this.lastSelectedProtocol);
				if (!this.specificInitialProtocolsForFS.Contains(selectedProtocolIndex) && this.dashboard.lnkServers.Text == "Fastest Server")
				{
					this.SetLinkProtocolText("Automatic");
					this.rbAutomatic.Checked = true;
					return;
				}
				if (!this.specificInitialProtocolsForFV.Contains(selectedProtocolIndex) && this.dashboard.lnkServers.Text == "Fastest Favourite")
				{
					if (isFv)
					{
						this.SetLinkProtocolText("Automatic");
						this.rbAutomatic.Checked = true;
						return;
					}
				}
				else if (this.lastSelectedProtocol != null && this.lastSelectedProtocol != string.Empty)
				{
					RadioButton radioButton = this.grpProtocols.Controls.OfType<RadioButton>().FirstOrDefault((RadioButton r) => r.Text == this.lastSelectedProtocol);
					if (radioButton == null)
					{
						this.SetLinkProtocolText("Automatic");
						this.rbAutomatic.Checked = true;
						return;
					}
					radioButton.Checked = true;
					if (radioButton.Text == "Automatic")
					{
						this.SetLinkProtocolText("Automatic");
						return;
					}
				}
			}
			else
			{
				this.SetLinkServerText("Fastest Server");
				this.SetLinkProtocolText("Automatic");
			}
		}

		private void RefreshDashboard1()
		{
			string linkServerText = string.Empty;
			if (this.lastProtocolForAutoconnect != null && this.lastProtocolForAutoconnect != string.Empty)
			{
				linkServerText = this.apiManager.SetInitialServerLinkValue(this.dgvServers, this.lastConnectedServerForAutoconnect, null);
				this.SetLinkServerText(linkServerText);
			}
			else if (this.dgvServers.Rows.Count > 1)
			{
				this.SetLinkServerText(this.dgvServers.Rows[1].Cells[2].Value.ToString());
			}
			if (this.lastProtocolForAutoconnect != null && this.lastProtocolForAutoconnect != string.Empty)
			{
				RadioButton radioButton = this.grpProtocols.Controls.OfType<RadioButton>().FirstOrDefault((RadioButton r) => r.Text == this.lastProtocolForAutoconnect);
				radioButton.Checked = true;
				this.SetLinkProtocolText(radioButton.Text);
				return;
			}
			this.SetLinkProtocolText("Automatic");
		}

		private void RefreshDashboard2()
		{
			string text = this.dashboard.lnkServers.Text;
			if (text != null && text != string.Empty)
			{
				this.SetGridViewSelectedItem_New(text, false, 6111, "RefreshDashboard2");
			}
		}

		private void SetDashboardLabels()
		{
			this.dashboard.lblLocation.Text = "Location:";
			this.dashboard.lblProtocol.Text = "Protocol:";
			this.dashboardServers.lblLocation.Text = "Location:";
			this.dashboardServers.lblProtocol.Text = "Protocol:";
			this.dashboardVPNSettings.lblLocation.Text = "Location:";
			this.dashboardVPNSettings.lblProtocol.Text = "Protocol:";
			this.dashboardDNSSettings.lblLocation.Text = "Location:";
			this.dashboardDNSSettings.lblProtocol.Text = "Protocol:";
			this.dashboardSupport.lblLocation.Text = "Location:";
			this.dashboardSupport.lblProtocol.Text = "Protocol:";
			this.dashboardAccount.lblLocation.Text = "Location:";
			this.dashboardAccount.lblProtocol.Text = "Protocol:";
		}

		private void InitializeControlsAfterLoadServers()
		{
			this.logger.log("incepe InitializeControlsAfterLoadServers");
			this.logger.log("pas 12");
			this.SetDashboardLabels();
			this.logger.log("pas 13");
			this.cmbLanguage.get_Items().AddRange(new object[]
			{
				"English"
			});
			this.cmbLanguage.SelectedIndex = 0;
			this.logger.log("pas 14");
			this.ServerlistGridviewInitialize();
			this.logger.log("pas 15");
			this.InitializeAccountView();
			this.logger.log("pas 16");
			this.LoadNewMap();
			this.logger.log("pas 17");
			this.SetDNSMessagesForNoDNSService();
			this.logger.log("pas 18");
			this.InitializeDNSView();
			this.logger.log("pas 19");
			this.GetFirstlineColor();
			this.logger.log("pas 20");
			this.isServelistGridviewInitialized = true;
			this.dashboard.rchTextLog.ScrollBars = RichTextBoxScrollBars.None;
			this.dashboardServers.rchTextLog.ScrollBars = RichTextBoxScrollBars.None;
			this.dashboardVPNSettings.rchTextLog.ScrollBars = RichTextBoxScrollBars.None;
			this.dashboardDNSSettings.rchTextLog.ScrollBars = RichTextBoxScrollBars.None;
			this.dashboardSupport.rchTextLog.ScrollBars = RichTextBoxScrollBars.None;
			this.dashboardAccount.rchTextLog.ScrollBars = RichTextBoxScrollBars.None;
			this.logger.log("pas 21");
			this.InitializeNetworkInterface();
			this.logger.log("pas 22");
			this.InitializeTimers();
			this.logger.log("pas 23");
			this.logger.log("pas 24");
			this.activeNIC = this.GetActiveNIC();
			this.logger.log("pas 25");
			this.SetPackagesExpirationDate();
			this.chkSendInfo.Text = " Add to the log: antivirus version, your ibVPN packages, your ibVPN AIO settings and version.";
			this.logger.log("pas 26");
			this.SetClipboardButton();
			this.logger.log("pas 27");
			this.SetProtocolLabel();
			this.InitializeInfoDashboardAndChart();
			this.logger.log("pas 28");
			this.SetSniBordersColor();
			this.logger.log("pas 29");
			this.SetDgvKilSwitch();
			this.killSwithInitialPaint = true;
			this.logger.log("pas 30");
			this.SetRchLogText();
			this.logger.log("pas 31");
			this.InitializeNotifyInconContextMenu();
			if (this.autoconnectLogin && this.lastConnectedServerForAutoconnect != string.Empty && this.lastProtocolForAutoconnect != string.Empty)
			{
				this.logger.log("pas 32");
				if (this.dgvServers.Rows.Count > 3)
				{
					this.RefreshDashboard1();
					this.SetInitialDefaultGateway(6311, "InitializeControlsAfterLoadServers");
					this.btnConnect_Click(this, null);
				}
			}
			this.Cursor = Cursors.Default;
			this.notifyIconIbVPN.Text = "VPN not connected.";
			this.logger.log("pas 33");
			this.logger.log("pas 34");
			this.SetTooltipProperties(this.toolTipIbVPN);
			this.SetTooltipProperties(this.toolTipKSW);
			this.SetTooltipProperties(this.toolTipDNS);
			this.logger.log("pas 35");
			this.kswTooltip = this.resources.GetString("swbKillSwitch.AccessibleDescription");
			this.kswTooltip = this.kswTooltip.Substring(0, this.kswTooltip.Length / 2) + "\n" + this.kswTooltip.Substring(this.kswTooltip.Length / 2);
			this.dnsToolTip = this.resources.GetString("swbIbDNS.AccessibleDescription");
			this.logger.log("pas 36");
			this.ShowToolTips();
			this.logger.log("pas 37");
			this.ShowButtonConnectToolTips();
			this.logger.log("pas 38");
			this.SetInfoFlagStatus("VPN: Not Connected");
			this.logger.log("pas 39");
			if (!File.Exists(this.xmlKSWLogPath))
			{
				File.AppendAllText(this.xmlKSWLogPath, string.Empty);
			}
			this.LoadKSWLog();
			this.logger.log("pas 39.1");
			this.UpdateKillSwitchLogger(string.Empty);
			this.logger.log("pas 40");
			this.logger.log("s-a terminat incarcarea serverelelor si controalelor legate de ele pe MainForm");
		}

		private void InitializeInfoDashboardAndChart()
		{
			this.downloadspeed = 0.0;
			this.uploadSpeed = 0.0;
			this.r6TextLeft = string.Concat(new string[]
			{
				Environment.NewLine,
				" IP: ",
				this.Ip,
				Environment.NewLine,
				" Protocol: ",
				this.protocolLabel,
				Environment.NewLine,
				" Download: ",
				string.Format("{0:f2}", this.downloadspeed),
				" Mbps",
				Environment.NewLine,
				" Upload: ",
				string.Format("{0:f2}", this.uploadSpeed),
				" Mbps"
			});
			this.UpdateSpeedLabels();
			this.UpdateChartPoints();
		}

		private void ClearKSWLogs()
		{
			this.loggerKSW.flush();
			this.LoadKSWLog();
		}

		private void UpdateKillSwitchLogger(string log)
		{
			string KSWOffMessage = "Kill Switch is OFF. There are no events to be shown.";
			if (!this.swbKillSwitch.get_Value())
			{
				this.loggerKSW.log(log);
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.rchBoxKSWlog.Text = KSWOffMessage;
					}));
				}
				else
				{
					this.rchBoxKSWlog.Text = KSWOffMessage;
				}
				this.rchBoxKSWlog.Enabled = false;
				this.btnClearLogKsw.Visible = false;
				this.btnCopyKSWLogToClipboard.Visible = false;
				return;
			}
			this.rchBoxKSWlog.Enabled = true;
			if (log != string.Empty)
			{
				this.loggerKSW.log(log);
				this.LoadKSWLog();
			}
			if (this.rchBoxKSWlog.Text != string.Empty)
			{
				this.btnClearLogKsw.Visible = true;
				this.btnCopyKSWLogToClipboard.Visible = true;
				return;
			}
			this.btnClearLogKsw.Visible = false;
			this.btnCopyKSWLogToClipboard.Visible = false;
		}

		private void LoadKSWLog()
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.rchBoxKSWlog.LoadFile(this.xmlKSWLogPath, RichTextBoxStreamType.PlainText);
					int length2 = this.rchBoxKSWlog.Text.Trim().Length;
					int num2 = 3300;
					if (length2 > 3300)
					{
						this.rchBoxKSWlog.Text = this.rchBoxKSWlog.Text.Trim().Substring(length2 - num2, num2);
						this.loggerKSW.flush();
						this.loggerKSW.log(this.rchBoxKSWlog.Text.Trim());
					}
					if (this.rchBoxKSWlog.Text.Trim().Length > 0)
					{
						this.rchBoxKSWlog.set_SelectionStart(this.rchBoxKSWlog.Text.Trim().Length);
					}
					this.rchBoxKSWlog.ScrollToCaret();
				}));
				return;
			}
			this.rchBoxKSWlog.LoadFile(this.xmlKSWLogPath, RichTextBoxStreamType.PlainText);
			int length = this.rchBoxKSWlog.Text.Trim().Length;
			int num = 3300;
			if (length > 3300)
			{
				this.rchBoxKSWlog.Text = this.rchBoxKSWlog.Text.Trim().Substring(length - num, num);
				this.loggerKSW.flush();
				this.loggerKSW.log(this.rchBoxKSWlog.Text.Trim());
			}
			if (this.rchBoxKSWlog.Text.Trim().Length > 0)
			{
				this.rchBoxKSWlog.set_SelectionStart(this.rchBoxKSWlog.Text.Trim().Length);
			}
			this.rchBoxKSWlog.ScrollToCaret();
		}

		private void SetInfoFlagStatus(string labelText)
		{
			this.dashboard.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboard.infoFlag.lblinfoConnection.Text = labelText;
			this.dashboardServers.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardServers.infoFlag.lblinfoConnection.Text = labelText;
			this.dashboardVPNSettings.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardVPNSettings.infoFlag.lblinfoConnection.Text = labelText;
			this.dashboardDNSSettings.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardDNSSettings.infoFlag.lblinfoConnection.Text = labelText;
			this.dashboardSupport.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardSupport.infoFlag.lblinfoConnection.Text = labelText;
			this.dashboardAccount.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardAccount.infoFlag.lblinfoConnection.Text = labelText;
		}

		private void SetInfoFlagConnectingStatus()
		{
			this.dashboard.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboard.infoFlag.lblinfoConnection.Text = "VPN: Connecting..";
			this.dashboardServers.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardServers.infoFlag.lblinfoConnection.Text = "VPN: Connecting..";
			this.dashboardVPNSettings.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardVPNSettings.infoFlag.lblinfoConnection.Text = "VPN: Connecting..";
			this.dashboardDNSSettings.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardDNSSettings.infoFlag.lblinfoConnection.Text = "VPN: Connecting..";
			this.dashboardSupport.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardSupport.infoFlag.lblinfoConnection.Text = "VPN: Connecting..";
			this.dashboardAccount.infoFlag.lblinfoConnection.Location = new Point(0, 0);
			this.dashboardAccount.infoFlag.lblinfoConnection.Text = "VPN: Connecting..";
		}

		private void ShowDgvServerRowsNumber()
		{
		}

		private void SetTooltipProperties(ToolTip tooltip)
		{
			this.toolTipIbVPN.AutoPopDelay = 5000;
			this.toolTipIbVPN.InitialDelay = 1000;
			this.toolTipIbVPN.ReshowDelay = 500;
			this.toolTipIbVPN.ShowAlways = true;
		}

		private void ShowButtonConnectToolTips()
		{
			if (!this.disableToolTips)
			{
				this.SetButtonConnectToolTip();
				return;
			}
			this.ResetButtonConnectToolTip();
		}

		private void ShowToolTips()
		{
			if (!this.disableToolTips)
			{
				this.btnClearLog.set_Tooltip(this.resources.GetString("btnClearLog.Tooltip"));
				this.btnBrowse.set_Tooltip(this.resources.GetString("btnBrowse.Tooltip"));
				this.btnProcess.set_Tooltip(this.resources.GetString("btnProcess.Tooltip"));
				this.btnRemoveSelected.set_Tooltip(this.resources.GetString("buttonX1.Tooltip"));
				this.btnSort.set_Tooltip(this.resources.GetString("btnSort.Tooltip"));
				this.btnGroupBy.set_Tooltip(this.resources.GetString("btnGroupBy.Tooltip"));
				this.btnResetFiltersUV.set_Tooltip(this.resources.GetString("btnResetFiltersUV.Tooltip"));
				this.btnRepairOpenVPN.set_Tooltip(this.resources.GetString("btnRepairOpenVPN.Tooltip"));
				this.btnClientArea.set_Tooltip(this.resources.GetString("btnClientArea.Tooltip"));
				this.toolTipIbVPN.SetToolTip(this.chkShowToolTips, this.resources.GetString("chkShowToolTips.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkAskReopenClosedApplications, this.resources.GetString("chkAskReopenClosedApplications.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkMitmDisableIPv6Traffic, this.resources.GetString("chkMitmDisableIPv6Traffic.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkMitmForceSecureDNS, this.resources.GetString("chkMitmForceSecureDNS.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkMitmForceSecureDNSUsingFirewall, this.resources.GetString("chkMitmForceSecureDNSUsingFirewall.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.lblSearchUV, this.resources.GetString("lblSearchUV.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkEnableLog, this.resources.GetString("chkEnableLog.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.cmbDebugLevel, this.resources.GetString("cmbDebugLevel.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.txtSearchUV.txtSearch, this.resources.GetString("txtSearchUV.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkStartupLaunch, this.resources.GetString("chkStartupLaunch.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkAutoLogin, this.resources.GetString("chkAutoLogin.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkAutoConnect, this.resources.GetString("chkAutoConnect.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkAlwaysOnTop, this.resources.GetString("chkAlwaysOnTop.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkCenterWindow, this.resources.GetString("chkCenterWindow.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkStartMinimized, this.resources.GetString("chkStartMinimized.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkSendToTray, this.resources.GetString("chkSendToTray.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkAutoReconnect, this.resources.GetString("chkAutoReconnect.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkDisableShutdown, this.resources.GetString("chkDisableShutdown.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkConfirmationOnExit, this.resources.GetString("chkConfirmationOnExit.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkConfirmationChangeServer, this.resources.GetString("chkConfirmationChangeServer.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkConfirmationChangeDNSServer, this.resources.GetString("chkConfirmationChangeDNSServer.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkDisableNotifications, this.resources.GetString("chkDisableNotifications.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkShowToolTips, this.resources.GetString("chkShowToolTips.AccessibleDescription"));
				string caption = string.Concat(new string[]
				{
					this.resources.GetString("chkTestPing.AccessibleDescription").Substring(0, 81),
					Environment.NewLine,
					this.resources.GetString("chkTestPing.AccessibleDescription").Substring(81, 82),
					Environment.NewLine,
					this.resources.GetString("chkTestPing.AccessibleDescription").Substring(163, 66)
				});
				this.toolTipIbVPN.SetToolTip(this.chkTestPing, caption);
				this.toolTipIbVPN.SetToolTip(this.chkBlockAds, this.resources.GetString("chkBlockAds.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.cmbRotatingFavourites, this.resources.GetString("cmbRotatingFavourites.AccessibleDescription"));
				this.toolTipIbVPN.SetToolTip(this.chkConfirmationKswOn, this.resources.GetString("chkConfirmationKswOn.AccessibleDescription"));
				this.SetDashboardDNSToolTips(this.dnsToolTip);
				this.SetDashboardKSWToolTips(this.kswTooltip);
				return;
			}
			this.btnClearLog.set_Tooltip(string.Empty);
			this.btnBrowse.set_Tooltip(string.Empty);
			this.btnProcess.set_Tooltip(string.Empty);
			this.btnRemoveSelected.set_Tooltip(string.Empty);
			this.btnSort.set_Tooltip(string.Empty);
			this.btnGroupBy.set_Tooltip(string.Empty);
			this.btnResetFiltersUV.set_Tooltip(string.Empty);
			this.btnRepairOpenVPN.set_Tooltip(string.Empty);
			this.btnClientArea.set_Tooltip(string.Empty);
			this.toolTipIbVPN.RemoveAll();
			this.toolTipDNS.RemoveAll();
			this.toolTipKSW.RemoveAll();
		}

		private void SetDashboardDNSToolTips(string toolTip)
		{
			this.toolTipDNS.SetToolTip(this.swbIbDNS, toolTip);
			this.toolTipDNS.SetToolTip(this.dashboard.swbDNS, toolTip);
			this.toolTipDNS.SetToolTip(this.dashboardServers.swbDNS, toolTip);
			this.toolTipDNS.SetToolTip(this.dashboardVPNSettings.swbDNS, toolTip);
			this.toolTipDNS.SetToolTip(this.dashboardDNSSettings.swbDNS, toolTip);
			this.toolTipDNS.SetToolTip(this.dashboardSupport.swbDNS, toolTip);
			this.toolTipDNS.SetToolTip(this.dashboardAccount.swbDNS, toolTip);
		}

		private void SetDashboardKSWToolTips(string toolTip)
		{
			this.toolTipKSW.SetToolTip(this.swbKillSwitch, toolTip);
			this.toolTipKSW.SetToolTip(this.dashboard.swbKillSwitch, toolTip);
			this.toolTipKSW.SetToolTip(this.dashboardServers.swbKillSwitch, toolTip);
			this.toolTipKSW.SetToolTip(this.dashboardVPNSettings.swbKillSwitch, toolTip);
			this.toolTipKSW.SetToolTip(this.dashboardDNSSettings.swbKillSwitch, toolTip);
			this.toolTipKSW.SetToolTip(this.dashboardSupport.swbKillSwitch, toolTip);
			this.toolTipKSW.SetToolTip(this.dashboardAccount.swbKillSwitch, toolTip);
		}

		private void AssignDNSEvents()
		{
			this.dashboard.swbDNS.add_ValueChanged(new EventHandler(this.dashboardSwbDNS_ValueChanged));
			this.dashboardServers.swbDNS.add_ValueChanged(new EventHandler(this.dashboardServersSwbDNS_ValueChanged));
			this.dashboardVPNSettings.swbDNS.add_ValueChanged(new EventHandler(this.dashboardVPNSettingsSwbDNS_ValueChanged));
			this.dashboardDNSSettings.swbDNS.add_ValueChanged(new EventHandler(this.dashboardDNSSettingsSwbDNS_ValueChanged));
			this.dashboardSupport.swbDNS.add_ValueChanged(new EventHandler(this.dashboardSupportSwbDNS_ValueChanged));
			this.dashboardAccount.swbDNS.add_ValueChanged(new EventHandler(this.dashboardAccountSwbDNS_ValueChanged));
		}

		private void UnAssignDNSEvents()
		{
			this.dashboard.swbDNS.remove_ValueChanged(new EventHandler(this.dashboardSwbDNS_ValueChanged));
			this.dashboardServers.swbDNS.remove_ValueChanged(new EventHandler(this.dashboardServersSwbDNS_ValueChanged));
			this.dashboardVPNSettings.swbDNS.remove_ValueChanged(new EventHandler(this.dashboardVPNSettingsSwbDNS_ValueChanged));
			this.dashboardDNSSettings.swbDNS.remove_ValueChanged(new EventHandler(this.dashboardDNSSettingsSwbDNS_ValueChanged));
			this.dashboardSupport.swbDNS.remove_ValueChanged(new EventHandler(this.dashboardSupportSwbDNS_ValueChanged));
			this.dashboardAccount.swbDNS.remove_ValueChanged(new EventHandler(this.dashboardAccountSwbDNS_ValueChanged));
		}

		private void RichTextLog_VisibleChanged_Support(object sender, EventArgs e)
		{
			this.dashboardSupport.rchTextLog.ScrollToCaret();
			this.dashboardSupport.rchTextLog.SelectionStart = this.txtLog.Text.Length;
			this.dashboardSupport.rchTextLog.ScrollToCaret();
		}

		private void btnExpand_Click_Support(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcSupport);
			this.SetCollapseButtonsVisibility(this.spcSupport, this.dashboardSupport.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void AssingSocialMediaLabelsEvents()
		{
			this.dashboard.btnTwitter.Click += new EventHandler(this.btnTwitter_Click);
			this.dashboardServers.btnTwitter.Click += new EventHandler(this.btnTwitter_Click);
			this.dashboardVPNSettings.btnTwitter.Click += new EventHandler(this.btnTwitter_Click);
			this.dashboardDNSSettings.btnTwitter.Click += new EventHandler(this.btnTwitter_Click);
			this.dashboardSupport.btnTwitter.Click += new EventHandler(this.btnTwitter_Click);
			this.dashboardAccount.btnTwitter.Click += new EventHandler(this.btnTwitter_Click);
			this.dashboard.btnFacebook.Click += new EventHandler(this.btnFacebook_Click);
			this.dashboardServers.btnFacebook.Click += new EventHandler(this.btnFacebook_Click);
			this.dashboardVPNSettings.btnFacebook.Click += new EventHandler(this.btnFacebook_Click);
			this.dashboardDNSSettings.btnFacebook.Click += new EventHandler(this.btnFacebook_Click);
			this.dashboardSupport.btnFacebook.Click += new EventHandler(this.btnFacebook_Click);
			this.dashboardAccount.btnFacebook.Click += new EventHandler(this.btnFacebook_Click);
			this.dashboard.btnGplus.Click += new EventHandler(this.btnGplus_Click);
			this.dashboardServers.btnGplus.Click += new EventHandler(this.btnGplus_Click);
			this.dashboardVPNSettings.btnGplus.Click += new EventHandler(this.btnGplus_Click);
			this.dashboardDNSSettings.btnGplus.Click += new EventHandler(this.btnGplus_Click);
			this.dashboardSupport.btnGplus.Click += new EventHandler(this.btnGplus_Click);
			this.dashboardAccount.btnGplus.Click += new EventHandler(this.btnGplus_Click);
			this.dashboard.lnkCheckIP.LinkClicked += new LinkLabelLinkClickedEventHandler(this.LnkCheckIP_LinkClicked);
			this.dashboardServers.lnkCheckIP.LinkClicked += new LinkLabelLinkClickedEventHandler(this.LnkCheckIP_LinkClicked);
			this.dashboardVPNSettings.lnkCheckIP.LinkClicked += new LinkLabelLinkClickedEventHandler(this.LnkCheckIP_LinkClicked);
			this.dashboardDNSSettings.lnkCheckIP.LinkClicked += new LinkLabelLinkClickedEventHandler(this.LnkCheckIP_LinkClicked);
			this.dashboardSupport.lnkCheckIP.LinkClicked += new LinkLabelLinkClickedEventHandler(this.LnkCheckIP_LinkClicked);
			this.dashboardAccount.lnkCheckIP.LinkClicked += new LinkLabelLinkClickedEventHandler(this.LnkCheckIP_LinkClicked);
		}

		private void LnkCheckIP_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://xmyip.com"));
		}

		private void btnGplus_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("http://bit.ly/gplus-account"));
		}

		private void btnFacebook_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("http://on.fb.me/1QqezsT"));
		}

		private void btnTwitter_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("http://bit.ly/ibvpn-twitter-account"));
		}

		private void AssignMediaLablesEvents()
		{
			this.dashboard.lnkNews.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkNews_LinkClicked);
			this.dashboardServers.lnkNews.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkNews_LinkClicked);
			this.dashboardVPNSettings.lnkNews.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkNews_LinkClicked);
			this.dashboardDNSSettings.lnkNews.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkNews_LinkClicked);
			this.dashboardSupport.lnkNews.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkNews_LinkClicked);
			this.dashboardAccount.lnkNews.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkNews_LinkClicked);
			this.dashboard.lnkPromo.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkPromo_LinkClicked);
			this.dashboardServers.lnkPromo.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkPromo_LinkClicked);
			this.dashboardVPNSettings.lnkPromo.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkPromo_LinkClicked);
			this.dashboardDNSSettings.lnkPromo.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkPromo_LinkClicked);
			this.dashboardSupport.lnkPromo.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkPromo_LinkClicked);
			this.dashboardAccount.lnkPromo.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkPromo_LinkClicked);
			this.dashboard.lnkKswSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkKswSet_LinkClicked);
			this.dashboardServers.lnkKswSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkKswSet_LinkClicked);
			this.dashboardVPNSettings.lnkKswSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkKswSet_LinkClicked);
			this.dashboardDNSSettings.lnkKswSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkKswSet_LinkClicked);
			this.dashboardSupport.lnkKswSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkKswSet_LinkClicked);
			this.dashboardAccount.lnkKswSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkKswSet_LinkClicked);
			this.dashboard.lnkDnsSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkDnsSet_LinkClicked);
			this.dashboardServers.lnkDnsSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkDnsSet_LinkClicked);
			this.dashboardVPNSettings.lnkDnsSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkDnsSet_LinkClicked);
			this.dashboardDNSSettings.lnkDnsSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkDnsSet_LinkClicked);
			this.dashboardSupport.lnkDnsSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkDnsSet_LinkClicked);
			this.dashboardAccount.lnkDnsSet.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkDnsSet_LinkClicked);
			this.dashboard.lnkServers.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkServers_LinkClicked);
			this.dashboardServers.lnkServers.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkServers_LinkClicked);
			this.dashboardVPNSettings.lnkServers.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkServers_LinkClicked);
			this.dashboardDNSSettings.lnkServers.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkServers_LinkClicked);
			this.dashboardSupport.lnkServers.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkServers_LinkClicked);
			this.dashboardAccount.lnkServers.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkServers_LinkClicked);
			this.dashboard.lnkProtocol.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkProtocol_LinkClicked);
			this.dashboardServers.lnkProtocol.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkProtocol_LinkClicked);
			this.dashboardVPNSettings.lnkProtocol.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkProtocol_LinkClicked);
			this.dashboardDNSSettings.lnkProtocol.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkProtocol_LinkClicked);
			this.dashboardSupport.lnkProtocol.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkProtocol_LinkClicked);
			this.dashboardAccount.lnkProtocol.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkProtocol_LinkClicked);
		}

		private void lnkProtocol_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			this.sideNavIbVPN.set_SelectedItem(this.sniServers);
			this.sniServers_Click(this, null);
			this.tbcServers.set_SelectedTab(this.tbiProtocolList);
		}

		private void lnkServers_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			this.linkServersWasClicked = true;
			this.sideNavIbVPN.set_SelectedItem(this.sniServers);
			this.sniServers_Click(this, null);
			this.tbcServers.set_SelectedTab(this.tbiUsageView);
		}

		private void lnkDnsSet_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			if (!this.isDnson)
			{
				Process.Start(new ProcessStartInfo("https://ibvpn.com/get-ibdns/"));
				return;
			}
			this.sideNavIbVPN.set_SelectedItem(this.sniDNSSettings);
			this.sniDNSSettings_Click(this, null);
		}

		private void lnkKswSet_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			if (this.dashboard.lnkKswSet.Text == "Restore Internet")
			{
				string message = "You have chosen to Restore the Internet.\n\nThe Internet KillSwitch will be turned off and the regular Internet traffic will be restored.\n\n In case the VPN connection is lost, your traffic will be exposed.\n\nAre you sure you want to do that ? ";
				if (this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 1, false, true).Yes)
				{
					this.kswMessageAppeared = true;
					this.btnRestoreInternet_Click(this, null, 6931, "lnkKswSet_LinkClicked");
					this.SetColorSettingsLink(Color.FromArgb(28, 158, 27), "Settings", 6933, "lnkKswSet_LinkClicked");
					this.ChangeLinkSettingsLocation(this.offsetLinkSettings);
					this.btnRestoreNet.Visible = false;
					return;
				}
			}
			else if (this.dashboard.lnkKswSet.Text == "Settings")
			{
				this.sideNavIbVPN.set_SelectedItem(this.sniVPNSettings);
				this.ViewKillSwitch();
			}
		}

		private void lnkPromo_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			this.sideNavIbVPN.set_SelectedItem(this.sniSupport);
			this.ViewAutoUpdater();
		}

		private void lnkNews_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			Process.Start(new ProcessStartInfo(this.NewsLink));
		}

		private void DataGridView2_SelectionChanged(object sender, EventArgs e)
		{
			this.SetAccountGridServers();
		}

		private void SetAccountGridServers()
		{
			if (this.dgvPackages.Rows.Count > 0)
			{
				this.SetHighDPIRowsAndColumns(this.dgvPackages);
				if (this.dgvPackages.SelectedRows.Count > 0)
				{
					this.lblInfoPackage.Visible = true;
					this.lblInfoServers.Visible = true;
					this.dgvPackages.Visible = true;
					this.dgvAccountServers.Visible = true;
					this.lblInfoCont.Visible = false;
					string text = this.dgvPackages.SelectedRows[0].Cells[0].Value.ToString();
					this.apiManager.SetAccountGridServers(this.dgvAccountServers, this.initialAccountServerList, text);
					if (this.dgvAccountServers.Rows.Count > 0)
					{
						this.dgvAccountServers.Columns[1].HeaderText = "Server name";
						this.dgvAccountServers.Columns[1].Width = 165;
						this.dgvAccountServers.Columns[0].Visible = false;
						this.dgvAccountServers.Columns[2].Visible = false;
						this.dgvAccountServers.Columns[4].Visible = false;
						this.dgvAccountServers.Columns[5].Visible = false;
						this.dgvAccountServers.Columns[6].Visible = false;
						this.dgvAccountServers.Columns[7].Visible = false;
						this.dgvAccountServers.Columns[8].Visible = false;
						this.dgvAccountServers.Columns[9].Visible = false;
						this.dgvAccountServers.Columns[10].Visible = false;
						this.dgvAccountServers.Columns[11].Visible = false;
						this.dgvAccountServers.Columns[12].Visible = false;
						this.dgvAccountServers.Columns[13].Visible = false;
						this.dgvAccountServers.Columns[14].Visible = false;
						this.dgvAccountServers.Columns[15].Visible = false;
						this.dgvAccountServers.Columns[3].Visible = false;
						this.dgvAccountServers.Columns[16].HeaderText = "Continent";
						this.dgvAccountServers.Columns[16].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
						this.SetHighDPIRowsAndColumns(this.dgvAccountServers);
						return;
					}
				}
				else
				{
					this.lblInfoPackage.Visible = false;
					this.lblInfoServers.Visible = false;
					this.dgvPackages.Visible = false;
					this.dgvAccountServers.Visible = false;
					this.lblInfoCont.Visible = true;
				}
			}
		}

		private void SetHighDPIRowsAndColumns(DataGridViewX dgv)
		{
			if (this.dpiX != 96f)
			{
				dgv.EnableHeadersVisualStyles = false;
				dgv.ColumnHeadersHeight = this.columnHeadersHeight;
				using (IEnumerator enumerator = ((IEnumerable)dgv.Rows).GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						((DataGridViewRow)enumerator.Current).Height = this.rowHeight;
					}
				}
			}
		}

		private string GetActiveGroupMode()
		{
			string result = string.Empty;
			if (this.groupFavouriteMode)
			{
				result = "favourites";
			}
			else if (this.groupContinentMode)
			{
				result = "continent";
			}
			else if (this.groupTorMode)
			{
				result = "tor";
			}
			else if (this.groupDoubleMode)
			{
				result = "double";
			}
			else if (this.groupTorrentMode)
			{
				result = "torrent";
			}
			else if (this.groupGamingMode)
			{
				result = "gaming";
			}
			return result;
		}

		private void SetActiveGroupMode(string groupName)
		{
			if (groupName == "favourites")
			{
				this.groupFavouriteMode = true;
			}
			else
			{
				this.groupFavouriteMode = false;
			}
			if (groupName == "continent")
			{
				this.groupContinentMode = true;
			}
			else
			{
				this.groupContinentMode = false;
			}
			if (groupName == "tor")
			{
				this.groupTorMode = true;
			}
			else
			{
				this.groupTorMode = false;
			}
			if (groupName == "double")
			{
				this.groupDoubleMode = true;
			}
			else
			{
				this.groupDoubleMode = false;
			}
			if (groupName == "torrent")
			{
				this.groupTorrentMode = true;
			}
			else
			{
				this.groupTorrentMode = false;
			}
			if (groupName == "gaming")
			{
				this.groupGamingMode = true;
				return;
			}
			this.groupGamingMode = false;
		}

		private void txtSearchUV_TextChanged(object sender, EventArgs e)
		{
			this.keyPress = true;
			this.ResetLabelSelectedServer();
			string activeGroupMode = this.GetActiveGroupMode();
			this.SetInactiveGroups();
			string text = string.Empty;
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				text = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
			}
			this.dgvServers.DataSource = this.initialServerList;
			this.fastestFavouriteWasDeleted = false;
			this.currentFavouriteNumber = this.GetFavouritesServers().Count;
			if (this.currentFavouriteNumber == 0)
			{
				this.apiManager.DeleteServerFavouriteRow(this.dgvServers);
				this.fastestFavouriteWasDeleted = true;
			}
			if (text != null && text != string.Empty)
			{
				this.SetGridViewSelectedItem_New(text, true, 7177, "txtSearchUV_TextChanged");
			}
			string text2 = this.txtSearchUV.txtSearch.Text.ToLower();
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				this.selectedServerLabelText = this.apiManager.Filter(this.dgvServers, text2, this.lastSelectedServer);
			}
			else
			{
				this.selectedServerLabelText = this.apiManager.Filter(this.dgvServers, text2, this.lastSelectedServer);
				if (this.dgvServers.Rows.Count > 0)
				{
					text = this.dgvServers.Rows[0].Cells[2].Value.ToString();
				}
			}
			if (text != null && text != string.Empty)
			{
				this.SetGridViewSelectedItem_New(text, true, 7196, "txtSearchUV_TextChanged");
			}
			this.SetProtocolForNoServer();
			this.SetGridFlags();
			this.SetGridConnectedServerColor();
			this.LoadMap(true);
			this.LoadNewMap();
			if (this.dgvServers.Rows.Count > 3 && this.dgvServers.SelectedRows.Count == 0)
			{
				this.dgvServers.Rows[3].Selected = true;
			}
			this.LoadActiveGroup(activeGroupMode);
			this.keyPress = false;
			if (this.selectedServerLabelText != string.Empty)
			{
				this.HideRow(this.selectedServerLabelText);
				this.SetNotFoundServersVisibility();
			}
			this.txtSearchUV.Focus();
		}

		private void SetNotFoundServersVisibility()
		{
			if (this.CountGroupServersNumber() == 0)
			{
				this.SetHeadLinesVisibility(false);
				return;
			}
			this.SetHeadLinesVisibility(true);
		}

		private void LoadActiveGroup(string activeGroupMode)
		{
			if (activeGroupMode == "favourites")
			{
				this.FavoriteItem_Click(this, null);
				return;
			}
			if (activeGroupMode == "continent")
			{
				this.Continent_Click(this, null);
				return;
			}
			if (activeGroupMode == "tor")
			{
				this.TORoverVPN_Click(this, null);
				return;
			}
			if (activeGroupMode == "double")
			{
				this.DoubleVPN_Click(this, null);
				return;
			}
			if (activeGroupMode == "torrent")
			{
				this.Torrent_Click(this, null);
				return;
			}
			if (activeGroupMode == "gaming")
			{
				this.Gaming_Click(this, null);
			}
		}

		private void SetInactiveGroups()
		{
			this.groupFavouriteMode = false;
			this.groupContinentMode = false;
			this.groupTorMode = false;
			this.groupDoubleMode = false;
			this.groupTorrentMode = false;
			this.groupGamingMode = false;
		}

		private void HideRow(string selectedServerLabelText)
		{
			if (this.dgvServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvServers.Rows.Count; i++)
				{
					if (this.dgvServers.Rows[i].Cells[2].Value.ToString() == selectedServerLabelText)
					{
						this.dgvServers.Rows[i].Visible = false;
					}
				}
			}
		}

		private void SetFavouritesRowsVisibility(bool show)
		{
			if (this.dgvServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvServers.Rows.Count; i++)
				{
					string a = this.dgvServers.Rows[i].Cells[2].Value.ToString();
					if (a == "Favourites" || a == "Fastest Favourite")
					{
						this.dgvServers.Rows[i].Visible = show;
					}
				}
			}
		}

		private void SetHeadLinesVisibility(bool show)
		{
			if (this.dgvServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvServers.Rows.Count; i++)
				{
					string a = this.dgvServers.Rows[i].Cells[2].Value.ToString();
					if (a == "TORoverVPN Servers" || a == "DoubleVPN Servers" || a == "Torrent Servers" || a == "Gaming Servers")
					{
						this.dgvServers.Rows[i].Visible = show;
					}
				}
			}
		}

		private int CountFavourites()
		{
			int num = 0;
			if (this.dgvServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvServers.Rows.Count; i++)
				{
					if (this.dgvServers.Rows[i].Visible && this.dgvServers.Rows[i].Cells[2].Value.ToString() != "Favourites" && Convert.ToBoolean(this.dgvServers.Rows[i].Cells[5].Value))
					{
						num++;
					}
				}
			}
			return num;
		}

		private int CountGroupServersNumber()
		{
			int num = 0;
			string a = string.Empty;
			if (this.dgvServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvServers.Rows.Count; i++)
				{
					if (this.dgvServers.Rows[i].Visible)
					{
						a = this.dgvServers.Rows[i].Cells[2].Value.ToString();
						if (a != "Fastest Servers" && a != "Servers" && a != "Fastest Server" && a != "Fastest Favourite" && a != "TORoverVPN Servers" && a != "DoubleVPN Servers" && a != "Torrent Servers" && a != "Gaming Servers" && Convert.ToString(this.dgvServers.Rows[i].Cells[16].Value) == "0")
						{
							num++;
						}
					}
				}
			}
			return num;
		}

		private void ResetLabelSelectedServer()
		{
			if (this.txtSearchUV.txtSearch.Text != string.Empty)
			{
				this.dgvServers.Location = new Point(this.dgvServers.Location.X, this.lblSelectedServer.Location.Y + this.lblSelectedServer.Size.Height);
				this.dgvServers.Size = new Size(this.initialDgvWidth, this.GetGridHeight() - this.lblSelectedServer.Size.Height);
				this.lblSelectedServer.Visible = true;
				this.lblSelectedServerBackground.Visible = true;
			}
			else
			{
				this.dgvServers.Location = new Point(this.lblSelectedServerBackground.Location.X, this.lblSelectedServerBackground.Location.Y);
				this.dgvServers.Size = new Size(this.initialDgvWidth, this.GetGridHeight());
				this.lblSelectedServer.Visible = false;
				this.lblSelectedServerBackground.Visible = false;
				this.selectedServerLabelText = string.Empty;
			}
			this.SetLabelSelectedServerColor();
		}

		private int GetGridHeight()
		{
			int num = 30;
			if (this.dgvServers.Rows.Count > 0)
			{
				num = this.dgvServers.Rows[0].Height;
			}
			return this.initialDgvHeight / num * num;
		}

		private void ResetLabelSelectedServer_Obsolete()
		{
			if (this.txtSearchUV.txtSearch.Text != string.Empty)
			{
				this.dgvServers.MinimumSize = new Size(520, 390);
				this.dgvServers.MaximumSize = new Size(520, 390);
				this.dgvServers.Location = new Point(10, 83);
				this.dgvServers.Size = new Size(520, 390);
				this.lblSelectedServer.Visible = true;
				this.lblSelectedServerBackground.Visible = true;
			}
			else
			{
				this.dgvServers.Location = new Point(10, 53);
				this.dgvServers.MinimumSize = new Size(520, 420);
				this.dgvServers.MaximumSize = new Size(520, 420);
				this.dgvServers.Size = new Size(520, 420);
				this.lblSelectedServer.Visible = false;
				this.lblSelectedServerBackground.Visible = false;
				this.selectedServerLabelText = string.Empty;
			}
			this.SetLabelSelectedServerColor();
		}

		private void SetLabelSelectedServerColor()
		{
			if (this.lblSelectedServer.Visible)
			{
				if (this.vpnManager.get_ConnectionStatus() == "Connected")
				{
					this.lblSelectedServer.BackColor = this.connectButtonColor;
					this.lblSelectedServer.ForeColor = Color.White;
					this.lblSelectedServerBackground.BackColor = this.connectButtonColor;
					this.lblSelectedServerBackground.ForeColor = Color.White;
				}
				else
				{
					this.lblSelectedServer.BackColor = Color.LightGray;
					this.lblSelectedServer.ForeColor = Color.Black;
					this.lblSelectedServerBackground.BackColor = Color.LightGray;
					this.lblSelectedServerBackground.ForeColor = Color.Black;
				}
				this.lblSelectedServer.Text = "Selected Server : " + this.dashboard.lnkServers.Text;
			}
		}

		private void txtSearchUV_TextChanged_Obsolete(object sender, EventArgs e)
		{
		}

		private void btnLogs_Click(object sender, EventArgs e)
		{
			this.sideNavIbVPN.set_SelectedItem(this.sniSupport);
			this.ViewLogs();
		}

		private void btnAccount_Click(object sender, EventArgs e)
		{
			this.sideNavIbVPN.set_SelectedItem(this.sniAccount);
			this.sniAccount_Click(this, null);
		}

		private void SetComboProtocolCollapsed(bool collapse)
		{
			this.spcServers.Panel2Collapsed = collapse;
			this.spcDashboard.Panel2Collapsed = collapse;
			this.spcVPNSettings.Panel2Collapsed = collapse;
			this.spcDNSSettings.Panel2Collapsed = collapse;
			this.spcAccount.Panel2Collapsed = collapse;
		}

		private void SetTabStyle(eTabStripStyle style, TabControl tabControl)
		{
			tabControl.set_Style(style);
			using (IEnumerator enumerator = tabControl.get_Tabs().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					((TabItem)enumerator.Current).set_PredefinedColor(0);
				}
			}
		}

		private void SetControlsPrivacyEnabled(bool enabled)
		{
			this.chkMitmForceSecureDNS.Enabled = enabled;
			this.chkMitmForceSecureDNSUsingFirewall.Enabled = enabled;
			this.chkMitmDisableIPv6Traffic.Enabled = enabled;
			this.chkTestPing.Enabled = enabled;
			this.chkBlockAds.Enabled = enabled;
			this.cmbRotatingFavourites.Enabled = enabled;
			this.btnRefreshServerList.Enabled = enabled;
		}

		private void SetControlsEnabled(bool enabled)
		{
			this.chkMitmForceSecureDNS.Enabled = enabled;
			this.chkMitmForceSecureDNSUsingFirewall.Enabled = enabled;
			this.chkMitmDisableIPv6Traffic.Enabled = enabled;
			this.chkTestPing.Enabled = enabled;
			this.chkBlockAds.Enabled = enabled;
			this.dgvServers.Enabled = enabled;
			this.btnClearLog.Enabled = enabled;
			this.chkEnableLog.Enabled = enabled;
			if (this.isDnson)
			{
				this.swbIbDNS.Enabled = enabled;
			}
			this.dgvDNSServers.Enabled = enabled;
			if (!enabled)
			{
				this.menuItem1.Enabled = enabled;
				this.menuItem2.Enabled = enabled;
			}
			else if (this.vpnManager.connectionStatus == "Connected")
			{
				this.menuItem1.Enabled = !enabled;
				this.menuItem2.Enabled = enabled;
			}
			else
			{
				this.menuItem1.Enabled = enabled;
				this.menuItem2.Enabled = !enabled;
			}
			this.cmbDebugLevel.Enabled = enabled;
			this.btnRepairIpSecCertificate.Enabled = enabled;
			this.btnRepairOpenVPN.Enabled = enabled;
		}

		private void SetProtocolListEnabled(bool connect)
		{
			this.grpProtocols.Enabled = connect;
		}

		private void SetProtocolListEnabled_Obsolete(bool connect)
		{
		}

		private void SetButtonsRepairEnabled(bool connect)
		{
			this.btnRepairOpenVPN.Enabled = connect;
			this.btnRepairIpSecCertificate.Enabled = connect;
		}

		private void ResetButtonConnectToolTip()
		{
			this.dashboard.btnConnect.set_Tooltip(string.Empty);
			this.dashboardServers.btnConnect.set_Tooltip(string.Empty);
			this.dashboardVPNSettings.btnConnect.set_Tooltip(string.Empty);
			this.dashboardDNSSettings.btnConnect.set_Tooltip(string.Empty);
			this.dashboardSupport.btnConnect.set_Tooltip(string.Empty);
			this.dashboardAccount.btnConnect.set_Tooltip(string.Empty);
		}

		private void SetButtonConnectToolTip()
		{
			if (this.dashboard.btnConnect.Text == this.buttonConnectText)
			{
				this.dashboard.btnConnect.set_Tooltip("Connect to VPN");
				this.dashboardServers.btnConnect.set_Tooltip("Connect to VPN");
				this.dashboardVPNSettings.btnConnect.set_Tooltip("Connect to VPN");
				this.dashboardDNSSettings.btnConnect.set_Tooltip("Connect to VPN");
				this.dashboardSupport.btnConnect.set_Tooltip("Connect to VPN");
				this.dashboardAccount.btnConnect.set_Tooltip("Connect to VPN");
				return;
			}
			if (this.dashboard.btnConnect.Text == this.buttonDisconnectText)
			{
				this.dashboard.btnConnect.set_Tooltip("Disconnect from VPN");
				this.dashboardServers.btnConnect.set_Tooltip("Disconnect from VPN");
				this.dashboardVPNSettings.btnConnect.set_Tooltip("Disconnect from VPN");
				this.dashboardDNSSettings.btnConnect.set_Tooltip("Disconnect from VPN");
				this.dashboardSupport.btnConnect.set_Tooltip("Disconnect from VPN");
				this.dashboardAccount.btnConnect.set_Tooltip("Disconnect from VPN");
				return;
			}
			if (this.dashboard.btnConnect.Text == this.buttonCancelText)
			{
				this.dashboard.btnConnect.set_Tooltip("VPN is connecting");
				this.dashboardServers.btnConnect.set_Tooltip("VPN is connecting");
				this.dashboardVPNSettings.btnConnect.set_Tooltip("VPN is connecting");
				this.dashboardDNSSettings.btnConnect.set_Tooltip("VPN is connecting");
				this.dashboardSupport.btnConnect.set_Tooltip("VPN is connecting");
				this.dashboardAccount.btnConnect.set_Tooltip("VPN is connecting");
			}
		}

		private void SetButtonConnectStatus(bool connect)
		{
			if (connect)
			{
				this.dashboard.btnConnect.Text = this.buttonConnectText;
				this.dashboardServers.btnConnect.Text = this.buttonConnectText;
				this.dashboardVPNSettings.btnConnect.Text = this.buttonConnectText;
				this.dashboardDNSSettings.btnConnect.Text = this.buttonConnectText;
				this.dashboardSupport.btnConnect.Text = this.buttonConnectText;
				this.dashboardAccount.btnConnect.Text = this.buttonConnectText;
				return;
			}
			this.dashboard.btnConnect.Text = this.buttonDisconnectText;
			this.dashboardServers.btnConnect.Text = this.buttonDisconnectText;
			this.dashboardVPNSettings.btnConnect.Text = this.buttonDisconnectText;
			this.dashboardDNSSettings.btnConnect.Text = this.buttonDisconnectText;
			this.dashboardSupport.btnConnect.Text = this.buttonDisconnectText;
			this.dashboardAccount.btnConnect.Text = this.buttonDisconnectText;
		}

		private void SetButtonCancelText()
		{
			this.dashboard.btnConnect.Text = this.buttonCancelText;
			this.dashboardServers.btnConnect.Text = this.buttonCancelText;
			this.dashboardVPNSettings.btnConnect.Text = this.buttonCancelText;
			this.dashboardDNSSettings.btnConnect.Text = this.buttonCancelText;
			this.dashboardSupport.btnConnect.Text = this.buttonCancelText;
			this.dashboardAccount.btnConnect.Text = this.buttonCancelText;
		}

		private void SetImagesStatusFirst()
		{
			this.SetImageStatusConnection(this.dashboard);
			this.SetImageStatusConnection(this.dashboardServers);
			this.SetImageStatusConnection(this.dashboardVPNSettings);
			this.SetImageStatusConnection(this.dashboardDNSSettings);
			this.SetImageStatusConnection(this.dashboardSupport);
			this.SetImageStatusConnection(this.dashboardAccount);
		}

		private void SetImagesStatusInitial()
		{
			this.SetImageStatusConnection(this.dashboard);
		}

		private void SetImagesStatusNotConnected()
		{
			this.SetImageStatusConnectionNotConnected(this.dashboard);
			this.SetImageStatusConnectionNotConnected(this.dashboardServers);
			this.SetImageStatusConnectionNotConnected(this.dashboardVPNSettings);
			this.SetImageStatusConnectionNotConnected(this.dashboardDNSSettings);
			this.SetImageStatusConnectionNotConnected(this.dashboardSupport);
			this.SetImageStatusConnectionNotConnected(this.dashboardAccount);
		}

		private void SetImageStatusConnectionNotConnected(DashboardUserControl uc)
		{
			string filename = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\icon-not-connected-status-red.png";
			if (this.vpnManager.get_ConnectionStatus() == "Not Connected")
			{
				uc.pctStatus.Image = Image.FromFile(filename);
			}
		}

		private void SetImagesStatus()
		{
			this.SetImageStatusConnection(this.dashboard);
			this.SetImageStatusConnection(this.dashboardServers);
			this.SetImageStatusConnection(this.dashboardVPNSettings);
			this.SetImageStatusConnection(this.dashboardDNSSettings);
			this.SetImageStatusConnection(this.dashboardSupport);
			this.SetImageStatusConnection(this.dashboardAccount);
		}

		private void SetImageStatusConnection(DashboardUserControl uc)
		{
			string filename = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\icon-connected-status.png";
			string filename2 = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\icon-not-connected-status-red.png";
			string filename3 = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\icon-connecting-animated.gif";
			string filename4 = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\icon-net-error-status.png";
			if (this.vpnManager.get_ConnectionStatus() == "Connected")
			{
				uc.pctStatus.Image = Image.FromFile(filename);
				return;
			}
			if (this.vpnManager.get_ConnectionStatus() == "Not Connected")
			{
				uc.pctStatus.Image = Image.FromFile(filename2);
				return;
			}
			if (this.vpnManager.get_ConnectionStatus() == "Connecting...")
			{
				uc.pctStatus.Image = Image.FromFile(filename3);
				return;
			}
			if (this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
			{
				uc.pctStatus.Image = Image.FromFile(filename4);
			}
		}

		private void UpdatePanel2(SplitContainer splitcontainer)
		{
			if (splitcontainer.Panel2Collapsed)
			{
				if (base.Width == this.initialWidth - this.panel2Width)
				{
					base.Width += this.panel2Width;
				}
				splitcontainer.Panel2Collapsed = false;
				return;
			}
			if (base.Width > this.initialWidth - this.panel2Width)
			{
				base.Width -= this.panel2Width;
			}
			splitcontainer.Panel2Collapsed = true;
		}

		private void SetCollapseToAllSplitContainers(bool collapse)
		{
			if (this.spcAccount.Panel2Collapsed == !collapse)
			{
				this.spcAccount.Panel2Collapsed = collapse;
			}
			if (this.spcServers.Panel2Collapsed == !collapse)
			{
				this.spcServers.Panel2Collapsed = collapse;
			}
			if (this.spcDashboard.Panel2Collapsed == !collapse)
			{
				this.spcDashboard.Panel2Collapsed = collapse;
			}
			if (this.spcVPNSettings.Panel2Collapsed == !collapse)
			{
				this.spcVPNSettings.Panel2Collapsed = collapse;
			}
			if (this.spcDNSSettings.Panel2Collapsed == !collapse)
			{
				this.spcDNSSettings.Panel2Collapsed = collapse;
			}
			if (this.spcSupport.Panel2Collapsed == !collapse)
			{
				this.spcSupport.Panel2Collapsed = collapse;
			}
		}

		private void SetCollapseButtonsVisibility(SplitContainer splitContainer, ButtonX buttonX)
		{
			if (splitContainer.Panel2Collapsed)
			{
				buttonX.Visible = true;
				return;
			}
			buttonX.Visible = false;
		}

		private void SetMainFormSize(int width, int height)
		{
			this.MinimumSize = new Size(width, height);
			this.MaximumSize = new Size(width, height);
		}

		private void InitializeServerGridView()
		{
			this.dgvServers.set_PaintEnhancedSelection(false);
			this.dgvServers.DefaultCellStyle.SelectionBackColor = Color.LightGray;
			this.dgvServers.ColumnHeadersVisible = false;
			this.dgvServers.RowHeadersVisible = false;
			this.dgvServers.CellBorderStyle = DataGridViewCellBorderStyle.None;
			this.dgvServers.AlternatingRowsDefaultCellStyle.BackColor = this.secondLineColor;
			this.dgvServers.AllowUserToAddRows = false;
			this.dgvServers.CellClick += new DataGridViewCellEventHandler(this.DgvServers_CellClick);
			this.dgvServers.CellDoubleClick += new DataGridViewCellEventHandler(this.DgvServers_CellDoubleClick);
			this.dgvServers.CellFormatting += new DataGridViewCellFormattingEventHandler(this.DgvServers_CellFormatting);
			this.dgvServers.CellPainting += new DataGridViewCellPaintingEventHandler(this.DgvServers_CellPainting);
			this.dgvServers.SelectionChanged += new EventHandler(this.DgvServers_SelectionChanged);
			this.dgvServers.RowStateChanged += new DataGridViewRowStateChangedEventHandler(this.DgvServers_RowStateChanged);
			this.dgvServers.CellStateChanged += new DataGridViewCellStateChangedEventHandler(this.DgvServers_CellStateChanged);
			this.dgvServers.KeyDown += new KeyEventHandler(this.DgvServers_KeyDown);
			this.dgvServers.Scroll += new ScrollEventHandler(this.DgvServers_Scroll);
			this.dgvServers.CellMouseDown += new DataGridViewCellMouseEventHandler(this.DgvServers_CellMouseDown);
		}

		private void DgvServers_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
		{
			this.linkServersWasClicked = false;
			if (e.ColumnIndex == 5)
			{
				this.colFavouritesWasMoused = true;
				return;
			}
			this.colFavouritesWasMoused = false;
		}

		private void DgvServers_Scroll(object sender, ScrollEventArgs e)
		{
			this.firstScrollLine = this.dgvServers.FirstDisplayedScrollingRowIndex;
		}

		private void DgvServers_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
		{
			string text = this.dgvServers.Rows[e.RowIndex].Cells[2].Value.ToString();
			if (text != string.Empty && text != "**** Favourites ****" && text != "**** Servers ****" && text != "Favourites" && text != "Servers" && text != "Africa" && text != "Asia" && text != "Europe" && text != "North America" && text != "Oceania" && text != "South America" && text != "Fastest Servers" && text != "TORoverVPN Servers" && text != "DoubleVPN Servers" && text != "Torrent Servers" && text != "Gaming Servers" && e.ColumnIndex != 5)
			{
				this.logger.log("DgvServers_CellDoubleClick was occured on line :" + text);
				if (this.dgvServers.Rows[e.RowIndex].DefaultCellStyle.BackColor != this.connectButtonColor)
				{
					this.btnConnect_Click(this, null);
				}
			}
		}

		private void DgvServers_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Alt && e.Control && e.KeyCode == Keys.F)
			{
				int index = this.dgvServers.SelectedRows[0].Index;
				bool flag = Convert.ToBoolean(this.dgvServers.Rows[index].Cells[5].Value);
				if (e.Shift)
				{
					if (flag)
					{
						DataGridViewCellEventArgs e2 = new DataGridViewCellEventArgs(5, index);
						this.DgvServers_CellClick(this.dgvServers, e2);
					}
				}
				else if (!flag)
				{
					DataGridViewCellEventArgs e3 = new DataGridViewCellEventArgs(5, index);
					this.DgvServers_CellClick(this.dgvServers, e3);
				}
			}
			else if (e.Control && e.KeyCode == Keys.Return && this.dashboard.btnConnect.Text == "CONNECT" && this.vpnManager.get_ConnectionStatus() == "Not Connected")
			{
				this.btnConnect_Click(this, null);
			}
			switch (e.KeyData & Keys.KeyCode)
			{
			case Keys.Left:
			case Keys.Right:
				e.Handled = true;
				e.SuppressKeyPress = true;
				return;
			case Keys.Up:
				if (this.dgvServers.SelectedRows.Count > 0)
				{
					this.dgvServers.SelectionChanged -= new EventHandler(this.DgvServers_SelectionChanged);
					this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
					int index2 = this.dgvServers.SelectedRows[0].Index;
					string a = this.dgvServers.Rows[index2 - 1].Cells[2].Value.ToString();
					if (!(a == "Servers") && !(a == "Favourites") && !(a == "Africa") && !(a == "Asia") && !(a == "Europe") && !(a == "North America") && !(a == "Oceania") && !(a == "South America") && !(a == "TORoverVPN Servers") && !(a == "DoubleVPN Servers") && !(a == "Torrent Servers") && !(a == "Gaming Servers"))
					{
						if (a == "Fastest Servers")
						{
							SendKeys.Send("{DOWN}");
						}
						else
						{
							this.selectedCellRow1 = index2 - 1;
							this.selectedCellRow = index2 - 1;
						}
					}
					else
					{
						SendKeys.Send("{UP}");
						this.selectedCellRow = index2 - 1;
					}
					this.dgvServers.SelectionChanged += new EventHandler(this.DgvServers_SelectionChanged);
					return;
				}
				break;
			case Keys.Down:
				if (this.dgvServers.SelectedRows.Count > 0)
				{
					this.dgvServers.SelectionChanged -= new EventHandler(this.DgvServers_SelectionChanged);
					this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
					int index3 = this.dgvServers.SelectedRows[0].Index;
					string a2 = this.dgvServers.Rows[index3 + 1].Cells[2].Value.ToString();
					if (!(a2 == "Servers") && !(a2 == "Favourites") && !(a2 == "Africa") && !(a2 == "Asia") && !(a2 == "Europe") && !(a2 == "North America") && !(a2 == "Oceania") && !(a2 == "South America") && !(a2 == "TORoverVPN Servers") && !(a2 == "DoubleVPN Servers") && !(a2 == "Torrent Servers") && !(a2 == "Gaming Servers"))
					{
						this.selectedCellRow1 = index3 + 1;
						this.selectedCellRow = index3 + 1;
					}
					else
					{
						SendKeys.Send("{DOWN}");
						this.selectedCellRow = index3 - 1;
					}
					this.dgvServers.SelectionChanged += new EventHandler(this.DgvServers_SelectionChanged);
				}
				break;
			default:
				return;
			}
		}

		private void DgvServers_CellStateChanged(object sender, DataGridViewCellStateChangedEventArgs e)
		{
			if (e.Cell != null)
			{
				if (e.StateChanged == DataGridViewElementStates.Selected)
				{
					if (e.Cell.RowIndex == this.selectedCellRow1 && e.Cell.ColumnIndex == this.selectedCellColumn1)
					{
						return;
					}
					if (!e.Cell.Selected)
					{
						return;
					}
					string a = e.Cell.Value.ToString();
					if (!(a == "Fastest Servers") && !(a == "Servers") && !(a == "Favourites") && !(a == "Africa") && !(a == "Asia") && !(a == "Europe") && !(a == "North America") && !(a == "Oceania") && !(a == "South America") && !(a == "TORoverVPN Servers") && !(a == "DoubleVPN Servers") && !(a == "Torrent Servers") && !(a == "Gaming Servers") && e.Cell.ColumnIndex != 5 && !(e.Cell.Value.ToString() == string.Empty))
					{
						this.selectedCellRow1 = e.Cell.RowIndex;
						this.selectedCellColumn1 = e.Cell.ColumnIndex;
					}
					else
					{
						e.Cell.Selected = false;
						if (this.selectedCellRow1 < this.dgvServers.Rows.Count)
						{
							this.dgvServers.Rows[this.selectedCellRow1].Selected = true;
							return;
						}
					}
					return;
				}
			}
		}

		private bool IsFavouriteColumnFree()
		{
			bool flag = !(this.vpnManager.get_ConnectionStatus() == "Connected") || (!(this.dashboard.lnkServers.Text == "Rotating Favourites") && (!(this.dashboard.lnkServers.Text == "Fastest Favourite") || this.currentFavouriteNumber != 2 || !(this.isFav.ToLower() == "true")));
			if (!flag)
			{
				string message = "The favourite list cannot be changed while connected to the VPN. You need to disconnect first.";
				this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 2, true, true);
			}
			return flag;
		}

		private void DgvServers_RowStateChanged(object sender, DataGridViewRowStateChangedEventArgs e)
		{
			if (e.Row != null)
			{
				if (e.StateChanged == DataGridViewElementStates.Selected)
				{
					if (e.Row.Index == this.selectedCellRow)
					{
						return;
					}
					if (!e.Row.Selected)
					{
						return;
					}
					string a = e.Row.Cells[2].Value.ToString();
					if (!(a == "Fastest Servers") && !(a == "Servers") && !(a == "Favourites") && !(a == "Africa") && !(a == "Asia") && !(a == "Europe") && !(a == "North America") && !(a == "Oceania") && !(a == "South America") && !(a == "TORoverVPN Servers") && !(a == "DoubleVPN Servers") && !(a == "Torrent Servers") && !(a == "Gaming Servers"))
					{
						this.selectedCellRow = e.Row.Index;
					}
					else
					{
						e.Row.Selected = false;
						if (this.selectedCellRow < this.dgvServers.Rows.Count)
						{
							this.dgvServers.Rows[this.selectedCellRow].Selected = true;
							return;
						}
					}
					return;
				}
			}
		}

		private void DgvServers_CellPainting(object sender, DataGridViewCellPaintingEventArgs e)
		{
			if (e.RowIndex >= 0 && (e.ColumnIndex == 14 || e.ColumnIndex == 5 || e.ColumnIndex == 2 || e.ColumnIndex == 0))
			{
				Pen pen;
				if (e.RowIndex % 2 == 0)
				{
					pen = new Pen(this.defColor, (float)this.penWidth);
				}
				else
				{
					pen = new Pen(this.secondLineColor, (float)this.penWidth);
				}
				if (this.dgvServers.Rows[e.RowIndex].Selected)
				{
					if (e.RowIndex % 2 == 0)
					{
						pen = new Pen(this.defColor, 1f);
					}
					else
					{
						pen = new Pen(this.secondLineColor, 1f);
					}
				}
				e.Paint(e.CellBounds, DataGridViewPaintParts.Background | DataGridViewPaintParts.ContentBackground | DataGridViewPaintParts.ContentForeground | DataGridViewPaintParts.ErrorIcon | DataGridViewPaintParts.Focus | DataGridViewPaintParts.SelectionBackground);
				if (this.GetValidCell(e) && e.ColumnIndex == 14)
				{
					if ((e.PaintParts & DataGridViewPaintParts.Background) != DataGridViewPaintParts.None)
					{
						Bitmap image = (Bitmap)Image.FromFile(this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\Resources\\fastest_server.png", true);
						e.Graphics.DrawImage(image, e.CellBounds);
					}
					if (!e.Handled)
					{
						e.Handled = true;
						e.PaintContent(e.CellBounds);
					}
				}
				Rectangle cellBounds = e.CellBounds;
				cellBounds.Width = cellBounds.Width;
				cellBounds.Height = 1;
				e.Graphics.DrawRectangle(pen, cellBounds);
				e.Handled = true;
			}
		}

		private bool GetValidCell(DataGridViewCellPaintingEventArgs e)
		{
			bool result = false;
			if (e.RowIndex == 1 || e.RowIndex == 2 || e.RowIndex == 3)
			{
				result = true;
			}
			return result;
		}

		private void DgvServers_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
		{
			if (e.ColumnIndex != 14)
			{
				return;
			}
			e.CellStyle.Font = new Font("Segoe UI", 8f);
			e.CellStyle.ForeColor = Color.White;
			e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
			decimal d = Convert.ToDecimal(e.Value.ToString().Replace("%", "").Replace("free", "").Replace(',', '.'), CultureInfo.InvariantCulture);
			if (d > 100m)
			{
				e.CellStyle.ForeColor = Color.Transparent;
			}
			else if (d > 90m && d <= 100m)
			{
				e.CellStyle.BackColor = this.connectButtonColor;
			}
			else if (d > 50m && d <= 90m)
			{
				e.CellStyle.BackColor = this.OrangeIBVPN;
			}
			else
			{
				e.CellStyle.BackColor = this.RedIBVPN;
			}
			if (d <= 100m)
			{
				Color backColor = e.CellStyle.BackColor;
				e.CellStyle.SelectionBackColor = backColor;
				e.CellStyle.SelectionForeColor = Color.White;
				return;
			}
			if (e.CellStyle.SelectionBackColor == this.connectButtonColor)
			{
				e.CellStyle.SelectionForeColor = this.connectButtonColor;
			}
			else
			{
				e.CellStyle.SelectionForeColor = Color.LightGray;
			}
			if ((e.RowIndex == 1 || e.RowIndex == 2 || e.RowIndex == 3) && e.ColumnIndex == 14)
			{
				e.CellStyle.SelectionForeColor = Color.Transparent;
			}
		}

		private void InitializeDNSView()
		{
			if (this.dgvDNSServers.Rows.Count > 0)
			{
				this.dgvDNSServers.set_PaintEnhancedSelection(false);
				this.dgvDNSServers.DefaultCellStyle.SelectionBackColor = Color.LightGray;
				this.dgvDNSServers.RowHeadersVisible = false;
				this.dgvDNSServers.ColumnHeadersVisible = false;
				this.dgvDNSServers.CellBorderStyle = DataGridViewCellBorderStyle.None;
				this.dgvDNSServers.AlternatingRowsDefaultCellStyle.BackColor = this.secondLineColor;
				this.dgvDNSServers.ReadOnly = true;
				this.dgvDNSServers.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
				if (this.dgvDNSServers.Columns.Count > 0)
				{
					this.dgvDNSServers.Columns[0].Visible = true;
					this.dgvDNSServers.Columns[0].Resizable = DataGridViewTriState.False;
					this.dgvDNSServers.Columns[1].Visible = false;
					this.dgvDNSServers.Columns[2].Visible = true;
					this.dgvDNSServers.Columns[2].Resizable = DataGridViewTriState.False;
					this.dgvDNSServers.Columns[3].Visible = false;
					this.dgvDNSServers.Columns[4].Visible = false;
					this.dgvDNSServers.Columns[5].Visible = false;
					this.dgvDNSServers.Columns[6].Visible = false;
					this.dgvDNSServers.Columns[7].Visible = false;
					this.dgvDNSServers.Columns[8].Visible = false;
					this.dgvDNSServers.Columns[9].Visible = false;
					this.dgvDNSServers.Columns[10].Visible = false;
					this.dgvDNSServers.Columns[11].Visible = false;
					this.dgvDNSServers.Columns[12].Visible = false;
					this.dgvDNSServers.Columns[16].Visible = false;
					this.dgvDNSServers.Columns[17].Visible = false;
					this.dgvDNSServers.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
				}
			}
		}

		private void InitializeAccountView()
		{
			this.dgvPackages.RowHeadersVisible = false;
			this.dgvPackages.CellBorderStyle = DataGridViewCellBorderStyle.None;
			this.dgvPackages.AlternatingRowsDefaultCellStyle.BackColor = this.secondLineColor;
			this.dgvPackages.ReadOnly = true;
			this.dgvPackages.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
			if (this.dgvPackages.Columns.Count > 0)
			{
				this.dgvPackages.Columns[0].Visible = false;
				this.dgvPackages.Columns[1].HeaderText = "Package name";
				this.dgvPackages.Columns[1].Width = 150;
				this.dgvPackages.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
				this.dgvPackages.Columns[2].HeaderText = "Valid until";
				this.dgvPackages.Columns[2].Width = 120;
			}
			this.dgvAccountServers.RowHeadersVisible = false;
			this.dgvAccountServers.CellBorderStyle = DataGridViewCellBorderStyle.None;
			this.dgvAccountServers.AlternatingRowsDefaultCellStyle.BackColor = this.secondLineColor;
			this.dgvAccountServers.DefaultCellStyle.SelectionBackColor = this.dgvAccountServers.DefaultCellStyle.BackColor;
			this.dgvAccountServers.DefaultCellStyle.SelectionForeColor = this.dgvAccountServers.DefaultCellStyle.ForeColor;
			this.dgvPackages.set_PaintEnhancedSelection(false);
			this.dgvPackages.RowTemplate.DefaultCellStyle.SelectionBackColor = Color.LightGray;
		}

		private void DgvServers_SelectionChanged(object sender, EventArgs e)
		{
			this.dgvServers.SelectionChanged -= new EventHandler(this.DgvServers_SelectionChanged);
			if (this.dgvServers.SelectedRows.Count == 0 && this.dgvServers.SelectedCells.Count > 0 && (this.dgvServers.SelectedCells[0].ColumnIndex == 2 || this.dgvServers.SelectedCells[0].ColumnIndex == 0 || this.dgvServers.SelectedCells[0].ColumnIndex == 14) && !this.dgvServers.Rows[this.dgvServers.SelectedCells[0].RowIndex].Cells[5].Selected)
			{
				this.dgvServers.Rows[this.dgvServers.SelectedCells[0].RowIndex].Selected = true;
			}
			this.dgvServers.SelectionChanged += new EventHandler(this.DgvServers_SelectionChanged);
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				string text = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
				this.SetFVFlag();
				bool flag = !(text != string.Empty) || !(text != "**** Favourites ****") || !(text != "**** Servers ****") || !(text != "Favourites") || !(text != "Servers") || !(text != "Africa") || !(text != "Asia") || !(text != "Europe") || !(text != "North America") || !(text != "Oceania") || !(text != "South America") || !(text != "Fastest Servers") || !(text != "TORoverVPN Servers") || !(text != "DoubleVPN Servers") || !(text != "Torrent Servers") || !(text != "Gaming Servers");
				if (!flag)
				{
					this.SetLinkServerText(text);
					string specificProtocols = this.dgvServers.SelectedRows[0].Cells[7].Value.ToString();
					if (text == "Fastest Server")
					{
						specificProtocols = this.specificInitialProtocolsForFS;
					}
					else if (text == "Fastest Favourite" || text == "Rotating Favourites")
					{
						this.currentFavouriteNumber = this.GetFavouritesServers().Count;
						if (this.currentFavouriteNumber != 0)
						{
							if (this.currentFavouriteNumber != 1)
							{
								if (!this.IsInternetLock() && this.swbKillSwitch.get_Value() && text == "Rotating Favourites" && !this.colFavouritesWasMoused && !this.linkServersWasClicked && !this.keyPress && !this.btnWasClicked && !this.sortare && !this.groupNewServices && !this.groupFavorite && !this.groupContinent && !this.resetFilters)
								{
									this.helper.MessageBoxShow("We do not recommend using KillSwitch while the Rotating Favourite is selected. \n\n At this time, KillSwitch does not close the desired applications during disconnect/reconnect process on Rotating Favourite servers.", "ibVPN client notification/info message", 2, true, true);
								}
								this.SetAvailableProtocolsForFV();
								specificProtocols = this.specificInitialProtocolsForFV;
								goto IL_478;
							}
						}
						if (!this.favoriteColumnWasClicked)
						{
							this.forceFSChange = true;
							if (this.vpnManager.get_ConnectionStatus() == "Connected" && this.lastConnectedServerName != null && this.lastConnectedServerName != string.Empty)
							{
								DataGridViewCellEventArgs e2 = new DataGridViewCellEventArgs(5, this.selectedServerIndex);
								this.SetGridViewSelectedItem_New(this.lastConnectedServerName, true, 8681, "DgvServers_SelectionChanged");
								this.dgvServers.CellValueChanged -= new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
								this.DgvServers_CellValueChanged(this.dgvServers, e2);
								this.dgvServers.CellValueChanged += new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
							}
							else
							{
								DataGridViewCellEventArgs e2 = new DataGridViewCellEventArgs(5, 1);
								this.SetGridViewSelectedItem_New("Fastest Server", true, 8690, "DgvServers_SelectionChanged");
								this.dgvServers.CellValueChanged -= new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
								this.DgvServers_CellValueChanged(this.dgvServers, e2);
								this.dgvServers.CellValueChanged += new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
							}
							string message = "Please mark at least 2 servers as favourites in order to use 'Fastest Favourite' or 'Rotating Favourites' feature.";
							this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 2, true, true);
						}
					}
					IL_478:
					this.SetSpecificProtocols(specificProtocols);
					this.SetLabelSelectedServerColor();
				}
				if (!this.sortare && !this.keyPress && !this.resetFilters && !this.groupContinent && !this.groupFavorite && !this.groupNewServices && !flag && !(text == this.lastConnectedServerName))
				{
					this.ChangeServer(text);
				}
				this.WriteServersInXML();
			}
		}

		private void SetFVFlag()
		{
			if (this.dgvServers.Rows.Count > 3)
			{
				string arg_7F_0 = this.dgvServers.Rows[2].Cells[1].Value.ToString().Trim();
				DataGridViewImageCell dataGridViewImageCell = this.dgvServers.Rows[2].Cells[0] as DataGridViewImageCell;
				int index = this.dgvServers.SelectedRows[0].Index;
				if (arg_7F_0 == "FV")
				{
					if (this.dgvServers.Rows[2].DefaultCellStyle.BackColor == this.connectButtonColor)
					{
						dataGridViewImageCell.Value = this.imageList1.Images["FVC"];
					}
					else if (index == 2)
					{
						dataGridViewImageCell.Value = this.imageList1.Images["FVS"];
					}
					else
					{
						dataGridViewImageCell.Value = this.imageList1.Images["FVI"];
					}
				}
				string arg_15C_0 = this.dgvServers.Rows[1].Cells[1].Value.ToString().Trim();
				DataGridViewImageCell dataGridViewImageCell2 = this.dgvServers.Rows[1].Cells[0] as DataGridViewImageCell;
				if (arg_15C_0 == "FS")
				{
					if (this.dgvServers.Rows[1].DefaultCellStyle.BackColor == this.connectButtonColor)
					{
						dataGridViewImageCell2.Value = this.imageList1.Images["FSC"];
					}
					else if (index == 1)
					{
						dataGridViewImageCell2.Value = this.imageList1.Images["FSS"];
					}
					else
					{
						dataGridViewImageCell2.Value = this.imageList1.Images["FSI"];
					}
				}
				string arg_239_0 = this.dgvServers.Rows[3].Cells[1].Value.ToString().Trim();
				DataGridViewImageCell dataGridViewImageCell3 = this.dgvServers.Rows[3].Cells[0] as DataGridViewImageCell;
				if (arg_239_0 == "RF")
				{
					if (this.dgvServers.Rows[3].DefaultCellStyle.BackColor == this.connectButtonColor)
					{
						dataGridViewImageCell3.Value = this.imageList1.Images["RFC"];
						return;
					}
					if (index == 3)
					{
						dataGridViewImageCell3.Value = this.imageList1.Images["RFS"];
						return;
					}
					dataGridViewImageCell3.Value = this.imageList1.Images["RFI"];
				}
			}
		}

		private void SetSpecificProtocols(string specificProtocols)
		{
			if (specificProtocols.Contains("1"))
			{
				this.rbPPTP.Enabled = true;
			}
			else
			{
				this.rbPPTP.Enabled = false;
				if (this.rbPPTP.Checked)
				{
					this.rbAutomatic.Checked = true;
				}
			}
			if (specificProtocols.Contains("2"))
			{
				this.rbL2TP.Enabled = true;
			}
			else
			{
				this.rbL2TP.Enabled = false;
				if (this.rbL2TP.Checked)
				{
					this.rbAutomatic.Checked = true;
				}
			}
			if (specificProtocols.Contains("3"))
			{
				this.rbSSTP.Enabled = true;
			}
			else
			{
				this.rbSSTP.Enabled = false;
				if (this.rbSSTP.Checked)
				{
					this.rbAutomatic.Checked = true;
				}
			}
			if (specificProtocols.Contains("4"))
			{
				this.rbIPSec.Enabled = true;
			}
			else
			{
				this.rbIPSec.Enabled = false;
				if (this.rbIPSec.Checked)
				{
					this.rbAutomatic.Checked = true;
				}
			}
			if (specificProtocols.Contains("0"))
			{
				this.rbOpenVPN_TCP.Enabled = true;
				this.rbOpenVPN_UDP.Enabled = true;
				return;
			}
			this.rbOpenVPN_TCP.Enabled = false;
			this.rbOpenVPN_UDP.Enabled = false;
			if (this.rbOpenVPN_TCP.Checked)
			{
				this.rbAutomatic.Checked = true;
				return;
			}
			if (this.rbOpenVPN_UDP.Checked)
			{
				this.rbAutomatic.Checked = true;
			}
		}

		private void SetLinkProtocolText(string checkedButton)
		{
			if (checkedButton != string.Empty)
			{
				this.dashboard.lnkProtocol.Text = checkedButton;
				this.dashboardServers.lnkProtocol.Text = checkedButton;
				this.dashboardVPNSettings.lnkProtocol.Text = checkedButton;
				this.dashboardDNSSettings.lnkProtocol.Text = checkedButton;
				this.dashboardSupport.lnkProtocol.Text = checkedButton;
				this.dashboardAccount.lnkProtocol.Text = checkedButton;
			}
		}

		private void SetLinkServerText(string selectedRow)
		{
			this.dashboard.lnkServers.Text = selectedRow;
			this.dashboardServers.lnkServers.Text = selectedRow;
			this.dashboardVPNSettings.lnkServers.Text = selectedRow;
			this.dashboardDNSSettings.lnkServers.Text = selectedRow;
			this.dashboardSupport.lnkServers.Text = selectedRow;
			this.dashboardAccount.lnkServers.Text = selectedRow;
		}

		private string CleanString(string str)
		{
			return str.Replace("(", "").Replace(")", "").Replace(" ", "").Replace("~", "").Replace("-", "");
		}

		private void SetProtocolComboSource()
		{
		}

		private bool IsFVNotConnected()
		{
			bool result = false;
			if (this.vpnManager.get_ConnectionStatus() != "Connected")
			{
				result = (this.dashboard.lnkServers.Text == "Fastest Favourite");
			}
			return result;
		}

		private void DgvServers_CellClick(object sender, DataGridViewCellEventArgs e)
		{
			if (e.ColumnIndex != 5)
			{
				this.dgvServers.Rows[e.RowIndex].Selected = true;
			}
			if (e.ColumnIndex == 5)
			{
				this.favoriteColumnWasClicked = true;
				string text = this.dgvServers.Rows[e.RowIndex].Cells[2].Value.ToString();
				string text2 = this.dashboard.lnkServers.Text;
				this.logger.log("DgvServers_CellClick - " + text);
				this.isFav = this.dgvServers.Rows[e.RowIndex].Cells[5].Value.ToString();
				if (this.vpnManager.get_ConnectionStatus() != "Connected" && (text2 == "Fastest Favourite" || text2 == "Rotating Favourites") && this.currentFavouriteNumber == 2 && this.isFav.ToLower() == "true")
				{
					string message = "You have removed too many favourite servers. 'Fastest Favorite' and 'Rotating Favourites' feature needs at least 2 favourite servers.";
					this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 2, true, true);
					DataGridViewCellEventArgs e2 = new DataGridViewCellEventArgs(5, 1);
					this.SetGridViewSelectedItem_New("Fastest Server", true, 9000, "DgvServers_CellClick");
					this.dgvServers.CellValueChanged -= new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
					this.DgvServers_CellValueChanged(this.dgvServers, e2);
					this.dgvServers.CellValueChanged += new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
				}
				if ((!(this.vpnManager.get_ConnectionStatus() == "Connected") && !(this.vpnManager.get_ConnectionStatus() == "Connecting...")) || !(text2 == "Fastest Favourite") || !(this.lastFavouriteConnectedServer == text))
				{
					if (this.GetValidServersRowShort(e.RowIndex) && this.IsFavouriteColumnFree())
					{
						if (this.dgvServers.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString() == "True")
						{
							this.DeleteFavourite(text);
						}
						else
						{
							this.AddFavourite(text);
						}
					}
					this.fastFavouritesListWasCreated = false;
					this.currentFavouriteNumber = this.GetFavouritesServers().Count;
					if (this.currentFavouriteNumber == 0)
					{
						this.apiManager.DeleteServerFavouriteRow(this.dgvServers);
						this.fastestFavouriteWasDeleted = true;
					}
					else
					{
						this.apiManager.AddServerFavouriteRow(this.dgvServers);
						this.fastestFavouriteWasDeleted = false;
					}
					this.SetGridViewSelectedItem_New(this.dashboard.lnkServers.Text, true, 9043, "DgvServers_CellClick");
					this.SetCurrentGridFlagsAndFavourites();
					this.SetGridConnectedServerColor();
					return;
				}
				if (this.vpnManager.get_ConnectionStatus() == "Connected")
				{
					this.helper.MessageBoxShow("You cannot change the favourite server you are connected", "ibVPN client notification/info message", 2, true, true);
				}
			}
		}

		private void GoToConnectedDNSServer(string lastDNSconnectedserver)
		{
			this.dgvDNSServers.SelectionChanged -= new EventHandler(this.dgvDNSServers_SelectionChanged);
			bool flag = false;
			if (this.dgvDNSServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvDNSServers.Rows.Count; i++)
				{
					if (this.dgvDNSServers.Rows[i].Cells[2].Value.ToString() == lastDNSconnectedserver)
					{
						flag = true;
						this.dgvDNSServers.Rows[i].Selected = true;
						i = this.dgvDNSServers.Rows.Count;
					}
					else
					{
						this.dgvDNSServers.Rows[i].Selected = false;
					}
				}
				if (!flag)
				{
					this.dgvDNSServers.Rows[0].Selected = true;
				}
			}
			this.dgvDNSServers.SelectionChanged += new EventHandler(this.dgvDNSServers_SelectionChanged);
		}

		private void SetGridFlagsInitial()
		{
			if (this.dgvServers.Rows.Count > 0)
			{
				try
				{
					ArrayList favouritesServers = this.GetFavouritesServers();
					for (int i = 0; i < this.dgvServers.Rows.Count; i++)
					{
						string item = this.dgvServers.Rows[i].Cells[2].Value.ToString();
						if (favouritesServers.Contains(item))
						{
							this.dgvServers.Rows[i].Cells[5].Value = true;
						}
						this.SetRowFlag(i);
						this.dgvServers.Rows[i].Height = this.rowHeight;
					}
				}
				catch (Exception ex)
				{
					this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 2, true, true);
				}
			}
		}

		private void SetCurrentGridFlagsAndFavourites()
		{
			if (this.dgvServers.Rows.Count > 0)
			{
				try
				{
					ArrayList favouritesServers = this.GetFavouritesServers();
					for (int i = 0; i < this.dgvServers.Rows.Count; i++)
					{
						try
						{
							string item = this.dgvServers.Rows[i].Cells[2].Value.ToString();
							if (favouritesServers.Contains(item))
							{
								this.dgvServers.Rows[i].Cells[5].Value = true;
							}
							else
							{
								this.dgvServers.Rows[i].Cells[5].Value = false;
							}
							this.SetRowFlag(i);
							this.dgvServers.Rows[i].Height = this.rowHeight;
						}
						catch
						{
						}
					}
				}
				catch (Exception ex)
				{
					this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 2, true, true);
				}
			}
		}

		private ArrayList GetFavouritesServers()
		{
			string text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "Favourites.xml";
			ArrayList arrayList = new ArrayList();
			if (File.Exists(text))
			{
				StreamReader arg_55_0 = new StreamReader(new FileStream(text, FileMode.Open, FileAccess.Read, FileShare.Read));
				XmlDocument xmlDocument = new XmlDocument();
				string xml = arg_55_0.ReadToEnd();
				arg_55_0.Close();
				xmlDocument.LoadXml(xml);
				using (IEnumerator enumerator = xmlDocument.ChildNodes.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						XmlNode xmlNode = (XmlNode)enumerator.Current;
						if (xmlNode.Name.Equals("favourites"))
						{
							foreach (XmlNode xmlNode2 in xmlNode.ChildNodes)
							{
								if (xmlNode2.Name.Equals("favourite"))
								{
									arrayList.Add(xmlNode2.InnerText);
								}
							}
						}
					}
					return arrayList;
				}
			}
			new XDocument(new object[]
			{
				new XElement("favourites")
			}).Save(text);
			return arrayList;
		}

		private void AddFavourite(string name)
		{
			string filename = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "Favourites.xml";
			XmlDocument expr_35 = new XmlDocument();
			expr_35.Load(filename);
			XmlNode xmlNode = expr_35.SelectSingleNode("/favourites");
			XmlNode xmlNode2 = expr_35.CreateElement("favourite");
			xmlNode2.InnerText = name;
			xmlNode.AppendChild(xmlNode2);
			expr_35.Save(filename);
		}

		private void DeleteFavourite(string name)
		{
			string filename = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "Favourites.xml";
			XmlDocument expr_35 = new XmlDocument();
			expr_35.Load(filename);
			XmlElement xmlElement = (XmlElement)expr_35.SelectSingleNode("/favourites/favourite[text()='" + name + "']");
			if (xmlElement != null)
			{
				xmlElement.ParentNode.RemoveChild(xmlElement);
			}
			expr_35.Save(filename);
		}

		private void AddDNSServer(string dnsIp)
		{
			string filename = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "DNSServers.xml";
			XmlDocument expr_35 = new XmlDocument();
			expr_35.Load(filename);
			XmlNode xmlNode = expr_35.SelectSingleNode("/servers");
			XmlNode xmlNode2 = expr_35.CreateElement("ip");
			xmlNode2.InnerText = dnsIp;
			xmlNode.AppendChild(xmlNode2);
			expr_35.Save(filename);
		}

		private void WriteDNSServers()
		{
			if (this.dgvDNSServers.Rows.Count > 0)
			{
				string text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "DNSServers.xml";
				if (File.Exists(text))
				{
					File.Delete(text);
				}
				new XDocument(new object[]
				{
					new XElement("servers")
				}).Save(text);
				for (int i = 0; i < this.dgvDNSServers.Rows.Count; i++)
				{
					string dnsIp = this.dgvDNSServers.Rows[i].Cells[11].Value.ToString();
					this.AddDNSServer(dnsIp);
				}
			}
		}

		private void SetInfoFlag()
		{
			if (this.vpnManager.get_ConnectionStatus() == "Connected")
			{
				string key = string.Empty;
				string text = string.Empty;
				this.RefreshDashboard2();
				if (this.dgvServers.SelectedRows.Count > 0)
				{
					text = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString().Trim();
					if (text != "Fastest Server" && text != "Fastest Favourite" && text != "Rotating Favourites")
					{
						key = this.dgvServers.SelectedRows[0].Cells[1].Value.ToString().Trim();
					}
					else
					{
						ArrayList arrayList = new ArrayList();
						if (text == "Rotating Favourites")
						{
							arrayList = this.GetFastestServers(this.indexRF, this.dashboard.lnkServers.Text, 9341, "SetInfoFlag");
							if (this.indexRF == this.GetFavouritesServers().Count - 1)
							{
								this.indexRF = -1;
							}
						}
						else
						{
							arrayList = this.GetFastestServers(this.fastestServerReconnectTryNumber, this.dashboard.lnkServers.Text, 9349, "SetInfoFlag");
						}
						if (arrayList.Count > 0)
						{
							key = arrayList[3].ToString();
							text = arrayList[0].ToString();
							this.lastFavouriteConnectedServer = text;
							this.logger.log("Connected to: " + text + " / Protocol:" + this.dashboard.lnkProtocol.Text);
						}
					}
					Image flag = this.imageList1.Images[key];
					this.SetInfoFlagStatus(flag, text);
					return;
				}
			}
			else
			{
				if (this.vpnManager.get_ConnectionStatus() == "Connecting...")
				{
					this.SetInfoFlagStatus("VPN: Connecting..");
					return;
				}
				this.SetInfoFlagStatus("VPN: Not Connected");
			}
		}

		private void SendAnalisticsFailedConnectedRequest()
		{
			Thread.Sleep(1000);
			this.AnalyticsFailedConnectTrack(this.dashboard.lnkServers.Text, this.protocolForConnect, this.failedConnectionError);
		}

		private void SendAnalisticsConnectedRequest()
		{
			if (this.vpnManager.get_ConnectionStatus() == "Connected")
			{
				Thread.Sleep(1000);
				string serverName = string.Empty;
				string protocol = string.Empty;
				if (!(this.serverReconnect == "Fastest Server") && !(this.serverReconnect == "Fastest Favourite"))
				{
					serverName = this.serverReconnect;
				}
				else
				{
					serverName = this.serverReconnect + "[" + this.dashboard.infoFlag.lblinfoConnection.Text + "]";
				}
				if (this.protocolReconnect == "Automatic")
				{
					protocol = this.protocolReconnect + "[" + this.protocolForConnect + "]";
				}
				else
				{
					protocol = this.protocolReconnect;
				}
				this.AnalyticsConnectTrack(serverName, protocol);
			}
		}

		private void SetInfoFlagStatus(Image flag, string serverName)
		{
			this.dashboard.infoFlag.lblinfoConnection.Location = new Point(25, 0);
			this.dashboard.infoFlag.connectedFlag.Image = flag;
			this.dashboard.infoFlag.lblinfoConnection.Text = serverName;
			this.dashboardServers.infoFlag.lblinfoConnection.Location = new Point(25, 0);
			this.dashboardServers.infoFlag.connectedFlag.Image = flag;
			this.dashboardServers.infoFlag.lblinfoConnection.Text = serverName;
			this.dashboardVPNSettings.infoFlag.lblinfoConnection.Location = new Point(25, 0);
			this.dashboardVPNSettings.infoFlag.connectedFlag.Image = flag;
			this.dashboardVPNSettings.infoFlag.lblinfoConnection.Text = serverName;
			this.dashboardDNSSettings.infoFlag.lblinfoConnection.Location = new Point(25, 0);
			this.dashboardDNSSettings.infoFlag.connectedFlag.Image = flag;
			this.dashboardDNSSettings.infoFlag.lblinfoConnection.Text = serverName;
			this.dashboardSupport.infoFlag.lblinfoConnection.Location = new Point(25, 0);
			this.dashboardSupport.infoFlag.connectedFlag.Image = flag;
			this.dashboardSupport.infoFlag.lblinfoConnection.Text = serverName;
			this.dashboardAccount.infoFlag.lblinfoConnection.Location = new Point(25, 0);
			this.dashboardAccount.infoFlag.connectedFlag.Image = flag;
			this.dashboardAccount.infoFlag.lblinfoConnection.Text = serverName;
		}

		private void SetDNSGridFlags()
		{
			if (this.dgvDNSServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvDNSServers.Rows.Count; i++)
				{
					string key = this.dgvDNSServers.Rows[i].Cells[1].Value.ToString().Trim();
					(this.dgvDNSServers.Rows[i].Cells[0] as DataGridViewImageCell).Value = this.imageList1.Images[key];
					this.dgvDNSServers.Rows[i].Height = this.rowHeight;
				}
			}
		}

		private void SetGridNotConnectedServerColor()
		{
			this.logger.log("patrat verde 1");
			if (this.dgvServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvServers.Rows.Count; i++)
				{
					Color backColor = this.dgvServers.Rows[i].DefaultCellStyle.BackColor;
					if (this.dgvServers.Rows[i].Cells[2].Value.ToString().Trim() == this.lastConnectedServerName)
					{
						this.logger.log("patrat verde 1.1");
						if (backColor == this.connectButtonColor)
						{
							this.logger.log("patrat verde 1.2");
							this.dgvServers.Rows[i].DefaultCellStyle.SelectionBackColor = Color.LightGray;
							this.dgvServers.Rows[i].DefaultCellStyle.SelectionForeColor = Color.Black;
							this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = Color.LightGray;
							this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = Color.LightGray;
							this.dgvServers.Rows[i].DefaultCellStyle.BackColor = this.secondLineColor;
							this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.secondLineColor;
							this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.secondLineColor;
						}
					}
				}
			}
		}

		private void SetGridNotConnectedServerColorWhenServerChange()
		{
			if (this.dgvServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvServers.Rows.Count; i++)
				{
					Color backColor = this.dgvServers.Rows[i].DefaultCellStyle.BackColor;
					string a = this.dgvServers.Rows[i].Cells[2].Value.ToString().Trim();
					string img = this.dgvServers.Rows[i].Cells[1].Value.ToString().Trim();
					DataGridViewImageCell bcx = this.dgvServers.Rows[i].Cells[0] as DataGridViewImageCell;
					if (a == this.lastConnectedServerName && backColor == this.connectButtonColor)
					{
						if (!(a == "Fastest Server") && !(a == "Rotating Favourites"))
						{
							if (a == "Fastest Favourite")
							{
								this.dgvServers.Rows[i].DefaultCellStyle.BackColor = this.defColor;
								this.dgvServers.Rows[i].DefaultCellStyle.SelectionBackColor = Color.LightGray;
								this.dgvServers.Rows[i].DefaultCellStyle.SelectionForeColor = Color.Black;
								this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.defColor;
								this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.defColor;
								this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = Color.LightGray;
								this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = Color.LightGray;
								this.dgvServers.Rows[i].Cells[2].Style.BackColor = this.defColor;
								this.dgvServers.Rows[i].Cells[2].Style.ForeColor = Color.Black;
								this.dgvServers.Rows[i].Cells[2].Style.SelectionBackColor = Color.LightGray;
								this.dgvServers.Rows[i].Cells[2].Style.SelectionForeColor = Color.Black;
								this.SetFlags(i, img, bcx);
							}
							else
							{
								this.dgvServers.Rows[i].DefaultCellStyle.ForeColor = Color.Black;
							}
						}
						else
						{
							this.dgvServers.Rows[i].DefaultCellStyle.BackColor = this.secondLineColor;
							this.dgvServers.Rows[i].DefaultCellStyle.SelectionBackColor = Color.LightGray;
							this.dgvServers.Rows[i].DefaultCellStyle.SelectionForeColor = Color.Black;
							this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.secondLineColor;
							this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.secondLineColor;
							this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = Color.LightGray;
							this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = Color.LightGray;
							this.dgvServers.Rows[i].Cells[2].Style.BackColor = this.secondLineColor;
							this.dgvServers.Rows[i].Cells[2].Style.ForeColor = Color.Black;
							this.dgvServers.Rows[i].Cells[2].Style.SelectionBackColor = Color.LightGray;
							this.dgvServers.Rows[i].Cells[2].Style.SelectionForeColor = Color.Black;
							this.SetFlags(i, img, bcx);
						}
					}
				}
			}
		}

		private void SetGridConnectedServerColor()
		{
			if (this.dgvServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvServers.Rows.Count; i++)
				{
					if (this.GetValidServersRow(i))
					{
						Color backColor = this.dgvServers.Rows[i].DefaultCellStyle.BackColor;
						string img = this.dgvServers.Rows[i].Cells[1].Value.ToString().Trim();
						DataGridViewImageCell bcx = this.dgvServers.Rows[i].Cells[0] as DataGridViewImageCell;
						if (this.dgvServers.Rows[i].Cells[2].Value.ToString().Trim() == this.lastConnectedServerName)
						{
							this.dgvServers.Rows[i].DefaultCellStyle.BackColor = this.connectButtonColor;
							this.dgvServers.Rows[i].DefaultCellStyle.SelectionBackColor = this.connectButtonColor;
							this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = this.connectButtonColor;
							this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = this.connectButtonColor;
							this.dgvServers.Rows[i].Cells[2].Style.SelectionBackColor = this.connectButtonColor;
							this.dgvServers.Rows[i].Cells[2].Style.SelectionForeColor = Color.White;
							this.dgvServers.Rows[i].DefaultCellStyle.SelectionForeColor = Color.White;
							this.SetFlags(i, img, bcx);
						}
						else if (backColor == this.connectButtonColor)
						{
							if (i % 2 == 0)
							{
								this.dgvServers.Rows[i].DefaultCellStyle.BackColor = this.defColor;
								this.dgvServers.Rows[i].DefaultCellStyle.SelectionBackColor = Color.LightGray;
								this.dgvServers.Rows[i].DefaultCellStyle.SelectionForeColor = Color.Black;
								this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.defColor;
								this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.defColor;
								this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = Color.LightGray;
								this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = Color.LightGray;
								this.dgvServers.Rows[i].Cells[2].Style.BackColor = this.defColor;
								this.dgvServers.Rows[i].Cells[2].Style.ForeColor = Color.Black;
								this.dgvServers.Rows[i].Cells[2].Style.SelectionBackColor = Color.LightGray;
								this.dgvServers.Rows[i].Cells[2].Style.SelectionForeColor = Color.Black;
							}
							else
							{
								this.dgvServers.Rows[i].DefaultCellStyle.BackColor = this.secondLineColor;
								this.dgvServers.Rows[i].DefaultCellStyle.SelectionBackColor = Color.LightGray;
								this.dgvServers.Rows[i].DefaultCellStyle.SelectionForeColor = Color.Black;
								this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.secondLineColor;
								this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.secondLineColor;
								this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = Color.LightGray;
								this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = Color.LightGray;
								this.dgvServers.Rows[i].Cells[2].Style.BackColor = this.secondLineColor;
								this.dgvServers.Rows[i].Cells[2].Style.ForeColor = Color.Black;
								this.dgvServers.Rows[i].Cells[2].Style.SelectionBackColor = Color.LightGray;
								this.dgvServers.Rows[i].Cells[2].Style.SelectionForeColor = Color.Black;
							}
							this.SetFlags(i, img, bcx);
						}
					}
				}
			}
		}

		private void SetGridConnectedDNSServerColor(string server)
		{
			if (this.dgvDNSServers.Rows.Count > 0 && this.dgvDNSServers.SelectedRows.Count > 0)
			{
				int index = this.dgvDNSServers.SelectedRows[0].Index;
				for (int i = 0; i < this.dgvDNSServers.Rows.Count; i++)
				{
					if (this.dgvDNSServers.Rows[i].Cells[2].Value.ToString().Trim() == server)
					{
						this.dgvDNSServers.Rows[i].DefaultCellStyle.BackColor = this.connectButtonColor;
						this.dgvDNSServers.Rows[i].DefaultCellStyle.SelectionBackColor = this.connectButtonColor;
						this.dgvDNSServers.Rows[i].DefaultCellStyle.SelectionForeColor = Color.White;
					}
					else if (i == index)
					{
						this.dgvDNSServers.Rows[i].DefaultCellStyle.BackColor = Color.LightGray;
						this.dgvDNSServers.Rows[i].DefaultCellStyle.SelectionBackColor = Color.LightGray;
						this.dgvDNSServers.Rows[i].DefaultCellStyle.SelectionForeColor = Color.Black;
					}
					else if (i % 2 == 0)
					{
						this.dgvDNSServers.Rows[i].DefaultCellStyle.BackColor = this.firstLineColor;
						this.dgvDNSServers.Rows[i].DefaultCellStyle.ForeColor = Color.Black;
					}
					else
					{
						this.dgvDNSServers.Rows[i].DefaultCellStyle.BackColor = this.secondLineColor;
						this.dgvDNSServers.Rows[i].DefaultCellStyle.ForeColor = Color.Black;
					}
				}
			}
		}

		private void ResetGridConnectedDNSServerColorNew()
		{
			if (this.dgvDNSServers.Rows.Count > 0)
			{
				for (int i = 0; i < this.dgvDNSServers.Rows.Count; i++)
				{
					if (this.dgvDNSServers.Rows[i].Cells[2].Value.ToString() != this.lastDNSconnectedserver)
					{
						if (i % 2 == 0)
						{
							this.dgvDNSServers.Rows[i].DefaultCellStyle.BackColor = this.firstLineColor;
						}
						else
						{
							this.dgvDNSServers.Rows[i].DefaultCellStyle.BackColor = this.secondLineColor;
						}
					}
				}
			}
		}

		private void ResetGridConnectedDNSServerColor()
		{
			int num = 0;
			if (this.dgvDNSServers.Rows.Count > 0)
			{
				if (this.dgvDNSServers.SelectedRows.Count > 0)
				{
					num = this.dgvDNSServers.SelectedRows[0].Index;
					this.dgvDNSServers.SelectedRows[0].DefaultCellStyle.SelectionBackColor = Color.LightGray;
					this.dgvDNSServers.SelectedRows[0].DefaultCellStyle.BackColor = Color.LightGray;
					this.dgvDNSServers.SelectedRows[0].DefaultCellStyle.SelectionForeColor = Color.Black;
				}
				for (int i = 0; i < this.dgvDNSServers.Rows.Count; i++)
				{
					if (i != num)
					{
						if (i % 2 == 0)
						{
							this.dgvDNSServers.Rows[i].DefaultCellStyle.BackColor = this.firstLineColor;
						}
						else
						{
							this.dgvDNSServers.Rows[i].DefaultCellStyle.BackColor = this.secondLineColor;
						}
					}
				}
			}
		}

		private void SetGridFlags()
		{
			if (this.dgvServers.Rows.Count > 0 && this.dgvServers.Columns.Count >= 15)
			{
				this.dgvServers.Columns[14].DefaultCellStyle.WrapMode = DataGridViewTriState.True;
				for (int i = 0; i < this.dgvServers.Rows.Count; i++)
				{
					string text = this.dgvServers.Rows[i].Cells[14].Value.ToString().Replace(Environment.NewLine, "").Replace("%", "");
					if (text != "102")
					{
						this.dgvServers.Rows[i].Cells[14].Value = text.Replace("free", "") + "%" + Environment.NewLine + "free";
						this.SetRowFlag(i);
					}
					this.dgvServers.Rows[i].Height = this.rowHeight;
				}
			}
		}

		private void SetRowFlag(int i)
		{
			if (this.dgvServers.RowCount > i)
			{
				string text = this.dgvServers.Rows[i].Cells[2].Value.ToString().Trim();
				if (text != null && text != string.Empty && text != "**** Favourites ****" && text != "**** Servers ****" && text != "Favourites" && text != "Servers" && text != "Africa" && text != "Asia" && text != "Europe" && text != "North America" && text != "Oceania" && text != "South America" && text != "Fastest Servers" && text != "TORoverVPN Servers" && text != "DoubleVPN Servers" && text != "Torrent Servers" && text != "Gaming Servers")
				{
					string img = this.dgvServers.Rows[i].Cells[1].Value.ToString().Trim();
					DataGridViewImageCell bcx = this.dgvServers.Rows[i].Cells[0] as DataGridViewImageCell;
					this.SetFlags(i, img, bcx);
					if (text == "Fastest Server" || text == "Fastest Favourite" || text == "Rotating Favourites")
					{
						this.dgvServers.Rows[i].Cells[5] = new DataGridViewTextBoxCell();
						this.dgvServers.Rows[i].Cells[5].ReadOnly = true;
						if (i % 2 == 0)
						{
							this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.defColor;
							this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.defColor;
						}
						else
						{
							this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.secondLineColor;
							this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.secondLineColor;
						}
						this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = Color.LightGray;
						this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = Color.LightGray;
						return;
					}
				}
				else
				{
					this.dgvServers.Rows[i].Cells[0] = new DataGridViewTextBoxCell();
					this.dgvServers.Rows[i].Cells[0].Value = string.Empty;
					this.dgvServers.Rows[i].Cells[5] = new DataGridViewTextBoxCell();
					this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = Color.LightGray;
					this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = Color.LightGray;
					this.dgvServers.Rows[i].Cells[5].ReadOnly = true;
					this.dgvServers.Rows[i].Cells[0].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[1].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[2].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[3].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[4].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[14].Style.BackColor = this.baseColor;
				}
			}
		}

		private void SetFlags(int i, string img, DataGridViewImageCell bcx)
		{
			if (bcx != null && img != null)
			{
				int num = 0;
				if (this.dgvServers.SelectedRows.Count > 0)
				{
					num = this.dgvServers.SelectedRows[0].Index;
				}
				if (img == "FV")
				{
					if (this.dgvServers.Rows[i].DefaultCellStyle.BackColor == this.connectButtonColor)
					{
						bcx.Value = this.imageList1.Images["FVC"];
						return;
					}
					if (num == i)
					{
						bcx.Value = this.imageList1.Images["FVS"];
						return;
					}
					bcx.Value = this.imageList1.Images["FVI"];
					return;
				}
				else if (img == "FS")
				{
					if (this.dgvServers.Rows[i].DefaultCellStyle.BackColor == this.connectButtonColor)
					{
						bcx.Value = this.imageList1.Images["FSC"];
						return;
					}
					if (num == i)
					{
						bcx.Value = this.imageList1.Images["FSS"];
						return;
					}
					bcx.Value = this.imageList1.Images["FSI"];
					return;
				}
				else if (img == "RF")
				{
					if (this.dgvServers.Rows[i].DefaultCellStyle.BackColor == this.connectButtonColor)
					{
						bcx.Value = this.imageList1.Images["RFC"];
						return;
					}
					if (num == i)
					{
						bcx.Value = this.imageList1.Images["RFS"];
						return;
					}
					bcx.Value = this.imageList1.Images["RFI"];
					return;
				}
				else
				{
					bcx.Value = this.imageList1.Images[img];
				}
			}
		}

		private void SetGroupGridFlags()
		{
			for (int i = 0; i < this.dgvServers.Rows.Count; i++)
			{
				string a = this.dgvServers.Rows[i].Cells[2].Value.ToString().Trim();
				if (a != string.Empty && a != "**** Favourites ****" && a != "**** Servers ****" && a != "Favourites" && a != "Servers" && a != "Africa" && a != "Asia" && a != "Europe" && a != "North America" && a != "Oceania" && a != "South America" && a != "Fastest Servers" && a != "TORoverVPN Servers" && a != "DoubleVPN Servers" && a != "Torrent Servers" && a != "Gaming Servers")
				{
					string img = this.dgvServers.Rows[i].Cells[1].Value.ToString().Trim();
					DataGridViewImageCell bcx = this.dgvServers.Rows[i].Cells[0] as DataGridViewImageCell;
					this.SetFlags(i, img, bcx);
					if (a == "Fastest Server" || a == "Fastest Favourite" || a == "Rotating Favourites")
					{
						this.dgvServers.Rows[i].Cells[5] = new DataGridViewTextBoxCell();
						this.dgvServers.Rows[i].Cells[5].ReadOnly = true;
						if (i % 2 == 0)
						{
							this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.defColor;
							this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.defColor;
						}
						else
						{
							this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.secondLineColor;
							this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.secondLineColor;
						}
						this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = Color.LightGray;
						this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = Color.LightGray;
					}
				}
				else
				{
					this.dgvServers.Rows[i].Cells[0] = new DataGridViewTextBoxCell();
					this.dgvServers.Rows[i].Cells[0].Value = string.Empty;
					this.dgvServers.Rows[i].Cells[5] = new DataGridViewTextBoxCell();
					this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[5].Style.ForeColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[5].Style.SelectionForeColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[5].Style.SelectionBackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[5].ReadOnly = true;
					this.dgvServers.Rows[i].Cells[0].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[1].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[2].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[3].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[4].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[5].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[14].Style.BackColor = this.baseColor;
					this.dgvServers.Rows[i].Cells[2].Value = this.dgvServers.Rows[i].Cells[4].Value;
					if (!(bool)this.dgvServers.Rows[i].Cells[5].Value && this.dgvServers.Rows[i].Cells[2].Value.ToString() == "Favourites")
					{
						this.dgvServers.Rows[i].Cells[2].Value = "Servers";
					}
				}
				this.dgvServers.Rows[i].Height = this.rowHeight;
				if (this.dgvServers.Rows[i].Cells[2].Value.ToString().Trim() == this.lastConnectedServerName)
				{
					this.dgvServers.Rows[i].DefaultCellStyle.BackColor = ColorFromHex.GetColorFromHex("#FDBB2F");
					this.dgvServers.Rows[i].DefaultCellStyle.ForeColor = Color.White;
					this.dgvServers.Rows[i].DefaultCellStyle.SelectionForeColor = Color.White;
				}
				if (i == 0)
				{
					this.dgvServers.Rows[i].Cells[2].Style.ForeColor = Color.Black;
					this.dgvServers.Rows[i].Cells[2].Style.SelectionForeColor = Color.Black;
					this.dgvServers.Rows[i].Cells[2].Value = "Fastest Servers";
				}
				if (i == 2)
				{
					string a2 = this.dgvServers.Rows[i].Cells[2].Value.ToString();
					if ((a2 == string.Empty && a2 != "Favourites" && a2 != "Africa") || a2 == "FS" || a2 == "FV" || a2 == "RF")
					{
						this.dgvServers.Rows[i].Cells[2].Style.ForeColor = Color.Black;
						this.dgvServers.Rows[i].Cells[2].Style.SelectionForeColor = Color.Black;
						this.dgvServers.Rows[i].Cells[2].Value = "Servers";
					}
				}
			}
		}

		[DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]
		public static extern bool SetWindowText(IntPtr hwnd, string lpString);

		[DllImport("user32.dll")]
		public static extern int SendMessage(IntPtr hwnd, int message, int wParam, IntPtr lParam);

		private void MainForm_Load(object sender, EventArgs e)
		{
			this.logger.log("incepe metoda load MainForm");
			base.set_Icon(Resources.ibvpn_logo_red);
			this.logger.log("MainForm - pas 1");
			this.notifyIconIbVPN.Visible = true;
			this.logger.log("MainForm - pas 2");
			this.notifyIconIbVPN.Icon = Resources.ibvpn_logo_red;
			this.logger.log("MainForm - pas 3");
			try
			{
				this.logger.log("MainForm - pas 4");
				this.nlmUser.AdviseforNetworklistManager();
				this.logger.log("MainForm - pas 5");
			}
			catch
			{
				this.logger.log("MainForm - pas 6");
			}
			this.logger.log("MainForm - pas 7");
			this.initialLnkKswSetLocation = this.dashboard.lnkKswSet.Location;
			this.logger.log("gata metoda load MainForm");
		}

		public void LoadLogin()
		{
			this.SetDPIPanels();
			this.LoginUser();
			this.Cursor = Cursors.AppStarting;
			this.ReadInitialSettings(false);
			this.SetInitialMainFormPosition();
			this.SetRchLogTextInitial();
			this.SetLogs(this.txtLog);
			this.chkEnableLog_CheckedChanged(this, null);
		}

		private void SetDPIPanels()
		{
			int num = Convert.ToInt32(this.dpiX * 340f / 96f);
			Convert.ToInt32(this.dpiX * 160f / 96f);
			if (this.dpiX != 96f)
			{
				this.MinimumSize = new Size(0, 0);
				this.MaximumSize = new Size(0, 0);
				this.sideNavIbVPN.MinimumSize = new Size(0, 0);
				this.sideNavIbVPN.MaximumSize = new Size(0, 0);
				this.spcDashboard.MinimumSize = new Size(0, 0);
				this.spcServers.MinimumSize = new Size(0, 0);
				this.spcVPNSettings.MinimumSize = new Size(0, 0);
				this.spcDNSSettings.MinimumSize = new Size(0, 0);
				this.spcSupport.MinimumSize = new Size(0, 0);
				this.spcAccount.MinimumSize = new Size(0, 0);
				this.spcDashboard.MaximumSize = new Size(0, 0);
				this.spcServers.MaximumSize = new Size(0, 0);
				this.spcVPNSettings.MaximumSize = new Size(0, 0);
				this.spcDNSSettings.MaximumSize = new Size(0, 0);
				this.spcSupport.MaximumSize = new Size(0, 0);
				this.spcAccount.MaximumSize = new Size(0, 0);
				this.snpDashboard.MinimumSize = new Size(0, 0);
				this.snpServers.MinimumSize = new Size(0, 0);
				this.snpVPNSettings.MinimumSize = new Size(0, 0);
				this.snpDNSSettings.MinimumSize = new Size(0, 0);
				this.snpSupport.MinimumSize = new Size(0, 0);
				this.snpAccount.MinimumSize = new Size(0, 0);
				this.snpDashboard.MaximumSize = new Size(0, 0);
				this.snpServers.MaximumSize = new Size(0, 0);
				this.snpVPNSettings.MaximumSize = new Size(0, 0);
				this.snpDNSSettings.MaximumSize = new Size(0, 0);
				this.snpSupport.MaximumSize = new Size(0, 0);
				this.snpAccount.MaximumSize = new Size(0, 0);
				this.spcDashboard.Panel1MinSize = num + num * 18 / 100;
				this.spcServers.Panel1MinSize = num;
				this.spcVPNSettings.Panel1MinSize = num;
				this.spcDNSSettings.Panel1MinSize = num;
				this.spcSupport.Panel1MinSize = num;
				this.spcAccount.Panel1MinSize = num;
				this.spcDashboard.SplitterDistance = num;
				this.spcServers.SplitterDistance = num;
				this.spcVPNSettings.SplitterDistance = num;
				this.spcDNSSettings.SplitterDistance = num;
				this.spcSupport.SplitterDistance = num;
				this.spcAccount.SplitterDistance = num;
				this.tbcServers.set_FixedTabSize(new Size(0, 63));
				this.tbcVPNSettings.set_FixedTabSize(new Size(0, 63));
				this.tbcDNSSettings.set_FixedTabSize(new Size(0, 63));
				this.tbcSupport.set_FixedTabSize(new Size(0, 63));
				this.tbcAccount.set_FixedTabSize(new Size(0, 63));
				int num2 = base.RectangleToScreen(base.ClientRectangle).Top - base.Top;
				base.Height = this.sideNavIbVPN.Height + num2 * 150 / 100;
				this.offsetLinkSettings = this.offsetLinkSettings * 125 / 100;
			}
		}

		private void GetResolution()
		{
			Graphics graphics = base.CreateGraphics();
			this.dpiX = graphics.DpiX;
			if (this.dpiX != 96f)
			{
				this.rowHeight = Convert.ToInt32(this.dpiX * 30f / 96f);
				this.columnHeadersHeight = Convert.ToInt32(this.dpiX * 23f / 96f);
				this.flagColumnWidth = Convert.ToInt32(this.dpiX * 40f / 96f);
				this.centerYScreen = Convert.ToInt32(this.dpiX * 600f / 96f);
				this.SetSideNavbarItemsDPI();
			}
		}

		private void SetSideNavbarItemsDPI()
		{
			int imagePaddingHorizontal = Convert.ToInt32(this.dpiX * 4f / 96f);
			this.sniDashboard.set_ImageFixedSize(new Size(0, 0));
			this.sniDashboard.set_ImageFixedSize(new Size(0, 0));
			this.sniDashboard.set_ImagePaddingHorizontal(imagePaddingHorizontal);
			this.sniServers.set_FixedSize(new Size(0, 0));
			this.sniServers.set_ImageFixedSize(new Size(0, 0));
			this.sniServers.set_ImagePaddingHorizontal(imagePaddingHorizontal);
			this.sniVPNSettings.set_ImageFixedSize(new Size(0, 0));
			this.sniVPNSettings.set_ImageFixedSize(new Size(0, 0));
			this.sniVPNSettings.set_ImagePaddingHorizontal(imagePaddingHorizontal);
			this.sniDNSSettings.set_ImageFixedSize(new Size(0, 0));
			this.sniDNSSettings.set_ImageFixedSize(new Size(0, 0));
			this.sniDNSSettings.set_ImagePaddingHorizontal(imagePaddingHorizontal);
			this.sniSupport.set_ImageFixedSize(new Size(0, 0));
			this.sniSupport.set_ImageFixedSize(new Size(0, 0));
			this.sniSupport.set_ImagePaddingHorizontal(imagePaddingHorizontal);
			this.sniAccount.set_ImageFixedSize(new Size(0, 0));
			this.sniAccount.set_ImageFixedSize(new Size(0, 0));
			this.sniAccount.set_ImagePaddingHorizontal(imagePaddingHorizontal);
			this.sniLogout.set_ImageFixedSize(new Size(0, 0));
			this.sniLogout.set_ImageFixedSize(new Size(0, 0));
			this.sniLogout.set_ImagePaddingHorizontal(imagePaddingHorizontal);
		}

		private void ReadInitialSettings(bool reset)
		{
			Hashtable hashtable = new Hashtable();
			hashtable = this.GetSettings(this.userXMLLocation);
			if ((string)hashtable["remember"] == "True")
			{
				if ((string)hashtable["autologin"] == "True")
				{
					this.chkAutoLogin.set_Checked(true);
				}
				else
				{
					this.chkAutoLogin.set_Checked(false);
					this.chkAutoConnect.set_Checked(false);
					this.chkAutoConnect.Enabled = false;
				}
				if ((string)hashtable["autoconnect"] == "True")
				{
					this.chkAutoConnect.set_Checked(true);
				}
				else
				{
					this.chkAutoConnect.set_Checked(false);
				}
			}
			else
			{
				this.chkAutoLogin.set_Checked(false);
				this.chkAutoConnect.set_Checked(false);
				this.chkAutoConnect.Enabled = false;
			}
			this.chkStartupLaunch.remove_CheckedChanged(new EventHandler(this.chkStartupLaunch_CheckedChanged));
			if ((string)hashtable["launchOnStartup"] == "True")
			{
				this.chkStartupLaunch.set_Checked(true);
			}
			else
			{
				this.chkStartupLaunch.set_Checked(false);
			}
			this.chkStartupLaunch.add_CheckedChanged(new EventHandler(this.chkStartupLaunch_CheckedChanged));
			if ((string)hashtable["askOnExit"] == "True")
			{
				this.askConfirmationOnExitSettings = true;
				this.chkConfirmationOnExit.set_Checked(true);
			}
			else
			{
				this.askConfirmationOnExitSettings = false;
				this.chkConfirmationOnExit.set_Checked(false);
			}
			this.chkAlwaysOnTop.remove_CheckedChanged(new EventHandler(this.chkAlwaysOnTop_CheckedChanged));
			if ((string)hashtable["alwaysOnTop"] == "True")
			{
				this.alwaysOnTop = true;
				this.chkAlwaysOnTop.set_Checked(true);
			}
			else
			{
				this.alwaysOnTop = false;
				this.chkAlwaysOnTop.set_Checked(false);
			}
			this.chkAlwaysOnTop.add_CheckedChanged(new EventHandler(this.chkAlwaysOnTop_CheckedChanged));
			if ((string)hashtable["disableShutdown"] == "True")
			{
				this.disableShutdown = true;
				this.chkDisableShutdown.set_Checked(true);
			}
			else
			{
				this.disableShutdown = false;
				this.chkDisableShutdown.set_Checked(false);
			}
			base.MinimizeBox = true;
			if ((string)hashtable["startMinimized"] == "True")
			{
				this.chkStartMinimized.set_Checked(true);
				this.startMinimized = true;
			}
			else
			{
				this.chkStartMinimized.set_Checked(false);
				this.startMinimized = false;
			}
			if ((string)hashtable["sendToTray"] == "True")
			{
				this.chkSendToTray.set_Checked(true);
				this.sendToTray = true;
			}
			else
			{
				this.chkSendToTray.set_Checked(false);
				this.sendToTray = false;
			}
			if ((string)hashtable["askServerChange"] == "True")
			{
				this.chkConfirmationChangeServer.set_Checked(true);
			}
			else
			{
				this.chkConfirmationChangeServer.set_Checked(false);
			}
			if ((string)hashtable["autoReconnect"] == "True")
			{
				this.chkAutoReconnect.remove_CheckedChanged(new EventHandler(this.checkBoxX4_CheckedChanged));
				this.autoReconnect = true;
				this.chkAutoReconnect.set_Checked(true);
				this.protocolReconnect = (string)hashtable["lastprotocol"];
				this.serverReconnect = (string)hashtable["lastconnectedserver"];
				this.chkAutoReconnect.add_CheckedChanged(new EventHandler(this.checkBoxX4_CheckedChanged));
			}
			else
			{
				this.chkAutoReconnect.remove_CheckedChanged(new EventHandler(this.checkBoxX4_CheckedChanged));
				this.autoReconnect = false;
				this.chkAutoReconnect.set_Checked(false);
				this.chkAutoReconnect.add_CheckedChanged(new EventHandler(this.checkBoxX4_CheckedChanged));
			}
			if ((string)hashtable["disableIPv6Traffic"] == "True")
			{
				this.chkMitmDisableIPv6Traffic.set_Checked(true);
				this.disableIPv6Traffic = true;
			}
			else
			{
				this.chkMitmDisableIPv6Traffic.set_Checked(false);
				this.disableIPv6Traffic = false;
			}
			this.firstAppLoad = false;
			if ((string)hashtable["forceSecureDNS"] == "True")
			{
				this.chkMitmForceSecureDNS.set_Checked(true);
				this.forceSecureDNS = true;
			}
			else
			{
				this.chkMitmForceSecureDNS.set_Checked(false);
				this.forceSecureDNS = false;
			}
			if ((string)hashtable["adBlock"] == "True")
			{
				this.chkBlockAds.set_Checked(true);
				this.adBlock = true;
			}
			else
			{
				this.chkBlockAds.set_Checked(false);
				this.adBlock = false;
			}
			if ((string)hashtable["forceSecureDNSFirewall"] == "True")
			{
				this.chkMitmForceSecureDNSUsingFirewall.set_Checked(true);
				this.forceSecureDNSFirewall = true;
			}
			else
			{
				this.chkMitmForceSecureDNSUsingFirewall.set_Checked(false);
				this.forceSecureDNSFirewall = false;
			}
			if ((string)hashtable["askDNSServerChange"] == "True")
			{
				this.askDNSServerChange = true;
				this.chkConfirmationChangeDNSServer.set_Checked(true);
			}
			else
			{
				this.askDNSServerChange = false;
				this.chkConfirmationChangeDNSServer.set_Checked(false);
			}
			if (!reset)
			{
				this.UnAssignKillSwitchEvents();
			}
			if ((string)hashtable["killSwitch"] == "True")
			{
				this.swbKillSwitch.set_Value(true);
				this.chkAskReopenClosedApplications.Enabled = true;
			}
			else
			{
				this.swbKillSwitch.set_Value(false);
				this.chkAskReopenClosedApplications.Enabled = false;
			}
			if (!reset)
			{
				this.AssignKillSwitchEvents();
			}
			this.SetKillSwitchLabelsInitialStatus();
			this.SetDNSLabelsColor();
			if ((string)hashtable["centerWindow"] == "True")
			{
				this.centerWindow = true;
				this.chkCenterWindow.set_Checked(true);
			}
			else
			{
				this.centerWindow = false;
				this.chkCenterWindow.set_Checked(false);
			}
			if (!reset)
			{
				this.chkAskReopenClosedApplications.remove_CheckedChanged(new EventHandler(this.chkAskReopenClosedApplications_CheckedChanged));
			}
			if ((string)hashtable["askReopenClosedApplications"] == "True")
			{
				this.chkAskReopenClosedApplications.set_Checked(true);
				this.reopenClosedApplications = true;
			}
			else
			{
				this.chkAskReopenClosedApplications.set_Checked(false);
				this.reopenClosedApplications = false;
			}
			if (!reset)
			{
				this.chkAskReopenClosedApplications.add_CheckedChanged(new EventHandler(this.chkAskReopenClosedApplications_CheckedChanged));
			}
			if ((string)hashtable["enableLog"] == "True")
			{
				this.chkEnableLog.set_Checked(true);
			}
			else
			{
				this.chkEnableLog.set_Checked(false);
			}
			if ((string)hashtable["disableNotifications"] == "True")
			{
				this.disableNotifications = true;
				this.chkDisableNotifications.set_Checked(true);
			}
			else
			{
				this.disableNotifications = false;
				this.chkDisableNotifications.set_Checked(false);
			}
			if ((string)hashtable["disableToolTips"] == "True")
			{
				this.disableToolTips = true;
				this.chkShowToolTips.set_Checked(true);
			}
			else
			{
				this.disableToolTips = false;
				this.chkShowToolTips.set_Checked(false);
			}
			if ((string)hashtable["testPing"] == "True")
			{
				this.testPing = true;
				this.chkTestPing.set_Checked(true);
			}
			else
			{
				this.testPing = false;
				this.chkTestPing.set_Checked(false);
			}
			if ((string)hashtable["disableDebugMode"] == "True")
			{
				this.disableDebugMode = true;
				this.chkDisableDebugMode.set_Checked(true);
			}
			else
			{
				this.disableDebugMode = false;
				this.chkDisableDebugMode.set_Checked(false);
			}
			string text = (string)hashtable["debugLevel"];
			if (!(text == "0") && !(text == "1") && !(text == "2"))
			{
				this.debugLevel = 0;
			}
			else
			{
				this.debugLevel = Convert.ToInt32(text);
			}
			this.cmbDebugLevel.SelectedItem = this.debugLevel.ToString();
			string arg_880_0 = "5 min 10 min 15 min 30 min 60 min";
			string text2 = (string)hashtable["rotatingTime"];
			if (!(text2 == "5 min") && !(text2 == "10 min") && !(text2 == "15 min") && !(text2 == "30 min") && !(text2 == "60 min"))
			{
				this.timerRotatingFavouritesUpdate = 300000;
			}
			else
			{
				this.timerRotatingFavouritesUpdate = this.GetRFTimer(text2);
			}
			this.cmbRotatingFavourites.SelectedValueChanged -= new EventHandler(this.cmbRotatingFavourites_SelectedValueChanged);
			if (arg_880_0.Contains(text2))
			{
				this.cmbRotatingFavourites.SelectedItem = text2;
			}
			else
			{
				this.cmbRotatingFavourites.SelectedIndex = 0;
			}
			this.cmbRotatingFavourites.SelectedValueChanged += new EventHandler(this.cmbRotatingFavourites_SelectedValueChanged);
			this.lastSelectedServer = (string)hashtable["lastSelectedServer"];
			this.lastSelectedProtocol = (string)hashtable["lastSelectedProtocol"];
			if (this.lastSelectedProtocol == string.Empty)
			{
				this.lastSelectedProtocol = "Automatic";
			}
			this.lastDNSconnectedserver = (string)hashtable["lastDNSconnectedserver"];
			this.rbApplicationsKsw.CheckedChanged -= new EventHandler(this.rbKsw_CheckedChanged);
			this.rbInternetKsw.CheckedChanged -= new EventHandler(this.rbKsw_CheckedChanged);
			if ((string)hashtable["internetLock"] == "True")
			{
				this.internetLock = true;
				this.rbInternetKsw.Checked = true;
				this.rbApplicationsKsw.Checked = false;
				this.SetInternetKswControlsEnabled(true);
				this.SetAppKswControlsEnabled(false);
			}
			else
			{
				this.internetLock = false;
				this.rbInternetKsw.Checked = false;
				this.rbApplicationsKsw.Checked = true;
				this.SetInternetKswControlsEnabled(false);
				this.SetAppKswControlsEnabled(true);
			}
			this.rbApplicationsKsw.CheckedChanged += new EventHandler(this.rbKsw_CheckedChanged);
			this.rbInternetKsw.CheckedChanged += new EventHandler(this.rbKsw_CheckedChanged);
			if ((string)hashtable["askKswOn"] == "True")
			{
				this.chkConfirmationKswOn.set_Checked(true);
				this.askKswOn = true;
			}
			else
			{
				this.chkConfirmationKswOn.set_Checked(false);
				this.askKswOn = false;
			}
			this.lastX = Convert.ToInt32(hashtable["lastX"]);
			this.lastY = Convert.ToInt32(hashtable["lastY"]);
			this.savedDefaultGateway = (string)hashtable["defaultGateway"];
		}

		private int GetRFTimer(string rfXML)
		{
			int result = 0;
			if (rfXML == "5 min")
			{
				result = 300000;
			}
			else if (rfXML == "10 min")
			{
				result = 600000;
			}
			else if (rfXML == "15 min")
			{
				result = 900000;
			}
			else if (rfXML == "30 min")
			{
				result = 1800000;
			}
			else if (rfXML == "60 min")
			{
				result = 3600000;
			}
			return result;
		}

		public void SetInitialMainFormPosition()
		{
			this.initialLocation = base.Location;
			if (this.lastX == -1 && this.lastY == -1)
			{
				this.SetCenterMainFormPosition();
				return;
			}
			if (this.centerWindow)
			{
				this.SetMainFormPosition();
				return;
			}
			this.SetMainFormUsualPosition();
		}

		private void SetMainFormUsualPosition()
		{
			base.StartPosition = FormStartPosition.Manual;
			IEnumerable<Screen> arg_71_0 = Screen.AllScreens;
			Hashtable hashtable = new Hashtable();
			hashtable = this.GetSettings(this.userXMLLocation);
			this.lastX = Convert.ToInt32(hashtable["lastX"]);
			this.lastY = Convert.ToInt32(hashtable["lastY"]);
			int width = Screen.PrimaryScreen.Bounds.Width;
			int width2 = Screen.PrimaryScreen.Bounds.Width;
			if (arg_71_0.Count<Screen>() == 1)
			{
				while (this.lastX > width)
				{
					this.lastX -= width;
				}
				while (this.lastY > width2)
				{
					this.lastY -= width2;
				}
			}
			base.Location = new Point(this.lastX, this.lastY);
		}

		private void SetMainFormPosition()
		{
			Point point = new Point(Screen.PrimaryScreen.Bounds.Width / 2, Screen.PrimaryScreen.Bounds.Height / 2);
			int x = point.X - base.Width / 2;
			int y = point.Y - this.centerYScreen / 2;
			if (this.centerWindow)
			{
				base.Location = new Point(x, y);
			}
		}

		private void SetCenterMainFormPosition()
		{
			Point point = new Point(Screen.PrimaryScreen.Bounds.Width / 2, Screen.PrimaryScreen.Bounds.Height / 2);
			int x = point.X - base.Width / 2;
			int y = point.Y - this.centerYScreen / 2;
			base.Location = new Point(x, y);
		}

		private void SetSniBordersColor()
		{
			Color transparent = Color.Transparent;
			this.sniServers.set_BorderColors(new Color[]
			{
				transparent
			});
			this.sniDashboard.set_BorderColors(new Color[]
			{
				transparent
			});
			this.sniDNSSettings.set_BorderColors(new Color[]
			{
				transparent
			});
			this.sniVPNSettings.set_BorderColors(new Color[]
			{
				transparent
			});
			this.sniSupport.set_BorderColors(new Color[]
			{
				transparent
			});
			this.sniAccount.set_BorderColors(new Color[]
			{
				transparent
			});
		}

		private Hashtable GetSettings(string userXMLLocation)
		{
			Hashtable hashtable = new Hashtable();
			try
			{
				if (File.Exists(userXMLLocation))
				{
					StreamReader arg_27_0 = new StreamReader(new FileStream(userXMLLocation, FileMode.Open, FileAccess.Read, FileShare.Read));
					XmlDocument xmlDocument = new XmlDocument();
					string xml = arg_27_0.ReadToEnd();
					arg_27_0.Close();
					xmlDocument.LoadXml(xml);
					foreach (XmlNode xmlNode in xmlDocument.ChildNodes)
					{
						if (xmlNode.Name.Equals("configuration"))
						{
							foreach (XmlNode xmlNode2 in xmlNode.ChildNodes)
							{
								if (xmlNode2.Name.Equals("add"))
								{
									hashtable.Add(xmlNode2.Attributes["key"].Value, xmlNode2.Attributes["value"].Value);
								}
							}
						}
					}
				}
			}
			catch
			{
				string message = "The UserSettings.xml file cannot read or missing from the installation folder. Please re-install the application, or contact ibVPN Support.";
				this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 1, true, true);
				Environment.Exit(1);
			}
			return hashtable;
		}

		private void MitmDisableIPv6Traffic_CheckedChanged(object sender, EventArgs e)
		{
			try
			{
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.vpnManager.DisableIPv6TrafficManage(this.chkMitmDisableIPv6Traffic.get_Checked());
						this.WriteUserSettingsFile(this.chkMitmDisableIPv6Traffic, "disableIPv6Traffic");
						if (this.chkMitmDisableIPv6Traffic.get_Checked())
						{
							this.disableIPv6Traffic = true;
							return;
						}
						this.disableIPv6Traffic = false;
					}));
				}
				else
				{
					this.vpnManager.DisableIPv6TrafficManage(this.chkMitmDisableIPv6Traffic.get_Checked());
					this.WriteUserSettingsFile(this.chkMitmDisableIPv6Traffic, "disableIPv6Traffic");
					if (this.chkMitmDisableIPv6Traffic.get_Checked())
					{
						this.disableIPv6Traffic = true;
					}
					else
					{
						this.disableIPv6Traffic = false;
					}
				}
			}
			catch
			{
				this.chkMitmDisableIPv6Traffic.remove_CheckedChanged(new EventHandler(this.MitmDisableIPv6Traffic_CheckedChanged));
				if (this.chkMitmDisableIPv6Traffic.get_Checked())
				{
					this.chkMitmDisableIPv6Traffic.set_Checked(false);
				}
				this.chkMitmDisableIPv6Traffic.add_CheckedChanged(new EventHandler(this.MitmDisableIPv6Traffic_CheckedChanged));
				if (!this.firstAppLoad)
				{
					this.helper.MessageBoxShow("The access to this feature has been blocked by your system, due to user limitations. Please contact your system administrator.\n \nMeanwhile, the 'Disable IPv6 traffic' option will be unchecked. This will allow the IPv6 traffic.\n \nAfter your system administrator removes the restrictions, you can re-enable the feature by navigating to: Settings > Privacy tab > check the box: 'Disable IPv6 traffic' ", "ibVPN client notification/info message", 2, true, true);
				}
			}
		}

		private void comboBoxEx2_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.cmbLanguage.SelectedIndex == 0)
			{
				Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
			}
			if (this.cmbLanguage.SelectedIndex == 1)
			{
				Thread.CurrentThread.CurrentUICulture = new CultureInfo("fr-FR");
			}
			if (this.cmbLanguage.SelectedIndex == 2)
			{
				Thread.CurrentThread.CurrentUICulture = new CultureInfo("de-DE");
			}
			this.SetNewCulture();
		}

		private void SetNewCulture()
		{
			this.lblAppLanguage.Text = this.resources.GetString("lblAppLanguage.Text");
			this.sniDashboard.set_Text(this.resources.GetString("sniDashboard.Text"));
			this.sniServers.set_Text(this.resources.GetString("sniServers.Text"));
			this.sniAccount.set_Text(this.resources.GetString("sniAccount.Text"));
			this.sniVPNSettings.set_Text(this.resources.GetString("sniVPNSettings.Text"));
			this.sniDNSSettings.set_Text(this.resources.GetString("sniDNSSettings.Text"));
			this.ShowToolTips();
		}

		private void StartAutoupdater()
		{
			if (this.firstConnected && !this.updaterStarted)
			{
				if (!this.mediaWorker.IsBusy)
				{
					this.mediaWorker.RunWorkerAsync();
				}
				this.updaterStarted = true;
			}
		}

		[DllImport("user32.dll", CharSet = CharSet.Auto)]
		public static extern bool IsWindowVisible(IntPtr hWnd);

		private void VpnManager_PropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "ConnectionStatus")
			{
				this.SetLabelSelectedServerColor();
				if (this.vpnManager.get_ConnectionStatus() == "Connecting...")
				{
					this.pingFailed = false;
					this.Ip = "Updating..";
					this.SetInfoFlagStatus("VPN: Connecting..");
				}
				if (this.testPing)
				{
					if (this.vpnManager.get_ConnectionStatus() == "Connected")
					{
						this.pingFailed = false;
						this.timerPing.Start();
					}
					else
					{
						this.testPingWorker.CancelAsync();
						this.timerPing.Stop();
					}
				}
				if (this.vpnManager.get_ConnectionStatus() == "Not Connected" || this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
				{
					try
					{
						this.RestoreDNS(11170, "VpnManager_PropertyChanged");
					}
					catch (Exception)
					{
					}
				}
				if (this.vpnManager.get_ConnectionStatus() == "Not Connected")
				{
					this.UpdateKillSwitchLogger("Connection status became 'Not Connected'");
					this.logger.log("Statusul conexiunii a devenit 'Not connected' -ksw");
				}
				if (this.vpnManager.get_ConnectionStatus() == "Connected")
				{
					this.UpdateKillSwitchLogger("Connection status became 'Connected'");
					this.logger.log("Statusul conexiunii a devenit 'Connected' -ksw");
					this.saProdusConectare = true;
					this.StopKswIL();
				}
				if (this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
				{
					this.UpdateKillSwitchLogger("Connection status became 'Interrupted'");
				}
				if ((this.dashboard.lnkServers.Text == "Fastest Server" || this.dashboard.lnkServers.Text == "Fastest Favourite") && this.NeedRecreateFSList() && this.vpnManager.connectionStatus == "Not Connected" && !this.buttonDisconnectWasClickedNew)
				{
					if (!this.updateFastestServerListWorker.IsBusy)
					{
						this.SetImagesStatus();
						this.SetInfoFlagStatus("VPN: Not Connected");
						this.SetProtocolLabel();
						this.SetGridNotConnectedServerColor();
						this.SetUpdateFastestServerListWorkerStartSource("workerStartsFromVPNPropertyChanged");
						this.updateFastestServerListWorker.RunWorkerAsync();
					}
					else
					{
						this.ConnectionStatusChanged();
					}
				}
				else
				{
					this.ConnectionStatusChanged();
				}
			}
			if (e.PropertyName == "TxtLog")
			{
				if (this.loggerWorker.IsBusy)
				{
					this.loggerWorker.CancelAsync();
				}
				if (!this.loggerWorker.IsBusy && !this.loggerWorker.CancellationPending)
				{
					this.loggerWorker.RunWorkerAsync();
				}
			}
			if (e.PropertyName == "ConnectionError")
			{
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.failedConnectionError = this.vpnManager.get_FailedConnectionError();
						if (!this.failedConnectAmplitudeWorker.IsBusy)
						{
							this.failedConnectAmplitudeWorker.RunWorkerAsync();
						}
						this.ManageCannotConnectRightNowError();
					}));
				}
				else
				{
					if (!this.failedConnectAmplitudeWorker.IsBusy)
					{
						this.failedConnectAmplitudeWorker.RunWorkerAsync();
					}
					this.ManageCannotConnectRightNowError();
				}
			}
			if (e.PropertyName == "SmartDNSError")
			{
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.ShowMessageForceDNSCannotConnected();
					}));
					return;
				}
				this.ShowMessageForceDNSCannotConnected();
			}
		}

		private void ManageCannotConnectRightNowError()
		{
			this.vpnManager.set_ConnectionStatus("Not Connected");
			if (this.dashboard.lnkProtocol.Text != "Automatic")
			{
				this.ShowMessageCannotConnected();
				this.SetLinkProtocolText("Automatic");
				this.rbAutomatic.Checked = true;
			}
			this.killConnectionWorker = true;
			this.btnConnect_Click(this, null);
		}

		private string GetDisabledAdapterName()
		{
			string result = string.Empty;
			string text = this.dashboard.lnkProtocol.Text;
			if (text == "Fast/Strong Encryption (L2TP)")
			{
				result = "ibvpnL2TP";
			}
			else if (text == "Fast/Light Encryption(PPTP)")
			{
				result = "ibvpnPPTP";
			}
			else if (text == "Fast/Extremely Secure(SSTP)")
			{
				result = "ibvpnSSTP";
			}
			else if (text == "Fast/Secure (IPSec)")
			{
				result = "ibvpnIPSEC";
			}
			else if (text == "Stable/Secure (OpenVPN-TCP)")
			{
				result = "ibVPN TAP Adapter";
			}
			else if (text == "Stable/Fast (OpenVPN-UDP)")
			{
				result = "ibVPN TAP Adapter";
			}
			return result;
		}

		private void ShowMessageCannotConnected()
		{
			string message = string.Empty;
			if (this.vpnManager.get_ConnectionError() == "EroareC")
			{
				message = string.Concat(new string[]
				{
					"The selected ",
					this.dashboard.lnkProtocol.Text,
					" protocol is not available at this moment, due to ",
					this.GetDisabledAdapterName(),
					" adapter error on your computer.",
					Environment.NewLine,
					Environment.NewLine,
					"The application will try to connect on automatic protocol."
				});
			}
			else if (this.vpnManager.get_ConnectionError() == "EroareD")
			{
				message = "The VPN disconnection cannot be done right now." + Environment.NewLine + "Please restart application and try again.";
			}
			this.ShowMessageFromTrayOneButton(message);
			this.RestoreDNS(11356, "ShowMessageCannotConnected");
		}

		private void ShowMessageForceDNSCannotConnected()
		{
		}

		private void RestoreDNS_Obsolete()
		{
			this.logger.log("S-a rulat RestoreDNS din MainForm");
			try
			{
				if (!this.swbIbDNS.get_Value())
				{
					if (this.chkMitmForceSecureDNS.get_Checked())
					{
						this.dnsManager.RestoreAdaptors(this.adaptors);
					}
					if (this.chkMitmForceSecureDNSUsingFirewall.get_Checked())
					{
						this.dnsManager.ForceUnblockDnsServers();
					}
					if (this.testPing)
					{
						this.testPingWorker.CancelAsync();
						this.timerPing.Stop();
					}
				}
			}
			catch
			{
			}
		}

		private void RestoreDNS([CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"S-a rulat RestoreDNS din MainForm- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			try
			{
				if (!this.swbIbDNS.get_Value())
				{
					if (this.chkMitmForceSecureDNS.get_Checked())
					{
						this.dnsManager.RestoreAdaptors(this.adaptors);
					}
					if (this.chkMitmForceSecureDNSUsingFirewall.get_Checked())
					{
						this.dnsManager.ForceUnblockDnsServers();
					}
					if (this.testPing)
					{
						this.testPingWorker.CancelAsync();
						this.timerPing.Stop();
					}
				}
			}
			catch
			{
				this.logger.log(string.Concat(new object[]
				{
					"a crapat RestoreDNS din MainForm- at line ",
					lineNumber,
					" (",
					caller,
					")"
				}));
			}
		}

		private bool IsInternetLock()
		{
			return this.swbKillSwitch.get_Value() && this.internetLock;
		}

		private void kswAskUser()
		{
			if (!this.IsInternetLock() && this.swbKillSwitch.get_Value())
			{
				if (this.dashboard.btnConnect.Text.StartsWith("DISCONN"))
				{
					string text = string.Empty;
					foreach (DataRow dataRow in this.killSwitchTable.Rows)
					{
						dataRow[2].ToString();
						string a = dataRow[1].ToString();
						string text2 = dataRow[0].ToString();
						string processName = string.Empty;
						try
						{
							Process process = new Process();
							if (a != "application")
							{
								processName = dataRow[2].ToString();
							}
							else
							{
								processName = text2.Substring(0, text2.Length - 4);
							}
							process = Process.GetProcessesByName(processName).FirstOrDefault<Process>();
							if (process != null)
							{
								if (text == string.Empty)
								{
									text = process.ProcessName;
								}
								else
								{
									text = text + ", " + process.ProcessName;
								}
								this.logger.log("procsToKill = " + text);
							}
							else
							{
								this.logger.log("procesul este null");
							}
						}
						catch
						{
							this.logger.log("a crapat metoda care creeaza lista de procese de ucis");
						}
					}
					if (!(text != string.Empty))
					{
						this.logger.log("trebuie sa ucida, dar procsToKill este gol- nu are ce sa ucida");
						return;
					}
					string message = "Kill Switch is ON, you have applications in the KillSwitch list. You have clicked to Disconnect from the VPN server, which will expose your applications to the Internet. Do you want us to close the applications: " + text + " ?";
					if (this.ShowMessageFromTray(message).Yes)
					{
						this.VPNConnectionWasIntterrupted = true;
						this.logger.log("trebuie sa ucida, si s-a lansat workerul care ucide");
						this.btnKillSwitchPanel_Click(this, null);
						return;
					}
				}
				else
				{
					this.logger.log("nu trebuie sa ucida procese");
				}
			}
		}

		private CustomMessageBox ShowMessageFromTray(string message)
		{
			bool visible = base.get_WindowState() == FormWindowState.Normal;
			bool flag = false;
			if (this.menuItem1WasClicked || this.menuItem2WasClicked)
			{
				flag = true;
			}
			CustomMessageBox arg_6C_0 = this.helper.MessageBoxShowForTrayUse(message, "ibVPN client notification/info message", 0, false, visible, flag, base.Location.X, base.Location.Y, base.Width, base.Height);
			this.menuItem1WasClicked = false;
			this.menuItem2WasClicked = false;
			return arg_6C_0;
		}

		private CustomMessageBox ShowMessageFromTrayOneButton(string message)
		{
			bool visible = base.get_WindowState() == FormWindowState.Normal;
			bool flag = false;
			if (this.menuItem1WasClicked || this.menuItem2WasClicked)
			{
				flag = true;
			}
			CustomMessageBox arg_6C_0 = this.helper.MessageBoxShowForTrayUse(message, "ibVPN client notification/info message", 1, true, visible, flag, base.Location.X, base.Location.Y, base.Width, base.Height);
			this.menuItem1WasClicked = false;
			this.menuItem2WasClicked = false;
			return arg_6C_0;
		}

		private void ConnectionStatusChanged()
		{
			this.logger.log("s-a schimbat statusul conexiunii in - " + this.vpnManager.get_ConnectionStatus());
			if ((this.vpnManager.get_ConnectionStatus() == "Connected" || this.vpnManager.get_ConnectionStatus() == "Not Connected" || this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:")) && !this.getExternalIpWorker.IsBusy)
			{
				this.getExternalIpWorker.RunWorkerAsync();
			}
			this.SetImagesStatus();
			this.SetProtocolLabel();
			string text = this.dashboard.lnkServers.Text;
			if (this.vpnManager.get_ConnectionStatus() == "Connected")
			{
				this.firstConnected = true;
				this.autoReconnectTryNumber = 0;
				this.disconnectVPNbyDNS = false;
				if (this.sendToTray)
				{
					base.set_WindowState(FormWindowState.Minimized);
					base.ShowInTaskbar = false;
					this.ShowNotifyBaloon("ibVPN is still running");
					this.sendedToTray = true;
					this.stillShow = false;
				}
				this.lastConnectedServerName = text.ToString();
				this.protocolReconnect = this.dashboard.lnkProtocol.Text;
				this.serverReconnect = this.dashboard.lnkServers.Text;
				this.XmlWriterAutoconnectDates(this.protocolReconnect, this.serverReconnect);
				this.SetGridConnectedServerColor();
				this.SetButtonConnectStatus(false);
				this.SetProtocolListEnabled(false);
				this.SetButtonsRepairEnabled(false);
				this.cmbDebugLevel.Enabled = false;
				this.LoadMap(false);
				this.LoadNewMap();
				string str = (this.lastConnectedServerName.Length > 50) ? this.lastConnectedServerName.Substring(0, 49) : this.lastConnectedServerName;
				string text2 = "Connected to: " + str;
				this.ShowNotifyBaloon(text2);
				this.SetAccesibilityDescription("You are connected to: " + str);
				this.notifyIconIbVPN.Text = text2;
				this.logger.log(text2 + " / Protocol: " + this.dashboard.lnkProtocol.Text);
			}
			else if (this.vpnManager.get_ConnectionStatus() == "Not Connected" || this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
			{
				if (this.changeDNSServer)
				{
					this.ChangeDNSSwitch();
					this.changeDNSServer = false;
				}
				this.lastConnectedServerName = string.Empty;
				this.SetGridConnectedServerColor();
				this.SetButtonConnectStatus(true);
				this.LoadMap(false);
				this.LoadNewMap();
			}
			if (this.vpnManager.get_ConnectionStatus() == "Connecting...")
			{
				this.buttonDisconnectWasClicked = false;
				this.menuItem2WasClicked = false;
				this.SetButtonCancelText();
				if (this.autoReconnectTryNumber > 0 && this.autoReconnectTryNumber < 3)
				{
					this.ShowNotifyBaloon("Re-connecting to VPN");
				}
				else
				{
					this.ShowNotifyBaloon("Connecting to VPN server...");
				}
				if (this.logsNumber == 5)
				{
					this.btnClearLog_Click(this, null);
					this.logsNumber = 0;
				}
				this.logsNumber++;
			}
			this.RefreshControlsEnabled();
			if (!(this.vpnManager.get_ConnectionStatus() == "Not Connected") && !this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
			{
				this.SetControlsPrivacyEnabled(false);
			}
			else
			{
				this.SetControlsPrivacyEnabled(true);
			}
			if (this.vpnManager.get_ConnectionStatus() == "Connected")
			{
				this.buttonConnectWasClicked = false;
				this.SetProtocolListEnabled(false);
				this.SetButtonsRepairEnabled(false);
				this.cmbDebugLevel.Enabled = false;
				this.menuItem1.Enabled = false;
				this.menuItem2.Enabled = true;
				this.isVPNConnectionInterrupted = false;
			}
			else if (!(this.vpnManager.get_ConnectionStatus() == "Not Connected") && !this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
			{
				if (this.vpnManager.get_ConnectionStatus() == "Connecting...")
				{
					this.SetProtocolListEnabled(false);
				}
			}
			else
			{
				this.SetProtocolListEnabled(true);
				this.SetButtonsRepairEnabled(true);
				this.cmbDebugLevel.Enabled = true;
				this.menuItem1.Enabled = true;
				this.menuItem2.Enabled = false;
			}
			if (this.vpnManager.get_ConnectionStatus() != "Connecting...")
			{
				this.InitializeNetworkInterface();
				this.activeNIC = this.GetActiveNIC();
			}
			if (this.dashboard.lnkServers.Text != "Rotating Favourites")
			{
				this.disconnectedRF = false;
				this.timerRotatingFavourites.Stop();
				this.suntemInProcesulRF = false;
				this.indexRF = 0;
			}
			if (this.vpnManager.get_ConnectionStatus() == "Connected" && this.dashboard.lnkServers.Text == "Rotating Favourites")
			{
				this.suntemInProcesulRF = true;
				if (!this.timerRotatingFavourites.Enabled)
				{
					this.timerRotatingFavourites.Start();
				}
			}
			if (this.vpnManager.get_ConnectionStatus() == "Not Connected" && this.dashboard.lnkServers.Text == "Rotating Favourites" && !this.buttonDisconnectWasClicked && !this.pingFailed && !this.menuItem2WasClicked && !this.disconnectVPNbyDNS)
			{
				if (this.disconnectedRF)
				{
					this.logger.log("se lanseaza connecting RF -pas 1");
					if (this.indexRF <= this.rfNumbers)
					{
						if (this.indexRF == this.rfNumbers)
						{
							this.indexRF = 0;
						}
						this.logger.log("se lanseaza connecting RF cu deconectare din timer- index server favorit=" + this.indexRF.ToString());
					}
					this.disconnectedRF = false;
				}
				else if (this.suntemInProcesulRF && !this.serverChanged)
				{
					this.logger.log("se lanseaza connecting RF -pas 2");
					if (!this.isAutomaticProtocol)
					{
						this.indexRF++;
					}
					else if (this.protocolForConnect == string.Empty)
					{
						this.indexRF++;
					}
					if (this.indexRF <= this.rfNumbers)
					{
						if (this.indexRF == this.rfNumbers)
						{
							this.indexRF = 0;
						}
						this.logger.log("se lanseaza connecting RF fara deconectare din timer - index server favorit=" + this.indexRF.ToString());
						if (this.isAutomaticProtocol)
						{
							this.GetNextProtocolForConnect(this.protocolForConnect, false);
						}
						this.Connecting(11865, "ConnectionStatusChanged");
					}
				}
			}
			if (this.vpnManager.get_ConnectionStatus() == "Not Connected")
			{
				if (this.IsInternetLock() && !this.buttonDisconnectWasClicked && !this.serverChanged && !this.pingFailed && this.dashboard.lnkServers.Text != "Rotating Favourites" && this.dashboard.lnkServers.Text != "Fastest Favourite" && this.dashboard.lnkServers.Text != "Fastest Server" && this.dashboard.lnkProtocol.Text != "Automatic" && !this.isDnson)
				{
					string message = "The server is not responding. The Internet will be restored. Are you sure you want that?";
					if (this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 1, false, true).Yes)
					{
						this.btnRestoreInternet_Click(this, null, 11913, "ConnectionStatusChanged");
					}
				}
				this.StartAutoupdater();
				bool flagAR = this.GetFlagAR();
				if (this.autoReconnect && (flagAR || this.isVPNConnectionInterrupted))
				{
					if (this.autoReconnectTryNumber < 3)
					{
						Thread.Sleep(2000);
						this.delayAutoReconnect = true;
						this.autoReconnectTryNumber++;
						if (!this.buttonDisconnectWasClicked && !this.serverChanged)
						{
							this.logger.log("Attempting to reconnect to the server...(din Not connected)");
							if (!(text == "Fastest Server") && !(text == "Fastest Favourite") && !(text == "Rotating Favourites") && !this.isAutomaticProtocol)
							{
								this.Connecting(11962, "ConnectionStatusChanged");
							}
							else if (flagAR)
							{
								this.AutoReconnect();
							}
							else
							{
								this.ReconnectForAutomaticProtocolAndFastestServer(text, 11955, "ConnectionStatusChanged");
							}
						}
					}
					else
					{
						this.isVPNConnectionInterrupted = false;
					}
				}
				else if (this.dashboard.lnkServers.Text != "Rotating Favourites")
				{
					this.ReconnectForAutomaticProtocolAndFastestServer(text, 11981, "ConnectionStatusChanged");
				}
				this.serverChanged = false;
				this.notifyIconIbVPN.Text = "VPN not connected.";
			}
			if (this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
			{
				this.logger.log("Statusul conexiunii a devenit)" + this.vpnManager.get_ConnectionStatus());
				this.logger.log("Statusul conexiunii a devenit Interrupted- inainte de autoreconect");
				this.isVPNConnectionInterrupted = true;
				this.timerRotatingFavourites.Stop();
				if (!this.IsInternetLock())
				{
					if (this.IsNetworkAvailable())
					{
						Thread.Sleep(2000);
						this.logger.log("Este retea");
						this.logger.log("Attempting to reconnect to the server... prima data");
						this.logger.log("Attempting to reconnect to the server...(din Interrupted)");
						bool flagAR2 = this.GetFlagAR();
						if (!(text == "Fastest Server") && !(text == "Fastest Favourite") && !(text == "Rotating Favourites") && !this.isAutomaticProtocol)
						{
							this.AutoReconnect();
						}
						else if (flagAR2)
						{
							this.AutoReconnect();
						}
						else
						{
							this.ReconnectForAutomaticProtocolAndFastestServer(text, 12014, "ConnectionStatusChanged");
						}
					}
					else
					{
						this.logger.log("Nu este retea");
					}
				}
				else if (this.autoReconnect)
				{
					this.logger.log("s-a pornit timerPingServerWhenInternetLock.Start()");
					this.timerPingServerWhenInternetLock.Start();
					if (!this.kswInternetLockConfirmation.Visible)
					{
						if (base.InvokeRequired)
						{
							base.Invoke(new MethodInvoker(delegate
							{
								this.ShowKswILConfirmation();
							}));
						}
						else
						{
							this.ShowKswILConfirmation();
						}
					}
				}
				else if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.ShowKswILInformation();
					}));
				}
				else
				{
					this.ShowKswILInformation();
				}
				this.notifyIconIbVPN.Text = "VPN not connected.";
			}
			if (this.vpnManager.get_ConnectionStatus().StartsWith("Not Connected") && this.pingFailed)
			{
				string text3 = "The VPN connection was lost by failed ping.";
				this.UpdateKillSwitchLogger(text3);
				this.logger.log(text3);
				this.VPNConnectionWasIntterrupted = true;
			}
			if (this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
			{
				string text4 = "The VPN connection was lost.";
				this.UpdateKillSwitchLogger(text4);
				this.logger.log(text4);
				this.VPNConnectionWasIntterrupted = true;
				this.btnKillSwitchPanel_Click(this, null);
			}
			if (this.vpnManager.get_ConnectionStatus() == "Connected" && this.VPNConnectionWasIntterrupted)
			{
				this.logger.log("s-a lansat metoda care deschide aplicatiile din tabelul ksw. - ksw");
				this.btnRestartProcesses_Click(this, null);
				this.VPNConnectionWasIntterrupted = false;
			}
			if (this.vpnManager.get_ConnectionStatus() == "Connecting...")
			{
				base.set_Icon(Resources.logo_ibvpn_man_ico_grey);
				this.notifyIconIbVPN.Icon = Resources.logo_ibvpn_man_ico_grey;
			}
			else if (!this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:") && !(this.vpnManager.get_ConnectionStatus() == "Not Connected"))
			{
				base.set_Icon(Resources.ibvpn_logo_green);
				this.notifyIconIbVPN.Icon = Resources.ibvpn_logo_green;
			}
			else
			{
				this.SetControlsEnabled(true);
				base.set_Icon(Resources.ibvpn_logo_red);
				this.notifyIconIbVPN.Icon = Resources.ibvpn_logo_red;
				this.SetNotifyIconForDNS();
				this.SetNotifyTextForDNSForPropertyChanged();
				if (!this.swbIbDNS.get_Value())
				{
					this.ShowNotifyBaloon("Disconnected from VPN server");
				}
				this.SetAccesibilityDescription("Disconnected from VPN server");
			}
			this.SetDNSControls();
			this.ShowButtonConnectToolTips();
			this.SetInfoFlag();
			if (this.vpnManager.get_ConnectionStatus() == "Connected")
			{
				if (!this.connectAmplitudeWorker.IsBusy)
				{
					this.connectAmplitudeWorker.RunWorkerAsync();
				}
				this.firstLogsWasWritted = false;
				this.timer.Start();
			}
			else
			{
				this.timer.Stop();
				this.dashboard.chartSpeed.Series["Upload"].Points.Clear();
				this.dashboard.chartSpeed.Series["Download"].Points.Clear();
				this.dashboardServers.chartSpeed.Series["Upload"].Points.Clear();
				this.dashboardServers.chartSpeed.Series["Download"].Points.Clear();
				this.dashboardVPNSettings.chartSpeed.Series["Upload"].Points.Clear();
				this.dashboardVPNSettings.chartSpeed.Series["Download"].Points.Clear();
				this.dashboardDNSSettings.chartSpeed.Series["Upload"].Points.Clear();
				this.dashboardDNSSettings.chartSpeed.Series["Download"].Points.Clear();
				this.dashboardSupport.chartSpeed.Series["Upload"].Points.Clear();
				this.dashboardSupport.chartSpeed.Series["Download"].Points.Clear();
				this.dashboardAccount.chartSpeed.Series["Upload"].Points.Clear();
				this.dashboardAccount.chartSpeed.Series["Download"].Points.Clear();
				this.InitializeInfoDashboardAndChart();
			}
			if (this.vpnManager.get_ConnectionStatus() == "Connected" && this.rbInternetKsw.Checked && !this.swbKillSwitch.get_Value())
			{
				this.dashboard.swbKillSwitch.Enabled = false;
				this.dashboardServers.swbKillSwitch.Enabled = false;
				this.dashboardVPNSettings.swbKillSwitch.Enabled = false;
				this.dashboardDNSSettings.swbKillSwitch.Enabled = false;
				this.dashboardSupport.swbKillSwitch.Enabled = false;
				this.dashboardAccount.swbKillSwitch.Enabled = false;
				this.swbKillSwitch.Enabled = false;
			}
			if (!(this.vpnManager.get_ConnectionStatus() == "Not Connected") && !this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
			{
				this.rbInternetKsw.Enabled = false;
				this.rbApplicationsKsw.Enabled = false;
			}
			else
			{
				this.rbInternetKsw.Enabled = true;
				this.rbApplicationsKsw.Enabled = true;
				this.dashboard.swbKillSwitch.Enabled = true;
				this.dashboardServers.swbKillSwitch.Enabled = true;
				this.dashboardVPNSettings.swbKillSwitch.Enabled = true;
				this.dashboardDNSSettings.swbKillSwitch.Enabled = true;
				this.dashboardSupport.swbKillSwitch.Enabled = true;
				this.dashboardAccount.swbKillSwitch.Enabled = true;
				this.swbKillSwitch.Enabled = true;
				if (this.rbInternetKsw.Checked)
				{
					this.SetInternetKswControlsEnabled(true);
					this.SetAppKswControlsEnabled(false);
				}
				else if (this.rbApplicationsKsw.Checked)
				{
					this.SetInternetKswControlsEnabled(false);
					this.SetAppKswControlsEnabled(true);
				}
			}
			if (this.vpnManager.get_ConnectionStatus() == "Connected" && this.IsInternetLock() && !this.sessionConnecteServers.Contains(this.lastUrlIP))
			{
				this.sessionConnecteServers.Add(this.lastUrlIP);
				this.logger.log("s-a adaugat in sessionConnectedServers :" + this.lastUrlIP);
			}
			if (!(this.vpnManager.get_ConnectionStatus() == "Not Connected"))
			{
				this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:");
			}
			if (this.IsInternetLock())
			{
				this.logger.log("pas 113 -1");
				if (this.NormalNotConnectedOrInterruptedStatus())
				{
					this.logger.log("pas 113 -2");
					IPAddress iPAddress = MainForm.GetDefaultGateway();
					this.logger.log("pas 113 -3");
					if (iPAddress == null || iPAddress.ToString() == "0.0.0.0")
					{
						this.logger.log("pas 113 -4");
						this.SetColorSettingsLink(Color.Red, "Restore Internet", 12278, "ConnectionStatusChanged");
						this.ChangeLinkSettingsLocation(this.offsetLinkSettings);
						this.btnRestoreNet.Visible = true;
					}
					this.logger.log("pas 113 -5");
				}
				else
				{
					this.logger.log("pas 113 -6");
					if (this.dashboard.lnkKswSet.Text == "Restore Internet")
					{
						this.logger.log("pas 113 -7");
						this.SetColorSettingsLink(Color.FromArgb(28, 158, 27), "Settings", 12290, "ConnectionStatusChanged");
						this.ChangeLinkSettingsLocation(this.offsetLinkSettings);
						this.btnRestoreNet.Visible = false;
					}
				}
			}
			this.txtSearchUV.Focus();
			this.logger.log("s-a terminat ConnectionStatusChanged - din VpnManager_PropertyChanged");
		}

		private void SetAccesibilityDescription(string mess)
		{
			this.dashboard.btnConnect.AccessibleDescription = mess;
			this.dashboardServers.btnConnect.AccessibleDescription = mess;
			this.dashboardVPNSettings.btnConnect.AccessibleDescription = mess;
			this.dashboardDNSSettings.btnConnect.AccessibleDescription = mess;
			this.dashboardSupport.btnConnect.AccessibleDescription = mess;
			this.dashboardAccount.btnConnect.AccessibleDescription = mess;
		}

		private bool GetFlagAR()
		{
			return this.testPing && this.pingFailed;
		}

		private void ReconnectForAutomaticProtocolAndFastestServer(string selectedItemValue, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"se ruleaza ReconnectForAutomaticProtocolAndFastestServer - apelata de la linia ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			if (this.dashboard.lnkServers.Text != "Rotating Favourites")
			{
				this.logger.log(string.Concat(new object[]
				{
					"se ruleaza ReconnectForAutomaticProtocolAndFastestServer - apelata de la linia ",
					lineNumber,
					" (",
					caller,
					")"
				}));
				int num = 0;
				if (selectedItemValue == "Fastest Server")
				{
					num = 5;
				}
				else if (selectedItemValue == "Fastest Favourite")
				{
					num = this.fastFavouriteNumber;
				}
				this.logger.log("buttonDisconnectWasClicked :" + this.buttonDisconnectWasClicked.ToString());
				this.logger.log("serverChanged :" + this.serverChanged.ToString());
				this.logger.log("pingFailed :" + this.pingFailed.ToString());
				if ((selectedItemValue == "Fastest Server" || selectedItemValue == "Fastest Favourite") && !this.buttonDisconnectWasClicked && !this.pingFailed && !this.menuItem2WasClicked && !this.disconnectVPNbyDNS)
				{
					this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 1");
					if (this.isAutomaticProtocol)
					{
						this.GetNextProtocolForConnect(this.protocolForConnect, false);
						this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 2");
						if (this.protocolForConnect != string.Empty)
						{
							this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 3");
							this.Connecting(12367, "ReconnectForAutomaticProtocolAndFastestServer");
						}
						else if (this.fastestServerReconnectTryNumber <= num)
						{
							this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 4");
							if (this.fastestServerReconnectTryNumber == 0)
							{
								this.protocolForConnect = "Fast/Secure (IPSec)";
							}
							this.GetNextFastServerForConnect();
							this.fastestServerReconnectTryNumber++;
							this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 5");
							if (this.fastestServerReconnectTryNumber != num)
							{
								this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 6");
								this.Connecting(12396, "ReconnectForAutomaticProtocolAndFastestServer");
							}
							else
							{
								this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 7");
								this.helper.MessageBoxShow(this.fastestServerReconnectTryNumber.ToString() + "   The server you are trying to connect to is not available. Please try it later, or select a different server.1", "ibVPN client notification/info message", 2, true, true);
							}
						}
					}
					else if (this.fastestServerReconnectTryNumber <= num)
					{
						this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 8");
						this.GetNextFastServerForConnect();
						this.fastestServerReconnectTryNumber++;
						this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 9");
						if (this.fastestServerReconnectTryNumber != num)
						{
							this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 10");
							this.Connecting(12426, "ReconnectForAutomaticProtocolAndFastestServer");
						}
						else
						{
							this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 11");
							this.helper.MessageBoxShow(this.fastestServerReconnectTryNumber.ToString() + "   The server you are trying to connect to is not available. Please try it later, or select a different server.2", "ibVPN client notification/info message", 2, true, true);
						}
					}
				}
				if (this.isAutomaticProtocol && selectedItemValue != "Fastest Server" && selectedItemValue != "Fastest Favourite" && !this.buttonDisconnectWasClicked && !this.serverChanged && !this.pingFailed && !this.disconnectVPNbyDNS)
				{
					this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 12");
					this.GetNextProtocolForConnect(this.protocolForConnect, false);
					if (this.protocolForConnect != string.Empty)
					{
						this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 13");
						this.Connecting(12457, "ReconnectForAutomaticProtocolAndFastestServer");
						return;
					}
				}
			}
			else if (this.autoReconnect)
			{
				if (!this.buttonDisconnectWasClicked && !this.serverChanged && !this.pingFailed && this.isAutomaticProtocol)
				{
					this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 14");
					this.GetNextProtocolForConnect(this.protocolForConnect, false);
				}
				this.logger.log("se ruleaza ReconnectForAutomaticProtocolAndFastestServer - pas 15");
				this.Connecting(12479, "ReconnectForAutomaticProtocolAndFastestServer");
			}
		}

		private void RefreshControlsEnabled()
		{
			if (this.vpnManager.get_ConnectionStatus() != "Connecting...")
			{
				this.SetControlsEnabled(true);
				return;
			}
			this.SetControlsEnabled(false);
		}

		private void AutoReconnect()
		{
			if (this.autoReconnect && !this.buttonDisconnectWasClicked && !this.serverChanged && !this.disconnectVPNbyDNS && !this.menuItem2WasClicked)
			{
				this.logger.log("Autoreconect pas 1");
				if (this.autoReconnectTryNumber < 3)
				{
					this.logger.log("Autoreconect pas 2");
					if (this.isAutomaticProtocol && !this.buttonDisconnectWasClicked)
					{
						this.logger.log("Autoreconect pas 3");
						this.GetNextProtocolForConnect(this.protocolForConnect, false);
						if (this.protocolForConnect == string.Empty)
						{
							this.GetNextProtocolForConnect("Automatic", false);
						}
						this.delayAutoReconnect = true;
						this.logger.log("Autoreconect pas 4");
						this.Connecting(12529, "AutoReconnect");
					}
					else if (!this.isAutomaticProtocol && !this.buttonDisconnectWasClicked)
					{
						this.logger.log("Autoreconect pas 5");
						this.autoReconnectTryNumber++;
						this.delayAutoReconnect = true;
						this.Connecting(12563, "AutoReconnect");
					}
				}
				this.logger.log("Autoreconect pas 6");
			}
			this.logger.log("Autoreconect pas 7");
		}

		private void SetLogsCrossThread()
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.SetLogs(this.txtLog);
				}));
				return;
			}
			this.SetLogs(this.txtLog);
		}

		private void SetRchLogTextInitial()
		{
			this.SetLogsLastThreeLinesInitial(this.dashboard.rchTextLog);
			this.SetLogsLastThreeLinesInitial(this.dashboardServers.rchTextLog);
			this.SetLogsLastThreeLinesInitial(this.dashboardVPNSettings.rchTextLog);
			this.SetLogsLastThreeLinesInitial(this.dashboardDNSSettings.rchTextLog);
			this.SetLogsLastThreeLinesInitial(this.dashboardSupport.rchTextLog);
			this.SetLogsLastThreeLinesInitial(this.dashboardAccount.rchTextLog);
		}

		private void SetRchLogText()
		{
			this.SetLogsLastThreeLines(this.dashboard.rchTextLog);
			this.SetLogsLastThreeLines(this.dashboardServers.rchTextLog);
			this.SetLogsLastThreeLines(this.dashboardVPNSettings.rchTextLog);
			this.SetLogsLastThreeLines(this.dashboardDNSSettings.rchTextLog);
			this.SetLogsLastThreeLines(this.dashboardSupport.rchTextLog);
			this.SetLogsLastThreeLines(this.dashboardAccount.rchTextLog);
		}

		private void SetClipboardButton()
		{
			if (!string.IsNullOrEmpty(this.txtLog.Text) && !(this.txtLog.Text == "Connection log is enabled. You will see the connection progress here.") && !(this.txtLog.Text == "The Connection Log is disabled. No logs are being kept. For any situations, before contacting support, please enable the connection log."))
			{
				this.chkSendInfo.Enabled = true;
				this.btnCopyToClipboard.Visible = true;
				return;
			}
			this.chkSendInfo.Enabled = false;
			this.btnCopyToClipboard.Visible = false;
		}

		private void SetLogs(RichTextBoxEx rtb)
		{
			if (this.chkEnableLog.get_Checked())
			{
				if (!(this.vpnManager.get_TxtLog() == string.Empty) && this.vpnManager.get_TxtLog() != null)
				{
					rtb.Text = this.vpnManager.get_TxtLog();
				}
				else
				{
					rtb.Text = "Connection log is enabled. You will see the connection progress here.";
				}
			}
			else
			{
				rtb.Text = "The Connection Log is disabled. No logs are being kept. For any situations, before contacting support, please enable the connection log.";
			}
			try
			{
				rtb.set_SelectionStart(this.txtLog.Text.Length);
				rtb.ScrollToCaret();
			}
			catch
			{
			}
		}

		private void SetLogsLastThreeLinesInitial(RichTextBox rtb)
		{
		}

		private void SetLogsLastThreeLines(RichTextBox rtb)
		{
			if (this.chkEnableLog.get_Checked())
			{
				if (!(this.vpnManager.get_TxtLog() == string.Empty) && this.vpnManager.get_TxtLog() != null)
				{
					int num = this.FindLastLineBeginIndex(this.vpnManager.get_TxtLog());
					if (this.vpnManager.get_TxtLog().Length > num)
					{
						rtb.Text = this.vpnManager.get_TxtLog().Substring(num, this.vpnManager.get_TxtLog().Length - num);
					}
					else
					{
						rtb.Text = string.Empty;
					}
				}
				else
				{
					rtb.Text = "Connection log is enabled. You will see the connection progress here.";
				}
			}
			else
			{
				rtb.Text = "The Connection Log is disabled. No logs are being kept. For any situations, before contacting support, please enable the connection log.";
			}
			try
			{
				rtb.SelectionStart = this.txtLog.Text.Length;
				rtb.ScrollToCaret();
			}
			catch
			{
			}
		}

		private int FindLastLineBeginIndex(string log)
		{
			if (log.Length > 0)
			{
				for (int i = log.Length - 1; i > 0; i--)
				{
					char arg_1B_0 = log[i];
					if (log[i] == '[' && char.IsNumber(log[i + 1]) && log[i + 2] != ']')
					{
						return i;
					}
				}
			}
			return 0;
		}

		private void RichTextLog_VisibleChanged_VPN(object sender, EventArgs e)
		{
			this.dashboardVPNSettings.rchTextLog.ScrollToCaret();
			this.dashboardVPNSettings.rchTextLog.SelectionStart = this.txtLog.Text.Length;
			this.dashboardVPNSettings.rchTextLog.ScrollToCaret();
		}

		private void RichTextLog_VisibleChanged_Account(object sender, EventArgs e)
		{
			this.dashboardAccount.rchTextLog.ScrollToCaret();
			this.dashboardAccount.rchTextLog.SelectionStart = this.txtLog.Text.Length;
			this.dashboardAccount.rchTextLog.ScrollToCaret();
		}

		private void RichTextLog_VisibleChanged_DNS(object sender, EventArgs e)
		{
			this.dashboardDNSSettings.rchTextLog.ScrollToCaret();
			this.dashboardDNSSettings.rchTextLog.SelectionStart = this.txtLog.Text.Length;
			this.dashboardDNSSettings.rchTextLog.ScrollToCaret();
		}

		private void RichTextLog_VisibleChanged_Servers(object sender, EventArgs e)
		{
			this.dashboardServers.rchTextLog.ScrollToCaret();
			this.dashboardServers.rchTextLog.SelectionStart = this.txtLog.Text.Length;
			this.dashboardServers.rchTextLog.ScrollToCaret();
		}

		private void RichTextLog_VisibleChanged(object sender, EventArgs e)
		{
			this.dashboard.rchTextLog.ScrollToCaret();
			this.dashboard.rchTextLog.SelectionStart = this.txtLog.Text.Length;
			this.dashboard.rchTextLog.ScrollToCaret();
		}

		private void sniDashboard_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			if (base.Width > this.initialWidth - this.panel2Width)
			{
				base.Width -= this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.snpDashboard.Visible = true;
			this.SetCollapseToAllSplitContainers(true);
			this.SetMainFormPosition();
		}

		private void sniVPNSettings_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			if (base.Width == this.initialWidth - this.panel2Width)
			{
				base.Width += this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.SetCollapseToAllSplitContainers(false);
			this.snpVPNSettings.Visible = true;
			this.SetCollapseButtonsVisibility(this.spcVPNSettings, this.dashboardVPNSettings.btnExpand);
			this.SetMainFormPosition();
			if (this.logoutEventAboutKSW)
			{
				this.SetImageApplications();
			}
			this.logoutEventAboutKSW = false;
			this.SetImageApplications();
			if (this.tbcVPNSettings.get_SelectedTab() == this.tbiPrivacy)
			{
				this.chkMitmDisableIPv6Traffic.Focus();
				return;
			}
			if (this.tbcVPNSettings.get_SelectedTab() == this.tbiKillSwitch)
			{
				this.swbKillSwitch.Focus();
				return;
			}
			if (this.tbcVPNSettings.get_SelectedTab() == this.tbiBehaviour)
			{
				this.chkStartupLaunch.Focus();
			}
		}

		private void sniSupport_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			if (base.Width == this.initialWidth - this.panel2Width)
			{
				base.Width += this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.SetCollapseToAllSplitContainers(false);
			this.snpSupport.Visible = true;
			this.SetCollapseButtonsVisibility(this.spcSupport, this.dashboardSupport.btnExpand);
			this.SetMainFormPosition();
			if (this.tbcSupport.get_SelectedTab() == this.tbiServiceLog)
			{
				this.txtLog.Focus();
				return;
			}
			if (this.tbcSupport.get_SelectedTab() == this.tbiContact)
			{
				this.btnOpenTicket.Focus();
				return;
			}
			if (this.tbcSupport.get_SelectedTab() == this.tbiKB)
			{
				this.lblInfoKB.Focus();
				return;
			}
			if (this.tbcSupport.get_SelectedTab() == this.tbiAutoupdater)
			{
				this.btnUpdate.Focus();
				return;
			}
			if (this.tbcSupport.get_SelectedTab() == this.tbiSupportSettings)
			{
				this.chkEnableLog.Focus();
			}
		}

		private void ViewLogs()
		{
			this.SetMainFormSize(0, 0);
			if (base.Width == this.initialWidth - this.panel2Width)
			{
				base.Width += this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.SetCollapseToAllSplitContainers(false);
			this.snpSupport.Visible = true;
			this.SetCollapseButtonsVisibility(this.spcSupport, this.dashboardSupport.btnExpand);
			this.SetMainFormPosition();
			if (this.chkEnableLog.get_Checked())
			{
				this.tbcSupport.set_SelectedTab(this.tbiServiceLog);
				return;
			}
			this.tbcSupport.set_SelectedTab(this.tbiSupportSettings);
		}

		private void ViewKillSwitch()
		{
			this.SetMainFormSize(0, 0);
			if (base.Width == this.initialWidth - this.panel2Width)
			{
				base.Width += this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.SetCollapseToAllSplitContainers(false);
			this.snpVPNSettings.Visible = true;
			this.SetCollapseButtonsVisibility(this.spcVPNSettings, this.dashboardVPNSettings.btnExpand);
			this.SetMainFormPosition();
			if (this.logoutEventAboutKSW)
			{
				this.SetImageApplications();
			}
			this.logoutEventAboutKSW = false;
			this.tbcVPNSettings.set_SelectedTab(this.tbiKillSwitch);
			this.SetImageApplications();
		}

		private void ViewAutoUpdater()
		{
			this.SetMainFormSize(0, 0);
			if (base.Width == this.initialWidth - this.panel2Width)
			{
				base.Width += this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.SetCollapseToAllSplitContainers(false);
			this.snpSupport.Visible = true;
			this.SetCollapseButtonsVisibility(this.spcVPNSettings, this.dashboardVPNSettings.btnExpand);
			this.SetMainFormPosition();
			this.tbcSupport.set_SelectedTab(this.tbiAutoupdater);
		}

		private void ViewProtocols()
		{
			this.SetMainFormSize(0, 0);
			if (base.Width == this.initialWidth - this.panel2Width)
			{
				base.Width += this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.SetCollapseToAllSplitContainers(false);
			this.snpSupport.Visible = true;
			this.SetCollapseButtonsVisibility(this.spcServers, this.dashboardServers.btnExpand);
			this.SetMainFormPosition();
			this.tbcServers.set_SelectedTab(this.tbiProtocolList);
		}

		private void sniServers_Click(object sender, EventArgs e)
		{
			this.linkServersWasClicked = true;
			this.logGetValidRow = 0;
			this.logGetValidRowShort = 0;
			string text = this.dashboard.lnkServers.Text;
			this.SetMainFormSize(0, 0);
			if (base.Width == this.initialWidth - this.panel2Width)
			{
				base.Width += this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.SetCollapseToAllSplitContainers(false);
			this.snpServers.Visible = true;
			this.SetCollapseButtonsVisibility(this.spcServers, this.dashboardServers.btnExpand);
			this.isServelistGridviewInitialized = false;
			this.InitializeGridAgain();
			this.SetMainFormPosition();
			if (this.tbcServers.get_SelectedTab() == this.tbiUsageView)
			{
				this.txtSearchUV.Focus();
				this.txtSearchUV.Select();
			}
			if (this.logoutEventAboutServers && (this.groupFavouriteMode || this.groupContinentMode))
			{
				this.SetGroupGridFlags();
			}
			this.SetGridViewSelectedItem_New(text, true, 12971, "sniServers_Click");
			this.logoutEventAboutServers = false;
			if (this.tbcServers.get_SelectedTab() == this.tbiUsageView)
			{
				this.txtSearchUV.Focus();
				return;
			}
			if (this.tbcServers.get_SelectedTab() == this.tbiProtocolList)
			{
				this.SetProtocolFocus();
			}
		}

		private void InitializeGridAgain()
		{
			if (!this.isServelistGridviewInitialized)
			{
				this.SetGridFlagsInitial();
				this.SetGridConnectedServerColor();
				this.isServelistGridviewInitialized = true;
			}
		}

		private void sniDNSSettings_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			if (base.Width == this.initialWidth - this.panel2Width)
			{
				base.Width += this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.SetCollapseToAllSplitContainers(false);
			this.snpDNSSettings.Visible = true;
			this.SetCollapseButtonsVisibility(this.spcDNSSettings, this.dashboardDNSSettings.btnExpand);
			this.SetDNSProperties();
			this.SetMainFormPosition();
			this.notifyWasClickedDNS = false;
		}

		private void SetDNSProperties()
		{
			this.SetDNSGridFlags();
			if (this.firstDNSLoad)
			{
				this.GoToConnectedDNSServer(this.lastDNSconnectedserver);
			}
			this.firstDNSLoad = false;
			if (this.swbIbDNS.get_Value())
			{
				this.GoToConnectedDNSServer(this.lastDNSconnectedserver);
				string dNSSelectedServer = this.GetDNSSelectedServer(this.dgvDNSServers);
				this.SetGridConnectedDNSServerColor(dNSSelectedServer);
				return;
			}
			this.ResetGridConnectedDNSServerColor();
		}

		private void sniLogo_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://ibvpn.com"));
		}

		private void sniPromo_Click(object sender, EventArgs e)
		{
			if (this.PromoLink != null)
			{
				Process.Start(new ProcessStartInfo(this.PromoLink));
			}
		}

		private void sniLogout_Click(object sender, EventArgs e)
		{
			this.logoutPressed = true;
			this.askConfirmationOnExit = false;
			this.WriteLastXLasty();
			if (!(this.dashboard.btnConnect.Text == "DISCONNECT") && !(this.dashboard.btnConnect.Text == "CANCEL") && !this.swbIbDNS.get_Value() && !this.startMinimized)
			{
				if (this.tbiProtocolList.get_IsSelected())
				{
					this.lnkServers_LinkClicked(this, null);
				}
				base.Hide();
				this.SetInitialValues();
				this.menuItem3_Click(this, null);
				return;
			}
			base.Close();
			if (!this.answerLogout)
			{
				this.logoutPressed = false;
				this.notifyIconIbVPN.Visible = true;
			}
			else
			{
				this.logoutPressed = true;
				this.notifyIconIbVPN.Visible = false;
			}
			this.formClosed = true;
		}

		private void SetInitialValues()
		{
			this.formClosed = false;
			this.autoconnectLogin = false;
			this.firstDNSLoad = true;
			this.firstDgvServerGetFocus = true;
			this.firstConnected = false;
			this.updaterStarted = false;
			if (this.disableShutdown)
			{
				this.notifyIconIbVPN.Visible = true;
			}
			else
			{
				this.notifyIconIbVPN.Visible = false;
			}
			string path = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "KillSwitchAppsSuccessTable.xml";
			if (File.Exists(path))
			{
				File.Delete(path);
				this.WriteLogKsw("The KillSwitchAppsSuccessTable.xml was deleted from Logout");
			}
			this.logoutEventAboutServers = true;
			this.logoutEventAboutKSW = true;
			if (this.chkStartMinimized.get_Checked())
			{
				this.startMinimized = true;
				return;
			}
			this.startMinimized = false;
		}

		private void sniAccount_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			if (base.Width == this.initialWidth - this.panel2Width)
			{
				base.Width += this.panel2Width;
			}
			this.SetMainFormSize(base.Width, base.Height);
			this.SetCollapseToAllSplitContainers(false);
			this.snpAccount.Visible = true;
			this.SetCollapseButtonsVisibility(this.spcAccount, this.dashboardAccount.btnExpand);
			if (this.dgvPackages.Rows.Count > 0)
			{
				this.dgvPackages.Rows[0].Selected = true;
			}
			this.SetAccountGridServers();
			this.SetMainFormPosition();
		}

		private bool NeedRecreateFSList()
		{
			return (this.dashboard.lnkServers.Text == "Fastest Server" && !this.fastServersListWasCreated) || (this.dashboard.lnkServers.Text == "Fastest Favourite" && !this.fastFavouritesListWasCreated);
		}

		private void btnConnect_Click(object sender, EventArgs e)
		{
			this.logger.log("IsInternetLock() este :" + this.IsInternetLock().ToString());
			this.logger.log("serverChanged este :" + this.serverChanged.ToString());
			this.logger.log("pingFailed este :" + this.pingFailed.ToString());
			if (!this.IsInternetLock() || ((this.serverChanged || this.pingFailed) && !this.goDisconnectIfKsw1IsOn))
			{
				this.btnConnect_Click_AfterTestInternetLock();
				return;
			}
			if (this.dashboard.btnConnect.Text.StartsWith("DISCO"))
			{
				if (!this.askKswOn)
				{
					if (this.goDisconnectIfKsw1IsOn)
					{
						this.btnRestoreInternet_Click(this, null, 13378, "btnConnect_Click");
					}
					this.btnConnect_Click_AfterTestInternetLock();
					return;
				}
				CustomConfirmationKswOnDialogBox expr_B5 = new CustomConfirmationKswOnDialogBox();
				expr_B5.ShowDialog();
				if (expr_B5.AskKswOn)
				{
					if (this.goDisconnectIfKsw1IsOn)
					{
						this.btnRestoreInternet_Click(this, null, 13361, "btnConnect_Click");
					}
					this.btnConnect_Click_AfterTestInternetLock();
				}
				this.goDisconnectIfKsw1IsOn = false;
				if (expr_B5.AlwaysAskKswOn)
				{
					this.chkConfirmationKswOn.set_Checked(false);
					return;
				}
				this.chkConfirmationKswOn.set_Checked(true);
				return;
			}
			else
			{
				if (this.dashboard.btnConnect.Text.StartsWith("CANCE"))
				{
					if (this.goDisconnectIfKsw1IsOn)
					{
						this.btnRestoreInternet_Click(this, null, 13386, "btnConnect_Click");
					}
					this.btnConnect_Click_AfterTestInternetLock();
					return;
				}
				this.btnConnect_Click_AfterTestInternetLock();
				return;
			}
		}

		private void btnConnect_Click_AfterTestInternetLock()
		{
			this.logger.log("Start running btnConnect_Click - " + this.dashboard.btnConnect.Text);
			if (this.dashboard.btnConnect.Text.StartsWith("CONNECT"))
			{
				this.SetInfoFlagStatus("VPN: Connecting..");
				this.Ip = "Updating..";
				this.dashboard.lnkServers.Text == "Rotating Favourites";
			}
			if (this.dashboard.btnConnect.Text.StartsWith("DISCO"))
			{
				this.SetInfoFlagStatus("VPN: Disconnecting..");
				this.Ip = "Updating..";
				this.dashboard.lnkServers.Text == "Rotating Favourites";
			}
			if (this.dashboard.btnConnect.Text.StartsWith("CANCEL"))
			{
				this.dashboard.lnkServers.Text == "Rotating Favourites";
			}
			this.SetProtocolLabel();
			this.kswAskUser();
			if ((this.dashboard.lnkServers.Text == "Fastest Server" || this.dashboard.lnkServers.Text == "Fastest Favourite") && this.NeedRecreateFSList() && !this.buttonDisconnectWasClickedNew)
			{
				if (!(this.vpnManager.connectionStatus == "Not Connected") || this.swbIbDNS.get_Value())
				{
					this.btnConnect_ClickFaraFastServers(13466, "btnConnect_Click_AfterTestInternetLock");
					return;
				}
				if (!this.updateFastestServerListWorker.IsBusy)
				{
					this.SetUpdateFastestServerListWorkerStartSource("workerStartsFromButton");
					this.updateFastestServerListWorker.RunWorkerAsync();
					return;
				}
			}
			else
			{
				this.btnConnect_ClickFaraFastServers(13475, "btnConnect_Click_AfterTestInternetLock");
			}
		}

		private void btnConnect_ClickFaraFastServers([CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"S-a rulat btnConnect_ClickFaraFastServers()- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			if (this.chkSendToTray.get_Checked())
			{
				this.sendToTray = true;
			}
			else
			{
				this.sendToTray = false;
			}
			if (this.dgvServers.Rows.Count > 0)
			{
				this.disconnectVPNbyDNS = false;
				this.autoReconnectTryNumber = 0;
				this.fastestServerReconnectTryNumber = 0;
				string message = string.Concat(new string[]
				{
					"For privacy reasons, VPN and DNS cannot be used in the same time.",
					Environment.NewLine,
					"Connecting to VPN will disable the DNS.",
					Environment.NewLine,
					"Are you sure you want to disable the DNS?"
				});
				if (this.swbIbDNS.get_Value())
				{
					if (this.ShowMessageFromTray(message).Yes)
					{
						this.swbIbDNS.set_Value(false);
						if ((!(this.dashboard.lnkServers.Text == "Fastest Server") && !(this.dashboard.lnkServers.Text == "Fastest Favourite")) || !this.NeedRecreateFSList() || !(this.vpnManager.connectionStatus == "Not Connected") || this.swbIbDNS.get_Value() || this.buttonDisconnectWasClickedNew)
						{
							this.ConnectingComplex(13559, "btnConnect_ClickFaraFastServers");
							return;
						}
						if (!this.updateFastestServerListWorker.IsBusy)
						{
							this.SetUpdateFastestServerListWorkerStartSource("workerStartsFromAfterDNSOff");
							this.updateFastestServerListWorker.RunWorkerAsync();
							return;
						}
						this.ConnectingComplex(13556, "btnConnect_ClickFaraFastServers");
						return;
					}
				}
				else
				{
					this.ConnectingComplex(13565, "btnConnect_ClickFaraFastServers");
				}
			}
		}

		private void ConnectingComplex([CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"S-a rulat ConnectingComplex()- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			this.GetNextProtocolForConnect(this.protocolForConnect, true);
			if (this.protocolForConnect != string.Empty)
			{
				this.Connecting(13603, "ConnectingComplex");
			}
		}

		private void Connecting([CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"A inceput Connecting()- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			this.logger.log("autoReconnectTryNumber este :" + this.autoReconnectTryNumber);
			string text = this.dashboard.lnkServers.Text;
			if (!(this.lastConnectedServerName != string.Empty))
			{
				this.VPNConnect(false);
				return;
			}
			if (text.ToString() == this.lastConnectedServerName)
			{
				if (this.suntemInProcesulRF && !this.serverChanged && text.ToString() == "Rotating Favourites")
				{
					this.VPNConnect(true);
					return;
				}
				this.VPNConnect(false);
				return;
			}
			else
			{
				if (this.serverChanged)
				{
					this.VPNConnect(true);
					return;
				}
				this.VPNConnect(false);
				return;
			}
		}

		private bool GetIsNetworkAvailableTest()
		{
			return false;
		}

		private bool GetValidFSConnect()
		{
			return (this.dashboard.lnkServers.Text == "Fastest Server" || this.dashboard.lnkServers.Text == "Fastest Favourite") && this.NeedRecreateFSList() && this.vpnManager.connectionStatus == "Connected";
		}

		private void VPNConnect(bool widthDisconnect)
		{
			if (this.dashboard.btnConnect.Text.Length >= this.buttonConnectText.Length && this.dashboard.btnConnect.Text.Substring(0, 6) == "CONNEC")
			{
				this.logger.log("se incearca o conectare - din VPNConnect");
				if (!widthDisconnect)
				{
					this.Connect(false);
					return;
				}
				if (this.GetValidFSConnect())
				{
					this.loggerWorkerContinue = true;
					this.logger.log("se incearca o deconectare- nu este FS valid");
					this.vpnManager.VPNConnectionManage(-1.ToString(), null, null, null, null, null, null, null, 0, null, null, null, null, null);
					return;
				}
				this.Connect(true);
				return;
			}
			else if (this.dashboard.btnConnect.Text.Substring(0, 6) == "DISCON")
			{
				this.logger.log("se incearca o deconectare- din VPNConnect 1");
				if (this.testPing)
				{
					this.testPingWorker.CancelAsync();
					this.timerPing.Stop();
				}
				if (!widthDisconnect)
				{
					this.loggerWorkerContinue = true;
					this.logger.log("se incearca o deconectare- din VPNConnect 2");
					this.vpnManager.VPNConnectionManage(-1.ToString(), null, null, null, null, null, null, null, 0, null, null, null, null, null);
					return;
				}
				if (this.GetValidFSConnect())
				{
					this.loggerWorkerContinue = true;
					this.logger.log("se incearca o deconectare- nu este FS valid");
					this.vpnManager.VPNConnectionManage(-1.ToString(), null, null, null, null, null, null, null, 0, null, null, null, null, null);
					return;
				}
				this.logger.log("se incearca o conectare- la schimbare de server- din VPNConnect");
				this.Connect(true);
				return;
			}
			else
			{
				bool flagAR = this.GetFlagAR();
				if (this.autoReconnectTryNumber < 3 && this.autoReconnect && (flagAR || this.isVPNConnectionInterrupted) && this.dashboard.lnkServers.Text != "Fastest Server" && this.dashboard.lnkServers.Text != "Fastest Favourite" && this.dashboard.lnkServers.Text != "Rotating Favourites" && this.dashboard.lnkProtocol.Text != "Automatic")
				{
					this.autoReconnectTryNumber++;
					this.logger.log("se incearca o conectare- la intrerupere - din VPNConnect");
					this.Connect(false);
					return;
				}
				this.loggerWorkerContinue = true;
				this.logger.log("se incearca o deconectare- din VPNConnect 3");
				this.vpnManager.VPNConnectionManage(-1.ToString(), null, null, null, null, null, null, null, 0, null, null, null, null, null);
				return;
			}
		}

		private void Connect(bool widthDisconnect)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.ConnectCross(widthDisconnect);
				}));
				return;
			}
			this.ConnectCross(widthDisconnect);
		}

		private void ConnectCross(bool widthDisconnect)
		{
			if (widthDisconnect)
			{
				this.loggerWorkerContinueFromServerChanged = true;
			}
			if (this.dashboard.lnkProtocol.Text != string.Empty)
			{
				try
				{
					if (this.dashboard.lnkServers.Text == "Rotating Favourites")
					{
						this.CreateRotatingFavouritesServersListXML();
					}
					this.SetControlsEnabled(false);
					string text = string.Empty;
					if (!this.enableLog)
					{
						this.debugLevel = 0;
					}
					else
					{
						this.debugLevel = Convert.ToInt32(this.cmbDebugLevel.SelectedItem.ToString());
					}
					if (this.oldDebugLevel != this.debugLevel)
					{
						this.newOpenVPNInstance = new bool?(true);
					}
					this.logger.log("s-a lansat metoda care face conexiunea in MainForm(ibVPN)");
					string text2 = string.Empty;
					string text3 = this.protocolForConnect;
					if (!(this.dashboard.lnkServers.Text == "Fastest Server") && !(this.dashboard.lnkServers.Text == "Fastest Favourite") && !(this.dashboard.lnkServers.Text == "Rotating Favourites"))
					{
						text2 = this.dashboard.lnkServers.Text;
						text = ((text3 == "Fast/Extremely Secure(SSTP)") ? this.apiManager.GetUrl(this.dgvServersCopy, text2) : this.apiManager.GetServerIp(this.dgvServersCopy, text2));
					}
					else
					{
						ArrayList arrayList = new ArrayList();
						if (this.dashboard.lnkServers.Text != "Rotating Favourites")
						{
							arrayList = this.GetFastestServers(this.fastestServerReconnectTryNumber, this.dashboard.lnkServers.Text, 13876, "ConnectCross");
						}
						else
						{
							this.logger.log("se lanseaza GetFastestServers in ConnectCross cu index server= " + this.indexRF.ToString());
							arrayList = this.GetFastestServers(this.indexRF, this.dashboard.lnkServers.Text, 13881, "ConnectCross");
						}
						if (arrayList.Count > 0)
						{
							text2 = arrayList[0].ToString();
							text = ((text3 == "Fast/Extremely Secure(SSTP)") ? this.apiManager.GetUrl(this.dgvServersCopy, text2) : this.apiManager.GetServerIp(this.dgvServersCopy, text2));
						}
						else
						{
							text2 = this.lastConnectedServerName;
							text = ((text3 == "Fast/Extremely Secure(SSTP)") ? this.apiManager.GetUrl(this.dgvServersCopy, text2) : this.apiManager.GetServerIp(this.dgvServersCopy, text2));
						}
					}
					if (!string.IsNullOrEmpty(text) && this.lifeTime != 0)
					{
						this.loggerWorkerContinue = true;
						text3 = this.SetAvailableProtocol(text3);
						if (text3 == "Fast/Secure (IPSec)" && !this.FoundIpsecCertificate())
						{
							this.InstallIpSecCertificate(false);
						}
						bool flag;
						if (!(text3 == "Stable/Secure (OpenVPN-TCP)") && !(text3 == "Stable/Fast (OpenVPN-UDP)"))
						{
							flag = true;
						}
						else if (!(flag = this.GoConnectIsOpenVPN(text3)))
						{
							this.logger.log("nu s-a reusit reinstalarea TAP");
							if (this.dashboard.lnkProtocol.Text == "Automatic")
							{
								this.logger.log("nu s-a reusit reinstalarea TAP - si se trece la protocolul urmator pt. ca avem protocol Automatic");
								this.GetNextProtocolForConnect(text3, false);
								text3 = this.protocolForConnect;
								if (!this.GoConnectIsOpenVPN(text3))
								{
									this.GetNextProtocolForConnect(text3, false);
									text3 = this.protocolForConnect;
								}
								if (text3 == "Fast/Extremely Secure(SSTP)")
								{
									text = this.apiManager.GetUrl(this.dgvServersCopy, text2);
								}
								flag = true;
							}
							else
							{
								string str = "Missing file openvpn.exe";
								string str2 = "Missing ibVPN Tap Adapter";
								string text4 = string.Concat(new string[]
								{
									"OpenVPN was not installed correctly, or some files are missing.",
									Environment.NewLine,
									Environment.NewLine,
									"To fix the OpenVPN issue, please re-install ibVPN AIO and allow ibVPN TAP to be installed(if prompted).",
									Environment.NewLine,
									Environment.NewLine,
									"Meanwhile, please select other protocol to connect to.The connection on any other protocols is not affected."
								});
								if (!File.Exists(this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "OpenVPN\\bin\\openvpn.exe"))
								{
									this.logger.log("nu exista fisierul openvpn.exe");
									text4 = text4 + Environment.NewLine + str;
								}
								else if (!this.IsTAPInstalled())
								{
									this.logger.log("exista fisierul openvpn.exe dar nu exista adaptorul TAP");
									text4 = text4 + Environment.NewLine + str2;
								}
								this.helper.MessageBoxShow(text4, "ibVPN client notification/info message", 1, true, true);
								this.RefreshControlsEnabled();
							}
						}
						if (flag && this.IsInternetLock())
						{
							if (!this.deletedDefaultRouteFlag)
							{
								this.btnDeleteDefaultRoute_Click(this, null, 14085, "ConnectCross");
							}
							this.lastUrlIP = ((text3 == "Fast/Extremely Secure(SSTP)") ? this.apiManager.GetServerIp(this.dgvServersCopy, text2) : text);
							if (!this.existingServerRoutes.Contains(this.lastUrlIP))
							{
								this.existingServerRoutes.Add(this.lastUrlIP);
								this.logger.log("s-a adaugat in existingServerRoutes :" + this.lastUrlIP);
								this.AddServerRoute(this.lastUrlIP, true);
							}
						}
						if (flag)
						{
							this.vpnManager.VPNConnectionManage(text3, new bool?(this.GetForceSecureDNS()), new bool?(this.forceSecureDNSFirewall), new bool?(this.disableIPv6Traffic), text, new bool?(widthDisconnect), this.UserName, this.VpnPassword, this.debugLevel, this.newOpenVPNInstance, new bool?(this.delayAutoReconnect), new bool?(this.enableLog), new bool?(this.GetAdBlock()), new bool?(this.killConnectionWorker));
						}
						this.delayAutoReconnect = false;
						this.oldDebugLevel = this.debugLevel;
						this.newOpenVPNInstance = new bool?(false);
						this.killConnectionWorker = false;
					}
					else
					{
						this.SetControlsEnabled(true);
					}
				}
				catch (Exception ex)
				{
					this.RestoreDNS(14135, "ConnectCross");
					this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 0, true, true);
				}
			}
		}

		private bool IsTAPInstalled()
		{
			bool result = false;
			this.InitializeNetworkInterface();
			NetworkInterface[] array = this.nicArr;
			for (int i = 0; i < array.Length; i++)
			{
				if (array[i].Description == "ibVPN Tap Adapter")
				{
					result = true;
				}
			}
			return result;
		}

		private bool GoConnectIsOpenVPN(string selProt)
		{
			bool result;
			if (this.IsOpenVPNFilesInstalled(selProt))
			{
				if (!this.IsTAPInstalled())
				{
					this.RepairOpenVPN(false);
					result = this.IsTAPInstalled();
				}
				else
				{
					result = true;
				}
			}
			else
			{
				result = false;
			}
			return result;
		}

		private bool IsOpenVPNFilesInstalled(string selProt)
		{
			bool result;
			if (!(selProt == "Stable/Secure (OpenVPN-TCP)") && !(selProt == "Stable/Fast (OpenVPN-UDP)"))
			{
				result = true;
			}
			else
			{
				string path = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "OpenVPN\\bin\\openvpn.exe";
				string arg_B2_0 = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "OpenVPN\\bin\\deltapall.bat";
				string path2 = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "OpenVPN\\bin\\addtap.bat";
				if (File.Exists(arg_B2_0) && File.Exists(path2) && File.Exists(path))
				{
					result = true;
				}
				else
				{
					this.logger.log("nu exista fisierele deltapall.bat sau adtap.bat sau openvpn.exe");
					result = false;
				}
			}
			return result;
		}

		private bool GetForceSecureDNS()
		{
			return this.forceSecureDNS && !this.IsInternetLock();
		}

		private bool GetAdBlock()
		{
			return this.adBlock && !this.IsInternetLock();
		}

		private string SetAvailableProtocol(string prot)
		{
			string result = string.Empty;
			if (prot != "Fast/Strong Encryption (L2TP)" && prot != "Fast/Light Encryption(PPTP)" && prot != "Fast/Secure (IPSec)" && prot != "Stable/Secure (OpenVPN-TCP)" && prot != "Stable/Fast (OpenVPN-UDP)" && prot != "Fast/Extremely Secure(SSTP)")
			{
				this.logger.log("Protocol inexistent. S-a setat implicit IPSEC");
				result = "Fast/Secure (IPSec)";
			}
			else
			{
				result = prot;
			}
			return result;
		}

		private void btnExpand_Click_Account(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcAccount);
			this.SetCollapseButtonsVisibility(this.spcAccount, this.dashboardAccount.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void btnExpand_Click_DNSSettings(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcDNSSettings);
			this.SetCollapseButtonsVisibility(this.spcDNSSettings, this.dashboardDNSSettings.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void btnExpand_Click_VPNSettings(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcVPNSettings);
			this.SetCollapseButtonsVisibility(this.spcVPNSettings, this.dashboardVPNSettings.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void btnExpand_Click_Server(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcServers);
			this.SetCollapseButtonsVisibility(this.spcVPNSettings, this.dashboardServers.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void btnColapseServers_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcServers);
			this.SetCollapseButtonsVisibility(this.spcServers, this.dashboardServers.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void btnColapseVPNSettings_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcVPNSettings);
			this.SetCollapseButtonsVisibility(this.spcVPNSettings, this.dashboardVPNSettings.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void btnColapseDNSSettings_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcDNSSettings);
			this.SetCollapseButtonsVisibility(this.spcDNSSettings, this.dashboardDNSSettings.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void btnColapseSupport_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcSupport);
			this.SetCollapseButtonsVisibility(this.spcSupport, this.dashboardSupport.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void btnColapseAccount_Click(object sender, EventArgs e)
		{
			this.SetMainFormSize(0, 0);
			this.UpdatePanel2(this.spcAccount);
			this.SetCollapseButtonsVisibility(this.spcAccount, this.dashboardAccount.btnExpand);
			this.SetMainFormSize(base.Width, base.Height);
			this.SetMainFormPosition();
		}

		private void dashboardSwbDNS_ValueChanged(object sender, EventArgs e)
		{
			this.SetSwbDNSValue(this.dashboard);
		}

		private void dashboardServersSwbDNS_ValueChanged(object sender, EventArgs e)
		{
			this.SetSwbDNSValue(this.dashboardServers);
		}

		private void dashboardVPNSettingsSwbDNS_ValueChanged(object sender, EventArgs e)
		{
			this.SetSwbDNSValue(this.dashboardVPNSettings);
		}

		private void dashboardDNSSettingsSwbDNS_ValueChanged(object sender, EventArgs e)
		{
			this.SetSwbDNSValue(this.dashboardDNSSettings);
		}

		private void dashboardSupportSwbDNS_ValueChanged(object sender, EventArgs e)
		{
			this.SetSwbDNSValue(this.dashboardSupport);
		}

		private void dashboardAccountSwbDNS_ValueChanged(object sender, EventArgs e)
		{
			this.SetSwbDNSValue(this.dashboardAccount);
		}

		private void SetSwbDNSValue(DashboardUserControl duc)
		{
			if (this.vpnManager.get_ConnectionStatus() != "Connecting..." && !this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
			{
				if (duc.swbDNS.get_Value())
				{
					this.swbIbDNS.set_Value(true);
					return;
				}
				this.swbIbDNS.set_Value(false);
			}
		}

		private void ShowRFMessage()
		{
			if (!this.IsInternetLock())
			{
				string text = this.dashboard.lnkServers.Text;
				if (this.swbKillSwitch.get_Value() && text == "Rotating Favourites")
				{
					this.helper.MessageBoxShow("We do not recommend using KillSwitch while the Rotating Favourite is selected. \n\n At this time, KillSwitch does not close the desired applications during disconnect/reconnect process on Rotating Favourite servers.", "ibVPN client notification/info message", 2, true, true);
				}
			}
		}

		private CustomMessageBox ShowKswMessageWindow(bool db, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"ShowKswMessageWindow - at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			CustomMessageBox expr_91 = this.helper.MessageBoxShow(string.Concat(new string[]
			{
				"Internet KillSwitch is designed to block Internet traffic if you are disconnected from VPN. ",
				Environment.NewLine,
				Environment.NewLine,
				"It is a safety measure to avoid unwanted leaks if the VPN connection drops.",
				Environment.NewLine,
				Environment.NewLine,
				"Do you want to proceed?"
			}), "ibVPN client notification/info message", 2, false, true);
			if (!expr_91.Yes)
			{
				if (db)
				{
					this.swbKillSwitch.set_Value(false);
					return expr_91;
				}
				this.rbInternetKsw.Checked = false;
				this.rbApplicationsKsw.Checked = true;
			}
			return expr_91;
		}

		private void OpenAppsWindow()
		{
			if (!this.swbKillSwitch.get_Value())
			{
				if (this.rbInternetKsw.Checked)
				{
					if (!this.forceRestoreInternet)
					{
						if (this.vpnManager.get_ConnectionStatus() == "Connected")
						{
							if (this.kswMessageAppeared)
							{
								this.RestoreInternet();
								this.noWasClicked = false;
								this.kswMessageAppeared = false;
								return;
							}
							string message = "You have chosen to Restore the Internet.\n\nThe Internet KillSwitch will be turned off and the regular Internet traffic will be restored.\n\n In case the VPN connection is lost, your traffic will be exposed.\n\nAre you sure you want to do that ? ";
							if (this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 1, false, true).Yes)
							{
								this.RestoreInternet();
								this.noWasClicked = false;
								return;
							}
							this.noWasClicked = true;
							this.swbKillSwitch.set_Value(true);
							return;
						}
						else if (this.dashboard.lnkKswSet.Text == "Restore Internet")
						{
							this.logger.log("se face RestoreInernet cand nu e conectat");
							this.btnRestoreInternet_Click(this, null, 14527, "OpenAppsWindow");
							this.SetColorSettingsLink(Color.FromArgb(28, 158, 27), "Settings", 14530, "OpenAppsWindow");
							this.ChangeLinkSettingsLocation(this.offsetLinkSettings);
							this.btnRestoreNet.Visible = false;
							return;
						}
					}
					else
					{
						this.RestoreInternet();
						this.forceRestoreInternet = false;
					}
				}
				return;
			}
			if (this.rbInternetKsw.Checked)
			{
				if (!this.noWasClicked)
				{
					this.ShowKswMessageWindow(true, 14482, "OpenAppsWindow");
				}
				this.noWasClicked = false;
				return;
			}
			this.ShowAppsAndRunningProcessesWhenKswListIsEmpty();
		}

		private void ShowAppsAndRunningProcessesWhenKswListIsEmpty()
		{
			if (this.dgvKillSwitch.Rows.Count == 0)
			{
				CustomKSWDialogBox customKSWDialogBox = new CustomKSWDialogBox();
				customKSWDialogBox.TopMost = true;
				customKSWDialogBox.ShowDialog();
				if (customKSWDialogBox.AddRunningProcess)
				{
					this.btnProcess_Click(this, null);
				}
				else if (customKSWDialogBox.AddApp)
				{
					this.btnBrowse_Click(this, null);
				}
			}
			if (this.dgvKillSwitch.Rows.Count == 0)
			{
				this.swbKillSwitch.set_Value(false);
			}
		}

		private void RestoreInternet()
		{
			this.logger.log("se incepe metoda RestoreInernet");
			this.btnRestoreInternet_Click(this, null, 14575, "RestoreInternet");
			this.dashboard.swbKillSwitch.Enabled = false;
			this.dashboardServers.swbKillSwitch.Enabled = false;
			this.dashboardVPNSettings.swbKillSwitch.Enabled = false;
			this.dashboardDNSSettings.swbKillSwitch.Enabled = false;
			this.dashboardSupport.swbKillSwitch.Enabled = false;
			this.dashboardAccount.swbKillSwitch.Enabled = false;
			this.swbKillSwitch.Enabled = false;
			this.SetInternetKswControlsEnabled(false);
			this.SetAppKswControlsEnabled(false);
		}

		private void dashboardSwbKillSwitch_ValueChanged(object sender, EventArgs e)
		{
			this.swbKillSwitch.remove_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.SetSwbKWValue(this.dashboard);
			this.swbKillSwitch.add_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.UpdateDashboardKSWLog();
			this.SetNotifyTextForKillSwitch();
			this.OpenAppsWindow();
			this.ShowRFMessage();
			this.WriteUserSettingsFile(this.swbKillSwitch, "killSwitch");
		}

		private void SetSwbKWValue(DashboardUserControl duc)
		{
			this.UnAssignKillSwitchEvents();
			if (!duc.swbKillSwitch.get_Value())
			{
				this.chkAskReopenClosedApplications.Enabled = false;
				this.swbKillSwitch.set_Value(false);
				this.SetKillSwitchButtonStatus(false);
			}
			else
			{
				if (this.rbApplicationsKsw.Checked)
				{
					this.chkAskReopenClosedApplications.Enabled = true;
				}
				this.swbKillSwitch.set_Value(true);
				this.SetKillSwitchButtonStatus(true);
			}
			this.AssignKillSwitchEvents();
		}

		private void dashboardServersSwbKillSwitch_ValueChanged(object sender, EventArgs e)
		{
			this.swbKillSwitch.remove_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.SetSwbKWValue(this.dashboardServers);
			this.swbKillSwitch.add_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.UpdateDashboardKSWLog();
			this.SetNotifyTextForKillSwitch();
			this.OpenAppsWindow();
			this.ShowRFMessage();
			this.WriteUserSettingsFile(this.swbKillSwitch, "killSwitch");
		}

		private void dashboardVPNSettingsSwbKillSwitch_ValueChanged(object sender, EventArgs e)
		{
			this.swbKillSwitch.remove_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.SetSwbKWValue(this.dashboardVPNSettings);
			this.swbKillSwitch.add_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.UpdateDashboardKSWLog();
			this.SetNotifyTextForKillSwitch();
			this.OpenAppsWindow();
			this.ShowRFMessage();
			this.WriteUserSettingsFile(this.swbKillSwitch, "killSwitch");
		}

		private void dashboardDNSSettingsSwbKillSwitch_ValueChanged(object sender, EventArgs e)
		{
			this.swbKillSwitch.remove_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.SetSwbKWValue(this.dashboardDNSSettings);
			this.swbKillSwitch.add_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.UpdateDashboardKSWLog();
			this.SetNotifyTextForKillSwitch();
			this.OpenAppsWindow();
			this.ShowRFMessage();
			this.WriteUserSettingsFile(this.swbKillSwitch, "killSwitch");
		}

		private void dashboardSupportSwbKillSwitch_ValueChanged(object sender, EventArgs e)
		{
			this.swbKillSwitch.remove_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.SetSwbKWValue(this.dashboardSupport);
			this.swbKillSwitch.add_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.UpdateDashboardKSWLog();
			this.SetNotifyTextForKillSwitch();
			this.OpenAppsWindow();
			this.ShowRFMessage();
			this.WriteUserSettingsFile(this.swbKillSwitch, "killSwitch");
		}

		private void dashboardAccountSwbKillSwitch_ValueChanged(object sender, EventArgs e)
		{
			this.swbKillSwitch.remove_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.SetSwbKWValue(this.dashboardAccount);
			this.swbKillSwitch.add_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.UpdateDashboardKSWLog();
			this.SetNotifyTextForKillSwitch();
			this.OpenAppsWindow();
			this.ShowRFMessage();
			this.WriteUserSettingsFile(this.swbKillSwitch, "killSwitch");
		}

		private void DgvServers_CellValueChanged(object sender, DataGridViewCellEventArgs e)
		{
			if (e.ColumnIndex == 5)
			{
				int firstDisplayedScrollingRowIndex = this.dgvServers.FirstDisplayedScrollingRowIndex;
				if (firstDisplayedScrollingRowIndex == 0)
				{
					firstDisplayedScrollingRowIndex = this.firstScrollLine;
				}
				string b = this.dgvServers.Rows[e.RowIndex].Cells[2].Value.ToString();
				string text = this.dashboard.lnkServers.Text;
				if ((this.vpnManager.get_ConnectionStatus() == "Connected" || this.vpnManager.get_ConnectionStatus() == "Connecting...") && text == "Fastest Favourite" && this.lastFavouriteConnectedServer == b)
				{
					this.dgvServers.CellValueChanged -= new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
					DataGridViewCell expr_E8 = this.dgvServers.Rows[e.RowIndex].Cells[e.ColumnIndex];
					expr_E8.Value = !(bool)expr_E8.Value;
					this.dgvServers.CellValueChanged += new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
				}
				else
				{
					string activeGroupMode = this.GetActiveGroupMode();
					if (activeGroupMode != string.Empty)
					{
						this.favoriteColumnWasClicked = true;
						this.LoadActiveGroup(activeGroupMode);
						this.favoriteColumnWasClicked = false;
					}
					if (firstDisplayedScrollingRowIndex < this.dgvServers.Rows.Count)
					{
						this.dgvServers.FirstDisplayedScrollingRowIndex = firstDisplayedScrollingRowIndex;
					}
				}
				this.SetAvailableProtocolsForFV();
			}
		}

		private void buttonX39_Click(object sender, EventArgs e)
		{
		}

		public void LoadServersAPI(bool initial)
		{
			try
			{
				this.logger.log("incepe metoda LoadServersAPI - apelare API pt. servere cu Initial=" + initial.ToString());
				this.apiManager.ApiServersManage(this.dgvServers, this.UserId, this.Password, this.ApiUrl, this.dgvPackages, this.dgvAccountServers, this.dgvDNSServers, initial);
			}
			catch
			{
				this.errorLoadServerList = true;
			}
		}

		private void SetIpDashboardLabel()
		{
			ArrayList arrayList = this.apiManager.GetIp();
			this.Ip = arrayList[0].ToString();
			if (arrayList.Count > 1)
			{
				this.Ip_country = arrayList[1].ToString();
				this.Ip_city = arrayList[2].ToString();
				if (this.getExternalIpWorkerRunInitial)
				{
					this.AnalyticsLoginTrack(this.Ip_country, this.Ip_city, this.freetrial.ToString());
				}
				this.getExternalIpWorkerRunInitial = false;
			}
		}

		private void SetCheckIpNewLocation()
		{
			int y = 24;
			double num = (double)(5 + this.ip.Length) * 5.2;
			if (this.dpiX != 96f)
			{
				num = num * (double)this.dpiX / 96.0;
				y = Convert.ToInt32(this.dpiX * 24f / 96f);
			}
			Point location = new Point((int)Math.Round(num, 0), y);
			this.dashboard.lnkCheckIP.Location = location;
			this.dashboardServers.lnkCheckIP.Location = location;
			this.dashboardVPNSettings.lnkCheckIP.Location = location;
			this.dashboardDNSSettings.lnkCheckIP.Location = location;
			this.dashboardSupport.lnkCheckIP.Location = location;
			this.dashboardAccount.lnkCheckIP.Location = location;
		}

		private void SetProtocolLabel()
		{
			if (this.ip != null)
			{
				string text = "No VPN";
				int num = 5 + this.ip.Length + 10;
				if (this.vpnManager.get_ConnectionStatus() == "Not Connected")
				{
					text = "No VPN";
				}
				else if (this.vpnManager.get_ConnectionStatus() == "Connecting...")
				{
					text = "VPN Connecting";
				}
				else if (this.vpnManager.get_ConnectionStatus() == "Connected")
				{
					text = this.protocolForConnect;
					if (this.protocolForConnect == "Fast/Strong Encryption (L2TP)")
					{
						text = "L2TP";
					}
					else if (this.protocolForConnect == "Fast/Light Encryption(PPTP)")
					{
						text = "PPTP";
					}
					else if (this.protocolForConnect == "Fast/Secure (IPSec)")
					{
						text = "IPSec (IKEv2)";
					}
					else if (this.protocolForConnect == "Fast/Extremely Secure(SSTP)")
					{
						text = "SSTP";
					}
					else if (this.protocolForConnect == "Stable/Secure (OpenVPN-TCP)")
					{
						text = "OpenVPN TCP";
					}
					else if (this.protocolForConnect == "Stable/Fast (OpenVPN-UDP)")
					{
						text = "OpenVPN UDP";
					}
				}
				this.protocolLabel = text;
				this.r6TextLeft = this.r6TextLeft.Substring(0, num) + this.protocolLabel + this.r6TextLeft.Substring(num - 1 + this.protocolLabel.Length);
			}
		}

		private void SetPromoLabels(string text)
		{
			this.dashboard.lnkPromo.Text = text;
			this.dashboardServers.lnkPromo.Text = text;
			this.dashboardVPNSettings.lnkPromo.Text = text;
			this.dashboardDNSSettings.lnkPromo.Text = text;
			this.dashboardSupport.lnkPromo.Text = text;
			this.dashboardAccount.lnkPromo.Text = text;
		}

		private void SetNewsLabels(string text)
		{
			this.dashboard.lnkNews.Text = text;
			this.dashboardServers.lnkNews.Text = text;
			this.dashboardVPNSettings.lnkNews.Text = text;
			this.dashboardDNSSettings.lnkNews.Text = text;
			this.dashboardSupport.lnkNews.Text = text;
			this.dashboardAccount.lnkNews.Text = text;
		}

		private void ServerlistGridviewInitialize()
		{
			this.SetInactiveGroups();
			try
			{
				this.initialServerList = this.dgvServers.DataSource;
				this.dgvServersCopy.DataSource = this.initialServerList;
				this.initialAccountServerList = this.dgvAccountServers.DataSource;
				this.SetServersControlsVisibility(true);
				this.InitializeServerGridView();
				if (this.dgvServers.Rows.Count > 0)
				{
					this.dgvServers.Columns[1].Visible = false;
					this.dgvServers.Columns[3].Visible = false;
					this.dgvServers.Columns[4].Visible = false;
					this.dgvServers.Columns[0].Width = 40;
					this.dgvServers.Columns[0].Resizable = DataGridViewTriState.False;
					this.dgvServers.Columns[5].Width = this.flagColumnWidth;
					this.dgvServers.Columns[5].Resizable = DataGridViewTriState.False;
					this.dgvServers.Columns[2].Width = 250;
					this.dgvServers.Columns[2].Resizable = DataGridViewTriState.False;
					this.dgvServers.Columns[2].ReadOnly = true;
					this.dgvServers.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
					this.dgvServers.Columns[6].Visible = false;
					this.dgvServers.Columns[7].Visible = false;
					this.dgvServers.Columns[8].Visible = false;
					this.dgvServers.Columns[9].Visible = false;
					this.dgvServers.Columns[10].Visible = false;
					this.dgvServers.Columns[11].Visible = false;
					this.dgvServers.Columns[12].Visible = false;
					this.dgvServers.Columns[13].Visible = false;
					this.dgvServers.Columns[14].Width = 40;
					this.dgvServers.Columns[15].Visible = false;
					this.dgvServers.Columns[16].Visible = false;
					this.dgvServers.Columns[17].Visible = false;
					this.dgvServers.Columns[14].Resizable = DataGridViewTriState.False;
				}
			}
			catch
			{
			}
		}

		private void CbProtocol_SelectedIndexChanged1(object sender, EventArgs e)
		{
		}

		private void SetAutomaticProtocolVariable()
		{
		}

		private ArrayList GetNextFastServerForConnect()
		{
			new ArrayList();
			return this.GetFastestServers(this.fastestServerReconnectTryNumber, this.dashboard.lnkServers.Text, 15133, "GetNextFastServerForConnect");
		}

		private void GetNextProtocolForConnect(string ptcol, bool reset)
		{
			string path = string.Empty;
			if (this.dashboard.lnkServers.Text == "Fastest Server")
			{
				path = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "FastestServers.xml";
			}
			else if (this.dashboard.lnkServers.Text == "Fastest Favourite")
			{
				path = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "FastestFavourites.xml";
			}
			else if (this.dashboard.lnkServers.Text == "Rotating Favourites")
			{
				path = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "RotatingFavourites.xml";
			}
			string specificProtocols = string.Empty;
			if (this.dgvServers.SelectedRows.Count == 0)
			{
				this.SetGridViewSelectedItem_New(this.dashboard.lnkServers.Text, true, 15161, "GetNextProtocolForConnect");
			}
			if (this.dgvServers.SelectedRows.Count == 1 && this.dgvServers.SelectedRows[0].Cells[2].Value.ToString() == "Fastest Servers")
			{
				this.SetGridViewSelectedItem_New(this.dashboard.lnkServers.Text, true, 15165, "GetNextProtocolForConnect");
			}
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				string a = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
				if (a != "Fastest Server" && a != "Fastest Favourite" && a != "Rotating Favourites")
				{
					specificProtocols = this.dgvServers.SelectedRows[0].Cells[7].Value.ToString();
				}
				else if (File.Exists(path))
				{
					ArrayList arrayList = new ArrayList();
					if (a == "Rotating Favourites")
					{
						arrayList = this.GetFastestServers(this.indexRF, this.dashboard.lnkServers.Text, 15181, "GetNextProtocolForConnect");
					}
					else
					{
						arrayList = this.GetFastestServers(this.fastestServerReconnectTryNumber, this.dashboard.lnkServers.Text, 15185, "GetNextProtocolForConnect");
					}
					if (arrayList.Count > 2)
					{
						specificProtocols = arrayList[2].ToString();
					}
					else
					{
						specificProtocols = "01234";
					}
				}
			}
			int num = -1;
			string b = string.Empty;
			string text = this.dashboard.lnkProtocol.Text;
			if (reset)
			{
				ptcol = string.Empty;
			}
			ArrayList specificProtocols2 = this.GetSpecificProtocols(specificProtocols);
			for (int i = 0; i < specificProtocols2.Count; i++)
			{
				if (specificProtocols2[i].ToString() == ptcol)
				{
					num = i;
					if (i < specificProtocols2.Count - 1)
					{
						b = specificProtocols2[num + 1].ToString();
					}
				}
			}
			if (text == "Automatic" && num == -1)
			{
				if (specificProtocols2.Count > 0)
				{
					b = specificProtocols2[0].ToString();
				}
				else
				{
					b = "Fast/Secure (IPSec)";
				}
			}
			if (text == "Automatic")
			{
				this.isAutomaticProtocol = true;
				this.protocolForConnect = b;
				if (this.protocolForConnect == string.Empty)
				{
					if (this.autoReconnect && this.isAutomaticProtocol && !this.buttonDisconnectWasClicked)
					{
						this.autoReconnectTryNumber++;
					}
					if (!this.autoReconnect && this.isAutomaticProtocol && !this.buttonDisconnectWasClicked && this.dashboard.lnkServers.Text != "Fastest Server" && this.dashboard.lnkServers.Text != "Fastest Favourite" && this.dashboard.lnkServers.Text != "Rotating Favourites")
					{
						this.helper.MessageBoxShow("The server you are trying to connect to is not available. Please try it later, or select a different server.3", "ibVPN client notification/info message", 2, true, true);
						return;
					}
				}
				else if (this.dashboard.lnkServers.Text == "Rotating Favourites")
				{
					if (this.lastProtocolForAutoconnect == string.Empty)
					{
						this.lastProtocolForAutoconnect = "Fast/Secure (IPSec)";
					}
					if (this.suntemInProcesulRF && this.lastProtocolForAutoconnect != b)
					{
						if (!this.saProdusConectare)
						{
							this.protocolForConnect = b;
						}
						else
						{
							this.protocolForConnect = this.lastProtocolForAutoconnect;
						}
					}
					this.saProdusConectare = false;
					return;
				}
			}
			else
			{
				this.isAutomaticProtocol = false;
				this.protocolForConnect = text;
			}
		}

		private ArrayList GetSpecificProtocols(string specificProtocols)
		{
			ArrayList arrayList = new ArrayList();
			if (specificProtocols.Contains("4"))
			{
				arrayList.Add(this.rbIPSec.Text);
			}
			if (specificProtocols.Contains("0"))
			{
				arrayList.Add(this.rbOpenVPN_TCP.Text);
				arrayList.Add(this.rbOpenVPN_UDP.Text);
			}
			if (specificProtocols.Contains("2"))
			{
				arrayList.Add(this.rbL2TP.Text);
			}
			if (specificProtocols.Contains("3"))
			{
				arrayList.Add(this.rbSSTP.Text);
			}
			if (specificProtocols.Contains("1"))
			{
				arrayList.Add(this.rbPPTP.Text);
			}
			return arrayList;
		}

		private void SetGridViewSelectedItem_New(string serverName, bool scroll, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"s-a apelat SetGridViewSelectedItem_New()- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			if (serverName != null && serverName != string.Empty && this.dgvServers.Rows.Count > 0)
			{
				this.selectedServerIndex = 0;
				bool flag = false;
				if (serverName != null)
				{
					foreach (DataGridViewRow dataGridViewRow in ((IEnumerable)this.dgvServers.Rows))
					{
						if (dataGridViewRow.Cells[2].Value.ToString() == serverName)
						{
							flag = true;
							this.dgvServers.Rows[dataGridViewRow.Index].Selected = true;
							this.selectedServerIndex = dataGridViewRow.Index;
						}
						else
						{
							this.dgvServers.Rows[dataGridViewRow.Index].Selected = false;
						}
					}
				}
				if (!flag && this.dgvServers.Rows.Count > 0)
				{
					this.dgvServers.Rows[1].Selected = true;
				}
				if (scroll && !this.favoriteColumnWasClicked)
				{
					if (this.dgvServers.SelectedRows.Count > 0 && this.dgvServers.SelectedRows[0].Index - 12 >= 0)
					{
						this.dgvServers.FirstDisplayedScrollingRowIndex = this.dgvServers.SelectedRows[0].Index - 6;
						return;
					}
					if (this.dgvServers.Rows.Count > 0)
					{
						this.dgvServers.FirstDisplayedScrollingRowIndex = 0;
					}
				}
			}
		}

		private bool ConfirmationWindowsCanAppears(string srvName)
		{
			bool result = false;
			if (srvName != "Rotating Favourites" && srvName != "Fastest Favourite")
			{
				result = true;
			}
			if ((srvName == "Rotating Favourites" || srvName == "Fastest Favourite") && this.currentFavouriteNumber < 2)
			{
				result = false;
			}
			if ((srvName == "Rotating Favourites" || srvName == "Fastest Favourite") && this.currentFavouriteNumber > 1)
			{
				result = true;
			}
			return result;
		}

		private void ChangeServer(string srvName)
		{
			if (this.isServelistGridviewInitialized && this.lastConnectedServerName != string.Empty && (!(srvName == "Fastest Server") || !this.forceFSChange))
			{
				if (this.ConfirmationWindowsCanAppears(srvName))
				{
					this.SetGridNotConnectedServerColorWhenServerChange();
					if (this.chkConfirmationChangeServer.get_Checked())
					{
						CustomDialogBox customDialogBox = new CustomDialogBox();
						customDialogBox.ShowDialog();
						if (customDialogBox.ChangeServer)
						{
							this.serverChanged = true;
							if (srvName == "Rotating Favourites")
							{
								this.suntemInProcesulRF = true;
							}
							else
							{
								this.suntemInProcesulRF = false;
							}
							this.btnConnect_Click(this, null);
						}
						else if (!customDialogBox.ChangeServer && this.lastConnectedServerName != null && this.lastConnectedServerName != string.Empty)
						{
							DataGridViewCellEventArgs e = new DataGridViewCellEventArgs(5, this.selectedServerIndex);
							this.SetGridViewSelectedItem_New(this.lastConnectedServerName, true, 15621, "ChangeServer");
							this.dgvServers.CellValueChanged -= new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
							this.DgvServers_CellValueChanged(this.dgvServers, e);
							this.dgvServers.CellValueChanged += new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
						}
						if (customDialogBox.AlwaysAskServerChange)
						{
							this.chkConfirmationChangeServer.set_Checked(false);
						}
						else
						{
							this.chkConfirmationChangeServer.set_Checked(true);
						}
					}
					else
					{
						this.serverChanged = true;
						if (srvName == "Rotating Favourites")
						{
							this.suntemInProcesulRF = true;
						}
						else
						{
							this.suntemInProcesulRF = false;
						}
						this.btnConnect_Click(this, null);
					}
				}
				this.forceFSChange = false;
			}
		}

		private void ChangeServer_Part1()
		{
			CustomDialogBox customDialogBox = new CustomDialogBox();
			customDialogBox.ShowDialog();
			if (customDialogBox.ChangeServer)
			{
				this.serverChanged = true;
				this.btnConnect_Click(this, null);
			}
			else if (!customDialogBox.ChangeServer && this.lastConnectedServerName != null && this.lastConnectedServerName != string.Empty)
			{
				DataGridViewCellEventArgs e = new DataGridViewCellEventArgs(5, this.selectedServerIndex);
				this.SetGridViewSelectedItem_New(this.lastConnectedServerName, true, 15694, "ChangeServer_Part1");
				this.dgvServers.CellValueChanged -= new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
				this.DgvServers_CellValueChanged(this.dgvServers, e);
				this.dgvServers.CellValueChanged += new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
			}
			if (customDialogBox.AlwaysAskServerChange)
			{
				this.chkConfirmationChangeServer.set_Checked(false);
				return;
			}
			this.chkConfirmationChangeServer.set_Checked(true);
		}

		private void ChangeServer_Obsolete()
		{
			if (this.isServelistGridviewInitialized && this.lastConnectedServerName != string.Empty)
			{
				if (this.chkConfirmationChangeServer.get_Checked())
				{
					CustomDialogBox customDialogBox = new CustomDialogBox();
					customDialogBox.ShowDialog();
					if (customDialogBox.ChangeServer)
					{
						this.btnConnect_Click(this, null);
					}
					else if (!customDialogBox.ChangeServer)
					{
						this.menu.set_IsOpen(false);
					}
					if (customDialogBox.AlwaysAskServerChange)
					{
						this.chkConfirmationChangeServer.set_Checked(false);
						return;
					}
					this.chkConfirmationChangeServer.set_Checked(true);
					return;
				}
				else
				{
					this.btnConnect_Click(this, null);
				}
			}
		}

		private void ChangeServer1()
		{
			if (this.isServelistGridviewInitialized && this.lastConnectedServerName != string.Empty)
			{
				if (this.chkConfirmationChangeServer.get_Checked())
				{
					CustomDialogBox customDialogBox = new CustomDialogBox();
					customDialogBox.ShowDialog();
					if (customDialogBox.ChangeServer)
					{
						this.btnConnect_Click(this, null);
					}
					else if (!customDialogBox.ChangeServer)
					{
						this.menu.set_IsOpen(false);
					}
					if (customDialogBox.AlwaysAskServerChange)
					{
						this.chkConfirmationChangeServer.set_Checked(false);
					}
					else
					{
						this.chkConfirmationChangeServer.set_Checked(true);
					}
				}
				else
				{
					this.btnConnect_Click(this, null);
				}
			}
			this.changeServerOnCombo = false;
			this.changeServerOnGrdView = true;
		}

		private void SortInitialList()
		{
			this.SetInactiveGroups();
			this.sortare = true;
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
				this.apiManager.SortInitialList(this.dgvServers);
			}
			else
			{
				this.apiManager.SortInitialList(this.dgvServers);
			}
			this.SetGridFlags();
			this.SetGridConnectedServerColor();
			this.sortare = false;
		}

		private void SortFavourites_Obsolete()
		{
		}

		private void btnSort_Click_obs(object sender, EventArgs e)
		{
			this.CreateRotatingFavouritesServersListXML();
		}

		private void btnSort_Click(object sender, EventArgs e)
		{
			this.sortare = true;
			string text = string.Empty;
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				text = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
			}
			this.apiManager.Sort(this.dgvServers, this.btnSort);
			this.apiManager.AddServerRow(this.dgvServers, 4);
			if (text != null && text != string.Empty)
			{
				this.SetGridViewSelectedItem_New(text, true, 16056, "btnSort_Click");
			}
			this.SetGridFlags();
			this.SetGridConnectedServerColor();
			this.sortare = false;
		}

		private void btnSort_Click_Obsolete(object sender, EventArgs e)
		{
		}

		private void SetProtocolForNoServer()
		{
			this.SetConnectButtonStatusWhenNoServers1();
			if (this.apiManager.GetRealRowsNumber(this.dgvServers) == 0)
			{
				this.rbAutomatic.Checked = true;
				this.grpProtocols.Enabled = false;
				this.SetLinkServerText(string.Empty);
			}
			else if (!this.grpProtocols.Enabled)
			{
				this.grpProtocols.Enabled = true;
			}
			if (this.dgvServers.SelectedRows.Count > 0 && this.dgvServers.SelectedRows[0].Cells[2].Value.ToString() == this.lastConnectedServerName)
			{
				this.grpProtocols.Enabled = false;
			}
		}

		public void SetMainFormTopMostTemporarly()
		{
			MainForm.SetWindowPos(MainForm.GetActiveWindow(), MainForm.HWND_TOPMOST, 0, 0, 0, 0, 67u);
		}

		private void CreateRotatingFavouritesServersListXML()
		{
			string path = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "RotatingFavourites.xml";
			if (File.Exists(path))
			{
				File.Delete(path);
			}
			IList<Tuple<string, double, string, string, string, string>> list = new List<Tuple<string, double, string, string, string, string>>();
			string text = string.Empty;
			string item = string.Empty;
			string item2 = string.Empty;
			string item3 = string.Empty;
			for (int i = 0; i < this.dgvServersCopy.Rows.Count; i++)
			{
				try
				{
					if (this.GetValidRow(i, "Rotating Favourites") && this.GetValidProtocol(i))
					{
						text = this.dgvServersCopy.Rows[i].Cells[2].Value.ToString();
						item = this.dgvServersCopy.Rows[i].Cells[7].Value.ToString();
						item2 = this.dgvServersCopy.Rows[i].Cells[1].Value.ToString();
						item3 = this.dgvServersCopy.Rows[i].Cells[11].Value.ToString();
						this.dgvServersCopy.Rows[i].Cells[12].Value.ToString();
						double favouriteIndex = this.GetFavouriteIndex(text);
						list.Add(Tuple.Create<string, double, string, string, string, string>(text, favouriteIndex, item, item2, item3, string.Empty));
					}
				}
				catch
				{
				}
			}
			if (list.Count > 0)
			{
				this.WriteRotatingFavouritesXML(list);
			}
			this.rfNumbers = list.Count<Tuple<string, double, string, string, string, string>>();
		}

		private double GetFavouriteIndex(string srv)
		{
			int num = 0;
			for (int i = 0; i < this.dgvServers.RowCount; i++)
			{
				if (this.dgvServers.Rows[i].Cells[2].Value.ToString() == srv)
				{
					num = i;
				}
			}
			return (double)num;
		}

		private void CfsmFastestServer_FormClosing(object sender, FormClosingEventArgs e)
		{
			if (((CustomFastestServersMessage)sender).Cancel)
			{
				this.updateFastestServerListWorker.Abort();
			}
		}

		private void GetFastestServersList(string fsType, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"incepe GetFastestServersList- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			ArrayList favouritesServers = this.GetFavouritesServers();
			string text = string.Empty;
			try
			{
				string path = string.Empty;
				if (fsType == "Fastest Server")
				{
					path = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "FastestServers.xml";
				}
				else if (fsType == "Fastest Favourite")
				{
					path = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "FastestFavourites.xml";
				}
				if (File.Exists(path))
				{
					File.Delete(path);
				}
				CustomFastestServersMessage cfsmFastestServer = new CustomFastestServersMessage();
				cfsmFastestServer.FormClosing += new FormClosingEventHandler(this.CfsmFastestServer_FormClosing);
				this.GetFSWaitingWindow(fsType, cfsmFastestServer);
				if (base.get_WindowState() == FormWindowState.Normal)
				{
					if (base.InvokeRequired)
					{
						base.Invoke(new MethodInvoker(delegate
						{
							cfsmFastestServer.Show();
							this.SetControlsStatusWaitingForFSList(false);
						}));
					}
					else
					{
						cfsmFastestServer.Show();
						this.SetControlsStatusWaitingForFSList(false);
					}
				}
				else
				{
					this.ShowNotifyBaloon("Please wait, testing fastest server...");
					this.notifyIconIbVPN.Text = "Please wait, testing fastest server...";
				}
				int timeout = 1000;
				string item = string.Empty;
				string text2 = string.Empty;
				string item2 = string.Empty;
				string item3 = string.Empty;
				string item4 = string.Empty;
				string item5 = string.Empty;
				Ping ping = new Ping();
				IList<Tuple<string, double, string, string, string, string>> list = new List<Tuple<string, double, string, string, string, string>>();
				IList<Tuple<string, double, string, string, string, string>> list2 = new List<Tuple<string, double, string, string, string, string>>();
				bool flag = false;
				IPAddress iPAddress = MainForm.GetDefaultGateway();
				flag = (iPAddress != null && !(iPAddress.ToString() == "0.0.0.0"));
				int num = 0;
				int num2 = 0;
				string lblProgress = string.Empty;
				string text3 = string.Empty;
				if (fsType == "Fastest Favourite")
				{
					num = favouritesServers.Count;
				}
				else if (fsType == "Fastest Server")
				{
					num = this.dgvServersCopy.RowCount;
				}
				MethodInvoker <>9__1;
				for (int i = 0; i < this.dgvServersCopy.Rows.Count; i++)
				{
					try
					{
						text = this.dgvServersCopy.Rows[i].Cells[2].Value.ToString();
						text3 = this.dgvServersCopy.Rows[i].Cells[3].Value.ToString();
						if (this.GetValidRow(i, this.dashboard.lnkServers.Text))
						{
							num2++;
							if (fsType == "Fastest Favourite")
							{
								lblProgress = string.Concat(new object[]
								{
									"Testing server ",
									num2,
									"/",
									num,
									": ",
									text,
									", ",
									text3
								});
							}
							else if (fsType == "Fastest Server")
							{
								lblProgress = string.Concat(new object[]
								{
									"Testing server ",
									i.ToString(),
									"/",
									num,
									": ",
									text,
									", ",
									text3
								});
							}
							if (base.InvokeRequired)
							{
								MethodInvoker arg_3A5_1;
								if ((arg_3A5_1 = <>9__1) == null)
								{
									arg_3A5_1 = (<>9__1 = delegate
									{
										cfsmFastestServer.lblProgress.Text = lblProgress;
									});
								}
								base.Invoke(arg_3A5_1);
							}
							else
							{
								cfsmFastestServer.lblProgress.Text = lblProgress;
							}
							if (this.GetValidProtocol(i))
							{
								text2 = this.dgvServersCopy.Rows[i].Cells[11].Value.ToString();
								if (this.IsInternetLock() && !flag)
								{
									this.AddServerRoute(text2, false);
									Thread.Sleep(100);
								}
								item = this.dgvServersCopy.Rows[i].Cells[2].Value.ToString();
								item2 = this.dgvServersCopy.Rows[i].Cells[7].Value.ToString();
								item3 = this.dgvServersCopy.Rows[i].Cells[1].Value.ToString();
								item4 = this.dgvServersCopy.Rows[i].Cells[11].Value.ToString();
								if (this.dgvServersCopy.Rows[i].Cells[12].Value.ToString().Contains("fastest"))
								{
									item5 = "True";
								}
								else
								{
									item5 = "False";
								}
								PingReply pingReply = ping.Send(text2, timeout);
								if (pingReply.Status == IPStatus.Success)
								{
									if (this.IsInternetLock() && !flag)
									{
										this.logger.log("success ping at server " + text);
										this.DeleteRouteTestPingGetFSList(text2);
									}
									int num3 = Convert.ToInt32(this.dgvServersCopy.Rows[i].Cells[13].Value.ToString());
									int num4 = Convert.ToInt32(this.dgvServersCopy.Rows[i].Cells[14].Value.ToString().Replace("%", "").Replace("free", "").Replace(',', '.'), CultureInfo.InvariantCulture);
									int num5 = Convert.ToInt32(pingReply.RoundtripTime);
									double item6;
									if (num3 != -1 && num4 != -1)
									{
										item6 = (double)num5 * 0.33 + (double)num3 * 0.33 + (double)(100 - num4) * 0.33;
									}
									else
									{
										item6 = (double)num5 * 0.33;
									}
									list.Add(Tuple.Create<string, double, string, string, string, string>(item, item6, item2, item3, item4, item5));
								}
								else
								{
									list2.Add(Tuple.Create<string, double, string, string, string, string>(item, 999.0, item2, item3, item4, item5));
									if (this.IsInternetLock() && !flag)
									{
										this.DeleteRouteTestPingGetFSList(text2);
									}
								}
							}
						}
					}
					catch (Exception ex)
					{
						this.logger.log("failed first catch ping at server " + text2 + "   error - " + ex.InnerException.ToString());
						try
						{
							list2.Add(Tuple.Create<string, double, string, string, string, string>(item, 1000.0, item2, item3, item4, item5));
							if (this.IsInternetLock() && !flag)
							{
								this.DeleteRouteTestPingGetFSList(text2);
							}
						}
						catch
						{
						}
					}
				}
				foreach (Tuple<string, double, string, string, string, string> current in list2)
				{
					list.Add(current);
				}
				if (list.Count > 0)
				{
					if (fsType == "Fastest Server")
					{
						this.WriteFastestServerXML(list);
					}
					else if (fsType == "Fastest Favourite")
					{
						this.WriteFastestFavouritesXML(list);
					}
				}
				if (fsType == "Fastest Server")
				{
					this.fastFavouriteNumber = 0;
				}
				else if (fsType == "Fastest Favourite")
				{
					this.fastFavouriteNumber = list.Count;
				}
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						cfsmFastestServer.Close();
						this.SetControlsStatusWaitingForFSList(true);
					}));
				}
				else
				{
					cfsmFastestServer.Close();
					this.SetControlsStatusWaitingForFSList(true);
				}
				this.logger.log(string.Concat(new object[]
				{
					"gata GetFastestServersList- at line ",
					lineNumber,
					" (",
					caller,
					")"
				}));
			}
			catch (Exception)
			{
				this.logger.log("failed second catch ping at server " + text);
				this.RestoreDNS(16613, "GetFastestServersList");
			}
		}

		private void GetFSWaitingWindow(string fsType, CustomFastestServersMessage cfsmFastestServer)
		{
			if (fsType == "Fastest Server")
			{
				cfsmFastestServer.rchInfo.Text = "Please wait, testing fastest server...";
			}
			else if (fsType == "Fastest Favourite")
			{
				cfsmFastestServer.rchInfo.Text = "Please wait, testing fastest favorite server...";
			}
			cfsmFastestServer.StartPosition = FormStartPosition.Manual;
			cfsmFastestServer.Location = new Point(base.Location.X + base.Width / 2 - cfsmFastestServer.Width / 2, base.Location.Y + base.Height / 2 - cfsmFastestServer.Height / 2);
			cfsmFastestServer.TopMost = true;
		}

		private void DeleteRouteTestPingGetFSList(string host)
		{
			if (this.IsInternetLock())
			{
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.DeleteRoute(host, false);
					}));
					return;
				}
				this.DeleteRoute(host, false);
			}
		}

		private void TestPingGetFSList()
		{
			string ipRoute = string.Empty;
			for (int i = 0; i < this.dgvServersCopy.Rows.Count; i++)
			{
				try
				{
					if (this.GetValidRow(i, this.dashboard.lnkServers.Text) && this.GetValidProtocol(i))
					{
						ipRoute = this.dgvServersCopy.Rows[i].Cells[11].Value.ToString();
						this.AddServerRoute(ipRoute, false);
					}
				}
				catch
				{
				}
			}
		}

		private void WriteFastestServerXML(IList<Tuple<string, double, string, string, string, string>> list)
		{
			DataTable dataTable = new DataTable();
			dataTable.Columns.Add("ServerName");
			dataTable.Columns.Add("Score");
			dataTable.Columns.Add("Protocols");
			dataTable.Columns.Add("Flag");
			dataTable.Columns.Add("ServerIP");
			dataTable.Columns.Add("Fastest");
			dataTable.TableName = "fastestServersTable";
			Func<Tuple<string, double, string, string, string, string>, double> arg_97_1;
			if ((arg_97_1 = MainForm.<>c.<>9__790_0) == null)
			{
				arg_97_1 = (MainForm.<>c.<>9__790_0 = new Func<Tuple<string, double, string, string, string, string>, double>(MainForm.<>c.<>9.<WriteFastestServerXML>b__790_0));
			}
			IEnumerable<Tuple<string, double, string, string, string, string>> arg_BB_0 = list.OrderBy(arg_97_1);
			Func<Tuple<string, double, string, string, string, string>, string> arg_BB_1;
			if ((arg_BB_1 = MainForm.<>c.<>9__790_1) == null)
			{
				arg_BB_1 = (MainForm.<>c.<>9__790_1 = new Func<Tuple<string, double, string, string, string, string>, string>(MainForm.<>c.<>9.<WriteFastestServerXML>b__790_1));
			}
			IList<Tuple<string, double, string, string, string, string>> list2 = arg_BB_0.OrderByDescending(arg_BB_1).ToList<Tuple<string, double, string, string, string, string>>();
			if (list2.Count >= 5)
			{
				for (int i = 0; i < 5; i++)
				{
					dataTable.Rows.Add(new object[]
					{
						list2[i].Item1,
						list2[i].Item2,
						list2[i].Item3,
						list2[i].Item4,
						list2[i].Item5,
						list2[i].Item6
					});
				}
			}
			string fileName = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "FastestServers.xml";
			dataTable.WriteXml(fileName);
		}

		private void WriteFastestFavouritesXML(IList<Tuple<string, double, string, string, string, string>> list)
		{
			DataTable dataTable = new DataTable();
			dataTable.Columns.Add("ServerName");
			dataTable.Columns.Add("Score");
			dataTable.Columns.Add("Protocols");
			dataTable.Columns.Add("Flag");
			dataTable.Columns.Add("ServerIP");
			dataTable.Columns.Add("Fastest");
			dataTable.TableName = "fastestFavouritesTable";
			Func<Tuple<string, double, string, string, string, string>, double> arg_97_1;
			if ((arg_97_1 = MainForm.<>c.<>9__791_0) == null)
			{
				arg_97_1 = (MainForm.<>c.<>9__791_0 = new Func<Tuple<string, double, string, string, string, string>, double>(MainForm.<>c.<>9.<WriteFastestFavouritesXML>b__791_0));
			}
			IEnumerable<Tuple<string, double, string, string, string, string>> arg_BB_0 = list.OrderBy(arg_97_1);
			Func<Tuple<string, double, string, string, string, string>, string> arg_BB_1;
			if ((arg_BB_1 = MainForm.<>c.<>9__791_1) == null)
			{
				arg_BB_1 = (MainForm.<>c.<>9__791_1 = new Func<Tuple<string, double, string, string, string, string>, string>(MainForm.<>c.<>9.<WriteFastestFavouritesXML>b__791_1));
			}
			IList<Tuple<string, double, string, string, string, string>> list2 = arg_BB_0.OrderByDescending(arg_BB_1).ToList<Tuple<string, double, string, string, string, string>>();
			if (list2.Count > 0)
			{
				for (int i = 0; i < list2.Count; i++)
				{
					dataTable.Rows.Add(new object[]
					{
						list2[i].Item1,
						list2[i].Item2,
						list2[i].Item3,
						list2[i].Item4,
						list2[i].Item5,
						list2[i].Item6
					});
				}
			}
			string fileName = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "FastestFavourites.xml";
			dataTable.WriteXml(fileName);
		}

		private void WriteRotatingFavouritesXML(IList<Tuple<string, double, string, string, string, string>> list)
		{
			DataTable dataTable = new DataTable();
			dataTable.Columns.Add("ServerName");
			dataTable.Columns.Add("Score");
			dataTable.Columns.Add("Protocols");
			dataTable.Columns.Add("Flag");
			dataTable.Columns.Add("ServerIP");
			dataTable.Columns.Add("Fastest");
			dataTable.TableName = "rotatingFavouritesTable";
			Func<Tuple<string, double, string, string, string, string>, double> arg_97_1;
			if ((arg_97_1 = MainForm.<>c.<>9__792_0) == null)
			{
				arg_97_1 = (MainForm.<>c.<>9__792_0 = new Func<Tuple<string, double, string, string, string, string>, double>(MainForm.<>c.<>9.<WriteRotatingFavouritesXML>b__792_0));
			}
			IEnumerable<Tuple<string, double, string, string, string, string>> arg_BB_0 = list.OrderBy(arg_97_1);
			Func<Tuple<string, double, string, string, string, string>, string> arg_BB_1;
			if ((arg_BB_1 = MainForm.<>c.<>9__792_1) == null)
			{
				arg_BB_1 = (MainForm.<>c.<>9__792_1 = new Func<Tuple<string, double, string, string, string, string>, string>(MainForm.<>c.<>9.<WriteRotatingFavouritesXML>b__792_1));
			}
			IList<Tuple<string, double, string, string, string, string>> list2 = arg_BB_0.OrderByDescending(arg_BB_1).ToList<Tuple<string, double, string, string, string, string>>();
			if (list2.Count > 0)
			{
				for (int i = 0; i < list2.Count; i++)
				{
					dataTable.Rows.Add(new object[]
					{
						list2[i].Item1,
						list2[i].Item2,
						list2[i].Item3,
						list2[i].Item4,
						list2[i].Item5,
						list2[i].Item6
					});
				}
			}
			string fileName = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "RotatingFavourites.xml";
			dataTable.WriteXml(fileName);
		}

		private string GetSelectedProtocolIndex(string protocolName)
		{
			string result = string.Empty;
			if (protocolName == this.rbPPTP.Text)
			{
				result = "1";
			}
			if (protocolName == this.rbL2TP.Text)
			{
				result = "2";
			}
			if (protocolName == this.rbSSTP.Text)
			{
				result = "3";
			}
			if (protocolName == this.rbIPSec.Text)
			{
				result = "4";
			}
			if (protocolName == this.rbOpenVPN_TCP.Text || protocolName == this.rbOpenVPN_UDP.Text)
			{
				result = "0";
			}
			return result;
		}

		private bool GetValidProtocol(int i)
		{
			string text = this.dashboard.lnkProtocol.Text;
			return !(text != "Automatic") || this.dgvServersCopy.Rows[i].Cells[7].Value.ToString().Trim().Contains(this.GetSelectedProtocolIndex(text));
		}

		private bool GetValidRow(int i, string typeFS)
		{
			if (this.dgvServersCopy.Rows.Count >= i)
			{
				string text = this.dgvServersCopy.Rows[i].Cells[2].Value.ToString().Trim();
				if (text != null && text != string.Empty && text != "**** Favourites ****" && text != "**** Servers ****" && text != "Favourites" && text != "Servers" && text != "Africa" && text != "Asia" && text != "Europe" && text != "North America" && text != "Oceania" && text != "South America" && text != "Fastest Servers" && text != "Fastest Server" && text != "Fastest Favourite" && text != "Rotating Favourites" && text != "TORoverVPN Servers" && text != "DoubleVPN Servers" && text != "Torrent Servers" && text != "Gaming Servers")
				{
					return this.GetValidFSRow(typeFS, text);
				}
			}
			return false;
		}

		private bool GetValidRowName(string cell2)
		{
			bool result = false;
			if (cell2 != null && cell2 != string.Empty && cell2 != "**** Favourites ****" && cell2 != "**** Servers ****" && cell2 != "Favourites" && cell2 != "Servers" && cell2 != "Africa" && cell2 != "Asia" && cell2 != "Europe" && cell2 != "North America" && cell2 != "Oceania" && cell2 != "South America" && cell2 != "Fastest Servers" && cell2 != "Fastest Server" && cell2 != "Fastest Favourite" && cell2 != "Rotating Favourites" && cell2 != "TORoverVPN Servers" && cell2 != "DoubleVPN Servers" && cell2 != "Torrent Servers" && cell2 != "Gaming Servers")
			{
				result = true;
			}
			return result;
		}

		private bool GetValidFSRow(string typeFS, string serverName)
		{
			ArrayList favouritesServers = this.GetFavouritesServers();
			return (!(typeFS == "Fastest Favourite") && !(typeFS == "Rotating Favourites")) || favouritesServers.Contains(serverName);
		}

		private void WriteLogsGetValidRow(string text)
		{
			if (this.logGetValidRow < this.maxLogsNumber)
			{
				this.logger.log(text + " lognr:" + this.logGetValidRow);
				this.logGetValidRow++;
			}
		}

		private void WriteLogsGetValidRowShort(string text)
		{
			if (this.logGetValidRowShort < this.maxLogsNumber)
			{
				this.logger.log(text + " lognr:" + this.logGetValidRowShort);
				this.logGetValidRowShort++;
			}
		}

		private bool GetValidServersRow(int i)
		{
			bool result;
			try
			{
				if (this.dgvServers.RowCount >= i)
				{
					string text = this.dgvServers.Rows[i].Cells[2].Value.ToString().Trim();
					if (text != null && text != string.Empty && text != "**** Favourites ****" && text != "**** Servers ****" && text != "Favourites" && text != "Servers" && text != "Africa" && text != "Asia" && text != "Europe" && text != "North America" && text != "Oceania" && text != "South America" && text != "Fastest Servers" && text != "TORoverVPN Servers" && text != "DoubleVPN Servers" && text != "Torrent Servers" && text != "Gaming Servers")
					{
						result = true;
						return result;
					}
				}
				result = false;
			}
			catch (Exception ex)
			{
				this.logger.log("GetValidServersRow - error : " + ex.Message);
				result = false;
			}
			return result;
		}

		private bool GetValidServersRowShort(int i)
		{
			bool result;
			try
			{
				if (this.dgvServers.RowCount >= i)
				{
					string text = this.dgvServers.Rows[i].Cells[2].Value.ToString().Trim();
					if (text != null && text != string.Empty && text != "**** Favourites ****" && text != "**** Servers ****" && text != "Favourites" && text != "Servers" && text != "Africa" && text != "Asia" && text != "Europe" && text != "North America" && text != "Oceania" && text != "South America" && text != "Fastest Servers" && text != "Fastest Server" && text != "Fastest Favourite" && text != "Rotating Favourites" && text != "TORoverVPN Servers" && text != "DoubleVPN Servers" && text != "Torrent Servers" && text != "Gaming Servers")
					{
						result = true;
						return result;
					}
				}
				result = false;
			}
			catch (Exception ex)
			{
				this.logger.log("GetValidServersRowShort - error : " + ex.Message);
				result = false;
			}
			return result;
		}

		private bool TestKswPing(string serverIP)
		{
			bool result = false;
			try
			{
				if (new Ping().Send(serverIP).Status != IPStatus.Success)
				{
					this.logger.log("Ksw Ping failed - from try-  serverIP = " + serverIP);
				}
				else
				{
					result = true;
					this.logger.log("Ksw Ping success - from try-  serverIP = " + serverIP);
				}
			}
			catch (Exception ex)
			{
				this.logger.log("Ksw Ping failed - from catch-  serverIP = " + serverIP + "Eroarea : " + ex.Message);
			}
			return result;
		}

		private void TestPing()
		{
			try
			{
				if (new Ping().Send("1.2.3.4").Status != IPStatus.Success)
				{
					if (this.vpnManager.get_ConnectionStatus() == "Connected")
					{
						this.failedPingsContor++;
						this.logger.log("Ping failed. - from try");
						this.logger.log("failed ping counter was incremented - from try");
					}
					if (this.vpnManager.get_ConnectionStatus() == "Connected" && this.failedPingsContor >= 3)
					{
						this.timerRotatingFavourites.Stop();
						this.logger.log("s-a lansat metoda care inchide aplicatiile din tabelul ksw inainte de disconect din try - test ping failed");
						this.btnKillSwitchPanel_Click(this, null);
						this.pingFailed = true;
						this.logger.log("Ping is failed. It will launch vpnManager.Disconnect() -from try");
						this.loggerWorkerContinue = true;
						this.logger.log("se incearca o deconectare - din test ping failed");
						this.vpnManager.VPNConnectionManage(-1.ToString(), null, null, null, null, null, null, null, 0, null, null, null, null, null);
						this.logger.log("First line after vpnManager.Disconnect() - from try");
						this.failedPingsContor = 0;
					}
				}
				else
				{
					this.failedPingsContor = 0;
				}
			}
			catch
			{
				if (this.vpnManager.get_ConnectionStatus() == "Connected")
				{
					this.failedPingsContor++;
					this.logger.log("Ping failed. - from catch");
					this.logger.log("failed ping counter was incremented - from catch");
					if (this.failedPingsContor >= 3)
					{
						this.logger.log("s-a lansat metoda care inchide aplicatiile din tabelul ksw inainte de disconect din catch - test ping failed");
						this.btnKillSwitchPanel_Click(this, null);
						this.pingFailed = true;
						this.logger.log("Ping is failed. It will launch vpnManager.Disconnect() -from catch");
						this.loggerWorkerContinue = true;
						this.logger.log("se incearca o deconectare - din test pin failed");
						this.vpnManager.VPNConnectionManage(-1.ToString(), null, null, null, null, null, null, null, 0, null, null, null, null, null);
						this.logger.log("First line after vpnManager.Disconnect() - from catch");
						this.failedPingsContor = 0;
					}
				}
			}
		}

		private void ShowKswILInformation()
		{
			this.ShowNotifyBaloonAlwaysEmergency("You are disconnected and KSW ON with NetKSW");
			string text = "The VPN connection has dropped. \n\n You have selected the Internet KillSwitch ON, that means your Internet traffic is locked until the VPN connection is restored.\n\n The VPN will not reconnect because Auto-Reconnect feature has been unchecked from your settings.\n\nPlease click 'Restore Internet' button in order to restore it, or 'Cancel' if you want to keep the Internet locked. You can still connect manually to the VPN, if you desire.";
			this.kswInternetLockInformation.rchInfo.Text = text;
			if (!this.isInTrayMode)
			{
				this.kswInternetLockInformation.StartPosition = FormStartPosition.Manual;
				this.kswInternetLockInformation.Location = new Point(base.Location.X + base.Width / 2 - this.kswInternetLockInformation.Width / 2, base.Location.Y + base.Height / 2 - this.kswInternetLockInformation.Height / 2);
			}
			else
			{
				this.kswInternetLockInformation.StartPosition = FormStartPosition.CenterScreen;
			}
			this.kswInternetLockInformation.TopMost = true;
			this.kswInternetLockInformation.PropertyChanged += new PropertyChangedEventHandler(this.KswInternetLockInformation_PropertyChanged);
			this.kswInternetLockInformation.Show();
			this.logger.log("se vede fereastra ShowKswILInformation");
		}

		private void KswInternetLockInformation_PropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "RestoreInternet" && this.kswInternetLockInformation.RestoreInternet)
			{
				this.logger.log("s-a apasat butonul Restore Internet din fereastra kswILInformation");
				this.btnRestoreInternet_Click(this, null, 17165, "KswInternetLockInformation_PropertyChanged");
			}
		}

		private void ShowKswILConfirmation()
		{
			this.ShowNotifyBaloonAlwaysEmergency("You are disconnected and KSW ON with NetKSW");
			this.kswInternetLockConfirmation = new KswInternetLockConfirmation();
			string text = "The VPN connection has dropped. \n\n Because the Internet KillSwitch is ON, your Internet traffic is locked until the VPN connection will be restored.\n\n The AIO is testing the server and will attempt to reconnect.";
			this.kswInternetLockConfirmation.rchInfo.Text = text;
			if (!this.isInTrayMode)
			{
				this.kswInternetLockConfirmation.StartPosition = FormStartPosition.Manual;
				this.kswInternetLockConfirmation.Location = new Point(base.Location.X + base.Width / 2 - this.kswInternetLockConfirmation.Width / 2, base.Location.Y + base.Height / 2 - this.kswInternetLockConfirmation.Height / 2);
			}
			else
			{
				this.kswInternetLockConfirmation.StartPosition = FormStartPosition.CenterScreen;
			}
			this.kswInternetLockConfirmation.TopMost = true;
			this.kswInternetLockConfirmation.PropertyChanged += new PropertyChangedEventHandler(this.kswInternetLockConfirmation_PropertyChanged);
			this.kswInternetLockConfirmation.Show();
			this.logger.log("se vede fereastra ShowKswILConfirmation");
		}

		private void kswInternetLockConfirmation_PropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "HideWindow")
			{
				if (this.kswInternetLockConfirmation.HideWindow)
				{
					this.kswInternetLockConfirmation.WindowState = FormWindowState.Minimized;
					return;
				}
			}
			else if (e.PropertyName == "CancelReconnect")
			{
				this.logger.log("aici voi face restore si voi inchide conexiunea- fara confirmare");
				if (this.vpnManager.get_ConnectionStatus() == "Connected")
				{
					this.logger.log("se incearca o deconectare - din Cancel Reconnect - cand e Internet Lock - fara confirmare");
					this.vpnManager.VPNConnectionManage(-1.ToString(), null, null, null, null, null, null, null, 0, null, null, null, null, null);
				}
				this.btnRestoreInternet_Click(this, null, 17268, "kswInternetLockConfirmation_PropertyChanged");
				this.StopKswIL();
			}
		}

		private void StopKswIL()
		{
			this.logger.log("s-a oprit monitorizarea IL - s-a rulat StopKswIL");
			this.testKswPing = false;
			this.kswInternetLockConfirmation.Close();
			this.logger.log("s-a inchis kswInternetLockConfirmation - din kswInternetLockConfirmation_PropertyChanged");
			this.timerPingServerWhenInternetLock.Stop();
			this.nlmUserILWorker.CancelAsync();
			this.logger.log("s-a oprit timerPingServerWhenInternetLock.Stop()");
			this.logger.log("s-a oprit nlmUserILWorker()");
		}

		private void ChangeLinkSettingsLocation(int offset)
		{
			if (this.dashboard.lnkKswSet.Text == "Restore Internet")
			{
				this.dashboard.lnkKswSet.MinimumSize = new Size(0, 0);
				this.dashboard.lnkKswSet.MaximumSize = new Size(0, 0);
				this.dashboard.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X - offset, this.initialLnkKswSetLocation.Y);
				this.dashboardServers.lnkKswSet.MinimumSize = new Size(0, 0);
				this.dashboardServers.lnkKswSet.MaximumSize = new Size(0, 0);
				this.dashboardServers.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X - offset, this.initialLnkKswSetLocation.Y);
				this.dashboardVPNSettings.lnkKswSet.MinimumSize = new Size(0, 0);
				this.dashboardVPNSettings.lnkKswSet.MaximumSize = new Size(0, 0);
				this.dashboardVPNSettings.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X - offset, this.initialLnkKswSetLocation.Y);
				this.dashboardDNSSettings.lnkKswSet.MinimumSize = new Size(0, 0);
				this.dashboardDNSSettings.lnkKswSet.MaximumSize = new Size(0, 0);
				this.dashboardDNSSettings.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X - offset, this.initialLnkKswSetLocation.Y);
				this.dashboardSupport.lnkKswSet.MinimumSize = new Size(0, 0);
				this.dashboardSupport.lnkKswSet.MaximumSize = new Size(0, 0);
				this.dashboardSupport.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X - offset, this.initialLnkKswSetLocation.Y);
				this.dashboardAccount.lnkKswSet.MinimumSize = new Size(0, 0);
				this.dashboardAccount.lnkKswSet.MaximumSize = new Size(0, 0);
				this.dashboardAccount.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X - offset, this.initialLnkKswSetLocation.Y);
				return;
			}
			this.dashboard.lnkKswSet.MinimumSize = new Size(0, 0);
			this.dashboard.lnkKswSet.MaximumSize = new Size(0, 0);
			this.dashboard.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X, this.initialLnkKswSetLocation.Y);
			this.dashboardServers.lnkKswSet.MinimumSize = new Size(0, 0);
			this.dashboardServers.lnkKswSet.MaximumSize = new Size(0, 0);
			this.dashboardServers.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X, this.initialLnkKswSetLocation.Y);
			this.dashboardVPNSettings.lnkKswSet.MinimumSize = new Size(0, 0);
			this.dashboardVPNSettings.lnkKswSet.MaximumSize = new Size(0, 0);
			this.dashboardVPNSettings.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X, this.initialLnkKswSetLocation.Y);
			this.dashboardDNSSettings.lnkKswSet.MinimumSize = new Size(0, 0);
			this.dashboardDNSSettings.lnkKswSet.MaximumSize = new Size(0, 0);
			this.dashboardDNSSettings.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X, this.initialLnkKswSetLocation.Y);
			this.dashboardSupport.lnkKswSet.MinimumSize = new Size(0, 0);
			this.dashboardSupport.lnkKswSet.MaximumSize = new Size(0, 0);
			this.dashboardSupport.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X, this.initialLnkKswSetLocation.Y);
			this.dashboardAccount.lnkKswSet.MinimumSize = new Size(0, 0);
			this.dashboardAccount.lnkKswSet.MaximumSize = new Size(0, 0);
			this.dashboardAccount.lnkKswSet.Location = new Point(this.initialLnkKswSetLocation.X, this.initialLnkKswSetLocation.Y);
		}

		private void SetColorSettingsLink(Color linkColor, string linkText, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"s-a schimbat linkul settings in - ",
				linkText,
				": at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			this.dashboard.lnkKswSet.LinkColor = linkColor;
			this.dashboardServers.lnkKswSet.LinkColor = linkColor;
			this.dashboardVPNSettings.lnkKswSet.LinkColor = linkColor;
			this.dashboardDNSSettings.lnkKswSet.LinkColor = linkColor;
			this.dashboardSupport.lnkKswSet.LinkColor = linkColor;
			this.dashboardAccount.lnkKswSet.LinkColor = linkColor;
			this.dashboard.lnkKswSet.Text = linkText;
			this.dashboardServers.lnkKswSet.Text = linkText;
			this.dashboardVPNSettings.lnkKswSet.Text = linkText;
			this.dashboardDNSSettings.lnkKswSet.Text = linkText;
			this.dashboardSupport.lnkKswSet.Text = linkText;
			this.dashboardAccount.lnkKswSet.Text = linkText;
		}

		private void btnResetFiltersUV_Click_test(object sender, EventArgs e)
		{
		}

		private void btnResetFiltersUV_Click(object sender, EventArgs e)
		{
			this.btnWasClicked = true;
			if (this.dgvServers.Rows.Count > 0)
			{
				this.resetFilters = true;
				this.SetInactiveGroups();
				string text = string.Empty;
				if (this.dgvServers.SelectedRows.Count > 0)
				{
					text = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
					this.dgvServers.DataSource = this.initialServerList;
					this.fastestFavouriteWasDeleted = false;
					this.currentFavouriteNumber = this.GetFavouritesServers().Count;
					if (this.currentFavouriteNumber == 0)
					{
						this.apiManager.DeleteServerFavouriteRow(this.dgvServers);
						this.fastestFavouriteWasDeleted = true;
					}
				}
				else
				{
					this.dgvServers.DataSource = this.initialServerList;
					this.fastestFavouriteWasDeleted = false;
					if (this.dgvServers.Rows.Count > 0)
					{
						text = this.dgvServers.Rows[0].Cells[2].Value.ToString();
					}
				}
				this.SetControlsStatusWhenNoServers(true);
				this.SetGridFlags();
				this.txtSearchUV.txtSearch.TextChanged -= new EventHandler(this.txtSearchUV_TextChanged);
				this.txtSearchUV.txtSearch.Text = string.Empty;
				this.txtSearchUV.txtSearch.TextChanged += new EventHandler(this.txtSearchUV_TextChanged);
				this.SetGridConnectedServerColor();
				this.LoadMap(true);
				this.LoadNewMap();
				this.resetFilters = false;
				this.isServelistGridviewInitialized = false;
				this.InitializeGridAgain();
				this.SortInitialList();
				if (text != null && text != string.Empty)
				{
					this.SetGridViewSelectedItem_New(text, true, 17495, "btnResetFiltersUV_Click");
				}
				this.grpProtocols.Enabled = true;
				if (this.apiManager.GetRealRowsNumber(this.dgvServers) > 0 && this.dgvServers.SelectedRows.Count == 0)
				{
					this.dgvServers.Rows[3].Selected = true;
				}
				this.ResetLabelSelectedServer();
				this.FavoriteItem_Click(this, null);
				this.btnWasClicked = false;
			}
		}

		private void ShowNotifyBaloon(string notification)
		{
			if (!this.disableNotifications && (base.get_WindowState() == FormWindowState.Minimized || !base.TopMost || !this.WindowIsTopLevel()))
			{
				DateTime now = DateTime.Now;
				while (this.notifyShowWorker.IsBusy || this.notifyShowWorker.CancellationPending)
				{
					if ((DateTime.Now - now).Seconds > 5)
					{
						this.notifyShowWorker.CancelAsync();
						this.notifyShowWorker.Dispose();
						this.logger.log("s-a facut cancel la workerul de notifyShowWorker care era busy");
						this.notifyShowWorker = new BackgroundWorker();
						this.notifyShowWorker.DoWork += new DoWorkEventHandler(this.NotifyShowWorker_DoWork);
						this.notifyShowWorker.WorkerSupportsCancellation = true;
					}
					Application.DoEvents();
				}
				if (!this.notifyShowWorker.IsBusy && !this.notifyShowWorker.CancellationPending)
				{
					this.notifyShowWorker.RunWorkerAsync(notification);
				}
			}
		}

		private void ShowNotifyBaloonAlways(string notification)
		{
			if (base.get_WindowState() == FormWindowState.Minimized || !base.TopMost || !this.WindowIsTopLevel())
			{
				this.notifyIconIbVPN.BalloonTipTitle = "ibVPN Notification";
				this.notifyIconIbVPN.BalloonTipText = notification;
				this.notifyIconIbVPN.BalloonTipIcon = ToolTipIcon.Info;
				this.notifyIconIbVPN.ShowBalloonTip(25000);
			}
		}

		private void ShowNotifyBaloonAlwaysEmergency(string notification)
		{
			this.notifyIconIbVPN.BalloonTipTitle = "ibVPN Notification";
			this.notifyIconIbVPN.BalloonTipText = notification;
			this.notifyIconIbVPN.BalloonTipIcon = ToolTipIcon.Info;
			this.notifyIconIbVPN.ShowBalloonTip(25000);
		}

		private void Continent_Click_Obsolete(object sender, EventArgs e)
		{
		}

		private void FavoriteItem_Click_Obsolete(object sender, EventArgs e)
		{
		}

		private void FilterByContinent_Click(object sender, EventArgs e)
		{
			this.keyPress = true;
			this.SetInactiveGroups();
			string arg_18_0 = ((ButtonItem)sender).get_Text();
			this.dgvServers.DataSource = this.initialServerList;
			this.fastestFavouriteWasDeleted = false;
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				DataGridViewRow expr_55 = this.dgvServers.SelectedRows[0];
				expr_55.Cells[2].Value.ToString();
				if (expr_55 != null)
				{
				}
			}
			else
			{
				int arg_80_0 = this.dgvServers.SelectedRows.Count;
			}
			this.SetGridFlags();
			this.txtSearchUV.txtSearch.TextChanged -= new EventHandler(this.txtSearchUV_TextChanged);
			this.txtSearchUV.txtSearch.Text = string.Empty;
			this.txtSearchUV.txtSearch.TextChanged += new EventHandler(this.txtSearchUV_TextChanged);
			this.SetProtocolForNoServer();
			this.SetGridConnectedServerColor();
			this.LoadMap(false);
			this.keyPress = false;
		}

		private void SetTrayMode()
		{
			this.ShowNotifyBaloonAlways("ibVPN is still running");
		}

		private void MainForm_FormClosing(object sender, FormClosingEventArgs e)
		{
			if (this.swbIbDNS.get_Value())
			{
				this.swbIbDNS.set_Value(false);
			}
			if (e.CloseReason == CloseReason.WindowsShutDown)
			{
				this.logger.log("s-a facut shutdown la windows");
				if (this.swbIbDNS.get_Value())
				{
					this.swbIbDNS.set_Value(false);
				}
				if (this.vpnManager.get_ConnectionStatus() == "Connected" && this.IsInternetLock())
				{
					this.btnRestoreInternet_Click(this, null, 17910, "MainForm_FormClosing");
				}
				e.Cancel = false;
				return;
			}
			if (base.get_WindowState() == FormWindowState.Normal)
			{
				this.stillShow = false;
			}
			if (!this.startedMinimized && !this.sendedToTray && !this.notifyWasClicked)
			{
				this.isInTrayMode = false;
			}
			else
			{
				this.isInTrayMode = true;
			}
			this.notifyWasClicked = false;
			if (!this.isInTrayMode)
			{
				if (this.disableShutdown && !this.exitWasClicked && !this.logoutPressed)
				{
					this.logger.log("MainForm  merge in Tray - din MainForm");
					e.Cancel = true;
					if (!this.stillShow)
					{
						this.WriteLastXLasty();
						base.set_WindowState(FormWindowState.Minimized);
						base.ShowInTaskbar = false;
						base.FormBorderStyle = FormBorderStyle.FixedToolWindow;
						this.logger.log("s-a facut MainForm fara borduri");
						this.ShowNotifyBaloon("ibVPN is still running");
					}
					this.stillShow = false;
					return;
				}
				string messageDNS = string.Empty;
				messageDNS = "Are you sure you want to close the application ?";
				string messageDNS2 = "The DNS service in ON.Closing the application will turn the DNS OFF." + Environment.NewLine + "Are you sure you want to close the aplication ? ";
				string messageDNS3 = "The VPN is connected to the server. Closing the application will disconnect the VPN. " + Environment.NewLine + "Are you sure you want to close the application?";
				this.RefreshDashboard2();
				this.SetGridFlags();
				this.SetGridConnectedServerColor();
				this.SetDNSProperties();
				this.SetImageApplications();
				if (this.askConfirmationOnExit && this.askConfirmationOnExitSettings)
				{
					if (this.swbIbDNS.get_Value())
					{
						this.logger.log("trece la shtutdown 1");
						this.ClosingCustomized(e, messageDNS2, true);
					}
					else if (this.vpnManager.get_ConnectionStatus() == "Connected")
					{
						this.kswAskUser();
						this.ClosingCustomized(e, messageDNS3, false);
					}
					else
					{
						this.logger.log("trece la shtutdown 3");
						this.ClosingCustomized(e, messageDNS, false);
					}
				}
				else if (this.swbIbDNS.get_Value())
				{
					this.logger.log("trece la shtutdown 2");
					this.ClosingCustomized(e, messageDNS2, true);
				}
				else if (this.vpnManager.get_ConnectionStatus() == "Connected")
				{
					this.kswAskUser();
					this.ClosingCustomized(e, messageDNS3, false);
				}
				if (!e.Cancel)
				{
					try
					{
						this.nlmUser.UnAdviseforNetworklistManager();
					}
					catch
					{
					}
					this.askConfirmationOnExit = true;
					this.autoconnectLogin = false;
					if (!this.errorLoadServerList)
					{
						this.WriteServersInXML();
					}
					this.WriteLastXLasty();
					string path = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "KillSwitchAppsSuccessTable.xml";
					if (File.Exists(path))
					{
						File.Delete(path);
						this.WriteLogKsw("The KillSwitchAppsSuccessTable.xml was deleted from Main_FormClosing");
					}
					this.notifyIconIbVPN.Visible = false;
					if (this.IsInternetLock())
					{
						foreach (string current in this.sessionConnecteServers.ToList<string>())
						{
							this.logger.log("se sterg rutele din sessionConnectedServers :" + this.lastUrlIP);
							this.DeleteRoute(current, false);
						}
						this.btnRestoreInternet_Click(this, null, 18040, "MainForm_FormClosing");
					}
					this.logger.log("S-a inchis corect MainForm - din MainForm");
					return;
				}
			}
			else
			{
				e.Cancel = true;
				this.SetInfoFlag();
				this.SetInitialMainFormPosition();
				this.RefreshDashboard2();
				this.SetGridFlags();
				this.SetGridConnectedServerColor();
				this.SetDNSProperties();
				this.SetImageApplications();
			}
		}

		private void WriteLastXLasty()
		{
			if (this.userXMLLocation != string.Empty && base.Location.X >= 0 && base.Location.X < 9000 && base.Location.Y >= 0 && base.Location.Y < 9000)
			{
				this.XmlWriter("lastX", base.Location.X.ToString());
				this.XmlWriter("lastY", base.Location.Y.ToString());
			}
		}

		private void WriteServersInXML()
		{
			this.lastSelectedProtocol = this.dashboard.lnkProtocol.Text;
			this.lastSelectedServer = this.dashboard.lnkServers.Text;
			this.XmlWriterLastSelectedServer(this.lastSelectedServer, this.lastSelectedProtocol);
			this.XmlWriterAutoconnectDates(this.lastSelectedProtocol, this.lastSelectedServer);
		}

		private void ClosingCustomized(FormClosingEventArgs e, string messageDNS, bool closeDNS)
		{
			if (this.helper.MessageBoxShow(messageDNS, "ibVPN client notification/info message", 1, false, true).Yes)
			{
				this.answerLogout = true;
				this.logoutPressed = false;
				if (closeDNS)
				{
					this.swbIbDNS.set_Value(false);
				}
				e.Cancel = false;
				return;
			}
			e.Cancel = true;
			this.answerLogout = false;
			this.logoutPressed = false;
		}

		private void WriteRememberUserFile()
		{
			string autoconnect = string.Empty;
			if (this.chkAutoConnect.get_Checked())
			{
				autoconnect = "True";
			}
			else
			{
				autoconnect = "False";
			}
			string autologin = string.Empty;
			if (this.chkAutoLogin.get_Checked())
			{
				autologin = "True";
			}
			else
			{
				autologin = "False";
			}
			string rememberCredentials = string.Empty;
			if (this.chkAutoConnect.get_Checked())
			{
				rememberCredentials = "True";
			}
			this.XmlWriter(rememberCredentials, autoconnect, autologin);
		}

		private void WriteUserSettingsFile(CheckBoxX chk, string propName)
		{
			string propValue = string.Empty;
			if (chk.get_Checked())
			{
				propValue = "True";
			}
			else
			{
				propValue = "False";
			}
			this.XmlWriter(propName, propValue);
		}

		private void WriteUserSettingsFile(SwitchButton swb, string propName)
		{
			string propValue = string.Empty;
			if (swb.get_Value())
			{
				propValue = "True";
			}
			else
			{
				propValue = "False";
			}
			this.XmlWriter(propName, propValue);
		}

		private void XmlWriter(string propName, string propValue)
		{
			XmlDocument xmlDocument = new XmlDocument();
			xmlDocument.Load(this.userXMLLocation);
			foreach (XmlNode expr_31 in xmlDocument.SelectNodes("/configuration/add"))
			{
				XmlAttribute xmlAttribute = expr_31.Attributes["key"];
				XmlAttribute xmlAttribute2 = expr_31.Attributes["value"];
				if (xmlAttribute != null && xmlAttribute.Value == propName)
				{
					xmlAttribute2.Value = propValue;
				}
			}
			xmlDocument.Save(this.userXMLLocation);
		}

		private void XmlWriterResetCredentials(string username, string password)
		{
			XmlDocument xmlDocument = new XmlDocument();
			xmlDocument.Load(this.userXMLLocation);
			foreach (XmlNode expr_31 in xmlDocument.SelectNodes("/configuration/add"))
			{
				XmlAttribute xmlAttribute = expr_31.Attributes["key"];
				XmlAttribute xmlAttribute2 = expr_31.Attributes["value"];
				if (xmlAttribute != null)
				{
					if (xmlAttribute.Value == "remember")
					{
						xmlAttribute2.Value = "True";
					}
					if (xmlAttribute.Value == "username")
					{
						xmlAttribute2.Value = username;
					}
					if (xmlAttribute.Value == "password")
					{
						xmlAttribute2.Value = password;
					}
				}
			}
			xmlDocument.Save(this.userXMLLocation);
		}

		private void XmlWriter(string rememberCredentials, string autoconnect, string autologin)
		{
			XmlDocument xmlDocument = new XmlDocument();
			xmlDocument.Load(this.userXMLLocation);
			foreach (XmlNode expr_34 in xmlDocument.SelectNodes("/configuration/add"))
			{
				XmlAttribute xmlAttribute = expr_34.Attributes["key"];
				XmlAttribute xmlAttribute2 = expr_34.Attributes["value"];
				if (xmlAttribute != null)
				{
					if (xmlAttribute.Value == "remember" && rememberCredentials == "True")
					{
						xmlAttribute2.Value = rememberCredentials;
					}
					if (xmlAttribute.Value == "autologin")
					{
						xmlAttribute2.Value = autologin;
					}
					if (xmlAttribute.Value == "autoconnect")
					{
						xmlAttribute2.Value = autoconnect;
					}
				}
			}
			xmlDocument.Save(this.userXMLLocation);
		}

		private void XmlWriterAutoconnectDates(string lastProtocol, string lastServer)
		{
			XmlDocument xmlDocument = new XmlDocument();
			xmlDocument.Load(this.userXMLLocation);
			foreach (XmlNode expr_31 in xmlDocument.SelectNodes("/configuration/add"))
			{
				XmlAttribute xmlAttribute = expr_31.Attributes["key"];
				XmlAttribute xmlAttribute2 = expr_31.Attributes["value"];
				if (xmlAttribute != null)
				{
					if (xmlAttribute.Value == "lastprotocol")
					{
						xmlAttribute2.Value = lastProtocol;
					}
					if (xmlAttribute.Value == "lastconnectedserver")
					{
						xmlAttribute2.Value = lastServer;
					}
				}
			}
			xmlDocument.Save(this.userXMLLocation);
		}

		private void XmlWriterLastSelectedServer(string ls, string lp)
		{
			XmlDocument xmlDocument = new XmlDocument();
			xmlDocument.Load(this.userXMLLocation);
			foreach (XmlNode expr_31 in xmlDocument.SelectNodes("/configuration/add"))
			{
				XmlAttribute xmlAttribute = expr_31.Attributes["key"];
				XmlAttribute xmlAttribute2 = expr_31.Attributes["value"];
				if (xmlAttribute != null)
				{
					if (xmlAttribute.Value == "lastSelectedProtocol")
					{
						xmlAttribute2.Value = lp;
					}
					if (xmlAttribute.Value == "lastSelectedServer")
					{
						xmlAttribute2.Value = ls;
					}
				}
			}
			xmlDocument.Save(this.userXMLLocation);
		}

		private void XmlWriterAutoconnectDNSDates(string lastServer)
		{
			XmlDocument xmlDocument = new XmlDocument();
			xmlDocument.Load(this.userXMLLocation);
			foreach (XmlNode expr_31 in xmlDocument.SelectNodes("/configuration/add"))
			{
				XmlAttribute xmlAttribute = expr_31.Attributes["key"];
				XmlAttribute xmlAttribute2 = expr_31.Attributes["value"];
				if (xmlAttribute != null && xmlAttribute.Value == "lastDNSconnectedserver")
				{
					xmlAttribute2.Value = lastServer;
				}
			}
			xmlDocument.Save(this.userXMLLocation);
		}

		private void checkBoxX3_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteRememberUserFile();
		}

		private void checkBoxX2_CheckedChanged(object sender, EventArgs e)
		{
			if (this.chkAutoLogin.get_Checked())
			{
				this.chkAutoConnect.Enabled = true;
				if ((string)this.GetSettings(this.userXMLLocation)["remember"] != "True")
				{
					ResetRememberCredentialsDialogBox resetRememberCredentialsDialogBox = new ResetRememberCredentialsDialogBox();
					resetRememberCredentialsDialogBox.ShowDialog();
					if (!resetRememberCredentialsDialogBox.ResetCredentials)
					{
						this.chkAutoLogin.set_Checked(false);
						this.chkAutoConnect.set_Checked(false);
						this.chkAutoConnect.Enabled = false;
					}
					else
					{
						this.XmlWriterResetCredentials(this.cryptography.Encrypt(resetRememberCredentialsDialogBox.txtEmail.Text.Trim()), this.cryptography.Encrypt(resetRememberCredentialsDialogBox.txtPassword.Text.Trim()));
					}
				}
			}
			else
			{
				this.chkAutoConnect.set_Checked(false);
				this.chkAutoConnect.Enabled = false;
			}
			this.WriteRememberUserFile();
		}

		private void chkStartupLaunch_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkStartupLaunch, "launchOnStartup");
			if (this.chkStartupLaunch.get_Checked())
			{
				this.UpdateAllTasksSchedulers(true);
				return;
			}
			this.UpdateAllTasksSchedulers(false);
		}

		public void UpdateAllTasksSchedulers(bool automatic)
		{
			TaskService taskService = new TaskService();
			Task task = taskService.FindTask("ibVPN-NewService", true);
			if (task != null)
			{
				task.get_Definition().get_Triggers().Clear();
				DateTime startBoundary;
				if (automatic)
				{
					task.get_Definition().get_Triggers().AddNew(9);
				}
				else if (DateTime.TryParse("01-01-2003 00:00:01", out startBoundary))
				{
					TriggerCollection arg_66_0 = task.get_Definition().get_Triggers();
					TimeTrigger expr_5F = new TimeTrigger();
					expr_5F.set_StartBoundary(startBoundary);
					arg_66_0.Add(expr_5F);
				}
				else
				{
					TriggerCollection arg_93_0 = task.get_Definition().get_Triggers();
					TimeTrigger expr_7E = new TimeTrigger();
					expr_7E.set_StartBoundary(DateTime.Now.AddYears(-10));
					arg_93_0.Add(expr_7E);
				}
				taskService.get_RootFolder().RegisterTaskDefinition(task.get_Name(), task.get_Definition());
			}
		}

		private void checkBoxX8_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkConfirmationOnExit, "askOnExit");
			if (this.chkConfirmationOnExit.get_Checked())
			{
				this.askConfirmationOnExitSettings = true;
				return;
			}
			this.askConfirmationOnExitSettings = false;
		}

		private void chkChangeServer_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkConfirmationChangeServer, "askServerChange");
		}

		private void checkBoxX5_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkStartMinimized, "startMinimized");
			if (this.chkStartMinimized.get_Checked())
			{
				this.startMinimized = true;
				return;
			}
			this.startMinimized = false;
		}

		private void checkBoxX6_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkSendToTray, "sendToTray");
			if (this.chkSendToTray.get_Checked())
			{
				this.sendToTray = true;
				return;
			}
			this.sendToTray = false;
		}

		private void MainForm_Resize(object sender, EventArgs e)
		{
		}

		private void notifyIconIbVPN_Click(object sender, EventArgs e)
		{
			bool arg_06_0 = base.ShowInTaskbar;
		}

		private void notifyIconIbVPN_MouseClick(object sender, MouseEventArgs e)
		{
			base.FormBorderStyle = FormBorderStyle.FixedSingle;
			this.logger.log("s-a facut MainForm cu borduri FixedSingle");
			this.notifyWasClickedDNS = true;
			if (e.Button == MouseButtons.Left)
			{
				this.logger.log("porneste  - notify_Mouseclick");
				this.SetNotifyIconClick();
				this.RefreshDashboard2();
				this.SetGroupGridFlags();
				this.SetGridFlags();
				this.SetGridConnectedServerColor();
				this.SetDNSProperties();
				this.SetImageApplications();
			}
		}

		private void SetNotifyIconClick()
		{
			this.stillShow = true;
			this.startedMinimized = false;
			this.sendedToTray = false;
			this.notifyWasClicked = true;
			base.ShowInTaskbar = true;
			base.set_WindowState(FormWindowState.Normal);
			base.TopMost = true;
			this.SetMainFormTopMost();
		}

		private void checkBoxX4_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkAutoReconnect, "autoReconnect");
			if (this.chkAutoReconnect.get_Checked())
			{
				this.autoReconnect = true;
				return;
			}
			this.autoReconnect = false;
		}

		private void checkBoxX3_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkAutoConnect.Enabled)
			{
				this.chkAutoConnect.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkAutoConnect.CheckBoxImageChecked"));
				this.chkAutoConnect.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkAutoConnect.CheckBoxImageUnChecked"));
				return;
			}
			this.chkAutoConnect.set_CheckBoxImageChecked(null);
			this.chkAutoConnect.set_CheckBoxImageUnChecked(null);
		}

		private void chkChangeServer_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkConfirmationChangeServer.Enabled)
			{
				this.chkConfirmationChangeServer.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkConfirmationChangeServer.CheckBoxImageChecked"));
				this.chkConfirmationChangeServer.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkConfirmationChangeServer.CheckBoxImageUnChecked"));
				return;
			}
			this.chkConfirmationChangeServer.set_CheckBoxImageChecked(null);
			this.chkConfirmationChangeServer.set_CheckBoxImageUnChecked(null);
		}

		private void chkEnableLog_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkEnableLog.Enabled)
			{
				this.chkEnableLog.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkEnableLog.CheckBoxImageChecked"));
				this.chkEnableLog.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkEnableLog.CheckBoxImageUnChecked"));
				return;
			}
			this.chkEnableLog.set_CheckBoxImageChecked(null);
			this.chkEnableLog.set_CheckBoxImageUnChecked(null);
		}

		private void chkEnableLog_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkEnableLog, "enableLog");
			this.vpnManager.ClearLogs();
			string text = "View" + Environment.NewLine + "Full Log";
			string text2 = "Log" + Environment.NewLine + "Settings";
			if (this.chkEnableLog.get_Checked())
			{
				this.enableLog = true;
				this.dashboard.btnLogs.Text = text;
				this.dashboardServers.btnLogs.Text = text;
				this.dashboardVPNSettings.btnLogs.Text = text;
				this.dashboardDNSSettings.btnLogs.Text = text;
				this.dashboardSupport.btnLogs.Text = text;
				this.dashboardAccount.btnLogs.Text = text;
				this.SetClipboardButton();
				this.debugLevel = Convert.ToInt32(this.cmbDebugLevel.SelectedItem.ToString());
				this.btnClearLog.Visible = true;
			}
			else
			{
				this.enableLog = false;
				this.dashboard.btnLogs.Text = text2;
				this.dashboardServers.btnLogs.Text = text2;
				this.dashboardVPNSettings.btnLogs.Text = text2;
				this.dashboardDNSSettings.btnLogs.Text = text2;
				this.dashboardSupport.btnLogs.Text = text2;
				this.dashboardAccount.btnLogs.Text = text2;
				this.btnCopyToClipboard.Visible = false;
				this.chkSendInfo.Enabled = false;
				this.debugLevel = 0;
				this.btnClearLog.Visible = false;
			}
			this.SetRchLogText();
			this.SetLogs(this.txtLog);
		}

		private void btnCopyToClipboard_Click(object sender, EventArgs e)
		{
			string text = string.Empty;
			if (this.chkSendInfo.get_Checked())
			{
				string oSDetails = this.GetOSDetails();
				string text2 = this.AntivirusInstalled();
				string packages = this.GetPackages();
				this.userXMLLocation = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\UserSettings.xml";
				new Hashtable();
				Hashtable arg_79_0 = this.GetSettings(this.userXMLLocation);
				CultureInfo installedUICulture = CultureInfo.InstalledUICulture;
				string text3 = (string)arg_79_0["remember"];
				string text4 = (string)arg_79_0["startMinimized"];
				string text5 = (string)arg_79_0["autologin"];
				string text6 = (string)arg_79_0["autoconnect"];
				string text7 = (string)arg_79_0["lastprotocol"];
				string text8 = (string)arg_79_0["lastconnectedserver"];
				string text9 = (string)arg_79_0["launchOnStartup"];
				string text10 = (string)arg_79_0["askOnExit"];
				string text11 = (string)arg_79_0["sendToTray"];
				string text12 = (string)arg_79_0["askServerChange"];
				string text13 = (string)arg_79_0["autoReconnect"];
				string text14 = (string)arg_79_0["disableIPv6Traffic"];
				string text15 = (string)arg_79_0["forceSecureDNS"];
				string text16 = (string)arg_79_0["forceSecureDNSFirewall"];
				string text17 = (string)arg_79_0["alwaysOnTop"];
				string text18 = (string)arg_79_0["lastDNSconnectedserver"];
				string text19 = (string)arg_79_0["askDNSServerChange"];
				string text20 = (string)arg_79_0["killSwitch"];
				string text21 = (string)arg_79_0["centerWindow"];
				string text22 = (string)arg_79_0["askReopenClosedApplications"];
				string text23 = (string)arg_79_0["enableLog"];
				string text24 = (string)arg_79_0["debugLevel"];
				string text25 = (string)arg_79_0["disableNotifications"];
				string text26 = (string)arg_79_0["disableToolTips"];
				string text27 = (string)arg_79_0["lastSelectedProtocol"];
				string text28 = (string)arg_79_0["lastSelectedServer"];
				string text29 = (string)arg_79_0["disableShutdown"];
				string text30 = (string)arg_79_0["testPing"];
				string text31 = (string)arg_79_0["internetLock"];
				string text32 = File.ReadAllText(this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\ksw.txt");
				text = string.Concat(new string[]
				{
					"OS Version: ",
					oSDetails,
					Environment.NewLine,
					"Default Language Info:",
					Environment.NewLine,
					string.Format("* Name: {0}", installedUICulture.Name),
					Environment.NewLine,
					string.Format("* Display Name: {0}", installedUICulture.DisplayName),
					Environment.NewLine,
					string.Format("* English Name: {0}", installedUICulture.EnglishName),
					Environment.NewLine,
					string.Format("* 2-letter ISO Name: {0}", installedUICulture.TwoLetterISOLanguageName),
					Environment.NewLine,
					string.Format("* 3-letter ISO Name: {0}", installedUICulture.ThreeLetterISOLanguageName),
					Environment.NewLine,
					string.Format("* 3-letter Win32 API Name: {0}", installedUICulture.ThreeLetterWindowsLanguageName),
					Environment.NewLine,
					"Antivirus: ",
					text2.ToString(),
					Environment.NewLine,
					"IbVPN version: ",
					this.appVersion,
					Environment.NewLine,
					"User name: ",
					this.UserName,
					Environment.NewLine,
					"Packages: ",
					Environment.NewLine,
					packages,
					Environment.NewLine,
					Environment.NewLine,
					"--------------------------",
					Environment.NewLine,
					"USER’S AIO SETTINGS",
					Environment.NewLine,
					"--------------------------",
					Environment.NewLine,
					Environment.NewLine,
					"Auto login: ",
					text5,
					Environment.NewLine,
					"Auto connect: ",
					text6,
					Environment.NewLine,
					"Send to tray when connected: ",
					text11,
					Environment.NewLine,
					"Last protocol: ",
					text7,
					Environment.NewLine,
					"Last VPN connected server: ",
					text8,
					Environment.NewLine,
					"Ask confirmation for VPN server change: ",
					text12,
					Environment.NewLine,
					"Auto reconnect: ",
					text13,
					Environment.NewLine,
					"Launch on startup: ",
					text9,
					Environment.NewLine,
					"Ask confirmation on exit: ",
					text10,
					Environment.NewLine,
					"Disable IPv6 traffic: ",
					text14,
					Environment.NewLine,
					"Force secure DNS: ",
					text15,
					Environment.NewLine,
					"Force secure DNS firewall: ",
					text16,
					Environment.NewLine,
					"Always on top: ",
					text17,
					Environment.NewLine,
					"Last DNS connected server: ",
					text18,
					Environment.NewLine,
					"Ask confirmation for DNS server change: ",
					text19,
					Environment.NewLine,
					"Kill switch: ",
					text20,
					Environment.NewLine,
					"Internet Lock: ",
					text31,
					Environment.NewLine,
					"Center window: ",
					text21,
					Environment.NewLine,
					"Remember user credentials: ",
					text3,
					Environment.NewLine,
					"Start minimized: ",
					text4,
					Environment.NewLine,
					"Reopen closed applications: ",
					text22,
					Environment.NewLine,
					"Enable log: ",
					text23,
					Environment.NewLine,
					"Debug level: ",
					text24,
					Environment.NewLine,
					"Disable notifications: ",
					text25,
					Environment.NewLine,
					"Disable tooltips: ",
					text26,
					Environment.NewLine,
					"Last selected protocol: ",
					text27,
					Environment.NewLine,
					"Last selected server: ",
					text28,
					Environment.NewLine,
					"Disable application's Close (X) button. Will 'Send app to Tray: ",
					text29,
					Environment.NewLine,
					"Test ping: ",
					text30,
					Environment.NewLine,
					Environment.NewLine,
					"----------------------",
					Environment.NewLine,
					"CONNECTION LOG",
					Environment.NewLine,
					"----------------------",
					Environment.NewLine,
					Environment.NewLine,
					this.txtLog.Text,
					Environment.NewLine,
					Environment.NewLine,
					"----------------------",
					Environment.NewLine,
					"KILLSWITCH LOG",
					Environment.NewLine,
					"----------------------",
					Environment.NewLine,
					Environment.NewLine,
					text32,
					Environment.NewLine
				});
			}
			else
			{
				text = this.txtLog.Text;
			}
			if (!string.IsNullOrEmpty(text))
			{
				try
				{
					this.GetMeText(text);
					if (this.chkSendInfo.get_Checked())
					{
						this.helper.MessageBoxShow("The text has been copied to clipboard.", "ibVPN client notification/info message", 0, true, true);
					}
					else
					{
						this.helper.MessageBoxShow("The text has been copied to clipboard. In order to receive fast support, the checkbox 'Send us non - personal data...' has to be checked, before you copy to clipboard.", "ibVPN client notification/info message", 0, true, true);
					}
				}
				catch (Exception ex)
				{
					this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 2, true, true);
				}
			}
		}

		private static string GetAppVersion()
		{
			return FileVersionInfo.GetVersionInfo(Assembly.GetExecutingAssembly().Location).FileVersion;
		}

		private string GetMeText(string res)
		{
			Thread expr_1D = new Thread(delegate(object x)
			{
				try
				{
					Clipboard.SetText(res);
					res = Clipboard.GetText();
				}
				catch (Exception ex)
				{
					res = ex.Message;
				}
			});
			expr_1D.SetApartmentState(ApartmentState.STA);
			expr_1D.Start();
			expr_1D.Join();
			return res;
		}

		private string GetPackages()
		{
			string text = string.Empty;
			foreach (DataGridViewRow dataGridViewRow in ((IEnumerable)this.dgvPackages.Rows))
			{
				text += dataGridViewRow.Cells[1].Value.ToString();
				text = text + " -- " + dataGridViewRow.Cells[2].Value.ToString();
				text += Environment.NewLine;
			}
			return text;
		}

		private bool AntivirusInstalled1()
		{
			string scope = "\\\\" + Environment.MachineName + "\\root\\SecurityCenter";
			try
			{
				return new ManagementObjectSearcher(scope, "SELECT * FROM AntivirusProduct").Get().Count > 0;
			}
			catch (Exception ex)
			{
				this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 2, true, true);
			}
			return false;
		}

		private string AntivirusInstalled()
		{
			string text = string.Empty;
			try
			{
				ManagementObjectSearcher managementObjectSearcher = new ManagementObjectSearcher(string.Format("\\\\{0}\\root\\SecurityCenter", Environment.MachineName), "SELECT * FROM AntivirusProduct");
				ManagementObjectSearcher arg_45_0 = new ManagementObjectSearcher(string.Format("\\\\{0}\\root\\SecurityCenter2", Environment.MachineName), "SELECT * FROM AntivirusProduct");
				IEnumerable<ManagementObject> first = managementObjectSearcher.Get().OfType<ManagementObject>();
				IEnumerable<ManagementObject> second = arg_45_0.Get().OfType<ManagementObject>();
				IEnumerable<ManagementObject> arg_76_0 = first.Concat(second);
				Func<ManagementObject, IEnumerable<PropertyData>> arg_76_1;
				if ((arg_76_1 = MainForm.<>c.<>9__865_0) == null)
				{
					arg_76_1 = (MainForm.<>c.<>9__865_0 = new Func<ManagementObject, IEnumerable<PropertyData>>(MainForm.<>c.<>9.<AntivirusInstalled>b__865_0));
				}
				IEnumerable<IEnumerable<PropertyData>> arg_9A_0 = arg_76_0.Select(arg_76_1);
				Func<IEnumerable<PropertyData>, bool> arg_9A_1;
				if ((arg_9A_1 = MainForm.<>c.<>9__865_1) == null)
				{
					arg_9A_1 = (MainForm.<>c.<>9__865_1 = new Func<IEnumerable<PropertyData>, bool>(MainForm.<>c.<>9.<AntivirusInstalled>b__865_1));
				}
				IEnumerable<IEnumerable<PropertyData>> arg_BE_0 = arg_9A_0.Where(arg_9A_1);
				var arg_BE_1;
				if ((arg_BE_1 = MainForm.<>c.<>9__865_4) == null)
				{
					arg_BE_1 = (MainForm.<>c.<>9__865_4 = new Func<IEnumerable<PropertyData>, <>f__AnonymousType0<object, object>>(MainForm.<>c.<>9.<AntivirusInstalled>b__865_4));
				}
				var array = arg_BE_0.Select(arg_BE_1).ToArray();
				for (int i = 0; i < array.Length; i++)
				{
					var <>f__AnonymousType = array[i];
					text = text + <>f__AnonymousType.Name + " ,";
				}
				if (text.Length > 2)
				{
					text = text.Substring(0, text.Length - 2);
				}
				else
				{
					text = "Not detected";
				}
				return text;
			}
			catch
			{
			}
			return text;
		}

		private string GetOSDetails()
		{
			IEnumerable<ManagementObject> arg_33_0 = new ManagementObjectSearcher("SELECT * FROM Win32_OperatingSystem").Get().OfType<ManagementObject>();
			Func<ManagementObject, object> arg_33_1;
			if ((arg_33_1 = MainForm.<>c.<>9__866_0) == null)
			{
				arg_33_1 = (MainForm.<>c.<>9__866_0 = new Func<ManagementObject, object>(MainForm.<>c.<>9.<GetOSDetails>b__866_0));
			}
			string text = arg_33_0.Select(arg_33_1).FirstOrDefault<object>().ToString();
			IEnumerable<ManagementObject> arg_76_0 = new ManagementObjectSearcher("SELECT * FROM Win32_OperatingSystem").Get().OfType<ManagementObject>();
			Func<ManagementObject, object> arg_76_1;
			if ((arg_76_1 = MainForm.<>c.<>9__866_1) == null)
			{
				arg_76_1 = (MainForm.<>c.<>9__866_1 = new Func<ManagementObject, object>(MainForm.<>c.<>9.<GetOSDetails>b__866_1));
			}
			string text2 = arg_76_0.Select(arg_76_1).FirstOrDefault<object>().ToString();
			IEnumerable<ManagementObject> arg_B9_0 = new ManagementObjectSearcher("SELECT * FROM Win32_OperatingSystem").Get().OfType<ManagementObject>();
			Func<ManagementObject, object> arg_B9_1;
			if ((arg_B9_1 = MainForm.<>c.<>9__866_2) == null)
			{
				arg_B9_1 = (MainForm.<>c.<>9__866_2 = new Func<ManagementObject, object>(MainForm.<>c.<>9.<GetOSDetails>b__866_2));
			}
			string text3 = arg_B9_0.Select(arg_B9_1).FirstOrDefault<object>().ToString();
			if (text != null)
			{
				if (text2 != null)
				{
					text = text + " " + text2;
				}
				if (text3 != null)
				{
					text = text + "[" + text3 + "]";
				}
			}
			else
			{
				text = "Unknown";
			}
			return text;
		}

		private void chkSendInfo_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkSendInfo.Enabled)
			{
				this.chkSendInfo.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkSendInfo.CheckBoxImageChecked"));
				this.chkSendInfo.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkSendInfo.CheckBoxImageUnChecked"));
				return;
			}
			this.chkSendInfo.set_CheckBoxImageChecked(null);
			this.chkSendInfo.set_CheckBoxImageUnChecked(null);
		}

		private void btnClientArea_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("http://bit.ly/aio-client-area"));
		}

		private void chkMitmForceSecureDNS_CheckedChanged(object sender, EventArgs e)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.WriteUserSettingsFile(this.chkMitmForceSecureDNS, "forceSecureDNS");
					if (this.chkMitmForceSecureDNS.get_Checked())
					{
						this.forceSecureDNS = true;
						return;
					}
					this.forceSecureDNS = false;
				}));
				return;
			}
			this.WriteUserSettingsFile(this.chkMitmForceSecureDNS, "forceSecureDNS");
			if (this.chkMitmForceSecureDNS.get_Checked())
			{
				this.forceSecureDNS = true;
				return;
			}
			this.forceSecureDNS = false;
		}

		private void chkBlockAds_CheckedChanged(object sender, EventArgs e)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.WriteUserSettingsFile(this.chkBlockAds, "adBlock");
					if (this.chkBlockAds.get_Checked())
					{
						this.adBlock = true;
						return;
					}
					this.adBlock = false;
				}));
				return;
			}
			this.WriteUserSettingsFile(this.chkBlockAds, "adBlock");
			if (this.chkBlockAds.get_Checked())
			{
				this.adBlock = true;
				return;
			}
			this.adBlock = false;
		}

		private void chkMitmForceSecureDNSUsingFirewall_CheckedChanged(object sender, EventArgs e)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.WriteUserSettingsFile(this.chkMitmForceSecureDNSUsingFirewall, "forceSecureDNSFirewall");
					if (this.chkMitmForceSecureDNSUsingFirewall.get_Checked())
					{
						this.forceSecureDNSFirewall = true;
						return;
					}
					this.forceSecureDNSFirewall = false;
				}));
				return;
			}
			this.WriteUserSettingsFile(this.chkMitmForceSecureDNSUsingFirewall, "forceSecureDNSFirewall");
			if (this.chkMitmForceSecureDNSUsingFirewall.get_Checked())
			{
				this.forceSecureDNSFirewall = true;
				return;
			}
			this.forceSecureDNSFirewall = false;
		}

		private void chkAlwaysOnTop_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkAlwaysOnTop, "alwaysOnTop");
			if (this.chkAlwaysOnTop.get_Checked())
			{
				this.alwaysOnTop = true;
			}
			else
			{
				this.alwaysOnTop = false;
			}
			this.SetMainFormTopMost();
		}

		private void dgvDNSServers_SelectionChanged(object sender, EventArgs e)
		{
			if (this.swbIbDNS.get_Value())
			{
				if (!this.askDNSServerChange)
				{
					this.ChangeDNSServer(sender);
					return;
				}
				string dNSSelectedServer = this.GetDNSSelectedServer(this.dgvDNSServers);
				this.SetGridConnectedDNSServerColor(dNSSelectedServer);
				if (dNSSelectedServer != this.lastDNSconnectedserver)
				{
					this.ChangeDNSServer1(sender);
					return;
				}
			}
			else
			{
				this.ResetGridConnectedDNSServerColor();
			}
		}

		private void ChangeDNSServer1(object sender)
		{
			if (this.dgvDNSServerWasClicked || this.dgvDNSServers.Focused)
			{
				CustomDialogBox customDialogBox = new CustomDialogBox();
				customDialogBox.StartPosition = FormStartPosition.Manual;
				customDialogBox.Location = new Point(base.Location.X + base.Width / 2 - customDialogBox.Width / 2, base.Location.Y + base.Height / 3 - customDialogBox.Height / 3);
				customDialogBox.ShowDialog();
				if (customDialogBox.ChangeServer)
				{
					this.ChangeDNSServer(sender);
				}
				else
				{
					this.GoToConnectedDNSServer(this.lastDNSconnectedserver);
					this.SetGridConnectedDNSServerColor(this.lastDNSconnectedserver);
					this.dgvDNSServers.SelectedRows[0].DefaultCellStyle.BackColor = Color.LightGray;
				}
				if (customDialogBox.AlwaysAskServerChange)
				{
					this.chkConfirmationChangeDNSServer.set_Checked(false);
					return;
				}
				this.chkConfirmationChangeDNSServer.set_Checked(true);
			}
		}

		private void ChangeDNSServer(object sender)
		{
			string dNSSelectedServer = this.GetDNSSelectedServer(this.dgvDNSServers);
			this.lastDNSconnectedserver = dNSSelectedServer;
			this.XmlWriterAutoconnectDNSDates(dNSSelectedServer);
			this.SetGridConnectedDNSServerColor(dNSSelectedServer);
			this.SetAdaptorDNS();
			string dNSIPSelectedServer = this.GetDNSIPSelectedServer(this.dgvDNSServers);
			this.notifyIconIbVPN.Text = "ibDNS is on. DNS assigned: " + dNSIPSelectedServer;
		}

		private void NotChangeDNSServer()
		{
			this.dgvDNSServers.SelectionChanged -= new EventHandler(this.dgvDNSServers_SelectionChanged);
			this.ResetGridConnectedDNSServerColor();
			this.dgvDNSServers.SelectionChanged += new EventHandler(this.dgvDNSServers_SelectionChanged);
		}

		private void SetAdaptorDNS()
		{
			if (this.swbIbDNS.get_Value() && this.dgvDNSServers.Rows.Count > 0)
			{
				if (this.dgvDNSServers.SelectedRows.Count == 0)
				{
					this.dgvDNSServers.Rows[0].Selected = true;
				}
				if (this.dgvDNSServers.SelectedRows.Count > 0)
				{
					string text = this.dgvDNSServers.SelectedRows[0].Cells[11].Value.ToString();
					this.dnsManager.SetAdaptorsDNS(text, false);
				}
			}
		}

		private void swbIbDNS_ValueChanged(object sender, EventArgs e)
		{
			this.UnAssignDNSEvents();
			if (this.firstDNSLoad)
			{
				this.GoToConnectedDNSServer(this.lastDNSconnectedserver);
			}
			bool flag = true;
			bool flag2 = true;
			string message = string.Concat(new string[]
			{
				"For privacy reasons, ibVPN and ibDNS cannot be used in the same time.",
				Environment.NewLine,
				"Turning the ibDNS ON, will disconnect the ibVPN.",
				Environment.NewLine,
				"Are you sure you want to disconnect the ibVPN?"
			});
			if (this.swbIbDNS.get_Value())
			{
				this.dashboardDNSSettings.swbDNS.set_Value(true);
			}
			else
			{
				this.dashboardDNSSettings.swbDNS.set_Value(false);
			}
			if (this.swbIbDNS.get_Value() && this.vpnManager.get_ConnectionStatus() == "Connected")
			{
				if (this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 0, false, true).Yes)
				{
					this.kswAskUser();
					this.changeDNSServer = true;
					flag2 = false;
					this.disconnectVPNbyDNS = true;
					this.loggerWorkerContinue = true;
					this.logger.log("se incearca o deconectare - din dns");
					this.vpnManager.VPNConnectionManage(-1.ToString(), null, null, null, null, null, null, null, 0, null, null, null, null, null);
				}
				else
				{
					this.swbIbDNS.remove_ValueChanged(new EventHandler(this.swbIbDNS_ValueChanged));
					this.swbIbDNS.set_Value(false);
					this.swbIbDNS.add_ValueChanged(new EventHandler(this.swbIbDNS_ValueChanged));
					flag = false;
				}
			}
			if (flag && this.vpnManager.get_ConnectionStatus() == "Not Connected")
			{
				this.ChangeDNSSwitch();
			}
			if (flag2)
			{
				this.SetDNSControls();
			}
			this.AssignDNSEvents();
			if (this.vpnManager.get_ConnectionStatus() == "Not Connected")
			{
				this.SetNotifyTextForDNS();
				this.SetNotifyIconForDNS();
			}
		}

		private void SetNotifyTextForDNSForPropertyChanged()
		{
			if (this.swbIbDNS.get_Value())
			{
				this.ShowNotifyBaloon("The ibDNS is ON");
				return;
			}
			this.ShowNotifyBaloon("Disconnected from VPN server");
		}

		private void SetNotifyTextForDNS()
		{
			if (this.swbIbDNS.get_Value())
			{
				this.ShowNotifyBaloon("The ibDNS is ON");
				return;
			}
			this.ShowNotifyBaloon("The ibDNS is OFF");
		}

		private void SetNotifyTextForKillSwitch()
		{
			if (this.swbKillSwitch.get_Value())
			{
				this.ShowNotifyBaloon("Kill Switch is ON");
				return;
			}
			this.ShowNotifyBaloon("Kill Switch is OFF");
		}

		private bool WindowIsTopLevel()
		{
			return MainForm.IsWindowVisible(MainForm.GetActiveWindow());
		}

		private void SetNotifyIconForDNS()
		{
			if (this.swbIbDNS.get_Value())
			{
				string dNSIPSelectedServer = this.GetDNSIPSelectedServer(this.dgvDNSServers);
				this.notifyIconIbVPN.Text = "ibDNS is on. DNS assigned: " + dNSIPSelectedServer;
				return;
			}
			this.notifyIconIbVPN.Text = "VPN not connected.";
		}

		private void ChangeDNSSwitch()
		{
			if (this.swbIbDNS.get_Value())
			{
				this.logger.log("s-a schimbat switchul  ibDNS in ON ");
				string dNSSelectedServer = this.GetDNSSelectedServer(this.dgvDNSServers);
				this.lastDNSconnectedserver = dNSSelectedServer;
				this.XmlWriterAutoconnectDNSDates(dNSSelectedServer);
				this.SetGridConnectedDNSServerColor(dNSSelectedServer);
				ArrayList arrayList = this.apiManager.UpdateDNSIP(this.UserId, this.ApiUrl);
				this.logger.log("s-a rulat metoda - apiManager.UpdateDNSIP-nu din worker- prima data");
				if (arrayList != null && arrayList.Count > 0)
				{
					if (arrayList[0].ToString() != "ip updated")
					{
						ArrayList arrayList2 = this.apiManager.UpdateDNSIP(this.UserId, this.ApiUrl);
						this.logger.log("s-a rulat metoda - apiManager.UpdateDNSIP-nu din worker - a doua oara");
						if (arrayList2 != null && arrayList2.Count > 0)
						{
							if (arrayList2[0].ToString() == "ip updated")
							{
								this.logger.log("metoda apiManager.UpdateDNSIP s-a rulat cu succes- ip is updated");
							}
							else
							{
								this.logger.log("metoda apiManager.UpdateDNSIP s-a rulat fara succes- ip is not updated");
							}
						}
					}
					else
					{
						this.logger.log("metoda apiManager.UpdateDNSIP s-a rulat cu succes - ip is updated");
					}
				}
				if (!this.checkChangeExternalIpWorker.IsBusy)
				{
					this.checkChangeExternalIpWorker.RunWorkerAsync();
				}
			}
			else
			{
				this.logger.log("s-a schimbat switchul  ibDNS in OFF ");
				this.ResetGridConnectedDNSServerColor();
				this.checkChangeExternalIpWorker.CancelAsync();
			}
			if (this.swbIbDNS.get_Value())
			{
				this.adaptors = this.dnsManager.PrepareAdaptors(false);
			}
			if (this.swbIbDNS.get_Value())
			{
				this.SetAdaptorDNS();
				return;
			}
			this.dnsManager.RestoreAdaptors(this.adaptors);
		}

		private string GetDNSSelectedServer(DataGridViewX dgv)
		{
			string result = string.Empty;
			if (dgv.Rows.Count > 0 && dgv.SelectedRows.Count == 1)
			{
				int index = dgv.SelectedRows[0].Index;
				result = dgv.Rows[index].Cells[2].Value.ToString();
			}
			return result;
		}

		private string GetDNSIPSelectedServer(DataGridViewX dgv)
		{
			string result = string.Empty;
			if (dgv.Rows.Count > 0 && dgv.SelectedRows.Count == 1)
			{
				int index = dgv.SelectedRows[0].Index;
				result = dgv.Rows[index].Cells[11].Value.ToString();
			}
			return result;
		}

		private void chkConfirmationChangeServer_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkConfirmationChangeDNSServer, "askDNSServerChange");
			if (this.chkConfirmationChangeDNSServer.get_Checked())
			{
				this.askDNSServerChange = true;
				return;
			}
			this.askDNSServerChange = false;
		}

		private void tbcSupport_SelectedTabChanged(object sender, TabStripTabChangedEventArgs e)
		{
			if (this.tbiSupportSettings.get_IsSelected())
			{
				this.tbiSupportSettings.set_Image(Resources.tab_support_set_selected);
				this.tbiServiceLog.set_Image(Resources.tab_serviceLog);
				this.tbiContact.set_Image(Resources.tab_contact);
				this.tbiAutoupdater.set_Image(Resources.tab_update);
				this.tbiKB.set_Image(Resources.tab_help_kb);
				return;
			}
			if (this.tbiServiceLog.get_IsSelected())
			{
				this.tbiSupportSettings.set_Image(Resources.tab_support_set);
				this.tbiServiceLog.set_Image(Resources.tab_serviceLog_selected);
				this.tbiContact.set_Image(Resources.tab_contact);
				this.tbiAutoupdater.set_Image(Resources.tab_update);
				this.tbiKB.set_Image(Resources.tab_help_kb);
				return;
			}
			if (this.tbiContact.get_IsSelected())
			{
				this.tbiSupportSettings.set_Image(Resources.tab_support_set);
				this.tbiServiceLog.set_Image(Resources.tab_serviceLog);
				this.tbiContact.set_Image(Resources.tab_contact_selected);
				this.tbiAutoupdater.set_Image(Resources.tab_update);
				this.tbiKB.set_Image(Resources.tab_help_kb);
				return;
			}
			if (this.tbiAutoupdater.get_IsSelected())
			{
				this.tbiSupportSettings.set_Image(Resources.tab_support_set);
				this.tbiServiceLog.set_Image(Resources.tab_serviceLog);
				this.tbiContact.set_Image(Resources.tab_contact);
				this.tbiAutoupdater.set_Image(Resources.tab_update_selected);
				this.tbiKB.set_Image(Resources.tab_help_kb);
				this.lblInfoReleaseNotes.Text = "Loading Release Notes...";
				if (!this.releaseNotesWorker.IsBusy)
				{
					this.releaseNotesWorker.RunWorkerAsync();
				}
				this.tabUpdateWasClicked = true;
				if (!this.mediaWorker.IsBusy)
				{
					this.mediaWorker.RunWorkerAsync();
					return;
				}
			}
			else
			{
				this.tbiSupportSettings.set_Image(Resources.tab_support_set);
				this.tbiServiceLog.set_Image(Resources.tab_serviceLog);
				this.tbiContact.set_Image(Resources.tab_contact);
				this.tbiAutoupdater.set_Image(Resources.tab_update);
				this.tbiKB.set_Image(Resources.tab_help_kb_selected);
				if (!this.KBWorker.IsBusy)
				{
					this.KBWorker.RunWorkerAsync();
				}
			}
		}

		private void tbcVPNSettings_SelectedTabChanged(object sender, TabStripTabChangedEventArgs e)
		{
			if (this.tbiBehaviour.get_IsSelected())
			{
				this.tbiBehaviour.set_Image(Resources.tab_set_behaviour_selected);
				this.tbiPrivacy.set_Image(Resources.tab_set_privacy);
				this.tbiKillSwitch.set_Image(Resources.tab_set_killSwitch);
				return;
			}
			if (this.tbiPrivacy.get_IsSelected())
			{
				this.tbiBehaviour.set_Image(Resources.tab_set_behaviour);
				this.tbiPrivacy.set_Image(Resources.tab_set_privacy_selected);
				this.tbiKillSwitch.set_Image(Resources.tab_set_killSwitch);
				return;
			}
			this.tbiBehaviour.set_Image(Resources.tab_set_behaviour);
			this.tbiPrivacy.set_Image(Resources.tab_set_privacy);
			this.tbiKillSwitch.set_Image(Resources.tab_set_killSwitch_selected);
		}

		private void tbcServers_SelectedTabChanged(object sender, TabStripTabChangedEventArgs e)
		{
			if (this.tbiUsageView.get_IsSelected())
			{
				this.tbiUsageView.set_Image(Resources.tab_usage_view_selected);
				this.tbiProtocolList.set_Image(Resources.tab_protocol_view);
				this.txtSearchUV.Focus();
				return;
			}
			if (this.tbiProtocolList.get_IsSelected())
			{
				this.tbiUsageView.set_Image(Resources.tab_usage_view);
				this.tbiProtocolList.set_Image(Resources.tab_protocol_view_selected);
				this.SetProtocolFocus();
			}
		}

		private ArrayList GetFastestServers(int serverIndex, string serverType, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			if (serverIndex == -1)
			{
				serverIndex++;
			}
			ArrayList arrayList = new ArrayList();
			try
			{
				DataTable dataTable = new DataTable();
				dataTable.Columns.Add("ServerName");
				dataTable.Columns.Add("Score");
				dataTable.Columns.Add("Protocols");
				dataTable.Columns.Add("Flag");
				dataTable.Columns.Add("ServerIP");
				string text = string.Empty;
				if (serverType == "Fastest Server")
				{
					dataTable.TableName = "fastestServersTable";
					text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "FastestServers.xml";
				}
				else if (serverType == "Fastest Favourite")
				{
					dataTable.TableName = "fastestFavouritesTable";
					text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "FastestFavourites.xml";
				}
				else if (serverType == "Rotating Favourites")
				{
					dataTable.TableName = "rotatingFavouritesTable";
					text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "RotatingFavourites.xml";
				}
				if (File.Exists(text))
				{
					dataTable.ReadXml(text);
					if (dataTable.Rows.Count >= serverIndex && (serverType == "Fastest Server" || serverType == "Fastest Favourite" || serverType == "Rotating Favourites"))
					{
						arrayList.Add(dataTable.Rows[serverIndex][0].ToString());
						arrayList.Add(dataTable.Rows[serverIndex][1].ToString());
						arrayList.Add(dataTable.Rows[serverIndex][2].ToString());
						arrayList.Add(dataTable.Rows[serverIndex][3].ToString());
						arrayList.Add(dataTable.Rows[serverIndex][4].ToString());
					}
				}
			}
			catch
			{
				this.logger.log(string.Concat(new object[]
				{
					"GetFastestServers - catch - la indexul : ",
					this.indexRF.ToString(),
					" at line ",
					lineNumber,
					" (",
					caller,
					")"
				}));
				string message = "Server list can not be used right now" + Environment.NewLine + "Please restart application and try again.";
				this.ShowMessageFromTrayOneButton(message);
				this.RestoreDNS(20221, "GetFastestServers");
				if (this.IsInternetLock())
				{
					this.forceRestoreInternet = true;
					this.swbKillSwitch.set_Value(false);
				}
			}
			return arrayList;
		}

		private void SetDgvKilSwitch()
		{
			DataTable dataTable = new DataTable();
			dataTable.Columns.Add("Application", typeof(string));
			dataTable.Columns.Add("LineType", typeof(string));
			dataTable.Columns.Add("ProcessName", typeof(string));
			dataTable.TableName = "killSwitchTable";
			this.killSwitchTable.Rows.Clear();
			this.killSwitchTable.TableName = "killSwitchTable";
			if (!this.killSwitchTable.Columns.Contains("Application"))
			{
				this.killSwitchTable.Columns.Add("Application", typeof(string));
			}
			if (!this.killSwitchTable.Columns.Contains("LineType"))
			{
				this.killSwitchTable.Columns.Add("LineType", typeof(string));
			}
			if (!this.killSwitchTable.Columns.Contains("ProcessName"))
			{
				this.killSwitchTable.Columns.Add("ProcessName", typeof(string));
			}
			try
			{
				string text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "KillSwitchTable.xml";
				if (File.Exists(text))
				{
					dataTable.ReadXml(text);
				}
				foreach (DataRow dataRow in dataTable.Rows)
				{
					string text2 = dataRow[1].ToString();
					try
					{
						if (Process.GetProcessesByName(text2).FirstOrDefault<Process>() == null && !(text2 == "application"))
						{
							DataRow dataRow2 = this.killSwitchTable.NewRow();
							dataRow2[0] = dataRow[0];
							dataRow2[1] = text2;
							dataRow2[2] = dataRow[2];
							this.killSwitchTable.Rows.Add(dataRow2);
						}
						else
						{
							DataRow dataRow3 = this.killSwitchTable.NewRow();
							dataRow3[0] = dataRow[0];
							dataRow3[1] = dataRow[1];
							dataRow3[2] = dataRow[2];
							this.killSwitchTable.Rows.Add(dataRow3);
						}
					}
					catch
					{
						this.RestoreDNS(20290, "SetDgvKilSwitch");
					}
				}
				this.killSwitchTable.WriteXml(text);
			}
			catch
			{
			}
			this.dgvKillSwitch.DataSource = this.killSwitchTable;
			this.dgvKillSwitch.AllowUserToAddRows = false;
			this.dgvKillSwitch.Columns[0].Width = 35;
			this.dgvKillSwitch.Columns["LineType"].Visible = false;
			this.dgvKillSwitch.Columns["ProcessName"].Visible = false;
			this.dgvKillSwitch.Columns["Application"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
			this.dgvKillSwitch.ColumnHeadersVisible = false;
			this.dgvKillSwitch.RowHeadersVisible = false;
			this.dgvKillSwitch.CellBorderStyle = DataGridViewCellBorderStyle.None;
			this.dgvKillSwitch.AlternatingRowsDefaultCellStyle.BackColor = this.secondLineColor;
			this.dgvKillSwitch.ReadOnly = true;
			this.dgvKillSwitch.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
			this.dgvKillSwitch.set_PaintEnhancedSelection(false);
			this.dgvKillSwitch.RowTemplate.DefaultCellStyle.SelectionBackColor = Color.LightGray;
		}

		private void btnBrowse_Click(object sender, EventArgs e)
		{
			CustomOpenFileDialog cofd = new CustomOpenFileDialog();
			cofd.ShowDialog();
			IList<string> list = new List<string>();
			foreach (DataRow dataRow in this.killSwitchTable.Rows)
			{
				list.Add(dataRow[2].ToString());
			}
			if (cofd.SelectedApplication != string.Empty)
			{
				this.UpdateKillSwitchLogger("You just added '" + cofd.SelectedFileApplication + "' to the Kill Switch list.");
				if ((from x in list
				where x == cofd.SelectedApplication
				select x).FirstOrDefault<string>() == null)
				{
					try
					{
						if (this.killSwitchTable.Columns.Count == 3)
						{
							this.killSwitchTable.Rows.Add(new object[]
							{
								cofd.SelectedFileApplication,
								"application",
								cofd.SelectedApplication
							});
						}
					}
					catch
					{
					}
				}
			}
			this.SetImageApplications();
			string fileName = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "KillSwitchTable.xml";
			this.killSwitchTable.WriteXml(fileName);
		}

		private void SetImageApplications()
		{
			if (this.dgvKillSwitch.Rows.Count > 0)
			{
				ImageList imageList = new ImageList();
				CustomOpenFileDialogHelper customOpenFileDialogHelper = new CustomOpenFileDialogHelper();
				foreach (DataGridViewRow dataGridViewRow in ((IEnumerable)this.dgvKillSwitch.Rows))
				{
					try
					{
						if (dataGridViewRow.Cells[2].Value != null)
						{
							if (dataGridViewRow.Cells[2].Value.ToString() == "application")
							{
								imageList = customOpenFileDialogHelper.GetImageListOfFile_Folder(dataGridViewRow.Cells[3].Value.ToString());
								dataGridViewRow.Cells[0].Value = imageList.Images[imageList.Images.Count - 1];
							}
							else
							{
								imageList = customOpenFileDialogHelper.GetImageListOfFile_Folder(dataGridViewRow.Cells[2].Value.ToString());
								dataGridViewRow.Cells[0].Value = imageList.Images[imageList.Images.Count - 1];
							}
						}
					}
					catch
					{
						dataGridViewRow.Cells[0].Value = this.imageList2.Images[0];
					}
					dataGridViewRow.Height = this.rowHeight;
				}
			}
		}

		private void StartProcess(string process)
		{
			Process process2 = new Process();
			process2.StartInfo = new ProcessStartInfo
			{
				FileName = process
			};
			try
			{
				process2.Start();
			}
			catch
			{
				if (base.InvokeRequired)
				{
					base.Invoke(new MethodInvoker(delegate
					{
						this.ShowCannotStartProcessMessage(process);
					}));
				}
				else
				{
					this.ShowCannotStartProcessMessage(process);
				}
			}
			process2.Close();
		}

		private void ShowCannotStartProcessMessage(string process)
		{
			CustomMessageBox customMessageBox = this.helper.MessageBoxShow("The following application " + process + " could not be restarted.Please start it manually.", "ibVPN client notification/info message", 2, true, false);
			customMessageBox.StartPosition = FormStartPosition.Manual;
			customMessageBox.Location = new Point(base.Location.X + base.Width / 2 - customMessageBox.Width / 2, base.Location.Y + base.Height / 2 - customMessageBox.Height / 2);
			customMessageBox.Show();
		}

		private Process StartTAPProcess(string process)
		{
			Process process2 = new Process();
			process2.StartInfo = new ProcessStartInfo
			{
				CreateNoWindow = true,
				UseShellExecute = false,
				RedirectStandardError = true,
				RedirectStandardOutput = true,
				RedirectStandardInput = true,
				WindowStyle = ProcessWindowStyle.Hidden,
				FileName = process
			};
			try
			{
				process2.Start();
			}
			catch (Exception ex)
			{
				this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 2, true, true);
			}
			return process2;
		}

		private void btnProcess_Click(object sender, EventArgs e)
		{
			SelectRunningProcessForm srp = new SelectRunningProcessForm();
			srp.ShowDialog();
			IList<string> list = new List<string>();
			foreach (DataRow dataRow in this.killSwitchTable.Rows)
			{
				list.Add(dataRow[2].ToString());
			}
			if (srp.SelectedProcess != string.Empty)
			{
				this.UpdateKillSwitchLogger("You just added '" + srp.SelectedProcess + "' to the Kill Switch list.");
				if ((from x in list
				where x == srp.ProcessName
				select x).FirstOrDefault<string>() == null)
				{
					try
					{
						if (this.killSwitchTable.Columns.Count == 3)
						{
							this.killSwitchTable.Rows.Add(new object[]
							{
								srp.SelectedProcess,
								srp.ProcessPath,
								srp.ProcessName
							});
						}
					}
					catch
					{
					}
				}
			}
			this.SetImageApplications();
			string fileName = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "KillSwitchTable.xml";
			this.killSwitchTable.WriteXml(fileName);
		}

		private void btnRemoveSelected_Click(object sender, EventArgs e)
		{
			int num = 0;
			if (this.dgvKillSwitch.SelectedRows.Count > 0)
			{
				DataGridViewRow expr_26 = this.dgvKillSwitch.SelectedRows[0];
				string str = expr_26.Cells[1].Value.ToString();
				num = expr_26.Index;
				this.killSwitchTable.Rows.RemoveAt(num);
				this.UpdateKillSwitchLogger("You just removed '" + str + "' from the Kill Switch list.");
			}
			else
			{
				this.helper.MessageBoxShow("There are no applications in the list !", "ibVPN client notification/info message", 2, true, true);
			}
			if (this.dgvKillSwitch.Rows.Count > 0)
			{
				if (num == this.killSwitchTable.Rows.Count)
				{
					this.dgvKillSwitch.Rows[num - 1].Selected = true;
				}
			}
			else if (this.dgvKillSwitch.Rows.Count == 0)
			{
				this.swbKillSwitch.set_Value(false);
			}
			string fileName = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "KillSwitchTable.xml";
			this.killSwitchTable.WriteXml(fileName);
		}

		private void dgvKillSwitch_Paint(object sender, PaintEventArgs e)
		{
			if (this.killSwithInitialPaint)
			{
				this.SetImageApplications();
				this.killSwithInitialPaint = false;
			}
		}

		private static void KillProcessAndChildrens(int pid)
		{
			ManagementObjectCollection managementObjectCollection = new ManagementObjectSearcher("Select * From Win32_Process Where ParentProcessID=" + pid).Get();
			try
			{
				Process processById = Process.GetProcessById(pid);
				if (!processById.HasExited)
				{
					processById.Kill();
				}
			}
			catch (ArgumentException)
			{
			}
			if (managementObjectCollection != null)
			{
				using (ManagementObjectCollection.ManagementObjectEnumerator enumerator = managementObjectCollection.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						MainForm.KillProcessAndChildrens(Convert.ToInt32(((ManagementObject)enumerator.Current)["ProcessID"]));
					}
				}
			}
		}

		private void btnKillSwitchPanel_Click(object sender, EventArgs e)
		{
			if (!this.IsInternetLock())
			{
				if (!this.kswWorker.IsBusy)
				{
					this.logger.log("kswWorker nu este busy");
					this.kswWorker.RunWorkerAsync();
					return;
				}
				this.logger.log("kswWorker este busy - si nu s-a lansat");
			}
		}

		private void KillProcesses()
		{
			if (this.swbKillSwitch.get_Value())
			{
				this.restartKilledApplicationWorker.CancelAsync();
				DataTable dataTable = new DataTable();
				dataTable.TableName = "KillSwitchAppsSuccessTable";
				dataTable.Columns.Add("Application", typeof(string));
				dataTable.Columns.Add("LineType", typeof(string));
				dataTable.Columns.Add("ProcessName", typeof(string));
				dataTable.Rows.Clear();
				ArrayList arrayList = new ArrayList();
				string processesList = string.Empty;
				foreach (DataRow dataRow in this.killSwitchTable.Rows)
				{
					dataRow[2].ToString();
					string a = dataRow[1].ToString();
					string text = dataRow[0].ToString();
					string text2 = string.Empty;
					try
					{
						Process process = new Process();
						if (a != "application")
						{
							text2 = dataRow[2].ToString();
						}
						else
						{
							text2 = text.Substring(0, text.Length - 4);
						}
						process = Process.GetProcessesByName(text2).FirstOrDefault<Process>();
						if (process != null)
						{
							Process process2 = new Process();
							this.logger.log("p is not null -" + process.ProcessName);
							string processName = process.ProcessName;
							Process[] processesByName = Process.GetProcessesByName(processName);
							for (int i = 0; i < processesByName.Length; i++)
							{
								Process process3 = processesByName[i];
								process2 = process3;
								this.logger.log("urmeaza kill -" + process3.ProcessName);
								process2.CloseMainWindow();
								MainForm.KillProcessAndChildrens(process2.Id);
								if (!arrayList.Contains(processName))
								{
									arrayList.Add(processName);
									processesList = processesList + Environment.NewLine + "- " + processName;
									if (process2.HasExited)
									{
										this.logger.log("procesul s-a terminat -" + process3.ProcessName);
										DataRow dataRow2 = dataTable.NewRow();
										object value = dataRow[0];
										object value2 = dataRow[1];
										object value3 = dataRow[2];
										dataRow2[0] = value;
										dataRow2[1] = value2;
										dataRow2[2] = value3;
										dataTable.Rows.Add(dataRow2);
									}
								}
							}
						}
						else
						{
							this.logger.log("procesul este null -" + text2);
						}
					}
					catch (Exception ex)
					{
						this.logger.log("EROARE -" + ex.Message + " - " + text2);
					}
				}
				string fileName = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "KillSwitchAppsSuccessTable.xml";
				dataTable.WriteXml(fileName);
				this.WriteLogKsw("The KillSwitchAppsSuccessTable.xml was created - " + dataTable.Rows.Count + " applications wil be reopen");
				if (processesList != string.Empty)
				{
					string killProcsMessage = "The VPN connection was closed. The following applications from your Kill Switch list have been closed: " + processesList;
					if (this.chkAskReopenClosedApplications.get_Checked())
					{
						killProcsMessage = killProcsMessage + Environment.NewLine + "These applications will be restored when the VPN connection is restored.";
					}
					if (base.InvokeRequired)
					{
						base.Invoke(new MethodInvoker(delegate
						{
							this.UpdateKillSwitchLogger("Kill Switch has closed the following apps: " + processesList);
							this.ShowMessage(killProcsMessage);
						}));
					}
					else
					{
						this.UpdateKillSwitchLogger("Kill Switch has closed the following apps: " + processesList);
						this.ShowMessage(killProcsMessage);
					}
				}
				this.logger.log("s-a terminat metoda care inchide aplicatiile din tabelul ksw.Aplicatiile sunt inchise - ksw");
			}
		}

		private void ShowMessage(string killProcsMessage)
		{
			CustomMessageBox customMessageBox = this.helper.MessageBoxShowKSWAppList(killProcsMessage, "ibVPN client notification/info message", 2, true, false);
			customMessageBox.StartPosition = FormStartPosition.Manual;
			customMessageBox.Location = new Point(base.Location.X + base.Width / 2 - customMessageBox.Width / 2, base.Location.Y + base.Height / 2 - customMessageBox.Height / 2);
			customMessageBox.Show();
		}

		private string GetRunningProcess(string appPath)
		{
			Process[] arg_22_0 = Process.GetProcesses();
			DataTable arg_15_0 = (DataTable)this.dgvKillSwitch.DataSource;
			string result = string.Empty;
			CustomOpenFileDialogHelper customOpenFileDialogHelper = new CustomOpenFileDialogHelper();
			Process[] array = arg_22_0;
			for (int i = 0; i < array.Length; i++)
			{
				Process process = array[i];
				if (!string.IsNullOrEmpty(process.MainWindowTitle))
				{
					try
					{
						string mainModuleFilepath = customOpenFileDialogHelper.GetMainModuleFilepath(process.Id);
						if (appPath == mainModuleFilepath)
						{
							result = process.ProcessName;
						}
					}
					catch (Exception)
					{
					}
				}
			}
			return result;
		}

		private void btnRestartProcesses_Click(object sender, EventArgs e)
		{
			if (!this.IsInternetLock())
			{
				if (!this.restartKilledApplicationWorker.IsBusy)
				{
					this.logger.log("restartKilledApplicationWorker nu este busy - s-a lansat  workerul");
					this.restartKilledApplicationWorker.RunWorkerAsync();
					return;
				}
				this.logger.log("restartKilledApplicationWorker este busy - nu s-a lansat  workerul");
			}
		}

		private void RestartKilledApplications()
		{
			if (this.chkAskReopenClosedApplications.get_Checked() && this.swbKillSwitch.get_Value())
			{
				this.kswWorker.CancelAsync();
				this.WriteLogKsw("The VPN connection has been restored.");
				this.logger.log("The VPN connection has been restored.");
				this.logger.log("RestartKilledApplications started");
				DataTable dataTable = new DataTable();
				dataTable.Columns.Add("Application", typeof(string));
				dataTable.Columns.Add("LineType", typeof(string));
				dataTable.Columns.Add("ProcessName", typeof(string));
				dataTable.TableName = "KillSwitchAppsSuccessTable";
				string text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "KillSwitchAppsSuccessTable.xml";
				if (File.Exists(text))
				{
					dataTable.ReadXml(text);
				}
				foreach (DataRow expr_115 in dataTable.Rows)
				{
					string text2 = expr_115[1].ToString();
					string text3 = expr_115[2].ToString();
					try
					{
						if (text2 == "application")
						{
							MainForm.RunProcessAsync(text3);
							this.WriteLogKsw("The following app have been re-opened: " + text3);
							this.logger.log("The following app have been re-opened: " + text3);
						}
						else
						{
							MainForm.RunProcessAsync(text2);
							this.WriteLogKsw("The following app have been re-opened: " + text2);
							this.logger.log("The following app have been re-opened: " + text2);
						}
					}
					catch (Exception)
					{
						this.WriteLogKsw("The following apps failed to re-open: " + text3);
						this.logger.log("The following apps failed to re-open: " + text3);
					}
				}
			}
			this.logger.log("s-a terminat metoda care deschide aplicatiile din tabelul ksw. Aplicatiile sunt deschise -ksw");
		}

		private static Task RunProcessAsync(string fileName)
		{
			TaskCompletionSource<bool> tcs = new TaskCompletionSource<bool>();
			Process process = new Process
			{
				StartInfo = 
				{
					FileName = fileName
				},
				EnableRaisingEvents = true
			};
			process.Exited += delegate(object sender, EventArgs args)
			{
				tcs.SetResult(true);
				process.Dispose();
			};
			process.Start();
			return tcs.Task;
		}

		private void WriteLogKsw(string message)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.UpdateKillSwitchLogger(message);
				}));
				return;
			}
			this.UpdateKillSwitchLogger(message);
		}

		private void swbKillSwitch_ValueChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.swbKillSwitch, "killSwitch");
			this.ChangeSwbKillSwitchValue(this.dashboard);
			this.ChangeSwbKillSwitchValue(this.dashboardServers);
			this.ChangeSwbKillSwitchValue(this.dashboardVPNSettings);
			this.ChangeSwbKillSwitchValue(this.dashboardDNSSettings);
			this.ChangeSwbKillSwitchValue(this.dashboardSupport);
			this.ChangeSwbKillSwitchValue(this.dashboardAccount);
		}

		private void UpdateDashboardKSWLog()
		{
			string log = string.Empty;
			if (!this.swbKillSwitch.get_Value())
			{
				log = "The Kill Switch feature has been turned OFF";
			}
			else
			{
				log = "The Kill Switch feature has been turned ON";
			}
			this.UpdateKillSwitchLogger(log);
		}

		private void ChangeSwbKillSwitchValue(DashboardUserControl duc)
		{
			if (this.swbKillSwitch.get_Value())
			{
				if (this.rbApplicationsKsw.Checked)
				{
					this.chkAskReopenClosedApplications.Enabled = true;
				}
				if (!duc.swbKillSwitch.get_Value())
				{
					duc.swbKillSwitch.set_Value(true);
					return;
				}
			}
			else
			{
				this.chkAskReopenClosedApplications.Enabled = false;
				if (duc.swbKillSwitch.get_Value())
				{
					duc.swbKillSwitch.set_Value(false);
				}
			}
		}

		private void chkCenterWindow_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkCenterWindow, "centerWindow");
			if (this.chkCenterWindow.get_Checked())
			{
				this.centerWindow = true;
			}
			else
			{
				this.centerWindow = false;
			}
			if (this.centerWindow)
			{
				this.SetInitialMainFormPosition();
			}
		}

		private void btnRepairOpenVPN_Click(object sender, EventArgs e)
		{
			this.RepairOpenVPN(true);
		}

		private void RepairOpenVPN(bool showMessages)
		{
			this.logger.log("se incearca reinstalarea TAP");
			string text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "OpenVPN\\bin\\deltapall.bat";
			string text2 = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "OpenVPN\\bin\\addtap.bat";
			bool flag = false;
			try
			{
				if (File.Exists(text2) && File.Exists(text))
				{
					Process arg_9F_0 = this.StartTAPProcess(text);
					this.logger.log("se incepe reinstalearea inVPN Tap Adapter");
					arg_9F_0.WaitForExit();
					if (arg_9F_0.HasExited)
					{
						Process expr_B6 = this.StartTAPProcess(text2);
						expr_B6.WaitForExit();
						if (expr_B6.HasExited)
						{
							this.InitializeNetworkInterface();
							NetworkInterface[] array = this.nicArr;
							for (int i = 0; i < array.Length; i++)
							{
								if (array[i].Description == "ibVPN Tap Adapter")
								{
									flag = true;
								}
							}
							if (flag)
							{
								if (showMessages)
								{
									this.helper.MessageBoxShow("TAP-Adapter was installed !", "ibVPN client notification/info message", 0, true, true);
								}
							}
							else if (showMessages)
							{
								this.helper.MessageBoxShow("TAP-Adapter was not installed !", "ibVPN client notification/info message", 1, true, true);
							}
						}
					}
				}
				else
				{
					if (showMessages)
					{
						this.helper.MessageBoxShow("TAP-Adapter was not installed !" + Environment.NewLine + " missing addtap.bat or deltapall.bat!", "ibVPN client notification/info message", 1, true, true);
					}
					this.logger.log("nu s-a reusit reinstalarea TAP pentru ca nu exista addtap.bat sau deltapall.bat");
				}
			}
			catch (Exception ex)
			{
				if (!ex.Message.StartsWith("No process") && showMessages)
				{
					this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 2, true, true);
				}
			}
		}

		private void chkAskReopenClosedApplications_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkAskReopenClosedApplications, "askReopenClosedApplications");
			string log = string.Empty;
			if (this.chkAskReopenClosedApplications.get_Checked())
			{
				this.reopenClosedApplications = true;
				log = " 'Automatically reopen closed applications upon VPN reconnect' feature is ON";
			}
			else
			{
				this.reopenClosedApplications = false;
				log = " 'Automatically reopen closed applications upon VPN reconnect' feature is OFF";
			}
			this.UpdateKillSwitchLogger(log);
		}

		private void btnOpenTicket_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://www.ibvpn.com/billing/submitticket.php"));
		}

		private void btnSendEmail_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("mailto:support@ibvpn.com"));
		}

		private bool NormalNotConnectedOrInterruptedStatus()
		{
			bool result = false;
			if (this.vpnManager.get_ConnectionStatus() == "Not Connected" && !this.serverChanged && !this.pingFailed && !this.swbIbDNS.get_Value())
			{
				result = true;
			}
			if (this.vpnManager.get_ConnectionStatus().StartsWith("Interrupted:"))
			{
				result = true;
			}
			return result;
		}

		private void DeleteDefaultRoute()
		{
			try
			{
				this.logger.log("s-a incercat DeleteDefaultRoute");
				this.UpdateKillSwitchLogger("Tried run DeleteDefaultRoute");
				new Process
				{
					StartInfo = new ProcessStartInfo
					{
						WindowStyle = ProcessWindowStyle.Hidden,
						FileName = "cmd.exe",
						Arguments = "/c route delete 0.0.0.0"
					}
				}.Start();
				this.deletedDefaultRouteFlag = true;
				this.logger.log("s-a reusit DeleteDefaultRoute");
				this.UpdateKillSwitchLogger("Successfully run DeleteDefaultRoute");
			}
			catch (Exception ex)
			{
				this.deletedDefaultRouteFlag = false;
				this.logger.log("DeleteDefaultRoute failed " + ex.Message);
				this.UpdateKillSwitchLogger("DeleteDefaultRoute failed " + ex.Message);
			}
		}

		private void DeleteRoute(string ipRoute, bool writeKswLog)
		{
			try
			{
				this.logger.log("s-a incercat stergere ruta ip :" + ipRoute);
				if (writeKswLog)
				{
					this.UpdateKillSwitchLogger("Tried delete route ip :" + ipRoute);
				}
				new Process
				{
					StartInfo = new ProcessStartInfo
					{
						WindowStyle = ProcessWindowStyle.Hidden,
						FileName = "cmd.exe",
						Arguments = "/c route delete " + ipRoute
					}
				}.Start();
				this.logger.log("s-a reusit stergere ruta ip :" + ipRoute);
				if (writeKswLog)
				{
					this.UpdateKillSwitchLogger("Successfully delete route ip :" + ipRoute);
				}
			}
			catch (Exception ex)
			{
				this.logger.log("DeleteRoute failed " + ex.Message);
				if (writeKswLog)
				{
					this.UpdateKillSwitchLogger("DeleteRoute failed " + ex.Message);
				}
			}
		}

		private void RestoreDefaultRoute([CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			try
			{
				this.logger.log(string.Concat(new object[]
				{
					"s-a incercat RestoreDefaultRoute- at line ",
					lineNumber,
					" (",
					caller,
					")"
				}));
				this.UpdateKillSwitchLogger("Tried run RestoreDefaultRoute");
				this.SetColorSettingsLink(Color.FromArgb(28, 158, 27), "Settings", 21488, "RestoreDefaultRoute");
				this.ChangeLinkSettingsLocation(this.offsetLinkSettings);
				this.btnRestoreNet.Visible = false;
				new Process
				{
					StartInfo = new ProcessStartInfo
					{
						WindowStyle = ProcessWindowStyle.Hidden,
						FileName = "cmd.exe",
						Arguments = "/c route add 0.0.0.0 mask 0.0.0.0 " + this.defaultGateway.ToString()
					}
				}.Start();
				this.logger.log("s-a reusit RestoreDefaultRoute - defaultGateway : " + this.defaultGateway.ToString());
				this.UpdateKillSwitchLogger("Successfully run RestoreDefaultRoute");
			}
			catch (Exception ex)
			{
				this.logger.log("RestoreDefaultRoute failed " + ex.Message);
				this.UpdateKillSwitchLogger("RestoreDefaultRoute failed " + ex.Message);
			}
		}

		private void AddServerRoute(string ipRoute, bool writeKswLog)
		{
			try
			{
				this.logger.log(string.Concat(new object[]
				{
					"s-a incercat adaugare ruta ip :",
					ipRoute,
					" default gateway: ",
					this.defaultGateway
				}));
				if (writeKswLog)
				{
					this.UpdateKillSwitchLogger(string.Concat(new object[]
					{
						"Tried add route ip :",
						ipRoute,
						" default gateway: ",
						this.defaultGateway
					}));
				}
				new Process
				{
					StartInfo = new ProcessStartInfo
					{
						WindowStyle = ProcessWindowStyle.Hidden,
						FileName = "cmd.exe",
						Arguments = "/c route add " + ipRoute + " " + this.defaultGateway.ToString()
					}
				}.Start();
				this.logger.log(string.Concat(new object[]
				{
					"s-a reusit adaugare ruta ip :",
					ipRoute,
					" default gateway: ",
					this.defaultGateway
				}));
				if (writeKswLog)
				{
					this.UpdateKillSwitchLogger(string.Concat(new object[]
					{
						"Successfully add route ip :",
						ipRoute,
						" default gateway: ",
						this.defaultGateway
					}));
				}
			}
			catch (Exception ex)
			{
				this.logger.log("AddServerRoute failed " + ex.Message);
				if (writeKswLog)
				{
					this.UpdateKillSwitchLogger("AddServerRoute failed " + ex.Message);
				}
			}
		}

		public static IPAddress GetDefaultGateway()
		{
			IEnumerable<NetworkInterface> arg_24_0 = NetworkInterface.GetAllNetworkInterfaces();
			Func<NetworkInterface, bool> arg_24_1;
			if ((arg_24_1 = MainForm.<>c.<>9__925_0) == null)
			{
				arg_24_1 = (MainForm.<>c.<>9__925_0 = new Func<NetworkInterface, bool>(MainForm.<>c.<>9.<GetDefaultGateway>b__925_0));
			}
			IEnumerable<NetworkInterface> arg_48_0 = arg_24_0.Where(arg_24_1);
			Func<NetworkInterface, bool> arg_48_1;
			if ((arg_48_1 = MainForm.<>c.<>9__925_1) == null)
			{
				arg_48_1 = (MainForm.<>c.<>9__925_1 = new Func<NetworkInterface, bool>(MainForm.<>c.<>9.<GetDefaultGateway>b__925_1));
			}
			IEnumerable<NetworkInterface> arg_6C_0 = arg_48_0.Where(arg_48_1);
			Func<NetworkInterface, IEnumerable<GatewayIPAddressInformation>> arg_6C_1;
			if ((arg_6C_1 = MainForm.<>c.<>9__925_2) == null)
			{
				arg_6C_1 = (MainForm.<>c.<>9__925_2 = new Func<NetworkInterface, IEnumerable<GatewayIPAddressInformation>>(MainForm.<>c.<>9.<GetDefaultGateway>b__925_2));
			}
			IEnumerable<GatewayIPAddressInformation> arg_90_0 = arg_6C_0.SelectMany(arg_6C_1);
			Func<GatewayIPAddressInformation, IPAddress> arg_90_1;
			if ((arg_90_1 = MainForm.<>c.<>9__925_3) == null)
			{
				arg_90_1 = (MainForm.<>c.<>9__925_3 = new Func<GatewayIPAddressInformation, IPAddress>(MainForm.<>c.<>9.<GetDefaultGateway>b__925_3));
			}
			IEnumerable<IPAddress> arg_B4_0 = arg_90_0.Select(arg_90_1);
			Func<IPAddress, bool> arg_B4_1;
			if ((arg_B4_1 = MainForm.<>c.<>9__925_4) == null)
			{
				arg_B4_1 = (MainForm.<>c.<>9__925_4 = new Func<IPAddress, bool>(MainForm.<>c.<>9.<GetDefaultGateway>b__925_4));
			}
			return arg_B4_0.FirstOrDefault(arg_B4_1);
		}

		private void MainForm_Shown(object sender, EventArgs e)
		{
			this.logger.log("se vede MainForm");
			this.SetMainFormTopMost();
		}

		private void btnClearLog_Click(object sender, EventArgs e)
		{
			this.vpnManager.ClearLogs();
			this.SetClipboardButton();
		}

		private void chkMitmForceSecureDNS_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkMitmForceSecureDNS.Enabled)
			{
				this.chkMitmForceSecureDNS.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkMitmForceSecureDNS.CheckBoxImageChecked"));
				this.chkMitmForceSecureDNS.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkMitmForceSecureDNS.CheckBoxImageUnChecked"));
				return;
			}
			this.chkMitmForceSecureDNS.set_CheckBoxImageChecked(null);
			this.chkMitmForceSecureDNS.set_CheckBoxImageUnChecked(null);
		}

		private void chkMitmDisableIPv6Traffic_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkMitmDisableIPv6Traffic.Enabled)
			{
				this.chkMitmDisableIPv6Traffic.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkMitmDisableIPv6Traffic.CheckBoxImageChecked"));
				this.chkMitmDisableIPv6Traffic.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkMitmDisableIPv6Traffic.CheckBoxImageUnChecked"));
				this.pnlPrivacyTooltip.Visible = false;
				return;
			}
			this.chkMitmDisableIPv6Traffic.set_CheckBoxImageChecked(null);
			this.chkMitmDisableIPv6Traffic.set_CheckBoxImageUnChecked(null);
			this.pnlPrivacyTooltip.Visible = true;
			this.pnlPrivacyTooltip.BringToFront();
		}

		private void chkMitmForceSecureDNSUsingFirewall_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkMitmForceSecureDNSUsingFirewall.Enabled)
			{
				this.chkMitmForceSecureDNSUsingFirewall.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkMitmForceSecureDNSUsingFirewall.CheckBoxImageChecked"));
				this.chkMitmForceSecureDNSUsingFirewall.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkMitmForceSecureDNSUsingFirewall.CheckBoxImageUnChecked"));
				return;
			}
			this.chkMitmForceSecureDNSUsingFirewall.set_CheckBoxImageChecked(null);
			this.chkMitmForceSecureDNSUsingFirewall.set_CheckBoxImageUnChecked(null);
		}

		private void cmbDebugLevel_SelectedValueChanged(object sender, EventArgs e)
		{
			this.XmlWriter("debugLevel", this.cmbDebugLevel.SelectedItem.ToString());
			this.debugLevel = Convert.ToInt32(this.cmbDebugLevel.SelectedItem.ToString());
		}

		private void PanToolStripMenuItem1_Click(object sender, EventArgs e)
		{
		}

		private void ZoomToolStripMenuItem1_DropDownItemClicked(object sender, ToolStripItemClickedEventArgs e)
		{
		}

		private void Zoom200ToolStripMenuItem1_Click(object sender, EventArgs e)
		{
		}

		private void Zoom100ToolStripMenuItem2_Click(object sender, EventArgs e)
		{
		}

		private void Zoom75ToolStripMenuItem3_Click(object sender, EventArgs e)
		{
		}

		private void Zoom50ToolStripMenuItem4_Click(object sender, EventArgs e)
		{
		}

		private void Zoom25ToolStripMenuItem5_Click(object sender, EventArgs e)
		{
		}

		private void pctMap_Paint(object sender, PaintEventArgs e)
		{
		}

		private void pctMap_MouseMove(object sender, MouseEventArgs e)
		{
		}

		private void pctMap_MouseDown(object sender, MouseEventArgs e)
		{
		}

		private void chkAskReopenClosedApplications_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkAskReopenClosedApplications.Enabled)
			{
				this.chkAskReopenClosedApplications.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkAskReopenClosedApplications.CheckBoxImageChecked"));
				this.chkAskReopenClosedApplications.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkAskReopenClosedApplications.CheckBoxImageUnChecked"));
				this.SetCheckBoxReopenApplications();
				return;
			}
			this.chkAskReopenClosedApplications.set_CheckBoxImageChecked(null);
			this.chkAskReopenClosedApplications.set_CheckBoxImageUnChecked(null);
			this.reopenClosedApplications = false;
		}

		private void SetCheckBoxReopenApplications()
		{
			if (this.chkAskReopenClosedApplications.get_Checked())
			{
				this.reopenClosedApplications = true;
				return;
			}
			this.reopenClosedApplications = false;
		}

		private void UpdateLblVersionShort(string releaseNotes)
		{
			this.richTextBox1.Text = this.ParseReleaseNotes(releaseNotes);
		}

		private void UpdateLblVersion(bool beforeUpdate, string releaseNotes)
		{
			if (beforeUpdate)
			{
				this.richTextBox1.Text = this.ParseReleaseNotes(releaseNotes);
			}
			else
			{
				this.richTextBox1.Text = string.Empty;
			}
			this.btnDownloadUpdates.Visible = beforeUpdate;
			this.dashboard.lnkPromo.Visible = beforeUpdate;
			this.dashboardServers.lnkPromo.Visible = beforeUpdate;
			this.dashboardVPNSettings.lnkPromo.Visible = beforeUpdate;
			this.dashboardDNSSettings.lnkPromo.Visible = beforeUpdate;
			this.dashboardSupport.lnkPromo.Visible = beforeUpdate;
			this.dashboardAccount.lnkPromo.Visible = beforeUpdate;
			if (beforeUpdate)
			{
				this.lblInfoNewVersion.Text = "A new version available.";
				this.dashboard.lblVersion.Text = "A new version available.";
				this.dashboardServers.lblVersion.Text = "A new version available.";
				this.dashboardVPNSettings.lblVersion.Text = "A new version available.";
				this.dashboardDNSSettings.lblVersion.Text = "A new version available.";
				this.dashboardSupport.lblVersion.Text = "A new version available.";
				this.dashboardAccount.lblVersion.Text = "A new version available.";
				this.SetPanelUpdateColor(true);
				return;
			}
			this.SetPanelUpdateColor(false);
			Version version = Assembly.GetExecutingAssembly().GetName().Version;
			string text = "Version : " + version.ToString();
			this.lblInfoNewVersion.Text = "No updates available.";
			this.dashboard.lblVersion.Text = text;
			this.dashboardServers.lblVersion.Text = text;
			this.dashboardVPNSettings.lblVersion.Text = text;
			this.dashboardDNSSettings.lblVersion.Text = text;
			this.dashboardSupport.lblVersion.Text = text;
			this.dashboardAccount.lblVersion.Text = text;
		}

		private void SetPanelUpdateColor(bool isUpdate)
		{
			if (isUpdate)
			{
				this.dashboard.pnlPromo.BackColor = Color.Green;
				this.dashboard.lblVersion.ForeColor = Color.White;
				this.dashboard.lnkPromo.LinkColor = Color.White;
				this.dashboardServers.pnlPromo.BackColor = Color.Green;
				this.dashboardServers.lblVersion.ForeColor = Color.White;
				this.dashboardServers.lnkPromo.LinkColor = Color.White;
				this.dashboardVPNSettings.pnlPromo.BackColor = Color.Green;
				this.dashboardVPNSettings.lblVersion.ForeColor = Color.White;
				this.dashboardVPNSettings.lnkPromo.LinkColor = Color.White;
				this.dashboardDNSSettings.pnlPromo.BackColor = Color.Green;
				this.dashboardDNSSettings.lblVersion.ForeColor = Color.White;
				this.dashboardDNSSettings.lnkPromo.LinkColor = Color.White;
				this.dashboardSupport.pnlPromo.BackColor = Color.Green;
				this.dashboardSupport.lblVersion.ForeColor = Color.White;
				this.dashboardSupport.lnkPromo.LinkColor = Color.White;
				this.dashboardAccount.pnlPromo.BackColor = Color.Green;
				this.dashboardAccount.lblVersion.ForeColor = Color.White;
				this.dashboardAccount.lnkPromo.LinkColor = Color.White;
				return;
			}
			this.dashboard.pnlPromo.BackColor = Color.FromArgb(240, 240, 240);
			this.dashboard.lblVersion.ForeColor = Color.FromArgb(38, 47, 57);
			this.dashboard.lnkPromo.LinkColor = Color.FromArgb(28, 158, 27);
			this.dashboardServers.pnlPromo.BackColor = Color.FromArgb(240, 240, 240);
			this.dashboardServers.lblVersion.ForeColor = Color.FromArgb(38, 47, 57);
			this.dashboardServers.lnkPromo.LinkColor = Color.FromArgb(28, 158, 27);
			this.dashboardVPNSettings.pnlPromo.BackColor = Color.FromArgb(240, 240, 240);
			this.dashboardVPNSettings.lblVersion.ForeColor = Color.FromArgb(38, 47, 57);
			this.dashboardVPNSettings.lnkPromo.LinkColor = Color.FromArgb(28, 158, 27);
			this.dashboardDNSSettings.pnlPromo.BackColor = Color.FromArgb(240, 240, 240);
			this.dashboardDNSSettings.lblVersion.ForeColor = Color.FromArgb(38, 47, 57);
			this.dashboardDNSSettings.lnkPromo.LinkColor = Color.FromArgb(28, 158, 27);
			this.dashboardSupport.pnlPromo.BackColor = Color.FromArgb(240, 240, 240);
			this.dashboardSupport.lblVersion.ForeColor = Color.FromArgb(38, 47, 57);
			this.dashboardSupport.lnkPromo.LinkColor = Color.FromArgb(28, 158, 27);
			this.dashboardAccount.pnlPromo.BackColor = Color.FromArgb(240, 240, 240);
			this.dashboardAccount.lblVersion.ForeColor = Color.FromArgb(38, 47, 57);
			this.dashboardAccount.lnkPromo.LinkColor = Color.FromArgb(28, 158, 27);
		}

		public static string GetURLData(string URL)
		{
			string result;
			try
			{
				HttpWebRequest expr_0B = (HttpWebRequest)WebRequest.Create(URL);
				expr_0B.UserAgent = "WinAIO v2";
				expr_0B.Timeout = 5000;
				result = new StreamReader(expr_0B.GetResponse().GetResponseStream()).ReadToEnd();
			}
			catch
			{
				result = string.Empty;
			}
			return result;
		}

		private string ParseReleaseNotes(string releaseNotes)
		{
			string text = string.Empty;
			try
			{
				string uRLData = MainForm.GetURLData(releaseNotes);
				if (uRLData != null && uRLData != string.Empty)
				{
					HtmlDocument expr_28 = new HtmlDocument();
					expr_28.LoadHtml(uRLData);
					HtmlNode htmlNode = expr_28.get_DocumentNode().Descendants("body").FirstOrDefault<HtmlNode>();
					if (htmlNode != null)
					{
						using (IEnumerator<HtmlNode> enumerator = htmlNode.Descendants("ul").GetEnumerator())
						{
							while (enumerator.MoveNext())
							{
								foreach (HtmlNode current in enumerator.Current.Descendants("li"))
								{
									text = text + current.get_InnerHtml() + "\n";
								}
								text += "\n";
							}
						}
					}
				}
				text = text.Trim();
			}
			catch
			{
				this.logger.log("error reading Release notes");
			}
			return text;
		}

		private string ParseReleaseNotes_DeRepus(string releaseNotes)
		{
			string text = string.Empty;
			HtmlWeb htmlWeb = new HtmlWeb();
			try
			{
				HtmlNode htmlNode = htmlWeb.Load(releaseNotes).get_DocumentNode().Descendants("body").FirstOrDefault<HtmlNode>();
				if (htmlNode != null)
				{
					using (IEnumerator<HtmlNode> enumerator = htmlNode.Descendants("ul").GetEnumerator())
					{
						while (enumerator.MoveNext())
						{
							foreach (HtmlNode current in enumerator.Current.Descendants("li"))
							{
								text = text + current.get_InnerHtml() + "\n";
							}
							text += "\n";
						}
					}
				}
				text = text.Trim();
			}
			catch
			{
			}
			return text;
		}

		private void AutoUpdaterOnCheckForUpdateEvent(UpdateInfoEventArgs args)
		{
			if (args != null)
			{
				if (args.get_IsUpdateAvailable())
				{
					this.UpdateLblVersionAsync(true, args.get_ChangelogURL());
					return;
				}
			}
			else if (this.btnUpdateWasClicked)
			{
				this.helper.MessageBoxShow("There is a problem reaching update server please check your internet connection and try again later.", "Update check failed", 1, true, true);
			}
		}

		private void UpdateLblVersionAsync(bool beforeUpdate, string releaseNotes)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.UpdateLblVersion(beforeUpdate, releaseNotes);
				}));
				return;
			}
			this.UpdateLblVersion(beforeUpdate, releaseNotes);
		}

		private void UpdateLblVersionShortAsync(string releaseNotes)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.UpdateLblVersionShort(releaseNotes);
				}));
				return;
			}
			this.UpdateLblVersionShort(releaseNotes);
		}

		private void UpdatKBShortAsync(string kb)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.UpdateKB(kb);
				}));
				return;
			}
			this.UpdateKB(kb);
		}

		private void UpdateKB(string knowledgebase)
		{
			this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\base2.txt";
			string text = string.Empty;
			this.pnlKB.Controls.Clear();
			text = this.ParseKnowledgeBase(knowledgebase);
			MatchCollection matchCollection = Regex.Matches(text, "comm1 ");
			if (matchCollection.Count > 0)
			{
				text = text.Substring(0, matchCollection[0].Index);
			}
			MatchCollection matchCollection2 = Regex.Matches(text, "urrl1 ");
			MatchCollection matchCollection3 = Regex.Matches(text, " urrl2");
			MatchCollection matchCollection4 = Regex.Matches(text, "link1 ");
			MatchCollection matchCollection5 = Regex.Matches(text, " link2");
			MatchCollection matchCollection6 = Regex.Matches(text, "heab1 ");
			MatchCollection matchCollection7 = Regex.Matches(text, " heab2");
			IList<Tuple<string>> list = new List<Tuple<string>>();
			IList<Tuple<string, int, string, string>> list2 = new List<Tuple<string, int, string, string>>();
			this.urlList_New = new List<Tuple<string, int, string, string>>();
			for (int i = 0; i < matchCollection4.Count; i++)
			{
				int num = matchCollection4[i].Index + 6;
				int index = matchCollection5[i].Index;
				string item = text.Substring(num, index - num);
				list.Add(Tuple.Create<string>(item));
			}
			int num2 = 0;
			for (int j = 0; j < matchCollection2.Count; j++)
			{
				int num3 = matchCollection2[j].Index + 6 - num2;
				int num4 = matchCollection3[j].Index - num2;
				string item2 = text.Substring(num3, num4 - num3);
				this.urlList_New.Add(Tuple.Create<string, int, string, string>("link", num3, item2, list[j].Item1));
			}
			for (int k = 0; k < matchCollection6.Count; k++)
			{
				int num5 = matchCollection6[k].Index + 6;
				int index2 = matchCollection7[k].Index;
				string item3 = text.Substring(num5, index2 - num5);
				this.urlList_New.Add(Tuple.Create<string, int, string, string>("header", num5, item3, string.Empty));
			}
			IEnumerable<Tuple<string, int, string, string>> arg_22F_0 = this.urlList_New;
			Func<Tuple<string, int, string, string>, int> arg_22F_1;
			if ((arg_22F_1 = MainForm.<>c.<>9__955_0) == null)
			{
				arg_22F_1 = (MainForm.<>c.<>9__955_0 = new Func<Tuple<string, int, string, string>, int>(MainForm.<>c.<>9.<UpdateKB>b__955_0));
			}
			List<Tuple<string, int, string, string>> list3 = arg_22F_0.OrderBy(arg_22F_1).ToList<Tuple<string, int, string, string>>();
			for (int l = 0; l < list3.Count; l++)
			{
				list2.Add(Tuple.Create<string, int, string, string>(list3[l].Item1, list3[l].Item2, list3[l].Item3, list3[l].Item4));
			}
			int num6 = 0;
			for (int m = 0; m < list2.Count; m++)
			{
				if (list2[m].Item1 == "link")
				{
					this.CreateLinkLabel(list2[m].Item4, list2[m].Item3, m * 20 + num6 * 20);
				}
				else if (list2[m].Item1 == "header")
				{
					if (m > 0)
					{
						if (list2[m - 1].Item1 == "link")
						{
							num6++;
							this.CreateLabel(list2[m].Item3, m * 20 + num6 * 20);
						}
						else
						{
							this.CreateLabel(list2[m].Item3, m * 20 + num6 * 20);
						}
					}
					else
					{
						this.CreateLabel(list2[m].Item3, m * 20);
					}
				}
			}
		}

		private string ParseKnowledgeBase(string knowledgebase)
		{
			string text = string.Empty;
			string text2 = string.Empty;
			try
			{
				text2 = MainForm.GetURLData(knowledgebase);
				if (text2 != null && text2 != string.Empty)
				{
					HtmlDocument expr_2E = new HtmlDocument();
					expr_2E.LoadHtml(text2);
					HtmlNode htmlNode = expr_2E.get_DocumentNode().Descendants("body").FirstOrDefault<HtmlNode>();
					if (htmlNode != null)
					{
						using (IEnumerator<HtmlNode> enumerator = htmlNode.Descendants("ul").GetEnumerator())
						{
							while (enumerator.MoveNext())
							{
								foreach (HtmlNode current in enumerator.Current.Descendants("li"))
								{
									text = text + current.get_InnerHtml() + "\n";
								}
							}
						}
						text += "\n";
					}
				}
				text = text.Trim();
			}
			catch
			{
				this.logger.log("error reading Release notes");
			}
			return text;
		}

		private void CreateLabel(string text, int locationY)
		{
			Label label = new Label();
			label.Text = text;
			label.AutoSize = true;
			label.Size = new Size(text.Length, 20);
			label.Font = new Font("Segoe UI", 10f, FontStyle.Bold);
			label.Location = new Point(10, locationY);
			this.pnlKB.Controls.Add(label);
		}

		private void CreateLinkLabel(string text, string url, int locationY)
		{
			LinkLabel linkLabel = new LinkLabel();
			linkLabel.Text = text;
			linkLabel.AutoSize = true;
			linkLabel.Size = new Size(text.Length, 20);
			linkLabel.LinkColor = this.GreenIBVPN;
			linkLabel.ForeColor = this.GreenIBVPN;
			linkLabel.LinkBehavior = LinkBehavior.NeverUnderline;
			linkLabel.Location = new Point(10, locationY);
			linkLabel.LinkClicked += delegate(object sender, LinkLabelLinkClickedEventArgs e)
			{
				Process.Start(new ProcessStartInfo(url));
			};
			this.pnlKB.Controls.Add(linkLabel);
		}

		private void btnUpdate_Click(object sender, EventArgs e)
		{
			this.btnUpdateWasClicked = true;
			if (!this.mediaWorker.IsBusy)
			{
				this.mediaWorker.RunWorkerAsync();
			}
		}

		private void GetAPINews()
		{
			ArrayList news = this.apiManager.GetNews(this.UserId, this.Password, this.ApiUrl, "getNews");
			if (news.Count > 1)
			{
				this.NewsLink = news[1].ToString();
			}
			else
			{
				this.noNews = true;
			}
			string newsText = news[0].ToString();
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.SetNewsLabels(newsText);
				}));
				return;
			}
			this.SetNewsLabels(newsText);
		}

		private void btnDownloadUpdates_Click(object sender, EventArgs e)
		{
			this.DownloadUpdate();
			this.UpdateLblVersionAsync(false, "");
		}

		private void DownloadUpdate()
		{
			if (this.dashboardSupport.lnkPromo.Visible)
			{
				try
				{
					AutoUpdater.DownloadUpdate();
				}
				catch (Exception ex)
				{
					this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 2, true, true);
				}
			}
		}

		private void chkDisableNotifications_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkDisableNotifications, "disableNotifications");
			if (this.chkDisableNotifications.get_Checked())
			{
				this.disableNotifications = true;
				return;
			}
			this.disableNotifications = false;
		}

		private void chkShowToolTips_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkShowToolTips, "disableToolTips");
			if (this.chkShowToolTips.get_Checked())
			{
				this.disableToolTips = true;
			}
			else
			{
				this.disableToolTips = false;
			}
			this.ShowToolTips();
			this.ShowButtonConnectToolTips();
		}

		private void btnRepairIpSecCertificate_Click(object sender, EventArgs e)
		{
			this.InstallIpSecCertificate(true);
		}

		private bool FoundIpsecCertificate()
		{
			X509Store x509Store = new X509Store(StoreName.AuthRoot, StoreLocation.LocalMachine);
			x509Store.Open(OpenFlags.OpenExistingOnly);
			CollectionBase arg_29_0 = x509Store.Certificates.Find(X509FindType.FindByIssuerName, "ibVPN CA", true);
			x509Store.Close();
			bool result;
			if (arg_29_0.Count != 0)
			{
				result = true;
				this.logger.log("The IPSec Certificate found.");
			}
			else
			{
				result = false;
				this.logger.log("The IPSec Certificate not found.");
			}
			return result;
		}

		private void InstallIpSecCertificate(bool fromButton)
		{
			try
			{
				string text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\script\\client.ibvpn.com.cer";
				if (File.Exists(text))
				{
					MainForm.InstallCertificate(text);
					if (fromButton)
					{
						this.helper.MessageBoxShow("The IPSec Certificate has been renewed.", "ibVPN client notification/info message", 0, true, true);
					}
					this.logger.log("The IPSec Certificate has been renewed.");
				}
				else
				{
					if (fromButton)
					{
						this.helper.MessageBoxShow("Error: The IPSec Certificate not exists.", "ibVPN client notification/info message", 0, true, true);
					}
					this.logger.log("Error: The IPSec Certificate not exists.");
				}
			}
			catch
			{
				if (fromButton)
				{
					this.helper.MessageBoxShow("Error: The IPSec Certificate renewal has failed. If you still cannot connect on IPSec, please contact support.", "ibVPN client notification/info message", 2, true, true);
				}
				this.logger.log("Error: The IPSec Certificate renewal has failed.If you still cannot connect on IPSec, please contact support.");
			}
		}

		private static void InstallCertificate(string cerFileName)
		{
			X509Certificate2 certificate = new X509Certificate2(cerFileName);
			X509Store expr_0E = new X509Store(StoreName.AuthRoot, StoreLocation.LocalMachine);
			expr_0E.Open(OpenFlags.ReadWrite);
			expr_0E.Add(certificate);
			expr_0E.Close();
		}

		private void btnRepairIpSecCertificate_Click_Obsolete_Obsolete(object sender, EventArgs e)
		{
			string text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\script\\import.bat";
			Process process = null;
			try
			{
				if (File.Exists(text))
				{
					process = this.StartTAPProcess(text);
					bool flag = false;
					int num = 5;
					do
					{
						if (!process.HasExited)
						{
							process.Refresh();
							if (process.Responding)
							{
								flag = false;
							}
							else
							{
								flag = true;
								process.Kill();
							}
						}
						num--;
						if (process.WaitForExit(1000))
						{
							break;
						}
					}
					while (num > 0);
					if (num == 0)
					{
						process.Kill();
					}
					if (process.HasExited)
					{
						if (num != 0 && !flag)
						{
							this.helper.MessageBoxShow("The IPSec Certificate has been renewed.", "ibVPN client notification/info message", 0, true, true);
						}
						else
						{
							this.helper.MessageBoxShow("Error: The IPSec Certificate renewal has failed. If you still cannot connect on IPSec, please contact support.", "ibVPN client notification/info message", 2, true, true);
						}
					}
					if (process != null)
					{
						process.Close();
					}
				}
			}
			catch (Exception ex)
			{
				if (process != null)
				{
					process.Close();
				}
				this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 2, true, true);
			}
		}

		private void btnRepairIpSecCertificate_Click_Obsolete(object sender, EventArgs e)
		{
			string text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\script\\import.bat";
			try
			{
				if (File.Exists(text))
				{
					Process process = this.StartTAPProcess(text);
					bool flag = false;
					int num = 5;
					do
					{
						if (!process.HasExited)
						{
							process.Refresh();
							if (process.Responding)
							{
								flag = false;
							}
							else
							{
								flag = true;
								process.Kill();
							}
						}
						num--;
						if (process.WaitForExit(1000))
						{
							break;
						}
					}
					while (num > 0);
					if (num == 0)
					{
						process.Kill();
					}
					if (process.HasExited)
					{
						if (num != 0 && !flag)
						{
							this.helper.MessageBoxShow("The IPSec Certificate has been renewed.", "ibVPN client notification/info message", 0, true, true);
						}
						else
						{
							this.helper.MessageBoxShow("Error: The IPSec Certificate renewal has failed. If you still cannot connect on IPSec, please contact support.", "ibVPN client notification/info message", 2, true, true);
						}
					}
				}
			}
			catch (Exception ex)
			{
				this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 2, true, true);
			}
		}

		private void btnClearLogKsw_Click(object sender, EventArgs e)
		{
			this.loggerKSW.flush();
			this.ClearKSWLogs();
		}

		private void rchBoxKSWlog_TextChanged(object sender, EventArgs e)
		{
		}

		private void btnCopyKSWLogToClipboard_Click(object sender, EventArgs e)
		{
			if (!string.IsNullOrEmpty(this.rchBoxKSWlog.Text))
			{
				try
				{
					this.GetMeText(this.rchBoxKSWlog.Text);
					this.helper.MessageBoxShow("The text has been copied to clipboard.", "ibVPN client notification/info message", 0, true, true);
				}
				catch (Exception ex)
				{
					this.helper.MessageBoxShow(ex.Message, "ibVPN client notification/info message", 0, true, true);
				}
			}
		}

		private void btnResetApp_Click(object sender, EventArgs e)
		{
			if (this.helper.MessageBoxShow("This will reset your custom settings to the application's default settings. Your settings will be lost. Are you sure you want to do that?", "ibVPN client notification/info message", 2, false, true).Yes)
			{
				this.ResetDefaultSettingsXml();
			}
		}

		private void ResetDefaultSettingsXml()
		{
			this.keyPress = true;
			XmlDocument xmlDocument = new XmlDocument();
			try
			{
				xmlDocument.Load(this.defaultXMLLocation);
				foreach (XmlNode expr_38 in xmlDocument.SelectNodes("/configuration/add"))
				{
					XmlAttribute xmlAttribute = expr_38.Attributes["key"];
					XmlAttribute xmlAttribute2 = expr_38.Attributes["value"];
					if (xmlAttribute != null && xmlAttribute.Value != "remember" && xmlAttribute.Value != "username" && xmlAttribute.Value != "password")
					{
						this.XmlWriter(xmlAttribute.Value, xmlAttribute2.Value);
					}
				}
			}
			catch
			{
				string message = "The DefaultSettings.xml file is missing from the installation folder. Please re-install the application, or contact ibVPN Support.";
				this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 1, true, true);
				Environment.Exit(1);
			}
			this.ReadInitialSettings(true);
			this.helper.MessageBoxShow("Application settings have been reset to default settings", "ibVPN client notification/info message", 0, true, true);
			this.keyPress = false;
		}

		private void btnRepairIpSecCertificate_EnabledChanged(object sender, EventArgs e)
		{
			if (this.btnRepairIpSecCertificate.Enabled)
			{
				this.btnRepairIpSecCertificate.BackColor = Color.FromArgb(37, 47, 57);
				this.pnlButtonIpsecTooltip.Visible = false;
				return;
			}
			this.btnRepairIpSecCertificate.BackColor = this.baseColor;
			this.pnlButtonIpsecTooltip.Visible = true;
			this.pnlButtonIpsecTooltip.BringToFront();
		}

		private void btnRepairOpenVPN_EnabledChanged(object sender, EventArgs e)
		{
			if (this.btnRepairOpenVPN.Enabled)
			{
				this.btnRepairOpenVPN.BackColor = Color.FromArgb(37, 47, 57);
				this.pnlButtonOpenVPNTooltip.Visible = false;
				return;
			}
			this.btnRepairOpenVPN.BackColor = this.baseColor;
			this.pnlButtonOpenVPNTooltip.Visible = true;
			this.pnlButtonOpenVPNTooltip.BringToFront();
		}

		private void btnClearLog_EnabledChanged(object sender, EventArgs e)
		{
			if (this.btnClearLog.Enabled)
			{
				this.btnClearLog.BackColor = Color.FromArgb(37, 47, 57);
				return;
			}
			this.btnClearLog.BackColor = this.baseColor;
		}

		private void chkDisableShutdown_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkDisableShutdown, "disableShutdown");
			if (this.chkDisableShutdown.get_Checked())
			{
				this.disableShutdown = true;
				return;
			}
			this.disableShutdown = false;
		}

		private void chkConfirmationKswOn_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkConfirmationKswOn, "askKswOn");
			if (this.chkConfirmationKswOn.get_Checked())
			{
				this.askKswOn = true;
				return;
			}
			this.askKswOn = false;
		}

		private void chkTestPing_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkTestPing, "testPing");
			this.pingFailed = false;
			if (this.chkTestPing.get_Checked())
			{
				this.testPing = true;
				return;
			}
			this.testPing = false;
		}

		private void chkTestPing_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkTestPing.Enabled)
			{
				this.chkTestPing.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkTestPing.CheckBoxImageChecked"));
				this.chkTestPing.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkTestPing.CheckBoxImageUnChecked"));
				return;
			}
			this.chkTestPing.set_CheckBoxImageChecked(null);
			this.chkTestPing.set_CheckBoxImageUnChecked(null);
		}

		private void MainForm_LocationChanged(object sender, EventArgs e)
		{
			this.WriteLastXLasty();
		}

		private void btnRefreshServerList_Click(object sender, EventArgs e)
		{
			this.btnWasClicked = true;
			this.resetFilters = true;
			if (this.refreshServersListContor == 0)
			{
				if (this.timerRefreshServersList != null)
				{
					this.timerRefreshServersList.Start();
				}
				this.refreshServersListContor++;
			}
			this.refreshServersListContor++;
			if (this.refreshServersListContor < 5)
			{
				this.txtSearchUV.txtSearch.TextChanged -= new EventHandler(this.txtSearchUV_TextChanged);
				this.txtSearchUV.txtSearch.Text = string.Empty;
				this.txtSearchUV.txtSearch.TextChanged += new EventHandler(this.txtSearchUV_TextChanged);
				this.btnRefreshServerList.Enabled = false;
				this.SetControlsStatusWhenNoServers(false);
				this.beforeRefreshServerName = this.dashboard.lnkServers.Text;
				this.LoadServersAPI(false);
				this.logger.log("S-a lansat LoadServersAPI - din mainform refresh");
			}
			else
			{
				string message = "You have made too many refreshes for the server list. Please try again in one hour.";
				this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 1, true, true);
			}
			this.btnWasClicked = false;
		}

		private void btnRefreshServerList_DoubleClick(object sender, EventArgs e)
		{
			this.btnRefreshServerList_Click(this, null);
		}

		private void chkStartupLaunch_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkStartupLaunch.Enabled)
			{
				this.chkStartupLaunch.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkStartupLaunch.CheckBoxImageChecked"));
				this.chkStartupLaunch.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkStartupLaunch.CheckBoxImageUnChecked"));
				return;
			}
			this.chkStartupLaunch.set_CheckBoxImageChecked(null);
			this.chkStartupLaunch.set_CheckBoxImageUnChecked(null);
		}

		private void chkStartupLaunch_Click(object sender, EventArgs e)
		{
		}

		private void chkStartupLaunch_MouseClick(object sender, MouseEventArgs e)
		{
		}

		private void AnalyticsLoginTrack(string country, string city, string freetrial)
		{
			string text = this.UserName.ToLower();
			string text2 = Assembly.GetExecutingAssembly().GetName().Version.ToString();
			if (this.Amplitude == "True")
			{
				try
				{
					this.apiManager.AmplitudeLoginTrack(text, "Login success", text, text2, country, city, freetrial);
				}
				catch
				{
				}
			}
		}

		private void AnalyticsConnectTrack(string serverName, string protocol)
		{
			if (this.Amplitude == "True")
			{
				try
				{
					this.apiManager.AmplitudeConnectTrack(this.UserName.ToLower(), "Connect", serverName, protocol);
				}
				catch
				{
				}
			}
		}

		private void AnalyticsFailedConnectTrack(string serverName, string protocol, string fce)
		{
			if (this.Amplitude == "True")
			{
				try
				{
					this.apiManager.AmplitudeFailedConnectTrack(this.UserName.ToLower(), "Failed Connect", serverName, protocol, fce);
				}
				catch
				{
				}
			}
		}

		private void FavoriteItem_Click(object sender, EventArgs e)
		{
			this.groupFavorite = true;
			this.SetActiveGroupMode("favourites");
			string text = string.Empty;
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				text = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
				this.apiManager.FavouriteGroup(this.dgvServers);
			}
			else
			{
				this.apiManager.FavouriteGroup(this.dgvServers);
				if (this.dgvServers.Rows.Count > 0)
				{
					text = this.dgvServers.Rows[0].Cells[2].Value.ToString();
				}
			}
			this.apiManager.DeleteServerRow(this.dgvServers);
			if (text != null && text != string.Empty)
			{
				this.SetGridViewSelectedItem_New(text, false, 23444, "FavoriteItem_Click");
			}
			this.SetGroupGridFlags();
			this.SetGridConnectedServerColor();
			this.groupFavorite = false;
			if (this.selectedServerLabelText != string.Empty)
			{
				this.HideRow(this.selectedServerLabelText);
				this.SetNotFoundServersVisibility();
			}
			if (this.dgvServers.RowCount > 0)
			{
				this.dgvServers.FirstDisplayedScrollingRowIndex = 0;
			}
			this.dgvServers.Focus();
			this.SetGridCurrentRow();
		}

		private void SetGridCurrentRow()
		{
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				DataGridViewRow dataGridViewRow = this.dgvServers.SelectedRows[0];
				if (dataGridViewRow != null && dataGridViewRow.Visible)
				{
					this.dgvServers.CurrentCell = this.dgvServers[2, dataGridViewRow.Index];
				}
			}
		}

		private void Continent_Click(object sender, EventArgs e)
		{
			this.groupContinent = true;
			this.SetActiveGroupMode("continent");
			string text = string.Empty;
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				text = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
				this.apiManager.ContinentGroup(this.dgvServers);
			}
			else
			{
				this.apiManager.ContinentGroup(this.dgvServers);
				if (this.dgvServers.Rows.Count > 0)
				{
					text = this.dgvServers.Rows[0].Cells[2].Value.ToString();
				}
			}
			this.apiManager.DeleteServerRow(this.dgvServers);
			if (text != null && text != string.Empty)
			{
				this.SetGridViewSelectedItem_New(text, false, 23500, "Continent_Click");
			}
			this.SetGroupGridFlags();
			this.SetGridConnectedServerColor();
			this.groupContinent = false;
			if (this.selectedServerLabelText != string.Empty)
			{
				this.HideRow(this.selectedServerLabelText);
				this.SetNotFoundServersVisibility();
			}
			if (this.dgvServers.RowCount > 0)
			{
				this.dgvServers.FirstDisplayedScrollingRowIndex = 0;
			}
			this.dgvServers.Focus();
			this.SetGridCurrentRow();
		}

		private void TORoverVPN_Click(object sender, EventArgs e)
		{
			this.NewGroupsLoad("tor");
		}

		private void NewGroupsLoad(string groupType)
		{
			this.SetActiveGroupMode(groupType);
			this.groupNewServices = true;
			string text = string.Empty;
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				text = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
				this.apiManager.NewServicesGroup(this.dgvServers, groupType);
			}
			else
			{
				this.apiManager.NewServicesGroup(this.dgvServers, groupType);
				if (this.dgvServers.Rows.Count > 0)
				{
					text = this.dgvServers.Rows[0].Cells[2].Value.ToString();
				}
			}
			this.apiManager.DeleteServerRow(this.dgvServers);
			if (text != null && text != string.Empty)
			{
				this.SetGridViewSelectedItem_New(text, false, 23553, "NewGroupsLoad");
			}
			this.SetGroupGridFlags();
			this.SetGridConnectedServerColor();
			this.groupNewServices = false;
			if (this.selectedServerLabelText != string.Empty)
			{
				this.HideRow(this.selectedServerLabelText);
				this.SetNotFoundServersVisibility();
			}
			if (this.dgvServers.RowCount > 0)
			{
				this.dgvServers.FirstDisplayedScrollingRowIndex = 0;
			}
			this.dgvServers.Focus();
			this.SetGridCurrentRow();
		}

		private void DoubleVPN_Click(object sender, EventArgs e)
		{
			this.NewGroupsLoad("double");
		}

		private void Torrent_Click(object sender, EventArgs e)
		{
			this.NewGroupsLoad("torrent");
		}

		private void Gaming_Click(object sender, EventArgs e)
		{
			this.NewGroupsLoad("gaming");
		}

		private void TestUserPackages()
		{
		}

		private void chkDebugMode_CheckedChanged(object sender, EventArgs e)
		{
			this.WriteUserSettingsFile(this.chkDisableDebugMode, "disableDebugMode");
			if (this.chkDisableDebugMode.get_Checked())
			{
				this.disableDebugMode = false;
				if (File.Exists(this.debugPath))
				{
					File.Delete(this.debugPath);
					return;
				}
			}
			else
			{
				this.disableDebugMode = true;
				this.logger.flush();
			}
		}

		private void btnRefreshServerList_EnabledChanged(object sender, EventArgs e)
		{
			if (!this.btnRefreshServerList.Enabled)
			{
				this.pnlInfoButtonDisable.Visible = true;
				this.pnlInfoButtonDisable.BringToFront();
				return;
			}
			this.pnlInfoButtonDisable.Visible = false;
		}

		private void CreateTooltips(Panel control, string text)
		{
			new ToolTip
			{
				AutoPopDelay = 5000,
				InitialDelay = 1000,
				ReshowDelay = 500,
				ShowAlways = true
			}.SetToolTip(control, text);
		}

		private void cmbDebugLevel_EnabledChanged(object sender, EventArgs e)
		{
			if (!this.cmbDebugLevel.Enabled)
			{
				this.pnlComboOpenVPNTooltip.Visible = true;
				return;
			}
			this.pnlComboOpenVPNTooltip.Visible = false;
		}

		private void rbAutomatic_EnabledChanged(object sender, EventArgs e)
		{
			if (!this.rbAutomatic.Enabled)
			{
				this.pnlProtocolTooltip.Visible = true;
				this.pnlProtocolTooltip.BringToFront();
				this.pnlProtocolTooltip.Cursor = Cursors.Hand;
				return;
			}
			this.pnlProtocolTooltip.Visible = false;
		}

		private void chkBlockAds_EnabledChanged(object sender, EventArgs e)
		{
			if (this.chkBlockAds.Enabled)
			{
				this.chkBlockAds.set_CheckBoxImageChecked((Image)this.resources.GetObject("chkBlockAds.CheckBoxImageChecked"));
				this.chkBlockAds.set_CheckBoxImageUnChecked((Image)this.resources.GetObject("chkBlockAds.CheckBoxImageUnChecked"));
				return;
			}
			this.chkBlockAds.set_CheckBoxImageChecked(null);
			this.chkBlockAds.set_CheckBoxImageUnChecked(null);
		}

		private void cmbRotatingFavourites_SelectedValueChanged(object sender, EventArgs e)
		{
			this.XmlWriter("rotatingTime", this.cmbRotatingFavourites.SelectedItem.ToString());
			this.timerRotatingFavouritesUpdate = this.GetRFTimer(this.cmbRotatingFavourites.SelectedItem.ToString());
			this.timerRotatingFavourites.Interval = this.timerRotatingFavouritesUpdate;
		}

		private void btnDeleteRoute_Click(object sender, EventArgs e, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"incepe btnDeleteRoute_Click- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			this.DeleteRoute(this.lastUrlIP, true);
		}

		private void btnDeleteDefaultRoute_Click(object sender, EventArgs e, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"incepe btnDeleteDefaultRoute_Click- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			this.DeleteDefaultRoute();
			this.existingServerRoutes.Clear();
		}

		private void btnRestoreInternet_Click(object sender, EventArgs e, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.deletedDefaultRouteFlag = false;
			this.logger.log(string.Concat(new object[]
			{
				"incepe btnRestoreInternet_Click- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			this.RestoreDefaultRoute(23741, "btnRestoreInternet_Click");
		}

		private void btnAddRoute_Click(object sender, EventArgs e, [CallerLineNumber] int lineNumber = 0, [CallerMemberName] string caller = null)
		{
			this.logger.log(string.Concat(new object[]
			{
				"incepe btnAddRoute_Click- at line ",
				lineNumber,
				" (",
				caller,
				")"
			}));
			string text = string.Empty;
			string arg_52_0 = this.dashboard.lnkServers.Text;
			string text2 = string.Empty;
			if (this.dgvServers.SelectedRows.Count > 0)
			{
				text2 = this.dgvServers.SelectedRows[0].Cells[2].Value.ToString();
			}
			if (text2 != null && text2 != string.Empty && text2 != "**** Favourites ****" && text2 != "**** Servers ****" && text2 != "Favourites" && text2 != "Servers" && text2 != "Africa" && text2 != "Asia" && text2 != "Europe" && text2 != "North America" && text2 != "Oceania" && text2 != "South America" && text2 != "Fastest Servers" && text2 != "Fastest Server" && text2 != "Fastest Favourite" && text2 != "Rotating Favourites" && text2 != "TORoverVPN Servers" && text2 != "DoubleVPN Servers" && text2 != "Torrent Servers" && text2 != "Gaming Servers")
			{
				text = this.dgvServers.SelectedRows[0].Cells[11].Value.ToString();
			}
			if (!string.IsNullOrEmpty(text))
			{
				this.AddServerRoute(text, true);
				return;
			}
			this.logger.log("nu s-a adaugat nici o route");
			this.UpdateKillSwitchLogger("Not add route");
		}

		private void btnRestoreNet_Click(object sender, EventArgs e)
		{
			this.lnkKswSet_LinkClicked(this, null);
		}

		private void swbKillSwitch_EnabledChanged(object sender, EventArgs e)
		{
			if (!this.swbKillSwitch.Enabled)
			{
				this.pnlSwbKswTooltip.Visible = true;
				return;
			}
			this.pnlSwbKswTooltip.Visible = false;
		}

		public IEnumerable<ManagementObject> GetAllAdaptors()
		{
			List<ManagementObject> list = new List<ManagementObject>();
			using (ManagementObjectCollection.ManagementObjectEnumerator enumerator = new ManagementClass("Win32_NetworkAdapterConfiguration").GetInstances().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					ManagementObject item = (ManagementObject)enumerator.Current;
					list.Add(item);
				}
			}
			return list;
		}

		private void MainForm_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Alt && e.Control && (e.KeyCode == Keys.NumPad1 || e.KeyCode == Keys.D1))
			{
				this.SetKeyDownServer(Keys.NumPad1);
				return;
			}
			if (e.Alt && e.Control && (e.KeyCode == Keys.NumPad2 || e.KeyCode == Keys.D2))
			{
				this.SetKeyDownServer(Keys.NumPad2);
				return;
			}
			if (e.Alt && e.Control && (e.KeyCode == Keys.NumPad3 || e.KeyCode == Keys.D3))
			{
				this.SetKeyDownServer(Keys.NumPad3);
				return;
			}
			if (e.Alt && e.Control && (e.KeyCode == Keys.NumPad4 || e.KeyCode == Keys.D4))
			{
				this.SetKeyDownServer(Keys.NumPad4);
				return;
			}
			if (e.Alt && e.Control && e.KeyCode == Keys.S)
			{
				this.sideNavIbVPN.set_SelectedItem(this.sniServers);
				this.sniServers_Click(this, null);
				this.tbcServers.set_SelectedTab(this.tbiUsageView);
				this.txtSearchUV.Focus();
				return;
			}
			if (e.Alt && e.Control && (e.KeyCode == Keys.NumPad0 || e.KeyCode == Keys.D0))
			{
				this.sideNavIbVPN.set_SelectedItem(this.sniServers);
				this.sniServers_Click(this, null);
				this.tbcServers.set_SelectedTab(this.tbiUsageView);
				this.btnResetFiltersUV_Click(this, null);
				this.txtSearchUV.Focus();
				return;
			}
			if (e.Alt && e.Control && e.KeyCode == Keys.Oemtilde)
			{
				this.sideNavIbVPN.set_SelectedItem(this.sniServers);
				this.sniServers_Click(this, null);
				this.tbcServers.set_SelectedTab(this.tbiUsageView);
				this.dgvServers.Focus();
				this.SetGridCurrentRow();
				return;
			}
			if (e.Alt && e.Control && e.KeyCode == Keys.P)
			{
				this.sideNavIbVPN.set_SelectedItem(this.sniServers);
				this.sniServers_Click(this, null);
				this.ViewProtocols();
				this.SetProtocolFocus();
				return;
			}
			if (e.Control && e.KeyCode == Keys.C)
			{
				if (e.Shift)
				{
					if (this.dashboard.btnConnect.Text == "DISCONNECT" && this.vpnManager.get_ConnectionStatus() == "Connected")
					{
						this.btnConnect_Click(this, null);
						return;
					}
				}
				else if (this.dashboard.btnConnect.Text == "CONNECT" && this.vpnManager.get_ConnectionStatus() == "Not Connected" && !this.dashboard.swbDNS.get_Value())
				{
					this.btnConnect_Click(this, null);
					return;
				}
			}
			else if (e.Control && e.KeyCode == Keys.D)
			{
				if (e.Shift)
				{
					if (this.dashboard.swbDNS.get_Value())
					{
						this.dashboard.swbDNS.set_Value(false);
						return;
					}
				}
				else if (!this.dashboard.swbDNS.get_Value() && this.vpnManager.get_ConnectionStatus() == "Not Connected")
				{
					this.dashboard.swbDNS.set_Value(true);
					return;
				}
			}
			else if (e.Alt && e.Control && e.KeyCode == Keys.L)
			{
				this.sideNavIbVPN.set_SelectedItem(this.sniDNSSettings);
				this.sniDNSSettings_Click(this, null);
				this.dgvDNSServers.Focus();
				if (this.dgvDNSServers.SelectedRows.Count > 0)
				{
					DataGridViewRow dataGridViewRow = this.dgvDNSServers.SelectedRows[0];
					if (dataGridViewRow != null && dataGridViewRow.Visible)
					{
						this.dgvDNSServers.CurrentCell = this.dgvDNSServers[0, dataGridViewRow.Index];
						return;
					}
				}
			}
			else
			{
				if (e.Control && (e.KeyCode == Keys.NumPad1 || e.KeyCode == Keys.D1))
				{
					this.sideNavIbVPN.set_SelectedItem(this.sniDashboard);
					this.sniDashboard_Click(this, null);
					return;
				}
				if (e.Control && (e.KeyCode == Keys.NumPad2 || e.KeyCode == Keys.D2))
				{
					this.sideNavIbVPN.set_SelectedItem(this.sniServers);
					this.sniServers_Click(this, null);
					return;
				}
				if (e.Control && (e.KeyCode == Keys.NumPad3 || e.KeyCode == Keys.D3))
				{
					this.sideNavIbVPN.set_SelectedItem(this.sniVPNSettings);
					this.sniVPNSettings_Click(this, null);
					return;
				}
				if (e.Control && (e.KeyCode == Keys.NumPad4 || e.KeyCode == Keys.D4))
				{
					this.sideNavIbVPN.set_SelectedItem(this.sniDNSSettings);
					this.sniDNSSettings_Click(this, null);
					return;
				}
				if (e.Control && (e.KeyCode == Keys.NumPad5 || e.KeyCode == Keys.D5))
				{
					this.sideNavIbVPN.set_SelectedItem(this.sniSupport);
					this.sniSupport_Click(this, null);
					return;
				}
				if (e.Control && (e.KeyCode == Keys.NumPad6 || e.KeyCode == Keys.D6))
				{
					this.sideNavIbVPN.set_SelectedItem(this.sniAccount);
					this.sniAccount_Click(this, null);
					return;
				}
				if (e.Control && (e.KeyCode == Keys.NumPad6 || e.KeyCode == Keys.Oemplus))
				{
					this.sideNavIbVPN.set_SelectedItem(this.sniLogout);
					this.sniLogout_Click(this, null);
				}
			}
		}

		private void SetProtocolFocus()
		{
			if (this.rbAutomatic.Checked)
			{
				this.rbAutomatic.Focus();
				return;
			}
			if (this.rbL2TP.Checked)
			{
				this.rbL2TP.Focus();
				return;
			}
			if (this.rbPPTP.Checked)
			{
				this.rbPPTP.Focus();
				return;
			}
			if (this.rbSSTP.Checked)
			{
				this.rbSSTP.Focus();
				return;
			}
			if (this.rbIPSec.Checked)
			{
				this.rbIPSec.Focus();
				return;
			}
			if (this.rbOpenVPN_TCP.Checked)
			{
				this.rbOpenVPN_TCP.Focus();
				return;
			}
			if (this.rbOpenVPN_UDP.Checked)
			{
				this.rbOpenVPN_UDP.Focus();
			}
		}

		private void SetKeyDownServer(Keys key)
		{
			bool flag = false;
			this.sideNavIbVPN.set_SelectedItem(this.sniServers);
			this.sniServers_Click(this, null);
			this.tbcServers.set_SelectedTab(this.tbiUsageView);
			this.dgvServers.Focus();
			DataGridViewCellEventArgs e = null;
			if (key == Keys.NumPad1)
			{
				e = new DataGridViewCellEventArgs(5, 1);
				this.SetGridViewSelectedItem_New("Fastest Server", true, 24036, "SetKeyDownServer");
			}
			else if (key == Keys.NumPad2)
			{
				e = new DataGridViewCellEventArgs(5, 2);
				this.SetGridViewSelectedItem_New("Fastest Favourite", true, 24041, "SetKeyDownServer");
			}
			else if (key == Keys.NumPad3)
			{
				e = new DataGridViewCellEventArgs(5, 3);
				this.SetGridViewSelectedItem_New("Rotating Favourites", true, 24046, "SetKeyDownServer");
			}
			else if (key == Keys.NumPad4)
			{
				string text = string.Empty;
				for (int i = 5; i < this.dgvServers.Rows.Count; i++)
				{
					text = this.dgvServers.Rows[i].Cells[2].Value.ToString();
					if (this.GetValidRowName(text) && this.dgvServers.Rows[i].Visible)
					{
						e = new DataGridViewCellEventArgs(5, i);
						i = this.dgvServers.Rows.Count + 1;
						flag = true;
					}
				}
				if (flag)
				{
					this.SetGridViewSelectedItem_New(text, true, 24069, "SetKeyDownServer");
				}
				else
				{
					this.txtSearchUV.Focus();
				}
			}
			if (flag)
			{
				this.dgvServers.CellValueChanged -= new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
				this.DgvServers_CellValueChanged(this.dgvServers, e);
				this.dgvServers.CellValueChanged += new DataGridViewCellEventHandler(this.DgvServers_CellValueChanged);
			}
			this.SetGridCurrentRow();
		}

		private void dgvDNSServers_KeyDown(object sender, KeyEventArgs e)
		{
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing && this.components != null)
			{
				this.components.Dispose();
			}
			base.Dispose(disposing);
		}

		private void InitializeComponent()
		{
			this.components = new Container();
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(MainForm));
			DataGridViewCellStyle dataGridViewCellStyle = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle2 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle3 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle4 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle5 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle6 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle7 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle8 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle9 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle10 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle11 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle12 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle13 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle14 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle15 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle16 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle17 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle18 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle19 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle20 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle21 = new DataGridViewCellStyle();
			this.spcVPNSettings = new SplitContainer();
			this.tbcVPNSettings = new TabControl();
			this.tbpPrivacy = new TabControlPanel();
			this.labelX9 = new LabelX();
			this.cmbRotatingFavourites = new ComboBoxEx();
			this.label5 = new Label();
			this.line33 = new Line();
			this.label4 = new Label();
			this.chkBlockAds = new CheckBoxX();
			this.line32 = new Line();
			this.pnlPrivacyTooltip = new Panel();
			this.label3 = new Label();
			this.chkTestPing = new CheckBoxX();
			this.line29 = new Line();
			this.label2 = new Label();
			this.line10 = new Line();
			this.line11 = new Line();
			this.line12 = new Line();
			this.line13 = new Line();
			this.lblDNSleak = new Label();
			this.chkMitmForceSecureDNSUsingFirewall = new CheckBoxX();
			this.chkMitmForceSecureDNS = new CheckBoxX();
			this.chkMitmDisableIPv6Traffic = new CheckBoxX();
			this.tbiPrivacy = new TabItem(this.components);
			this.tbpBehaviour = new TabControlPanel();
			this.chkConfirmationKswOn = new CheckBoxX();
			this.chkDisableShutdown = new CheckBoxX();
			this.btnResetApp = new ButtonX();
			this.lblGrpNotif = new LabelX();
			this.lblGrpConfir = new LabelX();
			this.lblGrpBehav = new LabelX();
			this.lblGrpStartup = new LabelX();
			this.line9 = new Line();
			this.line18 = new Line();
			this.line14 = new Line();
			this.line19 = new Line();
			this.line15 = new Line();
			this.line20 = new Line();
			this.line16 = new Line();
			this.line27 = new Line();
			this.line21 = new Line();
			this.line28 = new Line();
			this.chkShowToolTips = new CheckBoxX();
			this.chkDisableNotifications = new CheckBoxX();
			this.chkCenterWindow = new CheckBoxX();
			this.chkConfirmationChangeDNSServer = new CheckBoxX();
			this.chkConfirmationOnExit = new CheckBoxX();
			this.chkAlwaysOnTop = new CheckBoxX();
			this.chkSendToTray = new CheckBoxX();
			this.chkStartMinimized = new CheckBoxX();
			this.chkAutoReconnect = new CheckBoxX();
			this.chkAutoConnect = new CheckBoxX();
			this.chkAutoLogin = new CheckBoxX();
			this.chkStartupLaunch = new CheckBoxX();
			this.chkConfirmationChangeServer = new CheckBoxX();
			this.cmbLanguage = new ComboBoxEx();
			this.lblAppLanguage = new LabelX();
			this.tbiBehaviour = new TabItem(this.components);
			this.tbpKillSwitch = new TabControlPanel();
			this.pnlSwbKswTooltip = new Panel();
			this.label6 = new Label();
			this.btnRestoreNet = new ButtonX();
			this.rbApplicationsKsw = new RadioButton();
			this.rbInternetKsw = new RadioButton();
			this.btnCopyKSWLogToClipboard = new ButtonX();
			this.labelX8 = new LabelX();
			this.btnClearLogKsw = new ButtonX();
			this.rchBoxKSWlog = new RichTextBoxEx();
			this.line17 = new Line();
			this.line23 = new Line();
			this.line22 = new Line();
			this.line24 = new Line();
			this.lblDescKsw = new Label();
			this.label1 = new Label();
			this.lblInfoKillSwitch = new LabelX();
			this.chkAskReopenClosedApplications = new CheckBoxX();
			this.btnRestartProcesses = new ButtonX();
			this.btnKillSwitchPanel = new ButtonX();
			this.btnRemoveSelected = new ButtonX();
			this.btnProcess = new ButtonX();
			this.btnBrowse = new ButtonX();
			this.dgvKillSwitch = new DataGridViewX();
			this.KillSwitchAppColumn = new DataGridViewImageColumn();
			this.lblKillSwitch = new Label();
			this.swbKillSwitch = new SwitchButton();
			this.tbiKillSwitch = new TabItem(this.components);
			this.btnColapseVPNSettings = new ButtonX();
			this.snpServers = new SideNavPanel();
			this.spcServers = new SplitContainer();
			this.labelX6 = new LabelX();
			this.labelX7 = new LabelX();
			this.labelX5 = new LabelX();
			this.labelX4 = new LabelX();
			this.textBox3 = new TextBox();
			this.textBox4 = new TextBox();
			this.textBox2 = new TextBox();
			this.textBox1 = new TextBox();
			this.tbcServers = new TabControl();
			this.tbpUsageView = new TabControlPanel();
			this.btnRefreshServerList = new ButtonX();
			this.pnlInfoButtonDisable = new Panel();
			this.lblSelectedServerBackground = new LabelX();
			this.lblSelectedServer = new LabelX();
			this.dgvServersCopy = new DataGridViewX();
			this.dataGridViewTextBoxColumn1 = new DataGridViewTextBoxColumn();
			this.dataGridViewImageColumn1 = new DataGridViewImageColumn();
			this.dataGridViewTextBoxColumn2 = new DataGridViewTextBoxColumn();
			this.dataGridViewTextBoxColumn3 = new DataGridViewTextBoxColumn();
			this.dataGridViewCheckBoxXColumn2 = new DataGridViewCheckBoxXColumn();
			this.btnGroupBy = new ButtonX();
			this.FavoriteItem = new ButtonItem();
			this.Continent = new ButtonItem();
			this.TORoverVPN = new ButtonItem();
			this.DoubleVPN = new ButtonItem();
			this.Torrent = new ButtonItem();
			this.Gaming = new ButtonItem();
			this.btnSort = new ButtonX();
			this.btnResetFiltersUV = new ButtonX();
			this.lblSearchUV = new LabelX();
			this.buttonX39 = new ButtonX();
			this.dgvServers = new DataGridViewX();
			this.FreeBand = new DataGridViewTextBoxColumn();
			this.Country = new DataGridViewImageColumn();
			this.SeverName = new DataGridViewTextBoxColumn();
			this.ServerCountry = new DataGridViewTextBoxColumn();
			this.Favourite = new DataGridViewCheckBoxXColumn();
			this.tbiUsageView = new TabItem(this.components);
			this.tbpProtocolsList = new TabControlPanel();
			this.grpProtocols = new GroupBox();
			this.infoLblProtocolOVPNTCP = new LabelX();
			this.infoLblProtocolOVPNUDP = new LabelX();
			this.infoLblProtocolIPSEC = new LabelX();
			this.infoLblProtocolSSTP = new LabelX();
			this.infoLblProtocolPPTP = new LabelX();
			this.infoLblProtocolL2TP = new LabelX();
			this.infoLblProtocolAuto = new LabelX();
			this.rbL2TP = new RadioButton();
			this.rbAutomatic = new RadioButton();
			this.rbOpenVPN_TCP = new RadioButton();
			this.rbPPTP = new RadioButton();
			this.rbIPSec = new RadioButton();
			this.rbOpenVPN_UDP = new RadioButton();
			this.rbSSTP = new RadioButton();
			this.pnlProtocolTooltip = new Panel();
			this.tbiProtocolList = new TabItem(this.components);
			this.btnColapseServers = new ButtonX();
			this.spcDashboard = new SplitContainer();
			this.pctPromo = new PictureBox();
			this.spcAccount = new SplitContainer();
			this.tbcAccount = new TabControl();
			this.tbpAccount = new TabControlPanel();
			this.lblInfoCont = new Label();
			this.lblInfoServers = new Label();
			this.btnClientArea = new ButtonX();
			this.lblInfoClientArea = new Label();
			this.lblInfoPackage = new Label();
			this.dgvAccountServers = new DataGridViewX();
			this.dgvPackages = new DataGridViewX();
			this.tbiAccount = new TabItem(this.components);
			this.btnColapseAccount = new ButtonX();
			this.radialMenuItem3 = new RadialMenuItem();
			this.sideNavIbVPN = new SideNav();
			this.snpDashboard = new SideNavPanel();
			this.snpVPNSettings = new SideNavPanel();
			this.snpSupport = new SideNavPanel();
			this.spcSupport = new SplitContainer();
			this.tbcSupport = new TabControl();
			this.tbcContact = new TabControlPanel();
			this.btnDeleteRoute = new ButtonX();
			this.btnDeleteDefaultRoute = new ButtonX();
			this.btnRestoreInternet = new ButtonX();
			this.btnAddRoute = new ButtonX();
			this.line3 = new Line();
			this.line4 = new Line();
			this.labelX2 = new LabelX();
			this.labelX1 = new LabelX();
			this.btnSendEmail = new ButtonX();
			this.btnOpenTicket = new ButtonX();
			this.tbiContact = new TabItem(this.components);
			this.tbpSupportSettings = new TabControlPanel();
			this.lblInfoDisableDebug = new LabelX();
			this.line30 = new Line();
			this.line31 = new Line();
			this.pnlButtonIpsecTooltip = new Panel();
			this.pnlButtonOpenVPNTooltip = new Panel();
			this.pnlComboOpenVPNTooltip = new Panel();
			this.chkDisableDebugMode = new CheckBoxX();
			this.btnRepairOpenVPN = new ButtonX();
			this.btnRepairIpSecCertificate = new ButtonX();
			this.lblInfoRepairIpSecCertificate = new LabelX();
			this.lblDebugLevelInfo = new LabelX();
			this.lblDebugLevel = new LabelX();
			this.cmbDebugLevel = new ComboBoxEx();
			this.btnClearLog = new ButtonX();
			this.line1 = new Line();
			this.line5 = new Line();
			this.line2 = new Line();
			this.line8 = new Line();
			this.lblInfoRepairOpenVPN = new LabelX();
			this.lblInfoEnableLog = new LabelX();
			this.chkEnableLog = new CheckBoxX();
			this.tbiSupportSettings = new TabItem(this.components);
			this.tbpKB = new TabControlPanel();
			this.pnlKB = new Panel();
			this.lblInfoKB = new Label();
			this.tbiKB = new TabItem(this.components);
			this.tbpAutoupdater = new TabControlPanel();
			this.line7 = new Line();
			this.line6 = new Line();
			this.lblInfoNewVersion = new LabelX();
			this.lblInfoReleaseNotes = new LabelX();
			this.richTextBox1 = new RichTextBox();
			this.btnDownloadUpdates = new ButtonX();
			this.btnUpdate = new ButtonX();
			this.tbiAutoupdater = new TabItem(this.components);
			this.tbpServiceLog = new TabControlPanel();
			this.btnCopyToClipboard = new ButtonX();
			this.chkSendInfo = new CheckBoxX();
			this.txtLog = new RichTextBoxEx();
			this.tbiServiceLog = new TabItem(this.components);
			this.btnColapseSupport = new ButtonX();
			this.snpDNSSettings = new SideNavPanel();
			this.spcDNSSettings = new SplitContainer();
			this.tbcDNSSettings = new TabControl();
			this.tbpDNSSettings = new TabControlPanel();
			this.line25 = new Line();
			this.line26 = new Line();
			this.labelX3 = new LabelX();
			this.lblDescDns = new Label();
			this.dgvDNSServers = new DataGridViewX();
			this.CountryDNS = new DataGridViewImageColumn();
			this.swbIbDNS = new SwitchButton();
			this.lblIbDNS = new Label();
			this.lblInfoDNS = new Label();
			this.tbiDNSSettings = new TabItem(this.components);
			this.btnColapseDNSSettings = new ButtonX();
			this.snpAccount = new SideNavPanel();
			this.separator1 = new Separator();
			this.sniLogo = new SideNavItem();
			this.sniAccount = new SideNavItem();
			this.sniDashboard = new SideNavItem();
			this.sniServers = new SideNavItem();
			this.sniVPNSettings = new SideNavItem();
			this.sniDNSSettings = new SideNavItem();
			this.sniSupport = new SideNavItem();
			this.sniLogout = new SideNavItem();
			this.sniPromo = new SideNavItem();
			this.textBoxItem1 = new TextBoxItem();
			this.styleManager1 = new StyleManager(this.components);
			this.colorPickerDropDown1 = new ColorPickerDropDown();
			this.colorPickerDropDown2 = new ColorPickerDropDown();
			this.imageList1 = new ImageList(this.components);
			this.notifyIconIbVPN = new NotifyIcon(this.components);
			this.dataGridViewCheckBoxXColumn1 = new DataGridViewCheckBoxXColumn();
			this.imageList2 = new ImageList(this.components);
			this.txtSearchUV = new FilterBoxUserControl();
			((ISupportInitialize)this.spcVPNSettings).BeginInit();
			this.spcVPNSettings.Panel2.SuspendLayout();
			this.spcVPNSettings.SuspendLayout();
			this.tbcVPNSettings.BeginInit();
			this.tbcVPNSettings.SuspendLayout();
			this.tbpPrivacy.SuspendLayout();
			this.tbpBehaviour.SuspendLayout();
			this.tbpKillSwitch.SuspendLayout();
			this.dgvKillSwitch.BeginInit();
			this.snpServers.SuspendLayout();
			((ISupportInitialize)this.spcServers).BeginInit();
			this.spcServers.Panel1.SuspendLayout();
			this.spcServers.Panel2.SuspendLayout();
			this.spcServers.SuspendLayout();
			this.tbcServers.BeginInit();
			this.tbcServers.SuspendLayout();
			this.tbpUsageView.SuspendLayout();
			this.dgvServersCopy.BeginInit();
			this.dgvServers.BeginInit();
			this.tbpProtocolsList.SuspendLayout();
			this.grpProtocols.SuspendLayout();
			((ISupportInitialize)this.spcDashboard).BeginInit();
			this.spcDashboard.Panel1.SuspendLayout();
			this.spcDashboard.SuspendLayout();
			((ISupportInitialize)this.pctPromo).BeginInit();
			((ISupportInitialize)this.spcAccount).BeginInit();
			this.spcAccount.Panel2.SuspendLayout();
			this.spcAccount.SuspendLayout();
			this.tbcAccount.BeginInit();
			this.tbcAccount.SuspendLayout();
			this.tbpAccount.SuspendLayout();
			this.dgvAccountServers.BeginInit();
			this.dgvPackages.BeginInit();
			this.sideNavIbVPN.SuspendLayout();
			this.snpDashboard.SuspendLayout();
			this.snpVPNSettings.SuspendLayout();
			this.snpSupport.SuspendLayout();
			((ISupportInitialize)this.spcSupport).BeginInit();
			this.spcSupport.Panel2.SuspendLayout();
			this.spcSupport.SuspendLayout();
			this.tbcSupport.BeginInit();
			this.tbcSupport.SuspendLayout();
			this.tbcContact.SuspendLayout();
			this.tbpSupportSettings.SuspendLayout();
			this.tbpKB.SuspendLayout();
			this.pnlKB.SuspendLayout();
			this.tbpAutoupdater.SuspendLayout();
			this.tbpServiceLog.SuspendLayout();
			this.snpDNSSettings.SuspendLayout();
			((ISupportInitialize)this.spcDNSSettings).BeginInit();
			this.spcDNSSettings.Panel2.SuspendLayout();
			this.spcDNSSettings.SuspendLayout();
			this.tbcDNSSettings.BeginInit();
			this.tbcDNSSettings.SuspendLayout();
			this.tbpDNSSettings.SuspendLayout();
			this.dgvDNSServers.BeginInit();
			this.snpAccount.SuspendLayout();
			base.SuspendLayout();
			this.spcVPNSettings.BackColor = Color.FromArgb(247, 247, 247);
			componentResourceManager.ApplyResources(this.spcVPNSettings, "spcVPNSettings");
			this.spcVPNSettings.FixedPanel = FixedPanel.Panel1;
			this.spcVPNSettings.Name = "spcVPNSettings";
			this.spcVPNSettings.Panel1.BackColor = Color.FromArgb(247, 247, 247);
			this.spcVPNSettings.Panel2.BackColor = Color.FromArgb(247, 247, 247);
			this.spcVPNSettings.Panel2.Controls.Add(this.tbcVPNSettings);
			this.spcVPNSettings.Panel2.Controls.Add(this.btnColapseVPNSettings);
			this.tbcVPNSettings.BackColor = Color.Transparent;
			this.tbcVPNSettings.set_CanReorderTabs(false);
			this.tbcVPNSettings.set_CloseButtonOnTabsAlwaysDisplayed(false);
			this.tbcVPNSettings.get_ColorScheme().set_TabBackground(Color.FromArgb(247, 247, 247));
			this.tbcVPNSettings.get_ColorScheme().set_TabBackground2(Color.FromArgb(247, 247, 247));
			this.tbcVPNSettings.get_ColorScheme().set_TabBorder(Color.Transparent);
			this.tbcVPNSettings.get_ColorScheme().set_TabItemBackground(Color.FromArgb(242, 242, 242));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemBackground2(Color.FromArgb(242, 242, 242));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemBorder(Color.Empty);
			this.tbcVPNSettings.get_ColorScheme().set_TabItemBorderDark(Color.Empty);
			this.tbcVPNSettings.get_ColorScheme().set_TabItemBorderLight(Color.Empty);
			this.tbcVPNSettings.get_ColorScheme().set_TabItemHotBackground(Color.WhiteSmoke);
			this.tbcVPNSettings.get_ColorScheme().set_TabItemHotBackground2(Color.WhiteSmoke);
			this.tbcVPNSettings.get_ColorScheme().set_TabItemHotBorder(Color.FromArgb(250, 250, 250));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemHotBorderDark(Color.FromArgb(250, 250, 250));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemHotBorderLight(Color.FromArgb(250, 250, 250));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemHotText(Color.FromArgb(27, 158, 28));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemSelectedBackground(Color.FromArgb(238, 238, 238));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemSelectedBackground2(Color.FromArgb(238, 238, 238));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemSelectedBorder(Color.FromArgb(242, 242, 242));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemSelectedBorderDark(Color.FromArgb(242, 242, 242));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemSelectedBorderLight(Color.FromArgb(242, 242, 242));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemSelectedText(Color.FromArgb(27, 158, 28));
			this.tbcVPNSettings.get_ColorScheme().set_TabItemSeparator(Color.White);
			this.tbcVPNSettings.get_ColorScheme().set_TabItemSeparatorShade(Color.FromArgb(226, 226, 226));
			this.tbcVPNSettings.get_ColorScheme().set_TabPanelBackground(Color.FromArgb(247, 247, 247));
			this.tbcVPNSettings.get_ColorScheme().set_TabPanelBackground2(Color.FromArgb(247, 247, 247));
			this.tbcVPNSettings.get_ColorScheme().set_TabPanelBorder(Color.FromArgb(242, 242, 242));
			this.tbcVPNSettings.Controls.Add(this.tbpPrivacy);
			this.tbcVPNSettings.Controls.Add(this.tbpBehaviour);
			this.tbcVPNSettings.Controls.Add(this.tbpKillSwitch);
			this.tbcVPNSettings.Cursor = Cursors.Hand;
			componentResourceManager.ApplyResources(this.tbcVPNSettings, "tbcVPNSettings");
			this.tbcVPNSettings.set_FixedTabSize(new Size(57, 63));
			this.tbcVPNSettings.ForeColor = Color.FromArgb(153, 0, 0, 0);
			this.tbcVPNSettings.Name = "tbcVPNSettings";
			this.tbcVPNSettings.set_SelectedTabFont(new Font("Segoe UI", 9f, FontStyle.Bold));
			this.tbcVPNSettings.set_SelectedTabIndex(1);
			this.tbcVPNSettings.set_TabLayoutType(1);
			this.tbcVPNSettings.get_Tabs().Add(this.tbiPrivacy);
			this.tbcVPNSettings.get_Tabs().Add(this.tbiKillSwitch);
			this.tbcVPNSettings.get_Tabs().Add(this.tbiBehaviour);
			this.tbcVPNSettings.add_SelectedTabChanged(new TabStrip.SelectedTabChangedEventHandler(this.tbcVPNSettings_SelectedTabChanged));
			this.tbpPrivacy.AccessibleRole = AccessibleRole.PageTab;
			this.tbpPrivacy.set_CanvasColor(Color.Empty);
			this.tbpPrivacy.Controls.Add(this.labelX9);
			this.tbpPrivacy.Controls.Add(this.cmbRotatingFavourites);
			this.tbpPrivacy.Controls.Add(this.label5);
			this.tbpPrivacy.Controls.Add(this.line33);
			this.tbpPrivacy.Controls.Add(this.label4);
			this.tbpPrivacy.Controls.Add(this.chkBlockAds);
			this.tbpPrivacy.Controls.Add(this.line32);
			this.tbpPrivacy.Controls.Add(this.pnlPrivacyTooltip);
			this.tbpPrivacy.Controls.Add(this.label3);
			this.tbpPrivacy.Controls.Add(this.chkTestPing);
			this.tbpPrivacy.Controls.Add(this.line29);
			this.tbpPrivacy.Controls.Add(this.label2);
			this.tbpPrivacy.Controls.Add(this.line10);
			this.tbpPrivacy.Controls.Add(this.line11);
			this.tbpPrivacy.Controls.Add(this.line12);
			this.tbpPrivacy.Controls.Add(this.line13);
			this.tbpPrivacy.Controls.Add(this.lblDNSleak);
			this.tbpPrivacy.Controls.Add(this.chkMitmForceSecureDNSUsingFirewall);
			this.tbpPrivacy.Controls.Add(this.chkMitmForceSecureDNS);
			this.tbpPrivacy.Controls.Add(this.chkMitmDisableIPv6Traffic);
			this.tbpPrivacy.Cursor = Cursors.Default;
			this.tbpPrivacy.set_DisabledBackColor(Color.Empty);
			componentResourceManager.ApplyResources(this.tbpPrivacy, "tbpPrivacy");
			this.tbpPrivacy.Name = "tbpPrivacy";
			this.tbpPrivacy.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpPrivacy.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpPrivacy.get_Style().set_Border(1);
			this.tbpPrivacy.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbpPrivacy.get_Style().set_BorderSide(11);
			this.tbpPrivacy.get_Style().get_ForeColor().set_Color(Color.FromArgb(27, 158, 28));
			this.tbpPrivacy.get_Style().set_GradientAngle(90);
			this.tbpPrivacy.set_TabItem(this.tbiPrivacy);
			this.labelX9.AccessibleRole = AccessibleRole.StaticText;
			this.labelX9.BackColor = Color.Transparent;
			this.labelX9.get_BackgroundStyle().set_CornerType(1);
			this.labelX9.Cursor = Cursors.Default;
			componentResourceManager.ApplyResources(this.labelX9, "labelX9");
			this.labelX9.ForeColor = Color.FromArgb(100, 100, 100);
			this.labelX9.Name = "labelX9";
			this.labelX9.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.labelX9.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.cmbRotatingFavourites, "cmbRotatingFavourites");
			this.cmbRotatingFavourites.AccessibleRole = AccessibleRole.ComboBox;
			this.cmbRotatingFavourites.DisplayMember = "Text";
			this.cmbRotatingFavourites.DrawMode = DrawMode.OwnerDrawFixed;
			this.cmbRotatingFavourites.DropDownStyle = ComboBoxStyle.DropDownList;
			this.cmbRotatingFavourites.set_FocusHighlightColor(Color.Empty);
			this.cmbRotatingFavourites.ForeColor = Color.Black;
			this.cmbRotatingFavourites.FormattingEnabled = true;
			this.cmbRotatingFavourites.Name = "cmbRotatingFavourites";
			this.cmbRotatingFavourites.set_Style(9);
			this.cmbRotatingFavourites.TabStop = false;
			this.cmbRotatingFavourites.SelectedValueChanged += new EventHandler(this.cmbRotatingFavourites_SelectedValueChanged);
			componentResourceManager.ApplyResources(this.label5, "label5");
			this.label5.ForeColor = Color.FromArgb(150, 150, 150);
			this.label5.Name = "label5";
			this.line33.AccessibleRole = AccessibleRole.Separator;
			this.line33.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line33, "line33");
			this.line33.Name = "line33";
			this.line33.TabStop = false;
			componentResourceManager.ApplyResources(this.label4, "label4");
			this.label4.ForeColor = Color.FromArgb(150, 150, 150);
			this.label4.Name = "label4";
			componentResourceManager.ApplyResources(this.chkBlockAds, "chkBlockAds");
			this.chkBlockAds.AccessibleRole = AccessibleRole.CheckButton;
			this.chkBlockAds.BackColor = Color.Transparent;
			this.chkBlockAds.get_BackgroundStyle().set_CornerType(1);
			this.chkBlockAds.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkBlockAds.CheckBoxImageChecked"));
			this.chkBlockAds.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkBlockAds.CheckBoxImageUnChecked"));
			this.chkBlockAds.set_CheckSignSize(new Size(18, 18));
			this.chkBlockAds.set_FocusCuesEnabled(false);
			this.chkBlockAds.Name = "chkBlockAds";
			this.chkBlockAds.TabStop = false;
			this.chkBlockAds.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkBlockAds.add_CheckedChanged(new EventHandler(this.chkBlockAds_CheckedChanged));
			this.chkBlockAds.EnabledChanged += new EventHandler(this.chkBlockAds_EnabledChanged);
			this.line32.AccessibleRole = AccessibleRole.Separator;
			this.line32.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line32, "line32");
			this.line32.Name = "line32";
			this.line32.TabStop = false;
			this.pnlPrivacyTooltip.BackgroundImage = Resources.ico_infotip2;
			componentResourceManager.ApplyResources(this.pnlPrivacyTooltip, "pnlPrivacyTooltip");
			this.pnlPrivacyTooltip.Cursor = Cursors.Hand;
			this.pnlPrivacyTooltip.Name = "pnlPrivacyTooltip";
			componentResourceManager.ApplyResources(this.label3, "label3");
			this.label3.ForeColor = Color.FromArgb(150, 150, 150);
			this.label3.Name = "label3";
			componentResourceManager.ApplyResources(this.chkTestPing, "chkTestPing");
			this.chkTestPing.AccessibleRole = AccessibleRole.CheckButton;
			this.chkTestPing.BackColor = Color.Transparent;
			this.chkTestPing.get_BackgroundStyle().set_CornerType(1);
			this.chkTestPing.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkTestPing.CheckBoxImageChecked"));
			this.chkTestPing.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkTestPing.CheckBoxImageUnChecked"));
			this.chkTestPing.set_CheckSignSize(new Size(18, 18));
			this.chkTestPing.set_FocusCuesEnabled(false);
			this.chkTestPing.Name = "chkTestPing";
			this.chkTestPing.TabStop = false;
			this.chkTestPing.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkTestPing.add_CheckedChanged(new EventHandler(this.chkTestPing_CheckedChanged));
			this.chkTestPing.EnabledChanged += new EventHandler(this.chkTestPing_EnabledChanged);
			this.line29.AccessibleRole = AccessibleRole.ScrollBar;
			this.line29.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line29, "line29");
			this.line29.Name = "line29";
			this.line29.TabStop = false;
			componentResourceManager.ApplyResources(this.label2, "label2");
			this.label2.ForeColor = Color.FromArgb(150, 150, 150);
			this.label2.Name = "label2";
			this.line10.AccessibleRole = AccessibleRole.Separator;
			this.line10.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line10, "line10");
			this.line10.Name = "line10";
			this.line10.TabStop = false;
			this.line11.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line11, "line11");
			this.line11.Name = "line11";
			this.line11.TabStop = false;
			this.line12.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line12, "line12");
			this.line12.Name = "line12";
			this.line12.TabStop = false;
			this.line13.AccessibleRole = AccessibleRole.Separator;
			this.line13.BackColor = Color.White;
			this.line13.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line13, "line13");
			this.line13.Name = "line13";
			this.line13.TabStop = false;
			componentResourceManager.ApplyResources(this.lblDNSleak, "lblDNSleak");
			this.lblDNSleak.ForeColor = Color.FromArgb(150, 150, 150);
			this.lblDNSleak.Name = "lblDNSleak";
			componentResourceManager.ApplyResources(this.chkMitmForceSecureDNSUsingFirewall, "chkMitmForceSecureDNSUsingFirewall");
			this.chkMitmForceSecureDNSUsingFirewall.AccessibleRole = AccessibleRole.CheckButton;
			this.chkMitmForceSecureDNSUsingFirewall.BackColor = Color.Transparent;
			this.chkMitmForceSecureDNSUsingFirewall.get_BackgroundStyle().set_CornerType(1);
			this.chkMitmForceSecureDNSUsingFirewall.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkMitmForceSecureDNSUsingFirewall.CheckBoxImageChecked"));
			this.chkMitmForceSecureDNSUsingFirewall.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkMitmForceSecureDNSUsingFirewall.CheckBoxImageUnChecked"));
			this.chkMitmForceSecureDNSUsingFirewall.set_CheckSignSize(new Size(18, 18));
			this.chkMitmForceSecureDNSUsingFirewall.set_FocusCuesEnabled(false);
			this.chkMitmForceSecureDNSUsingFirewall.Name = "chkMitmForceSecureDNSUsingFirewall";
			this.chkMitmForceSecureDNSUsingFirewall.TabStop = false;
			this.chkMitmForceSecureDNSUsingFirewall.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkMitmForceSecureDNSUsingFirewall.add_CheckedChanged(new EventHandler(this.chkMitmForceSecureDNSUsingFirewall_CheckedChanged));
			this.chkMitmForceSecureDNSUsingFirewall.EnabledChanged += new EventHandler(this.chkMitmForceSecureDNSUsingFirewall_EnabledChanged);
			componentResourceManager.ApplyResources(this.chkMitmForceSecureDNS, "chkMitmForceSecureDNS");
			this.chkMitmForceSecureDNS.AccessibleRole = AccessibleRole.CheckButton;
			this.chkMitmForceSecureDNS.BackColor = Color.Transparent;
			this.chkMitmForceSecureDNS.get_BackgroundStyle().set_CornerType(1);
			this.chkMitmForceSecureDNS.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkMitmForceSecureDNS.CheckBoxImageChecked"));
			this.chkMitmForceSecureDNS.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkMitmForceSecureDNS.CheckBoxImageUnChecked"));
			this.chkMitmForceSecureDNS.set_CheckSignSize(new Size(18, 18));
			this.chkMitmForceSecureDNS.set_FocusCuesEnabled(false);
			this.chkMitmForceSecureDNS.Name = "chkMitmForceSecureDNS";
			this.chkMitmForceSecureDNS.TabStop = false;
			this.chkMitmForceSecureDNS.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkMitmForceSecureDNS.add_CheckedChanged(new EventHandler(this.chkMitmForceSecureDNS_CheckedChanged));
			this.chkMitmForceSecureDNS.EnabledChanged += new EventHandler(this.chkMitmForceSecureDNS_EnabledChanged);
			componentResourceManager.ApplyResources(this.chkMitmDisableIPv6Traffic, "chkMitmDisableIPv6Traffic");
			this.chkMitmDisableIPv6Traffic.AccessibleRole = AccessibleRole.CheckButton;
			this.chkMitmDisableIPv6Traffic.BackColor = Color.Transparent;
			this.chkMitmDisableIPv6Traffic.get_BackgroundStyle().set_CornerType(1);
			this.chkMitmDisableIPv6Traffic.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkMitmDisableIPv6Traffic.CheckBoxImageChecked"));
			this.chkMitmDisableIPv6Traffic.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkMitmDisableIPv6Traffic.CheckBoxImageUnChecked"));
			this.chkMitmDisableIPv6Traffic.set_CheckSignSize(new Size(18, 18));
			this.chkMitmDisableIPv6Traffic.set_FocusCuesEnabled(false);
			this.chkMitmDisableIPv6Traffic.Name = "chkMitmDisableIPv6Traffic";
			this.chkMitmDisableIPv6Traffic.TabStop = false;
			this.chkMitmDisableIPv6Traffic.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkMitmDisableIPv6Traffic.EnabledChanged += new EventHandler(this.chkMitmDisableIPv6Traffic_EnabledChanged);
			this.tbiPrivacy.set_AttachedControl(this.tbpPrivacy);
			this.tbiPrivacy.set_BackColor(Color.FromArgb(247, 247, 247));
			this.tbiPrivacy.set_Image(Resources.tab_set_privacy);
			this.tbiPrivacy.set_Name("tbiPrivacy");
			componentResourceManager.ApplyResources(this.tbiPrivacy, "tbiPrivacy");
			this.tbpBehaviour.AccessibleRole = AccessibleRole.PageTab;
			componentResourceManager.ApplyResources(this.tbpBehaviour, "tbpBehaviour");
			this.tbpBehaviour.set_CanvasColor(Color.Empty);
			this.tbpBehaviour.Controls.Add(this.chkConfirmationKswOn);
			this.tbpBehaviour.Controls.Add(this.chkDisableShutdown);
			this.tbpBehaviour.Controls.Add(this.btnResetApp);
			this.tbpBehaviour.Controls.Add(this.lblGrpNotif);
			this.tbpBehaviour.Controls.Add(this.lblGrpConfir);
			this.tbpBehaviour.Controls.Add(this.lblGrpBehav);
			this.tbpBehaviour.Controls.Add(this.lblGrpStartup);
			this.tbpBehaviour.Controls.Add(this.line9);
			this.tbpBehaviour.Controls.Add(this.line18);
			this.tbpBehaviour.Controls.Add(this.line14);
			this.tbpBehaviour.Controls.Add(this.line19);
			this.tbpBehaviour.Controls.Add(this.line15);
			this.tbpBehaviour.Controls.Add(this.line20);
			this.tbpBehaviour.Controls.Add(this.line16);
			this.tbpBehaviour.Controls.Add(this.line27);
			this.tbpBehaviour.Controls.Add(this.line21);
			this.tbpBehaviour.Controls.Add(this.line28);
			this.tbpBehaviour.Controls.Add(this.chkShowToolTips);
			this.tbpBehaviour.Controls.Add(this.chkDisableNotifications);
			this.tbpBehaviour.Controls.Add(this.chkCenterWindow);
			this.tbpBehaviour.Controls.Add(this.chkConfirmationChangeDNSServer);
			this.tbpBehaviour.Controls.Add(this.chkConfirmationOnExit);
			this.tbpBehaviour.Controls.Add(this.chkAlwaysOnTop);
			this.tbpBehaviour.Controls.Add(this.chkSendToTray);
			this.tbpBehaviour.Controls.Add(this.chkStartMinimized);
			this.tbpBehaviour.Controls.Add(this.chkAutoReconnect);
			this.tbpBehaviour.Controls.Add(this.chkAutoConnect);
			this.tbpBehaviour.Controls.Add(this.chkAutoLogin);
			this.tbpBehaviour.Controls.Add(this.chkStartupLaunch);
			this.tbpBehaviour.Controls.Add(this.chkConfirmationChangeServer);
			this.tbpBehaviour.Controls.Add(this.cmbLanguage);
			this.tbpBehaviour.Controls.Add(this.lblAppLanguage);
			this.tbpBehaviour.Cursor = Cursors.Default;
			this.tbpBehaviour.set_DisabledBackColor(Color.Empty);
			this.tbpBehaviour.Name = "tbpBehaviour";
			this.tbpBehaviour.set_ScrollBarAppearance(1);
			this.tbpBehaviour.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpBehaviour.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpBehaviour.get_Style().set_Border(1);
			this.tbpBehaviour.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbpBehaviour.get_Style().set_BorderSide(11);
			this.tbpBehaviour.get_Style().set_BorderWidth(0);
			this.tbpBehaviour.get_Style().set_Font(new Font("Segoe UI", 72f, FontStyle.Regular, GraphicsUnit.Pixel));
			this.tbpBehaviour.get_Style().get_ForeColor().set_Color(Color.FromArgb(27, 158, 28));
			this.tbpBehaviour.get_Style().set_GradientAngle(90);
			this.tbpBehaviour.get_StyleMouseDown().set_Font(new Font("Segoe UI", 72f, FontStyle.Regular, GraphicsUnit.Point, 0));
			this.tbpBehaviour.get_StyleMouseOver().set_Font(new Font("Segoe UI", 72f, FontStyle.Regular, GraphicsUnit.Point, 0));
			this.tbpBehaviour.set_TabItem(this.tbiBehaviour);
			componentResourceManager.ApplyResources(this.chkConfirmationKswOn, "chkConfirmationKswOn");
			this.chkConfirmationKswOn.AccessibleRole = AccessibleRole.CheckButton;
			this.chkConfirmationKswOn.BackColor = Color.Transparent;
			this.chkConfirmationKswOn.get_BackgroundStyle().set_CornerType(1);
			this.chkConfirmationKswOn.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkConfirmationKswOn.CheckBoxImageChecked"));
			this.chkConfirmationKswOn.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkConfirmationKswOn.CheckBoxImageUnChecked"));
			this.chkConfirmationKswOn.set_CheckSignSize(new Size(18, 18));
			this.chkConfirmationKswOn.set_FocusCuesEnabled(false);
			this.chkConfirmationKswOn.Name = "chkConfirmationKswOn";
			this.chkConfirmationKswOn.TabStop = false;
			this.chkConfirmationKswOn.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkConfirmationKswOn.add_CheckedChanged(new EventHandler(this.chkConfirmationKswOn_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkDisableShutdown, "chkDisableShutdown");
			this.chkDisableShutdown.AccessibleRole = AccessibleRole.CheckButton;
			this.chkDisableShutdown.BackColor = Color.Transparent;
			this.chkDisableShutdown.get_BackgroundStyle().set_CornerType(1);
			this.chkDisableShutdown.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkDisableShutdown.CheckBoxImageChecked"));
			this.chkDisableShutdown.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkDisableShutdown.CheckBoxImageUnChecked"));
			this.chkDisableShutdown.set_CheckSignSize(new Size(18, 18));
			this.chkDisableShutdown.set_FocusCuesEnabled(false);
			this.chkDisableShutdown.Name = "chkDisableShutdown";
			this.chkDisableShutdown.TabStop = false;
			this.chkDisableShutdown.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkDisableShutdown.add_CheckedChanged(new EventHandler(this.chkDisableShutdown_CheckedChanged));
			this.btnResetApp.AccessibleRole = AccessibleRole.PushButton;
			this.btnResetApp.BackColor = Color.FromArgb(38, 47, 57);
			this.btnResetApp.set_ColorTable(0);
			this.btnResetApp.Cursor = Cursors.Hand;
			componentResourceManager.ApplyResources(this.btnResetApp, "btnResetApp");
			this.btnResetApp.Name = "btnResetApp";
			this.btnResetApp.set_Style(9);
			this.btnResetApp.set_TextColor(Color.White);
			this.btnResetApp.Click += new EventHandler(this.btnResetApp_Click);
			componentResourceManager.ApplyResources(this.lblGrpNotif, "lblGrpNotif");
			this.lblGrpNotif.AccessibleRole = AccessibleRole.None;
			this.lblGrpNotif.BackColor = Color.Transparent;
			this.lblGrpNotif.get_BackgroundStyle().set_CornerType(1);
			this.lblGrpNotif.ForeColor = Color.FromArgb(150, 150, 150);
			this.lblGrpNotif.Name = "lblGrpNotif";
			this.lblGrpNotif.set_TextAlignment(StringAlignment.Far);
			componentResourceManager.ApplyResources(this.lblGrpConfir, "lblGrpConfir");
			this.lblGrpConfir.AccessibleRole = AccessibleRole.None;
			this.lblGrpConfir.BackColor = Color.Transparent;
			this.lblGrpConfir.get_BackgroundStyle().set_CornerType(1);
			this.lblGrpConfir.ForeColor = Color.FromArgb(150, 150, 150);
			this.lblGrpConfir.Name = "lblGrpConfir";
			this.lblGrpConfir.set_TextAlignment(StringAlignment.Far);
			componentResourceManager.ApplyResources(this.lblGrpBehav, "lblGrpBehav");
			this.lblGrpBehav.AccessibleRole = AccessibleRole.None;
			this.lblGrpBehav.BackColor = Color.Transparent;
			this.lblGrpBehav.get_BackgroundStyle().set_CornerType(1);
			this.lblGrpBehav.ForeColor = Color.FromArgb(150, 150, 150);
			this.lblGrpBehav.Name = "lblGrpBehav";
			this.lblGrpBehav.set_TextAlignment(StringAlignment.Far);
			componentResourceManager.ApplyResources(this.lblGrpStartup, "lblGrpStartup");
			this.lblGrpStartup.AccessibleRole = AccessibleRole.None;
			this.lblGrpStartup.BackColor = Color.Transparent;
			this.lblGrpStartup.get_BackgroundStyle().set_CornerType(1);
			this.lblGrpStartup.ForeColor = Color.FromArgb(150, 150, 150);
			this.lblGrpStartup.Name = "lblGrpStartup";
			this.lblGrpStartup.set_TextAlignment(StringAlignment.Far);
			this.line9.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line9, "line9");
			this.line9.Name = "line9";
			this.line18.AccessibleRole = AccessibleRole.Separator;
			this.line18.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line18, "line18");
			this.line18.Name = "line18";
			this.line18.TabStop = false;
			this.line14.BackColor = Color.Transparent;
			this.line14.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line14, "line14");
			this.line14.Name = "line14";
			this.line14.TabStop = false;
			this.line19.AccessibleRole = AccessibleRole.Separator;
			this.line19.BackColor = Color.Transparent;
			this.line19.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line19, "line19");
			this.line19.Name = "line19";
			this.line19.TabStop = false;
			this.line15.BackColor = Color.Transparent;
			this.line15.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line15, "line15");
			this.line15.Name = "line15";
			this.line15.TabStop = false;
			this.line20.BackColor = Color.Transparent;
			this.line20.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line20, "line20");
			this.line20.Name = "line20";
			this.line20.TabStop = false;
			this.line16.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line16, "line16");
			this.line16.Name = "line16";
			this.line16.TabStop = false;
			this.line27.AccessibleRole = AccessibleRole.Separator;
			this.line27.BackColor = Color.Transparent;
			this.line27.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line27, "line27");
			this.line27.Name = "line27";
			this.line27.TabStop = false;
			this.line21.BackColor = Color.Transparent;
			this.line21.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line21, "line21");
			this.line21.Name = "line21";
			this.line21.TabStop = false;
			this.line28.BackColor = Color.Transparent;
			this.line28.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line28, "line28");
			this.line28.Name = "line28";
			this.line28.TabStop = false;
			componentResourceManager.ApplyResources(this.chkShowToolTips, "chkShowToolTips");
			this.chkShowToolTips.AccessibleRole = AccessibleRole.CheckButton;
			this.chkShowToolTips.BackColor = Color.Transparent;
			this.chkShowToolTips.get_BackgroundStyle().set_CornerType(1);
			this.chkShowToolTips.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkShowToolTips.CheckBoxImageChecked"));
			this.chkShowToolTips.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkShowToolTips.CheckBoxImageUnChecked"));
			this.chkShowToolTips.set_CheckSignSize(new Size(18, 18));
			this.chkShowToolTips.set_FocusCuesEnabled(false);
			this.chkShowToolTips.Name = "chkShowToolTips";
			this.chkShowToolTips.TabStop = false;
			this.chkShowToolTips.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkShowToolTips.add_CheckedChanged(new EventHandler(this.chkShowToolTips_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkDisableNotifications, "chkDisableNotifications");
			this.chkDisableNotifications.AccessibleRole = AccessibleRole.CheckButton;
			this.chkDisableNotifications.BackColor = Color.Transparent;
			this.chkDisableNotifications.get_BackgroundStyle().set_CornerType(1);
			this.chkDisableNotifications.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkDisableNotifications.CheckBoxImageChecked"));
			this.chkDisableNotifications.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkDisableNotifications.CheckBoxImageUnChecked"));
			this.chkDisableNotifications.set_CheckSignSize(new Size(18, 18));
			this.chkDisableNotifications.set_FocusCuesEnabled(false);
			this.chkDisableNotifications.Name = "chkDisableNotifications";
			this.chkDisableNotifications.TabStop = false;
			this.chkDisableNotifications.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkDisableNotifications.add_CheckedChanged(new EventHandler(this.chkDisableNotifications_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkCenterWindow, "chkCenterWindow");
			this.chkCenterWindow.AccessibleRole = AccessibleRole.CheckButton;
			this.chkCenterWindow.BackColor = Color.Transparent;
			this.chkCenterWindow.get_BackgroundStyle().set_CornerType(1);
			this.chkCenterWindow.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkCenterWindow.CheckBoxImageChecked"));
			this.chkCenterWindow.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkCenterWindow.CheckBoxImageUnChecked"));
			this.chkCenterWindow.set_CheckSignSize(new Size(18, 18));
			this.chkCenterWindow.set_FocusCuesEnabled(false);
			this.chkCenterWindow.Name = "chkCenterWindow";
			this.chkCenterWindow.TabStop = false;
			this.chkCenterWindow.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkCenterWindow.add_CheckedChanged(new EventHandler(this.chkCenterWindow_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkConfirmationChangeDNSServer, "chkConfirmationChangeDNSServer");
			this.chkConfirmationChangeDNSServer.AccessibleRole = AccessibleRole.CheckButton;
			this.chkConfirmationChangeDNSServer.BackColor = Color.Transparent;
			this.chkConfirmationChangeDNSServer.get_BackgroundStyle().set_CornerType(1);
			this.chkConfirmationChangeDNSServer.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkConfirmationChangeDNSServer.CheckBoxImageChecked"));
			this.chkConfirmationChangeDNSServer.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkConfirmationChangeDNSServer.CheckBoxImageUnChecked"));
			this.chkConfirmationChangeDNSServer.set_CheckSignSize(new Size(18, 18));
			this.chkConfirmationChangeDNSServer.set_FocusCuesEnabled(false);
			this.chkConfirmationChangeDNSServer.Name = "chkConfirmationChangeDNSServer";
			this.chkConfirmationChangeDNSServer.TabStop = false;
			this.chkConfirmationChangeDNSServer.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkConfirmationChangeDNSServer.add_CheckedChanged(new EventHandler(this.chkConfirmationChangeServer_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkConfirmationOnExit, "chkConfirmationOnExit");
			this.chkConfirmationOnExit.AccessibleRole = AccessibleRole.CheckButton;
			this.chkConfirmationOnExit.BackColor = Color.Transparent;
			this.chkConfirmationOnExit.get_BackgroundStyle().set_CornerType(1);
			this.chkConfirmationOnExit.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkConfirmationOnExit.CheckBoxImageChecked"));
			this.chkConfirmationOnExit.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkConfirmationOnExit.CheckBoxImageUnChecked"));
			this.chkConfirmationOnExit.set_CheckSignSize(new Size(18, 18));
			this.chkConfirmationOnExit.set_FocusCuesEnabled(false);
			this.chkConfirmationOnExit.Name = "chkConfirmationOnExit";
			this.chkConfirmationOnExit.TabStop = false;
			this.chkConfirmationOnExit.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkConfirmationOnExit.add_CheckedChanged(new EventHandler(this.checkBoxX8_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkAlwaysOnTop, "chkAlwaysOnTop");
			this.chkAlwaysOnTop.AccessibleRole = AccessibleRole.CheckButton;
			this.chkAlwaysOnTop.BackColor = Color.Transparent;
			this.chkAlwaysOnTop.get_BackgroundStyle().set_CornerType(1);
			this.chkAlwaysOnTop.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkAlwaysOnTop.CheckBoxImageChecked"));
			this.chkAlwaysOnTop.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkAlwaysOnTop.CheckBoxImageUnChecked"));
			this.chkAlwaysOnTop.set_CheckSignSize(new Size(18, 18));
			this.chkAlwaysOnTop.set_FocusCuesEnabled(false);
			this.chkAlwaysOnTop.Name = "chkAlwaysOnTop";
			this.chkAlwaysOnTop.TabStop = false;
			this.chkAlwaysOnTop.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkAlwaysOnTop.add_CheckedChanged(new EventHandler(this.chkAlwaysOnTop_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkSendToTray, "chkSendToTray");
			this.chkSendToTray.AccessibleRole = AccessibleRole.CheckButton;
			this.chkSendToTray.BackColor = Color.Transparent;
			this.chkSendToTray.get_BackgroundStyle().set_CornerType(1);
			this.chkSendToTray.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkSendToTray.CheckBoxImageChecked"));
			this.chkSendToTray.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkSendToTray.CheckBoxImageUnChecked"));
			this.chkSendToTray.set_CheckSignSize(new Size(18, 18));
			this.chkSendToTray.set_FocusCuesEnabled(false);
			this.chkSendToTray.Name = "chkSendToTray";
			this.chkSendToTray.TabStop = false;
			this.chkSendToTray.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkSendToTray.add_CheckedChanged(new EventHandler(this.checkBoxX6_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkStartMinimized, "chkStartMinimized");
			this.chkStartMinimized.AccessibleRole = AccessibleRole.CheckButton;
			this.chkStartMinimized.BackColor = Color.Transparent;
			this.chkStartMinimized.get_BackgroundStyle().set_CornerType(1);
			this.chkStartMinimized.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkStartMinimized.CheckBoxImageChecked"));
			this.chkStartMinimized.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkStartMinimized.CheckBoxImageUnChecked"));
			this.chkStartMinimized.set_CheckSignSize(new Size(18, 18));
			this.chkStartMinimized.set_FocusCuesEnabled(false);
			this.chkStartMinimized.Name = "chkStartMinimized";
			this.chkStartMinimized.TabStop = false;
			this.chkStartMinimized.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkStartMinimized.add_CheckedChanged(new EventHandler(this.checkBoxX5_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkAutoReconnect, "chkAutoReconnect");
			this.chkAutoReconnect.AccessibleRole = AccessibleRole.CheckButton;
			this.chkAutoReconnect.BackColor = Color.Transparent;
			this.chkAutoReconnect.get_BackgroundStyle().set_CornerType(1);
			this.chkAutoReconnect.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkAutoReconnect.CheckBoxImageChecked"));
			this.chkAutoReconnect.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkAutoReconnect.CheckBoxImageUnChecked"));
			this.chkAutoReconnect.set_CheckSignSize(new Size(18, 18));
			this.chkAutoReconnect.set_FocusCuesEnabled(false);
			this.chkAutoReconnect.Name = "chkAutoReconnect";
			this.chkAutoReconnect.TabStop = false;
			this.chkAutoReconnect.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkAutoReconnect.add_CheckedChanged(new EventHandler(this.checkBoxX4_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkAutoConnect, "chkAutoConnect");
			this.chkAutoConnect.AccessibleRole = AccessibleRole.CheckButton;
			this.chkAutoConnect.BackColor = Color.Transparent;
			this.chkAutoConnect.get_BackgroundStyle().set_CornerType(1);
			this.chkAutoConnect.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkAutoConnect.CheckBoxImageChecked"));
			this.chkAutoConnect.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkAutoConnect.CheckBoxImageUnChecked"));
			this.chkAutoConnect.set_CheckSignSize(new Size(18, 18));
			this.chkAutoConnect.set_FocusCuesEnabled(false);
			this.chkAutoConnect.Name = "chkAutoConnect";
			this.chkAutoConnect.TabStop = false;
			this.chkAutoConnect.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkAutoConnect.add_CheckedChanged(new EventHandler(this.checkBoxX3_CheckedChanged));
			this.chkAutoConnect.EnabledChanged += new EventHandler(this.checkBoxX3_EnabledChanged);
			componentResourceManager.ApplyResources(this.chkAutoLogin, "chkAutoLogin");
			this.chkAutoLogin.AccessibleRole = AccessibleRole.CheckButton;
			this.chkAutoLogin.BackColor = Color.Transparent;
			this.chkAutoLogin.get_BackgroundStyle().set_CornerType(1);
			this.chkAutoLogin.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkAutoLogin.CheckBoxImageChecked"));
			this.chkAutoLogin.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkAutoLogin.CheckBoxImageUnChecked"));
			this.chkAutoLogin.set_CheckSignSize(new Size(18, 18));
			this.chkAutoLogin.set_FocusCuesEnabled(false);
			this.chkAutoLogin.Name = "chkAutoLogin";
			this.chkAutoLogin.TabStop = false;
			this.chkAutoLogin.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkAutoLogin.add_CheckedChanged(new EventHandler(this.checkBoxX2_CheckedChanged));
			componentResourceManager.ApplyResources(this.chkStartupLaunch, "chkStartupLaunch");
			this.chkStartupLaunch.AccessibleRole = AccessibleRole.CheckButton;
			this.chkStartupLaunch.BackColor = Color.Transparent;
			this.chkStartupLaunch.get_BackgroundStyle().set_CornerType(1);
			this.chkStartupLaunch.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkStartupLaunch.CheckBoxImageChecked"));
			this.chkStartupLaunch.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkStartupLaunch.CheckBoxImageUnChecked"));
			this.chkStartupLaunch.set_CheckSignSize(new Size(18, 18));
			this.chkStartupLaunch.set_FocusCuesEnabled(false);
			this.chkStartupLaunch.Name = "chkStartupLaunch";
			this.chkStartupLaunch.TabStop = false;
			this.chkStartupLaunch.Tag = "";
			this.chkStartupLaunch.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkStartupLaunch.add_CheckedChanged(new EventHandler(this.chkStartupLaunch_CheckedChanged));
			this.chkStartupLaunch.EnabledChanged += new EventHandler(this.chkStartupLaunch_EnabledChanged);
			this.chkStartupLaunch.Click += new EventHandler(this.chkStartupLaunch_Click);
			this.chkStartupLaunch.MouseClick += new MouseEventHandler(this.chkStartupLaunch_MouseClick);
			componentResourceManager.ApplyResources(this.chkConfirmationChangeServer, "chkConfirmationChangeServer");
			this.chkConfirmationChangeServer.AccessibleRole = AccessibleRole.CheckButton;
			this.chkConfirmationChangeServer.BackColor = Color.Transparent;
			this.chkConfirmationChangeServer.get_BackgroundStyle().set_CornerType(1);
			this.chkConfirmationChangeServer.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkConfirmationChangeServer.CheckBoxImageChecked"));
			this.chkConfirmationChangeServer.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkConfirmationChangeServer.CheckBoxImageUnChecked"));
			this.chkConfirmationChangeServer.set_CheckSignSize(new Size(18, 18));
			this.chkConfirmationChangeServer.set_FocusCuesEnabled(false);
			this.chkConfirmationChangeServer.Name = "chkConfirmationChangeServer";
			this.chkConfirmationChangeServer.TabStop = false;
			this.chkConfirmationChangeServer.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkConfirmationChangeServer.add_CheckedChanged(new EventHandler(this.chkChangeServer_CheckedChanged));
			this.chkConfirmationChangeServer.EnabledChanged += new EventHandler(this.chkChangeServer_EnabledChanged);
			componentResourceManager.ApplyResources(this.cmbLanguage, "cmbLanguage");
			this.cmbLanguage.AccessibleRole = AccessibleRole.ComboBox;
			this.cmbLanguage.DisplayMember = "Text";
			this.cmbLanguage.DrawMode = DrawMode.OwnerDrawFixed;
			this.cmbLanguage.DropDownStyle = ComboBoxStyle.DropDownList;
			this.cmbLanguage.ForeColor = Color.Black;
			this.cmbLanguage.FormattingEnabled = true;
			this.cmbLanguage.Name = "cmbLanguage";
			this.cmbLanguage.set_Style(9);
			this.cmbLanguage.set_WatermarkColor(Color.White);
			this.cmbLanguage.SelectedIndexChanged += new EventHandler(this.comboBoxEx2_SelectedIndexChanged);
			componentResourceManager.ApplyResources(this.lblAppLanguage, "lblAppLanguage");
			this.lblAppLanguage.AccessibleRole = AccessibleRole.None;
			this.lblAppLanguage.BackColor = Color.Transparent;
			this.lblAppLanguage.get_BackgroundStyle().set_CornerType(1);
			this.lblAppLanguage.ForeColor = Color.FromArgb(150, 150, 150);
			this.lblAppLanguage.Name = "lblAppLanguage";
			this.lblAppLanguage.set_TextAlignment(StringAlignment.Far);
			this.tbiBehaviour.set_AttachedControl(this.tbpBehaviour);
			this.tbiBehaviour.set_BackColor(Color.FromArgb(247, 247, 247));
			this.tbiBehaviour.set_Image(Resources.tab_set_behaviour);
			this.tbiBehaviour.set_Name("tbiBehaviour");
			componentResourceManager.ApplyResources(this.tbiBehaviour, "tbiBehaviour");
			componentResourceManager.ApplyResources(this.tbpKillSwitch, "tbpKillSwitch");
			this.tbpKillSwitch.AccessibleRole = AccessibleRole.PageTab;
			this.tbpKillSwitch.set_CanvasColor(Color.Empty);
			this.tbpKillSwitch.Controls.Add(this.pnlSwbKswTooltip);
			this.tbpKillSwitch.Controls.Add(this.label6);
			this.tbpKillSwitch.Controls.Add(this.btnRestoreNet);
			this.tbpKillSwitch.Controls.Add(this.rbApplicationsKsw);
			this.tbpKillSwitch.Controls.Add(this.rbInternetKsw);
			this.tbpKillSwitch.Controls.Add(this.btnCopyKSWLogToClipboard);
			this.tbpKillSwitch.Controls.Add(this.labelX8);
			this.tbpKillSwitch.Controls.Add(this.btnClearLogKsw);
			this.tbpKillSwitch.Controls.Add(this.rchBoxKSWlog);
			this.tbpKillSwitch.Controls.Add(this.line17);
			this.tbpKillSwitch.Controls.Add(this.line23);
			this.tbpKillSwitch.Controls.Add(this.line22);
			this.tbpKillSwitch.Controls.Add(this.line24);
			this.tbpKillSwitch.Controls.Add(this.lblDescKsw);
			this.tbpKillSwitch.Controls.Add(this.label1);
			this.tbpKillSwitch.Controls.Add(this.lblInfoKillSwitch);
			this.tbpKillSwitch.Controls.Add(this.chkAskReopenClosedApplications);
			this.tbpKillSwitch.Controls.Add(this.btnRestartProcesses);
			this.tbpKillSwitch.Controls.Add(this.btnKillSwitchPanel);
			this.tbpKillSwitch.Controls.Add(this.btnRemoveSelected);
			this.tbpKillSwitch.Controls.Add(this.btnProcess);
			this.tbpKillSwitch.Controls.Add(this.btnBrowse);
			this.tbpKillSwitch.Controls.Add(this.dgvKillSwitch);
			this.tbpKillSwitch.Controls.Add(this.lblKillSwitch);
			this.tbpKillSwitch.Controls.Add(this.swbKillSwitch);
			this.tbpKillSwitch.Cursor = Cursors.Default;
			this.tbpKillSwitch.set_DisabledBackColor(Color.Empty);
			this.tbpKillSwitch.Name = "tbpKillSwitch";
			this.tbpKillSwitch.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpKillSwitch.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpKillSwitch.get_Style().set_Border(1);
			this.tbpKillSwitch.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbpKillSwitch.get_Style().set_BorderSide(11);
			this.tbpKillSwitch.get_Style().set_GradientAngle(90);
			this.tbpKillSwitch.set_TabItem(this.tbiKillSwitch);
			componentResourceManager.ApplyResources(this.pnlSwbKswTooltip, "pnlSwbKswTooltip");
			this.pnlSwbKswTooltip.AccessibleRole = AccessibleRole.HelpBalloon;
			this.pnlSwbKswTooltip.BackgroundImage = Resources.ico_infotip2;
			this.pnlSwbKswTooltip.Cursor = Cursors.Hand;
			this.pnlSwbKswTooltip.Name = "pnlSwbKswTooltip";
			componentResourceManager.ApplyResources(this.label6, "label6");
			this.label6.AccessibleRole = AccessibleRole.Text;
			this.label6.BackColor = Color.Transparent;
			this.label6.ForeColor = Color.FromArgb(130, 130, 130);
			this.label6.Name = "label6";
			componentResourceManager.ApplyResources(this.btnRestoreNet, "btnRestoreNet");
			this.btnRestoreNet.AccessibleRole = AccessibleRole.PushButton;
			this.btnRestoreNet.BackColor = Color.FromArgb(38, 47, 57);
			this.btnRestoreNet.set_ColorTable(0);
			this.btnRestoreNet.Cursor = Cursors.Hand;
			this.btnRestoreNet.Name = "btnRestoreNet";
			this.btnRestoreNet.set_Style(9);
			this.btnRestoreNet.set_TextColor(Color.White);
			this.btnRestoreNet.Click += new EventHandler(this.btnRestoreNet_Click);
			componentResourceManager.ApplyResources(this.rbApplicationsKsw, "rbApplicationsKsw");
			this.rbApplicationsKsw.AccessibleRole = AccessibleRole.RadioButton;
			this.rbApplicationsKsw.Name = "rbApplicationsKsw";
			this.rbApplicationsKsw.UseVisualStyleBackColor = true;
			componentResourceManager.ApplyResources(this.rbInternetKsw, "rbInternetKsw");
			this.rbInternetKsw.AccessibleRole = AccessibleRole.RadioButton;
			this.rbInternetKsw.Name = "rbInternetKsw";
			this.rbInternetKsw.UseVisualStyleBackColor = true;
			componentResourceManager.ApplyResources(this.btnCopyKSWLogToClipboard, "btnCopyKSWLogToClipboard");
			this.btnCopyKSWLogToClipboard.AccessibleRole = AccessibleRole.PushButton;
			this.btnCopyKSWLogToClipboard.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCopyKSWLogToClipboard.set_ColorTable(0);
			this.btnCopyKSWLogToClipboard.Cursor = Cursors.Hand;
			this.btnCopyKSWLogToClipboard.Name = "btnCopyKSWLogToClipboard";
			this.btnCopyKSWLogToClipboard.set_Style(9);
			this.btnCopyKSWLogToClipboard.set_TextColor(Color.White);
			this.btnCopyKSWLogToClipboard.Click += new EventHandler(this.btnCopyKSWLogToClipboard_Click);
			this.labelX8.BackColor = Color.Transparent;
			this.labelX8.get_BackgroundStyle().set_CornerType(1);
			this.labelX8.Cursor = Cursors.Default;
			componentResourceManager.ApplyResources(this.labelX8, "labelX8");
			this.labelX8.ForeColor = Color.FromArgb(38, 47, 57);
			this.labelX8.Name = "labelX8";
			this.labelX8.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			this.labelX8.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.btnClearLogKsw, "btnClearLogKsw");
			this.btnClearLogKsw.AccessibleRole = AccessibleRole.PushButton;
			this.btnClearLogKsw.BackColor = Color.FromArgb(38, 47, 57);
			this.btnClearLogKsw.set_ColorTable(0);
			this.btnClearLogKsw.Cursor = Cursors.Hand;
			this.btnClearLogKsw.Name = "btnClearLogKsw";
			this.btnClearLogKsw.set_Style(9);
			this.btnClearLogKsw.set_TextColor(Color.White);
			this.btnClearLogKsw.Click += new EventHandler(this.btnClearLogKsw_Click);
			componentResourceManager.ApplyResources(this.rchBoxKSWlog, "rchBoxKSWlog");
			this.rchBoxKSWlog.AccessibleRole = AccessibleRole.Dialog;
			this.rchBoxKSWlog.BackColor = Color.FromArgb(242, 242, 242);
			this.rchBoxKSWlog.get_BackgroundStyle().set_CornerType(1);
			this.rchBoxKSWlog.Cursor = Cursors.Arrow;
			this.rchBoxKSWlog.ForeColor = Color.FromArgb(38, 47, 57);
			this.rchBoxKSWlog.Name = "rchBoxKSWlog";
			this.rchBoxKSWlog.set_ReadOnly(true);
			this.rchBoxKSWlog.set_Rtf("{\\rtf1\\ansi\\ansicpg1252\\deff0{\\fonttbl{\\f0\\fnil\\fcharset0 Courier New;}}\r\n{\\colortbl ;\\red38\\green47\\blue57;}\r\n\\viewkind4\\uc1\\pard\\cf1\\lang1033\\f0\\fs17 Feature not available .\\par\r\n}\r\n");
			this.rchBoxKSWlog.TextChanged += new EventHandler(this.rchBoxKSWlog_TextChanged);
			this.line17.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line17, "line17");
			this.line17.Name = "line17";
			this.line17.TabStop = false;
			this.line23.AccessibleRole = AccessibleRole.Separator;
			this.line23.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line23, "line23");
			this.line23.Name = "line23";
			this.line23.TabStop = false;
			this.line22.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line22, "line22");
			this.line22.Name = "line22";
			this.line22.TabStop = false;
			this.line24.AccessibleRole = AccessibleRole.Separator;
			this.line24.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line24, "line24");
			this.line24.Name = "line24";
			this.line24.TabStop = false;
			this.lblDescKsw.BackColor = Color.Transparent;
			this.lblDescKsw.ForeColor = Color.FromArgb(130, 130, 130);
			componentResourceManager.ApplyResources(this.lblDescKsw, "lblDescKsw");
			this.lblDescKsw.Name = "lblDescKsw";
			this.label1.BackColor = Color.Transparent;
			this.label1.Cursor = Cursors.Default;
			this.label1.ForeColor = Color.FromArgb(130, 130, 130);
			componentResourceManager.ApplyResources(this.label1, "label1");
			this.label1.Name = "label1";
			this.lblInfoKillSwitch.BackColor = Color.Transparent;
			this.lblInfoKillSwitch.get_BackgroundStyle().set_CornerType(1);
			this.lblInfoKillSwitch.Cursor = Cursors.Default;
			componentResourceManager.ApplyResources(this.lblInfoKillSwitch, "lblInfoKillSwitch");
			this.lblInfoKillSwitch.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblInfoKillSwitch.Name = "lblInfoKillSwitch";
			this.lblInfoKillSwitch.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			this.lblInfoKillSwitch.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.chkAskReopenClosedApplications, "chkAskReopenClosedApplications");
			this.chkAskReopenClosedApplications.AccessibleRole = AccessibleRole.CheckButton;
			this.chkAskReopenClosedApplications.BackColor = Color.Transparent;
			this.chkAskReopenClosedApplications.get_BackgroundStyle().set_CornerType(1);
			this.chkAskReopenClosedApplications.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkAskReopenClosedApplications.CheckBoxImageChecked"));
			this.chkAskReopenClosedApplications.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkAskReopenClosedApplications.CheckBoxImageUnChecked"));
			this.chkAskReopenClosedApplications.set_CheckSignSize(new Size(18, 18));
			this.chkAskReopenClosedApplications.set_FocusCuesEnabled(false);
			this.chkAskReopenClosedApplications.Name = "chkAskReopenClosedApplications";
			this.chkAskReopenClosedApplications.TabStop = false;
			this.chkAskReopenClosedApplications.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkAskReopenClosedApplications.add_CheckedChanged(new EventHandler(this.chkAskReopenClosedApplications_CheckedChanged));
			this.chkAskReopenClosedApplications.EnabledChanged += new EventHandler(this.chkAskReopenClosedApplications_EnabledChanged);
			this.btnRestartProcesses.AccessibleRole = AccessibleRole.PushButton;
			this.btnRestartProcesses.set_AntiAlias(true);
			this.btnRestartProcesses.BackColor = Color.IndianRed;
			this.btnRestartProcesses.set_ColorTable(0);
			this.btnRestartProcesses.Cursor = Cursors.Hand;
			this.btnRestartProcesses.set_DisabledImagesGrayScale(false);
			this.btnRestartProcesses.set_FadeEffect(false);
			this.btnRestartProcesses.set_FocusCuesEnabled(false);
			componentResourceManager.ApplyResources(this.btnRestartProcesses, "btnRestartProcesses");
			this.btnRestartProcesses.Name = "btnRestartProcesses";
			this.btnRestartProcesses.TabStop = false;
			this.btnRestartProcesses.set_TextColor(Color.White);
			this.btnRestartProcesses.Click += new EventHandler(this.btnRestartProcesses_Click);
			this.btnKillSwitchPanel.AccessibleRole = AccessibleRole.PushButton;
			this.btnKillSwitchPanel.set_AntiAlias(true);
			this.btnKillSwitchPanel.BackColor = Color.IndianRed;
			this.btnKillSwitchPanel.set_ColorTable(0);
			this.btnKillSwitchPanel.Cursor = Cursors.Hand;
			this.btnKillSwitchPanel.set_DisabledImagesGrayScale(false);
			this.btnKillSwitchPanel.set_FadeEffect(false);
			this.btnKillSwitchPanel.set_FocusCuesEnabled(false);
			componentResourceManager.ApplyResources(this.btnKillSwitchPanel, "btnKillSwitchPanel");
			this.btnKillSwitchPanel.Name = "btnKillSwitchPanel";
			this.btnKillSwitchPanel.TabStop = false;
			this.btnKillSwitchPanel.set_TextColor(Color.White);
			this.btnKillSwitchPanel.Click += new EventHandler(this.btnKillSwitchPanel_Click);
			componentResourceManager.ApplyResources(this.btnRemoveSelected, "btnRemoveSelected");
			this.btnRemoveSelected.AccessibleRole = AccessibleRole.PushButton;
			this.btnRemoveSelected.set_AntiAlias(true);
			this.btnRemoveSelected.BackColor = Color.FromArgb(38, 47, 57);
			this.btnRemoveSelected.set_ColorTable(0);
			this.btnRemoveSelected.Cursor = Cursors.Hand;
			this.btnRemoveSelected.set_DisabledImagesGrayScale(false);
			this.btnRemoveSelected.set_FadeEffect(false);
			this.btnRemoveSelected.set_FocusCuesEnabled(false);
			this.btnRemoveSelected.Name = "btnRemoveSelected";
			this.btnRemoveSelected.TabStop = false;
			this.btnRemoveSelected.set_TextColor(Color.White);
			this.btnRemoveSelected.Click += new EventHandler(this.btnRemoveSelected_Click);
			componentResourceManager.ApplyResources(this.btnProcess, "btnProcess");
			this.btnProcess.AccessibleRole = AccessibleRole.PushButton;
			this.btnProcess.set_AntiAlias(true);
			this.btnProcess.BackColor = Color.FromArgb(38, 47, 57);
			this.btnProcess.set_ColorTable(0);
			this.btnProcess.Cursor = Cursors.Hand;
			this.btnProcess.set_DisabledImagesGrayScale(false);
			this.btnProcess.set_FadeEffect(false);
			this.btnProcess.set_FocusCuesEnabled(false);
			this.btnProcess.Name = "btnProcess";
			this.btnProcess.TabStop = false;
			this.btnProcess.set_TextColor(Color.White);
			this.btnProcess.Click += new EventHandler(this.btnProcess_Click);
			componentResourceManager.ApplyResources(this.btnBrowse, "btnBrowse");
			this.btnBrowse.AccessibleRole = AccessibleRole.PushButton;
			this.btnBrowse.set_AntiAlias(true);
			this.btnBrowse.BackColor = Color.FromArgb(38, 47, 57);
			this.btnBrowse.set_ColorTable(0);
			this.btnBrowse.Cursor = Cursors.Hand;
			this.btnBrowse.set_DisabledImagesGrayScale(false);
			this.btnBrowse.set_FadeEffect(false);
			this.btnBrowse.set_FocusCuesEnabled(false);
			this.btnBrowse.Name = "btnBrowse";
			this.btnBrowse.TabStop = false;
			this.btnBrowse.set_TextColor(Color.White);
			this.btnBrowse.Click += new EventHandler(this.btnBrowse_Click);
			componentResourceManager.ApplyResources(this.dgvKillSwitch, "dgvKillSwitch");
			this.dgvKillSwitch.AccessibleRole = AccessibleRole.List;
			this.dgvKillSwitch.BackgroundColor = Color.FromArgb(242, 242, 242);
			this.dgvKillSwitch.BorderStyle = BorderStyle.None;
			dataGridViewCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle.BackColor = SystemColors.Control;
			dataGridViewCellStyle.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle.ForeColor = Color.Black;
			dataGridViewCellStyle.SelectionForeColor = Color.Black;
			dataGridViewCellStyle.WrapMode = DataGridViewTriState.True;
			this.dgvKillSwitch.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle;
			this.dgvKillSwitch.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
			this.dgvKillSwitch.Columns.AddRange(new DataGridViewColumn[]
			{
				this.KillSwitchAppColumn
			});
			this.dgvKillSwitch.Cursor = Cursors.Default;
			dataGridViewCellStyle2.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle2.BackColor = Color.FromArgb(242, 242, 242);
			dataGridViewCellStyle2.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle2.ForeColor = Color.Black;
			dataGridViewCellStyle2.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle2.SelectionForeColor = Color.White;
			dataGridViewCellStyle2.WrapMode = DataGridViewTriState.False;
			this.dgvKillSwitch.DefaultCellStyle = dataGridViewCellStyle2;
			this.dgvKillSwitch.EnableHeadersVisualStyles = false;
			this.dgvKillSwitch.GridColor = Color.FromArgb(157, 157, 157);
			this.dgvKillSwitch.set_HighlightSelectedColumnHeaders(false);
			this.dgvKillSwitch.MultiSelect = false;
			this.dgvKillSwitch.Name = "dgvKillSwitch";
			dataGridViewCellStyle3.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle3.BackColor = SystemColors.Control;
			dataGridViewCellStyle3.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle3.ForeColor = Color.Black;
			dataGridViewCellStyle3.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle3.SelectionForeColor = Color.Black;
			dataGridViewCellStyle3.WrapMode = DataGridViewTriState.True;
			this.dgvKillSwitch.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
			this.dgvKillSwitch.RowTemplate.DefaultCellStyle.Font = new Font("Segoe UI", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.dgvKillSwitch.RowTemplate.DefaultCellStyle.SelectionBackColor = Color.White;
			this.dgvKillSwitch.RowTemplate.Height = 35;
			this.dgvKillSwitch.RowTemplate.ReadOnly = true;
			this.dgvKillSwitch.RowTemplate.Resizable = DataGridViewTriState.False;
			this.dgvKillSwitch.Paint += new PaintEventHandler(this.dgvKillSwitch_Paint);
			componentResourceManager.ApplyResources(this.KillSwitchAppColumn, "KillSwitchAppColumn");
			this.KillSwitchAppColumn.Name = "KillSwitchAppColumn";
			this.KillSwitchAppColumn.ReadOnly = true;
			this.KillSwitchAppColumn.Resizable = DataGridViewTriState.True;
			this.KillSwitchAppColumn.SortMode = DataGridViewColumnSortMode.Automatic;
			componentResourceManager.ApplyResources(this.lblKillSwitch, "lblKillSwitch");
			this.lblKillSwitch.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblKillSwitch.Name = "lblKillSwitch";
			componentResourceManager.ApplyResources(this.swbKillSwitch, "swbKillSwitch");
			this.swbKillSwitch.AccessibleRole = AccessibleRole.PushButton;
			this.swbKillSwitch.BackColor = Color.White;
			this.swbKillSwitch.get_BackgroundStyle().set_CornerType(2);
			this.swbKillSwitch.Cursor = Cursors.Hand;
			this.swbKillSwitch.set_FocusCuesEnabled(false);
			this.swbKillSwitch.Name = "swbKillSwitch";
			this.swbKillSwitch.set_OffBackColor(Color.FromArgb(130, 130, 130));
			this.swbKillSwitch.set_OffTextColor(Color.White);
			this.swbKillSwitch.set_OnBackColor(Color.FromArgb(28, 158, 27));
			this.swbKillSwitch.set_OnTextColor(Color.White);
			this.swbKillSwitch.set_ReadOnlyMarkerColor(Color.FromArgb(255, 0, 64));
			this.swbKillSwitch.set_Style(9);
			this.swbKillSwitch.set_SwitchBackColor(Color.FromArgb(38, 47, 57));
			this.swbKillSwitch.set_SwitchBorderColor(Color.FromArgb(38, 47, 57));
			this.swbKillSwitch.set_SwitchClickTogglesValue(true);
			this.swbKillSwitch.set_SwitchFont(new Font("Segoe UI", 9.75f, FontStyle.Bold, GraphicsUnit.Point, 0));
			this.swbKillSwitch.set_SwitchWidth(25);
			this.swbKillSwitch.add_ValueChanged(new EventHandler(this.swbKillSwitch_ValueChanged));
			this.swbKillSwitch.EnabledChanged += new EventHandler(this.swbKillSwitch_EnabledChanged);
			this.tbiKillSwitch.set_AttachedControl(this.tbpKillSwitch);
			this.tbiKillSwitch.set_BackColor(Color.FromArgb(247, 247, 247));
			this.tbiKillSwitch.set_Image(Resources.tab_set_killSwitch);
			this.tbiKillSwitch.set_Name("tbiKillSwitch");
			componentResourceManager.ApplyResources(this.tbiKillSwitch, "tbiKillSwitch");
			this.btnColapseVPNSettings.AccessibleRole = AccessibleRole.PushButton;
			this.btnColapseVPNSettings.BackColor = Color.FromArgb(37, 47, 57);
			componentResourceManager.ApplyResources(this.btnColapseVPNSettings, "btnColapseVPNSettings");
			this.btnColapseVPNSettings.set_FocusCuesEnabled(false);
			this.btnColapseVPNSettings.Name = "btnColapseVPNSettings";
			this.btnColapseVPNSettings.set_Style(9);
			this.btnColapseVPNSettings.set_Symbol("");
			this.btnColapseVPNSettings.set_SymbolSize(12f);
			this.btnColapseVPNSettings.set_TextColor(Color.White);
			this.btnColapseVPNSettings.Click += new EventHandler(this.btnColapseVPNSettings_Click);
			this.snpServers.BackColor = Color.FromArgb(247, 247, 247);
			this.snpServers.Controls.Add(this.spcServers);
			componentResourceManager.ApplyResources(this.snpServers, "snpServers");
			this.snpServers.Name = "snpServers";
			this.spcServers.BackColor = Color.FromArgb(247, 247, 247);
			componentResourceManager.ApplyResources(this.spcServers, "spcServers");
			this.spcServers.FixedPanel = FixedPanel.Panel1;
			this.spcServers.Name = "spcServers";
			this.spcServers.Panel1.Controls.Add(this.labelX6);
			this.spcServers.Panel1.Controls.Add(this.labelX7);
			this.spcServers.Panel1.Controls.Add(this.labelX5);
			this.spcServers.Panel1.Controls.Add(this.labelX4);
			this.spcServers.Panel1.Controls.Add(this.textBox3);
			this.spcServers.Panel1.Controls.Add(this.textBox4);
			this.spcServers.Panel1.Controls.Add(this.textBox2);
			this.spcServers.Panel1.Controls.Add(this.textBox1);
			this.spcServers.Panel2.Controls.Add(this.tbcServers);
			this.spcServers.Panel2.Controls.Add(this.btnColapseServers);
			this.spcServers.TabStop = false;
			this.labelX6.get_BackgroundStyle().set_CornerType(1);
			this.labelX6.Cursor = Cursors.Arrow;
			this.labelX6.ForeColor = Color.FromArgb(61, 61, 61);
			componentResourceManager.ApplyResources(this.labelX6, "labelX6");
			this.labelX6.Name = "labelX6";
			this.labelX7.get_BackgroundStyle().set_CornerType(1);
			this.labelX7.Cursor = Cursors.Arrow;
			this.labelX7.ForeColor = Color.FromArgb(61, 61, 61);
			componentResourceManager.ApplyResources(this.labelX7, "labelX7");
			this.labelX7.Name = "labelX7";
			this.labelX5.get_BackgroundStyle().set_CornerType(1);
			this.labelX5.Cursor = Cursors.Arrow;
			this.labelX5.ForeColor = Color.FromArgb(61, 61, 61);
			componentResourceManager.ApplyResources(this.labelX5, "labelX5");
			this.labelX5.Name = "labelX5";
			this.labelX4.get_BackgroundStyle().set_CornerType(1);
			this.labelX4.Cursor = Cursors.Arrow;
			this.labelX4.ForeColor = Color.FromArgb(61, 61, 61);
			componentResourceManager.ApplyResources(this.labelX4, "labelX4");
			this.labelX4.Name = "labelX4";
			this.textBox3.BackColor = SystemColors.InactiveCaption;
			componentResourceManager.ApplyResources(this.textBox3, "textBox3");
			this.textBox3.Name = "textBox3";
			this.textBox4.BackColor = SystemColors.InactiveCaption;
			componentResourceManager.ApplyResources(this.textBox4, "textBox4");
			this.textBox4.Name = "textBox4";
			this.textBox2.BackColor = SystemColors.InactiveCaption;
			componentResourceManager.ApplyResources(this.textBox2, "textBox2");
			this.textBox2.Name = "textBox2";
			this.textBox1.BackColor = SystemColors.InactiveCaption;
			componentResourceManager.ApplyResources(this.textBox1, "textBox1");
			this.textBox1.Name = "textBox1";
			this.tbcServers.AccessibleRole = AccessibleRole.PageTab;
			this.tbcServers.BackColor = Color.Transparent;
			this.tbcServers.set_CanReorderTabs(true);
			this.tbcServers.set_CloseButtonOnTabsAlwaysDisplayed(false);
			this.tbcServers.get_ColorScheme().set_TabBackground(Color.FromArgb(247, 247, 247));
			this.tbcServers.get_ColorScheme().set_TabBackground2(Color.FromArgb(247, 247, 247));
			this.tbcServers.get_ColorScheme().set_TabBorder(Color.Transparent);
			this.tbcServers.get_ColorScheme().set_TabItemBackground(Color.FromArgb(242, 242, 242));
			this.tbcServers.get_ColorScheme().set_TabItemBackground2(Color.FromArgb(242, 242, 242));
			this.tbcServers.get_ColorScheme().set_TabItemBorder(Color.Empty);
			this.tbcServers.get_ColorScheme().set_TabItemBorderDark(Color.Empty);
			this.tbcServers.get_ColorScheme().set_TabItemBorderLight(Color.Empty);
			this.tbcServers.get_ColorScheme().set_TabItemHotBackground(Color.WhiteSmoke);
			this.tbcServers.get_ColorScheme().set_TabItemHotBackground2(Color.WhiteSmoke);
			this.tbcServers.get_ColorScheme().set_TabItemHotBorder(Color.Empty);
			this.tbcServers.get_ColorScheme().set_TabItemHotBorderDark(Color.Empty);
			this.tbcServers.get_ColorScheme().set_TabItemHotBorderLight(Color.Empty);
			this.tbcServers.get_ColorScheme().set_TabItemHotText(Color.FromArgb(61, 61, 61));
			this.tbcServers.get_ColorScheme().set_TabItemSelectedBackground(Color.FromArgb(238, 238, 238));
			this.tbcServers.get_ColorScheme().set_TabItemSelectedBackground2(Color.FromArgb(238, 238, 238));
			this.tbcServers.get_ColorScheme().set_TabItemSelectedBorder(Color.FromArgb(250, 250, 250));
			this.tbcServers.get_ColorScheme().set_TabItemSelectedBorderDark(Color.FromArgb(250, 250, 250));
			this.tbcServers.get_ColorScheme().set_TabItemSelectedBorderLight(Color.FromArgb(250, 250, 250));
			this.tbcServers.get_ColorScheme().set_TabItemSelectedText(Color.FromArgb(27, 158, 28));
			this.tbcServers.get_ColorScheme().set_TabItemSeparator(Color.White);
			this.tbcServers.get_ColorScheme().set_TabItemSeparatorShade(Color.White);
			this.tbcServers.get_ColorScheme().set_TabItemText(Color.FromArgb(61, 61, 61));
			this.tbcServers.get_ColorScheme().set_TabPanelBackground(Color.FromArgb(247, 247, 247));
			this.tbcServers.get_ColorScheme().set_TabPanelBackground2(Color.FromArgb(247, 247, 247));
			this.tbcServers.get_ColorScheme().set_TabPanelBorder(Color.FromArgb(242, 242, 242));
			this.tbcServers.Controls.Add(this.tbpUsageView);
			this.tbcServers.Controls.Add(this.tbpProtocolsList);
			this.tbcServers.Cursor = Cursors.Hand;
			componentResourceManager.ApplyResources(this.tbcServers, "tbcServers");
			this.tbcServers.set_FixedTabSize(new Size(57, 63));
			this.tbcServers.ForeColor = Color.FromArgb(61, 61, 61);
			this.tbcServers.Name = "tbcServers";
			this.tbcServers.set_SelectedTabFont(new Font("Segoe UI", 9f, FontStyle.Bold));
			this.tbcServers.set_SelectedTabIndex(1);
			this.tbcServers.set_ShowFocusRectangle(false);
			this.tbcServers.set_TabLayoutType(1);
			this.tbcServers.get_Tabs().Add(this.tbiUsageView);
			this.tbcServers.get_Tabs().Add(this.tbiProtocolList);
			this.tbcServers.add_SelectedTabChanged(new TabStrip.SelectedTabChangedEventHandler(this.tbcServers_SelectedTabChanged));
			this.tbpUsageView.set_CanvasColor(Color.Empty);
			this.tbpUsageView.Controls.Add(this.btnRefreshServerList);
			this.tbpUsageView.Controls.Add(this.pnlInfoButtonDisable);
			this.tbpUsageView.Controls.Add(this.lblSelectedServerBackground);
			this.tbpUsageView.Controls.Add(this.lblSelectedServer);
			this.tbpUsageView.Controls.Add(this.dgvServersCopy);
			this.tbpUsageView.Controls.Add(this.btnGroupBy);
			this.tbpUsageView.Controls.Add(this.btnSort);
			this.tbpUsageView.Controls.Add(this.btnResetFiltersUV);
			this.tbpUsageView.Controls.Add(this.lblSearchUV);
			this.tbpUsageView.Controls.Add(this.buttonX39);
			this.tbpUsageView.Controls.Add(this.dgvServers);
			this.tbpUsageView.Controls.Add(this.txtSearchUV);
			this.tbpUsageView.Cursor = Cursors.Default;
			this.tbpUsageView.set_DisabledBackColor(Color.Empty);
			componentResourceManager.ApplyResources(this.tbpUsageView, "tbpUsageView");
			this.tbpUsageView.Name = "tbpUsageView";
			this.tbpUsageView.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpUsageView.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpUsageView.get_Style().set_Border(1);
			this.tbpUsageView.get_Style().get_BorderColor().set_Color(Color.FromArgb(226, 226, 226));
			this.tbpUsageView.get_Style().set_BorderSide(11);
			this.tbpUsageView.get_Style().set_GradientAngle(90);
			this.tbpUsageView.set_TabItem(this.tbiUsageView);
			componentResourceManager.ApplyResources(this.btnRefreshServerList, "btnRefreshServerList");
			this.btnRefreshServerList.AccessibleRole = AccessibleRole.PushButton;
			this.btnRefreshServerList.set_AntiAlias(true);
			this.btnRefreshServerList.BackColor = Color.FromArgb(38, 47, 57);
			this.btnRefreshServerList.set_ColorTable(0);
			this.btnRefreshServerList.Cursor = Cursors.Hand;
			this.btnRefreshServerList.set_FocusCuesEnabled(false);
			this.btnRefreshServerList.Name = "btnRefreshServerList";
			this.btnRefreshServerList.set_Style(9);
			this.btnRefreshServerList.set_TextColor(Color.White);
			this.btnRefreshServerList.EnabledChanged += new EventHandler(this.btnRefreshServerList_EnabledChanged);
			this.btnRefreshServerList.Click += new EventHandler(this.btnRefreshServerList_Click);
			this.btnRefreshServerList.DoubleClick += new EventHandler(this.btnRefreshServerList_DoubleClick);
			this.pnlInfoButtonDisable.BackgroundImage = Resources.ico_infotip1;
			componentResourceManager.ApplyResources(this.pnlInfoButtonDisable, "pnlInfoButtonDisable");
			this.pnlInfoButtonDisable.Cursor = Cursors.Hand;
			this.pnlInfoButtonDisable.Name = "pnlInfoButtonDisable";
			componentResourceManager.ApplyResources(this.lblSelectedServerBackground, "lblSelectedServerBackground");
			this.lblSelectedServerBackground.BackColor = Color.DarkGray;
			this.lblSelectedServerBackground.get_BackgroundStyle().set_CornerType(1);
			this.lblSelectedServerBackground.Cursor = Cursors.Arrow;
			this.lblSelectedServerBackground.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblSelectedServerBackground.Name = "lblSelectedServerBackground";
			this.lblSelectedServerBackground.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			componentResourceManager.ApplyResources(this.lblSelectedServer, "lblSelectedServer");
			this.lblSelectedServer.BackColor = Color.DarkGray;
			this.lblSelectedServer.get_BackgroundStyle().set_CornerType(1);
			this.lblSelectedServer.Cursor = Cursors.Arrow;
			this.lblSelectedServer.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblSelectedServer.Name = "lblSelectedServer";
			this.lblSelectedServer.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			this.dgvServersCopy.AllowUserToOrderColumns = true;
			this.dgvServersCopy.BackgroundColor = Color.FromArgb(242, 242, 242);
			this.dgvServersCopy.BorderStyle = BorderStyle.None;
			dataGridViewCellStyle4.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle4.BackColor = SystemColors.Control;
			dataGridViewCellStyle4.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle4.ForeColor = Color.Black;
			dataGridViewCellStyle4.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle4.SelectionForeColor = Color.Black;
			dataGridViewCellStyle4.WrapMode = DataGridViewTriState.True;
			this.dgvServersCopy.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
			componentResourceManager.ApplyResources(this.dgvServersCopy, "dgvServersCopy");
			this.dgvServersCopy.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
			this.dgvServersCopy.Columns.AddRange(new DataGridViewColumn[]
			{
				this.dataGridViewTextBoxColumn1,
				this.dataGridViewImageColumn1,
				this.dataGridViewTextBoxColumn2,
				this.dataGridViewTextBoxColumn3,
				this.dataGridViewCheckBoxXColumn2
			});
			this.dgvServersCopy.Cursor = Cursors.Hand;
			dataGridViewCellStyle5.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle5.BackColor = Color.FromArgb(242, 242, 242);
			dataGridViewCellStyle5.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle5.ForeColor = Color.Black;
			dataGridViewCellStyle5.Padding = new Padding(0, 2, 0, 0);
			dataGridViewCellStyle5.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle5.SelectionForeColor = Color.White;
			dataGridViewCellStyle5.WrapMode = DataGridViewTriState.False;
			this.dgvServersCopy.DefaultCellStyle = dataGridViewCellStyle5;
			this.dgvServersCopy.EnableHeadersVisualStyles = false;
			this.dgvServersCopy.GridColor = Color.FromArgb(157, 157, 157);
			this.dgvServersCopy.Name = "dgvServersCopy";
			dataGridViewCellStyle6.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle6.BackColor = SystemColors.Control;
			dataGridViewCellStyle6.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle6.ForeColor = Color.Black;
			dataGridViewCellStyle6.SelectionBackColor = Color.FromArgb(253, 187, 47);
			dataGridViewCellStyle6.SelectionForeColor = Color.Black;
			dataGridViewCellStyle6.WrapMode = DataGridViewTriState.True;
			this.dgvServersCopy.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
			this.dgvServersCopy.RowTemplate.DefaultCellStyle.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.dgvServersCopy.RowTemplate.Height = 30;
			this.dgvServersCopy.RowTemplate.Resizable = DataGridViewTriState.False;
			this.dataGridViewTextBoxColumn1.DataPropertyName = "ServerFreePercent";
			componentResourceManager.ApplyResources(this.dataGridViewTextBoxColumn1, "dataGridViewTextBoxColumn1");
			this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
			this.dataGridViewTextBoxColumn1.ReadOnly = true;
			componentResourceManager.ApplyResources(this.dataGridViewImageColumn1, "dataGridViewImageColumn1");
			this.dataGridViewImageColumn1.Name = "dataGridViewImageColumn1";
			this.dataGridViewImageColumn1.Resizable = DataGridViewTriState.True;
			this.dataGridViewTextBoxColumn2.DataPropertyName = "ServerName";
			componentResourceManager.ApplyResources(this.dataGridViewTextBoxColumn2, "dataGridViewTextBoxColumn2");
			this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
			this.dataGridViewTextBoxColumn3.DataPropertyName = "ServerCountry";
			componentResourceManager.ApplyResources(this.dataGridViewTextBoxColumn3, "dataGridViewTextBoxColumn3");
			this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
			this.dataGridViewCheckBoxXColumn2.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("dataGridViewCheckBoxXColumn2.CheckBoxImageChecked"));
			this.dataGridViewCheckBoxXColumn2.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("dataGridViewCheckBoxXColumn2.CheckBoxImageUnChecked"));
			this.dataGridViewCheckBoxXColumn2.set_Checked(true);
			this.dataGridViewCheckBoxXColumn2.set_CheckState(CheckState.Indeterminate);
			this.dataGridViewCheckBoxXColumn2.set_CheckValue("True");
			this.dataGridViewCheckBoxXColumn2.set_CheckValueChecked("True");
			this.dataGridViewCheckBoxXColumn2.set_CheckValueIndeterminate("True");
			this.dataGridViewCheckBoxXColumn2.set_CheckValueUnchecked("False");
			this.dataGridViewCheckBoxXColumn2.DataPropertyName = "Favourite";
			dataGridViewCellStyle7.Alignment = DataGridViewContentAlignment.MiddleCenter;
			dataGridViewCellStyle7.WrapMode = DataGridViewTriState.False;
			this.dataGridViewCheckBoxXColumn2.DefaultCellStyle = dataGridViewCellStyle7;
			componentResourceManager.ApplyResources(this.dataGridViewCheckBoxXColumn2, "dataGridViewCheckBoxXColumn2");
			this.dataGridViewCheckBoxXColumn2.Name = "dataGridViewCheckBoxXColumn2";
			this.dataGridViewCheckBoxXColumn2.Resizable = DataGridViewTriState.False;
			componentResourceManager.ApplyResources(this.btnGroupBy, "btnGroupBy");
			this.btnGroupBy.AccessibleRole = AccessibleRole.ComboBox;
			this.btnGroupBy.set_AntiAlias(true);
			this.btnGroupBy.set_AutoExpandOnClick(true);
			this.btnGroupBy.BackColor = Color.FromArgb(38, 47, 57);
			this.btnGroupBy.set_ColorTable(0);
			this.btnGroupBy.Cursor = Cursors.Hand;
			this.btnGroupBy.set_FocusCuesEnabled(false);
			this.btnGroupBy.Name = "btnGroupBy";
			this.btnGroupBy.set_Style(9);
			this.btnGroupBy.get_SubItems().AddRange(new BaseItem[]
			{
				this.FavoriteItem,
				this.Continent,
				this.TORoverVPN,
				this.DoubleVPN,
				this.Torrent,
				this.Gaming
			});
			this.btnGroupBy.set_SubItemsExpandWidth(14);
			this.btnGroupBy.set_TextColor(Color.White);
			this.FavoriteItem.set_FixedSize(new Size(140, 25));
			this.FavoriteItem.set_ForeColor(Color.Black);
			this.FavoriteItem.set_ImageFixedSize(new Size(1, 1));
			this.FavoriteItem.set_Name("FavoriteItem");
			this.FavoriteItem.set_PopupWidth(140);
			componentResourceManager.ApplyResources(this.FavoriteItem, "FavoriteItem");
			this.FavoriteItem.add_Click(new EventHandler(this.FavoriteItem_Click));
			this.Continent.set_FixedSize(new Size(140, 25));
			this.Continent.set_ForeColor(Color.Black);
			this.Continent.set_ImageFixedSize(new Size(1, 1));
			this.Continent.set_Name("Continent");
			this.Continent.set_PopupWidth(140);
			componentResourceManager.ApplyResources(this.Continent, "Continent");
			this.Continent.add_Click(new EventHandler(this.Continent_Click));
			this.TORoverVPN.set_FixedSize(new Size(140, 25));
			this.TORoverVPN.set_ForeColor(Color.Black);
			this.TORoverVPN.set_ImageFixedSize(new Size(1, 1));
			this.TORoverVPN.set_Name("TORoverVPN");
			this.TORoverVPN.set_PopupWidth(140);
			componentResourceManager.ApplyResources(this.TORoverVPN, "TORoverVPN");
			this.TORoverVPN.add_Click(new EventHandler(this.TORoverVPN_Click));
			this.DoubleVPN.set_FixedSize(new Size(140, 25));
			this.DoubleVPN.set_ForeColor(Color.Black);
			this.DoubleVPN.set_ImageFixedSize(new Size(1, 1));
			this.DoubleVPN.set_Name("DoubleVPN");
			this.DoubleVPN.set_PopupWidth(140);
			componentResourceManager.ApplyResources(this.DoubleVPN, "DoubleVPN");
			this.DoubleVPN.add_Click(new EventHandler(this.DoubleVPN_Click));
			this.Torrent.set_FixedSize(new Size(140, 25));
			this.Torrent.set_ForeColor(Color.Black);
			this.Torrent.set_ImageFixedSize(new Size(1, 1));
			this.Torrent.set_Name("Torrent");
			this.Torrent.set_PopupWidth(140);
			componentResourceManager.ApplyResources(this.Torrent, "Torrent");
			this.Torrent.add_Click(new EventHandler(this.Torrent_Click));
			this.Gaming.set_FixedSize(new Size(140, 25));
			this.Gaming.set_ForeColor(Color.Black);
			this.Gaming.set_ImageFixedSize(new Size(1, 1));
			this.Gaming.set_Name("Gaming");
			this.Gaming.set_PopupWidth(140);
			componentResourceManager.ApplyResources(this.Gaming, "Gaming");
			this.Gaming.add_Click(new EventHandler(this.Gaming_Click));
			componentResourceManager.ApplyResources(this.btnSort, "btnSort");
			this.btnSort.AccessibleRole = AccessibleRole.PushButton;
			this.btnSort.set_AntiAlias(true);
			this.btnSort.BackColor = Color.FromArgb(38, 47, 57);
			this.btnSort.set_ColorTable(0);
			this.btnSort.Cursor = Cursors.Hand;
			this.btnSort.set_DisabledImagesGrayScale(false);
			this.btnSort.set_FadeEffect(false);
			this.btnSort.set_FocusCuesEnabled(false);
			this.btnSort.Name = "btnSort";
			this.btnSort.set_TextColor(Color.White);
			this.btnSort.Click += new EventHandler(this.btnSort_Click);
			componentResourceManager.ApplyResources(this.btnResetFiltersUV, "btnResetFiltersUV");
			this.btnResetFiltersUV.AccessibleRole = AccessibleRole.PushButton;
			this.btnResetFiltersUV.set_AntiAlias(true);
			this.btnResetFiltersUV.BackColor = Color.FromArgb(38, 47, 57);
			this.btnResetFiltersUV.set_ColorTable(0);
			this.btnResetFiltersUV.Cursor = Cursors.Hand;
			this.btnResetFiltersUV.set_FocusCuesEnabled(false);
			this.btnResetFiltersUV.Name = "btnResetFiltersUV";
			this.btnResetFiltersUV.set_Style(9);
			this.btnResetFiltersUV.set_TextColor(Color.White);
			this.btnResetFiltersUV.Click += new EventHandler(this.btnResetFiltersUV_Click);
			componentResourceManager.ApplyResources(this.lblSearchUV, "lblSearchUV");
			this.lblSearchUV.AccessibleRole = AccessibleRole.None;
			this.lblSearchUV.get_BackgroundStyle().set_CornerType(1);
			this.lblSearchUV.Cursor = Cursors.Arrow;
			this.lblSearchUV.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblSearchUV.Name = "lblSearchUV";
			this.lblSearchUV.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			this.buttonX39.AccessibleRole = AccessibleRole.PushButton;
			this.buttonX39.BackColor = Color.White;
			this.buttonX39.set_ColorTable(0);
			componentResourceManager.ApplyResources(this.buttonX39, "buttonX39");
			this.buttonX39.Name = "buttonX39";
			this.buttonX39.set_Style(9);
			this.buttonX39.Click += new EventHandler(this.buttonX39_Click);
			componentResourceManager.ApplyResources(this.dgvServers, "dgvServers");
			this.dgvServers.AccessibleRole = AccessibleRole.List;
			this.dgvServers.AllowUserToOrderColumns = true;
			this.dgvServers.BackgroundColor = Color.FromArgb(242, 242, 242);
			this.dgvServers.BorderStyle = BorderStyle.None;
			dataGridViewCellStyle8.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle8.BackColor = SystemColors.Control;
			dataGridViewCellStyle8.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle8.ForeColor = Color.Black;
			dataGridViewCellStyle8.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle8.SelectionForeColor = Color.Black;
			dataGridViewCellStyle8.WrapMode = DataGridViewTriState.True;
			this.dgvServers.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle8;
			this.dgvServers.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
			this.dgvServers.Columns.AddRange(new DataGridViewColumn[]
			{
				this.FreeBand,
				this.Country,
				this.SeverName,
				this.ServerCountry,
				this.Favourite
			});
			this.dgvServers.Cursor = Cursors.Hand;
			dataGridViewCellStyle9.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle9.BackColor = Color.FromArgb(242, 242, 242);
			dataGridViewCellStyle9.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle9.ForeColor = Color.Black;
			dataGridViewCellStyle9.Padding = new Padding(0, 2, 0, 0);
			dataGridViewCellStyle9.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle9.SelectionForeColor = Color.White;
			dataGridViewCellStyle9.WrapMode = DataGridViewTriState.False;
			this.dgvServers.DefaultCellStyle = dataGridViewCellStyle9;
			this.dgvServers.EnableHeadersVisualStyles = false;
			this.dgvServers.GridColor = Color.FromArgb(157, 157, 157);
			this.dgvServers.Name = "dgvServers";
			dataGridViewCellStyle10.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle10.BackColor = SystemColors.Control;
			dataGridViewCellStyle10.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle10.ForeColor = Color.Black;
			dataGridViewCellStyle10.SelectionBackColor = Color.FromArgb(253, 187, 47);
			dataGridViewCellStyle10.SelectionForeColor = Color.Black;
			dataGridViewCellStyle10.WrapMode = DataGridViewTriState.True;
			this.dgvServers.RowHeadersDefaultCellStyle = dataGridViewCellStyle10;
			this.dgvServers.RowTemplate.DefaultCellStyle.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.dgvServers.RowTemplate.Height = 30;
			this.dgvServers.RowTemplate.Resizable = DataGridViewTriState.False;
			this.FreeBand.DataPropertyName = "ServerFreePercent";
			componentResourceManager.ApplyResources(this.FreeBand, "FreeBand");
			this.FreeBand.Name = "FreeBand";
			this.FreeBand.ReadOnly = true;
			componentResourceManager.ApplyResources(this.Country, "Country");
			this.Country.Name = "Country";
			this.Country.Resizable = DataGridViewTriState.True;
			this.SeverName.DataPropertyName = "ServerName";
			componentResourceManager.ApplyResources(this.SeverName, "SeverName");
			this.SeverName.Name = "SeverName";
			this.ServerCountry.DataPropertyName = "ServerCountry";
			componentResourceManager.ApplyResources(this.ServerCountry, "ServerCountry");
			this.ServerCountry.Name = "ServerCountry";
			this.Favourite.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("Favourite.CheckBoxImageChecked"));
			this.Favourite.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("Favourite.CheckBoxImageUnChecked"));
			this.Favourite.set_Checked(true);
			this.Favourite.set_CheckState(CheckState.Indeterminate);
			this.Favourite.set_CheckValue("True");
			this.Favourite.set_CheckValueChecked("True");
			this.Favourite.set_CheckValueIndeterminate("True");
			this.Favourite.set_CheckValueUnchecked("False");
			this.Favourite.DataPropertyName = "Favourite";
			dataGridViewCellStyle11.Alignment = DataGridViewContentAlignment.MiddleCenter;
			dataGridViewCellStyle11.WrapMode = DataGridViewTriState.False;
			this.Favourite.DefaultCellStyle = dataGridViewCellStyle11;
			componentResourceManager.ApplyResources(this.Favourite, "Favourite");
			this.Favourite.Name = "Favourite";
			this.Favourite.Resizable = DataGridViewTriState.False;
			this.tbiUsageView.set_AttachedControl(this.tbpUsageView);
			this.tbiUsageView.set_BackColor(Color.FromArgb(247, 247, 247));
			this.tbiUsageView.set_Image(Resources.tab_usage_view);
			this.tbiUsageView.set_Name("tbiUsageView");
			componentResourceManager.ApplyResources(this.tbiUsageView, "tbiUsageView");
			componentResourceManager.ApplyResources(this.tbpProtocolsList, "tbpProtocolsList");
			this.tbpProtocolsList.set_CanvasColor(Color.Empty);
			this.tbpProtocolsList.Controls.Add(this.grpProtocols);
			this.tbpProtocolsList.Controls.Add(this.pnlProtocolTooltip);
			this.tbpProtocolsList.Cursor = Cursors.Default;
			this.tbpProtocolsList.set_DisabledBackColor(Color.Empty);
			this.tbpProtocolsList.Name = "tbpProtocolsList";
			this.tbpProtocolsList.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpProtocolsList.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpProtocolsList.get_Style().set_Border(1);
			this.tbpProtocolsList.get_Style().get_BorderColor().set_Color(Color.FromArgb(226, 226, 226));
			this.tbpProtocolsList.get_Style().set_BorderSide(11);
			this.tbpProtocolsList.get_Style().set_GradientAngle(90);
			this.tbpProtocolsList.set_TabItem(this.tbiProtocolList);
			this.grpProtocols.BackColor = Color.Transparent;
			this.grpProtocols.Controls.Add(this.infoLblProtocolOVPNTCP);
			this.grpProtocols.Controls.Add(this.infoLblProtocolOVPNUDP);
			this.grpProtocols.Controls.Add(this.infoLblProtocolIPSEC);
			this.grpProtocols.Controls.Add(this.infoLblProtocolSSTP);
			this.grpProtocols.Controls.Add(this.infoLblProtocolPPTP);
			this.grpProtocols.Controls.Add(this.infoLblProtocolL2TP);
			this.grpProtocols.Controls.Add(this.infoLblProtocolAuto);
			this.grpProtocols.Controls.Add(this.rbL2TP);
			this.grpProtocols.Controls.Add(this.rbAutomatic);
			this.grpProtocols.Controls.Add(this.rbOpenVPN_TCP);
			this.grpProtocols.Controls.Add(this.rbPPTP);
			this.grpProtocols.Controls.Add(this.rbIPSec);
			this.grpProtocols.Controls.Add(this.rbOpenVPN_UDP);
			this.grpProtocols.Controls.Add(this.rbSSTP);
			this.grpProtocols.FlatStyle = FlatStyle.Flat;
			this.grpProtocols.ForeColor = Color.FromArgb(38, 47, 57);
			componentResourceManager.ApplyResources(this.grpProtocols, "grpProtocols");
			this.grpProtocols.Name = "grpProtocols";
			this.grpProtocols.TabStop = false;
			this.grpProtocols.UseCompatibleTextRendering = true;
			this.infoLblProtocolOVPNTCP.AccessibleRole = AccessibleRole.ToolTip;
			this.infoLblProtocolOVPNTCP.BackColor = Color.Transparent;
			this.infoLblProtocolOVPNTCP.get_BackgroundStyle().set_CornerType(1);
			componentResourceManager.ApplyResources(this.infoLblProtocolOVPNTCP, "infoLblProtocolOVPNTCP");
			this.infoLblProtocolOVPNTCP.ForeColor = Color.FromArgb(130, 130, 130);
			this.infoLblProtocolOVPNTCP.Name = "infoLblProtocolOVPNTCP";
			this.infoLblProtocolOVPNTCP.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.infoLblProtocolOVPNTCP.set_WordWrap(true);
			this.infoLblProtocolOVPNUDP.AccessibleRole = AccessibleRole.ToolTip;
			this.infoLblProtocolOVPNUDP.BackColor = Color.Transparent;
			this.infoLblProtocolOVPNUDP.get_BackgroundStyle().set_CornerType(1);
			componentResourceManager.ApplyResources(this.infoLblProtocolOVPNUDP, "infoLblProtocolOVPNUDP");
			this.infoLblProtocolOVPNUDP.ForeColor = Color.FromArgb(130, 130, 130);
			this.infoLblProtocolOVPNUDP.Name = "infoLblProtocolOVPNUDP";
			this.infoLblProtocolOVPNUDP.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.infoLblProtocolOVPNUDP.set_WordWrap(true);
			this.infoLblProtocolIPSEC.AccessibleRole = AccessibleRole.ToolTip;
			this.infoLblProtocolIPSEC.BackColor = Color.Transparent;
			this.infoLblProtocolIPSEC.get_BackgroundStyle().set_CornerType(1);
			componentResourceManager.ApplyResources(this.infoLblProtocolIPSEC, "infoLblProtocolIPSEC");
			this.infoLblProtocolIPSEC.ForeColor = Color.FromArgb(130, 130, 130);
			this.infoLblProtocolIPSEC.Name = "infoLblProtocolIPSEC";
			this.infoLblProtocolIPSEC.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.infoLblProtocolIPSEC.set_WordWrap(true);
			this.infoLblProtocolSSTP.AccessibleRole = AccessibleRole.ToolTip;
			this.infoLblProtocolSSTP.BackColor = Color.Transparent;
			this.infoLblProtocolSSTP.get_BackgroundStyle().set_CornerType(1);
			componentResourceManager.ApplyResources(this.infoLblProtocolSSTP, "infoLblProtocolSSTP");
			this.infoLblProtocolSSTP.ForeColor = Color.FromArgb(130, 130, 130);
			this.infoLblProtocolSSTP.Name = "infoLblProtocolSSTP";
			this.infoLblProtocolSSTP.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.infoLblProtocolSSTP.set_WordWrap(true);
			this.infoLblProtocolPPTP.AccessibleRole = AccessibleRole.ToolTip;
			this.infoLblProtocolPPTP.BackColor = Color.Transparent;
			this.infoLblProtocolPPTP.get_BackgroundStyle().set_CornerType(1);
			componentResourceManager.ApplyResources(this.infoLblProtocolPPTP, "infoLblProtocolPPTP");
			this.infoLblProtocolPPTP.ForeColor = Color.FromArgb(130, 130, 130);
			this.infoLblProtocolPPTP.Name = "infoLblProtocolPPTP";
			this.infoLblProtocolPPTP.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.infoLblProtocolPPTP.set_WordWrap(true);
			this.infoLblProtocolL2TP.AccessibleRole = AccessibleRole.ToolTip;
			this.infoLblProtocolL2TP.BackColor = Color.Transparent;
			this.infoLblProtocolL2TP.get_BackgroundStyle().set_CornerType(1);
			componentResourceManager.ApplyResources(this.infoLblProtocolL2TP, "infoLblProtocolL2TP");
			this.infoLblProtocolL2TP.ForeColor = Color.FromArgb(130, 130, 130);
			this.infoLblProtocolL2TP.Name = "infoLblProtocolL2TP";
			this.infoLblProtocolL2TP.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.infoLblProtocolL2TP.set_WordWrap(true);
			this.infoLblProtocolAuto.AccessibleRole = AccessibleRole.ToolTip;
			this.infoLblProtocolAuto.BackColor = Color.Transparent;
			this.infoLblProtocolAuto.get_BackgroundStyle().set_CornerType(1);
			componentResourceManager.ApplyResources(this.infoLblProtocolAuto, "infoLblProtocolAuto");
			this.infoLblProtocolAuto.ForeColor = Color.FromArgb(130, 130, 130);
			this.infoLblProtocolAuto.Name = "infoLblProtocolAuto";
			this.infoLblProtocolAuto.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.infoLblProtocolAuto.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.rbL2TP, "rbL2TP");
			this.rbL2TP.AccessibleRole = AccessibleRole.RadioButton;
			this.rbL2TP.FlatAppearance.MouseOverBackColor = Color.FromArgb(0, 192, 0);
			this.rbL2TP.Name = "rbL2TP";
			this.rbL2TP.TabStop = true;
			this.rbL2TP.UseVisualStyleBackColor = true;
			componentResourceManager.ApplyResources(this.rbAutomatic, "rbAutomatic");
			this.rbAutomatic.AccessibleRole = AccessibleRole.RadioButton;
			this.rbAutomatic.Checked = true;
			this.rbAutomatic.FlatAppearance.MouseOverBackColor = Color.White;
			this.rbAutomatic.Name = "rbAutomatic";
			this.rbAutomatic.TabStop = true;
			this.rbAutomatic.UseVisualStyleBackColor = true;
			this.rbAutomatic.EnabledChanged += new EventHandler(this.rbAutomatic_EnabledChanged);
			componentResourceManager.ApplyResources(this.rbOpenVPN_TCP, "rbOpenVPN_TCP");
			this.rbOpenVPN_TCP.AccessibleRole = AccessibleRole.RadioButton;
			this.rbOpenVPN_TCP.Name = "rbOpenVPN_TCP";
			this.rbOpenVPN_TCP.UseVisualStyleBackColor = true;
			componentResourceManager.ApplyResources(this.rbPPTP, "rbPPTP");
			this.rbPPTP.AccessibleRole = AccessibleRole.RadioButton;
			this.rbPPTP.FlatAppearance.MouseOverBackColor = Color.FromArgb(0, 192, 0);
			this.rbPPTP.Name = "rbPPTP";
			this.rbPPTP.TabStop = true;
			this.rbPPTP.UseVisualStyleBackColor = true;
			componentResourceManager.ApplyResources(this.rbIPSec, "rbIPSec");
			this.rbIPSec.AccessibleRole = AccessibleRole.RadioButton;
			this.rbIPSec.Name = "rbIPSec";
			this.rbIPSec.TabStop = true;
			this.rbIPSec.UseVisualStyleBackColor = true;
			componentResourceManager.ApplyResources(this.rbOpenVPN_UDP, "rbOpenVPN_UDP");
			this.rbOpenVPN_UDP.AccessibleRole = AccessibleRole.RadioButton;
			this.rbOpenVPN_UDP.Name = "rbOpenVPN_UDP";
			this.rbOpenVPN_UDP.TabStop = true;
			this.rbOpenVPN_UDP.UseVisualStyleBackColor = true;
			componentResourceManager.ApplyResources(this.rbSSTP, "rbSSTP");
			this.rbSSTP.AccessibleRole = AccessibleRole.RadioButton;
			this.rbSSTP.Name = "rbSSTP";
			this.rbSSTP.TabStop = true;
			this.rbSSTP.UseVisualStyleBackColor = true;
			this.pnlProtocolTooltip.BackgroundImage = Resources.ico_infotip2;
			componentResourceManager.ApplyResources(this.pnlProtocolTooltip, "pnlProtocolTooltip");
			this.pnlProtocolTooltip.Cursor = Cursors.Hand;
			this.pnlProtocolTooltip.Name = "pnlProtocolTooltip";
			this.tbiProtocolList.set_AttachedControl(this.tbpProtocolsList);
			this.tbiProtocolList.set_BackColor(Color.FromArgb(247, 247, 247));
			this.tbiProtocolList.set_Image(Resources.tab_protocol_view);
			this.tbiProtocolList.set_Name("tbiProtocolList");
			componentResourceManager.ApplyResources(this.tbiProtocolList, "tbiProtocolList");
			this.btnColapseServers.AccessibleRole = AccessibleRole.PushButton;
			this.btnColapseServers.BackColor = Color.FromArgb(37, 47, 57);
			componentResourceManager.ApplyResources(this.btnColapseServers, "btnColapseServers");
			this.btnColapseServers.set_FocusCuesEnabled(false);
			this.btnColapseServers.Name = "btnColapseServers";
			this.btnColapseServers.set_Style(9);
			this.btnColapseServers.set_Symbol("");
			this.btnColapseServers.set_SymbolSize(12f);
			this.btnColapseServers.set_TextColor(Color.White);
			this.btnColapseServers.Click += new EventHandler(this.btnColapseServers_Click);
			this.spcDashboard.BackColor = Color.FromArgb(247, 247, 247);
			componentResourceManager.ApplyResources(this.spcDashboard, "spcDashboard");
			this.spcDashboard.FixedPanel = FixedPanel.Panel1;
			this.spcDashboard.Name = "spcDashboard";
			this.spcDashboard.Panel1.Controls.Add(this.pctPromo);
			componentResourceManager.ApplyResources(this.pctPromo, "pctPromo");
			this.pctPromo.BackColor = Color.Transparent;
			this.pctPromo.Cursor = Cursors.Hand;
			this.pctPromo.Name = "pctPromo";
			this.pctPromo.TabStop = false;
			componentResourceManager.ApplyResources(this.spcAccount, "spcAccount");
			this.spcAccount.FixedPanel = FixedPanel.Panel1;
			this.spcAccount.ForeColor = Color.FromArgb(38, 47, 57);
			this.spcAccount.Name = "spcAccount";
			this.spcAccount.Panel2.Controls.Add(this.tbcAccount);
			this.spcAccount.Panel2.Controls.Add(this.btnColapseAccount);
			this.spcAccount.TabStop = false;
			this.tbcAccount.BackColor = Color.Transparent;
			this.tbcAccount.set_CanReorderTabs(true);
			this.tbcAccount.set_CloseButtonOnTabsAlwaysDisplayed(false);
			this.tbcAccount.get_ColorScheme().set_TabBackground(Color.FromArgb(247, 247, 247));
			this.tbcAccount.get_ColorScheme().set_TabBackground2(Color.FromArgb(247, 247, 247));
			this.tbcAccount.get_ColorScheme().set_TabBorder(Color.Transparent);
			this.tbcAccount.get_ColorScheme().set_TabItemBackground(Color.FromArgb(242, 242, 242));
			this.tbcAccount.get_ColorScheme().set_TabItemBackground2(Color.FromArgb(242, 242, 242));
			this.tbcAccount.get_ColorScheme().set_TabItemBorder(Color.Empty);
			this.tbcAccount.get_ColorScheme().set_TabItemBorderDark(Color.Empty);
			this.tbcAccount.get_ColorScheme().set_TabItemBorderLight(Color.Empty);
			this.tbcAccount.get_ColorScheme().set_TabItemHotBackground(Color.WhiteSmoke);
			this.tbcAccount.get_ColorScheme().set_TabItemHotBackground2(Color.WhiteSmoke);
			this.tbcAccount.get_ColorScheme().set_TabItemHotBorder(Color.FromArgb(250, 250, 250));
			this.tbcAccount.get_ColorScheme().set_TabItemHotBorderDark(Color.FromArgb(250, 250, 250));
			this.tbcAccount.get_ColorScheme().set_TabItemHotBorderLight(Color.FromArgb(250, 250, 250));
			this.tbcAccount.get_ColorScheme().set_TabItemHotText(Color.FromArgb(27, 158, 28));
			this.tbcAccount.get_ColorScheme().set_TabItemSelectedBackground(Color.FromArgb(238, 238, 238));
			this.tbcAccount.get_ColorScheme().set_TabItemSelectedBackground2(Color.FromArgb(238, 238, 238));
			this.tbcAccount.get_ColorScheme().set_TabItemSelectedBorder(Color.FromArgb(242, 242, 242));
			this.tbcAccount.get_ColorScheme().set_TabItemSelectedBorderDark(Color.FromArgb(242, 242, 242));
			this.tbcAccount.get_ColorScheme().set_TabItemSelectedBorderLight(Color.FromArgb(242, 242, 242));
			this.tbcAccount.get_ColorScheme().set_TabItemSelectedText(Color.FromArgb(27, 158, 28));
			this.tbcAccount.get_ColorScheme().set_TabItemSeparator(Color.White);
			this.tbcAccount.get_ColorScheme().set_TabItemSeparatorShade(Color.FromArgb(226, 226, 226));
			this.tbcAccount.get_ColorScheme().set_TabPanelBackground(Color.FromArgb(247, 247, 247));
			this.tbcAccount.get_ColorScheme().set_TabPanelBackground2(Color.FromArgb(247, 247, 247));
			this.tbcAccount.get_ColorScheme().set_TabPanelBorder(Color.FromArgb(242, 242, 242));
			this.tbcAccount.Controls.Add(this.tbpAccount);
			this.tbcAccount.Cursor = Cursors.Hand;
			componentResourceManager.ApplyResources(this.tbcAccount, "tbcAccount");
			this.tbcAccount.set_FixedTabSize(new Size(57, 63));
			this.tbcAccount.ForeColor = Color.FromArgb(153, 0, 0, 0);
			this.tbcAccount.Name = "tbcAccount";
			this.tbcAccount.set_SelectedTabFont(new Font("Segoe UI", 9f, FontStyle.Bold));
			this.tbcAccount.set_SelectedTabIndex(0);
			this.tbcAccount.set_TabLayoutType(1);
			this.tbcAccount.get_Tabs().Add(this.tbiAccount);
			componentResourceManager.ApplyResources(this.tbpAccount, "tbpAccount");
			this.tbpAccount.AccessibleRole = AccessibleRole.PageTabList;
			this.tbpAccount.set_CanvasColor(Color.Empty);
			this.tbpAccount.Controls.Add(this.lblInfoCont);
			this.tbpAccount.Controls.Add(this.lblInfoServers);
			this.tbpAccount.Controls.Add(this.btnClientArea);
			this.tbpAccount.Controls.Add(this.lblInfoClientArea);
			this.tbpAccount.Controls.Add(this.lblInfoPackage);
			this.tbpAccount.Controls.Add(this.dgvAccountServers);
			this.tbpAccount.Controls.Add(this.dgvPackages);
			this.tbpAccount.Cursor = Cursors.Default;
			this.tbpAccount.set_DisabledBackColor(Color.Empty);
			this.tbpAccount.Name = "tbpAccount";
			this.tbpAccount.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpAccount.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpAccount.get_Style().set_Border(1);
			this.tbpAccount.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbpAccount.get_Style().set_BorderSide(11);
			this.tbpAccount.get_Style().set_BorderWidth(0);
			this.tbpAccount.get_Style().set_Font(new Font("Segoe UI", 72f, FontStyle.Regular, GraphicsUnit.Pixel));
			this.tbpAccount.get_Style().get_ForeColor().set_Color(Color.FromArgb(27, 158, 28));
			this.tbpAccount.get_Style().set_GradientAngle(90);
			this.tbpAccount.get_StyleMouseDown().set_Font(new Font("Segoe UI", 72f, FontStyle.Regular, GraphicsUnit.Point, 0));
			this.tbpAccount.get_StyleMouseOver().set_Font(new Font("Segoe UI", 72f, FontStyle.Regular, GraphicsUnit.Point, 0));
			this.tbpAccount.set_TabItem(this.tbiAccount);
			componentResourceManager.ApplyResources(this.lblInfoCont, "lblInfoCont");
			this.lblInfoCont.BackColor = Color.Transparent;
			this.lblInfoCont.Cursor = Cursors.Default;
			this.lblInfoCont.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblInfoCont.Name = "lblInfoCont";
			componentResourceManager.ApplyResources(this.lblInfoServers, "lblInfoServers");
			this.lblInfoServers.BackColor = Color.Transparent;
			this.lblInfoServers.Cursor = Cursors.Default;
			this.lblInfoServers.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblInfoServers.Name = "lblInfoServers";
			componentResourceManager.ApplyResources(this.btnClientArea, "btnClientArea");
			this.btnClientArea.AccessibleRole = AccessibleRole.PushButton;
			this.btnClientArea.set_AntiAlias(true);
			this.btnClientArea.BackColor = Color.FromArgb(37, 47, 57);
			this.btnClientArea.set_ColorTable(0);
			this.btnClientArea.Cursor = Cursors.Hand;
			this.btnClientArea.set_FocusCuesEnabled(false);
			this.btnClientArea.Name = "btnClientArea";
			this.btnClientArea.set_ShowSubItems(false);
			this.btnClientArea.set_Style(9);
			this.btnClientArea.set_TextColor(Color.White);
			this.btnClientArea.Click += new EventHandler(this.btnClientArea_Click);
			componentResourceManager.ApplyResources(this.lblInfoClientArea, "lblInfoClientArea");
			this.lblInfoClientArea.BackColor = Color.Transparent;
			this.lblInfoClientArea.Cursor = Cursors.Default;
			this.lblInfoClientArea.ForeColor = Color.FromArgb(61, 61, 61);
			this.lblInfoClientArea.Name = "lblInfoClientArea";
			componentResourceManager.ApplyResources(this.lblInfoPackage, "lblInfoPackage");
			this.lblInfoPackage.BackColor = Color.Transparent;
			this.lblInfoPackage.Cursor = Cursors.Default;
			this.lblInfoPackage.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblInfoPackage.Name = "lblInfoPackage";
			componentResourceManager.ApplyResources(this.dgvAccountServers, "dgvAccountServers");
			this.dgvAccountServers.AccessibleRole = AccessibleRole.List;
			this.dgvAccountServers.AllowUserToAddRows = false;
			this.dgvAccountServers.AllowUserToDeleteRows = false;
			this.dgvAccountServers.AllowUserToResizeRows = false;
			this.dgvAccountServers.BackgroundColor = Color.FromArgb(242, 242, 242);
			this.dgvAccountServers.BorderStyle = BorderStyle.None;
			this.dgvAccountServers.ClipboardCopyMode = DataGridViewClipboardCopyMode.Disable;
			dataGridViewCellStyle12.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle12.BackColor = SystemColors.Control;
			dataGridViewCellStyle12.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle12.ForeColor = Color.Black;
			dataGridViewCellStyle12.SelectionBackColor = Color.FromArgb(242, 242, 242);
			dataGridViewCellStyle12.SelectionForeColor = Color.Black;
			dataGridViewCellStyle12.WrapMode = DataGridViewTriState.True;
			this.dgvAccountServers.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle12;
			this.dgvAccountServers.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
			this.dgvAccountServers.Cursor = Cursors.Default;
			dataGridViewCellStyle13.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle13.BackColor = Color.FromArgb(242, 242, 242);
			dataGridViewCellStyle13.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle13.ForeColor = Color.Black;
			dataGridViewCellStyle13.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle13.SelectionForeColor = Color.Black;
			dataGridViewCellStyle13.WrapMode = DataGridViewTriState.False;
			this.dgvAccountServers.DefaultCellStyle = dataGridViewCellStyle13;
			this.dgvAccountServers.EnableHeadersVisualStyles = false;
			this.dgvAccountServers.GridColor = Color.FromArgb(157, 157, 157);
			this.dgvAccountServers.set_HighlightSelectedColumnHeaders(false);
			this.dgvAccountServers.MultiSelect = false;
			this.dgvAccountServers.Name = "dgvAccountServers";
			this.dgvAccountServers.set_PaintEnhancedSelection(false);
			this.dgvAccountServers.ReadOnly = true;
			dataGridViewCellStyle14.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle14.BackColor = SystemColors.Control;
			dataGridViewCellStyle14.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle14.ForeColor = Color.Black;
			dataGridViewCellStyle14.SelectionForeColor = Color.Black;
			dataGridViewCellStyle14.WrapMode = DataGridViewTriState.True;
			this.dgvAccountServers.RowHeadersDefaultCellStyle = dataGridViewCellStyle14;
			this.dgvAccountServers.RowTemplate.DefaultCellStyle.Font = new Font("Segoe UI", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.dgvAccountServers.RowTemplate.Height = 35;
			this.dgvAccountServers.RowTemplate.ReadOnly = true;
			this.dgvAccountServers.RowTemplate.Resizable = DataGridViewTriState.False;
			this.dgvAccountServers.set_SelectAllSignVisible(false);
			componentResourceManager.ApplyResources(this.dgvPackages, "dgvPackages");
			this.dgvPackages.AccessibleRole = AccessibleRole.List;
			this.dgvPackages.BackgroundColor = Color.FromArgb(242, 242, 242);
			this.dgvPackages.BorderStyle = BorderStyle.None;
			dataGridViewCellStyle15.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle15.BackColor = SystemColors.Control;
			dataGridViewCellStyle15.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle15.ForeColor = Color.Black;
			dataGridViewCellStyle15.SelectionForeColor = Color.Black;
			dataGridViewCellStyle15.WrapMode = DataGridViewTriState.True;
			this.dgvPackages.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle15;
			this.dgvPackages.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
			this.dgvPackages.Cursor = Cursors.Default;
			dataGridViewCellStyle16.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle16.BackColor = Color.FromArgb(242, 242, 242);
			dataGridViewCellStyle16.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle16.ForeColor = Color.Black;
			dataGridViewCellStyle16.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle16.SelectionForeColor = Color.White;
			dataGridViewCellStyle16.WrapMode = DataGridViewTriState.False;
			this.dgvPackages.DefaultCellStyle = dataGridViewCellStyle16;
			this.dgvPackages.EnableHeadersVisualStyles = false;
			this.dgvPackages.GridColor = Color.FromArgb(157, 157, 157);
			this.dgvPackages.set_HighlightSelectedColumnHeaders(false);
			this.dgvPackages.MultiSelect = false;
			this.dgvPackages.Name = "dgvPackages";
			dataGridViewCellStyle17.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle17.BackColor = SystemColors.Control;
			dataGridViewCellStyle17.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle17.ForeColor = Color.Black;
			dataGridViewCellStyle17.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle17.SelectionForeColor = Color.Black;
			dataGridViewCellStyle17.WrapMode = DataGridViewTriState.True;
			this.dgvPackages.RowHeadersDefaultCellStyle = dataGridViewCellStyle17;
			this.dgvPackages.RowTemplate.DefaultCellStyle.Font = new Font("Segoe UI", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.dgvPackages.RowTemplate.DefaultCellStyle.SelectionBackColor = Color.White;
			this.dgvPackages.RowTemplate.Height = 35;
			this.dgvPackages.RowTemplate.ReadOnly = true;
			this.dgvPackages.RowTemplate.Resizable = DataGridViewTriState.False;
			this.tbiAccount.set_AttachedControl(this.tbpAccount);
			this.tbiAccount.set_BackColor(Color.FromArgb(247, 247, 247));
			this.tbiAccount.set_Image(Resources.tab_account_selected);
			this.tbiAccount.set_Name("tbiAccount");
			componentResourceManager.ApplyResources(this.tbiAccount, "tbiAccount");
			this.btnColapseAccount.AccessibleRole = AccessibleRole.PushButton;
			this.btnColapseAccount.BackColor = Color.FromArgb(37, 47, 57);
			componentResourceManager.ApplyResources(this.btnColapseAccount, "btnColapseAccount");
			this.btnColapseAccount.set_FocusCuesEnabled(false);
			this.btnColapseAccount.Name = "btnColapseAccount";
			this.btnColapseAccount.set_Style(9);
			this.btnColapseAccount.set_Symbol("");
			this.btnColapseAccount.set_SymbolSize(12f);
			this.btnColapseAccount.set_TextColor(Color.White);
			this.btnColapseAccount.Click += new EventHandler(this.btnColapseAccount_Click);
			this.radialMenuItem3.set_CircularBackColor(Color.FromArgb(124, 202, 98));
			this.radialMenuItem3.set_CircularMenuDiameter(28);
			this.radialMenuItem3.set_Name("radialMenuItem3");
			this.radialMenuItem3.set_Symbol("");
			componentResourceManager.ApplyResources(this.radialMenuItem3, "radialMenuItem3");
			this.sideNavIbVPN.BackColor = Color.FromArgb(247, 247, 247);
			this.sideNavIbVPN.Controls.Add(this.snpServers);
			this.sideNavIbVPN.Controls.Add(this.snpDNSSettings);
			this.sideNavIbVPN.Controls.Add(this.snpDashboard);
			this.sideNavIbVPN.Controls.Add(this.snpVPNSettings);
			this.sideNavIbVPN.Controls.Add(this.snpSupport);
			this.sideNavIbVPN.Controls.Add(this.snpAccount);
			componentResourceManager.ApplyResources(this.sideNavIbVPN, "sideNavIbVPN");
			this.sideNavIbVPN.set_EnableClose(false);
			this.sideNavIbVPN.set_EnableMaximize(false);
			this.sideNavIbVPN.set_EnableSplitter(false);
			this.sideNavIbVPN.ForeColor = Color.FromArgb(61, 61, 61);
			this.sideNavIbVPN.get_Items().AddRange(new BaseItem[]
			{
				this.separator1,
				this.sniLogo,
				this.sniAccount,
				this.sniDashboard,
				this.sniServers,
				this.sniVPNSettings,
				this.sniDNSSettings,
				this.sniSupport,
				this.sniLogout,
				this.sniPromo
			});
			this.sideNavIbVPN.Name = "sideNavIbVPN";
			componentResourceManager.ApplyResources(this.snpDashboard, "snpDashboard");
			this.snpDashboard.Controls.Add(this.spcDashboard);
			this.snpDashboard.Name = "snpDashboard";
			componentResourceManager.ApplyResources(this.snpVPNSettings, "snpVPNSettings");
			this.snpVPNSettings.Controls.Add(this.spcVPNSettings);
			this.snpVPNSettings.Name = "snpVPNSettings";
			this.snpSupport.Controls.Add(this.spcSupport);
			componentResourceManager.ApplyResources(this.snpSupport, "snpSupport");
			this.snpSupport.Name = "snpSupport";
			this.spcSupport.BackColor = Color.FromArgb(247, 247, 247);
			componentResourceManager.ApplyResources(this.spcSupport, "spcSupport");
			this.spcSupport.Name = "spcSupport";
			this.spcSupport.Panel2.Controls.Add(this.tbcSupport);
			this.spcSupport.Panel2.Controls.Add(this.btnColapseSupport);
			this.spcSupport.TabStop = false;
			this.tbcSupport.AccessibleRole = AccessibleRole.Pane;
			this.tbcSupport.BackColor = Color.Transparent;
			this.tbcSupport.set_CanReorderTabs(true);
			this.tbcSupport.get_ColorScheme().set_TabBackground(Color.FromArgb(247, 247, 247));
			this.tbcSupport.get_ColorScheme().set_TabBackground2(Color.FromArgb(247, 247, 247));
			this.tbcSupport.get_ColorScheme().set_TabBorder(Color.FromArgb(242, 242, 242));
			this.tbcSupport.get_ColorScheme().set_TabItemBackground(Color.FromArgb(242, 242, 242));
			this.tbcSupport.get_ColorScheme().set_TabItemBackground2(Color.FromArgb(242, 242, 242));
			this.tbcSupport.get_ColorScheme().set_TabItemBorder(Color.Empty);
			this.tbcSupport.get_ColorScheme().set_TabItemBorderDark(Color.Empty);
			this.tbcSupport.get_ColorScheme().set_TabItemBorderLight(Color.Empty);
			this.tbcSupport.get_ColorScheme().set_TabItemHotBackground(Color.WhiteSmoke);
			this.tbcSupport.get_ColorScheme().set_TabItemHotBackground2(Color.WhiteSmoke);
			this.tbcSupport.get_ColorScheme().set_TabItemHotBorder(Color.FromArgb(250, 250, 250));
			this.tbcSupport.get_ColorScheme().set_TabItemHotBorderDark(Color.FromArgb(250, 250, 250));
			this.tbcSupport.get_ColorScheme().set_TabItemHotBorderLight(Color.FromArgb(250, 250, 250));
			this.tbcSupport.get_ColorScheme().set_TabItemHotText(Color.FromArgb(61, 61, 61));
			this.tbcSupport.get_ColorScheme().set_TabItemSelectedBackground(Color.FromArgb(238, 238, 238));
			this.tbcSupport.get_ColorScheme().set_TabItemSelectedBackground2(Color.FromArgb(238, 238, 238));
			this.tbcSupport.get_ColorScheme().set_TabItemSelectedBorder(Color.Empty);
			this.tbcSupport.get_ColorScheme().set_TabItemSelectedBorderDark(Color.Empty);
			this.tbcSupport.get_ColorScheme().set_TabItemSelectedBorderLight(Color.Empty);
			this.tbcSupport.get_ColorScheme().set_TabItemSelectedText(Color.FromArgb(27, 158, 28));
			this.tbcSupport.get_ColorScheme().set_TabItemSeparator(Color.White);
			this.tbcSupport.get_ColorScheme().set_TabItemSeparatorShade(Color.FromArgb(226, 226, 226));
			this.tbcSupport.get_ColorScheme().set_TabItemText(Color.FromArgb(61, 61, 61));
			this.tbcSupport.get_ColorScheme().set_TabPanelBackground(Color.FromArgb(247, 247, 247));
			this.tbcSupport.get_ColorScheme().set_TabPanelBackground2(Color.FromArgb(247, 247, 247));
			this.tbcSupport.get_ColorScheme().set_TabPanelBorder(Color.FromArgb(242, 242, 242));
			this.tbcSupport.Controls.Add(this.tbcContact);
			this.tbcSupport.Controls.Add(this.tbpSupportSettings);
			this.tbcSupport.Controls.Add(this.tbpKB);
			this.tbcSupport.Controls.Add(this.tbpAutoupdater);
			this.tbcSupport.Controls.Add(this.tbpServiceLog);
			this.tbcSupport.Cursor = Cursors.Hand;
			componentResourceManager.ApplyResources(this.tbcSupport, "tbcSupport");
			this.tbcSupport.set_FixedTabSize(new Size(57, 63));
			this.tbcSupport.ForeColor = Color.FromArgb(153, 0, 0, 0);
			this.tbcSupport.Name = "tbcSupport";
			this.tbcSupport.set_SelectedTabFont(new Font("Segoe UI", 9f, FontStyle.Bold));
			this.tbcSupport.set_SelectedTabIndex(0);
			this.tbcSupport.set_TabLayoutType(1);
			this.tbcSupport.get_Tabs().Add(this.tbiContact);
			this.tbcSupport.get_Tabs().Add(this.tbiSupportSettings);
			this.tbcSupport.get_Tabs().Add(this.tbiServiceLog);
			this.tbcSupport.get_Tabs().Add(this.tbiAutoupdater);
			this.tbcSupport.get_Tabs().Add(this.tbiKB);
			this.tbcSupport.add_SelectedTabChanged(new TabStrip.SelectedTabChangedEventHandler(this.tbcSupport_SelectedTabChanged));
			this.tbcContact.AccessibleRole = AccessibleRole.PageTab;
			this.tbcContact.Controls.Add(this.btnDeleteRoute);
			this.tbcContact.Controls.Add(this.btnDeleteDefaultRoute);
			this.tbcContact.Controls.Add(this.btnRestoreInternet);
			this.tbcContact.Controls.Add(this.btnAddRoute);
			this.tbcContact.Controls.Add(this.line3);
			this.tbcContact.Controls.Add(this.line4);
			this.tbcContact.Controls.Add(this.labelX2);
			this.tbcContact.Controls.Add(this.labelX1);
			this.tbcContact.Controls.Add(this.btnSendEmail);
			this.tbcContact.Controls.Add(this.btnOpenTicket);
			this.tbcContact.Cursor = Cursors.Default;
			this.tbcContact.set_DisabledBackColor(Color.Empty);
			componentResourceManager.ApplyResources(this.tbcContact, "tbcContact");
			this.tbcContact.Name = "tbcContact";
			this.tbcContact.get_Style().get_BackColor1().set_Color(Color.FromArgb(247, 247, 247));
			this.tbcContact.get_Style().get_BackColor2().set_Color(Color.FromArgb(247, 247, 247));
			this.tbcContact.get_Style().set_Border(1);
			this.tbcContact.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbcContact.get_Style().set_BorderSide(11);
			this.tbcContact.get_Style().set_GradientAngle(90);
			this.tbcContact.set_TabItem(this.tbiContact);
			this.btnDeleteRoute.AccessibleRole = AccessibleRole.PushButton;
			this.btnDeleteRoute.set_AntiAlias(true);
			this.btnDeleteRoute.BackColor = Color.FromArgb(38, 47, 57);
			this.btnDeleteRoute.set_ColorTable(0);
			this.btnDeleteRoute.Cursor = Cursors.Hand;
			this.btnDeleteRoute.set_FocusCuesEnabled(false);
			componentResourceManager.ApplyResources(this.btnDeleteRoute, "btnDeleteRoute");
			this.btnDeleteRoute.Name = "btnDeleteRoute";
			this.btnDeleteRoute.set_Style(9);
			this.btnDeleteRoute.set_TextColor(Color.White);
			this.btnDeleteDefaultRoute.AccessibleRole = AccessibleRole.PushButton;
			this.btnDeleteDefaultRoute.set_AntiAlias(true);
			this.btnDeleteDefaultRoute.BackColor = Color.FromArgb(38, 47, 57);
			this.btnDeleteDefaultRoute.set_ColorTable(0);
			this.btnDeleteDefaultRoute.Cursor = Cursors.Hand;
			this.btnDeleteDefaultRoute.set_FocusCuesEnabled(false);
			componentResourceManager.ApplyResources(this.btnDeleteDefaultRoute, "btnDeleteDefaultRoute");
			this.btnDeleteDefaultRoute.Name = "btnDeleteDefaultRoute";
			this.btnDeleteDefaultRoute.set_Style(9);
			this.btnDeleteDefaultRoute.set_TextColor(Color.White);
			this.btnRestoreInternet.AccessibleRole = AccessibleRole.PushButton;
			this.btnRestoreInternet.set_AntiAlias(true);
			this.btnRestoreInternet.BackColor = Color.FromArgb(38, 47, 57);
			this.btnRestoreInternet.set_ColorTable(0);
			this.btnRestoreInternet.Cursor = Cursors.Hand;
			this.btnRestoreInternet.set_FocusCuesEnabled(false);
			componentResourceManager.ApplyResources(this.btnRestoreInternet, "btnRestoreInternet");
			this.btnRestoreInternet.Name = "btnRestoreInternet";
			this.btnRestoreInternet.set_Style(9);
			this.btnRestoreInternet.set_TextColor(Color.White);
			this.btnAddRoute.AccessibleRole = AccessibleRole.PushButton;
			this.btnAddRoute.set_AntiAlias(true);
			this.btnAddRoute.BackColor = Color.FromArgb(38, 47, 57);
			this.btnAddRoute.set_ColorTable(0);
			this.btnAddRoute.Cursor = Cursors.Hand;
			this.btnAddRoute.set_FocusCuesEnabled(false);
			componentResourceManager.ApplyResources(this.btnAddRoute, "btnAddRoute");
			this.btnAddRoute.Name = "btnAddRoute";
			this.btnAddRoute.set_Style(9);
			this.btnAddRoute.set_TextColor(Color.White);
			this.line3.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line3, "line3");
			this.line3.Name = "line3";
			this.line3.TabStop = false;
			this.line4.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line4, "line4");
			this.line4.Name = "line4";
			this.line4.TabStop = false;
			componentResourceManager.ApplyResources(this.labelX2, "labelX2");
			this.labelX2.AccessibleRole = AccessibleRole.Text;
			this.labelX2.BackColor = Color.Transparent;
			this.labelX2.get_BackgroundStyle().set_CornerType(1);
			this.labelX2.ForeColor = Color.FromArgb(38, 47, 57);
			this.labelX2.set_ImagePosition(1);
			this.labelX2.Name = "labelX2";
			this.labelX2.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.labelX2.set_TextLineAlignment(StringAlignment.Near);
			this.labelX2.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.labelX1, "labelX1");
			this.labelX1.AccessibleRole = AccessibleRole.Text;
			this.labelX1.BackColor = Color.Transparent;
			this.labelX1.get_BackgroundStyle().set_CornerType(1);
			this.labelX1.ForeColor = Color.FromArgb(38, 47, 57);
			this.labelX1.set_ImagePosition(1);
			this.labelX1.Name = "labelX1";
			this.labelX1.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.labelX1.set_TextLineAlignment(StringAlignment.Near);
			this.labelX1.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.btnSendEmail, "btnSendEmail");
			this.btnSendEmail.AccessibleRole = AccessibleRole.PushButton;
			this.btnSendEmail.set_AntiAlias(true);
			this.btnSendEmail.BackColor = Color.FromArgb(38, 47, 57);
			this.btnSendEmail.set_ColorTable(0);
			this.btnSendEmail.Cursor = Cursors.Hand;
			this.btnSendEmail.set_FocusCuesEnabled(false);
			this.btnSendEmail.Name = "btnSendEmail";
			this.btnSendEmail.set_Style(9);
			this.btnSendEmail.set_TextColor(Color.White);
			this.btnSendEmail.Click += new EventHandler(this.btnSendEmail_Click);
			componentResourceManager.ApplyResources(this.btnOpenTicket, "btnOpenTicket");
			this.btnOpenTicket.AccessibleRole = AccessibleRole.PushButton;
			this.btnOpenTicket.set_AntiAlias(true);
			this.btnOpenTicket.BackColor = Color.FromArgb(38, 47, 57);
			this.btnOpenTicket.set_ColorTable(0);
			this.btnOpenTicket.Cursor = Cursors.Hand;
			this.btnOpenTicket.set_FocusCuesEnabled(false);
			this.btnOpenTicket.Name = "btnOpenTicket";
			this.btnOpenTicket.set_Style(9);
			this.btnOpenTicket.set_TextColor(Color.White);
			this.btnOpenTicket.Click += new EventHandler(this.btnOpenTicket_Click);
			this.tbiContact.set_AttachedControl(this.tbcContact);
			this.tbiContact.set_Image(Resources.tab_contact_selected);
			this.tbiContact.set_Name("tbiContact");
			componentResourceManager.ApplyResources(this.tbiContact, "tbiContact");
			this.tbpSupportSettings.AccessibleRole = AccessibleRole.PageTab;
			this.tbpSupportSettings.set_ColorSchemeStyle(9);
			this.tbpSupportSettings.Controls.Add(this.lblInfoDisableDebug);
			this.tbpSupportSettings.Controls.Add(this.line30);
			this.tbpSupportSettings.Controls.Add(this.line31);
			this.tbpSupportSettings.Controls.Add(this.pnlButtonIpsecTooltip);
			this.tbpSupportSettings.Controls.Add(this.pnlButtonOpenVPNTooltip);
			this.tbpSupportSettings.Controls.Add(this.pnlComboOpenVPNTooltip);
			this.tbpSupportSettings.Controls.Add(this.chkDisableDebugMode);
			this.tbpSupportSettings.Controls.Add(this.btnRepairOpenVPN);
			this.tbpSupportSettings.Controls.Add(this.btnRepairIpSecCertificate);
			this.tbpSupportSettings.Controls.Add(this.lblInfoRepairIpSecCertificate);
			this.tbpSupportSettings.Controls.Add(this.lblDebugLevelInfo);
			this.tbpSupportSettings.Controls.Add(this.lblDebugLevel);
			this.tbpSupportSettings.Controls.Add(this.cmbDebugLevel);
			this.tbpSupportSettings.Controls.Add(this.btnClearLog);
			this.tbpSupportSettings.Controls.Add(this.line1);
			this.tbpSupportSettings.Controls.Add(this.line5);
			this.tbpSupportSettings.Controls.Add(this.line2);
			this.tbpSupportSettings.Controls.Add(this.line8);
			this.tbpSupportSettings.Controls.Add(this.lblInfoRepairOpenVPN);
			this.tbpSupportSettings.Controls.Add(this.lblInfoEnableLog);
			this.tbpSupportSettings.Controls.Add(this.chkEnableLog);
			this.tbpSupportSettings.Cursor = Cursors.Default;
			this.tbpSupportSettings.set_DisabledBackColor(Color.Empty);
			componentResourceManager.ApplyResources(this.tbpSupportSettings, "tbpSupportSettings");
			this.tbpSupportSettings.Name = "tbpSupportSettings";
			this.tbpSupportSettings.get_Style().get_BackColor1().set_Color(Color.FromArgb(247, 247, 247));
			this.tbpSupportSettings.get_Style().get_BackColor2().set_Color(Color.FromArgb(247, 247, 247));
			this.tbpSupportSettings.get_Style().set_Border(1);
			this.tbpSupportSettings.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbpSupportSettings.get_Style().set_BorderSide(11);
			this.tbpSupportSettings.get_Style().set_GradientAngle(90);
			this.tbpSupportSettings.set_TabItem(this.tbiSupportSettings);
			componentResourceManager.ApplyResources(this.lblInfoDisableDebug, "lblInfoDisableDebug");
			this.lblInfoDisableDebug.AccessibleRole = AccessibleRole.Text;
			this.lblInfoDisableDebug.BackColor = Color.Transparent;
			this.lblInfoDisableDebug.get_BackgroundStyle().set_CornerType(1);
			this.lblInfoDisableDebug.Cursor = Cursors.Default;
			this.lblInfoDisableDebug.ForeColor = Color.FromArgb(100, 100, 100);
			this.lblInfoDisableDebug.Name = "lblInfoDisableDebug";
			this.lblInfoDisableDebug.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.lblInfoDisableDebug.set_WordWrap(true);
			this.line30.Cursor = Cursors.Default;
			this.line30.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line30, "line30");
			this.line30.Name = "line30";
			this.line30.TabStop = false;
			this.line31.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line31, "line31");
			this.line31.Name = "line31";
			this.line31.TabStop = false;
			componentResourceManager.ApplyResources(this.pnlButtonIpsecTooltip, "pnlButtonIpsecTooltip");
			this.pnlButtonIpsecTooltip.AccessibleRole = AccessibleRole.HelpBalloon;
			this.pnlButtonIpsecTooltip.BackgroundImage = Resources.ico_infotip2;
			this.pnlButtonIpsecTooltip.Cursor = Cursors.Hand;
			this.pnlButtonIpsecTooltip.Name = "pnlButtonIpsecTooltip";
			componentResourceManager.ApplyResources(this.pnlButtonOpenVPNTooltip, "pnlButtonOpenVPNTooltip");
			this.pnlButtonOpenVPNTooltip.AccessibleRole = AccessibleRole.HelpBalloon;
			this.pnlButtonOpenVPNTooltip.BackgroundImage = Resources.ico_infotip2;
			this.pnlButtonOpenVPNTooltip.Cursor = Cursors.Hand;
			this.pnlButtonOpenVPNTooltip.Name = "pnlButtonOpenVPNTooltip";
			componentResourceManager.ApplyResources(this.pnlComboOpenVPNTooltip, "pnlComboOpenVPNTooltip");
			this.pnlComboOpenVPNTooltip.AccessibleRole = AccessibleRole.HelpBalloon;
			this.pnlComboOpenVPNTooltip.BackgroundImage = Resources.ico_infotip2;
			this.pnlComboOpenVPNTooltip.Cursor = Cursors.Hand;
			this.pnlComboOpenVPNTooltip.Name = "pnlComboOpenVPNTooltip";
			componentResourceManager.ApplyResources(this.chkDisableDebugMode, "chkDisableDebugMode");
			this.chkDisableDebugMode.AccessibleRole = AccessibleRole.CheckButton;
			this.chkDisableDebugMode.BackColor = Color.Transparent;
			this.chkDisableDebugMode.get_BackgroundStyle().set_CornerType(1);
			this.chkDisableDebugMode.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkDisableDebugMode.CheckBoxImageChecked"));
			this.chkDisableDebugMode.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkDisableDebugMode.CheckBoxImageUnChecked"));
			this.chkDisableDebugMode.set_CheckSignSize(new Size(18, 18));
			this.chkDisableDebugMode.set_FocusCuesEnabled(false);
			this.chkDisableDebugMode.Name = "chkDisableDebugMode";
			this.chkDisableDebugMode.TabStop = false;
			this.chkDisableDebugMode.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkDisableDebugMode.add_CheckedChanged(new EventHandler(this.chkDebugMode_CheckedChanged));
			componentResourceManager.ApplyResources(this.btnRepairOpenVPN, "btnRepairOpenVPN");
			this.btnRepairOpenVPN.AccessibleRole = AccessibleRole.PushButton;
			this.btnRepairOpenVPN.BackColor = Color.FromArgb(38, 47, 57);
			this.btnRepairOpenVPN.set_ColorTable(0);
			this.btnRepairOpenVPN.Cursor = Cursors.Hand;
			this.btnRepairOpenVPN.set_FocusCuesEnabled(false);
			this.btnRepairOpenVPN.Name = "btnRepairOpenVPN";
			this.btnRepairOpenVPN.set_Style(9);
			this.btnRepairOpenVPN.TabStop = false;
			this.btnRepairOpenVPN.set_TextColor(Color.White);
			this.btnRepairOpenVPN.EnabledChanged += new EventHandler(this.btnRepairOpenVPN_EnabledChanged);
			this.btnRepairOpenVPN.Click += new EventHandler(this.btnRepairOpenVPN_Click);
			componentResourceManager.ApplyResources(this.btnRepairIpSecCertificate, "btnRepairIpSecCertificate");
			this.btnRepairIpSecCertificate.AccessibleRole = AccessibleRole.PushButton;
			this.btnRepairIpSecCertificate.BackColor = Color.FromArgb(38, 47, 57);
			this.btnRepairIpSecCertificate.set_ColorTable(0);
			this.btnRepairIpSecCertificate.Cursor = Cursors.Hand;
			this.btnRepairIpSecCertificate.set_FocusCuesEnabled(false);
			this.btnRepairIpSecCertificate.Name = "btnRepairIpSecCertificate";
			this.btnRepairIpSecCertificate.set_Style(9);
			this.btnRepairIpSecCertificate.TabStop = false;
			this.btnRepairIpSecCertificate.set_TextColor(Color.White);
			this.btnRepairIpSecCertificate.EnabledChanged += new EventHandler(this.btnRepairIpSecCertificate_EnabledChanged);
			this.btnRepairIpSecCertificate.Click += new EventHandler(this.btnRepairIpSecCertificate_Click);
			componentResourceManager.ApplyResources(this.lblInfoRepairIpSecCertificate, "lblInfoRepairIpSecCertificate");
			this.lblInfoRepairIpSecCertificate.AccessibleRole = AccessibleRole.Text;
			this.lblInfoRepairIpSecCertificate.BackColor = Color.Transparent;
			this.lblInfoRepairIpSecCertificate.get_BackgroundStyle().set_CornerType(1);
			this.lblInfoRepairIpSecCertificate.Cursor = Cursors.Default;
			this.lblInfoRepairIpSecCertificate.ForeColor = Color.FromArgb(100, 100, 100);
			this.lblInfoRepairIpSecCertificate.Name = "lblInfoRepairIpSecCertificate";
			this.lblInfoRepairIpSecCertificate.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.lblInfoRepairIpSecCertificate.set_WordWrap(true);
			this.lblDebugLevelInfo.AccessibleRole = AccessibleRole.Text;
			this.lblDebugLevelInfo.BackColor = Color.Transparent;
			this.lblDebugLevelInfo.get_BackgroundStyle().set_CornerType(1);
			this.lblDebugLevelInfo.Cursor = Cursors.Default;
			componentResourceManager.ApplyResources(this.lblDebugLevelInfo, "lblDebugLevelInfo");
			this.lblDebugLevelInfo.ForeColor = Color.FromArgb(100, 100, 100);
			this.lblDebugLevelInfo.Name = "lblDebugLevelInfo";
			this.lblDebugLevelInfo.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.lblDebugLevelInfo.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.lblDebugLevel, "lblDebugLevel");
			this.lblDebugLevel.AccessibleRole = AccessibleRole.Text;
			this.lblDebugLevel.BackColor = Color.Transparent;
			this.lblDebugLevel.get_BackgroundStyle().set_CornerType(1);
			this.lblDebugLevel.Cursor = Cursors.Default;
			this.lblDebugLevel.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblDebugLevel.Name = "lblDebugLevel";
			this.lblDebugLevel.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			this.lblDebugLevel.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.cmbDebugLevel, "cmbDebugLevel");
			this.cmbDebugLevel.AccessibleRole = AccessibleRole.ComboBox;
			this.cmbDebugLevel.DisplayMember = "Text";
			this.cmbDebugLevel.DrawMode = DrawMode.OwnerDrawFixed;
			this.cmbDebugLevel.DropDownStyle = ComboBoxStyle.DropDownList;
			this.cmbDebugLevel.set_FocusHighlightColor(Color.Empty);
			this.cmbDebugLevel.ForeColor = Color.Black;
			this.cmbDebugLevel.FormattingEnabled = true;
			this.cmbDebugLevel.Name = "cmbDebugLevel";
			this.cmbDebugLevel.set_Style(9);
			this.cmbDebugLevel.TabStop = false;
			this.cmbDebugLevel.SelectedValueChanged += new EventHandler(this.cmbDebugLevel_SelectedValueChanged);
			this.cmbDebugLevel.EnabledChanged += new EventHandler(this.cmbDebugLevel_EnabledChanged);
			componentResourceManager.ApplyResources(this.btnClearLog, "btnClearLog");
			this.btnClearLog.AccessibleRole = AccessibleRole.PushButton;
			this.btnClearLog.BackColor = Color.FromArgb(38, 47, 57);
			this.btnClearLog.set_ColorTable(0);
			this.btnClearLog.Cursor = Cursors.Hand;
			this.btnClearLog.set_FocusCuesEnabled(false);
			this.btnClearLog.Name = "btnClearLog";
			this.btnClearLog.set_Style(9);
			this.btnClearLog.TabStop = false;
			this.btnClearLog.set_TextColor(Color.White);
			this.btnClearLog.EnabledChanged += new EventHandler(this.btnClearLog_EnabledChanged);
			this.btnClearLog.Click += new EventHandler(this.btnClearLog_Click);
			this.line1.Cursor = Cursors.Default;
			this.line1.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line1, "line1");
			this.line1.Name = "line1";
			this.line1.TabStop = false;
			this.line5.Cursor = Cursors.Default;
			this.line5.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line5, "line5");
			this.line5.Name = "line5";
			this.line5.TabStop = false;
			this.line2.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line2, "line2");
			this.line2.Name = "line2";
			this.line2.TabStop = false;
			this.line8.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line8, "line8");
			this.line8.Name = "line8";
			this.line8.TabStop = false;
			componentResourceManager.ApplyResources(this.lblInfoRepairOpenVPN, "lblInfoRepairOpenVPN");
			this.lblInfoRepairOpenVPN.AccessibleRole = AccessibleRole.Text;
			this.lblInfoRepairOpenVPN.BackColor = Color.Transparent;
			this.lblInfoRepairOpenVPN.get_BackgroundStyle().set_CornerType(1);
			this.lblInfoRepairOpenVPN.Cursor = Cursors.Default;
			this.lblInfoRepairOpenVPN.ForeColor = Color.FromArgb(100, 100, 100);
			this.lblInfoRepairOpenVPN.Name = "lblInfoRepairOpenVPN";
			this.lblInfoRepairOpenVPN.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.lblInfoRepairOpenVPN.set_WordWrap(true);
			this.lblInfoEnableLog.AccessibleRole = AccessibleRole.Text;
			this.lblInfoEnableLog.BackColor = Color.Transparent;
			this.lblInfoEnableLog.get_BackgroundStyle().set_CornerType(1);
			this.lblInfoEnableLog.Cursor = Cursors.Default;
			componentResourceManager.ApplyResources(this.lblInfoEnableLog, "lblInfoEnableLog");
			this.lblInfoEnableLog.ForeColor = Color.FromArgb(100, 100, 100);
			this.lblInfoEnableLog.Name = "lblInfoEnableLog";
			this.lblInfoEnableLog.set_SingleLineColor(Color.FromArgb(130, 130, 130));
			this.lblInfoEnableLog.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.chkEnableLog, "chkEnableLog");
			this.chkEnableLog.AccessibleRole = AccessibleRole.CheckButton;
			this.chkEnableLog.BackColor = Color.Transparent;
			this.chkEnableLog.get_BackgroundStyle().set_CornerType(1);
			this.chkEnableLog.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkEnableLog.CheckBoxImageChecked"));
			this.chkEnableLog.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkEnableLog.CheckBoxImageUnChecked"));
			this.chkEnableLog.set_Checked(true);
			this.chkEnableLog.set_CheckSignSize(new Size(18, 18));
			this.chkEnableLog.set_CheckState(CheckState.Checked);
			this.chkEnableLog.set_CheckValue("Y");
			this.chkEnableLog.Cursor = Cursors.Default;
			this.chkEnableLog.set_FocusCuesEnabled(false);
			this.chkEnableLog.Name = "chkEnableLog";
			this.chkEnableLog.TabStop = false;
			this.chkEnableLog.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkEnableLog.add_CheckedChanged(new EventHandler(this.chkEnableLog_CheckedChanged));
			this.chkEnableLog.EnabledChanged += new EventHandler(this.chkEnableLog_EnabledChanged);
			this.tbiSupportSettings.set_AttachedControl(this.tbpSupportSettings);
			this.tbiSupportSettings.set_Image(Resources.tab_support_set);
			this.tbiSupportSettings.set_Name("tbiSupportSettings");
			componentResourceManager.ApplyResources(this.tbiSupportSettings, "tbiSupportSettings");
			this.tbpKB.AccessibleRole = AccessibleRole.PageTab;
			this.tbpKB.Controls.Add(this.pnlKB);
			this.tbpKB.Cursor = Cursors.Default;
			this.tbpKB.set_DisabledBackColor(Color.Empty);
			componentResourceManager.ApplyResources(this.tbpKB, "tbpKB");
			this.tbpKB.Name = "tbpKB";
			this.tbpKB.get_Style().get_BackColor1().set_Color(Color.FromArgb(247, 247, 247));
			this.tbpKB.get_Style().get_BackColor2().set_Color(Color.FromArgb(247, 247, 247));
			this.tbpKB.get_Style().set_Border(1);
			this.tbpKB.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbpKB.get_Style().set_BorderSide(11);
			this.tbpKB.get_Style().set_GradientAngle(90);
			this.tbpKB.set_TabItem(this.tbiKB);
			componentResourceManager.ApplyResources(this.pnlKB, "pnlKB");
			this.pnlKB.Controls.Add(this.lblInfoKB);
			this.pnlKB.Name = "pnlKB";
			componentResourceManager.ApplyResources(this.lblInfoKB, "lblInfoKB");
			this.lblInfoKB.Name = "lblInfoKB";
			this.tbiKB.set_AttachedControl(this.tbpKB);
			this.tbiKB.set_Image(Resources.tab_help_kb);
			this.tbiKB.set_Name("tbiKB");
			componentResourceManager.ApplyResources(this.tbiKB, "tbiKB");
			this.tbpAutoupdater.AccessibleRole = AccessibleRole.PageTab;
			this.tbpAutoupdater.set_ColorSchemeStyle(9);
			this.tbpAutoupdater.Controls.Add(this.line7);
			this.tbpAutoupdater.Controls.Add(this.line6);
			this.tbpAutoupdater.Controls.Add(this.lblInfoNewVersion);
			this.tbpAutoupdater.Controls.Add(this.lblInfoReleaseNotes);
			this.tbpAutoupdater.Controls.Add(this.richTextBox1);
			this.tbpAutoupdater.Controls.Add(this.btnDownloadUpdates);
			this.tbpAutoupdater.Controls.Add(this.btnUpdate);
			this.tbpAutoupdater.Cursor = Cursors.Default;
			this.tbpAutoupdater.set_DisabledBackColor(Color.Empty);
			componentResourceManager.ApplyResources(this.tbpAutoupdater, "tbpAutoupdater");
			this.tbpAutoupdater.Name = "tbpAutoupdater";
			this.tbpAutoupdater.get_Style().get_BackColor1().set_Color(Color.FromArgb(247, 247, 247));
			this.tbpAutoupdater.get_Style().get_BackColor2().set_Color(Color.FromArgb(247, 247, 247));
			this.tbpAutoupdater.get_Style().set_Border(1);
			this.tbpAutoupdater.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbpAutoupdater.get_Style().set_BorderSide(11);
			this.tbpAutoupdater.get_Style().set_GradientAngle(90);
			this.tbpAutoupdater.set_TabItem(this.tbiAutoupdater);
			this.line7.Cursor = Cursors.Default;
			this.line7.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line7, "line7");
			this.line7.Name = "line7";
			this.line7.TabStop = false;
			this.line6.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line6, "line6");
			this.line6.Name = "line6";
			this.line6.TabStop = false;
			this.lblInfoNewVersion.AccessibleRole = AccessibleRole.Dialog;
			this.lblInfoNewVersion.BackColor = Color.Transparent;
			this.lblInfoNewVersion.get_BackgroundStyle().set_CornerType(1);
			this.lblInfoNewVersion.Cursor = Cursors.Default;
			componentResourceManager.ApplyResources(this.lblInfoNewVersion, "lblInfoNewVersion");
			this.lblInfoNewVersion.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblInfoNewVersion.Name = "lblInfoNewVersion";
			this.lblInfoNewVersion.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			this.lblInfoNewVersion.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.lblInfoReleaseNotes, "lblInfoReleaseNotes");
			this.lblInfoReleaseNotes.AccessibleRole = AccessibleRole.None;
			this.lblInfoReleaseNotes.BackColor = Color.Transparent;
			this.lblInfoReleaseNotes.get_BackgroundStyle().set_CornerType(1);
			this.lblInfoReleaseNotes.Cursor = Cursors.Default;
			this.lblInfoReleaseNotes.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblInfoReleaseNotes.Name = "lblInfoReleaseNotes";
			this.lblInfoReleaseNotes.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			this.lblInfoReleaseNotes.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.richTextBox1, "richTextBox1");
			this.richTextBox1.AccessibleRole = AccessibleRole.Dialog;
			this.richTextBox1.BackColor = Color.FromArgb(242, 242, 242);
			this.richTextBox1.BorderStyle = BorderStyle.None;
			this.richTextBox1.Cursor = Cursors.Default;
			this.richTextBox1.ForeColor = Color.FromArgb(38, 47, 57);
			this.richTextBox1.Name = "richTextBox1";
			this.richTextBox1.ReadOnly = true;
			this.richTextBox1.TabStop = false;
			componentResourceManager.ApplyResources(this.btnDownloadUpdates, "btnDownloadUpdates");
			this.btnDownloadUpdates.AccessibleRole = AccessibleRole.PushButton;
			this.btnDownloadUpdates.set_AntiAlias(true);
			this.btnDownloadUpdates.BackColor = Color.FromArgb(28, 158, 27);
			this.btnDownloadUpdates.set_ColorTable(0);
			this.btnDownloadUpdates.Cursor = Cursors.Hand;
			this.btnDownloadUpdates.set_FocusCuesEnabled(false);
			this.btnDownloadUpdates.Name = "btnDownloadUpdates";
			this.btnDownloadUpdates.set_Style(9);
			this.btnDownloadUpdates.set_TextColor(Color.White);
			this.btnDownloadUpdates.Click += new EventHandler(this.btnDownloadUpdates_Click);
			componentResourceManager.ApplyResources(this.btnUpdate, "btnUpdate");
			this.btnUpdate.AccessibleRole = AccessibleRole.PushButton;
			this.btnUpdate.set_AntiAlias(true);
			this.btnUpdate.BackColor = Color.FromArgb(38, 47, 57);
			this.btnUpdate.set_ColorTable(0);
			this.btnUpdate.Cursor = Cursors.Hand;
			this.btnUpdate.set_FocusCuesEnabled(false);
			this.btnUpdate.Name = "btnUpdate";
			this.btnUpdate.set_Style(9);
			this.btnUpdate.set_TextColor(Color.White);
			this.btnUpdate.Click += new EventHandler(this.btnUpdate_Click);
			this.tbiAutoupdater.set_AttachedControl(this.tbpAutoupdater);
			this.tbiAutoupdater.set_Image(Resources.tab_update);
			this.tbiAutoupdater.set_Name("tbiAutoupdater");
			componentResourceManager.ApplyResources(this.tbiAutoupdater, "tbiAutoupdater");
			this.tbpServiceLog.set_CanvasColor(Color.FromArgb(238, 238, 238));
			this.tbpServiceLog.Controls.Add(this.btnCopyToClipboard);
			this.tbpServiceLog.Controls.Add(this.chkSendInfo);
			this.tbpServiceLog.Controls.Add(this.txtLog);
			this.tbpServiceLog.Cursor = Cursors.Default;
			this.tbpServiceLog.set_DisabledBackColor(Color.Empty);
			componentResourceManager.ApplyResources(this.tbpServiceLog, "tbpServiceLog");
			this.tbpServiceLog.Name = "tbpServiceLog";
			this.tbpServiceLog.get_Style().get_BackColor1().set_Color(Color.FromArgb(247, 247, 247));
			this.tbpServiceLog.get_Style().get_BackColor2().set_Color(Color.FromArgb(247, 247, 247));
			this.tbpServiceLog.get_Style().set_Border(1);
			this.tbpServiceLog.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbpServiceLog.get_Style().set_BorderSide(11);
			this.tbpServiceLog.get_Style().get_ForeColor().set_Color(Color.FromArgb(27, 158, 28));
			this.tbpServiceLog.get_Style().set_GradientAngle(90);
			this.tbpServiceLog.set_TabItem(this.tbiServiceLog);
			componentResourceManager.ApplyResources(this.btnCopyToClipboard, "btnCopyToClipboard");
			this.btnCopyToClipboard.AccessibleRole = AccessibleRole.PushButton;
			this.btnCopyToClipboard.set_AntiAlias(true);
			this.btnCopyToClipboard.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCopyToClipboard.set_ColorTable(0);
			this.btnCopyToClipboard.Cursor = Cursors.Hand;
			this.btnCopyToClipboard.set_FocusCuesEnabled(false);
			this.btnCopyToClipboard.Name = "btnCopyToClipboard";
			this.btnCopyToClipboard.set_Style(9);
			this.btnCopyToClipboard.set_TextColor(Color.White);
			this.btnCopyToClipboard.Click += new EventHandler(this.btnCopyToClipboard_Click);
			componentResourceManager.ApplyResources(this.chkSendInfo, "chkSendInfo");
			this.chkSendInfo.AccessibleRole = AccessibleRole.CheckButton;
			this.chkSendInfo.BackColor = Color.Transparent;
			this.chkSendInfo.get_BackgroundStyle().set_CornerType(1);
			this.chkSendInfo.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkSendInfo.CheckBoxImageChecked"));
			this.chkSendInfo.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkSendInfo.CheckBoxImageUnChecked"));
			this.chkSendInfo.set_Checked(true);
			this.chkSendInfo.set_CheckSignSize(new Size(18, 18));
			this.chkSendInfo.set_CheckState(CheckState.Checked);
			this.chkSendInfo.set_CheckValue("Y");
			this.chkSendInfo.set_FocusCuesEnabled(false);
			this.chkSendInfo.Name = "chkSendInfo";
			this.chkSendInfo.set_TextColor(Color.FromArgb(38, 47, 57));
			this.chkSendInfo.EnabledChanged += new EventHandler(this.chkSendInfo_EnabledChanged);
			componentResourceManager.ApplyResources(this.txtLog, "txtLog");
			this.txtLog.AccessibleRole = AccessibleRole.Dialog;
			this.txtLog.BackColor = Color.FromArgb(242, 242, 242);
			this.txtLog.get_BackgroundStyle().set_CornerType(1);
			this.txtLog.Cursor = Cursors.Default;
			this.txtLog.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtLog.Name = "txtLog";
			this.txtLog.set_ReadOnly(true);
			this.txtLog.set_Rtf("{\\rtf1\\ansi\\ansicpg1252\\deff0\\deflang1033{\\fonttbl{\\f0\\fnil\\fcharset0 Courier New;}}\r\n{\\colortbl ;\\red38\\green47\\blue57;}\r\n\\viewkind4\\uc1\\pard\\cf1\\f0\\fs17\\par\r\n}\r\n");
			this.tbiServiceLog.set_AttachedControl(this.tbpServiceLog);
			this.tbiServiceLog.set_Image(Resources.tab_serviceLog);
			this.tbiServiceLog.set_Name("tbiServiceLog");
			componentResourceManager.ApplyResources(this.tbiServiceLog, "tbiServiceLog");
			this.btnColapseSupport.AccessibleRole = AccessibleRole.PushButton;
			this.btnColapseSupport.BackColor = Color.FromArgb(37, 47, 57);
			componentResourceManager.ApplyResources(this.btnColapseSupport, "btnColapseSupport");
			this.btnColapseSupport.set_FocusCuesEnabled(false);
			this.btnColapseSupport.Name = "btnColapseSupport";
			this.btnColapseSupport.set_Style(9);
			this.btnColapseSupport.set_Symbol("");
			this.btnColapseSupport.set_SymbolSize(12f);
			this.btnColapseSupport.set_TextColor(Color.White);
			this.btnColapseSupport.Click += new EventHandler(this.btnColapseSupport_Click);
			this.snpDNSSettings.Controls.Add(this.spcDNSSettings);
			componentResourceManager.ApplyResources(this.snpDNSSettings, "snpDNSSettings");
			this.snpDNSSettings.Name = "snpDNSSettings";
			this.spcDNSSettings.BackColor = Color.FromArgb(247, 247, 247);
			componentResourceManager.ApplyResources(this.spcDNSSettings, "spcDNSSettings");
			this.spcDNSSettings.FixedPanel = FixedPanel.Panel1;
			this.spcDNSSettings.Name = "spcDNSSettings";
			this.spcDNSSettings.Panel2.BackColor = Color.FromArgb(247, 247, 247);
			this.spcDNSSettings.Panel2.Controls.Add(this.tbcDNSSettings);
			this.spcDNSSettings.Panel2.Controls.Add(this.btnColapseDNSSettings);
			this.spcDNSSettings.TabStop = false;
			this.tbcDNSSettings.BackColor = Color.Transparent;
			this.tbcDNSSettings.set_CanReorderTabs(true);
			this.tbcDNSSettings.set_CloseButtonOnTabsAlwaysDisplayed(false);
			this.tbcDNSSettings.get_ColorScheme().set_TabBackground(Color.FromArgb(247, 247, 247));
			this.tbcDNSSettings.get_ColorScheme().set_TabBackground2(Color.FromArgb(247, 247, 247));
			this.tbcDNSSettings.get_ColorScheme().set_TabBorder(Color.Transparent);
			this.tbcDNSSettings.get_ColorScheme().set_TabItemBackground(Color.FromArgb(242, 242, 242));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemBackground2(Color.FromArgb(242, 242, 242));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemBorder(Color.Empty);
			this.tbcDNSSettings.get_ColorScheme().set_TabItemBorderDark(Color.Empty);
			this.tbcDNSSettings.get_ColorScheme().set_TabItemBorderLight(Color.Empty);
			this.tbcDNSSettings.get_ColorScheme().set_TabItemHotBackground(Color.WhiteSmoke);
			this.tbcDNSSettings.get_ColorScheme().set_TabItemHotBackground2(Color.WhiteSmoke);
			this.tbcDNSSettings.get_ColorScheme().set_TabItemHotBorder(Color.FromArgb(250, 250, 250));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemHotBorderDark(Color.FromArgb(250, 250, 250));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemHotBorderLight(Color.FromArgb(250, 250, 250));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemHotText(Color.FromArgb(27, 158, 28));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemSelectedBackground(Color.FromArgb(238, 238, 238));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemSelectedBackground2(Color.FromArgb(238, 238, 238));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemSelectedBorder(Color.FromArgb(242, 242, 242));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemSelectedBorderDark(Color.FromArgb(242, 242, 242));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemSelectedBorderLight(Color.FromArgb(242, 242, 242));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemSelectedText(Color.FromArgb(27, 158, 28));
			this.tbcDNSSettings.get_ColorScheme().set_TabItemSeparator(Color.White);
			this.tbcDNSSettings.get_ColorScheme().set_TabItemSeparatorShade(Color.FromArgb(226, 226, 226));
			this.tbcDNSSettings.get_ColorScheme().set_TabPanelBackground(Color.FromArgb(247, 247, 247));
			this.tbcDNSSettings.get_ColorScheme().set_TabPanelBackground2(Color.FromArgb(247, 247, 247));
			this.tbcDNSSettings.get_ColorScheme().set_TabPanelBorder(Color.FromArgb(242, 242, 242));
			this.tbcDNSSettings.Controls.Add(this.tbpDNSSettings);
			this.tbcDNSSettings.Cursor = Cursors.Hand;
			componentResourceManager.ApplyResources(this.tbcDNSSettings, "tbcDNSSettings");
			this.tbcDNSSettings.set_FixedTabSize(new Size(57, 63));
			this.tbcDNSSettings.ForeColor = Color.FromArgb(153, 0, 0, 0);
			this.tbcDNSSettings.Name = "tbcDNSSettings";
			this.tbcDNSSettings.set_SelectedTabFont(new Font("Segoe UI", 9f, FontStyle.Bold));
			this.tbcDNSSettings.set_SelectedTabIndex(0);
			this.tbcDNSSettings.set_ShowFocusRectangle(false);
			this.tbcDNSSettings.set_TabLayoutType(1);
			this.tbcDNSSettings.get_Tabs().Add(this.tbiDNSSettings);
			componentResourceManager.ApplyResources(this.tbpDNSSettings, "tbpDNSSettings");
			this.tbpDNSSettings.AccessibleRole = AccessibleRole.PageTab;
			this.tbpDNSSettings.set_CanvasColor(Color.Empty);
			this.tbpDNSSettings.Controls.Add(this.line25);
			this.tbpDNSSettings.Controls.Add(this.line26);
			this.tbpDNSSettings.Controls.Add(this.labelX3);
			this.tbpDNSSettings.Controls.Add(this.lblDescDns);
			this.tbpDNSSettings.Controls.Add(this.dgvDNSServers);
			this.tbpDNSSettings.Controls.Add(this.swbIbDNS);
			this.tbpDNSSettings.Controls.Add(this.lblIbDNS);
			this.tbpDNSSettings.Controls.Add(this.lblInfoDNS);
			this.tbpDNSSettings.Cursor = Cursors.Default;
			this.tbpDNSSettings.set_DisabledBackColor(Color.Empty);
			this.tbpDNSSettings.Name = "tbpDNSSettings";
			this.tbpDNSSettings.get_Style().get_BackColor1().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpDNSSettings.get_Style().get_BackColor2().set_Color(Color.FromArgb(238, 238, 238));
			this.tbpDNSSettings.get_Style().set_Border(1);
			this.tbpDNSSettings.get_Style().get_BorderColor().set_Color(Color.FromArgb(242, 242, 242));
			this.tbpDNSSettings.get_Style().set_BorderSide(11);
			this.tbpDNSSettings.get_Style().set_BorderWidth(0);
			this.tbpDNSSettings.get_Style().set_Font(new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Pixel));
			this.tbpDNSSettings.get_Style().get_ForeColor().set_Color(Color.FromArgb(27, 158, 28));
			this.tbpDNSSettings.get_Style().set_GradientAngle(90);
			this.tbpDNSSettings.get_StyleMouseDown().set_Font(new Font("Segoe UI", 72f, FontStyle.Regular, GraphicsUnit.Point, 0));
			this.tbpDNSSettings.get_StyleMouseOver().set_Font(new Font("Segoe UI", 72f, FontStyle.Regular, GraphicsUnit.Point, 0));
			this.tbpDNSSettings.set_TabItem(this.tbiDNSSettings);
			this.line25.ForeColor = Color.FromArgb(204, 204, 204);
			componentResourceManager.ApplyResources(this.line25, "line25");
			this.line25.Name = "line25";
			this.line26.ForeColor = Color.White;
			componentResourceManager.ApplyResources(this.line26, "line26");
			this.line26.Name = "line26";
			componentResourceManager.ApplyResources(this.labelX3, "labelX3");
			this.labelX3.AccessibleRole = AccessibleRole.Text;
			this.labelX3.BackColor = Color.Transparent;
			this.labelX3.get_BackgroundStyle().set_CornerType(1);
			this.labelX3.Cursor = Cursors.Default;
			this.labelX3.ForeColor = Color.FromArgb(38, 47, 57);
			this.labelX3.Name = "labelX3";
			this.labelX3.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			this.labelX3.set_WordWrap(true);
			componentResourceManager.ApplyResources(this.lblDescDns, "lblDescDns");
			this.lblDescDns.AccessibleRole = AccessibleRole.Text;
			this.lblDescDns.BackColor = Color.Transparent;
			this.lblDescDns.ForeColor = Color.FromArgb(130, 130, 130);
			this.lblDescDns.Name = "lblDescDns";
			componentResourceManager.ApplyResources(this.dgvDNSServers, "dgvDNSServers");
			this.dgvDNSServers.AccessibleRole = AccessibleRole.List;
			this.dgvDNSServers.AllowUserToAddRows = false;
			this.dgvDNSServers.AllowUserToDeleteRows = false;
			this.dgvDNSServers.AllowUserToResizeRows = false;
			this.dgvDNSServers.BackgroundColor = Color.FromArgb(242, 242, 242);
			this.dgvDNSServers.BorderStyle = BorderStyle.None;
			this.dgvDNSServers.ClipboardCopyMode = DataGridViewClipboardCopyMode.Disable;
			dataGridViewCellStyle18.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle18.BackColor = SystemColors.Control;
			dataGridViewCellStyle18.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle18.ForeColor = Color.Black;
			dataGridViewCellStyle18.SelectionBackColor = Color.FromArgb(242, 242, 242);
			dataGridViewCellStyle18.SelectionForeColor = Color.Black;
			dataGridViewCellStyle18.WrapMode = DataGridViewTriState.True;
			this.dgvDNSServers.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle18;
			this.dgvDNSServers.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
			this.dgvDNSServers.Columns.AddRange(new DataGridViewColumn[]
			{
				this.CountryDNS
			});
			this.dgvDNSServers.Cursor = Cursors.Hand;
			dataGridViewCellStyle19.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle19.BackColor = Color.FromArgb(242, 242, 242);
			dataGridViewCellStyle19.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle19.ForeColor = Color.Black;
			dataGridViewCellStyle19.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle19.SelectionForeColor = Color.Black;
			dataGridViewCellStyle19.WrapMode = DataGridViewTriState.False;
			this.dgvDNSServers.DefaultCellStyle = dataGridViewCellStyle19;
			this.dgvDNSServers.EnableHeadersVisualStyles = false;
			this.dgvDNSServers.GridColor = Color.FromArgb(157, 157, 157);
			this.dgvDNSServers.set_HighlightSelectedColumnHeaders(false);
			this.dgvDNSServers.MultiSelect = false;
			this.dgvDNSServers.Name = "dgvDNSServers";
			this.dgvDNSServers.set_PaintEnhancedSelection(false);
			this.dgvDNSServers.ReadOnly = true;
			dataGridViewCellStyle20.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle20.BackColor = SystemColors.Control;
			dataGridViewCellStyle20.Font = new Font("Segoe UI", 9f);
			dataGridViewCellStyle20.ForeColor = Color.Black;
			dataGridViewCellStyle20.SelectionForeColor = Color.Black;
			dataGridViewCellStyle20.WrapMode = DataGridViewTriState.True;
			this.dgvDNSServers.RowHeadersDefaultCellStyle = dataGridViewCellStyle20;
			this.dgvDNSServers.RowTemplate.DefaultCellStyle.Font = new Font("Segoe UI", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.dgvDNSServers.RowTemplate.Height = 35;
			this.dgvDNSServers.RowTemplate.ReadOnly = true;
			this.dgvDNSServers.RowTemplate.Resizable = DataGridViewTriState.False;
			this.dgvDNSServers.set_SelectAllSignVisible(false);
			this.dgvDNSServers.SelectionChanged += new EventHandler(this.dgvDNSServers_SelectionChanged);
			this.dgvDNSServers.KeyDown += new KeyEventHandler(this.dgvDNSServers_KeyDown);
			componentResourceManager.ApplyResources(this.CountryDNS, "CountryDNS");
			this.CountryDNS.Name = "CountryDNS";
			this.CountryDNS.ReadOnly = true;
			componentResourceManager.ApplyResources(this.swbIbDNS, "swbIbDNS");
			this.swbIbDNS.AccessibleRole = AccessibleRole.PushButton;
			this.swbIbDNS.BackColor = Color.White;
			this.swbIbDNS.get_BackgroundStyle().set_CornerType(2);
			this.swbIbDNS.Cursor = Cursors.Hand;
			this.swbIbDNS.set_FocusCuesEnabled(false);
			this.swbIbDNS.Name = "swbIbDNS";
			this.swbIbDNS.set_OffBackColor(Color.FromArgb(130, 130, 130));
			this.swbIbDNS.set_OffTextColor(Color.White);
			this.swbIbDNS.set_OnBackColor(Color.FromArgb(28, 158, 27));
			this.swbIbDNS.set_OnTextColor(Color.White);
			this.swbIbDNS.set_ReadOnlyMarkerColor(Color.FromArgb(255, 0, 64));
			this.swbIbDNS.set_Style(9);
			this.swbIbDNS.set_SwitchBackColor(Color.FromArgb(38, 47, 57));
			this.swbIbDNS.set_SwitchBorderColor(Color.FromArgb(38, 47, 57));
			this.swbIbDNS.set_SwitchClickTogglesValue(true);
			this.swbIbDNS.set_SwitchFont(new Font("Segoe UI", 9.75f, FontStyle.Bold, GraphicsUnit.Point, 0));
			this.swbIbDNS.set_SwitchWidth(25);
			this.swbIbDNS.add_ValueChanged(new EventHandler(this.swbIbDNS_ValueChanged));
			componentResourceManager.ApplyResources(this.lblIbDNS, "lblIbDNS");
			this.lblIbDNS.ForeColor = Color.FromArgb(61, 61, 61);
			this.lblIbDNS.Name = "lblIbDNS";
			componentResourceManager.ApplyResources(this.lblInfoDNS, "lblInfoDNS");
			this.lblInfoDNS.AccessibleRole = AccessibleRole.Text;
			this.lblInfoDNS.BackColor = Color.Transparent;
			this.lblInfoDNS.Cursor = Cursors.Default;
			this.lblInfoDNS.ForeColor = Color.FromArgb(130, 130, 130);
			this.lblInfoDNS.Name = "lblInfoDNS";
			this.tbiDNSSettings.set_AttachedControl(this.tbpDNSSettings);
			this.tbiDNSSettings.set_BackColor(Color.FromArgb(247, 247, 247));
			this.tbiDNSSettings.set_BorderColor(Color.FromArgb(247, 247, 247));
			this.tbiDNSSettings.set_CloseButtonVisible(false);
			this.tbiDNSSettings.set_Image(Resources.tab_DNS_selected);
			this.tbiDNSSettings.set_LightBorderColor(Color.FromArgb(247, 247, 247));
			this.tbiDNSSettings.set_Name("tbiDNSSettings");
			componentResourceManager.ApplyResources(this.tbiDNSSettings, "tbiDNSSettings");
			this.btnColapseDNSSettings.AccessibleRole = AccessibleRole.PushButton;
			this.btnColapseDNSSettings.BackColor = Color.FromArgb(37, 47, 57);
			componentResourceManager.ApplyResources(this.btnColapseDNSSettings, "btnColapseDNSSettings");
			this.btnColapseDNSSettings.set_FocusCuesEnabled(false);
			this.btnColapseDNSSettings.Name = "btnColapseDNSSettings";
			this.btnColapseDNSSettings.set_Style(9);
			this.btnColapseDNSSettings.set_Symbol("");
			this.btnColapseDNSSettings.set_SymbolSize(12f);
			this.btnColapseDNSSettings.set_TextColor(Color.White);
			this.btnColapseDNSSettings.Click += new EventHandler(this.btnColapseDNSSettings_Click);
			this.snpAccount.BackColor = Color.FromArgb(247, 247, 247);
			this.snpAccount.Controls.Add(this.spcAccount);
			componentResourceManager.ApplyResources(this.snpAccount, "snpAccount");
			this.snpAccount.Name = "snpAccount";
			this.separator1.set_FixedSize(new Size(3, 1));
			this.separator1.set_Name("separator1");
			this.separator1.get_Padding().set_Bottom(2);
			this.separator1.get_Padding().set_Left(6);
			this.separator1.get_Padding().set_Right(6);
			this.separator1.get_Padding().set_Top(2);
			this.separator1.set_SeparatorOrientation(2);
			this.sniLogo.set_AccessibleDescription("Links to the ibvpn site.");
			this.sniLogo.set_AccessibleName("ibVPN logo");
			this.sniLogo.set_AccessibleRole(AccessibleRole.TitleBar);
			this.sniLogo.set_ColorTable(8);
			this.sniLogo.set_Cursor(Cursors.Hand);
			this.sniLogo.set_FixedSize(new Size(105, 80));
			this.sniLogo.set_Image(Resources.ibvpn_logo);
			this.sniLogo.set_ImageFixedSize(new Size(105, 80));
			this.sniLogo.set_ImagePaddingHorizontal(0);
			this.sniLogo.set_ImagePaddingVertical(0);
			this.sniLogo.set_ImagePosition(2);
			this.sniLogo.set_Name("sniLogo");
			this.sniLogo.set_StopPulseOnMouseOver(false);
			this.sniLogo.add_Click(new EventHandler(this.sniLogo_Click));
			this.sniAccount.set_AccessibleDescription("Will display the user's account information.");
			this.sniAccount.set_AccessibleName("Account menu button");
			this.sniAccount.set_AccessibleRole(AccessibleRole.MenuItem);
			this.sniAccount.set_ColorTable(8);
			this.sniAccount.set_Cursor(Cursors.Hand);
			this.sniAccount.set_FixedSize(new Size(105, 42));
			this.sniAccount.set_Image((Image)componentResourceManager.GetObject("sniAccount.Image"));
			this.sniAccount.set_ImageFixedSize(new Size(26, 26));
			this.sniAccount.set_ImagePaddingHorizontal(4);
			this.sniAccount.set_ItemAlignment(1);
			this.sniAccount.set_Name("sniAccount");
			this.sniAccount.set_Panel(this.snpAccount);
			componentResourceManager.ApplyResources(this.sniAccount, "sniAccount");
			this.sniAccount.add_Click(new EventHandler(this.sniAccount_Click));
			this.sniDashboard.set_AccessibleDescription("Reduces the view just to dashboard view.");
			this.sniDashboard.set_AccessibleName("Dashboard");
			this.sniDashboard.set_AccessibleRole(AccessibleRole.MenuItem);
			this.sniDashboard.set_BackColors(new Color[0]);
			this.sniDashboard.set_BorderColors(new Color[0]);
			this.sniDashboard.set_ColorTable(8);
			this.sniDashboard.set_Cursor(Cursors.Hand);
			this.sniDashboard.set_FixedSize(new Size(105, 41));
			this.sniDashboard.set_Image((Image)componentResourceManager.GetObject("sniDashboard.Image"));
			this.sniDashboard.set_ImageFixedSize(new Size(25, 25));
			this.sniDashboard.set_ImagePaddingHorizontal(4);
			this.sniDashboard.set_Name("sniDashboard");
			this.sniDashboard.set_Panel(this.snpDashboard);
			componentResourceManager.ApplyResources(this.sniDashboard, "sniDashboard");
			this.sniDashboard.add_Click(new EventHandler(this.sniDashboard_Click));
			this.sniServers.set_AccessibleDescription("Everything related to Servers and protocol.");
			this.sniServers.set_AccessibleName("Servers menu button");
			this.sniServers.set_AccessibleRole(AccessibleRole.MenuItem);
			this.sniServers.set_BorderColors(new Color[0]);
			this.sniServers.set_Checked(true);
			this.sniServers.set_ColorTable(8);
			this.sniServers.set_Cursor(Cursors.Hand);
			this.sniServers.set_FixedSize(new Size(105, 43));
			this.sniServers.set_Image((Image)componentResourceManager.GetObject("sniServers.Image"));
			this.sniServers.set_ImageFixedSize(new Size(26, 26));
			this.sniServers.set_ImagePaddingHorizontal(4);
			this.sniServers.set_Name("sniServers");
			this.sniServers.set_Panel(this.snpServers);
			componentResourceManager.ApplyResources(this.sniServers, "sniServers");
			this.sniServers.add_Click(new EventHandler(this.sniServers_Click));
			this.sniVPNSettings.set_AccessibleDescription("Everything related to the application settings");
			this.sniVPNSettings.set_AccessibleName("Settings menu button");
			this.sniVPNSettings.set_AccessibleRole(AccessibleRole.MenuItem);
			this.sniVPNSettings.set_BorderColors(new Color[0]);
			this.sniVPNSettings.set_ColorTable(8);
			this.sniVPNSettings.set_Cursor(Cursors.Hand);
			this.sniVPNSettings.set_FixedSize(new Size(105, 42));
			this.sniVPNSettings.set_Image((Image)componentResourceManager.GetObject("sniVPNSettings.Image"));
			this.sniVPNSettings.set_ImageFixedSize(new Size(26, 26));
			this.sniVPNSettings.set_ImagePaddingHorizontal(4);
			this.sniVPNSettings.set_Name("sniVPNSettings");
			this.sniVPNSettings.set_Panel(this.snpVPNSettings);
			componentResourceManager.ApplyResources(this.sniVPNSettings, "sniVPNSettings");
			this.sniVPNSettings.add_Click(new EventHandler(this.sniVPNSettings_Click));
			this.sniDNSSettings.set_AccessibleDescription("Will display the smart DNS page.");
			this.sniDNSSettings.set_AccessibleName("ibDPNS menu button");
			this.sniDNSSettings.set_AccessibleRole(AccessibleRole.MenuItem);
			this.sniDNSSettings.set_ColorTable(8);
			this.sniDNSSettings.set_Cursor(Cursors.Hand);
			this.sniDNSSettings.set_FixedSize(new Size(105, 41));
			this.sniDNSSettings.set_Image((Image)componentResourceManager.GetObject("sniDNSSettings.Image"));
			this.sniDNSSettings.set_ImageFixedSize(new Size(26, 26));
			this.sniDNSSettings.set_ImagePaddingHorizontal(4);
			this.sniDNSSettings.set_Name("sniDNSSettings");
			this.sniDNSSettings.set_Panel(this.snpDNSSettings);
			componentResourceManager.ApplyResources(this.sniDNSSettings, "sniDNSSettings");
			this.sniDNSSettings.add_Click(new EventHandler(this.sniDNSSettings_Click));
			this.sniSupport.set_Cursor(Cursors.Hand);
			this.sniSupport.set_FixedSize(new Size(105, 41));
			this.sniSupport.set_Image((Image)componentResourceManager.GetObject("sniSupport.Image"));
			this.sniSupport.set_ImageFixedSize(new Size(26, 26));
			this.sniSupport.set_ImagePaddingHorizontal(4);
			this.sniSupport.set_Name("sniSupport");
			this.sniSupport.set_Panel(this.snpSupport);
			this.sniSupport.set_SymbolSet(1);
			componentResourceManager.ApplyResources(this.sniSupport, "sniSupport");
			this.sniSupport.add_Click(new EventHandler(this.sniSupport_Click));
			this.sniLogout.set_AccessibleDescription("Will log the user out. The Login page will be displayed.");
			this.sniLogout.set_AccessibleName("Logout menu button");
			this.sniLogout.set_AccessibleRole(AccessibleRole.MenuItem);
			this.sniLogout.set_Cursor(Cursors.Hand);
			this.sniLogout.set_FixedSize(new Size(105, 45));
			this.sniLogout.set_Image((Image)componentResourceManager.GetObject("sniLogout.Image"));
			this.sniLogout.set_ImageFixedSize(new Size(26, 26));
			this.sniLogout.set_ImagePaddingHorizontal(4);
			this.sniLogout.set_ItemAlignment(1);
			this.sniLogout.set_Name("sniLogout");
			componentResourceManager.ApplyResources(this.sniLogout, "sniLogout");
			this.sniLogout.add_Click(new EventHandler(this.sniLogout_Click));
			this.sniPromo.set_ColorTable(8);
			this.sniPromo.set_Cursor(Cursors.Hand);
			this.sniPromo.set_FixedSize(new Size(105, 175));
			this.sniPromo.set_Image(Resources.blank_banner);
			this.sniPromo.set_ImageFixedSize(new Size(105, 175));
			this.sniPromo.set_ImagePaddingHorizontal(0);
			this.sniPromo.set_ImagePaddingVertical(0);
			this.sniPromo.set_ImagePosition(2);
			this.sniPromo.set_Name("sniPromo");
			this.sniPromo.set_StopPulseOnMouseOver(false);
			this.sniPromo.add_Click(new EventHandler(this.sniPromo_Click));
			this.textBoxItem1.set_Name("textBoxItem1");
			this.textBoxItem1.set_WatermarkColor(SystemColors.GrayText);
			this.styleManager1.set_ManagerStyle(9);
			this.styleManager1.set_MetroColorParameters(new MetroColorGeneratorParameters(Color.FromArgb(242, 242, 242), Color.FromArgb(37, 47, 57)));
			this.colorPickerDropDown1.set_GlobalItem(false);
			this.colorPickerDropDown1.set_Name("colorPickerDropDown1");
			componentResourceManager.ApplyResources(this.colorPickerDropDown1, "colorPickerDropDown1");
			this.colorPickerDropDown2.set_GlobalItem(false);
			this.colorPickerDropDown2.set_Name("colorPickerDropDown2");
			componentResourceManager.ApplyResources(this.colorPickerDropDown2, "colorPickerDropDown2");
			this.imageList1.ImageStream = (ImageListStreamer)componentResourceManager.GetObject("imageList1.ImageStream");
			this.imageList1.TransparentColor = Color.Transparent;
			this.imageList1.Images.SetKeyName(0, "DNS_Tab");
			this.imageList1.Images.SetKeyName(1, "DNS_Tab_Selected");
			this.imageList1.Images.SetKeyName(2, "BM");
			this.imageList1.Images.SetKeyName(3, "BT");
			this.imageList1.Images.SetKeyName(4, "BW");
			this.imageList1.Images.SetKeyName(5, "VG");
			this.imageList1.Images.SetKeyName(6, "BN");
			this.imageList1.Images.SetKeyName(7, "BF");
			this.imageList1.Images.SetKeyName(8, "BI");
			this.imageList1.Images.SetKeyName(9, "KH");
			this.imageList1.Images.SetKeyName(10, "CM");
			this.imageList1.Images.SetKeyName(11, "CV");
			this.imageList1.Images.SetKeyName(12, "KY");
			this.imageList1.Images.SetKeyName(13, "CF");
			this.imageList1.Images.SetKeyName(14, "TD");
			this.imageList1.Images.SetKeyName(15, "CX");
			this.imageList1.Images.SetKeyName(16, "CC");
			this.imageList1.Images.SetKeyName(17, "KM");
			this.imageList1.Images.SetKeyName(18, "CK");
			this.imageList1.Images.SetKeyName(19, "CR");
			this.imageList1.Images.SetKeyName(20, "CU");
			this.imageList1.Images.SetKeyName(21, "CW");
			this.imageList1.Images.SetKeyName(22, "CY");
			this.imageList1.Images.SetKeyName(23, "CD");
			this.imageList1.Images.SetKeyName(24, "DJ");
			this.imageList1.Images.SetKeyName(25, "DM");
			this.imageList1.Images.SetKeyName(26, "DO");
			this.imageList1.Images.SetKeyName(27, "TL");
			this.imageList1.Images.SetKeyName(28, "EC");
			this.imageList1.Images.SetKeyName(29, "GQ");
			this.imageList1.Images.SetKeyName(30, "ER");
			this.imageList1.Images.SetKeyName(31, "ET");
			this.imageList1.Images.SetKeyName(32, "FK");
			this.imageList1.Images.SetKeyName(33, "FO");
			this.imageList1.Images.SetKeyName(34, "FJ");
			this.imageList1.Images.SetKeyName(35, "PF");
			this.imageList1.Images.SetKeyName(36, "GA");
			this.imageList1.Images.SetKeyName(37, "GM");
			this.imageList1.Images.SetKeyName(38, "GH");
			this.imageList1.Images.SetKeyName(39, "GI");
			this.imageList1.Images.SetKeyName(40, "GL");
			this.imageList1.Images.SetKeyName(41, "GD");
			this.imageList1.Images.SetKeyName(42, "GU");
			this.imageList1.Images.SetKeyName(43, "GG");
			this.imageList1.Images.SetKeyName(44, "GN");
			this.imageList1.Images.SetKeyName(45, "GW");
			this.imageList1.Images.SetKeyName(46, "GY");
			this.imageList1.Images.SetKeyName(47, "HT");
			this.imageList1.Images.SetKeyName(48, "HN");
			this.imageList1.Images.SetKeyName(49, "IM");
			this.imageList1.Images.SetKeyName(50, "JM");
			this.imageList1.Images.SetKeyName(51, "JE");
			this.imageList1.Images.SetKeyName(52, "JO");
			this.imageList1.Images.SetKeyName(53, "KE");
			this.imageList1.Images.SetKeyName(54, "KI");
			this.imageList1.Images.SetKeyName(55, "KO");
			this.imageList1.Images.SetKeyName(56, "KG");
			this.imageList1.Images.SetKeyName(57, "LA");
			this.imageList1.Images.SetKeyName(58, "LB");
			this.imageList1.Images.SetKeyName(59, "LS");
			this.imageList1.Images.SetKeyName(60, "LR");
			this.imageList1.Images.SetKeyName(61, "LY");
			this.imageList1.Images.SetKeyName(62, "LI");
			this.imageList1.Images.SetKeyName(63, "MO");
			this.imageList1.Images.SetKeyName(64, "MK");
			this.imageList1.Images.SetKeyName(65, "MG");
			this.imageList1.Images.SetKeyName(66, "MW");
			this.imageList1.Images.SetKeyName(67, "MV");
			this.imageList1.Images.SetKeyName(68, "ML");
			this.imageList1.Images.SetKeyName(69, "MT");
			this.imageList1.Images.SetKeyName(70, "MH");
			this.imageList1.Images.SetKeyName(71, "MR");
			this.imageList1.Images.SetKeyName(72, "MU");
			this.imageList1.Images.SetKeyName(73, "YT");
			this.imageList1.Images.SetKeyName(74, "FM");
			this.imageList1.Images.SetKeyName(75, "MC");
			this.imageList1.Images.SetKeyName(76, "MN");
			this.imageList1.Images.SetKeyName(77, "ME");
			this.imageList1.Images.SetKeyName(78, "MS");
			this.imageList1.Images.SetKeyName(79, "MA");
			this.imageList1.Images.SetKeyName(80, "MZ");
			this.imageList1.Images.SetKeyName(81, "MM");
			this.imageList1.Images.SetKeyName(82, "NA");
			this.imageList1.Images.SetKeyName(83, "NR");
			this.imageList1.Images.SetKeyName(84, "NP");
			this.imageList1.Images.SetKeyName(85, "AN");
			this.imageList1.Images.SetKeyName(86, "NC");
			this.imageList1.Images.SetKeyName(87, "NI");
			this.imageList1.Images.SetKeyName(88, "NE");
			this.imageList1.Images.SetKeyName(89, "NU");
			this.imageList1.Images.SetKeyName(90, "KP");
			this.imageList1.Images.SetKeyName(91, "MP");
			this.imageList1.Images.SetKeyName(92, "OM");
			this.imageList1.Images.SetKeyName(93, "PK");
			this.imageList1.Images.SetKeyName(94, "PW");
			this.imageList1.Images.SetKeyName(95, "PS");
			this.imageList1.Images.SetKeyName(96, "PG");
			this.imageList1.Images.SetKeyName(97, "PY");
			this.imageList1.Images.SetKeyName(98, "PH");
			this.imageList1.Images.SetKeyName(99, "PN");
			this.imageList1.Images.SetKeyName(100, "PR");
			this.imageList1.Images.SetKeyName(101, "QA");
			this.imageList1.Images.SetKeyName(102, "CG");
			this.imageList1.Images.SetKeyName(103, "RW");
			this.imageList1.Images.SetKeyName(104, "BL");
			this.imageList1.Images.SetKeyName(105, "SH");
			this.imageList1.Images.SetKeyName(106, "KN");
			this.imageList1.Images.SetKeyName(107, "LC");
			this.imageList1.Images.SetKeyName(108, "MF");
			this.imageList1.Images.SetKeyName(109, "VC");
			this.imageList1.Images.SetKeyName(110, "WS");
			this.imageList1.Images.SetKeyName(111, "SM");
			this.imageList1.Images.SetKeyName(112, "ST");
			this.imageList1.Images.SetKeyName(113, "SN");
			this.imageList1.Images.SetKeyName(114, "SC");
			this.imageList1.Images.SetKeyName(115, "SL");
			this.imageList1.Images.SetKeyName(116, "SB");
			this.imageList1.Images.SetKeyName(117, "SO");
			this.imageList1.Images.SetKeyName(118, "SS");
			this.imageList1.Images.SetKeyName(119, "LK");
			this.imageList1.Images.SetKeyName(120, "SZ");
			this.imageList1.Images.SetKeyName(121, "SY");
			this.imageList1.Images.SetKeyName(122, "TJ");
			this.imageList1.Images.SetKeyName(123, "TZ");
			this.imageList1.Images.SetKeyName(124, "TH");
			this.imageList1.Images.SetKeyName(125, "TG");
			this.imageList1.Images.SetKeyName(126, "TK");
			this.imageList1.Images.SetKeyName(127, "TO");
			this.imageList1.Images.SetKeyName(128, "TT");
			this.imageList1.Images.SetKeyName(129, "TN");
			this.imageList1.Images.SetKeyName(130, "TM");
			this.imageList1.Images.SetKeyName(131, "TC");
			this.imageList1.Images.SetKeyName(132, "TV");
			this.imageList1.Images.SetKeyName(133, "VI");
			this.imageList1.Images.SetKeyName(134, "UG");
			this.imageList1.Images.SetKeyName(135, "UZ");
			this.imageList1.Images.SetKeyName(136, "VU");
			this.imageList1.Images.SetKeyName(137, "VA");
			this.imageList1.Images.SetKeyName(138, "VE");
			this.imageList1.Images.SetKeyName(139, "WF");
			this.imageList1.Images.SetKeyName(140, "EH");
			this.imageList1.Images.SetKeyName(141, "YE");
			this.imageList1.Images.SetKeyName(142, "ZM");
			this.imageList1.Images.SetKeyName(143, "ZW");
			this.imageList1.Images.SetKeyName(144, "SV");
			this.imageList1.Images.SetKeyName(145, "CH");
			this.imageList1.Images.SetKeyName(146, "IE");
			this.imageList1.Images.SetKeyName(147, "IT");
			this.imageList1.Images.SetKeyName(148, "RU");
			this.imageList1.Images.SetKeyName(149, "ES");
			this.imageList1.Images.SetKeyName(150, "HK");
			this.imageList1.Images.SetKeyName(151, "FI");
			this.imageList1.Images.SetKeyName(152, "JP");
			this.imageList1.Images.SetKeyName(153, "PA");
			this.imageList1.Images.SetKeyName(154, "PL");
			this.imageList1.Images.SetKeyName(155, "PT");
			this.imageList1.Images.SetKeyName(156, "BR");
			this.imageList1.Images.SetKeyName(157, "CL");
			this.imageList1.Images.SetKeyName(158, "AR");
			this.imageList1.Images.SetKeyName(159, "AU");
			this.imageList1.Images.SetKeyName(160, "EG");
			this.imageList1.Images.SetKeyName(161, "IL");
			this.imageList1.Images.SetKeyName(162, "SA");
			this.imageList1.Images.SetKeyName(163, "MX");
			this.imageList1.Images.SetKeyName(164, "SG");
			this.imageList1.Images.SetKeyName(165, "NZ");
			this.imageList1.Images.SetKeyName(166, "CN");
			this.imageList1.Images.SetKeyName(167, "LU");
			this.imageList1.Images.SetKeyName(168, "ZA");
			this.imageList1.Images.SetKeyName(169, "TR");
			this.imageList1.Images.SetKeyName(170, "KR");
			this.imageList1.Images.SetKeyName(171, "VN");
			this.imageList1.Images.SetKeyName(172, "AF");
			this.imageList1.Images.SetKeyName(173, "AL");
			this.imageList1.Images.SetKeyName(174, "DZ");
			this.imageList1.Images.SetKeyName(175, "AD");
			this.imageList1.Images.SetKeyName(176, "AO");
			this.imageList1.Images.SetKeyName(177, "AI");
			this.imageList1.Images.SetKeyName(178, "AQ");
			this.imageList1.Images.SetKeyName(179, "AG");
			this.imageList1.Images.SetKeyName(180, "AM");
			this.imageList1.Images.SetKeyName(181, "AS");
			this.imageList1.Images.SetKeyName(182, "AW");
			this.imageList1.Images.SetKeyName(183, "AZ");
			this.imageList1.Images.SetKeyName(184, "BS");
			this.imageList1.Images.SetKeyName(185, "BH");
			this.imageList1.Images.SetKeyName(186, "UK");
			this.imageList1.Images.SetKeyName(187, "US");
			this.imageList1.Images.SetKeyName(188, "CA");
			this.imageList1.Images.SetKeyName(189, "FS");
			this.imageList1.Images.SetKeyName(190, "BD");
			this.imageList1.Images.SetKeyName(191, "BB");
			this.imageList1.Images.SetKeyName(192, "BY");
			this.imageList1.Images.SetKeyName(193, "BZ");
			this.imageList1.Images.SetKeyName(194, "BJ");
			this.imageList1.Images.SetKeyName(195, "BO");
			this.imageList1.Images.SetKeyName(196, "BA");
			this.imageList1.Images.SetKeyName(197, "CL");
			this.imageList1.Images.SetKeyName(198, "HR");
			this.imageList1.Images.SetKeyName(199, "CO");
			this.imageList1.Images.SetKeyName(200, "DK");
			this.imageList1.Images.SetKeyName(201, "GE");
			this.imageList1.Images.SetKeyName(202, "GR");
			this.imageList1.Images.SetKeyName(203, "EE");
			this.imageList1.Images.SetKeyName(204, "GT");
			this.imageList1.Images.SetKeyName(205, "IR");
			this.imageList1.Images.SetKeyName(206, "IQ");
			this.imageList1.Images.SetKeyName(207, "KW");
			this.imageList1.Images.SetKeyName(208, "LV");
			this.imageList1.Images.SetKeyName(209, "LU");
			this.imageList1.Images.SetKeyName(210, "KZ");
			this.imageList1.Images.SetKeyName(211, "MX");
			this.imageList1.Images.SetKeyName(212, "MD");
			this.imageList1.Images.SetKeyName(213, "PA");
			this.imageList1.Images.SetKeyName(214, "AT");
			this.imageList1.Images.SetKeyName(215, "IN");
			this.imageList1.Images.SetKeyName(216, "UA");
			this.imageList1.Images.SetKeyName(217, "LT");
			this.imageList1.Images.SetKeyName(218, "NE");
			this.imageList1.Images.SetKeyName(219, "UY");
			this.imageList1.Images.SetKeyName(220, "SK");
			this.imageList1.Images.SetKeyName(221, "SI");
			this.imageList1.Images.SetKeyName(222, "RS");
			this.imageList1.Images.SetKeyName(223, "SD");
			this.imageList1.Images.SetKeyName(224, "TW");
			this.imageList1.Images.SetKeyName(225, "HU");
			this.imageList1.Images.SetKeyName(226, "FastestServer");
			this.imageList1.Images.SetKeyName(227, "RO");
			this.imageList1.Images.SetKeyName(228, "DE");
			this.imageList1.Images.SetKeyName(229, "BE");
			this.imageList1.Images.SetKeyName(230, "NL");
			this.imageList1.Images.SetKeyName(231, "FR");
			this.imageList1.Images.SetKeyName(232, "BG");
			this.imageList1.Images.SetKeyName(233, "IS");
			this.imageList1.Images.SetKeyName(234, "NO");
			this.imageList1.Images.SetKeyName(235, "CZ");
			this.imageList1.Images.SetKeyName(236, "SE");
			this.imageList1.Images.SetKeyName(237, "FV");
			this.imageList1.Images.SetKeyName(238, "FVC");
			this.imageList1.Images.SetKeyName(239, "FVS");
			this.imageList1.Images.SetKeyName(240, "FVI");
			this.imageList1.Images.SetKeyName(241, "FSI");
			this.imageList1.Images.SetKeyName(242, "FSS");
			this.imageList1.Images.SetKeyName(243, "FSC");
			this.imageList1.Images.SetKeyName(244, "RFI");
			this.imageList1.Images.SetKeyName(245, "RFC");
			this.imageList1.Images.SetKeyName(246, "RFS");
			this.imageList1.Images.SetKeyName(247, "SR");
			this.imageList1.Images.SetKeyName(248, "ID");
			this.imageList1.Images.SetKeyName(249, "MY");
			this.imageList1.Images.SetKeyName(250, "AE");
			componentResourceManager.ApplyResources(this.notifyIconIbVPN, "notifyIconIbVPN");
			this.notifyIconIbVPN.Click += new EventHandler(this.notifyIconIbVPN_Click);
			this.notifyIconIbVPN.MouseClick += new MouseEventHandler(this.notifyIconIbVPN_MouseClick);
			this.dataGridViewCheckBoxXColumn1.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("dataGridViewCheckBoxXColumn1.CheckBoxImageChecked"));
			this.dataGridViewCheckBoxXColumn1.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("dataGridViewCheckBoxXColumn1.CheckBoxImageUnChecked"));
			this.dataGridViewCheckBoxXColumn1.set_Checked(true);
			this.dataGridViewCheckBoxXColumn1.set_CheckState(CheckState.Indeterminate);
			this.dataGridViewCheckBoxXColumn1.set_CheckValue("True");
			this.dataGridViewCheckBoxXColumn1.set_CheckValueChecked("True");
			this.dataGridViewCheckBoxXColumn1.set_CheckValueIndeterminate("True");
			this.dataGridViewCheckBoxXColumn1.set_CheckValueUnchecked("False");
			this.dataGridViewCheckBoxXColumn1.DataPropertyName = "Favourite";
			dataGridViewCellStyle21.Alignment = DataGridViewContentAlignment.MiddleCenter;
			dataGridViewCellStyle21.WrapMode = DataGridViewTriState.False;
			this.dataGridViewCheckBoxXColumn1.DefaultCellStyle = dataGridViewCellStyle21;
			componentResourceManager.ApplyResources(this.dataGridViewCheckBoxXColumn1, "dataGridViewCheckBoxXColumn1");
			this.dataGridViewCheckBoxXColumn1.Name = "dataGridViewCheckBoxXColumn1";
			this.dataGridViewCheckBoxXColumn1.Resizable = DataGridViewTriState.False;
			this.imageList2.ImageStream = (ImageListStreamer)componentResourceManager.GetObject("imageList2.ImageStream");
			this.imageList2.TransparentColor = Color.Transparent;
			this.imageList2.Images.SetKeyName(0, "ico_installer_IBman_128x128_Plin_Verde.ico");
			componentResourceManager.ApplyResources(this.txtSearchUV, "txtSearchUV");
			this.txtSearchUV.AccessibleRole = AccessibleRole.Caret;
			this.txtSearchUV.BackColor = SystemColors.Control;
			this.txtSearchUV.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtSearchUV.Name = "txtSearchUV";
			componentResourceManager.ApplyResources(this, "$this");
			base.AutoScaleMode = AutoScaleMode.Dpi;
			base.set_CaptionFont(new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0));
			base.Controls.Add(this.sideNavIbVPN);
			this.DoubleBuffered = true;
			this.set_EnableGlass(false);
			this.ForeColor = Color.FromArgb(38, 47, 57);
			base.FormBorderStyle = FormBorderStyle.FixedSingle;
			base.KeyPreview = true;
			base.MaximizeBox = false;
			base.Name = "MainForm";
			base.set_TopLeftCornerSize(0);
			base.TopMost = true;
			base.set_TopRightCornerSize(0);
			base.FormClosing += new FormClosingEventHandler(this.MainForm_FormClosing);
			base.Load += new EventHandler(this.MainForm_Load);
			base.Shown += new EventHandler(this.MainForm_Shown);
			base.LocationChanged += new EventHandler(this.MainForm_LocationChanged);
			base.KeyDown += new KeyEventHandler(this.MainForm_KeyDown);
			base.Resize += new EventHandler(this.MainForm_Resize);
			this.spcVPNSettings.Panel2.ResumeLayout(false);
			((ISupportInitialize)this.spcVPNSettings).EndInit();
			this.spcVPNSettings.ResumeLayout(false);
			this.tbcVPNSettings.EndInit();
			this.tbcVPNSettings.ResumeLayout(false);
			this.tbpPrivacy.ResumeLayout(false);
			this.tbpPrivacy.PerformLayout();
			this.tbpBehaviour.ResumeLayout(false);
			this.tbpKillSwitch.ResumeLayout(false);
			this.tbpKillSwitch.PerformLayout();
			this.dgvKillSwitch.EndInit();
			this.snpServers.ResumeLayout(false);
			this.spcServers.Panel1.ResumeLayout(false);
			this.spcServers.Panel1.PerformLayout();
			this.spcServers.Panel2.ResumeLayout(false);
			((ISupportInitialize)this.spcServers).EndInit();
			this.spcServers.ResumeLayout(false);
			this.tbcServers.EndInit();
			this.tbcServers.ResumeLayout(false);
			this.tbpUsageView.ResumeLayout(false);
			this.dgvServersCopy.EndInit();
			this.dgvServers.EndInit();
			this.tbpProtocolsList.ResumeLayout(false);
			this.grpProtocols.ResumeLayout(false);
			this.grpProtocols.PerformLayout();
			this.spcDashboard.Panel1.ResumeLayout(false);
			((ISupportInitialize)this.spcDashboard).EndInit();
			this.spcDashboard.ResumeLayout(false);
			((ISupportInitialize)this.pctPromo).EndInit();
			this.spcAccount.Panel2.ResumeLayout(false);
			((ISupportInitialize)this.spcAccount).EndInit();
			this.spcAccount.ResumeLayout(false);
			this.tbcAccount.EndInit();
			this.tbcAccount.ResumeLayout(false);
			this.tbpAccount.ResumeLayout(false);
			this.tbpAccount.PerformLayout();
			this.dgvAccountServers.EndInit();
			this.dgvPackages.EndInit();
			this.sideNavIbVPN.ResumeLayout(false);
			this.sideNavIbVPN.PerformLayout();
			this.snpDashboard.ResumeLayout(false);
			this.snpVPNSettings.ResumeLayout(false);
			this.snpSupport.ResumeLayout(false);
			this.spcSupport.Panel2.ResumeLayout(false);
			((ISupportInitialize)this.spcSupport).EndInit();
			this.spcSupport.ResumeLayout(false);
			this.tbcSupport.EndInit();
			this.tbcSupport.ResumeLayout(false);
			this.tbcContact.ResumeLayout(false);
			this.tbpSupportSettings.ResumeLayout(false);
			this.tbpKB.ResumeLayout(false);
			this.pnlKB.ResumeLayout(false);
			this.pnlKB.PerformLayout();
			this.tbpAutoupdater.ResumeLayout(false);
			this.tbpServiceLog.ResumeLayout(false);
			this.tbpServiceLog.PerformLayout();
			this.snpDNSSettings.ResumeLayout(false);
			this.spcDNSSettings.Panel2.ResumeLayout(false);
			((ISupportInitialize)this.spcDNSSettings).EndInit();
			this.spcDNSSettings.ResumeLayout(false);
			this.tbcDNSSettings.EndInit();
			this.tbcDNSSettings.ResumeLayout(false);
			this.tbpDNSSettings.ResumeLayout(false);
			this.tbpDNSSettings.PerformLayout();
			this.dgvDNSServers.EndInit();
			this.snpAccount.ResumeLayout(false);
			base.ResumeLayout(false);
		}
	}
}
