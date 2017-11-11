using DevComponents.DotNetBar;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class KswInternetLockInformation : Form
	{
		private bool restoreInternet;

		private IContainer components;

		public PictureBox pictureBox1;

		public RichTextBox rchInfo;

		private ButtonX btnRestoreInternet;

		private ButtonX btnCancel;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public bool RestoreInternet
		{
			get
			{
				return this.restoreInternet;
			}
			set
			{
				this.restoreInternet = value;
				this.OnPropertyChanged("RestoreInternet");
			}
		}

		public void OnPropertyChanged(string propertyName)
		{
			if (this.PropertyChanged != null)
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}

		public KswInternetLockInformation()
		{
			this.InitializeComponent();
			base.TopMost = true;
			base.TopLevel = true;
		}

		private void btnRestoreInternet_Click(object sender, EventArgs e)
		{
			this.RestoreInternet = true;
			base.Close();
		}

		private void btnCancel_Click(object sender, EventArgs e)
		{
			this.RestoreInternet = false;
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(KswInternetLockInformation));
			this.pictureBox1 = new PictureBox();
			this.rchInfo = new RichTextBox();
			this.btnRestoreInternet = new ButtonX();
			this.btnCancel = new ButtonX();
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.InitialImage = (Image)componentResourceManager.GetObject("pictureBox1.InitialImage");
			this.pictureBox1.Location = new Point(12, 12);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(80, 80);
			this.pictureBox1.TabIndex = 29;
			this.pictureBox1.TabStop = false;
			this.rchInfo.Anchor = (AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right);
			this.rchInfo.BackColor = Color.FromArgb(240, 240, 240);
			this.rchInfo.BorderStyle = BorderStyle.None;
			this.rchInfo.Enabled = false;
			this.rchInfo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.rchInfo.ForeColor = Color.FromArgb(61, 61, 61);
			this.rchInfo.Location = new Point(120, 12);
			this.rchInfo.Margin = new Padding(0);
			this.rchInfo.Name = "rchInfo";
			this.rchInfo.ReadOnly = true;
			this.rchInfo.ScrollBars = RichTextBoxScrollBars.None;
			this.rchInfo.Size = new Size(315, 183);
			this.rchInfo.TabIndex = 40;
			this.rchInfo.Text = "The VPN connection has dropped. \\n\\n Because the Internet KillSwitch is ON, your Internet traffic is locked until the VPN connection will be restored. \\n\\n Because you don't check Autoreconect......";
			this.btnRestoreInternet.AccessibleRole = AccessibleRole.PushButton;
			this.btnRestoreInternet.BackColor = Color.FromArgb(28, 158, 27);
			this.btnRestoreInternet.set_ColorTable(0);
			this.btnRestoreInternet.Cursor = Cursors.Hand;
			this.btnRestoreInternet.set_FocusCuesEnabled(false);
			this.btnRestoreInternet.Location = new Point(117, 214);
			this.btnRestoreInternet.Name = "btnRestoreInternet";
			this.btnRestoreInternet.Size = new Size(115, 25);
			this.btnRestoreInternet.TabIndex = 41;
			this.btnRestoreInternet.Text = "Restore Internet";
			this.btnRestoreInternet.set_TextColor(Color.White);
			this.btnRestoreInternet.Click += new EventHandler(this.btnRestoreInternet_Click);
			this.btnCancel.AccessibleRole = AccessibleRole.PushButton;
			this.btnCancel.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCancel.set_ColorTable(0);
			this.btnCancel.Cursor = Cursors.Hand;
			this.btnCancel.set_FocusCuesEnabled(false);
			this.btnCancel.Location = new Point(238, 214);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new Size(115, 25);
			this.btnCancel.TabIndex = 42;
			this.btnCancel.Text = "Cancel";
			this.btnCancel.set_TextColor(Color.White);
			this.btnCancel.Click += new EventHandler(this.btnCancel_Click);
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(444, 253);
			base.Controls.Add(this.btnCancel);
			base.Controls.Add(this.btnRestoreInternet);
			base.Controls.Add(this.rchInfo);
			base.Controls.Add(this.pictureBox1);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.Name = "KswInternetLockInformation";
			this.Text = "Internet Lock Information";
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
