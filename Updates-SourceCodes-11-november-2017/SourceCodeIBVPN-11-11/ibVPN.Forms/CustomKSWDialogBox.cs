using DevComponents.DotNetBar;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class CustomKSWDialogBox : Form
	{
		private IContainer components;

		private ButtonX btnCancel;

		private ButtonX btnAddRunningProcess;

		public LabelX lblinfo;

		private ButtonX btnAddApp;

		public bool AddRunningProcess
		{
			get;
			set;
		}

		public bool AddApp
		{
			get;
			set;
		}

		public CustomKSWDialogBox()
		{
			this.InitializeComponent();
		}

		private void CustomKSWDialogBox_Load(object sender, EventArgs e)
		{
			this.lblinfo.Text = string.Concat(new string[]
			{
				"You don't have any application added to the KillSwitch list. ",
				Environment.NewLine,
				Environment.NewLine,
				"In order to enable this feature, you need to have at least one application added to the KillSwitch List. ",
				Environment.NewLine,
				Environment.NewLine,
				"KillSwitch Description:",
				Environment.NewLine,
				"This feature will forcibly close the application you have in the list in case the VPN connection is lost. ",
				Environment.NewLine,
				Environment.NewLine,
				"      - 'Add App/Browse' button will allow you to browse the computer to add the desired program to the KillSwitch List. ",
				Environment.NewLine,
				Environment.NewLine,
				"      - 'Add Running Process' button will display the running processess so you can add the desired process to the KillSwitch List. ",
				Environment.NewLine,
				Environment.NewLine,
				"      - 'Cancel' button will leave this feature OFF."
			});
			this.btnAddRunningProcess.Select();
		}

		private void btnCancel_Click(object sender, EventArgs e)
		{
			this.AddRunningProcess = false;
			this.AddApp = false;
			base.Close();
		}

		private void btnAddRunningProcess_Click(object sender, EventArgs e)
		{
			this.AddRunningProcess = true;
			this.AddApp = false;
			base.Close();
		}

		private void btnAddApp_Click(object sender, EventArgs e)
		{
			this.AddRunningProcess = false;
			this.AddApp = true;
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(CustomKSWDialogBox));
			this.btnCancel = new ButtonX();
			this.btnAddRunningProcess = new ButtonX();
			this.lblinfo = new LabelX();
			this.btnAddApp = new ButtonX();
			base.SuspendLayout();
			this.btnCancel.AccessibleRole = AccessibleRole.PushButton;
			this.btnCancel.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCancel.set_ColorTable(0);
			this.btnCancel.Cursor = Cursors.Hand;
			this.btnCancel.set_FocusCuesEnabled(false);
			this.btnCancel.Location = new Point(296, 301);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new Size(112, 25);
			this.btnCancel.set_Style(9);
			this.btnCancel.TabIndex = 36;
			this.btnCancel.Text = "Cancel";
			this.btnCancel.set_TextColor(Color.White);
			this.btnCancel.Click += new EventHandler(this.btnCancel_Click);
			this.btnAddRunningProcess.AccessibleRole = AccessibleRole.PushButton;
			this.btnAddRunningProcess.BackColor = Color.FromArgb(27, 158, 28);
			this.btnAddRunningProcess.set_ColorTable(0);
			this.btnAddRunningProcess.Cursor = Cursors.Hand;
			this.btnAddRunningProcess.set_FocusCuesEnabled(false);
			this.btnAddRunningProcess.Location = new Point(38, 301);
			this.btnAddRunningProcess.Name = "btnAddRunningProcess";
			this.btnAddRunningProcess.Size = new Size(112, 25);
			this.btnAddRunningProcess.set_Style(9);
			this.btnAddRunningProcess.TabIndex = 35;
			this.btnAddRunningProcess.Text = "Add Running Process";
			this.btnAddRunningProcess.set_TextColor(Color.White);
			this.btnAddRunningProcess.Click += new EventHandler(this.btnAddRunningProcess_Click);
			this.lblinfo.BackColor = Color.Transparent;
			this.lblinfo.get_BackgroundStyle().set_CornerType(1);
			this.lblinfo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.lblinfo.ForeColor = Color.FromArgb(61, 61, 61);
			this.lblinfo.Location = new Point(12, 12);
			this.lblinfo.Name = "lblinfo";
			this.lblinfo.set_SingleLineColor(Color.FromArgb(61, 61, 61));
			this.lblinfo.Size = new Size(419, 273);
			this.lblinfo.TabIndex = 37;
			this.lblinfo.Text = "Text";
			this.lblinfo.set_TextLineAlignment(StringAlignment.Near);
			this.lblinfo.set_WordWrap(true);
			this.btnAddApp.AccessibleRole = AccessibleRole.PushButton;
			this.btnAddApp.BackColor = Color.FromArgb(27, 158, 28);
			this.btnAddApp.set_ColorTable(0);
			this.btnAddApp.Cursor = Cursors.Hand;
			this.btnAddApp.set_FocusCuesEnabled(false);
			this.btnAddApp.Location = new Point(167, 301);
			this.btnAddApp.Name = "btnAddApp";
			this.btnAddApp.Size = new Size(112, 25);
			this.btnAddApp.set_Style(9);
			this.btnAddApp.TabIndex = 38;
			this.btnAddApp.Text = "Add App/Browse";
			this.btnAddApp.set_TextColor(Color.White);
			this.btnAddApp.Click += new EventHandler(this.btnAddApp_Click);
			base.AcceptButton = this.btnAddRunningProcess;
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(444, 341);
			base.Controls.Add(this.btnAddApp);
			base.Controls.Add(this.lblinfo);
			base.Controls.Add(this.btnCancel);
			base.Controls.Add(this.btnAddRunningProcess);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			this.MaximumSize = new Size(460, 380);
			base.MinimizeBox = false;
			this.MinimumSize = new Size(460, 380);
			base.Name = "CustomKSWDialogBox";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "Please add a program or a running process to the KillSwitch List";
			base.Load += new EventHandler(this.CustomKSWDialogBox_Load);
			base.ResumeLayout(false);
		}
	}
}
