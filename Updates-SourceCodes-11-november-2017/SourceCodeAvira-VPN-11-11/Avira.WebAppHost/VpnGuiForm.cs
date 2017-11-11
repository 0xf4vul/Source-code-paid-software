using Avira.Core;
using Avira.Messaging;
using Avira.Mixpanel;
using Avira.VPN.Core;
using Avira.WebAppHost.Properties;
using Microsoft.Win32;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.ServiceProcess;
using System.Threading;
using System.Windows.Forms;

namespace Avira.WebAppHost
{
	public class VpnGuiForm : Form, IService
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly VpnGuiForm.<>c <>9 = new VpnGuiForm.<>c();

			public static Func<IMessenger> <>9__14_1;

			public static Func<string, Uri> <>9__28_1;

			public static Func<Uri, bool> <>9__28_2;

			public static Func<ServiceController, bool> <>9__31_0;

			public static Action<Message> <>9__34_0;

			internal IMessenger ctor>b__14_1()
			{
				return PipeCommunicatorClient.Connect(ProductSettings.get_VpnPipeName(), 500);
			}

			internal Uri <CheckRelativeReferences>b__28_1(string scriptPath)
			{
				return new Uri(scriptPath, UriKind.Relative);
			}

			internal bool <CheckRelativeReferences>b__28_2(Uri uri)
			{
				return uri.IsAbsoluteUri;
			}

			internal bool <IsServiceInstalled>b__31_0(ServiceController service)
			{
				return service.ServiceName == ProductSettings.get_ServiceName();
			}

