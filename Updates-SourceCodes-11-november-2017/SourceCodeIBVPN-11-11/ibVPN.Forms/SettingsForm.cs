using DevComponents.DotNetBar;
using ibBLL;
using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class SettingsForm : Form
	{
		private readonly APIManager apiManager;

		private IContainer components;

		private ButtonX btnCancel;

		private ButtonX btnSave;

		private TextBox txtIP1;

		private Label lblIP1;

		private Label lblIP2;

		private TextBox txtIP2;

		private Label lblCheck;

		private TextBox txtCheck;

		private Label lblTimeNewTry;

		private TextBox txtTimeNewTry;

		private Label lblApiKey;

		private TextBox txtApyKey;

		private Label label1;

		private TextBox txtIP4;

		private Label label2;

		private TextBox txtIP3;

		private Label label3;

		private TextBox txtIP5;

		public string IP1
		{
			get;
			set;
		}

		public string IP2
		{
			get;
			set;
		}

		public string IP3
		{
			get;
			set;
		}

		public string IP4
		{
			get;
			set;
		}

		public string IP5
		{
			get;
			set;
		}

		public int ChecksNumber
		{
			get;
			set;
		}

		public int TimeNewTry
		{
			get;
			set;
		}

		public string ApiKey
		{
			get;
			set;
		}

		public bool Save
		{
			get;
			set;
		}

		public SettingsForm()
		{
			this.<IP1>k__BackingField = string.Empty;
			this.<IP2>k__BackingField = string.Empty;
			this.<IP3>k__BackingField = string.Empty;
			this.<IP4>k__BackingField = string.Empty;
			this.<IP5>k__BackingField = string.Empty;
			this.<ChecksNumber>k__BackingField = 3;
			this.<TimeNewTry>k__BackingField = 2000;
			this.<ApiKey>k__BackingField = "133040d4d03f4a5bc78434dd2901d5f4";
			this.apiManager = new APIManager();
			base..ctor();
			this.InitializeComponent();
		}

		private void SettingsForm_Load(object sender, EventArgs e)
		{
			ArrayList arrayList = this.apiManager.DeserializeSettings();
			this.IP1 = arrayList[0].ToString();
			this.IP2 = arrayList[1].ToString();
			this.IP3 = arrayList[2].ToString();
			this.IP4 = arrayList[3].ToString();
			this.IP5 = arrayList[4].ToString();
			this.ChecksNumber = Convert.ToInt32(arrayList[5]);
			this.TimeNewTry = Convert.ToInt32(arrayList[6]);
			this.ApiKey = arrayList[7].ToString();
			this.txtIP1.Text = this.IP1;
			this.txtIP2.Text = this.IP2;
			this.txtIP3.Text = this.IP3;
			this.txtIP4.Text = this.IP4;
			this.txtIP5.Text = this.IP5;
			this.txtCheck.Text = this.ChecksNumber.ToString();
			this.txtTimeNewTry.Text = this.TimeNewTry.ToString();
			this.txtApyKey.Text = this.ApiKey;
		}

		private void btnSave_Click(object sender, EventArgs e)
		{
			this.IP1 = this.txtIP1.Text;
			this.IP2 = this.txtIP2.Text;
			this.IP3 = this.txtIP3.Text;
			this.IP4 = this.txtIP4.Text;
			this.IP5 = this.txtIP5.Text;
			this.ChecksNumber = Convert.ToInt32(this.txtCheck.Text);
			this.TimeNewTry = Convert.ToInt32(this.txtTimeNewTry.Text);
			this.ApiKey = this.txtApyKey.Text;
			this.Save = true;
			base.Close();
		}

		private void btnCancel_Click(object sender, EventArgs e)
		{
			this.Save = false;
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
			this.btnCancel = new ButtonX();
			this.btnSave = new ButtonX();
			this.txtIP1 = new TextBox();
			this.lblIP1 = new Label();
			this.lblIP2 = new Label();
			this.txtIP2 = new TextBox();
			this.lblCheck = new Label();
			this.txtCheck = new TextBox();
			this.lblTimeNewTry = new Label();
			this.txtTimeNewTry = new TextBox();
			this.lblApiKey = new Label();
			this.txtApyKey = new TextBox();
			this.label1 = new Label();
			this.txtIP4 = new TextBox();
			this.label2 = new Label();
			this.txtIP3 = new TextBox();
			this.label3 = new Label();
			this.txtIP5 = new TextBox();
			base.SuspendLayout();
			this.btnCancel.AccessibleRole = AccessibleRole.PushButton;
			this.btnCancel.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCancel.set_ColorTable(0);
			this.btnCancel.Cursor = Cursors.Hand;
			this.btnCancel.set_FocusCuesEnabled(false);
			this.btnCancel.Location = new Point(250, 231);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new Size(99, 29);
			this.btnCancel.set_Style(9);
			this.btnCancel.TabIndex = 20;
			this.btnCancel.Text = "Cancel";
			this.btnCancel.set_TextColor(Color.White);
			this.btnCancel.Click += new EventHandler(this.btnCancel_Click);
			this.btnSave.AccessibleRole = AccessibleRole.PushButton;
			this.btnSave.BackColor = Color.FromArgb(27, 158, 28);
			this.btnSave.set_ColorTable(0);
			this.btnSave.Cursor = Cursors.Hand;
			this.btnSave.set_FocusCuesEnabled(false);
			this.btnSave.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnSave.Location = new Point(145, 231);
			this.btnSave.Name = "btnSave";
			this.btnSave.Size = new Size(99, 29);
			this.btnSave.set_Style(9);
			this.btnSave.TabIndex = 19;
			this.btnSave.Text = "Save";
			this.btnSave.set_TextColor(Color.White);
			this.btnSave.Click += new EventHandler(this.btnSave_Click);
			this.txtIP1.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtIP1.Location = new Point(104, 22);
			this.txtIP1.Name = "txtIP1";
			this.txtIP1.Size = new Size(378, 20);
			this.txtIP1.TabIndex = 21;
			this.lblIP1.AutoSize = true;
			this.lblIP1.Location = new Point(27, 25);
			this.lblIP1.Name = "lblIP1";
			this.lblIP1.Size = new Size(23, 13);
			this.lblIP1.TabIndex = 22;
			this.lblIP1.Text = "IP1";
			this.lblIP2.AutoSize = true;
			this.lblIP2.Location = new Point(27, 51);
			this.lblIP2.Name = "lblIP2";
			this.lblIP2.Size = new Size(23, 13);
			this.lblIP2.TabIndex = 24;
			this.lblIP2.Text = "IP2";
			this.txtIP2.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtIP2.Location = new Point(104, 48);
			this.txtIP2.Name = "txtIP2";
			this.txtIP2.Size = new Size(378, 20);
			this.txtIP2.TabIndex = 23;
			this.lblCheck.AutoSize = true;
			this.lblCheck.Location = new Point(27, 180);
			this.lblCheck.Name = "lblCheck";
			this.lblCheck.Size = new Size(58, 13);
			this.lblCheck.TabIndex = 26;
			this.lblCheck.Text = "Checks nr.";
			this.txtCheck.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtCheck.Location = new Point(104, 177);
			this.txtCheck.Name = "txtCheck";
			this.txtCheck.Size = new Size(85, 20);
			this.txtCheck.TabIndex = 25;
			this.lblTimeNewTry.AutoSize = true;
			this.lblTimeNewTry.Location = new Point(27, 206);
			this.lblTimeNewTry.Name = "lblTimeNewTry";
			this.lblTimeNewTry.Size = new Size(67, 13);
			this.lblTimeNewTry.TabIndex = 28;
			this.lblTimeNewTry.Text = "Time new try";
			this.txtTimeNewTry.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtTimeNewTry.Location = new Point(104, 203);
			this.txtTimeNewTry.Name = "txtTimeNewTry";
			this.txtTimeNewTry.Size = new Size(85, 20);
			this.txtTimeNewTry.TabIndex = 27;
			this.lblApiKey.AutoSize = true;
			this.lblApiKey.Location = new Point(27, 154);
			this.lblApiKey.Name = "lblApiKey";
			this.lblApiKey.Size = new Size(48, 13);
			this.lblApiKey.TabIndex = 30;
			this.lblApiKey.Text = "API KEY";
			this.txtApyKey.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtApyKey.Location = new Point(104, 151);
			this.txtApyKey.Name = "txtApyKey";
			this.txtApyKey.Size = new Size(378, 20);
			this.txtApyKey.TabIndex = 29;
			this.label1.AutoSize = true;
			this.label1.Location = new Point(27, 103);
			this.label1.Name = "label1";
			this.label1.Size = new Size(23, 13);
			this.label1.TabIndex = 34;
			this.label1.Text = "IP4";
			this.txtIP4.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtIP4.Location = new Point(104, 100);
			this.txtIP4.Name = "txtIP4";
			this.txtIP4.Size = new Size(378, 20);
			this.txtIP4.TabIndex = 33;
			this.label2.AutoSize = true;
			this.label2.Location = new Point(27, 77);
			this.label2.Name = "label2";
			this.label2.Size = new Size(23, 13);
			this.label2.TabIndex = 32;
			this.label2.Text = "IP3";
			this.txtIP3.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtIP3.Location = new Point(104, 74);
			this.txtIP3.Name = "txtIP3";
			this.txtIP3.Size = new Size(378, 20);
			this.txtIP3.TabIndex = 31;
			this.label3.AutoSize = true;
			this.label3.Location = new Point(27, 128);
			this.label3.Name = "label3";
			this.label3.Size = new Size(23, 13);
			this.label3.TabIndex = 36;
			this.label3.Text = "IP5";
			this.txtIP5.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtIP5.Location = new Point(104, 125);
			this.txtIP5.Name = "txtIP5";
			this.txtIP5.Size = new Size(378, 20);
			this.txtIP5.TabIndex = 35;
			base.AcceptButton = this.btnSave;
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			base.ClientSize = new Size(494, 271);
			base.Controls.Add(this.label3);
			base.Controls.Add(this.txtIP5);
			base.Controls.Add(this.label1);
			base.Controls.Add(this.txtIP4);
			base.Controls.Add(this.label2);
			base.Controls.Add(this.txtIP3);
			base.Controls.Add(this.lblApiKey);
			base.Controls.Add(this.txtApyKey);
			base.Controls.Add(this.lblTimeNewTry);
			base.Controls.Add(this.txtTimeNewTry);
			base.Controls.Add(this.lblCheck);
			base.Controls.Add(this.txtCheck);
			base.Controls.Add(this.lblIP2);
			base.Controls.Add(this.txtIP2);
			base.Controls.Add(this.lblIP1);
			base.Controls.Add(this.txtIP1);
			base.Controls.Add(this.btnCancel);
			base.Controls.Add(this.btnSave);
			this.ForeColor = Color.FromArgb(38, 47, 57);
			base.Name = "SettingsForm";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "Settings";
			base.Load += new EventHandler(this.SettingsForm_Load);
			base.ResumeLayout(false);
			base.PerformLayout();
		}
	}
}
