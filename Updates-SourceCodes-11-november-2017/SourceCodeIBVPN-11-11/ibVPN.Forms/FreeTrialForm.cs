using DevComponents.DotNetBar;
using ibBLL;
using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class FreeTrialForm : Form
	{
		private string _apiUrl;

		private int _userId;

		private string _password;

		private readonly APIManager apiManager;

		private const string UPGRADE_URL = "https://www.ibvpn.com/why-upgrade/?utm_source=AIOWindows&utm_medium=whyupgrade&utm_campaign=FreeTrialUpgrade";

		private const string CONTACT_URL = "https://www.ibvpn.com/contact/?utm_source=AIOWindows&utm_medium=contact&utm_campaign=FreeTrialUpgrade";

		private System.Windows.Forms.Timer timerClose;

		private bool isFreeClosing;

		private BackgroundWorker reloadApiUserServicesWorker = new BackgroundWorker();

		private const int CP_NOCLOSE_BUTTON = 512;

		private string initialLabel = "Your free trial has expired " + Environment.NewLine + "Decisions, decisions ...";

		private IContainer components;

		public RichTextBox rchInfo;

		private PictureBox pictureBox1;

		private ButtonX btnContact;

		private ButtonX btnAlreadyUpgraded;

		private ButtonX btnUpgrade;

		private ButtonX btnClose;

		public bool CloseBreakHearts
		{
			get;
			set;
		}

		public bool IsActiveUser
		{
			get;
			set;
		}

		protected override CreateParams CreateParams
		{
			get
			{
				CreateParams expr_06 = base.CreateParams;
				expr_06.ClassStyle |= 512;
				return expr_06;
			}
		}

		public FreeTrialForm(int userId, string password, string apiUrl)
		{
			this.InitializeComponent();
			this.apiManager = new APIManager();
			this._userId = userId;
			this._password = password;
			this._apiUrl = apiUrl;
			this.timerClose = new System.Windows.Forms.Timer();
			this.timerClose.Interval = 5000;
			this.timerClose.Tick += new EventHandler(this.TimerClose_Tick);
			this.reloadApiUserServicesWorker.DoWork += new DoWorkEventHandler(this.ReloadApiUserServicesWorker_DoWork);
			this.reloadApiUserServicesWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.ReloadApiUserServicesWorker_RunWorkerCompleted);
		}

		private void TimerClose_Tick(object sender, EventArgs e)
		{
			this.isFreeClosing = true;
			base.Close();
		}

		private void ReloadApiUserServicesWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
		{
			if (this.IsActiveUser)
			{
				this.SetLabelText("Your account is active. This window" + Environment.NewLine + "will close in 5 seconds ...", true);
				this.timerClose.Start();
				return;
			}
			this.SetLabelText(string.Empty + "Your account is not active.", true);
		}

		private void ReloadApiUserServicesWorker_DoWork(object sender, DoWorkEventArgs e)
		{
			this.SetLabelText("Checking your account.Please wait ...", false);
			Thread.Sleep(1000);
			this.TestUserPackages();
		}

		private void SetLabelText(string text, bool enable)
		{
			if (base.InvokeRequired)
			{
				base.Invoke(new MethodInvoker(delegate
				{
					this.rchInfo.Text = string.Empty;
					this.rchInfo.Text = this.initialLabel + Environment.NewLine + Environment.NewLine + text;
					this.rchInfo.SelectionStart = 0;
					this.rchInfo.SelectionLength = 28;
					this.rchInfo.SelectionFont = new Font("Segoe UI", 11f, FontStyle.Bold);
					this.btnUpgrade.Enabled = enable;
					this.btnAlreadyUpgraded.Enabled = enable;
					this.btnContact.Enabled = enable;
					this.btnClose.Enabled = enable;
				}));
				return;
			}
			this.rchInfo.Text = string.Empty;
			this.rchInfo.Text = this.initialLabel + Environment.NewLine + Environment.NewLine + text;
			this.rchInfo.SelectionStart = 0;
			this.rchInfo.SelectionLength = 28;
			this.rchInfo.SelectionFont = new Font("Segoe UI", 11f, FontStyle.Bold);
			this.btnUpgrade.Enabled = enable;
			this.btnAlreadyUpgraded.Enabled = enable;
			this.btnContact.Enabled = enable;
			this.btnClose.Enabled = enable;
		}

		private void FreeTrialForm_Load(object sender, EventArgs e)
		{
			this.SetInitiallabel();
		}

		private void SetInitiallabel()
		{
			this.rchInfo.Text = this.initialLabel;
			this.rchInfo.SelectionStart = 0;
			this.rchInfo.SelectionLength = 28;
			this.rchInfo.SelectionFont = new Font("Segoe UI", 11f, FontStyle.Bold);
		}

		private void buttonX1_Click(object sender, EventArgs e)
		{
			this.CloseBreakHearts = true;
			base.Close();
		}

		private void btnUpgrade_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://www.ibvpn.com/why-upgrade/?utm_source=AIOWindows&utm_medium=whyupgrade&utm_campaign=FreeTrialUpgrade"));
		}

		private void btnContact_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://www.ibvpn.com/contact/?utm_source=AIOWindows&utm_medium=contact&utm_campaign=FreeTrialUpgrade"));
		}

		private void btnAlreadyUpgraded_Click(object sender, EventArgs e)
		{
			if (!this.reloadApiUserServicesWorker.IsBusy)
			{
				this.reloadApiUserServicesWorker.RunWorkerAsync();
			}
		}

		private void TestUserPackages()
		{
			this.IsActiveUser = false;
			ArrayList freeTrialParameters = this.apiManager.GetFreeTrialParameters(this._userId, this._password, this._apiUrl, 0);
			if (freeTrialParameters != null && freeTrialParameters.Count > 0)
			{
				while (freeTrialParameters.Count != 3)
				{
					if (freeTrialParameters.Count > 0)
					{
						int num = Convert.ToInt32(freeTrialParameters[0]);
						freeTrialParameters = this.apiManager.GetFreeTrialParameters(this._userId, this._password, this._apiUrl, num);
					}
				}
			}
			if (freeTrialParameters != null && freeTrialParameters.Count > 0)
			{
				int num2 = (int)freeTrialParameters[0];
				bool flag = (bool)freeTrialParameters[1];
				int num3 = Convert.ToInt32((string)freeTrialParameters[2]);
				if (num2 == 3)
				{
					this.IsActiveUser = false;
					return;
				}
				if (num2 == 0)
				{
					if (flag && num3 <= 0)
					{
						this.IsActiveUser = false;
						return;
					}
					this.IsActiveUser = true;
					return;
				}
			}
			else
			{
				this.IsActiveUser = false;
			}
		}

		private void FreeTrialForm_FormClosing(object sender, FormClosingEventArgs e)
		{
			if (!this.CloseBreakHearts && !this.isFreeClosing)
			{
				e.Cancel = true;
			}
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(FreeTrialForm));
			this.rchInfo = new RichTextBox();
			this.pictureBox1 = new PictureBox();
			this.btnContact = new ButtonX();
			this.btnAlreadyUpgraded = new ButtonX();
			this.btnUpgrade = new ButtonX();
			this.btnClose = new ButtonX();
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.rchInfo.BackColor = Color.FromArgb(240, 240, 240);
			this.rchInfo.BorderStyle = BorderStyle.None;
			this.rchInfo.Enabled = false;
			this.rchInfo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.rchInfo.ForeColor = Color.FromArgb(61, 61, 61);
			this.rchInfo.Location = new Point(118, 8);
			this.rchInfo.Margin = new Padding(0);
			this.rchInfo.Name = "rchInfo";
			this.rchInfo.ReadOnly = true;
			this.rchInfo.ScrollBars = RichTextBoxScrollBars.None;
			this.rchInfo.Size = new Size(224, 84);
			this.rchInfo.TabIndex = 42;
			this.rchInfo.Text = "Your free trial has expired /n Decisions";
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.InitialImage = (Image)componentResourceManager.GetObject("pictureBox1.InitialImage");
			this.pictureBox1.Location = new Point(26, 8);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(90, 90);
			this.pictureBox1.TabIndex = 41;
			this.pictureBox1.TabStop = false;
			this.btnContact.AccessibleRole = AccessibleRole.PushButton;
			this.btnContact.BackColor = Color.FromArgb(38, 47, 57);
			this.btnContact.set_ColorTable(0);
			this.btnContact.Cursor = Cursors.Hand;
			this.btnContact.set_FocusCuesEnabled(false);
			this.btnContact.Location = new Point(26, 201);
			this.btnContact.Name = "btnContact";
			this.btnContact.Size = new Size(308, 29);
			this.btnContact.set_Style(9);
			this.btnContact.TabIndex = 40;
			this.btnContact.Text = "Still confused? Talk to us";
			this.btnContact.set_TextColor(Color.White);
			this.btnContact.Click += new EventHandler(this.btnContact_Click);
			this.btnAlreadyUpgraded.AccessibleRole = AccessibleRole.PushButton;
			this.btnAlreadyUpgraded.BackColor = Color.FromArgb(38, 47, 57);
			this.btnAlreadyUpgraded.set_ColorTable(0);
			this.btnAlreadyUpgraded.Cursor = Cursors.Hand;
			this.btnAlreadyUpgraded.set_FocusCuesEnabled(false);
			this.btnAlreadyUpgraded.Location = new Point(26, 155);
			this.btnAlreadyUpgraded.Name = "btnAlreadyUpgraded";
			this.btnAlreadyUpgraded.Size = new Size(308, 29);
			this.btnAlreadyUpgraded.set_Style(9);
			this.btnAlreadyUpgraded.TabIndex = 39;
			this.btnAlreadyUpgraded.Text = "Already upgraded but account is not yet active?";
			this.btnAlreadyUpgraded.set_TextColor(Color.White);
			this.btnAlreadyUpgraded.Click += new EventHandler(this.btnAlreadyUpgraded_Click);
			this.btnUpgrade.AccessibleRole = AccessibleRole.PushButton;
			this.btnUpgrade.BackColor = Color.FromArgb(38, 47, 57);
			this.btnUpgrade.set_ColorTable(0);
			this.btnUpgrade.Cursor = Cursors.Hand;
			this.btnUpgrade.set_FocusCuesEnabled(false);
			this.btnUpgrade.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnUpgrade.Location = new Point(26, 110);
			this.btnUpgrade.Name = "btnUpgrade";
			this.btnUpgrade.Size = new Size(308, 29);
			this.btnUpgrade.set_Style(9);
			this.btnUpgrade.TabIndex = 38;
			this.btnUpgrade.Text = "Upgrade for just $3.45 / month";
			this.btnUpgrade.set_TextColor(Color.White);
			this.btnUpgrade.Click += new EventHandler(this.btnUpgrade_Click);
			this.btnClose.AccessibleRole = AccessibleRole.PushButton;
			this.btnClose.BackColor = Color.FromArgb(38, 47, 57);
			this.btnClose.set_ColorTable(0);
			this.btnClose.Cursor = Cursors.Hand;
			this.btnClose.set_FocusCuesEnabled(false);
			this.btnClose.Location = new Point(26, 248);
			this.btnClose.Name = "btnClose";
			this.btnClose.Size = new Size(308, 29);
			this.btnClose.set_Style(9);
			this.btnClose.TabIndex = 43;
			this.btnClose.Text = "Close the app and break our heart";
			this.btnClose.set_TextColor(Color.White);
			this.btnClose.Click += new EventHandler(this.buttonX1_Click);
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(360, 307);
			base.Controls.Add(this.btnClose);
			base.Controls.Add(this.rchInfo);
			base.Controls.Add(this.pictureBox1);
			base.Controls.Add(this.btnContact);
			base.Controls.Add(this.btnAlreadyUpgraded);
			base.Controls.Add(this.btnUpgrade);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			this.MaximumSize = new Size(376, 346);
			base.MinimizeBox = false;
			this.MinimumSize = new Size(376, 346);
			base.Name = "FreeTrialForm";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "You don't have an active service!";
			base.FormClosing += new FormClosingEventHandler(this.FreeTrialForm_FormClosing);
			base.Load += new EventHandler(this.FreeTrialForm_Load);
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