			internal void <UpdateTrackingSettings>b__34_0(Message m)
			{
				try
				{
					JToken expr_06 = m.get_Result();
					if (((expr_06 != null) ? expr_06.get_Item("appImprovement") : null) != null)
					{
						ProductSettings.set_ProductImprovement((bool)m.get_Result().get_Item("appImprovement"));
					}
				}
				catch (Exception arg_35_0)
				{
					Log.Error(arg_35_0);
				}
			}
		}

		private readonly ScriptingObject scriptingObject;

		private readonly SharedStartEvent serviceStardedEvent = new SharedStartEvent();

		private bool mouseIsDown;

		private Point firstPoint;

		private Point mousePoint;

		private HtmlDocument htmlDocument;

		private IService vpn;

		private ConnectionState suspendedConnectionStatus;

		private HostRouter hostRouter;

		private Router messagRouter;

		private MessageConnector messageConnector;

		private ContextMenuService contextMenuService;

		private bool startMinimized;

		private ReflectionService thisService;

		private IContainer components;

		private WebBrowser webBrowserControl;

		private ContextMenuStrip contextMenu;

		public NotifyIcon notifyIcon;

		public ConnectionState CurrentConnectionStatus
		{
			get;
			private set;
		}

		private bool IsConnected
		{
			get
			{
				return this.CurrentConnectionStatus == 2;
			}
		}

		public IService Vpn
		{
			get
			{
				if (this.vpn == null)
				{
					this.ConnectToVpnService();
				}
				return this.vpn;
			}
		}

		[Routing("settings")]
		public JObject UiSettings
		{
			get
			{
				return JObject.Parse(ProductSettings.get_UiSettings());
			}
			set
			{
				ProductSettings.set_UiSettings(value.ToString());
			}
		}

		[Routing("uiLanguage")]
		public string UiLanguage
		{
			get
			{
				return ProductSettings.get_ProductLanguage();
			}
		}

		public VpnGuiForm(bool startMinimized)
		{
			try
			{
				SentryLogTarget.set_Enabled(ProductSettings.get_ProductImprovement());
			}
			catch (Exception)
			{
			}
			this.InitializeComponent();
			Log.Information("VPN Gui started ...");
			base.ShowInTaskbar = false;
			this.startMinimized = startMinimized;
			string text = FileSystem.MakeFullPath("App\\index.html");
			if (!new PathWhiteList().IsWhiteListed(text))
			{
				throw new Exception("[error] can't load index.html because it is not whitelisted");
			}
			text = "file://" + text;
			text.Replace("\\", "/");
			this.thisService = new ReflectionService(this);
			this.contextMenuService = new ContextMenuService(this.contextMenu);
			this.contextMenuService.ItemClicked += delegate(object sender, EventArgs<string> s)
			{
				Message message = Message.CreateNotification(s.get_Value());
				this.scriptingObject.OnMessage(Envelope.Pack(message, "webHost"));
			};
			this.hostRouter = new HostRouter();
			this.messageConnector = new MessageConnector();
			HostRouter arg_F2_0 = this.hostRouter;
			string arg_F2_1 = "VPN";
			Func<IMessenger> arg_F2_2;
			if ((arg_F2_2 = VpnGuiForm.<>c.<>9__14_1) == null)
			{
				arg_F2_2 = (VpnGuiForm.<>c.<>9__14_1 = new Func<IMessenger>(VpnGuiForm.<>c.<>9.<.ctor>b__14_1));
			}
			arg_F2_0.AddConnection(arg_F2_1, arg_F2_2);
			this.hostRouter.AddConnection("WebAppHost", () => this.messageConnector.get_Source());
			this.messagRouter = new Router(this.messageConnector.get_Destination());
			this.messagRouter.AddAllRoutes(this.thisService);
			this.messagRouter.AddRoute("hide", this);
			this.messagRouter.AddRoute("closeWindow", this);
			this.messagRouter.AddRoute("showNotification", this);
			this.messagRouter.AddRoute("menu/add", this);
			this.messagRouter.AddRoute("menu/set", this);
			this.messagRouter.AddRoute("menu/itemClicked", this);
			this.messagRouter.AddRoute("systray/icon/set", this);
			this.messagRouter.AddRoute("systray/tooltip/set", this);
			this.messagRouter.AddRoute("userSettings/set", this);
			this.messagRouter.AddRoute("userSettings/get", this);
			this.messagRouter.AddRoute("openUrlInDefaultBrowser", this);
			this.scriptingObject = new ScriptingObject
			{
				Messenger = this.hostRouter
			};
			this.webBrowserControl.ObjectForScripting = this.scriptingObject;
			this.CurrentConnectionStatus = 4;
			this.ConnectToVpnService();
			this.UpdateTrackingSettings();
			SystemEvents.PowerModeChanged += new PowerModeChangedEventHandler(this.OnPowerModeChanged);
			this.notifyIcon.BalloonTipClicked += delegate(object sender, EventArgs args)
			{
				NotifyIcon expr_06 = sender as NotifyIcon;
				string a = ((expr_06 != null) ? expr_06.Tag : null) as string;
				if (a == "register")
				{
					this.SendRegisterRequestToService();
					return;
				}
				if (!(a == "learn"))
				{
					return;
				}
				this.SendLearnMoreRequestToService();
			};
			this.notifyIcon.Icon = Resources.Disconnected;
			this.webBrowserControl.ScriptErrorsSuppressed = false;
			this.webBrowserControl.DocumentCompleted += new WebBrowserDocumentCompletedEventHandler(this.WebBrowserControlOnDocumentCompleted);
			this.webBrowserControl.Navigate(text);
			this.InitSharedEvent();
		}

		private static void CheckRelativeReferences(HtmlElement parent, string tag, string attribute)
		{
			IEnumerable<string> arg_49_0 = from HtmlElement script in parent.GetElementsByTagName(tag)
			select script.GetAttribute(attribute);
			Func<string, Uri> arg_49_1;
			if ((arg_49_1 = VpnGuiForm.<>c.<>9__28_1) == null)
			{
				arg_49_1 = (VpnGuiForm.<>c.<>9__28_1 = new Func<string, Uri>(VpnGuiForm.<>c.<>9.<CheckRelativeReferences>b__28_1));
			}
			IEnumerable<Uri> arg_6D_0 = arg_49_0.Select(arg_49_1);
			Func<Uri, bool> arg_6D_1;
			if ((arg_6D_1 = VpnGuiForm.<>c.<>9__28_2) == null)
			{
				arg_6D_1 = (VpnGuiForm.<>c.<>9__28_2 = new Func<Uri, bool>(VpnGuiForm.<>c.<>9.<CheckRelativeReferences>b__28_2));
			}
			if (arg_6D_0.Any(arg_6D_1))
			{
				throw new Exception("[error] all files must be local");
			}
		}

		private static void OnResponse(Message responce)
		{
			if (responce.get_Error() != null && responce.get_Error().get_Type() != 10)
			{
				Log.Error("Request failed. Method {0} Code {1} Message {2}", new object[]
				{
					responce.get_Method(),
					responce.get_Error().get_Item("code"),
					responce.get_Error().get_Item("message")
				});
			}
		}

		private static void ShowWebPageInDefaultBrowser(Message message)
		{
			string arg_22_0;
			if (message == null)
			{
				arg_22_0 = null;
			}
			else
			{
				JToken expr_0C = message.get_Params();
				arg_22_0 = ((expr_0C != null) ? expr_0C.get_Item("url").ToString() : null);
			}
			string text = arg_22_0;
			if (text != null && (text.StartsWith("http://") || text.StartsWith("https://")))
			{
				Process.Start(text);
			}
		}

		private static bool IsServiceInstalled()
		{
			try
			{
				IEnumerable<ServiceController> arg_24_0 = ServiceController.GetServices();
				Func<ServiceController, bool> arg_24_1;
				if ((arg_24_1 = VpnGuiForm.<>c.<>9__31_0) == null)
				{
					arg_24_1 = (VpnGuiForm.<>c.<>9__31_0 = new Func<ServiceController, bool>(VpnGuiForm.<>c.<>9.<IsServiceInstalled>b__31_0));
				}
				if (arg_24_0.Any(arg_24_1))
				{
					return true;
				}
			}
			catch (Exception arg)
			{
				Log.Warning(string.Format("Failed to query installed services. {0}", arg));
			}
			return false;
		}

		private static bool IsServiceStopped()
		{
			bool result;
			using (ServiceController serviceController = new ServiceController
			{
				ServiceName = ProductSettings.get_ServiceName()
			})
			{
				result = (serviceController.Status == ServiceControllerStatus.Stopped);
			}
			return result;
		}

		private void InitSharedEvent()
		{
			try
			{
				this.serviceStardedEvent.Create();
				ThreadPool.RegisterWaitForSingleObject(this.serviceStardedEvent.get_Handle(), delegate(object o, bool t)
				{
					this.ReconnectToService();
				}, null, -1, false);
			}
			catch (Exception arg)
			{
				Log.Error(string.Format("Failed to init the shared event. {0}", arg));
			}
		}

		private void UpdateTrackingSettings()
		{
			Message message = Message.CreateRequest("appSettings/get");
			IService expr_11 = this.vpn;
			if (expr_11 == null)
			{
				return;
			}
			Message arg_37_1 = message;
			Action<Message> arg_37_2;
			if ((arg_37_2 = VpnGuiForm.<>c.<>9__34_0) == null)
			{
				arg_37_2 = (VpnGuiForm.<>c.<>9__34_0 = new Action<Message>(VpnGuiForm.<>c.<>9.<UpdateTrackingSettings>b__34_0));
			}
			expr_11.Request(arg_37_1, arg_37_2, null);
		}

		protected override void SetVisibleCore(bool value)
		{
			if (this.startMinimized)
			{
				value = false;
				if (!base.IsHandleCreated)
				{
					this.CreateHandle();
				}
			}
			base.SetVisibleCore(value);
		}

		private void OnPowerModeChanged(object sender, PowerModeChangedEventArgs powerModeChangedEventArgs)
		{
			if (powerModeChangedEventArgs.Mode == PowerModes.Resume)
			{
				this.vpn.Request(Message.CreateRequest("status"), new Action<Message>(VpnGuiForm.OnResponse), null);
				if (this.suspendedConnectionStatus == 2 && !this.IsConnected)
				{
					this.ToggleConnect();
					return;
				}
			}
			else if (powerModeChangedEventArgs.Mode == PowerModes.Suspend)
			{
				this.suspendedConnectionStatus = this.CurrentConnectionStatus;
			}
		}

		private void ConnectToVpnService()
		{
			if (this.TryConnectToVpnService() || this.startMinimized)
			{
				return;
			}
			if (!VpnGuiForm.IsServiceInstalled())
			{
				MessageBox.Show("The product is corrupted. Please reinstall.", ProductSettings.get_ProductName(), MessageBoxButtons.OK, MessageBoxIcon.Hand);
				return;
			}
			if (!VpnGuiForm.IsServiceStopped())
			{
				return;
			}
			if (this.StartService())
			{
				this.TryConnectToVpnService();
			}
		}

		private bool StartService()
		{
			ProcessStartInfo startInfo = new ProcessStartInfo
			{
				UseShellExecute = true,
				WorkingDirectory = Environment.CurrentDirectory,
				FileName = Application.ExecutablePath,
				Verb = "runas",
				Arguments = "/service"
			};
			try
			{
				Process expr_3F = Process.Start(startInfo);
				expr_3F.WaitForExit();
				if (expr_3F.ExitCode == 0)
				{
					return true;
				}
			}
			catch (Exception arg)
			{
				Log.Warning(string.Format("Failed to Start Service. {0}", arg));
			}
			return false;
		}

		private bool TryConnectToVpnService()
		{
			bool result = false;
			try
			{
				Log.Debug("VpnGui: connecting to service ...");
				ServiceInterfaceFactory serviceInterfaceFactory = new ServiceInterfaceFactory(new ServiceLocator(), new PipeChannelFactory());
				this.vpn = serviceInterfaceFactory.CreateServiceInterface("VPN");
				this.SubscribeToService();
				result = true;
			}
			catch (Exception arg)
			{
				Log.Debug(string.Format("Error on creating communication chanel with service:{0}", arg));
			}
			return result;
		}

		private void SubscribeToService()
		{
			if (this.vpn == null)
			{
				return;
			}
			this.vpn.Subscribe("status", new Action<Message>(this.ChangeStatus));
			this.vpn.Subscribe("queryForUpdate", delegate(Message m)
			{
				this.OnQueryForUpdate();
			});
			this.vpn.Subscribe("prepareForUpdate", delegate(Message m)
			{
				base.Invoke(new MethodInvoker(base.Close));
			});
			this.vpn.Subscribe("showNotification", delegate(Message m)
			{
				this.ShowWindowsNotification(m);
			});
		}

		private void ShowWindowsNotification(Message msg)
		{
			JObject jObject = msg.get_Params() as JObject;
			int timeout = (jObject.get_Item("timeout") == null) ? 30000 : ((int)jObject.get_Item("timeout"));
			ToolTipIcon toolTipIcon = (jObject.get_Item("type") == null) ? ToolTipIcon.Warning : this.GetTooltipIcon(jObject.get_Item("type").ToString());
			string action = (jObject.get_Item("action") == null) ? "register" : jObject.get_Item("action").ToString();
			this.ShowBaloon(jObject.get_Item("message").ToString(), toolTipIcon, timeout, action);
		}

		private ToolTipIcon GetTooltipIcon(string type)
		{
			if (type == "info")
			{
				return ToolTipIcon.Info;
			}
			if (type == "error")
			{
				return ToolTipIcon.Error;
			}
			if (!(type == "warning"))
			{
				return ToolTipIcon.None;
			}
			return ToolTipIcon.Warning;
		}

		private void OnQueryForUpdate()
		{
			if (base.Visible)
			{
				ThreadPool.QueueUserWorkItem(delegate(object o)
				{
					this.vpn.Request(Message.CreateRequest("updater/defereUpdate"), null, null);
				});
			}
		}

		private void ChangeStatus(Message message)
		{
			try
			{
				JToken jToken = MessageSerializer.ToJObject(message).get_Item("params").get_Item("status");
				this.CurrentConnectionStatus = this.ConvertToConnectionState(jToken.ToString());
			}
			catch (Exception ex)
			{
				Log.Debug(string.Format("Error on getting current status from message {0}. Error {1}: ", message, ex.Message));
				throw;
			}
		}

		private ConnectionState ConvertToConnectionState(string state)
		{
			string a = state.ToLower();
			if (a == "connected")
			{
				return 2;
			}
			if (a == "connecting")
			{
				return 1;
			}
			if (a == "disconnected")
			{
				return 0;
			}
			if (!(a == "disconnecting"))
			{
				return 4;
			}
			return 3;
		}

		private void WebBrowserControlOnDocumentCompleted(object sender, WebBrowserDocumentCompletedEventArgs webBrowserDocumentCompletedEventArgs)
		{
			if (this.webBrowserControl.ReadyState != WebBrowserReadyState.Complete)
			{
				return;
			}
			this.SetHtmlControlEvents();
			try
			{
				this.VerifyReferencePathes();
				new GlobalWindow().Set(base.Handle);
			}
			catch (Exception)
			{
				base.Hide();
				MessageBox.Show("The product is corrupted. Please reinstall.", ProductSettings.get_ProductName(), MessageBoxButtons.OK, MessageBoxIcon.Hand);
				base.Close();
			}
		}

		private void VerifyReferencePathes()
		{
			HtmlDocument expr_0B = this.webBrowserControl.Document;
			HtmlElement expr_22 = (expr_0B != null) ? expr_0B.GetElementsByTagName("head")[0] : null;
			if (expr_22 == null)
			{
				throw new Exception("[error] incorect document loaded");
			}
			VpnGuiForm.CheckRelativeReferences(expr_22, "script", "src");
			VpnGuiForm.CheckRelativeReferences(expr_22, "link", "href");
		}

		private void SetHtmlControlEvents()
		{
			if (this.webBrowserControl.Document == null)
			{
				return;
			}
			if (this.htmlDocument != null)
			{
				return;
			}
			this.htmlDocument = this.webBrowserControl.Document;
			this.htmlDocument.ContextMenuShowing += new HtmlElementEventHandler(this.HtmlDoc_ContextMenuShowing);
			HtmlElement elementById = this.htmlDocument.GetElementById("header");
			if (elementById != null)
			{
				elementById.MouseDown += new HtmlElementEventHandler(this.HtmlDoc_MouseDown);
				elementById.MouseMove += new HtmlElementEventHandler(this.HtmlDoc_MouseMove);
				elementById.MouseUp += new HtmlElementEventHandler(this.HtmlDoc_MouseUp);
			}
		}

		private void OnHide()
		{
			base.Hide();
			IService expr_0C = this.vpn;
			if (expr_0C == null)
			{
				return;
			}
			expr_0C.Request(Message.CreateRequest("closeClicked"), null, null);
		}

		private void SendRegisterRequestToService()
		{
			IService expr_06 = this.vpn;
			if (expr_06 == null)
			{
				return;
			}
			expr_06.Request(Message.CreateRequest("registerUser"), new Action<Message>(VpnGuiForm.OnResponse), null);
		}

		private void SendLearnMoreRequestToService()
		{
			IService expr_06 = this.vpn;
			if (expr_06 == null)
			{
				return;
			}
			expr_06.Request(Message.CreateRequest("learnMore"), new Action<Message>(VpnGuiForm.OnResponse), null);
		}

		private void HtmlDoc_ContextMenuShowing(object sender, HtmlElementEventArgs e)
		{
			e.ReturnValue = false;
		}

		private void HtmlDoc_MouseDown(object sender, HtmlElementEventArgs e)
		{
			this.firstPoint = e.MousePosition;
			this.mouseIsDown = true;
		}

		private void HtmlDoc_MouseUp(object sender, HtmlElementEventArgs e)
		{
			this.mouseIsDown = false;
		}

		private void HtmlDoc_MouseMove(object sender, HtmlElementEventArgs e)
		{
			if (e.MousePosition == this.mousePoint)
			{
				return;
			}
			this.mousePoint = e.MousePosition;
			if (e.MouseButtonsPressed != MouseButtons.Left)
			{
				this.mouseIsDown = false;
				return;
			}
			if (e.MousePosition.X < 0)
			{
				Log.Debug("mousemove: " + e.MousePosition);
			}
			if (!this.mouseIsDown)
			{
				return;
			}
			int num = this.firstPoint.X - e.MousePosition.X;
			int num2 = this.firstPoint.Y - e.MousePosition.Y;
			int x = base.Location.X - num;
			int y = base.Location.Y - num2;
			base.Location = new Point(x, y);
		}

		private void ShowBaloon(string message, ToolTipIcon toolTipIcon = ToolTipIcon.Warning, int timeout = 30000, string action = "register")
		{
			this.notifyIcon.BalloonTipTitle = ProductSettings.get_ProductName();
			this.notifyIcon.BalloonTipText = message;
			this.notifyIcon.BalloonTipIcon = toolTipIcon;
			this.notifyIcon.Tag = action;
			this.notifyIcon.ShowBalloonTip(timeout);
		}

		private void ToggleConnect()
		{
			Message message = Message.CreateNotification("toggleConnect");
			this.scriptingObject.OnMessage(Envelope.Pack(message, "webHost"));
		}

		private void ReconnectToService()
		{
			Log.Information("Reconnection to the service.");
			Message message = Message.CreateNotification("connectionReestablished");
			this.scriptingObject.OnMessage(Envelope.Pack(message, "webHost"));
			this.vpn = null;
			this.TryConnectToVpnService();
		}

		private void Unsubscribe()
		{
			try
			{
				IService expr_06 = this.vpn;
				if (expr_06 != null)
				{
					expr_06.Unsubscribe("status", new Action<Message>(this.ChangeStatus));
				}
			}
			catch (Exception arg_24_0)
			{
				Log.Error(arg_24_0);
			}
		}

		private void CloseVpnConnection()
		{
			this.Unsubscribe();
			this.scriptingObject.Close();
		}

		private void VpnGuiForm_FormClosing(object sender, FormClosingEventArgs e)
		{
			ProductSettings.set_WindowLocation(base.Location);
			this.CloseVpnConnection();
		}

		private void VpnGuiForm_Load(object sender, EventArgs e)
		{
			base.Location = ProductSettings.get_WindowLocation();
			if (base.Location != new Point(-1, -1) && base.Width == 392 && base.Height == 550 && this.IsOnScreen(base.Location))
			{
				return;
			}
			Screen primaryScreen = Screen.PrimaryScreen;
			base.Width = 392;
			base.Height = 550;
			base.Location = new Point(primaryScreen.WorkingArea.Right - base.Width, primaryScreen.WorkingArea.Bottom - base.Height);
		}

		public bool IsOnScreen(Point topLeft)
		{
			Point checkPoint = topLeft + new Size(50, 50);
			return Screen.AllScreens.Any((Screen screen) => screen.WorkingArea.Contains(checkPoint));
		}

		private void VpnGuiForm_SizeChanged(object sender, EventArgs e)
		{
			if (base.WindowState == FormWindowState.Maximized)
			{
				base.WindowState = FormWindowState.Normal;
			}
		}

		protected Icon GetIcon(string iconId)
		{
			if (iconId == "connected")
			{
				return Resources.Connected;
			}
			if (iconId == "disconnected")
			{
				return Resources.Disconnected;
			}
			if (!(iconId == "connecting") && !(iconId == "disconnecting"))
			{
				return Resources.Disconnected;
			}
			return Resources.Connecting;
		}

		public void Request(Message message, Action<Message> onResponse, Action<Message> onError)
		{
			Message message2 = null;
			string method = message.get_Method();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(method);
			if (num <= 2425969059u)
			{
				if (num <= 352933672u)
				{
					if (num != 7476626u)
					{
						if (num != 352933672u)
						{
							goto IL_1FC;
						}
						if (!(method == "userSettings/set"))
						{
							goto IL_1FC;
						}
					}
					else
					{
						if (method == "openUrlInDefaultBrowser")
						{
							VpnGuiForm.ShowWebPageInDefaultBrowser(message);
							goto IL_1FC;
						}
						goto IL_1FC;
					}
				}
				else if (num != 1625305005u)
				{
					if (num != 1955690875u)
					{
						if (num != 2425969059u)
						{
							goto IL_1FC;
						}
						if (method == "showNotification")
						{
							this.ShowBaloon(message.get_Params().ToString(), ToolTipIcon.Warning, 30000, "register");
							goto IL_1FC;
						}
						goto IL_1FC;
					}
					else
					{
						if (method == "closeWindow")
						{
							base.Invoke(new MethodInvoker(base.Close));
							goto IL_1FC;
						}
						goto IL_1FC;
					}
				}
				else
				{
					if (method == "hide")
					{
						base.Invoke(new MethodInvoker(this.OnHide));
						goto IL_1FC;
					}
					goto IL_1FC;
				}
			}
			else if (num <= 2763637973u)
			{
				if (num != 2641963249u)
				{
					if (num != 2763637973u)
					{
						goto IL_1FC;
					}
					if (method == "menu/set")
					{
						this.contextMenuService.Set((JObject)message.get_Params());
						goto IL_1FC;
					}
					goto IL_1FC;
				}
				else
				{
					if (method == "systray/tooltip/set")
					{
						this.notifyIcon.Text = message.get_Params().ToString();
						goto IL_1FC;
					}
					goto IL_1FC;
				}
			}
			else if (num != 2922147050u)
			{
				if (num != 3285508705u)
				{
					if (num != 4196739316u)
					{
						goto IL_1FC;
					}
					if (!(method == "userSettings/get"))
					{
						goto IL_1FC;
					}
				}
				else
				{
					if (method == "systray/icon/set")
					{
						this.notifyIcon.Icon = this.GetIcon(message.get_Params().ToString());
						goto IL_1FC;
					}
					goto IL_1FC;
				}
			}
			else
			{
				if (method == "menu/add")
				{
					this.contextMenuService.Add((JObject)message.get_Params());
					goto IL_1FC;
				}
				goto IL_1FC;
			}
			message2 = new UserSettings().HandleRequest(message);
			IL_1FC:
			if (message2 == null)
			{
				message2 = Message.CreateResponse(message, "OK");
			}
			onResponse(message2);
		}

		public void Subscribe(string messageCommand, Action<Message> onMessage)
		{
		}

		public void Unsubscribe(string messageCommand, Action<Message> onMessage)
		{
		}

		private void NotifyIcon_MouseClick(object sender, MouseEventArgs e)
		{
			if (e.Button != MouseButtons.Left)
			{
				return;
			}
			if (!base.Visible)
			{
				this.startMinimized = false;
				base.Show();
				base.Activate();
				return;
			}
			base.Hide();
		}

		private void VpnGuiForm_FormClosed(object sender, FormClosedEventArgs e)
		{
		}

		private void VpnGuiForm_VisibleChanged(object sender, EventArgs e)
		{
			if (base.Visible && !this.startMinimized)
			{
				IEventTracker expr_15 = VpnMixpanelEventTracker.get_Instance();
				if (expr_15 == null)
				{
					return;
				}
				expr_15.TrackEventAsync(VpnEventTrackingNames.get_GuiOpened(), null);
			}
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				if (this.components != null)
				{
					this.components.Dispose();
				}
				if (this.hostRouter != null)
				{
					this.hostRouter.Dispose();
				}
			}
			base.Dispose(disposing);
		}

		private void InitializeComponent()
		{
			this.components = new Container();
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(VpnGuiForm));
			this.webBrowserControl = new WebBrowser();
			this.notifyIcon = new NotifyIcon(this.components);
			this.contextMenu = new ContextMenuStrip(this.components);
			base.SuspendLayout();
			this.webBrowserControl.AllowWebBrowserDrop = false;
			this.webBrowserControl.Dock = DockStyle.Fill;
			this.webBrowserControl.IsWebBrowserContextMenuEnabled = false;
			this.webBrowserControl.Location = new Point(0, 0);
			this.webBrowserControl.MinimumSize = new Size(20, 20);
			this.webBrowserControl.Name = "webBrowserControl";
			this.webBrowserControl.ScrollBarsEnabled = false;
			this.webBrowserControl.Size = new Size(392, 550);
			this.webBrowserControl.TabIndex = 0;
			this.webBrowserControl.WebBrowserShortcutsEnabled = false;
			this.notifyIcon.ContextMenuStrip = this.contextMenu;
			this.notifyIcon.Icon = (Icon)componentResourceManager.GetObject("notifyIcon.Icon");
			this.notifyIcon.Text = ProductSettings.get_ProductName();
			this.notifyIcon.Visible = true;
			this.notifyIcon.MouseClick += new MouseEventHandler(this.NotifyIcon_MouseClick);
			this.contextMenu.Name = "contextMenu";
			this.contextMenu.Size = new Size(61, 4);
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(392, 550);
			base.ControlBox = false;
			base.Controls.Add(this.webBrowserControl);
			this.ForeColor = SystemColors.ControlDark;
			base.FormBorderStyle = FormBorderStyle.None;
			base.Icon = Resources.appIcon;
			base.Name = "VpnGuiForm";
			this.Text = ProductSettings.get_ProductName();
			base.FormClosing += new FormClosingEventHandler(this.VpnGuiForm_FormClosing);
			base.FormClosed += new FormClosedEventHandler(this.VpnGuiForm_FormClosed);
			base.Load += new EventHandler(this.VpnGuiForm_Load);
			base.SizeChanged += new EventHandler(this.VpnGuiForm_SizeChanged);
			base.VisibleChanged += new EventHandler(this.VpnGuiForm_VisibleChanged);
			base.ResumeLayout(false);
		}
	}
}
