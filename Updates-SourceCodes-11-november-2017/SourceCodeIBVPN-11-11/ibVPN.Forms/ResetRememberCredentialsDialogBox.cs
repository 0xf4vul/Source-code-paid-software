using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Controls;
using ibVPN.Helpers;
using ibVPN.Properties;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class ResetRememberCredentialsDialogBox : OfficeForm
	{
		private const string NOTIFICATION_MESSAGE_BOX = "ibVPN client notification/info message";

		private GeneralHelper helper = new GeneralHelper();

		private IContainer components;

		private ButtonX btnNo;

		private ButtonX btnYes;

		public LabelX lblinfo;

		private CheckBox chkRememberMe;

		private Panel pnlCredentials;

		private Panel pnlContainerLogin;

		private LabelX lblEmail;

		private Line line1Separator;

		public TextBoxX txtPassword;

		public TextBoxX txtEmail;

		private LabelX lblPassword;

		private LabelX lblMessage;

		public bool ResetCredentials
		{
			get;
			set;
		}

		public ResetRememberCredentialsDialogBox()
		{
			this.InitializeComponent();
		}

		private void ResetRememberCredentialsDialogBox_Load(object sender, EventArgs e)
		{
			this.lblinfo.Text = "Please re-enter the Username and Password to confirm. Both will be saved and the Remember Me feature will automatically be enabled, in order to make the auto-login. If you are on a public computer, this is not safe. Are you sure you want to enable it?";
		}

		private void btnYes_Click(object sender, EventArgs e)
		{
			if (this.EmailFormatValidating())
			{
				this.ResetCredentials = true;
				base.Close();
				return;
			}
			this.txtEmail.Focus();
		}

		private void btnNo_Click(object sender, EventArgs e)
		{
			this.ResetCredentials = false;
			base.Close();
		}

		private bool EmailFormatValidating()
		{
			if (!new RegexUtilities().IsValidEmail(this.txtEmail.Text))
			{
				this.helper.MessageBoxShow("Email address format is wrong!", "ibVPN client notification/info message", 1, true, true);
				return false;
			}
			return true;
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(ResetRememberCredentialsDialogBox));
			this.btnNo = new ButtonX();
			this.btnYes = new ButtonX();
			this.lblinfo = new LabelX();
			this.chkRememberMe = new CheckBox();
			this.pnlCredentials = new Panel();
			this.pnlContainerLogin = new Panel();
			this.lblEmail = new LabelX();
			this.line1Separator = new Line();
			this.txtPassword = new TextBoxX();
			this.txtEmail = new TextBoxX();
			this.lblPassword = new LabelX();
			this.lblMessage = new LabelX();
			this.pnlCredentials.SuspendLayout();
			this.pnlContainerLogin.SuspendLayout();
			base.SuspendLayout();
			this.btnNo.AccessibleRole = AccessibleRole.PushButton;
			this.btnNo.BackColor = Color.FromArgb(38, 47, 57);
			this.btnNo.set_ColorTable(0);
			this.btnNo.Cursor = Cursors.Hand;
			this.btnNo.set_FocusCuesEnabled(false);
			this.btnNo.Location = new Point(248, 388);
			this.btnNo.Name = "btnNo";
			this.btnNo.Size = new Size(85, 25);
			this.btnNo.TabIndex = 20;
			this.btnNo.Text = "No";
			this.btnNo.set_TextColor(Color.White);
			this.btnNo.Click += new EventHandler(this.btnNo_Click);
			this.btnYes.AccessibleRole = AccessibleRole.PushButton;
			this.btnYes.BackColor = Color.FromArgb(28, 158, 27);
			this.btnYes.set_ColorTable(0);
			this.btnYes.Cursor = Cursors.Hand;
			this.btnYes.set_FocusCuesEnabled(false);
			this.btnYes.Location = new Point(145, 388);
			this.btnYes.Name = "btnYes";
			this.btnYes.Size = new Size(85, 25);
			this.btnYes.TabIndex = 19;
			this.btnYes.Text = "Yes";
			this.btnYes.set_TextColor(Color.White);
			this.btnYes.Click += new EventHandler(this.btnYes_Click);
			this.lblinfo.BackColor = Color.Transparent;
			this.lblinfo.get_BackgroundStyle().set_CornerType(1);
			this.lblinfo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblinfo.ForeColor = Color.FromArgb(38, 47, 57);
			this.lblinfo.Location = new Point(14, 12);
			this.lblinfo.Name = "lblinfo";
			this.lblinfo.Size = new Size(319, 113);
			this.lblinfo.TabIndex = 21;
			this.lblinfo.Text = "Text";
			this.lblinfo.set_TextLineAlignment(StringAlignment.Near);
			this.lblinfo.set_WordWrap(true);
			this.chkRememberMe.AutoSize = true;
			this.chkRememberMe.BackColor = Color.Transparent;
			this.chkRememberMe.Checked = true;
			this.chkRememberMe.CheckState = CheckState.Checked;
			this.chkRememberMe.Cursor = Cursors.Hand;
			this.chkRememberMe.Enabled = false;
			this.chkRememberMe.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.chkRememberMe.ForeColor = Color.FromArgb(38, 47, 57);
			this.chkRememberMe.Location = new Point(108, 325);
			this.chkRememberMe.Margin = new Padding(0);
			this.chkRememberMe.Name = "chkRememberMe";
			this.chkRememberMe.Size = new Size(118, 23);
			this.chkRememberMe.TabIndex = 23;
			this.chkRememberMe.Text = "Remember Me";
			this.chkRememberMe.UseVisualStyleBackColor = false;
			this.pnlCredentials.BorderStyle = BorderStyle.FixedSingle;
			this.pnlCredentials.Controls.Add(this.pnlContainerLogin);
			this.pnlCredentials.Controls.Add(this.lblMessage);
			this.pnlCredentials.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.pnlCredentials.Location = new Point(14, 171);
			this.pnlCredentials.Margin = new Padding(0);
			this.pnlCredentials.Name = "pnlCredentials";
			this.pnlCredentials.Size = new Size(320, 140);
			this.pnlCredentials.TabIndex = 22;
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
			this.lblEmail.get_BackgroundStyle().set_CornerType(1);
			this.lblEmail.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblEmail.Location = new Point(10, 12);
			this.lblEmail.Margin = new Padding(3, 4, 3, 4);
			this.lblEmail.Name = "lblEmail";
			this.lblEmail.Size = new Size(110, 25);
			this.lblEmail.TabIndex = 3;
			this.lblEmail.Text = "Email address:";
			this.line1Separator.BackColor = Color.Transparent;
			this.line1Separator.ForeColor = Color.FromArgb(238, 238, 238);
			this.line1Separator.Location = new Point(0, 49);
			this.line1Separator.Margin = new Padding(0);
			this.line1Separator.Name = "line1Separator";
			this.line1Separator.Size = new Size(320, 2);
			this.line1Separator.set_StartLineCapSize(new Size(0, 0));
			this.line1Separator.TabIndex = 5;
			this.line1Separator.set_Thickness(2);
			this.txtPassword.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.txtPassword.BackColor = Color.White;
			this.txtPassword.get_Border().set_Class("TextBoxBorder");
			this.txtPassword.get_Border().set_CornerType(1);
			this.txtPassword.set_DisabledBackColor(Color.White);
			this.txtPassword.ForeColor = Color.Black;
			this.txtPassword.Location = new Point(120, 60);
			this.txtPassword.Margin = new Padding(0);
			this.txtPassword.Name = "txtPassword";
			this.txtPassword.PasswordChar = '*';
			this.txtPassword.set_PreventEnterBeep(true);
			this.txtPassword.Size = new Size(185, 29);
			this.txtPassword.TabIndex = 1;
			this.txtEmail.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.txtEmail.BackColor = Color.White;
			this.txtEmail.get_Border().set_Class("TextBoxBorder");
			this.txtEmail.get_Border().set_CornerType(1);
			this.txtEmail.set_DisabledBackColor(Color.White);
			this.txtEmail.ForeColor = Color.Black;
			this.txtEmail.Location = new Point(120, 11);
			this.txtEmail.Margin = new Padding(0);
			this.txtEmail.Name = "txtEmail";
			this.txtEmail.set_PreventEnterBeep(true);
			this.txtEmail.Size = new Size(185, 29);
			this.txtEmail.TabIndex = 0;
			this.lblPassword.get_BackgroundStyle().set_CornerType(1);
			this.lblPassword.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblPassword.Location = new Point(10, 61);
			this.lblPassword.Margin = new Padding(3, 4, 3, 4);
			this.lblPassword.Name = "lblPassword";
			this.lblPassword.Size = new Size(110, 25);
			this.lblPassword.TabIndex = 4;
			this.lblPassword.Text = "Password:";
			this.lblMessage.get_BackgroundStyle().set_CornerType(1);
			this.lblMessage.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblMessage.Location = new Point(10, 4);
			this.lblMessage.Margin = new Padding(0);
			this.lblMessage.Name = "lblMessage";
			this.lblMessage.set_SingleLineColor(Color.Empty);
			this.lblMessage.Size = new Size(304, 30);
			this.lblMessage.TabIndex = 5;
			this.lblMessage.Text = "Enter account credentials, to remember:";
			base.AcceptButton = this.btnYes;
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			this.BackColor = Color.FromArgb(247, 247, 247);
			this.BackgroundImage = Resources.Login_map;
			base.set_BottomLeftCornerSize(2);
			base.set_BottomRightCornerSize(2);
			base.ClientSize = new Size(349, 425);
			base.Controls.Add(this.chkRememberMe);
			base.Controls.Add(this.pnlCredentials);
			base.Controls.Add(this.lblinfo);
			base.Controls.Add(this.btnNo);
			base.Controls.Add(this.btnYes);
			this.DoubleBuffered = true;
			this.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.FromArgb(38, 47, 57);
			base.FormBorderStyle = FormBorderStyle.FixedSingle;
			base.set_Icon((Icon)componentResourceManager.GetObject("$this.Icon"));
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "ResetRememberCredentialsDialogBox";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "Reset Credentials Form";
			base.set_TopLeftCornerSize(2);
			base.TopMost = true;
			base.set_TopRightCornerSize(2);
			base.Load += new EventHandler(this.ResetRememberCredentialsDialogBox_Load);
			this.pnlCredentials.ResumeLayout(false);
			this.pnlContainerLogin.ResumeLayout(false);
			base.ResumeLayout(false);
			base.PerformLayout();
		}
	}
}
