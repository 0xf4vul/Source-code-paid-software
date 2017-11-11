using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Controls;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class CustomDialogBox : OfficeForm
	{
		private IContainer components;

		private ButtonX btnYes;

		private ButtonX btnNo;

		public LabelX lblMessage;

		private PictureBox pictureBox1;

		public LabelX lblAsk;

		public CheckBoxX chkChangeServer;

		public bool ChangeServer
		{
			get;
			set;
		}

		public bool AlwaysAskServerChange
		{
			get;
			set;
		}

		public CustomDialogBox()
		{
			this.InitializeComponent();
		}

		private void CustomDialogBox_Load(object sender, EventArgs e)
		{
			this.btnNo.Select();
		}

		private void btnNo_Click(object sender, EventArgs e)
		{
			this.AlwaysAskServerChange = this.chkChangeServer.get_Checked();
			this.ChangeServer = false;
			base.Close();
		}

		private void btnYes_Click(object sender, EventArgs e)
		{
			this.AlwaysAskServerChange = this.chkChangeServer.get_Checked();
			this.ChangeServer = true;
			base.Close();
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(CustomDialogBox));
			this.btnYes = new ButtonX();
			this.btnNo = new ButtonX();
			this.lblMessage = new LabelX();
			this.pictureBox1 = new PictureBox();
			this.lblAsk = new LabelX();
			this.chkChangeServer = new CheckBoxX();
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.btnYes.AccessibleRole = AccessibleRole.PushButton;
			this.btnYes.BackColor = Color.FromArgb(27, 158, 28);
			this.btnYes.set_ColorTable(0);
			this.btnYes.Cursor = Cursors.Hand;
			this.btnYes.set_FocusCuesEnabled(false);
			this.btnYes.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnYes.Location = new Point(134, 99);
			this.btnYes.Name = "btnYes";
			this.btnYes.Size = new Size(99, 29);
			this.btnYes.set_Style(9);
			this.btnYes.TabIndex = 17;
			this.btnYes.Text = "Yes";
			this.btnYes.set_TextColor(Color.White);
			this.btnYes.Click += new EventHandler(this.btnYes_Click);
			this.btnNo.AccessibleRole = AccessibleRole.PushButton;
			this.btnNo.BackColor = Color.FromArgb(38, 47, 57);
			this.btnNo.set_ColorTable(0);
			this.btnNo.Cursor = Cursors.Hand;
			this.btnNo.set_FocusCuesEnabled(false);
			this.btnNo.Location = new Point(241, 99);
			this.btnNo.Name = "btnNo";
			this.btnNo.Size = new Size(99, 29);
			this.btnNo.set_Style(9);
			this.btnNo.TabIndex = 18;
			this.btnNo.Text = "No";
			this.btnNo.set_TextColor(Color.White);
			this.btnNo.Click += new EventHandler(this.btnNo_Click);
			this.lblMessage.BackColor = Color.Transparent;
			this.lblMessage.get_BackgroundStyle().set_CornerType(1);
			this.lblMessage.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblMessage.ForeColor = Color.FromArgb(61, 61, 61);
			this.lblMessage.Location = new Point(122, 19);
			this.lblMessage.Name = "lblMessage";
			this.lblMessage.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.lblMessage.Size = new Size(218, 23);
			this.lblMessage.set_Style(9);
			this.lblMessage.TabIndex = 19;
			this.lblMessage.Text = "Are you sure you want to change server?";
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.InitialImage = (Image)componentResourceManager.GetObject("pictureBox1.InitialImage");
			this.pictureBox1.Location = new Point(19, 19);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(80, 80);
			this.pictureBox1.TabIndex = 20;
			this.pictureBox1.TabStop = false;
			this.lblAsk.BackColor = Color.Transparent;
			this.lblAsk.get_BackgroundStyle().set_CornerType(1);
			this.lblAsk.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblAsk.ForeColor = Color.FromArgb(61, 61, 61);
			this.lblAsk.Location = new Point(202, 55);
			this.lblAsk.Name = "lblAsk";
			this.lblAsk.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.lblAsk.Size = new Size(85, 23);
			this.lblAsk.set_Style(9);
			this.lblAsk.TabIndex = 21;
			this.lblAsk.Text = "Don't ask again";
			this.chkChangeServer.BackColor = Color.Transparent;
			this.chkChangeServer.get_BackgroundStyle().set_CornerType(1);
			this.chkChangeServer.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkChangeServer.CheckBoxImageChecked"));
			this.chkChangeServer.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkChangeServer.CheckBoxImageUnChecked"));
			this.chkChangeServer.set_CheckSignSize(new Size(20, 20));
			this.chkChangeServer.Cursor = Cursors.Hand;
			this.chkChangeServer.set_FocusCuesEnabled(false);
			this.chkChangeServer.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.chkChangeServer.Location = new Point(176, 55);
			this.chkChangeServer.Name = "chkChangeServer";
			this.chkChangeServer.Size = new Size(25, 25);
			this.chkChangeServer.TabIndex = 22;
			this.chkChangeServer.set_TextColor(Color.FromArgb(61, 61, 61));
			base.AcceptButton = this.btnYes;
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			this.BackColor = Color.FromArgb(247, 247, 247);
			base.set_BottomLeftCornerSize(2);
			base.set_BottomRightCornerSize(2);
			base.ClientSize = new Size(355, 139);
			base.Controls.Add(this.chkChangeServer);
			base.Controls.Add(this.lblAsk);
			base.Controls.Add(this.pictureBox1);
			base.Controls.Add(this.lblMessage);
			base.Controls.Add(this.btnNo);
			base.Controls.Add(this.btnYes);
			this.DoubleBuffered = true;
			this.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.FromArgb(61, 61, 61);
			base.FormBorderStyle = FormBorderStyle.FixedSingle;
			base.set_Icon((Icon)componentResourceManager.GetObject("$this.Icon"));
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "CustomDialogBox";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "Server Change Notification";
			base.set_TopLeftCornerSize(2);
			base.TopMost = true;
			base.set_TopRightCornerSize(2);
			base.Load += new EventHandler(this.CustomDialogBox_Load);
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
