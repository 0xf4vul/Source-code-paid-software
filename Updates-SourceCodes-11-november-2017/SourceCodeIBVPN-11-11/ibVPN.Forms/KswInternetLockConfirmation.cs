using DevComponents.DotNetBar;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class KswInternetLockConfirmation : Form
	{
		private bool hideWindow;

		private bool cancelReconnect;

		private IContainer components;

		private ButtonX btnWait;

		private ButtonX btnCancelReconnect;

		public PictureBox pictureBox1;

		public RichTextBox rchInfo;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public bool HideWindow
		{
			get
			{
				return this.hideWindow;
			}
			set
			{
				this.hideWindow = value;
				this.OnPropertyChanged("HideWindow");
			}
		}

		public bool CancelReconnect
		{
			get
			{
				return this.cancelReconnect;
			}
			set
			{
				this.cancelReconnect = value;
				this.OnPropertyChanged("CancelReconnect");
			}
		}

		public void OnPropertyChanged(string propertyName)
		{
			if (this.PropertyChanged != null)
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}

		public KswInternetLockConfirmation()
		{
			this.InitializeComponent();
			base.TopMost = true;
			base.TopLevel = true;
			this.btnWait.Text = "Hide/Cancel" + Environment.NewLine + "this window";
			this.btnCancelReconnect.Text = "Cancel Reconnect" + Environment.NewLine + "Restore Internet";
		}

		private void btnWait_Click(object sender, EventArgs e)
		{
			this.HideWindow = true;
		}

		private void btnCancelReconnect_Click(object sender, EventArgs e)
		{
			this.CancelReconnect = true;
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(KswInternetLockConfirmation));
			this.btnWait = new ButtonX();
			this.btnCancelReconnect = new ButtonX();
			this.pictureBox1 = new PictureBox();
			this.rchInfo = new RichTextBox();
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.btnWait.AccessibleRole = AccessibleRole.PushButton;
			this.btnWait.BackColor = Color.FromArgb(28, 158, 27);
			this.btnWait.set_ColorTable(0);
			this.btnWait.Cursor = Cursors.Hand;
			this.btnWait.set_FocusCuesEnabled(false);
			this.btnWait.Location = new Point(105, 133);
			this.btnWait.Name = "btnWait";
			this.btnWait.Size = new Size(115, 43);
			this.btnWait.TabIndex = 26;
			this.btnWait.Text = "Hide / Minimize \\n\\n this window";
			this.btnWait.set_TextColor(Color.White);
			this.btnWait.Click += new EventHandler(this.btnWait_Click);
			this.btnCancelReconnect.AccessibleRole = AccessibleRole.PushButton;
			this.btnCancelReconnect.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCancelReconnect.set_ColorTable(0);
			this.btnCancelReconnect.Cursor = Cursors.Hand;
			this.btnCancelReconnect.set_FocusCuesEnabled(false);
			this.btnCancelReconnect.Location = new Point(225, 133);
			this.btnCancelReconnect.Name = "btnCancelReconnect";
			this.btnCancelReconnect.Size = new Size(115, 43);
			this.btnCancelReconnect.TabIndex = 25;
			this.btnCancelReconnect.Text = "Cancel Reconnect \\n\\n Restore Internet";
			this.btnCancelReconnect.set_TextColor(Color.White);
			this.btnCancelReconnect.Click += new EventHandler(this.btnCancelReconnect_Click);
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.InitialImage = (Image)componentResourceManager.GetObject("pictureBox1.InitialImage");
			this.pictureBox1.Location = new Point(12, 12);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(80, 80);
			this.pictureBox1.TabIndex = 28;
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
			this.rchInfo.Size = new Size(315, 118);
			this.rchInfo.TabIndex = 39;
			this.rchInfo.Text = componentResourceManager.GetString("rchInfo.Text");
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(444, 188);
			base.Controls.Add(this.rchInfo);
			base.Controls.Add(this.pictureBox1);
			base.Controls.Add(this.btnWait);
			base.Controls.Add(this.btnCancelReconnect);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "KswInternetLockConfirmation";
			this.Text = "Internet Lock";
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
