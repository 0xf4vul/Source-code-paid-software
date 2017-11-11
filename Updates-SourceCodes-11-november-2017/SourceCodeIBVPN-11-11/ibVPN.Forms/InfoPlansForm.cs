using DevComponents.DotNetBar;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class InfoPlansForm : Form
	{
		private const string PLANS_LINK = "http://bit.ly/win-app-free-users";

		private IContainer components;

		public LabelX lblinfo;

		private ButtonX btnSeePlans;

		private ButtonX btnCancel;

		private PictureBox pictureBox1;

		public InfoPlansForm()
		{
			this.InitializeComponent();
		}

		private void btnCancel_Click(object sender, EventArgs e)
		{
			base.Close();
		}

		private void btnSeePlans_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("http://bit.ly/win-app-free-users"));
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(InfoPlansForm));
			this.lblinfo = new LabelX();
			this.btnSeePlans = new ButtonX();
			this.btnCancel = new ButtonX();
			this.pictureBox1 = new PictureBox();
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.lblinfo.BackColor = Color.Transparent;
			this.lblinfo.get_BackgroundStyle().set_CornerType(1);
			this.lblinfo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblinfo.ForeColor = Color.FromArgb(61, 61, 61);
			this.lblinfo.Location = new Point(110, 23);
			this.lblinfo.Name = "lblinfo";
			this.lblinfo.set_SingleLineColor(Color.FromArgb(38, 47, 57));
			this.lblinfo.Size = new Size(228, 61);
			this.lblinfo.TabIndex = 22;
			this.lblinfo.Text = "Only PPTP protocol is available in the Free Unlimited package. Upgrade to a Premium Plan for enhanced security.";
			this.lblinfo.set_TextLineAlignment(StringAlignment.Near);
			this.lblinfo.set_WordWrap(true);
			this.btnSeePlans.AccessibleRole = AccessibleRole.PushButton;
			this.btnSeePlans.BackColor = Color.FromArgb(28, 158, 27);
			this.btnSeePlans.set_ColorTable(0);
			this.btnSeePlans.Cursor = Cursors.Hand;
			this.btnSeePlans.set_FocusCuesEnabled(false);
			this.btnSeePlans.Location = new Point(110, 103);
			this.btnSeePlans.Name = "btnSeePlans";
			this.btnSeePlans.Size = new Size(85, 25);
			this.btnSeePlans.TabIndex = 24;
			this.btnSeePlans.Text = "See Plans";
			this.btnSeePlans.set_TextColor(Color.White);
			this.btnSeePlans.Click += new EventHandler(this.btnSeePlans_Click);
			this.btnCancel.AccessibleRole = AccessibleRole.PushButton;
			this.btnCancel.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCancel.set_ColorTable(0);
			this.btnCancel.Cursor = Cursors.Hand;
			this.btnCancel.set_FocusCuesEnabled(false);
			this.btnCancel.Location = new Point(210, 103);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new Size(85, 25);
			this.btnCancel.TabIndex = 23;
			this.btnCancel.Text = "Cancel";
			this.btnCancel.set_TextColor(Color.White);
			this.btnCancel.Click += new EventHandler(this.btnCancel_Click);
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.Location = new Point(12, 23);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(75, 75);
			this.pictureBox1.TabIndex = 25;
			this.pictureBox1.TabStop = false;
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			base.ClientSize = new Size(350, 140);
			base.Controls.Add(this.pictureBox1);
			base.Controls.Add(this.btnSeePlans);
			base.Controls.Add(this.btnCancel);
			base.Controls.Add(this.lblinfo);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "InfoPlansForm";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "Info Plans Notification";
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
