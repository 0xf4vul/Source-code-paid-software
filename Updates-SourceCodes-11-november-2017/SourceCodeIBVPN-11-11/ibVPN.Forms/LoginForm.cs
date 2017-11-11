using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Controls;
using DevComponents.DotNetBar.Metro.ColorTables;
using DevComponents.DotNetBar.Rendering;
using ibBLL;
using ibVPN.Helpers;
using ibVPN.Properties;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security.Cryptography.X509Certificates;
using System.Threading;
using System.Windows.Forms;
using System.Xml;

namespace ibVPN.Forms
{
	public class LoginForm : OfficeForm
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly LoginForm.<>c <>9 = new LoginForm.<>c();

			public static Func<NetworkInterface, bool> <>9__90_0;

			public static Func<NetworkInterface, bool> <>9__90_1;

			public static Func<NetworkInterface, IEnumerable<GatewayIPAddressInformation>> <>9__90_2;

			public static Func<GatewayIPAddressInformation, IPAddress> <>9__90_3;

			public static Func<IPAddress, bool> <>9__90_4;

			internal bool <GetDefaultGateway>b__90_0(NetworkInterface n)
			{
				return n.OperationalStatus == OperationalStatus.Up;
			}

			internal bool <GetDefaultGateway>b__90_1(NetworkInterface n)
			{
				return n.NetworkInterfaceType != NetworkInterfaceType.Loopback;
			}

			internal IEnumerable<GatewayIPAddressInformation> <GetDefaultGateway>b__90_2(NetworkInterface n)
			{
				IPInterfaceProperties expr_06 = n.GetIPProperties();
				if (expr_06 == null)
				{
					return null;
				}
				return expr_06.GatewayAddresses;
			}

			internal IPAddress <GetDefaultGateway>b__90_3(GatewayIPAddressInformation g)
			{
				if (g == null)
				{
					return null;
				}
				return g.Address;
			}

