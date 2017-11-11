using DevComponents.DotNetBar;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class CustomFastestServersMessage : Form
	{
		private IContainer components;

		private PictureBox pictureBox1;

		public RichTextBox rchInfo;

		private ButtonX btnCancel;

		public LabelX lblProgress;

		public bool Cancel
		{
			get;
			set;
		}

		public CustomFastestServersMessage()
		{
			this.InitializeComponent();
		}

		private void CustomFastestServersMessage_Load(object sender, EventArgs e)
		{
			this.btnCancel.Select();
		}

		private void btnCancel_Click(object sender, EventArgs e)
		{
			this.Cancel = true;
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(CustomFastestServersMessage));
			this.pictureBox1 = new PictureBox();
			this.rchInfo = new RichTextBox();
			this.btnCancel = new ButtonX();
			this.lblProgress = new LabelX();
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.InitialImage = (Image)componentResourceManager.GetObject("pictureBox1.InitialImage");
			this.pictureBox1.Location = new Point(12, 12);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(80, 80);
			this.pictureBox1.TabIndex = 38;
			this.pictureBox1.TabStop = false;
			this.rchInfo.BackColor = Color.FromArgb(240, 240, 240);
			this.rchInfo.BorderStyle = BorderStyle.None;
			this.rchInfo.Enabled = false;
			this.rchInfo.Font = new Font("Segoe UI", 10f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.rchInfo.ForeColor = Color.FromArgb(61, 61, 61);
			this.rchInfo.Location = new Point(105, 25);
			this.rchInfo.Margin = new Padding(0);
			this.rchInfo.Name = "rchInfo";
			this.rchInfo.ReadOnly = true;
			this.rchInfo.ScrollBars = RichTextBoxScrollBars.None;
			this.rchInfo.Size = new Size(268, 26);
			this.rchInfo.TabIndex = 41;
			this.rchInfo.Text = "Please wait, testing fastest server...";
			this.btnCancel.AccessibleRole = AccessibleRole.PushButton;
			this.btnCancel.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCancel.set_ColorTable(0);
			this.btnCancel.Cursor = Cursors.Hand;
			this.btnCancel.set_FocusCuesEnabled(false);
			this.btnCancel.Location = new Point(150, 102);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new Size(99, 29);
			this.btnCancel.set_Style(9);
			this.btnCancel.TabIndex = 42;
			this.btnCancel.Text = "Cancel";
			this.btnCancel.set_TextColor(Color.White);
			this.btnCancel.Click += new EventHandler(this.btnCancel_Click);
			this.lblProgress.BackColor = Color.Transparent;
			this.lblProgress.get_BackgroundStyle().set_CornerType(1);
			this.lblProgress.Font = new Font("Segoe UI", 10f);
			this.lblProgress.ForeColor = Color.FromArgb(61, 61, 61);
			this.lblProgress.Location = new Point(105, 56);
			this.lblProgress.Name = "lblProgress";
			this.lblProgress.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.lblProgress.Size = new Size(268, 23);
			this.lblProgress.set_Style(9);
			this.lblProgress.TabIndex = 43;
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.FromArgb(240, 240, 240);
			base.ClientSize = new Size(399, 140);
			base.ControlBox = false;
			base.Controls.Add(this.lblProgress);
			base.Controls.Add(this.btnCancel);
			base.Controls.Add(this.rchInfo);
			base.Controls.Add(this.pictureBox1);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "CustomFastestServersMessage";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "Fastest Server List";
			base.Load += new EventHandler(this.CustomFastestServersMessage_Load);
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
