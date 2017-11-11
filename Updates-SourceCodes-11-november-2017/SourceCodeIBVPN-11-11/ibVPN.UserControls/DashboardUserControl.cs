using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Controls;
using ibVPN.Properties;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace ibVPN.UserControls
{
	public class DashboardUserControl : UserControl
	{
		private float dpiX;

		private TextRenderingHint _hint = TextRenderingHint.AntiAlias;

		private IContainer components;

		public Panel pnlDashboard;

		public RichTextBox rchInfo;

		public Panel pnlKillSwitch;

		public RichTextBox lblKillSwitch;

		public Panel pnlDNS;

		public Panel pnlLocationProtocol;

		public LabelX lblProtocol;

		public LabelX lblLocation;

		public ButtonX btnConnect;

		public ButtonX btnExpand;

		public RichTextBox rchTextLog;

		public ButtonX btnLogs;

		public ButtonX btnGplus;

		public ButtonX btnFacebook;

		public ButtonX btnTwitter;

		public Panel pnlNews;

		public LabelX lblNews;

		public ButtonX btnAccount;

		public Panel pnlLicensed;

		public LabelX lblLicensed;

		public Line line2;

		public Line line1;

		public PictureBox pctStatus;

		public Chart chartSpeed;

		public LinkLabel lnkNews;

		public LinkLabel lnkPromo;

		private Label lblBgLog;

		private Panel pnlLogBG;

		public Panel pnlInfoBG;

		public SwitchButton swbDNS;

		public SwitchButton swbKillSwitch;

		public RichTextBox lblDNS;

		public LinkLabel lnkKswSet;

		public LinkLabel lnkDnsSet;

		private LinkLabel lnkDebug;

		public Panel pnlPromo;

		public LabelX lblVersion;

		public LinkLabel lnkCheckIP;

		public InfoFlagUserControl infoFlag;

		public LinkLabel lnkProtocol;

		public LinkLabel lnkServers;

		public LabelX lblFreeTimeRemaining;

		public TextRenderingHint TextRenderingHint
		{
			get
			{
				return this._hint;
			}
			set
			{
				this._hint = value;
			}
		}

		public DashboardUserControl()
		{
			this.InitializeComponent();
			this.InitializeControls();
			this.GetResolution();
		}

		private void InitializeControls()
		{
			Version version = Assembly.GetExecutingAssembly().GetName().Version;
			this.lblVersion.Text = "Version : " + version.ToString();
		}

		private void GetResolution()
		{
			Graphics graphics = base.CreateGraphics();
			this.dpiX = graphics.DpiX;
			if (this.dpiX != 96f)
			{
				int width = Convert.ToInt32(this.dpiX * 151f / 96f);
				Convert.ToInt32(this.dpiX * 6f / 96f);
				this.infoFlag.lblinfoConnection.Width = width;
				this.lnkCheckIP.MinimumSize = new Size(0, 0);
				this.lnkCheckIP.MaximumSize = new Size(0, 0);
				this.lnkNews.MinimumSize = new Size(0, 0);
				this.lnkNews.MaximumSize = new Size(0, 0);
			}
		}

		private void lnkNews_Paint(object sender, PaintEventArgs e)
		{
		}

		private void btnDNS_Paint(object sender, PaintEventArgs e)
		{
		}

		private void btnLogs_Paint(object sender, PaintEventArgs e)
		{
		}

		private void btnDNS_MouseHover(object sender, EventArgs e)
		{
		}

		private void DashboardUserControl_Paint(object sender, PaintEventArgs e)
		{
			e.Graphics.TextContrast = 12;
			e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
			e.Graphics.TextRenderingHint = DisplayHelp.get_AntiAliasTextRenderingHint();
		}

		private void lnkDebug_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			string name = Assembly.GetExecutingAssembly().GetName().Name;
			string text = Application.ExecutablePath.ToString();
			string fileName = text.Substring(0, text.Length - name.Length - 4) + "debug.bat";
			Process arg_55_0 = new Process();
			arg_55_0.StartInfo = new ProcessStartInfo
			{
				WindowStyle = ProcessWindowStyle.Hidden,
				FileName = fileName
			};
			arg_55_0.Start();
			arg_55_0.Close();
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
			ChartArea chartArea = new ChartArea();
			Series series = new Series();
			Series series2 = new Series();
			this.pnlDashboard = new Panel();
			this.lnkDebug = new LinkLabel();
			this.swbDNS = new SwitchButton();
			this.swbKillSwitch = new SwitchButton();
			this.lblBgLog = new Label();
			this.chartSpeed = new Chart();
			this.pctStatus = new PictureBox();
			this.btnAccount = new ButtonX();
			this.pnlLicensed = new Panel();
			this.lblFreeTimeRemaining = new LabelX();
			this.lblLicensed = new LabelX();
			this.line1 = new Line();
			this.line2 = new Line();
			this.btnTwitter = new ButtonX();
			this.btnGplus = new ButtonX();
			this.btnFacebook = new ButtonX();
			this.pnlPromo = new Panel();
			this.lblVersion = new LabelX();
			this.lnkPromo = new LinkLabel();
			this.pnlNews = new Panel();
			this.lnkNews = new LinkLabel();
			this.lblNews = new LabelX();
			this.btnLogs = new ButtonX();
			this.pnlLogBG = new Panel();
			this.rchTextLog = new RichTextBox();
			this.pnlInfoBG = new Panel();
			this.infoFlag = new InfoFlagUserControl();
			this.lnkCheckIP = new LinkLabel();
			this.rchInfo = new RichTextBox();
			this.pnlKillSwitch = new Panel();
			this.lnkKswSet = new LinkLabel();
			this.lblKillSwitch = new RichTextBox();
			this.pnlDNS = new Panel();
			this.lnkDnsSet = new LinkLabel();
			this.lblDNS = new RichTextBox();
			this.pnlLocationProtocol = new Panel();
			this.lnkProtocol = new LinkLabel();
			this.lnkServers = new LinkLabel();
			this.lblProtocol = new LabelX();
			this.lblLocation = new LabelX();
			this.btnConnect = new ButtonX();
			this.btnExpand = new ButtonX();
			this.pnlDashboard.SuspendLayout();
			((ISupportInitialize)this.chartSpeed).BeginInit();
			((ISupportInitialize)this.pctStatus).BeginInit();
			this.pnlLicensed.SuspendLayout();
			this.pnlPromo.SuspendLayout();
			this.pnlNews.SuspendLayout();
			this.pnlLogBG.SuspendLayout();
			this.pnlInfoBG.SuspendLayout();
			this.pnlKillSwitch.SuspendLayout();
			this.pnlDNS.SuspendLayout();
			this.pnlLocationProtocol.SuspendLayout();
			base.SuspendLayout();
			this.pnlDashboard.BackColor = Color.Transparent;
			this.pnlDashboard.Controls.Add(this.lnkDebug);
			this.pnlDashboard.Controls.Add(this.swbDNS);
			this.pnlDashboard.Controls.Add(this.swbKillSwitch);
			this.pnlDashboard.Controls.Add(this.lblBgLog);
			this.pnlDashboard.Controls.Add(this.chartSpeed);
			this.pnlDashboard.Controls.Add(this.pctStatus);
			this.pnlDashboard.Controls.Add(this.btnAccount);
			this.pnlDashboard.Controls.Add(this.pnlLicensed);
			this.pnlDashboard.Controls.Add(this.line1);
			this.pnlDashboard.Controls.Add(this.line2);
			this.pnlDashboard.Controls.Add(this.btnTwitter);
			this.pnlDashboard.Controls.Add(this.btnGplus);
			this.pnlDashboard.Controls.Add(this.btnFacebook);
			this.pnlDashboard.Controls.Add(this.pnlPromo);
			this.pnlDashboard.Controls.Add(this.pnlNews);
			this.pnlDashboard.Controls.Add(this.btnLogs);
			this.pnlDashboard.Controls.Add(this.pnlLogBG);
			this.pnlDashboard.Controls.Add(this.pnlInfoBG);
			this.pnlDashboard.Controls.Add(this.pnlKillSwitch);
			this.pnlDashboard.Controls.Add(this.pnlDNS);
			this.pnlDashboard.Controls.Add(this.pnlLocationProtocol);
			this.pnlDashboard.Controls.Add(this.btnConnect);
			this.pnlDashboard.ForeColor = Color.FromArgb(38, 47, 57);
			this.pnlDashboard.Location = new Point(0, 0);
			this.pnlDashboard.MaximumSize = new Size(333, 555);
			this.pnlDashboard.MinimumSize = new Size(333, 555);
			this.pnlDashboard.Name = "pnlDashboard";
			this.pnlDashboard.Size = new Size(333, 555);
			this.pnlDashboard.TabIndex = 13;
			this.lnkDebug.ActiveLinkColor = Color.FromArgb(100, 100, 100);
			this.lnkDebug.AutoSize = true;
			this.lnkDebug.ForeColor = Color.FromArgb(100, 100, 100);
			this.lnkDebug.LinkBehavior = LinkBehavior.NeverUnderline;
			this.lnkDebug.LinkColor = Color.FromArgb(100, 100, 100);
			this.lnkDebug.Location = new Point(283, 6);
			this.lnkDebug.MaximumSize = new Size(42, 15);
			this.lnkDebug.MinimumSize = new Size(42, 15);
			this.lnkDebug.Name = "lnkDebug";
			this.lnkDebug.Size = new Size(42, 15);
			this.lnkDebug.TabIndex = 54;
			this.lnkDebug.TabStop = true;
			this.lnkDebug.Text = "Debug";
			this.lnkDebug.Visible = false;
			this.lnkDebug.VisitedLinkColor = Color.FromArgb(100, 100, 100);
			this.lnkDebug.LinkClicked += new LinkLabelLinkClickedEventHandler(this.lnkDebug_LinkClicked);
			this.swbDNS.AccessibleName = "Toggle ibDNS on or off.";
			this.swbDNS.AccessibleRole = AccessibleRole.PushButton;
			this.swbDNS.BackColor = Color.White;
			this.swbDNS.get_BackgroundStyle().set_CornerType(2);
			this.swbDNS.Cursor = Cursors.Hand;
			this.swbDNS.set_FocusCuesEnabled(false);
			this.swbDNS.Font = new Font("Segoe UI", 7f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.swbDNS.Location = new Point(245, 212);
			this.swbDNS.Margin = new Padding(0);
			this.swbDNS.MaximumSize = new Size(80, 30);
			this.swbDNS.MinimumSize = new Size(80, 30);
			this.swbDNS.Name = "swbDNS";
			this.swbDNS.set_OffBackColor(Color.FromArgb(130, 130, 130));
			this.swbDNS.set_OffText("ibDNS Off");
			this.swbDNS.set_OffTextColor(Color.White);
			this.swbDNS.set_OnBackColor(Color.FromArgb(28, 158, 27));
			this.swbDNS.set_OnText("ibDNS On");
			this.swbDNS.set_OnTextColor(Color.White);
			this.swbDNS.set_ReadOnlyMarkerColor(Color.FromArgb(255, 0, 64));
			this.swbDNS.Size = new Size(80, 30);
			this.swbDNS.set_Style(9);
			this.swbDNS.set_SwitchBackColor(Color.FromArgb(38, 47, 57));
			this.swbDNS.set_SwitchBorderColor(Color.FromArgb(38, 47, 57));
			this.swbDNS.set_SwitchClickTogglesValue(true);
			this.swbDNS.set_SwitchFont(new Font("Segoe UI", 8f, FontStyle.Regular, GraphicsUnit.Point, 0));
			this.swbDNS.set_SwitchWidth(10);
			this.swbDNS.TabIndex = 53;
			this.swbKillSwitch.AccessibleDescription = "To turn KillSwitch ON, you need to have at least one app added in the KillSwitch list";
			this.swbKillSwitch.AccessibleName = "Toggle Kill Switch on or off.";
			this.swbKillSwitch.AccessibleRole = AccessibleRole.PushButton;
			this.swbKillSwitch.BackColor = Color.White;
			this.swbKillSwitch.get_BackgroundStyle().set_CornerType(2);
			this.swbKillSwitch.Cursor = Cursors.Hand;
			this.swbKillSwitch.set_FocusCuesEnabled(false);
			this.swbKillSwitch.Location = new Point(245, 171);
			this.swbKillSwitch.Margin = new Padding(0);
			this.swbKillSwitch.MaximumSize = new Size(80, 30);
			this.swbKillSwitch.MinimumSize = new Size(80, 30);
			this.swbKillSwitch.Name = "swbKillSwitch";
			this.swbKillSwitch.set_OffBackColor(Color.FromArgb(130, 130, 130));
			this.swbKillSwitch.set_OffText("KillSwitch Off");
			this.swbKillSwitch.set_OffTextColor(Color.White);
			this.swbKillSwitch.set_OnBackColor(Color.FromArgb(28, 158, 27));
			this.swbKillSwitch.set_OnText("KillSwitch On");
			this.swbKillSwitch.set_OnTextColor(Color.White);
			this.swbKillSwitch.set_ReadOnlyMarkerColor(Color.FromArgb(255, 0, 64));
			this.swbKillSwitch.Size = new Size(80, 30);
			this.swbKillSwitch.set_Style(9);
			this.swbKillSwitch.set_SwitchBackColor(Color.FromArgb(38, 47, 57));
			this.swbKillSwitch.set_SwitchBorderColor(Color.FromArgb(38, 47, 57));
			this.swbKillSwitch.set_SwitchClickTogglesValue(true);
			this.swbKillSwitch.set_SwitchFont(new Font("Segoe UI", 7f, FontStyle.Bold, GraphicsUnit.Point, 0));
			this.swbKillSwitch.set_SwitchWidth(10);
			this.swbKillSwitch.TabIndex = 52;
			this.lblBgLog.AutoSize = true;
			this.lblBgLog.Location = new Point(5, 252);
			this.lblBgLog.MaximumSize = new Size(0, 15);
			this.lblBgLog.MinimumSize = new Size(0, 15);
			this.lblBgLog.Name = "lblBgLog";
			this.lblBgLog.Size = new Size(0, 15);
			this.lblBgLog.TabIndex = 49;
			this.chartSpeed.AccessibleName = "Traffic graphic.";
			this.chartSpeed.AccessibleRole = AccessibleRole.Indicator;
			this.chartSpeed.BackColor = Color.FromArgb(240, 240, 240);
			this.chartSpeed.BorderlineColor = Color.FromArgb(238, 238, 238);
			this.chartSpeed.BorderSkin.BackColor = Color.FromArgb(238, 238, 238);
			this.chartSpeed.BorderSkin.BackHatchStyle = ChartHatchStyle.LightHorizontal;
			this.chartSpeed.BorderSkin.BorderColor = Color.FromArgb(204, 204, 204);
			this.chartSpeed.BorderSkin.PageColor = Color.FromArgb(238, 238, 238);
			chartArea.AxisX.IsMarginVisible = false;
			chartArea.AxisX.IsStartedFromZero = false;
			chartArea.AxisX.LineColor = Color.FromArgb(154, 154, 154);
			chartArea.AxisX.LogarithmBase = 20.0;
			chartArea.AxisX.ScaleBreakStyle.LineColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisX.TitleFont = new Font("Segoe UI", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			chartArea.AxisX.TitleForeColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisX2.IsMarginVisible = false;
			chartArea.AxisX2.LineColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisX2.TitleFont = new Font("Segoe UI", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			chartArea.AxisX2.TitleForeColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisY.IsMarginVisible = false;
			chartArea.AxisY.IsStartedFromZero = false;
			chartArea.AxisY.LineColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisY.LineDashStyle = ChartDashStyle.Dash;
			chartArea.AxisY.LogarithmBase = 20.0;
			chartArea.AxisY.MajorTickMark.LineColor = Color.FromArgb(204, 204, 204);
			chartArea.AxisY.MajorTickMark.LineDashStyle = ChartDashStyle.Dash;
			chartArea.AxisY.MinorGrid.LineColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisY.MinorTickMark.LineColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisY.TitleFont = new Font("Segoe UI", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			chartArea.AxisY.TitleForeColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisY2.IsMarginVisible = false;
			chartArea.AxisY2.LineColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisY2.ScaleBreakStyle.LineColor = Color.FromArgb(248, 248, 248);
			chartArea.AxisY2.TitleForeColor = Color.FromArgb(248, 248, 248);
			chartArea.BackColor = Color.Transparent;
			chartArea.BackHatchStyle = ChartHatchStyle.LightHorizontal;
			chartArea.BorderColor = Color.FromArgb(204, 204, 204);
			chartArea.CursorX.LineWidth = 2;
			chartArea.CursorX.SelectionColor = Color.White;
			chartArea.IsSameFontSizeForAllAxes = true;
			chartArea.Name = "ChartArea1";
			this.chartSpeed.ChartAreas.Add(chartArea);
			this.chartSpeed.Location = new Point(162, 344);
			this.chartSpeed.Margin = new Padding(0);
			this.chartSpeed.MaximumSize = new Size(163, 90);
			this.chartSpeed.MinimumSize = new Size(163, 90);
			this.chartSpeed.Name = "chartSpeed";
			series.ChartArea = "ChartArea1";
			series.ChartType = SeriesChartType.Spline;
			series.Color = Color.Red;
			series.CustomProperties = "IsXAxisQuantitative=False";
			series.Font = new Font("Segoe UI", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			series.LabelForeColor = Color.FromArgb(204, 204, 204);
			series.Name = "Upload";
			series2.ChartArea = "ChartArea1";
			series2.ChartType = SeriesChartType.Spline;
			series2.Color = Color.Green;
			series2.CustomProperties = "IsXAxisQuantitative=False";
			series2.Font = new Font("Segoe UI", 8f);
			series2.LabelForeColor = Color.FromArgb(204, 204, 204);
			series2.Name = "Download";
			this.chartSpeed.Series.Add(series);
			this.chartSpeed.Series.Add(series2);
			this.chartSpeed.Size = new Size(163, 90);
			this.chartSpeed.TabIndex = 48;
			this.chartSpeed.Text = "chart1";
			this.pctStatus.AccessibleName = "Connection status";
			this.pctStatus.AccessibleRole = AccessibleRole.Indicator;
			this.pctStatus.Anchor = AnchorStyles.Top;
			this.pctStatus.BackColor = Color.Transparent;
			this.pctStatus.BackgroundImageLayout = ImageLayout.Center;
			this.pctStatus.Cursor = Cursors.Default;
			this.pctStatus.Location = new Point(80, 6);
			this.pctStatus.MaximumSize = new Size(160, 58);
			this.pctStatus.MinimumSize = new Size(160, 58);
			this.pctStatus.Name = "pctStatus";
			this.pctStatus.Size = new Size(160, 58);
			this.pctStatus.SizeMode = PictureBoxSizeMode.StretchImage;
			this.pctStatus.TabIndex = 0;
			this.pctStatus.TabStop = false;
			this.btnAccount.AccessibleRole = AccessibleRole.PushButton;
			this.btnAccount.set_AntiAlias(true);
			this.btnAccount.BackColor = Color.FromArgb(38, 47, 57);
			this.btnAccount.set_ColorTable(0);
			this.btnAccount.Cursor = Cursors.Hand;
			this.btnAccount.set_FocusCuesEnabled(false);
			this.btnAccount.Location = new Point(245, 444);
			this.btnAccount.MaximumSize = new Size(80, 25);
			this.btnAccount.MinimumSize = new Size(80, 25);
			this.btnAccount.Name = "btnAccount";
			this.btnAccount.Size = new Size(80, 25);
			this.btnAccount.set_Style(9);
			this.btnAccount.TabIndex = 46;
			this.btnAccount.Text = "Account";
			this.btnAccount.set_TextColor(Color.White);
			this.pnlLicensed.AccessibleRole = AccessibleRole.Grouping;
			this.pnlLicensed.BackColor = Color.FromArgb(240, 240, 240);
			this.pnlLicensed.BackgroundImageLayout = ImageLayout.Zoom;
			this.pnlLicensed.Controls.Add(this.lblFreeTimeRemaining);
			this.pnlLicensed.Controls.Add(this.lblLicensed);
			this.pnlLicensed.Location = new Point(5, 444);
			this.pnlLicensed.MaximumSize = new Size(230, 25);
			this.pnlLicensed.MinimumSize = new Size(230, 25);
			this.pnlLicensed.Name = "pnlLicensed";
			this.pnlLicensed.Size = new Size(230, 25);
			this.pnlLicensed.TabIndex = 45;
			this.lblFreeTimeRemaining.get_BackgroundStyle().set_CornerType(1);
			this.lblFreeTimeRemaining.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblFreeTimeRemaining.Location = new Point(90, 1);
			this.lblFreeTimeRemaining.MaximumSize = new Size(100, 23);
			this.lblFreeTimeRemaining.MinimumSize = new Size(100, 23);
			this.lblFreeTimeRemaining.Name = "lblFreeTimeRemaining";
			this.lblFreeTimeRemaining.Size = new Size(100, 23);
			this.lblFreeTimeRemaining.TabIndex = 55;
			this.lblFreeTimeRemaining.Visible = false;
			this.lblLicensed.AccessibleRole = AccessibleRole.Text;
			this.lblLicensed.get_BackgroundStyle().set_CornerType(1);
			this.lblLicensed.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblLicensed.Location = new Point(7, 1);
			this.lblLicensed.MaximumSize = new Size(222, 23);
			this.lblLicensed.MinimumSize = new Size(222, 23);
			this.lblLicensed.Name = "lblLicensed";
			this.lblLicensed.Size = new Size(222, 23);
			this.lblLicensed.TabIndex = 12;
			this.lblLicensed.Text = "Loading...";
			this.line1.ForeColor = Color.FromArgb(226, 226, 226);
			this.line1.Location = new Point(0, 68);
			this.line1.Margin = new Padding(0);
			this.line1.MaximumSize = new Size(324, 1);
			this.line1.MinimumSize = new Size(324, 1);
			this.line1.Name = "line1";
			this.line1.Size = new Size(324, 1);
			this.line1.TabIndex = 43;
			this.line1.Text = "line1";
			this.line2.ForeColor = Color.White;
			this.line2.Location = new Point(0, 69);
			this.line2.Margin = new Padding(0);
			this.line2.MaximumSize = new Size(324, 1);
			this.line2.MinimumSize = new Size(324, 1);
			this.line2.Name = "line2";
			this.line2.Size = new Size(324, 1);
			this.line2.TabIndex = 44;
			this.line2.Text = "line2";
			this.btnTwitter.AccessibleName = "Click for Twitter page";
			this.btnTwitter.AccessibleRole = AccessibleRole.PushButton;
			this.btnTwitter.set_AntiAlias(true);
			this.btnTwitter.BackColor = Color.FromArgb(41, 85, 172, 238);
			this.btnTwitter.set_ColorTable(0);
			this.btnTwitter.Cursor = Cursors.Hand;
			this.btnTwitter.set_EnableMarkup(false);
			this.btnTwitter.set_FadeEffect(false);
			this.btnTwitter.set_FocusCuesEnabled(false);
			this.btnTwitter.Font = new Font("Segoe UI", 23f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnTwitter.set_Image(Resources.ico_sm_twitter);
			this.btnTwitter.Location = new Point(40, 520);
			this.btnTwitter.Margin = new Padding(0);
			this.btnTwitter.MaximumSize = new Size(30, 30);
			this.btnTwitter.MinimumSize = new Size(30, 30);
			this.btnTwitter.Name = "btnTwitter";
			this.btnTwitter.Size = new Size(30, 30);
			this.btnTwitter.TabIndex = 39;
			this.btnTwitter.set_TextColor(Color.FromArgb(133, 193, 245));
			this.btnTwitter.set_ThemeAware(true);
			this.btnGplus.AccessibleName = "Click for google plus.";
			this.btnGplus.AccessibleRole = AccessibleRole.PushButton;
			this.btnGplus.set_AntiAlias(true);
			this.btnGplus.BackColor = Color.FromArgb(102, 221, 75, 57);
			this.btnGplus.set_ColorTable(0);
			this.btnGplus.Cursor = Cursors.Hand;
			this.btnGplus.set_EnableMarkup(false);
			this.btnGplus.set_FadeEffect(false);
			this.btnGplus.set_FocusCuesEnabled(false);
			this.btnGplus.Font = new Font("Segoe UI", 23f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnGplus.set_Image(Resources.ico_sm_gplus);
			this.btnGplus.Location = new Point(75, 520);
			this.btnGplus.Margin = new Padding(0);
			this.btnGplus.MaximumSize = new Size(30, 30);
			this.btnGplus.MinimumSize = new Size(30, 30);
			this.btnGplus.Name = "btnGplus";
			this.btnGplus.Size = new Size(30, 30);
			this.btnGplus.TabIndex = 42;
			this.btnGplus.set_TextColor(Color.FromArgb(233, 109, 99));
			this.btnGplus.set_ThemeAware(true);
			this.btnFacebook.AccessibleName = "lick for Facebook page";
			this.btnFacebook.AccessibleRole = AccessibleRole.PushButton;
			this.btnFacebook.set_AntiAlias(true);
			this.btnFacebook.BackColor = Color.FromArgb(102, 59, 89, 152);
			this.btnFacebook.set_ColorTable(0);
			this.btnFacebook.Cursor = Cursors.Hand;
			this.btnFacebook.set_FocusCuesEnabled(false);
			this.btnFacebook.Font = new Font("Segoe UI", 23f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnFacebook.set_Image(Resources.ico_sm_facebook);
			this.btnFacebook.Location = new Point(5, 520);
			this.btnFacebook.Margin = new Padding(0);
			this.btnFacebook.MaximumSize = new Size(30, 30);
			this.btnFacebook.MinimumSize = new Size(30, 30);
			this.btnFacebook.Name = "btnFacebook";
			this.btnFacebook.Size = new Size(30, 30);
			this.btnFacebook.set_Style(9);
			this.btnFacebook.TabIndex = 41;
			this.btnFacebook.set_TextColor(Color.FromArgb(59, 89, 152));
			this.pnlPromo.AccessibleRole = AccessibleRole.Grouping;
			this.pnlPromo.BackColor = Color.FromArgb(240, 240, 240);
			this.pnlPromo.BackgroundImageLayout = ImageLayout.Zoom;
			this.pnlPromo.Controls.Add(this.lblVersion);
			this.pnlPromo.Controls.Add(this.lnkPromo);
			this.pnlPromo.ForeColor = Color.FromArgb(61, 61, 61);
			this.pnlPromo.Location = new Point(110, 520);
			this.pnlPromo.MaximumSize = new Size(215, 30);
			this.pnlPromo.MinimumSize = new Size(215, 30);
			this.pnlPromo.Name = "pnlPromo";
			this.pnlPromo.Size = new Size(215, 30);
			this.pnlPromo.TabIndex = 40;
			this.lblVersion.AccessibleRole = AccessibleRole.Text;
			this.lblVersion.BackColor = Color.Transparent;
			this.lblVersion.get_BackgroundStyle().set_CornerType(1);
			this.lblVersion.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblVersion.Location = new Point(5, 1);
			this.lblVersion.MaximumSize = new Size(156, 26);
			this.lblVersion.MinimumSize = new Size(156, 26);
			this.lblVersion.Name = "lblVersion";
			this.lblVersion.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.lblVersion.Size = new Size(156, 26);
			this.lblVersion.TabIndex = 51;
			this.lblVersion.Text = "Version";
			this.lnkPromo.AccessibleDescription = "Will dirrect you to the update page.";
			this.lnkPromo.AccessibleName = "Click to update.";
			this.lnkPromo.ActiveLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkPromo.BackColor = Color.Transparent;
			this.lnkPromo.Cursor = Cursors.Default;
			this.lnkPromo.DisabledLinkColor = Color.LightGray;
			this.lnkPromo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lnkPromo.ForeColor = Color.FromArgb(28, 158, 27);
			this.lnkPromo.LinkBehavior = LinkBehavior.NeverUnderline;
			this.lnkPromo.LinkColor = Color.FromArgb(28, 158, 27);
			this.lnkPromo.Location = new Point(166, 1);
			this.lnkPromo.MaximumSize = new Size(46, 26);
			this.lnkPromo.MinimumSize = new Size(46, 26);
			this.lnkPromo.Name = "lnkPromo";
			this.lnkPromo.Size = new Size(46, 26);
			this.lnkPromo.TabIndex = 50;
			this.lnkPromo.TabStop = true;
			this.lnkPromo.Text = "Update";
			this.lnkPromo.TextAlign = ContentAlignment.MiddleLeft;
			this.lnkPromo.Visible = false;
			this.lnkPromo.VisitedLinkColor = Color.FromArgb(28, 158, 27);
			this.pnlNews.AccessibleRole = AccessibleRole.Grouping;
			this.pnlNews.BackColor = Color.FromArgb(240, 240, 240);
			this.pnlNews.BackgroundImageLayout = ImageLayout.Zoom;
			this.pnlNews.Controls.Add(this.lnkNews);
			this.pnlNews.Controls.Add(this.lblNews);
			this.pnlNews.Location = new Point(5, 479);
			this.pnlNews.Margin = new Padding(0);
			this.pnlNews.MaximumSize = new Size(320, 30);
			this.pnlNews.MinimumSize = new Size(320, 30);
			this.pnlNews.Name = "pnlNews";
			this.pnlNews.Size = new Size(320, 30);
			this.pnlNews.TabIndex = 38;
			this.lnkNews.ActiveLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkNews.Cursor = Cursors.Hand;
			this.lnkNews.DisabledLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkNews.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lnkNews.ForeColor = Color.FromArgb(28, 158, 27);
			this.lnkNews.LinkBehavior = LinkBehavior.NeverUnderline;
			this.lnkNews.LinkColor = Color.FromArgb(28, 158, 27);
			this.lnkNews.Location = new Point(40, 1);
			this.lnkNews.Margin = new Padding(0);
			this.lnkNews.MaximumSize = new Size(277, 30);
			this.lnkNews.MinimumSize = new Size(277, 30);
			this.lnkNews.Name = "lnkNews";
			this.lnkNews.Size = new Size(277, 30);
			this.lnkNews.TabIndex = 49;
			this.lnkNews.TabStop = true;
			this.lnkNews.Text = "Loading...";
			this.lnkNews.TextAlign = ContentAlignment.MiddleLeft;
			this.lnkNews.UseCompatibleTextRendering = true;
			this.lnkNews.VisitedLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkNews.Paint += new PaintEventHandler(this.lnkNews_Paint);
			this.lblNews.AccessibleRole = AccessibleRole.Text;
			this.lblNews.get_BackgroundStyle().set_CornerType(1);
			this.lblNews.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblNews.Location = new Point(7, 7);
			this.lblNews.Margin = new Padding(0);
			this.lblNews.MaximumSize = new Size(35, 15);
			this.lblNews.MinimumSize = new Size(35, 15);
			this.lblNews.Name = "lblNews";
			this.lblNews.Size = new Size(35, 15);
			this.lblNews.TabIndex = 12;
			this.lblNews.Text = "News:";
			this.lblNews.set_TextLineAlignment(StringAlignment.Near);
			this.btnLogs.AccessibleRole = AccessibleRole.PushButton;
			this.btnLogs.set_AntiAlias(true);
			this.btnLogs.BackColor = Color.FromArgb(38, 47, 57);
			this.btnLogs.set_ColorTable(0);
			this.btnLogs.Cursor = Cursors.Hand;
			this.btnLogs.set_FocusCuesEnabled(false);
			this.btnLogs.Location = new Point(245, 253);
			this.btnLogs.MaximumSize = new Size(80, 80);
			this.btnLogs.MinimumSize = new Size(80, 80);
			this.btnLogs.Name = "btnLogs";
			this.btnLogs.Size = new Size(80, 80);
			this.btnLogs.set_Style(9);
			this.btnLogs.TabIndex = 37;
			this.btnLogs.Text = "View Full Log";
			this.btnLogs.set_TextColor(Color.White);
			this.btnLogs.Paint += new PaintEventHandler(this.btnLogs_Paint);
			this.pnlLogBG.AccessibleRole = AccessibleRole.Grouping;
			this.pnlLogBG.BackColor = Color.FromArgb(240, 240, 240);
			this.pnlLogBG.Controls.Add(this.rchTextLog);
			this.pnlLogBG.Location = new Point(5, 253);
			this.pnlLogBG.MaximumSize = new Size(230, 80);
			this.pnlLogBG.MinimumSize = new Size(230, 80);
			this.pnlLogBG.Name = "pnlLogBG";
			this.pnlLogBG.Size = new Size(230, 80);
			this.pnlLogBG.TabIndex = 50;
			this.rchTextLog.AccessibleName = "Display part of the connection progress.";
			this.rchTextLog.AccessibleRole = AccessibleRole.Dialog;
			this.rchTextLog.BackColor = Color.FromArgb(240, 240, 240);
			this.rchTextLog.BorderStyle = BorderStyle.None;
			this.rchTextLog.Enabled = false;
			this.rchTextLog.Font = new Font("Courier New", 8f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.rchTextLog.ForeColor = Color.FromArgb(130, 130, 130);
			this.rchTextLog.Location = new Point(5, 5);
			this.rchTextLog.Margin = new Padding(0);
			this.rchTextLog.MaximumSize = new Size(220, 70);
			this.rchTextLog.MinimumSize = new Size(220, 70);
			this.rchTextLog.Name = "rchTextLog";
			this.rchTextLog.ReadOnly = true;
			this.rchTextLog.ScrollBars = RichTextBoxScrollBars.None;
			this.rchTextLog.Size = new Size(220, 70);
			this.rchTextLog.TabIndex = 36;
			this.rchTextLog.Text = "";
			this.pnlInfoBG.AccessibleRole = AccessibleRole.Grouping;
			this.pnlInfoBG.BackColor = Color.FromArgb(240, 240, 240);
			this.pnlInfoBG.Controls.Add(this.infoFlag);
			this.pnlInfoBG.Controls.Add(this.lnkCheckIP);
			this.pnlInfoBG.Controls.Add(this.rchInfo);
			this.pnlInfoBG.Location = new Point(5, 344);
			this.pnlInfoBG.Margin = new Padding(0);
			this.pnlInfoBG.MaximumSize = new Size(166, 90);
			this.pnlInfoBG.MinimumSize = new Size(166, 90);
			this.pnlInfoBG.Name = "pnlInfoBG";
			this.pnlInfoBG.Size = new Size(166, 90);
			this.pnlInfoBG.TabIndex = 51;
			this.infoFlag.BackColor = Color.FromArgb(240, 240, 240);
			this.infoFlag.ForeColor = Color.FromArgb(38, 47, 57);
			this.infoFlag.Location = new Point(5, 3);
			this.infoFlag.MaximumSize = new Size(160, 20);
			this.infoFlag.MinimumSize = new Size(160, 20);
			this.infoFlag.Name = "infoFlag";
			this.infoFlag.Size = new Size(160, 20);
			this.infoFlag.TabIndex = 55;
			this.lnkCheckIP.AccessibleDescription = "Will open a new browser window.";
			this.lnkCheckIP.AccessibleName = "Check IP ";
			this.lnkCheckIP.AccessibleRole = AccessibleRole.Link;
			this.lnkCheckIP.ActiveLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkCheckIP.AutoSize = true;
			this.lnkCheckIP.BackColor = Color.Transparent;
			this.lnkCheckIP.ForeColor = Color.FromArgb(28, 158, 27);
			this.lnkCheckIP.LinkArea = new LinkArea(0, 8);
			this.lnkCheckIP.LinkBehavior = LinkBehavior.NeverUnderline;
			this.lnkCheckIP.LinkColor = Color.FromArgb(28, 158, 27);
			this.lnkCheckIP.Location = new Point(109, 24);
			this.lnkCheckIP.Margin = new Padding(0);
			this.lnkCheckIP.MaximumSize = new Size(53, 15);
			this.lnkCheckIP.MinimumSize = new Size(53, 15);
			this.lnkCheckIP.Name = "lnkCheckIP";
			this.lnkCheckIP.Size = new Size(53, 15);
			this.lnkCheckIP.TabIndex = 28;
			this.lnkCheckIP.TabStop = true;
			this.lnkCheckIP.Text = "Check IP";
			this.lnkCheckIP.TextAlign = ContentAlignment.MiddleRight;
			this.lnkCheckIP.Visible = false;
			this.lnkCheckIP.VisitedLinkColor = Color.FromArgb(28, 158, 27);
			this.rchInfo.BackColor = Color.FromArgb(240, 240, 240);
			this.rchInfo.BorderStyle = BorderStyle.None;
			this.rchInfo.BulletIndent = 2;
			this.rchInfo.Cursor = Cursors.Default;
			this.rchInfo.Enabled = false;
			this.rchInfo.ForeColor = Color.FromArgb(38, 47, 57);
			this.rchInfo.Location = new Point(2, 9);
			this.rchInfo.Margin = new Padding(0);
			this.rchInfo.MinimumSize = new Size(160, 82);
			this.rchInfo.Name = "rchInfo";
			this.rchInfo.ReadOnly = true;
			this.rchInfo.ScrollBars = RichTextBoxScrollBars.None;
			this.rchInfo.ShortcutsEnabled = false;
			this.rchInfo.Size = new Size(160, 82);
			this.rchInfo.TabIndex = 27;
			this.rchInfo.Text = "";
			this.pnlKillSwitch.AccessibleRole = AccessibleRole.Grouping;
			this.pnlKillSwitch.BackColor = Color.FromArgb(240, 240, 240);
			this.pnlKillSwitch.BackgroundImageLayout = ImageLayout.Zoom;
			this.pnlKillSwitch.Controls.Add(this.lnkKswSet);
			this.pnlKillSwitch.Controls.Add(this.lblKillSwitch);
			this.pnlKillSwitch.Location = new Point(5, 171);
			this.pnlKillSwitch.MaximumSize = new Size(230, 30);
			this.pnlKillSwitch.MinimumSize = new Size(230, 30);
			this.pnlKillSwitch.Name = "pnlKillSwitch";
			this.pnlKillSwitch.Size = new Size(230, 30);
			this.pnlKillSwitch.TabIndex = 20;
			this.lnkKswSet.AccessibleDescription = "Go to KillSwitch settings page.";
			this.lnkKswSet.AccessibleName = "Kill Switch settings.";
			this.lnkKswSet.AccessibleRole = AccessibleRole.Link;
			this.lnkKswSet.ActiveLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkKswSet.AutoSize = true;
			this.lnkKswSet.BackColor = Color.FromArgb(240, 240, 240);
			this.lnkKswSet.ForeColor = Color.FromArgb(28, 158, 27);
			this.lnkKswSet.LinkBehavior = LinkBehavior.NeverUnderline;
			this.lnkKswSet.LinkColor = Color.FromArgb(28, 158, 27);
			this.lnkKswSet.Location = new Point(178, 8);
			this.lnkKswSet.Margin = new Padding(0);
			this.lnkKswSet.MaximumSize = new Size(49, 15);
			this.lnkKswSet.MinimumSize = new Size(49, 15);
			this.lnkKswSet.Name = "lnkKswSet";
			this.lnkKswSet.Size = new Size(49, 15);
			this.lnkKswSet.TabIndex = 13;
			this.lnkKswSet.TabStop = true;
			this.lnkKswSet.Text = "Settings";
			this.lnkKswSet.VisitedLinkColor = Color.FromArgb(28, 158, 27);
			this.lblKillSwitch.AccessibleRole = AccessibleRole.Text;
			this.lblKillSwitch.BackColor = Color.FromArgb(240, 240, 240);
			this.lblKillSwitch.BorderStyle = BorderStyle.None;
			this.lblKillSwitch.Enabled = false;
			this.lblKillSwitch.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblKillSwitch.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblKillSwitch.Location = new Point(5, 8);
			this.lblKillSwitch.Margin = new Padding(0);
			this.lblKillSwitch.MaximumSize = new Size(165, 18);
			this.lblKillSwitch.MinimumSize = new Size(165, 18);
			this.lblKillSwitch.Name = "lblKillSwitch";
			this.lblKillSwitch.ScrollBars = RichTextBoxScrollBars.None;
			this.lblKillSwitch.Size = new Size(165, 18);
			this.lblKillSwitch.TabIndex = 12;
			this.lblKillSwitch.Text = "KillSwitch is OFF. ";
			this.pnlDNS.AccessibleRole = AccessibleRole.Grouping;
			this.pnlDNS.BackColor = Color.FromArgb(240, 240, 240);
			this.pnlDNS.BackgroundImageLayout = ImageLayout.Zoom;
			this.pnlDNS.Controls.Add(this.lnkDnsSet);
			this.pnlDNS.Controls.Add(this.lblDNS);
			this.pnlDNS.Location = new Point(5, 212);
			this.pnlDNS.MaximumSize = new Size(230, 30);
			this.pnlDNS.MinimumSize = new Size(230, 30);
			this.pnlDNS.Name = "pnlDNS";
			this.pnlDNS.Size = new Size(230, 30);
			this.pnlDNS.TabIndex = 18;
			this.lnkDnsSet.AccessibleDescription = "Go to ibDNS server list";
			this.lnkDnsSet.AccessibleName = "ibDNS settings.";
			this.lnkDnsSet.AccessibleRole = AccessibleRole.Link;
			this.lnkDnsSet.ActiveLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkDnsSet.AutoSize = true;
			this.lnkDnsSet.BackColor = Color.FromArgb(240, 240, 240);
			this.lnkDnsSet.ForeColor = Color.FromArgb(28, 158, 27);
			this.lnkDnsSet.LinkArea = new LinkArea(0, 8);
			this.lnkDnsSet.LinkBehavior = LinkBehavior.NeverUnderline;
			this.lnkDnsSet.LinkColor = Color.FromArgb(28, 158, 27);
			this.lnkDnsSet.Location = new Point(178, 8);
			this.lnkDnsSet.Margin = new Padding(0);
			this.lnkDnsSet.MaximumSize = new Size(49, 15);
			this.lnkDnsSet.MinimumSize = new Size(49, 15);
			this.lnkDnsSet.Name = "lnkDnsSet";
			this.lnkDnsSet.Size = new Size(49, 15);
			this.lnkDnsSet.TabIndex = 14;
			this.lnkDnsSet.TabStop = true;
			this.lnkDnsSet.Text = "Settings";
			this.lnkDnsSet.VisitedLinkColor = Color.FromArgb(28, 158, 27);
			this.lblDNS.AccessibleRole = AccessibleRole.Text;
			this.lblDNS.BackColor = Color.FromArgb(240, 240, 240);
			this.lblDNS.BorderStyle = BorderStyle.None;
			this.lblDNS.Enabled = false;
			this.lblDNS.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblDNS.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblDNS.Location = new Point(5, 8);
			this.lblDNS.Margin = new Padding(0);
			this.lblDNS.MaximumSize = new Size(166, 18);
			this.lblDNS.MinimumSize = new Size(166, 18);
			this.lblDNS.Name = "lblDNS";
			this.lblDNS.ScrollBars = RichTextBoxScrollBars.None;
			this.lblDNS.Size = new Size(166, 18);
			this.lblDNS.TabIndex = 13;
			this.lblDNS.Text = "ibDNS is OFF.";
			this.pnlLocationProtocol.AccessibleName = "Connection group";
			this.pnlLocationProtocol.AccessibleRole = AccessibleRole.Grouping;
			this.pnlLocationProtocol.BackColor = Color.FromArgb(240, 240, 240);
			this.pnlLocationProtocol.BackgroundImageLayout = ImageLayout.Zoom;
			this.pnlLocationProtocol.Controls.Add(this.lnkProtocol);
			this.pnlLocationProtocol.Controls.Add(this.lnkServers);
			this.pnlLocationProtocol.Controls.Add(this.lblProtocol);
			this.pnlLocationProtocol.Controls.Add(this.lblLocation);
			this.pnlLocationProtocol.Location = new Point(5, 80);
			this.pnlLocationProtocol.MaximumSize = new Size(230, 80);
			this.pnlLocationProtocol.MinimumSize = new Size(230, 80);
			this.pnlLocationProtocol.Name = "pnlLocationProtocol";
			this.pnlLocationProtocol.Size = new Size(230, 80);
			this.pnlLocationProtocol.TabIndex = 17;
			this.lnkProtocol.AccessibleDescription = "Click to dirrect you to protocol page";
			this.lnkProtocol.AccessibleName = "Selected protocol.";
			this.lnkProtocol.AccessibleRole = AccessibleRole.Indicator;
			this.lnkProtocol.ActiveLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkProtocol.AutoSize = true;
			this.lnkProtocol.BackColor = Color.FromArgb(240, 240, 240);
			this.lnkProtocol.ForeColor = Color.FromArgb(28, 158, 27);
			this.lnkProtocol.LinkBehavior = LinkBehavior.NeverUnderline;
			this.lnkProtocol.LinkColor = Color.FromArgb(28, 158, 27);
			this.lnkProtocol.Location = new Point(59, 53);
			this.lnkProtocol.Margin = new Padding(0);
			this.lnkProtocol.MaximumSize = new Size(168, 15);
			this.lnkProtocol.MinimumSize = new Size(168, 15);
			this.lnkProtocol.Name = "lnkProtocol";
			this.lnkProtocol.Size = new Size(168, 15);
			this.lnkProtocol.TabIndex = 16;
			this.lnkProtocol.VisitedLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkServers.AccessibleDescription = "Click to dirrect you to server list page";
			this.lnkServers.AccessibleName = "Selected server.";
			this.lnkServers.AccessibleRole = AccessibleRole.Text;
			this.lnkServers.ActiveLinkColor = Color.FromArgb(28, 158, 27);
			this.lnkServers.AutoSize = true;
			this.lnkServers.BackColor = Color.FromArgb(240, 240, 240);
			this.lnkServers.ForeColor = Color.FromArgb(28, 158, 27);
			this.lnkServers.LinkBehavior = LinkBehavior.NeverUnderline;
			this.lnkServers.LinkColor = Color.FromArgb(28, 158, 27);
			this.lnkServers.Location = new Point(59, 13);
			this.lnkServers.Margin = new Padding(0);
			this.lnkServers.MaximumSize = new Size(168, 15);
			this.lnkServers.MinimumSize = new Size(168, 15);
			this.lnkServers.Name = "lnkServers";
			this.lnkServers.Size = new Size(168, 15);
			this.lnkServers.TabIndex = 15;
			this.lnkServers.VisitedLinkColor = Color.FromArgb(28, 158, 27);
			this.lblProtocol.AccessibleName = "Protocol label";
			this.lblProtocol.AccessibleRole = AccessibleRole.Text;
			this.lblProtocol.get_BackgroundStyle().set_CornerType(1);
			this.lblProtocol.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblProtocol.Location = new Point(5, 52);
			this.lblProtocol.MaximumSize = new Size(51, 16);
			this.lblProtocol.MinimumSize = new Size(51, 16);
			this.lblProtocol.Name = "lblProtocol";
			this.lblProtocol.Size = new Size(51, 16);
			this.lblProtocol.TabIndex = 13;
			this.lblProtocol.Text = "Loading...";
			this.lblLocation.AccessibleName = "Location label";
			this.lblLocation.AccessibleRole = AccessibleRole.Text;
			this.lblLocation.get_BackgroundStyle().set_CornerType(1);
			this.lblLocation.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblLocation.Location = new Point(5, 12);
			this.lblLocation.Margin = new Padding(0);
			this.lblLocation.MaximumSize = new Size(51, 16);
			this.lblLocation.MinimumSize = new Size(51, 16);
			this.lblLocation.Name = "lblLocation";
			this.lblLocation.Size = new Size(51, 16);
			this.lblLocation.TabIndex = 12;
			this.lblLocation.Text = "Loading...";
			this.btnConnect.AccessibleRole = AccessibleRole.PushButton;
			this.btnConnect.set_AntiAlias(true);
			this.btnConnect.BackColor = Color.FromArgb(38, 47, 57);
			this.btnConnect.set_ColorTable(0);
			this.btnConnect.Cursor = Cursors.Hand;
			this.btnConnect.set_FocusCuesEnabled(false);
			this.btnConnect.Font = new Font("Segoe UI", 8f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnConnect.Location = new Point(245, 80);
			this.btnConnect.MaximumSize = new Size(80, 80);
			this.btnConnect.MinimumSize = new Size(80, 80);
			this.btnConnect.Name = "btnConnect";
			this.btnConnect.Size = new Size(80, 80);
			this.btnConnect.set_Style(9);
			this.btnConnect.TabIndex = 6;
			this.btnConnect.Text = "buttonX1";
			this.btnConnect.set_TextColor(Color.White);
			this.btnExpand.AccessibleRole = AccessibleRole.PushButton;
			this.btnExpand.BackColor = Color.FromArgb(37, 47, 57);
			this.btnExpand.Dock = DockStyle.Right;
			this.btnExpand.set_FocusCuesEnabled(false);
			this.btnExpand.Font = new Font("Segoe UI", 20f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnExpand.Location = new Point(333, 0);
			this.btnExpand.Margin = new Padding(0);
			this.btnExpand.MaximumSize = new Size(17, 555);
			this.btnExpand.MinimumSize = new Size(17, 555);
			this.btnExpand.Name = "btnExpand";
			this.btnExpand.Size = new Size(17, 555);
			this.btnExpand.set_Style(9);
			this.btnExpand.set_Symbol("");
			this.btnExpand.set_SymbolSize(12f);
			this.btnExpand.TabIndex = 14;
			this.btnExpand.set_TextColor(Color.White);
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			this.BackColor = Color.Transparent;
			base.Controls.Add(this.btnExpand);
			base.Controls.Add(this.pnlDashboard);
			this.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.FromArgb(61, 61, 61);
			this.MaximumSize = new Size(350, 555);
			this.MinimumSize = new Size(350, 555);
			base.Name = "DashboardUserControl";
			base.Size = new Size(350, 555);
			base.Paint += new PaintEventHandler(this.DashboardUserControl_Paint);
			this.pnlDashboard.ResumeLayout(false);
			this.pnlDashboard.PerformLayout();
			((ISupportInitialize)this.chartSpeed).EndInit();
			((ISupportInitialize)this.pctStatus).EndInit();
			this.pnlLicensed.ResumeLayout(false);
			this.pnlPromo.ResumeLayout(false);
			this.pnlNews.ResumeLayout(false);
			this.pnlLogBG.ResumeLayout(false);
			this.pnlInfoBG.ResumeLayout(false);
			this.pnlInfoBG.PerformLayout();
			this.pnlKillSwitch.ResumeLayout(false);
			this.pnlKillSwitch.PerformLayout();
			this.pnlDNS.ResumeLayout(false);
			this.pnlDNS.PerformLayout();
			this.pnlLocationProtocol.ResumeLayout(false);
			this.pnlLocationProtocol.PerformLayout();
			base.ResumeLayout(false);
		}
	}
}
