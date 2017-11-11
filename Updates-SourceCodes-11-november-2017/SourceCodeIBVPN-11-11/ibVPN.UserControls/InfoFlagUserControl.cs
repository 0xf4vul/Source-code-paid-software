using DevComponents.DotNetBar;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.UserControls
{
	public class InfoFlagUserControl : UserControl
	{
		private IContainer components;

		public PictureBox connectedFlag;

		public LabelX lblinfoConnection;

		public InfoFlagUserControl()
		{
			this.InitializeComponent();
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
			this.connectedFlag = new PictureBox();
			this.lblinfoConnection = new LabelX();
			((ISupportInitialize)this.connectedFlag).BeginInit();
			base.SuspendLayout();
			this.connectedFlag.BackColor = Color.Transparent;
			this.connectedFlag.Location = new Point(0, 0);
			this.connectedFlag.Margin = new Padding(0);
			this.connectedFlag.Name = "connectedFlag";
			this.connectedFlag.Size = new Size(23, 18);
			this.connectedFlag.SizeMode = PictureBoxSizeMode.StretchImage;
			this.connectedFlag.TabIndex = 1;
			this.connectedFlag.TabStop = false;
			this.lblinfoConnection.Anchor = (AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right);
			this.lblinfoConnection.get_BackgroundStyle().set_CornerType(1);
			this.lblinfoConnection.Location = new Point(29, 0);
			this.lblinfoConnection.Name = "lblinfoConnection";
			this.lblinfoConnection.Size = new Size(147, 19);
			this.lblinfoConnection.TabIndex = 2;
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			this.BackColor = Color.FromArgb(240, 240, 240);
			base.Controls.Add(this.lblinfoConnection);
			base.Controls.Add(this.connectedFlag);
			this.ForeColor = Color.FromArgb(38, 47, 57);
			base.Name = "InfoFlagUserControl";
			base.Size = new Size(188, 29);
			((ISupportInitialize)this.connectedFlag).EndInit();
			base.ResumeLayout(false);
		}
	}
}
