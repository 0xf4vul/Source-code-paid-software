using DevComponents.DotNetBar;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class CustomInfoMessageBox : Form
	{
		private const string BUY_URL = "https://www.ibvpn.com/plans-vpn-smartdns-proxy";

		private const string ORDER_STATUS_URL = "https://www.ibvpn.com/billing/clientarea.php?action=products";

		private const string UPGRADE_URL = "https://www.ibvpn.com/why-upgrade/?utm_source=AIOWindows&utm_medium=loginformwhyupgrade&utm_campaign=FreeTrialUpgrade";

		private IContainer components;

		private ButtonX btnOrderStatus;

		private ButtonX btnBuy;

		private ButtonX btnUpgrade;

		private PictureBox pictureBox1;

		public RichTextBox rchInfo;

		public CustomInfoMessageBox()
		{
			this.InitializeComponent();
		}

		private void btnBuy_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://www.ibvpn.com/plans-vpn-smartdns-proxy"));
			base.Close();
		}

		private void btnOrderStatus_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://www.ibvpn.com/billing/clientarea.php?action=products"));
			base.Close();
		}

		private void btnUpgrade_Click(object sender, EventArgs e)
		{
			Process.Start(new ProcessStartInfo("https://www.ibvpn.com/why-upgrade/?utm_source=AIOWindows&utm_medium=loginformwhyupgrade&utm_campaign=FreeTrialUpgrade"));
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(CustomInfoMessageBox));
			this.btnOrderStatus = new ButtonX();
			this.btnBuy = new ButtonX();
			this.btnUpgrade = new ButtonX();
			this.pictureBox1 = new PictureBox();
			this.rchInfo = new RichTextBox();
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.btnOrderStatus.AccessibleRole = AccessibleRole.PushButton;
			this.btnOrderStatus.BackColor = Color.FromArgb(38, 47, 57);
			this.btnOrderStatus.set_ColorTable(0);
			this.btnOrderStatus.Cursor = Cursors.Hand;
			this.btnOrderStatus.set_FocusCuesEnabled(false);
			this.btnOrderStatus.Location = new Point(206, 118);
			this.btnOrderStatus.Name = "btnOrderStatus";
			this.btnOrderStatus.Size = new Size(107, 29);
			this.btnOrderStatus.set_Style(9);
			this.btnOrderStatus.TabIndex = 20;
			this.btnOrderStatus.Text = "Check order status";
			this.btnOrderStatus.set_TextColor(Color.White);
			this.btnOrderStatus.Click += new EventHandler(this.btnOrderStatus_Click);
			this.btnBuy.AccessibleRole = AccessibleRole.PushButton;
			this.btnBuy.BackColor = Color.FromArgb(38, 47, 57);
			this.btnBuy.set_ColorTable(0);
			this.btnBuy.Cursor = Cursors.Hand;
			this.btnBuy.set_FocusCuesEnabled(false);
			this.btnBuy.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnBuy.Location = new Point(89, 118);
			this.btnBuy.Name = "btnBuy";
			this.btnBuy.Size = new Size(107, 29);
			this.btnBuy.set_Style(9);
			this.btnBuy.TabIndex = 19;
			this.btnBuy.Text = "Buy/Free Trial";
			this.btnBuy.set_TextColor(Color.White);
			this.btnBuy.Click += new EventHandler(this.btnBuy_Click);
			this.btnUpgrade.AccessibleRole = AccessibleRole.PushButton;
			this.btnUpgrade.BackColor = Color.FromArgb(38, 47, 57);
			this.btnUpgrade.set_ColorTable(0);
			this.btnUpgrade.Cursor = Cursors.Hand;
			this.btnUpgrade.set_FocusCuesEnabled(false);
			this.btnUpgrade.Location = new Point(323, 118);
			this.btnUpgrade.Name = "btnUpgrade";
			this.btnUpgrade.Size = new Size(107, 29);
			this.btnUpgrade.set_Style(9);
			this.btnUpgrade.TabIndex = 21;
			this.btnUpgrade.Text = "Why upgrade?";
			this.btnUpgrade.set_TextColor(Color.White);
			this.btnUpgrade.Click += new EventHandler(this.btnUpgrade_Click);
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.InitialImage = (Image)componentResourceManager.GetObject("pictureBox1.InitialImage");
			this.pictureBox1.Location = new Point(22, 12);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(80, 80);
			this.pictureBox1.TabIndex = 22;
			this.pictureBox1.TabStop = false;
			this.rchInfo.BackColor = Color.FromArgb(240, 240, 240);
			this.rchInfo.BorderStyle = BorderStyle.None;
			this.rchInfo.Enabled = false;
			this.rchInfo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.rchInfo.ForeColor = Color.FromArgb(61, 61, 61);
			this.rchInfo.Location = new Point(111, 36);
			this.rchInfo.Margin = new Padding(0);
			this.rchInfo.Name = "rchInfo";
			this.rchInfo.ReadOnly = true;
			this.rchInfo.ScrollBars = RichTextBoxScrollBars.None;
			this.rchInfo.Size = new Size(405, 56);
			this.rchInfo.TabIndex = 37;
			this.rchInfo.Text = "Please proceed to the Client Area to check your current order, or make an order for one of the ibVPN packages.";
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(519, 167);
			base.Controls.Add(this.rchInfo);
			base.Controls.Add(this.pictureBox1);
			base.Controls.Add(this.btnUpgrade);
			base.Controls.Add(this.btnOrderStatus);
			base.Controls.Add(this.btnBuy);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "CustomInfoMessageBox";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "You don't have an active service!";
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
