using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Controls;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class CustomConfirmationKswOnDialogBox : OfficeForm
	{
		private IContainer components;

		public LabelX lblAsk;

		private PictureBox pictureBox1;

		public LabelX lblMessage;

		private ButtonX btnNo;

		private ButtonX btnYes;

		public CheckBoxX chkKswOn;

		public LabelX labelX1;

		public LabelX labelX2;

		public bool AskKswOn
		{
			get;
			set;
		}

		public bool AlwaysAskKswOn
		{
			get;
			set;
		}

		public CustomConfirmationKswOnDialogBox()
		{
			this.InitializeComponent();
		}

		private void CustomConfirmationKswOnDialogBox_Load(object sender, EventArgs e)
		{
			this.btnNo.Select();
		}

		private void btnYes_Click(object sender, EventArgs e)
		{
			this.AlwaysAskKswOn = this.chkKswOn.get_Checked();
			this.AskKswOn = true;
			base.Close();
		}

		private void btnNo_Click(object sender, EventArgs e)
		{
			this.AlwaysAskKswOn = this.chkKswOn.get_Checked();
			this.AskKswOn = false;
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(CustomConfirmationKswOnDialogBox));
			this.lblAsk = new LabelX();
			this.pictureBox1 = new PictureBox();
			this.lblMessage = new LabelX();
			this.btnNo = new ButtonX();
			this.btnYes = new ButtonX();
			this.chkKswOn = new CheckBoxX();
			this.labelX1 = new LabelX();
			this.labelX2 = new LabelX();
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.lblAsk.BackColor = Color.Transparent;
			this.lblAsk.get_BackgroundStyle().set_CornerType(1);
			this.lblAsk.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblAsk.ForeColor = Color.FromArgb(61, 61, 61);
			this.lblAsk.Location = new Point(213, 125);
			this.lblAsk.Name = "lblAsk";
			this.lblAsk.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.lblAsk.Size = new Size(85, 23);
			this.lblAsk.set_Style(9);
			this.lblAsk.TabIndex = 26;
			this.lblAsk.Text = "Don't ask again";
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.InitialImage = (Image)componentResourceManager.GetObject("pictureBox1.InitialImage");
			this.pictureBox1.Location = new Point(12, 12);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(80, 80);
			this.pictureBox1.TabIndex = 25;
			this.pictureBox1.TabStop = false;
			this.lblMessage.BackColor = Color.Transparent;
			this.lblMessage.get_BackgroundStyle().set_CornerType(1);
			this.lblMessage.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblMessage.ForeColor = Color.FromArgb(61, 61, 61);
			this.lblMessage.Location = new Point(117, 12);
			this.lblMessage.Name = "lblMessage";
			this.lblMessage.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.lblMessage.Size = new Size(352, 23);
			this.lblMessage.set_Style(9);
			this.lblMessage.TabIndex = 24;
			this.lblMessage.Text = "The Internet KillSwitch is ON and you have chosen to disconnect.";
			this.btnNo.AccessibleRole = AccessibleRole.PushButton;
			this.btnNo.BackColor = Color.FromArgb(38, 47, 57);
			this.btnNo.set_ColorTable(0);
			this.btnNo.Cursor = Cursors.Hand;
			this.btnNo.set_FocusCuesEnabled(false);
			this.btnNo.Location = new Point(250, 161);
			this.btnNo.Name = "btnNo";
			this.btnNo.Size = new Size(99, 29);
			this.btnNo.set_Style(9);
			this.btnNo.TabIndex = 23;
			this.btnNo.Text = "No";
			this.btnNo.set_TextColor(Color.White);
			this.btnNo.Click += new EventHandler(this.btnNo_Click);
			this.btnYes.AccessibleRole = AccessibleRole.PushButton;
			this.btnYes.BackColor = Color.FromArgb(27, 158, 28);
			this.btnYes.set_ColorTable(0);
			this.btnYes.Cursor = Cursors.Hand;
			this.btnYes.set_FocusCuesEnabled(false);
			this.btnYes.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnYes.Location = new Point(143, 161);
			this.btnYes.Name = "btnYes";
			this.btnYes.Size = new Size(99, 29);
			this.btnYes.set_Style(9);
			this.btnYes.TabIndex = 22;
			this.btnYes.Text = "Yes";
			this.btnYes.set_TextColor(Color.White);
			this.btnYes.Click += new EventHandler(this.btnYes_Click);
			this.chkKswOn.BackColor = Color.Transparent;
			this.chkKswOn.get_BackgroundStyle().set_CornerType(1);
			this.chkKswOn.set_CheckBoxImageChecked((Image)componentResourceManager.GetObject("chkKswOn.CheckBoxImageChecked"));
			this.chkKswOn.set_CheckBoxImageUnChecked((Image)componentResourceManager.GetObject("chkKswOn.CheckBoxImageUnChecked"));
			this.chkKswOn.set_CheckSignSize(new Size(20, 20));
			this.chkKswOn.Cursor = Cursors.Hand;
			this.chkKswOn.set_FocusCuesEnabled(false);
			this.chkKswOn.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.chkKswOn.Location = new Point(187, 125);
			this.chkKswOn.Name = "chkKswOn";
			this.chkKswOn.Size = new Size(25, 25);
			this.chkKswOn.TabIndex = 27;
			this.chkKswOn.set_TextColor(Color.FromArgb(61, 61, 61));
			this.labelX1.BackColor = Color.Transparent;
			this.labelX1.get_BackgroundStyle().set_CornerType(1);
			this.labelX1.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.labelX1.ForeColor = Color.FromArgb(61, 61, 61);
			this.labelX1.Location = new Point(117, 41);
			this.labelX1.Name = "labelX1";
			this.labelX1.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.labelX1.Size = new Size(378, 23);
			this.labelX1.set_Style(9);
			this.labelX1.TabIndex = 28;
			this.labelX1.Text = "The Internet will be restored and your current location will be visible.";
			this.labelX2.BackColor = Color.Transparent;
			this.labelX2.get_BackgroundStyle().set_CornerType(1);
			this.labelX2.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.labelX2.ForeColor = Color.FromArgb(61, 61, 61);
			this.labelX2.Location = new Point(117, 70);
			this.labelX2.Name = "labelX2";
			this.labelX2.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.labelX2.Size = new Size(352, 23);
			this.labelX2.set_Style(9);
			this.labelX2.TabIndex = 29;
			this.labelX2.Text = "Are you sure you want to disconnect?";
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.FromArgb(247, 247, 247);
			base.ClientSize = new Size(492, 206);
			base.Controls.Add(this.labelX2);
			base.Controls.Add(this.labelX1);
			base.Controls.Add(this.chkKswOn);
			base.Controls.Add(this.lblAsk);
			base.Controls.Add(this.pictureBox1);
			base.Controls.Add(this.lblMessage);
			base.Controls.Add(this.btnNo);
			base.Controls.Add(this.btnYes);
			this.DoubleBuffered = true;
			base.FormBorderStyle = FormBorderStyle.FixedSingle;
			base.set_Icon((Icon)componentResourceManager.GetObject("$this.Icon"));
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "CustomConfirmationKswOnDialogBox";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "Confirmation Restore Internet";
			base.Load += new EventHandler(this.CustomConfirmationKswOnDialogBox_Load);
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