			internal bool <GetDefaultGateway>b__90_4(IPAddress a)
			{
				return a != null;
			}
		}

		private const string NOTIFICATION_MESSAGE_BOX = "ibVPN client notification/info message";

		private GeneralHelper helper = new GeneralHelper();

		private const string IPSEC_CERTIFICATE_PATH = "\\script\\client.ibvpn.com.cer";

		private readonly APIManager apiManager;

		private string userXMLLocation = string.Empty;

		private string defaultXMLLocation = string.Empty;

		private string IP1 = string.Empty;

		private bool _autoLogin;

		private bool startMinimized;

		private bool autoconnect;

		private bool disableDebugMode;

		private bool alwaysOnTop;

		private string lastProtocol = string.Empty;

		private string lastConnectedServer = string.Empty;

		private string IP2 = string.Empty;

		private string IP3 = string.Empty;

		private string IP4 = string.Empty;

		private string IP5 = string.Empty;

		private int check;

		private int timeNewTry;

		private string apiKey = string.Empty;

		private BackgroundWorker bw = new BackgroundWorker();

		private BackgroundWorker bw_CreateMainForm = new BackgroundWorker();

		private BackgroundWorker installIpSecWorker = new BackgroundWorker();

		private VPNCryptography cryptography = new VPNCryptography();

		private MainForm form;

		private Color initialButtonColor;

		private bool loginFailed;

		private bool loginAPIerror;

		private Logger logger = new Logger();

		private ContextMenu notifyIconLoginContextMenu = new ContextMenu();

		private MenuItem menuItem1 = new MenuItem();

		private MenuItem menuItem2 = new MenuItem();

		private bool firstLoad = true;

		private string appName = string.Empty;

		private string appPath = string.Empty;

		private string debugPath = string.Empty;

		private string amplitude = string.Empty;

		private System.Windows.Forms.Timer timer;

		private const double timerUpdate = 100.0;

		private int lastLoginX;

		private int lastLoginY;

		private bool centerWindow;

		private string defaultGateway;

		private bool normalShow;

		private static readonly IntPtr HWND_TOPMOST = new IntPtr(-1);

		private const uint SWP_NOSIZE = 1u;

		private const uint SWP_NOMOVE = 2u;

		private const uint SWP_SHOWWINDOW = 64u;

		private static readonly IntPtr HWND_NOTOPMOST = new IntPtr(-2);

		private static readonly IntPtr HWND_TOP = new IntPtr(0);

		private static readonly IntPtr HWND_BOTTOM = new IntPtr(1);

		private IContainer components;

		private TextBoxX txtEmail;

		private TextBoxX txtPassword;

		private LabelX lblEmail;

		private LabelX lblPassword;

		private RichTextBox rchLoginLog;

		private Panel pnlCredentials;

		private LabelX lblMessage;

		private Button btnCancel;

		private Line line1Separator;

		private Panel pnlContainerLogin;

		private PictureBox imgLogoLogin;

		private CheckBox chkRememberMe;

		private LinkLabel lnkForgotPassword;

		private Label lblCopyright;

		private NotifyIcon notifyIconLogin;

		private StyleManager styleManager1;

		private LinkLabel lnkSettings;

		private LinkLabel lnkDebug;

		private ButtonX btnLogin;

		private LabelX lblVersion;

		private LinkLabel lnkCreateAccount;

		public int UserId
		{
			get;
			set;
		}

		public string Password
		{
			get;
			set;
		}

		public string ApiUrl
		{
			get;
			set;
		}

		[DllImport("user32.dll")]
		private static extern bool SetWindowPos(IntPtr hWnd, IntPtr hWndInsertAfter, int X, int Y, int cx, int cy, uint uFlags);

		[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
		public static extern IntPtr GetActiveWindow();

		public LoginForm()
		{
			this.<Password>k__BackingField = string.Empty;
			this.<ApiUrl>k__BackingField = string.Empty;
			base..ctor();
			this.InitializeComponent();
			LoginForm.SetButtonsColorTable();
			this.apiManager = new APIManager();
			this.initialButtonColor = this.btnLogin.BackColor;
			this.bw.WorkerSupportsCancellation = true;
			this.bw.DoWork += new DoWorkEventHandler(this.Bw_DoWork);
			this.bw.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.Bw_RunWorkerCompleted);
			base.Shown += new EventHandler(this.LoginForm_Shown);
			this.bw_CreateMainForm.WorkerSupportsCancellation = true;
			this.bw_CreateMainForm.DoWork += new DoWorkEventHandler(this.Bw_CreateMainForm_DoWork);
			this.bw_CreateMainForm.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.Bw_CreateMainForm_RunWorkerCompleted);
			this.installIpSecWorker.DoWork += new DoWorkEventHandler(this.InstallIpSecWorker_DoWork);
			this.logger.log("gata constructor LoginForm 0 param");
		}

		private void InstallIpSecWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			this.InstallIpSecCertificate();
		}

		public LoginForm(bool autoLogin)
		{
			this.<Password>k__BackingField = string.Empty;
			this.<ApiUrl>k__BackingField = string.Empty;
			base..ctor();
			this._autoLogin = autoLogin;
			if (this._autoLogin)
			{
				base.Hide();
			}
			this.InitializeComponent();
			LoginForm.SetButtonsColorTable();
			this.apiManager = new APIManager();
			this.bw.WorkerSupportsCancellation = true;
			this.initialButtonColor = this.btnLogin.BackColor;
			this.bw.DoWork += new DoWorkEventHandler(this.Bw_DoWork);
			this.bw.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.Bw_RunWorkerCompleted);
			base.Shown += new EventHandler(this.LoginForm_Shown);
			this.bw_CreateMainForm.WorkerSupportsCancellation = true;
			this.bw_CreateMainForm.DoWork += new DoWorkEventHandler(this.Bw_CreateMainForm_DoWork);
			this.bw_CreateMainForm.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.Bw_CreateMainForm_RunWorkerCompleted);
			this.installIpSecWorker.DoWork += new DoWorkEventHandler(this.InstallIpSecWorker_DoWork);
			this.logger.log("gata constructor LoginForm cu autologin");
		}

		private void Bw_CreateMainForm_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			this.timer.Stop();
			if (this.txtEmail.Text.Length > 0)
			{
				this.txtEmail.SelectionStart = this.txtEmail.Text.Length;
				this.txtEmail.SelectionLength = 0;
			}
			this.txtEmail.Focus();
			if (!this._autoLogin)
			{
				this.btnLogin.Enabled = true;
			}
		}

		private void Bw_CreateMainForm_DoWork(object sender, DoWorkEventArgs e)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.CreateMainForm();
				}));
				return;
			}
			this.CreateMainForm();
		}

		private void timer_Tick(object sender, EventArgs e)
		{
			if (!this.bw_CreateMainForm.IsBusy)
			{
				this.bw_CreateMainForm.RunWorkerAsync();
			}
		}

		private void LoginForm_Shown(object sender, EventArgs e)
		{
			this.logger.log("se vede LoginForm");
			this.ForceLoginFormRemainInFront();
			this.InitializeCreateMainFormTimer();
			this.timer.Start();
		}

		private void InitializeCreateMainFormTimer()
		{
			this.timer = new System.Windows.Forms.Timer();
			this.timer.Interval = 100;
			this.timer.Tick += new EventHandler(this.timer_Tick);
		}

		private void CreateMainForm()
		{
			this.logger.log("inainte de  - new MainForm");
			this.form = new MainForm();
			this.logger.log("dupa - new MainForm");
			this.logger.log("inainte de - form.LoadLogin()");
			this.form.LoadLogin();
			this.logger.log("dupa - form.LoadLogin()");
			this.firstLoad = true;
			if (this._autoLogin)
			{
				this.logger.log("incepe auto login");
				this.Login();
			}
		}

		private void Bw_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			this.logger.log("incepe Bw_RunWorkerCompleted - (s-a terminat logarea) si incepe pornire MainForm");
			if (this.UserId != 0 && this.ApiUrl != string.Empty)
			{
				string packages = this.GetPackages(this.UserId, this.Password, this.ApiUrl);
				if (!(packages == string.Empty) && !(packages == "0"))
				{
					if (packages != null)
					{
						if (packages != "no packages")
						{
							this.helper.MessageBoxShow(packages, "ibVPN client notification/info message", 1, true, true);
						}
						else
						{
							new CustomInfoMessageBox().ShowDialog();
							this.SetInfoLabelEmpty();
						}
					}
				}
				else
				{
					this.GetUserSettings();
					if (this.form.UserId != this.UserId || this.form.formClosed || this.form.errorLoadServerList || this.loginAPIerror)
					{
						if (!this.firstLoad || this.form.formClosed || this.form.errorLoadServerList || this.loginAPIerror)
						{
							this.form = new MainForm();
							this.form.LoadLogin();
						}
						this.form.UserId = this.UserId;
						this.form.Password = this.Password;
						this.form.ApiUrl = this.ApiUrl;
						this.form.Amplitude = this.amplitude;
						this.logger.log("S-a lansat LoadServersAPI - din loginform initial");
						this.form.LoadServersAPI(true);
					}
					this.firstLoad = false;
					this.form.formClosed = false;
					this.form.errorLoadServerList = false;
					this.loginAPIerror = false;
					this.form.SetInitialMainFormPosition();
					if (this.autoconnect && this.lastProtocol != string.Empty && this.lastConnectedServer != string.Empty)
					{
						this.form.autoconnectLogin = true;
						this.form.lastConnectedServerForAutoconnect = this.lastConnectedServer;
						this.form.lastProtocolForAutoconnect = this.lastProtocol;
						this.form.SetDebugLevelForAutoconnect();
					}
					this.form.VisibleChanged += new EventHandler(this.Form_VisibleChanged);
					if (!this.startMinimized)
					{
						this.form.set_WindowState(FormWindowState.Normal);
					}
					this.notifyIconLogin.Visible = false;
					this.form.ShowDialog();
					this.logger.log("dupa form.ShowDialog(); - din LoginForm");
					if (!this.form.logoutPressed)
					{
						this.logger.log("inainte de Close() - se inchide LoginForm - din LoginForm");
						base.Close();
					}
					else
					{
						this.form.logoutPressed = false;
						this.logger.log("inainte de GetCredentials dupa inchiderea MainForm - din LoginForm");
						this.GetCredentials();
						this.SetInfoLabelInitial();
						this.SetLoginFormPosition();
						this.logger.log("inainte de Show()- dupa inchidere MainForm - din LoginForm");
						base.Show();
						this.logger.log("dupa Show()- dupa inchidere MainForm - din LoginForm");
						this.ForceLoginFormRemainInFront();
					}
				}
			}
			this.btnLogin.Enabled = true;
			this.Cursor = Cursors.Default;
			if (!base.IsDisposed)
			{
				this.notifyIconLogin.Visible = true;
			}
			if (this.loginFailed)
			{
				this.SetInfoLabelConnectionError();
				this.SetButtonLoginText("Retry Log In");
			}
			this.logger.log("gata Bw_RunWorkerCompleted - GataLoginFormAsync() - din LoginForm");
		}

		private void ForceLoginFormRemainInFront()
		{
			this.normalShow = true;
			this.SetLoginFormTopMost();
			if (!this.alwaysOnTop)
			{
				this.normalShow = false;
				this.SetLoginFormTopMost();
			}
			base.set_WindowState(FormWindowState.Normal);
		}

		[DllImport("user32.dll")]
		private static extern IntPtr GetForegroundWindow();

		public bool IsActive(IntPtr handle)
		{
			return LoginForm.GetForegroundWindow() == handle;
		}

		public void SetLoginFormTopMost()
		{
			IntPtr activeWindow = LoginForm.GetActiveWindow();
			if (this.normalShow)
			{
				LoginForm.SetWindowPos(activeWindow, LoginForm.HWND_TOPMOST, 0, 0, 0, 0, 67u);
				return;
			}
			LoginForm.SetWindowPos(activeWindow, LoginForm.HWND_NOTOPMOST, 0, 0, 0, 0, 67u);
		}

		private void Form_VisibleChanged(object sender, EventArgs e)
		{
			if (this.form.Visible)
			{
				this.form.VisibleChanged -= new EventHandler(this.Form_VisibleChanged);
				base.Hide();
			}
		}

		private void Bw_DoWork(object sender, DoWorkEventArgs e)
		{
			this.LoginAsync();
		}

		private void LoginForm_Load(object sender, EventArgs e)
		{
			if (!this.FoundIpsecCertificate() && !this.installIpSecWorker.IsBusy)
			{
				this.installIpSecWorker.RunWorkerAsync();
			}
			this.SetUserSettingsXmlPath();
			if (!File.Exists(this.userXMLLocation))
			{
				File.Copy(this.defaultXMLLocation, this.userXMLLocation, true);
			}
			this.UpdateUserSettingsXml();
			this.SetLoginFormPosition();
			this.notifyIconLogin.Visible = true;
			this.InitializeNotifyInconContextMenu();
			this.SetInfoLabelInitial();
			this.GetAppVersion();
			this.GetCredentials();
			if (!this.disableDebugMode)
			{
				this.StartLogger(this.debugPath);
			}
			this.GetUserSettings();
			this.logger.log("LoginForm_Load");
			this.GetIPs();
			this.logger.log("dupa  -GetIps");
			this.logger.log("gata LoginForm_Load");
		}

		private void SetLoginFormPosition()
		{
			this.GetCoordinates();
			if (this.lastLoginX == -1 && this.lastLoginY == -1)
			{
				this.SetLoginFormCenterInitialPosition();
				return;
			}
			if (this.centerWindow)
			{
				this.SetLoginFormCenterPosition();
				return;
			}
			this.SetLoginFormUsualPosition();
		}

		private void SetLoginFormUsualPosition()
		{
			base.StartPosition = FormStartPosition.Manual;
			IEnumerable<Screen> arg_32_0 = Screen.AllScreens;
			int width = Screen.PrimaryScreen.Bounds.Width;
			int width2 = Screen.PrimaryScreen.Bounds.Width;
			if (arg_32_0.Count<Screen>() == 1)
			{
				while (this.lastLoginX > width)
				{
					this.lastLoginX -= width;
				}
				while (this.lastLoginY > width2)
				{
					this.lastLoginY -= width2;
				}
			}
			base.Location = new Point(this.lastLoginX, this.lastLoginY);
		}

		private void SetLoginFormCenterPosition()
		{
			Point point = new Point(Screen.PrimaryScreen.Bounds.Width / 2, Screen.PrimaryScreen.Bounds.Height / 2);
			int x = point.X - base.Width / 2;
			int y = point.Y - 268;
			if (this.centerWindow)
			{
				base.Location = new Point(x, y);
			}
		}

		private void SetLoginFormCenterInitialPosition()
		{
			Point point = new Point(Screen.PrimaryScreen.Bounds.Width / 2, Screen.PrimaryScreen.Bounds.Height / 2);
			int x = point.X - base.Width / 2;
			int y = point.Y - 268;
			base.Location = new Point(x, y);
		}

		private static void SetButtonsColorTable()
		{
			Office2007ButtonItemColorTable expr_2E = ((Office2007Renderer)GlobalManager.get_Renderer()).get_ColorTable().get_ButtonItemColors().get_Item(Enum.GetName(typeof(eButtonColor), 0));
			expr_2E.Pressed.OuterBorder = new LinearGradientColorTable(Color.FromArgb(40, 0, 0, 0));
			expr_2E.Pressed.InnerBorder = new LinearGradientColorTable(Color.White);
			expr_2E.Pressed.Background = new LinearGradientColorTable(Color.FromArgb(50, 255, 255, 255));
			expr_2E.MouseOver.OuterBorder = new LinearGradientColorTable(Color.FromArgb(40, 0, 0, 0));
			expr_2E.MouseOver.InnerBorder = new LinearGradientColorTable(Color.White);
			expr_2E.MouseOver.Background = new LinearGradientColorTable(Color.FromArgb(20, 0, 0, 0));
		}

		private void GetIPs()
		{
			ArrayList arrayList = this.apiManager.DeserializeSettings();
			this.IP1 = arrayList[0].ToString();
			this.IP2 = arrayList[1].ToString();
			this.IP3 = arrayList[2].ToString();
			this.IP4 = arrayList[3].ToString();
			this.IP5 = arrayList[4].ToString();
			this.check = Convert.ToInt32(arrayList[5]);
			this.timeNewTry = Convert.ToInt32(arrayList[6]);
			this.apiKey = arrayList[7].ToString();
		}

		private void GetAppVersion()
		{
			Version version = Assembly.GetExecutingAssembly().GetName().Version;
			string text = "Version : " + version.ToString();
			this.lblVersion.Text = text;
		}

		public static IPAddress GetDefaultGateway()
		{
			IEnumerable<NetworkInterface> arg_24_0 = NetworkInterface.GetAllNetworkInterfaces();
			Func<NetworkInterface, bool> arg_24_1;
			if ((arg_24_1 = LoginForm.<>c.<>9__90_0) == null)
			{
				arg_24_1 = (LoginForm.<>c.<>9__90_0 = new Func<NetworkInterface, bool>(LoginForm.<>c.<>9.<GetDefaultGateway>b__90_0));
			}
			IEnumerable<NetworkInterface> arg_48_0 = arg_24_0.Where(arg_24_1);
			Func<NetworkInterface, bool> arg_48_1;
			if ((arg_48_1 = LoginForm.<>c.<>9__90_1) == null)
			{
				arg_48_1 = (LoginForm.<>c.<>9__90_1 = new Func<NetworkInterface, bool>(LoginForm.<>c.<>9.<GetDefaultGateway>b__90_1));
			}
			IEnumerable<NetworkInterface> arg_6C_0 = arg_48_0.Where(arg_48_1);
			Func<NetworkInterface, IEnumerable<GatewayIPAddressInformation>> arg_6C_1;
			if ((arg_6C_1 = LoginForm.<>c.<>9__90_2) == null)
			{
				arg_6C_1 = (LoginForm.<>c.<>9__90_2 = new Func<NetworkInterface, IEnumerable<GatewayIPAddressInformation>>(LoginForm.<>c.<>9.<GetDefaultGateway>b__90_2));
			}
			IEnumerable<GatewayIPAddressInformation> arg_90_0 = arg_6C_0.SelectMany(arg_6C_1);
			Func<GatewayIPAddressInformation, IPAddress> arg_90_1;
			if ((arg_90_1 = LoginForm.<>c.<>9__90_3) == null)
			{
				arg_90_1 = (LoginForm.<>c.<>9__90_3 = new Func<GatewayIPAddressInformation, IPAddress>(LoginForm.<>c.<>9.<GetDefaultGateway>b__90_3));
			}
			IEnumerable<IPAddress> arg_B4_0 = arg_90_0.Select(arg_90_1);
			Func<IPAddress, bool> arg_B4_1;
			if ((arg_B4_1 = LoginForm.<>c.<>9__90_4) == null)
			{
				arg_B4_1 = (LoginForm.<>c.<>9__90_4 = new Func<IPAddress, bool>(LoginForm.<>c.<>9.<GetDefaultGateway>b__90_4));
			}
			return arg_B4_0.FirstOrDefault(arg_B4_1);
		}

		private string GetPackages(int userId, string password, string url)
		{
			string result;
			try
			{
				string text = string.Empty;
				ArrayList apiServersLogin = this.apiManager.GetApiServersLogin(userId, password, url);
				this.logger.log("log task 105-3 - pas1.1");
				if (apiServersLogin.Count == 1)
				{
					if (apiServersLogin[0].ToString() == "0")
					{
						this.logger.log("log task 105-3 - pas1.2");
						text = "0";
					}
					else if (apiServersLogin[0].ToString() == "3")
					{
						this.logger.log("log task 105-3 - pas1.3");
						text = "no packages";
					}
				}
				result = text;
			}
			catch
			{
				this.logger.log("log error task 105-3 - pas1.4");
				result = null;
			}
			return result;
		}

		private void GetCredentials()
		{
			Hashtable settings = this.GetSettings(this.userXMLLocation);
			if ((string)settings["remember"] == "True")
			{
				this.chkRememberMe.Checked = true;
				this.txtEmail.Text = this.cryptography.Decrypt((string)settings["username"]);
				this.txtPassword.Text = this.cryptography.Decrypt((string)settings["password"]);
				return;
			}
			this.chkRememberMe.Checked = false;
			this.txtEmail.Text = string.Empty;
			this.txtPassword.Text = string.Empty;
		}

		private void GetCoordinates()
		{
			Hashtable settings = this.GetSettings(this.userXMLLocation);
			this.lastLoginX = Convert.ToInt32(settings["lastX"]);
			this.lastLoginY = Convert.ToInt32(settings["lastY"]);
			if ((string)settings["centerWindow"] == "True")
			{
				this.centerWindow = true;
				return;
			}
			this.centerWindow = false;
		}

		private void GetUserSettings()
		{
			Hashtable settings = this.GetSettings(this.userXMLLocation);
			if ((string)settings["startMinimized"] == "True")
			{
				this.startMinimized = true;
			}
			else
			{
				this.startMinimized = false;
			}
			if ((string)settings["autoconnect"] == "True")
			{
				this.autoconnect = true;
				this.lastProtocol = (string)settings["lastprotocol"];
				this.lastConnectedServer = (string)settings["lastconnectedserver"];
			}
			else
			{
				this.autoconnect = false;
			}
			if ((string)settings["disableDebugMode"] == "True")
			{
				this.disableDebugMode = true;
			}
			else
			{
				this.disableDebugMode = false;
			}
			if ((string)settings["alwaysOnTop"] == "True")
			{
				this.alwaysOnTop = true;
			}
			else
			{
				this.alwaysOnTop = false;
			}
			this.defaultGateway = (string)settings["defaultGateway"];
			IPAddress iPAddress = LoginForm.GetDefaultGateway();
			string msg = (iPAddress != null) ? ("existing defaultgateway : " + iPAddress.ToString()) : "existing defaultgateway : null ";
			this.logger.log(msg);
			if (iPAddress == null || iPAddress.ToString() == "0.0.0.0")
			{
				if (this.defaultGateway != null && this.defaultGateway != "0.0.0.0")
				{
					this.logger.log("incepe btnRestoreInternet_Click- din LoginForm");
					this.RestoreDefaultRoute();
					return;
				}
				this.logger.log("nu exista o rute defaultGateway corecta- din LoginForm");
			}
		}

		private void RestoreDefaultRoute()
		{
			try
			{
				this.logger.log("s-a incercat RestoreDefaultRoute- din LoginForm: " + this.defaultGateway.ToString());
				new Process
				{
					StartInfo = new ProcessStartInfo
					{
						WindowStyle = ProcessWindowStyle.Hidden,
						FileName = "cmd.exe",
						Arguments = "/c route add 0.0.0.0 mask 0.0.0.0 " + this.defaultGateway.ToString()
					}
				}.Start();
				this.logger.log("s-a reusit RestoreDefaultRoute - defaultGateway  din loginForm : " + this.defaultGateway.ToString());
			}
			catch (Exception ex)
			{
				this.logger.log("RestoreDefaultRoute failed - din LoginForm" + ex.Message);
			}
		}

		public void btnLogin_Click(object sender, EventArgs e)
		{
			this.logger.log("s-a apasat buton login- incepe btnLogin_Click - " + this.btnLogin.Text);
			ArrayList arrayList = this.apiManager.DeserializeSettings();
			this.IP1 = arrayList[0].ToString();
			this.IP2 = arrayList[1].ToString();
			this.IP3 = arrayList[2].ToString();
			this.IP4 = arrayList[3].ToString();
			this.IP5 = arrayList[4].ToString();
			this.check = Convert.ToInt32(arrayList[5]);
			this.timeNewTry = Convert.ToInt32(arrayList[6]);
			this.apiKey = arrayList[7].ToString();
			this.Login();
		}

		private void Login()
		{
			this.Cursor = Cursors.AppStarting;
			if (this.EmailFormatValidating())
			{
				this.XmlWriter(this.chkRememberMe.Checked.ToString(), this.cryptography.Encrypt(this.txtEmail.Text.Trim()), this.cryptography.Encrypt(this.txtPassword.Text.Trim()));
				if (!this.bw.IsBusy)
				{
					this.btnLogin.Enabled = false;
					this.bw.RunWorkerAsync();
					return;
				}
			}
			else
			{
				this.txtEmail.Focus();
			}
		}

		private void LoginAsync()
		{
			if (this.btnLogin.Text == "Retry Log In")
			{
				this.SetButtonLoginText("Log In");
			}
			this.SetInfoLabelWaiting();
			string text = this.txtEmail.Text.Trim().ToLower();
			string text2 = this.txtPassword.Text.Trim();
			string text3 = this.IP1;
			if (this.form.UserName != text || this.form.Password != text2 || this.loginAPIerror)
			{
				this.UserId = 0;
				this.Password = string.Empty;
				this.ApiUrl = string.Empty;
				try
				{
					this.loginFailed = false;
					ArrayList userId = this.apiManager.GetUserId(text, text2, text3);
					this.amplitude = (string)userId[2];
					if ((int)userId[0] == 0)
					{
						this.UserId = (int)userId[1];
						this.Password = text2;
						this.ApiUrl = text3;
						this.logger.log("IP-ul pe care s-a logat este IP1  - " + text3);
						this.bw.CancelAsync();
					}
					else
					{
						this.loginAPIerror = true;
						this.SetInfoLabelError();
					}
				}
				catch (ArgumentException arg_13E_0)
				{
					ArgumentException ex2 = arg_13E_0;
					ArgumentException ex = ex2;
					this.loginFailed = true;
					if (this.rchLoginLog.InvokeRequired)
					{
						base.Invoke(new MethodInvoker(delegate
						{
							this.WriteLogIP1(ex);
						}));
					}
					else
					{
						this.WriteLogIP1(ex);
					}
					for (int i = 0; i < 4; i++)
					{
						if (this.bw.CancellationPending)
						{
							break;
						}
						try
						{
							this.loginFailed = false;
							text3 = this.GetIp(i);
							ArrayList userId2 = this.apiManager.GetUserId(text, text2, text3);
							this.amplitude = (string)userId2[2];
							if ((int)userId2[0] == 0)
							{
								this.logger.log("IP-ul pe care s-a logat este IP" + (i + 2).ToString() + "  - " + text3);
								i = 4;
								this.UserId = (int)userId2[1];
								this.Password = text2;
								this.ApiUrl = text3;
								this.bw.CancelAsync();
							}
							else
							{
								i = 4;
								this.SetInfoLabelError();
							}
						}
						catch (ArgumentException arg_251_0)
						{
							ex2 = arg_251_0;
							ArgumentException aex = ex2;
							this.loginFailed = true;
							if (this.rchLoginLog.InvokeRequired)
							{
								base.Invoke(new MethodInvoker(delegate
								{
									this.WriteLogIP2(aex);
								}));
							}
							else
							{
								this.WriteLogIP2(aex);
							}
						}
						Thread.Sleep(this.timeNewTry);
					}
				}
				finally
				{
					this.SetButtonLoginColor();
				}
			}
		}

		private string GetIp(int ip)
		{
			string result = string.Empty;
			if (ip == 0)
			{
				result = this.IP2;
			}
			else if (ip == 1)
			{
				result = this.IP3;
			}
			else if (ip == 2)
			{
				result = this.IP4;
			}
			else if (ip == 3)
			{
				result = this.IP5;
			}
			return result;
		}

		private void SetButtonLoginText(string text)
		{
			if (this.btnLogin.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.btnLogin.Text = text;
				}));
				return;
			}
			this.btnLogin.Text = text;
		}

		private void SetInfoLabelError()
		{
			if (this.lblMessage.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.SetInfoLabel(Color.Red, "Incorrect username or password !");
				}));
				return;
			}
			this.SetInfoLabel(Color.Red, "Incorrect username or password !");
		}

		private void SetInfoLabelConnectionError()
		{
			if (this.lblMessage.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.SetInfoLabel(Color.Red, "Login failed. Try later, or contact support.");
				}));
				return;
			}
			this.SetInfoLabel(Color.Red, "Login failed. Try later, or contact support.");
		}

		private void SetInfoLabelEmpty()
		{
			if (this.lblMessage.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.SetInfoLabel(Color.Green, string.Empty);
				}));
				return;
			}
			this.SetInfoLabel(Color.Green, string.Empty);
		}

		private void SetInfoLabelWaiting()
		{
			if (this.lblMessage.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.SetInfoLabel(Color.Green, "Please wait. Logging in ...");
				}));
				return;
			}
			this.SetInfoLabel(Color.Green, "Please wait. Logging in ...");
		}

		private void SetInfoLabelInitial()
		{
			if (this.lblMessage.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.SetInfoLabel(Color.Black, "Enter your account information:");
				}));
				return;
			}
			this.SetInfoLabel(Color.Black, "Enter your account information:");
		}

		private void SetInfoLabel(Color color, string text)
		{
			this.lblMessage.ForeColor = color;
			this.lblMessage.Text = text;
		}

		private void WriteLogIP1(ArgumentException ex)
		{
			this.rchLoginLog.Text = this.rchLoginLog.Text + ex.Message + " try again...IP1";
			this.rchLoginLog.SelectionStart = this.rchLoginLog.Text.Length;
			this.rchLoginLog.ScrollToCaret();
		}

		private void WriteLogIP2(ArgumentException ex)
		{
			this.rchLoginLog.Text = this.rchLoginLog.Text + ex.Message + " try again...IP2";
			this.rchLoginLog.SelectionStart = this.rchLoginLog.Text.Length;
			this.rchLoginLog.ScrollToCaret();
		}

		private Hashtable GetSettings(string path)
		{
			Hashtable hashtable = new Hashtable();
			try
			{
				if (File.Exists(path))
				{
					StreamReader arg_25_0 = new StreamReader(new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.Read));
					XmlDocument xmlDocument = new XmlDocument();
					string xml = arg_25_0.ReadToEnd();
					arg_25_0.Close();
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

		private void btnCancel_Click(object sender, EventArgs e)
		{
			if (this.btnCancel.Text == "Clear Fields")
			{
				this.txtEmail.Text = string.Empty;
				this.txtPassword.Text = string.Empty;
				this.rchLoginLog.Text = string.Empty;
				return;
			}
			this.bw.CancelAsync();
		}

		private bool EmailFormatValidating()
		{
			if (!new RegexUtilities().IsValidEmail(this.txtEmail.Text.Trim()))
			{
				if (!this._autoLogin)
				{
					this.helper.MessageBoxShow("Email address format is wrong!", "ibVPN client notification/info message", 1, true, true);
				}
				this._autoLogin = false;
				this.Cursor = Cursors.Default;
				return false;
			}
			return true;
		}

		private void UpdateUserSettingsXml()
		{
			XmlDocument xmlDocument = new XmlDocument();
			XmlDocument xmlDocument2 = new XmlDocument();
			try
			{
				xmlDocument.Load(this.userXMLLocation);
				ArrayList arrayList = new ArrayList();
				using (IEnumerator enumerator = xmlDocument.SelectNodes("/configuration/add").GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						XmlAttribute xmlAttribute = ((XmlNode)enumerator.Current).Attributes["key"];
						if (xmlAttribute != null && !arrayList.Contains(xmlAttribute.Value))
						{
							arrayList.Add(xmlAttribute.Value);
						}
					}
				}
				xmlDocument2.Load(this.defaultXMLLocation);
				foreach (XmlNode expr_B8 in xmlDocument2.SelectNodes("/configuration/add"))
				{
					XmlAttribute xmlAttribute2 = expr_B8.Attributes["key"];
					XmlAttribute xmlAttribute3 = expr_B8.Attributes["value"];
					if (xmlAttribute2 != null && !arrayList.Contains(xmlAttribute2.Value))
					{
						this.AddNewUserSetting(xmlDocument, xmlAttribute2.Value, xmlAttribute3.Value);
					}
				}
			}
			catch
			{
				string message = "The DefaultSettings.xml or UserSettings.xml file cannot read or missing from the installation folder. Please re-install the application, or contact ibVPN Support.";
				this.helper.MessageBoxShow(message, "ibVPN client notification/info message", 1, true, true);
				Environment.Exit(1);
			}
		}

		private void AddNewUserSetting(XmlDocument userXmlDoc, string key, string value)
		{
			XmlNode arg_18_0 = userXmlDoc.SelectSingleNode("/configuration");
			XmlNode xmlNode = userXmlDoc.CreateElement("add");
			arg_18_0.AppendChild(xmlNode);
			XmlAttribute xmlAttribute = userXmlDoc.CreateAttribute("key");
			XmlAttribute xmlAttribute2 = userXmlDoc.CreateAttribute("value");
			xmlNode.Attributes.Append(xmlAttribute);
			xmlNode.Attributes.Append(xmlAttribute2);
			xmlAttribute.Value = key;
			xmlAttribute2.Value = value;
			userXmlDoc.Save(this.userXMLLocation);
		}

		private void SetUserSettingsXmlPath()
		{
			this.appName = Assembly.GetExecutingAssembly().GetName().Name;
			this.appPath = Application.ExecutablePath.ToString();
			this.userXMLLocation = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\UserSettings.xml";
			this.defaultXMLLocation = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\DefaultSettings.xml";
			this.debugPath = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "debug.txt";
		}

		private void XmlWriter(string remember, string username, string password)
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
						xmlAttribute2.Value = remember;
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

		private void XmlWriterCredentials(string username, string password)
		{
			XmlDocument xmlDocument = new XmlDocument();
			xmlDocument.Load(this.userXMLLocation);
			foreach (XmlNode expr_31 in xmlDocument.SelectNodes("/configuration/add"))
			{
				XmlAttribute xmlAttribute = expr_31.Attributes["key"];
				XmlAttribute xmlAttribute2 = expr_31.Attributes["value"];
				if (xmlAttribute != null)
				{
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

		private void chkRememberMe_CheckedChanged(object sender, EventArgs e)
		{
			this.XmlWriter(this.chkRememberMe.Checked.ToString(), this.cryptography.Encrypt(this.txtEmail.Text.Trim()), this.cryptography.Encrypt(this.txtPassword.Text.Trim()));
		}

		private void LoginForm_FormClosing(object sender, FormClosingEventArgs e)
		{
			try
			{
				this.XmlWriterCredentials(this.cryptography.Encrypt(this.txtEmail.Text.Trim()), this.cryptography.Encrypt(this.txtPassword.Text.Trim()));
			}
			catch
			{
				this.logger.log("a crapat XmlWriterCredentials ");
			}
		}

		private void InitializeNotifyInconContextMenu()
		{
			this.menuItem1.Index = 0;
			this.menuItem1.Text = "Login";
			this.menuItem1.Click += new EventHandler(this.menuItem1_Click);
			this.menuItem2.Index = 1;
			this.menuItem2.Text = "Exit";
			this.menuItem2.Click += new EventHandler(this.menuItem2_Click);
			this.notifyIconLoginContextMenu.MenuItems.Add(this.menuItem1);
			this.notifyIconLoginContextMenu.MenuItems.Add("-");
			this.notifyIconLoginContextMenu.MenuItems.Add(this.menuItem2);
			this.notifyIconLogin.ContextMenu = this.notifyIconLoginContextMenu;
		}

		private void menuItem2_Click(object sender, EventArgs e)
		{
			base.Close();
		}

		private void menuItem1_Click(object sender, EventArgs e)
		{
			this.btnLogin_Click(this, null);
		}

		private void lnkForgotPass_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://www.ibvpn.com/billing/pwreset.php"));
		}

		private void notifyIconLogin_Click(object sender, EventArgs e)
		{
			base.set_WindowState(FormWindowState.Normal);
			base.TopMost = true;
			this.SetLoginFormTopMost();
		}

		private void btnLogin_EnabledChanged(object sender, EventArgs e)
		{
			this.SetButtonLoginColor();
		}

		private void SetButtonLoginColor()
		{
			if (this.btnLogin.Enabled)
			{
				this.btnLogin.BackColor = this.initialButtonColor;
				return;
			}
			this.btnLogin.BackColor = Color.LightGray;
		}

		private void btnCancel_EnabledChanged(object sender, EventArgs e)
		{
			if (this.btnCancel.Enabled)
			{
				this.btnCancel.BackColor = this.initialButtonColor;
				return;
			}
			this.btnCancel.BackColor = Color.LightGray;
		}

		private void lnkSettings_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			SettingsForm settingsForm = new SettingsForm();
			settingsForm.ShowDialog();
			int checksNumber = settingsForm.ChecksNumber;
			int num = settingsForm.TimeNewTry;
			if (settingsForm.Save)
			{
				this.apiManager.SerializeSettings(settingsForm.IP1, settingsForm.IP2, settingsForm.IP3, settingsForm.IP4, settingsForm.IP5, checksNumber.ToString(), num.ToString(), settingsForm.ApiKey);
			}
		}

		private void StartLogger(string xmlPath)
		{
			this.logger.filePath = xmlPath;
		}

		private void lnkDebug_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			string fileName = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "debug.bat";
			Process arg_49_0 = new Process();
			arg_49_0.StartInfo = new ProcessStartInfo
			{
				WindowStyle = ProcessWindowStyle.Hidden,
				FileName = fileName
			};
			arg_49_0.Start();
			arg_49_0.Close();
		}

		private static void InstallCertificate(string cerFileName)
		{
			X509Certificate2 certificate = new X509Certificate2(cerFileName);
			X509Store expr_0E = new X509Store(StoreName.AuthRoot, StoreLocation.LocalMachine);
			expr_0E.Open(OpenFlags.ReadWrite);
			expr_0E.Add(certificate);
			expr_0E.Close();
		}

		private void InstallIpSecCertificate()
		{
			try
			{
				string text = this.appPath.Substring(0, this.appPath.Length - this.appName.Length - 4) + "\\script\\client.ibvpn.com.cer";
				if (File.Exists(text))
				{
					LoginForm.InstallCertificate(text);
					this.logger.log("The IPSec Certificate has been renewed.");
				}
				else
				{
					this.logger.log("Error: The IPSec Certificate not exists.");
				}
			}
			catch
			{
				this.logger.log("Error: The IPSec Certificate renewal has failed. If you still cannot connect on IPSec, please contact support.");
			}
		}

		private bool FoundIpsecCertificate()
		{
			bool result = false;
			try
			{
				X509Store x509Store = new X509Store(StoreName.AuthRoot, StoreLocation.LocalMachine);
				x509Store.Open(OpenFlags.OpenExistingOnly);
				CollectionBase arg_29_0 = x509Store.Certificates.Find(X509FindType.FindByIssuerName, "ibVPN CA", true);
				x509Store.Close();
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
			}
			catch (Exception ex)
			{
				this.logger.log(ex.Message);
			}
			return result;
		}

		private void lnkCreateAccount_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://www.ibvpn.com/billing/cart.php?a=view"));
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(LoginForm));
			this.txtEmail = new TextBoxX();
			this.txtPassword = new TextBoxX();
			this.lblEmail = new LabelX();
			this.lblPassword = new LabelX();
			this.pnlCredentials = new Panel();
			this.pnlContainerLogin = new Panel();
			this.line1Separator = new Line();
			this.lblMessage = new LabelX();
			this.btnCancel = new Button();
			this.imgLogoLogin = new PictureBox();
			this.chkRememberMe = new CheckBox();
			this.lnkForgotPassword = new LinkLabel();
			this.lblCopyright = new Label();
			this.notifyIconLogin = new NotifyIcon(this.components);
			this.rchLoginLog = new RichTextBox();
			this.styleManager1 = new StyleManager(this.components);
			this.btnLogin = new ButtonX();
			this.lnkSettings = new LinkLabel();
			this.lnkDebug = new LinkLabel();
			this.lblVersion = new LabelX();
			this.lnkCreateAccount = new LinkLabel();
			this.pnlCredentials.SuspendLayout();
			this.pnlContainerLogin.SuspendLayout();
			((ISupportInitialize)this.imgLogoLogin).BeginInit();
			base.SuspendLayout();
			this.txtEmail.AccessibleDescription = "Please type login e-mail here";
			this.txtEmail.AccessibleName = "E-mail field";
			this.txtEmail.AccessibleRole = AccessibleRole.Caret;
			this.txtEmail.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.txtEmail.BackColor = Color.White;
			this.txtEmail.get_Border().set_Class("TextBoxBorder");
			this.txtEmail.get_Border().set_CornerType(1);
			this.txtEmail.set_DisabledBackColor(Color.White);
			this.txtEmail.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.txtEmail.ForeColor = Color.Black;
			this.txtEmail.Location = new Point(120, 11);
			this.txtEmail.Margin = new Padding(0);
			this.txtEmail.Name = "txtEmail";
			this.txtEmail.set_PreventEnterBeep(true);
			this.txtEmail.Size = new Size(185, 25);
			this.txtEmail.TabIndex = 0;
			this.txtPassword.AccessibleDescription = "Please type password here";
			this.txtPassword.AccessibleName = "Password field";
			this.txtPassword.AccessibleRole = AccessibleRole.Caret;
			this.txtPassword.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.txtPassword.BackColor = Color.White;
			this.txtPassword.get_Border().set_Class("TextBoxBorder");
			this.txtPassword.get_Border().set_CornerType(1);
			this.txtPassword.set_DisabledBackColor(Color.White);
			this.txtPassword.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.txtPassword.ForeColor = Color.Black;
			this.txtPassword.Location = new Point(120, 60);
			this.txtPassword.Margin = new Padding(0);
			this.txtPassword.Name = "txtPassword";
			this.txtPassword.PasswordChar = '*';
			this.txtPassword.set_PreventEnterBeep(true);
			this.txtPassword.Size = new Size(185, 25);
			this.txtPassword.TabIndex = 1;
			this.lblEmail.get_BackgroundStyle().set_CornerType(1);
			this.lblEmail.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblEmail.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblEmail.Location = new Point(10, 12);
			this.lblEmail.Margin = new Padding(3, 4, 3, 4);
			this.lblEmail.Name = "lblEmail";
			this.lblEmail.Size = new Size(110, 25);
			this.lblEmail.TabIndex = 3;
			this.lblEmail.Text = "Email address:";
			this.lblPassword.get_BackgroundStyle().set_CornerType(1);
			this.lblPassword.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblPassword.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblPassword.Location = new Point(10, 61);
			this.lblPassword.Margin = new Padding(3, 4, 3, 4);
			this.lblPassword.Name = "lblPassword";
			this.lblPassword.Size = new Size(110, 25);
			this.lblPassword.TabIndex = 4;
			this.lblPassword.Text = "Password:";
			this.pnlCredentials.BorderStyle = BorderStyle.FixedSingle;
			this.pnlCredentials.Controls.Add(this.pnlContainerLogin);
			this.pnlCredentials.Controls.Add(this.lblMessage);
			this.pnlCredentials.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.pnlCredentials.Location = new Point(10, 160);
			this.pnlCredentials.Margin = new Padding(0);
			this.pnlCredentials.Name = "pnlCredentials";
			this.pnlCredentials.Size = new Size(320, 140);
			this.pnlCredentials.TabIndex = 7;
			this.pnlContainerLogin.BackColor = Color.White;
			this.pnlContainerLogin.Controls.Add(this.lblEmail);
			this.pnlContainerLogin.Controls.Add(this.line1Separator);
			this.pnlContainerLogin.Controls.Add(this.txtPassword);
			this.pnlContainerLogin.Controls.Add(this.txtEmail);
			this.pnlContainerLogin.Controls.Add(this.lblPassword);
			this.pnlContainerLogin.Location = new Point(1, 38);
			this.pnlContainerLogin.Margin = new Padding(0);
			this.pnlContainerLogin.Name = "pnlContainerLogin";
			this.pnlContainerLogin.Size = new Size(317, 100);
			this.pnlContainerLogin.TabIndex = 9;
			this.line1Separator.BackColor = Color.Transparent;
			this.line1Separator.ForeColor = Color.FromArgb(238, 238, 238);
			this.line1Separator.Location = new Point(0, 49);
			this.line1Separator.Margin = new Padding(0);
			this.line1Separator.Name = "line1Separator";
			this.line1Separator.Size = new Size(320, 2);
			this.line1Separator.set_StartLineCapSize(new Size(0, 0));
			this.line1Separator.TabIndex = 5;
			this.line1Separator.set_Thickness(2);
			this.lblMessage.AccessibleDescription = "Please enter your dredentials below, to login";
			this.lblMessage.AccessibleRole = AccessibleRole.RowHeader;
			this.lblMessage.get_BackgroundStyle().set_CornerType(1);
			this.lblMessage.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblMessage.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblMessage.Location = new Point(10, 4);
			this.lblMessage.Margin = new Padding(0);
			this.lblMessage.Name = "lblMessage";
			this.lblMessage.set_SingleLineColor(Color.Empty);
			this.lblMessage.Size = new Size(304, 30);
			this.lblMessage.TabIndex = 5;
			this.lblMessage.Text = "Enter your account credentials, to login:";
			this.btnCancel.AccessibleRole = AccessibleRole.PushButton;
			this.btnCancel.BackColor = Color.FromArgb(253, 187, 47);
			this.btnCancel.Cursor = Cursors.Hand;
			this.btnCancel.FlatAppearance.BorderColor = Color.FromArgb(221, 221, 221);
			this.btnCancel.FlatAppearance.BorderSize = 0;
			this.btnCancel.FlatAppearance.MouseDownBackColor = Color.Orange;
			this.btnCancel.FlatAppearance.MouseOverBackColor = Color.FromArgb(255, 197, 95);
			this.btnCancel.FlatStyle = FlatStyle.Flat;
			this.btnCancel.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnCancel.Location = new Point(188, 108);
			this.btnCancel.Margin = new Padding(0);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new Size(142, 30);
			this.btnCancel.TabIndex = 4;
			this.btnCancel.Text = "Cancel";
			this.btnCancel.UseVisualStyleBackColor = false;
			this.btnCancel.Visible = false;
			this.btnCancel.EnabledChanged += new EventHandler(this.btnCancel_EnabledChanged);
			this.btnCancel.Click += new EventHandler(this.btnCancel_Click);
			this.imgLogoLogin.BackColor = Color.Transparent;
			this.imgLogoLogin.Image = (Image)componentResourceManager.GetObject("imgLogoLogin.Image");
			this.imgLogoLogin.InitialImage = (Image)componentResourceManager.GetObject("imgLogoLogin.InitialImage");
			this.imgLogoLogin.Location = new Point(70, 20);
			this.imgLogoLogin.Margin = new Padding(0);
			this.imgLogoLogin.Name = "imgLogoLogin";
			this.imgLogoLogin.Size = new Size(202, 53);
			this.imgLogoLogin.SizeMode = PictureBoxSizeMode.StretchImage;
			this.imgLogoLogin.TabIndex = 9;
			this.imgLogoLogin.TabStop = false;
			this.chkRememberMe.AccessibleDescription = "Check, or uncheck this to remember credentials";
			this.chkRememberMe.AccessibleName = "Remember Me feature";
			this.chkRememberMe.AccessibleRole = AccessibleRole.CheckButton;
			this.chkRememberMe.AutoSize = true;
			this.chkRememberMe.BackColor = Color.Transparent;
			this.chkRememberMe.Cursor = Cursors.Hand;
			this.chkRememberMe.FlatAppearance.BorderColor = Color.Green;
			this.chkRememberMe.FlatAppearance.CheckedBackColor = Color.Red;
			this.chkRememberMe.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.chkRememberMe.ForeColor = Color.FromArgb(38, 47, 57);
			this.chkRememberMe.Location = new Point(114, 307);
			this.chkRememberMe.Margin = new Padding(0);
			this.chkRememberMe.Name = "chkRememberMe";
			this.chkRememberMe.Size = new Size(118, 23);
			this.chkRememberMe.TabIndex = 2;
			this.chkRememberMe.Text = "Remember Me";
			this.chkRememberMe.UseVisualStyleBackColor = true;
			this.chkRememberMe.CheckedChanged += new EventHandler(this.chkRememberMe_CheckedChanged);
			this.lnkForgotPassword.AccessibleDescription = "Click to reset password. Will redirect to ibVPN site.";
			this.lnkForgotPassword.AccessibleName = "Reset password";
			this.lnkForgotPassword.AccessibleRole = AccessibleRole.Link;
			this.lnkForgotPassword.AutoSize = true;
			this.lnkForgotPassword.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lnkForgotPassword.LinkColor = Color.FromArgb(27, 158, 28);
			this.lnkForgotPassword.Location = new Point(125, 410);
			this.lnkForgotPassword.Name = "lnkForgotPassword";
			this.lnkForgotPassword.Size = new Size(95, 15);
			this.lnkForgotPassword.TabIndex = 5;
			this.lnkForgotPassword.TabStop = true;
			this.lnkForgotPassword.Text = "Forgot password";
			this.lnkForgotPassword.VisitedLinkColor = Color.FromArgb(27, 158, 28);
			this.lnkForgotPassword.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkForgotPass_LinkClicked);
			this.lblCopyright.AutoSize = true;
			this.lblCopyright.BackColor = Color.Transparent;
			this.lblCopyright.Font = new Font("Segoe UI", 7f, FontStyle.Italic, GraphicsUnit.Point, 0);
			this.lblCopyright.ForeColor = Color.FromArgb(140, 140, 140);
			this.lblCopyright.Location = new Point(81, 462);
			this.lblCopyright.Name = "lblCopyright";
			this.lblCopyright.Size = new Size(182, 12);
			this.lblCopyright.TabIndex = 12;
			this.lblCopyright.Text = "Copyright 2010-2017 @ Amplusnet S.R.L.";
			this.notifyIconLogin.Icon = Resources.ibvpn_logo_red;
			this.notifyIconLogin.Text = "Login ibVPN";
			this.notifyIconLogin.Click += new EventHandler(this.notifyIconLogin_Click);
			this.rchLoginLog.BackColor = Color.FromArgb(247, 247, 247);
			this.rchLoginLog.BorderStyle = BorderStyle.None;
			this.rchLoginLog.Cursor = Cursors.Default;
			this.rchLoginLog.DetectUrls = false;
			this.rchLoginLog.Font = new Font("Courier New", 8f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.rchLoginLog.ForeColor = Color.FromArgb(104, 104, 104);
			this.rchLoginLog.ImeMode = ImeMode.Off;
			this.rchLoginLog.Location = new Point(10, 428);
			this.rchLoginLog.Margin = new Padding(0);
			this.rchLoginLog.Name = "rchLoginLog";
			this.rchLoginLog.ReadOnly = true;
			this.rchLoginLog.ScrollBars = RichTextBoxScrollBars.Vertical;
			this.rchLoginLog.ShortcutsEnabled = false;
			this.rchLoginLog.Size = new Size(320, 25);
			this.rchLoginLog.TabIndex = 6;
			this.rchLoginLog.TabStop = false;
			this.rchLoginLog.Text = "";
			this.rchLoginLog.Visible = false;
			this.styleManager1.set_ManagerStyle(9);
			this.styleManager1.set_MetroColorParameters(new MetroColorGeneratorParameters(Color.FromArgb(242, 242, 242), Color.FromArgb(198, 198, 198)));
			this.btnLogin.AccessibleDescription = "Click to login. Credentials must be correct.";
			this.btnLogin.AccessibleName = "Login button";
			this.btnLogin.AccessibleRole = AccessibleRole.PushButton;
			this.btnLogin.set_AntiAlias(true);
			this.btnLogin.BackColor = Color.FromArgb(38, 47, 57);
			this.btnLogin.set_ColorTable(0);
			this.btnLogin.Cursor = Cursors.Hand;
			this.btnLogin.set_FocusCuesEnabled(false);
			this.btnLogin.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnLogin.Location = new Point(101, 363);
			this.btnLogin.Name = "btnLogin";
			this.btnLogin.Size = new Size(142, 30);
			this.btnLogin.set_Style(9);
			this.btnLogin.TabIndex = 22;
			this.btnLogin.Text = "Log in";
			this.btnLogin.set_TextColor(Color.White);
			this.btnLogin.EnabledChanged += new EventHandler(this.btnLogin_EnabledChanged);
			this.btnLogin.Click += new EventHandler(this.btnLogin_Click);
			this.lnkSettings.AutoSize = true;
			this.lnkSettings.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lnkSettings.LinkColor = Color.FromArgb(27, 158, 28);
			this.lnkSettings.Location = new Point(124, 340);
			this.lnkSettings.Name = "lnkSettings";
			this.lnkSettings.Size = new Size(49, 15);
			this.lnkSettings.TabIndex = 40;
			this.lnkSettings.TabStop = true;
			this.lnkSettings.Text = "Settings";
			this.lnkSettings.Visible = false;
			this.lnkSettings.VisitedLinkColor = Color.FromArgb(27, 158, 28);
			this.lnkSettings.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkSettings_LinkClicked);
			this.lnkDebug.AutoSize = true;
			this.lnkDebug.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lnkDebug.LinkColor = Color.FromArgb(27, 158, 28);
			this.lnkDebug.Location = new Point(179, 340);
			this.lnkDebug.Name = "lnkDebug";
			this.lnkDebug.Size = new Size(42, 15);
			this.lnkDebug.TabIndex = 41;
			this.lnkDebug.TabStop = true;
			this.lnkDebug.Text = "Debug";
			this.lnkDebug.Visible = false;
			this.lnkDebug.VisitedLinkColor = Color.FromArgb(27, 158, 28);
			this.lnkDebug.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkDebug_LinkClicked);
			this.lblVersion.BackColor = Color.Transparent;
			this.lblVersion.get_BackgroundStyle().set_CornerType(1);
			this.lblVersion.Font = new Font("Segoe UI", 6.75f, FontStyle.Italic, GraphicsUnit.Point, 0);
			this.lblVersion.ForeColor = Color.FromArgb(140, 140, 140);
			this.lblVersion.Location = new Point(130, 478);
			this.lblVersion.Name = "lblVersion";
			this.lblVersion.set_SingleLineColor(Color.FromArgb(140, 140, 140));
			this.lblVersion.Size = new Size(84, 12);
			this.lblVersion.TabIndex = 52;
			this.lblVersion.Text = "Version";
			this.lnkCreateAccount.AccessibleDescription = "Click to register for an account. Will redirect to ibVPN site.";
			this.lnkCreateAccount.AccessibleName = "Register for an ibVPN account";
			this.lnkCreateAccount.AccessibleRole = AccessibleRole.Link;
			this.lnkCreateAccount.AutoSize = true;
			this.lnkCreateAccount.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lnkCreateAccount.LinkColor = Color.FromArgb(27, 158, 28);
			this.lnkCreateAccount.Location = new Point(47, 429);
			this.lnkCreateAccount.Name = "lnkCreateAccount";
			this.lnkCreateAccount.Size = new Size(250, 15);
			this.lnkCreateAccount.TabIndex = 53;
			this.lnkCreateAccount.TabStop = true;
			this.lnkCreateAccount.Text = "Don't have an account? Start with the free trial";
			this.lnkCreateAccount.VisitedLinkColor = Color.FromArgb(27, 158, 28);
			this.lnkCreateAccount.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkCreateAccount_LinkClicked);
			base.AcceptButton = this.btnLogin;
			base.AccessibleDescription = "Login form loaded. Used to login in ibVPN AIO.";
			base.AccessibleName = "Login form";
			base.AccessibleRole = AccessibleRole.Window;
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			this.BackColor = Color.FromArgb(247, 247, 247);
			this.BackgroundImage = Resources.Login_map;
			base.set_BottomLeftCornerSize(0);
			base.set_BottomRightCornerSize(0);
			base.ClientSize = new Size(344, 496);
			base.Controls.Add(this.lnkCreateAccount);
			base.Controls.Add(this.lblVersion);
			base.Controls.Add(this.lnkDebug);
			base.Controls.Add(this.lnkSettings);
			base.Controls.Add(this.btnLogin);
			base.Controls.Add(this.lblCopyright);
			base.Controls.Add(this.lnkForgotPassword);
			base.Controls.Add(this.chkRememberMe);
			base.Controls.Add(this.imgLogoLogin);
			base.Controls.Add(this.btnCancel);
			base.Controls.Add(this.pnlCredentials);
			base.Controls.Add(this.rchLoginLog);
			this.DoubleBuffered = true;
			this.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.FromArgb(38, 47, 57);
			base.FormBorderStyle = FormBorderStyle.FixedSingle;
			base.set_Icon((Icon)componentResourceManager.GetObject("$this.Icon"));
			base.Margin = new Padding(3, 4, 3, 4);
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "LoginForm";
			base.StartPosition = FormStartPosition.Manual;
			this.Text = "ibVPN All-in-One for Windows - Login";
			base.set_TopLeftCornerSize(0);
			base.set_TopRightCornerSize(0);
			base.FormClosing += new FormClosingEventHandler(this.LoginForm_FormClosing);
			base.Load += new EventHandler(this.LoginForm_Load);
			this.pnlCredentials.ResumeLayout(false);
			this.pnlContainerLogin.ResumeLayout(false);
			((ISupportInitialize)this.imgLogoLogin).EndInit();
			base.ResumeLayout(false);
			base.PerformLayout();
		}
	}
}
