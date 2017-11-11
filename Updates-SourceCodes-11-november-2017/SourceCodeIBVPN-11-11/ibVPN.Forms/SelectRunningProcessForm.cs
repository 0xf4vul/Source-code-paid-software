using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Controls;
using ibVPN.Helpers;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Management;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class SelectRunningProcessForm : Form
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly SelectRunningProcessForm.<>c <>9 = new SelectRunningProcessForm.<>c();

			public static Func<Process, bool> <>9__26_0;

			public static Func<Process, bool> <>9__28_0;

			internal bool <GetRunningProcesses>b__26_0(Process proc)
			{
				return !proc.ProcessName.StartsWith("ibVPN");
			}

			internal bool <SetRunningProcessesIcons>b__28_0(Process proc)
			{
				return !proc.ProcessName.StartsWith("ibVPN");
			}
		}

		private const string NOTIFICATION_MESSAGE_BOX = "ibVPN client notification/info message";

		private GeneralHelper helper;

		private string appName;

		private string appPath;

		private IContainer components;

		private DataGridViewX dgvKillSwitch;

		private DataGridViewImageColumn appicon;

		private ButtonX btnCancel;

		private ButtonX btnSelect;

		private ImageList imageList1;

		public string SelectedProcess
		{
			get;
			set;
		}

		public Bitmap Ico
		{
			get;
			set;
		}

		public int ProcessId
		{
			get;
			set;
		}

		public string ProcessName
		{
			get;
			set;
		}

		public string ProcessPath
		{
			get;
			set;
		}

		public SelectRunningProcessForm()
		{
			this.<SelectedProcess>k__BackingField = string.Empty;
			this.<ProcessName>k__BackingField = string.Empty;
			this.<ProcessPath>k__BackingField = string.Empty;
			this.helper = new GeneralHelper();
			this.appName = Assembly.GetExecutingAssembly().GetName().Name;
			this.appPath = Application.ExecutablePath.ToString();
			base..ctor();
			this.InitializeComponent();
		}

		private void SetDgvKilSwitch()
		{
			DataTable dataTable = new DataTable();
			dataTable.Columns.Add("Application");
			dataTable.Columns.Add("processId");
			dataTable.Columns.Add("processName");
			this.dgvKillSwitch.DataSource = dataTable;
			this.dgvKillSwitch.AllowUserToAddRows = false;
			this.dgvKillSwitch.Columns[0].Width = 35;
			this.dgvKillSwitch.Columns["processId"].Visible = false;
			this.dgvKillSwitch.Columns["ProcessName"].Visible = false;
			this.dgvKillSwitch.Columns["Application"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
			this.dgvKillSwitch.ColumnHeadersVisible = false;
			this.dgvKillSwitch.RowHeadersVisible = false;
			this.dgvKillSwitch.CellBorderStyle = DataGridViewCellBorderStyle.None;
			this.dgvKillSwitch.AlternatingRowsDefaultCellStyle.BackColor = Color.FromArgb(238, 238, 238);
			this.dgvKillSwitch.ReadOnly = true;
			this.dgvKillSwitch.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
			this.dgvKillSwitch.set_PaintEnhancedSelection(false);
			this.dgvKillSwitch.RowTemplate.DefaultCellStyle.SelectionBackColor = Color.LightGray;
		}

		private void GetRunningProcesses()
		{
			IEnumerable<Process> arg_24_0 = Process.GetProcesses();
			Func<Process, bool> arg_24_1;
			if ((arg_24_1 = SelectRunningProcessForm.<>c.<>9__26_0) == null)
			{
				arg_24_1 = (SelectRunningProcessForm.<>c.<>9__26_0 = new Func<Process, bool>(SelectRunningProcessForm.<>c.<>9.<GetRunningProcesses>b__26_0));
			}
			List<Process> arg_3F_0 = arg_24_0.Where(arg_24_1).ToList<Process>();
			DataTable dataTable = (DataTable)this.dgvKillSwitch.DataSource;
			foreach (Process current in arg_3F_0)
			{
				if (!string.IsNullOrEmpty(current.MainWindowTitle))
				{
					try
					{
						dataTable.Rows.Add(new object[]
						{
							current.MainWindowTitle,
							this.GetMainModuleFilepath(current.Id),
							current.ProcessName
						});
					}
					catch
					{
						dataTable.Rows.Add(new object[]
						{
							current.MainWindowTitle
						});
					}
				}
			}
		}

		private string GetMainModuleFilepath(int processId)
		{
			using (ManagementObjectSearcher managementObjectSearcher = new ManagementObjectSearcher("SELECT ProcessId, ExecutablePath, CommandLine FROM Win32_Process WHERE ProcessId = " + processId))
			{
				using (ManagementObjectCollection managementObjectCollection = managementObjectSearcher.Get())
				{
					ManagementObject managementObject = managementObjectCollection.Cast<ManagementObject>().FirstOrDefault<ManagementObject>();
					if (managementObject != null)
					{
						return (string)managementObject["ExecutablePath"];
					}
				}
			}
			return null;
		}

		private void SetRunningProcessesIcons()
		{
			IEnumerable<Process> arg_24_0 = Process.GetProcesses();
			Func<Process, bool> arg_24_1;
			if ((arg_24_1 = SelectRunningProcessForm.<>c.<>9__28_0) == null)
			{
				arg_24_1 = (SelectRunningProcessForm.<>c.<>9__28_0 = new Func<Process, bool>(SelectRunningProcessForm.<>c.<>9.<SetRunningProcessesIcons>b__28_0));
			}
			List<Process> arg_30_0 = arg_24_0.Where(arg_24_1).ToList<Process>();
			int num = 0;
			foreach (Process current in arg_30_0)
			{
				if (!string.IsNullOrEmpty(current.MainWindowTitle))
				{
					try
					{
						Icon value = Icon.ExtractAssociatedIcon(this.GetMainModuleFilepath(current.Id));
						this.imageList1.Images.Add(value);
						this.dgvKillSwitch.Rows[num].Cells[0].Value = this.imageList1.Images[this.imageList1.Images.Count - 1];
					}
					catch
					{
						if (this.dgvKillSwitch.Rows.Count >= num && this.dgvKillSwitch.Rows[num].Cells.Count > 0 && this.imageList1.Images.Count > 0)
						{
							this.dgvKillSwitch.Rows[num].Cells[0].Value = this.imageList1.Images[0];
						}
					}
					this.dgvKillSwitch.Rows[num].Height = 30;
					num++;
				}
			}
		}

		private void SelectRunningProcessForm_Load(object sender, EventArgs e)
		{
			this.SetDgvKilSwitch();
			this.GetRunningProcesses();
			this.SetRunningProcessesIcons();
		}

		private void btnSelect_Click(object sender, EventArgs e)
		{
			if (this.dgvKillSwitch.SelectedRows.Count > 0)
			{
				this.Ico = (Bitmap)this.dgvKillSwitch.SelectedRows[0].Cells[0].Value;
				this.SelectedProcess = this.dgvKillSwitch.SelectedRows[0].Cells[1].Value.ToString();
				this.ProcessPath = this.dgvKillSwitch.SelectedRows[0].Cells[2].Value.ToString();
				this.ProcessName = this.dgvKillSwitch.SelectedRows[0].Cells[3].Value.ToString();
			}
			else
			{
				this.SelectedProcess = string.Empty;
			}
			if (this.SelectedProcess != string.Empty)
			{
				base.Close();
				return;
			}
			this.helper.MessageBoxShow("Please select a process !", "ibVPN client notification/info message", 2, true, true);
		}

		private void btnCancel_Click(object sender, EventArgs e)
		{
			this.SelectedProcess = string.Empty;
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
			this.components = new Container();
			DataGridViewCellStyle dataGridViewCellStyle = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle2 = new DataGridViewCellStyle();
			DataGridViewCellStyle dataGridViewCellStyle3 = new DataGridViewCellStyle();
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(SelectRunningProcessForm));
			this.dgvKillSwitch = new DataGridViewX();
			this.appicon = new DataGridViewImageColumn();
			this.btnCancel = new ButtonX();
			this.btnSelect = new ButtonX();
			this.imageList1 = new ImageList(this.components);
			this.dgvKillSwitch.BeginInit();
			base.SuspendLayout();
			this.dgvKillSwitch.BackgroundColor = Color.FromArgb(247, 247, 247);
			this.dgvKillSwitch.BorderStyle = BorderStyle.None;
			dataGridViewCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle.BackColor = SystemColors.Control;
			dataGridViewCellStyle.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			dataGridViewCellStyle.ForeColor = Color.Black;
			dataGridViewCellStyle.SelectionForeColor = Color.Black;
			dataGridViewCellStyle.WrapMode = DataGridViewTriState.True;
			this.dgvKillSwitch.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle;
			this.dgvKillSwitch.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
			this.dgvKillSwitch.Columns.AddRange(new DataGridViewColumn[]
			{
				this.appicon
			});
			this.dgvKillSwitch.Cursor = Cursors.Hand;
			dataGridViewCellStyle2.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle2.BackColor = Color.FromArgb(242, 242, 242);
			dataGridViewCellStyle2.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			dataGridViewCellStyle2.ForeColor = Color.FromArgb(61, 61, 61);
			dataGridViewCellStyle2.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle2.SelectionForeColor = Color.FromArgb(61, 61, 61);
			dataGridViewCellStyle2.WrapMode = DataGridViewTriState.False;
			this.dgvKillSwitch.DefaultCellStyle = dataGridViewCellStyle2;
			this.dgvKillSwitch.Dock = DockStyle.Top;
			this.dgvKillSwitch.EnableHeadersVisualStyles = false;
			this.dgvKillSwitch.GridColor = Color.FromArgb(157, 157, 157);
			this.dgvKillSwitch.set_HighlightSelectedColumnHeaders(false);
			this.dgvKillSwitch.Location = new Point(0, 0);
			this.dgvKillSwitch.MultiSelect = false;
			this.dgvKillSwitch.Name = "dgvKillSwitch";
			dataGridViewCellStyle3.Alignment = DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle3.BackColor = SystemColors.Control;
			dataGridViewCellStyle3.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			dataGridViewCellStyle3.ForeColor = Color.Black;
			dataGridViewCellStyle3.SelectionBackColor = SystemColors.Highlight;
			dataGridViewCellStyle3.SelectionForeColor = Color.Black;
			dataGridViewCellStyle3.WrapMode = DataGridViewTriState.True;
			this.dgvKillSwitch.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
			this.dgvKillSwitch.RowTemplate.DefaultCellStyle.Font = new Font("Segoe UI", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.dgvKillSwitch.RowTemplate.DefaultCellStyle.SelectionBackColor = Color.White;
			this.dgvKillSwitch.RowTemplate.Height = 35;
			this.dgvKillSwitch.RowTemplate.ReadOnly = true;
			this.dgvKillSwitch.RowTemplate.Resizable = DataGridViewTriState.False;
			this.dgvKillSwitch.Size = new Size(404, 448);
			this.dgvKillSwitch.TabIndex = 38;
			this.appicon.HeaderText = "Icon";
			this.appicon.Name = "appicon";
			this.btnCancel.AccessibleRole = AccessibleRole.PushButton;
			this.btnCancel.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCancel.set_ColorTable(0);
			this.btnCancel.Cursor = Cursors.Hand;
			this.btnCancel.set_FocusCuesEnabled(false);
			this.btnCancel.Location = new Point(205, 460);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new Size(85, 25);
			this.btnCancel.TabIndex = 37;
			this.btnCancel.Text = "Cancel";
			this.btnCancel.set_TextColor(Color.White);
			this.btnCancel.Click += new EventHandler(this.btnCancel_Click);
			this.btnSelect.AccessibleRole = AccessibleRole.PushButton;
			this.btnSelect.BackColor = Color.FromArgb(28, 158, 27);
			this.btnSelect.set_ColorTable(0);
			this.btnSelect.Cursor = Cursors.Hand;
			this.btnSelect.set_FocusCuesEnabled(false);
			this.btnSelect.Location = new Point(110, 460);
			this.btnSelect.Name = "btnSelect";
			this.btnSelect.Size = new Size(85, 25);
			this.btnSelect.TabIndex = 36;
			this.btnSelect.Text = "Select";
			this.btnSelect.set_TextColor(Color.White);
			this.btnSelect.Click += new EventHandler(this.btnSelect_Click);
			this.imageList1.ImageStream = (ImageListStreamer)componentResourceManager.GetObject("imageList1.ImageStream");
			this.imageList1.TransparentColor = Color.Transparent;
			this.imageList1.Images.SetKeyName(0, "ico_installer_IBman_128x128_Plin_Verde.ico");
			base.AcceptButton = this.btnSelect;
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			this.BackColor = Color.FromArgb(247, 247, 247);
			base.ClientSize = new Size(404, 491);
			base.Controls.Add(this.dgvKillSwitch);
			base.Controls.Add(this.btnCancel);
			base.Controls.Add(this.btnSelect);
			this.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.FromArgb(38, 47, 57);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			this.MinimumSize = new Size(420, 530);
			base.Name = "SelectRunningProcessForm";
			base.SizeGripStyle = SizeGripStyle.Hide;
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "Add a running process to the KillSwitch List";
			base.TopMost = true;
			base.Load += new EventHandler(this.SelectRunningProcessForm_Load);
			this.dgvKillSwitch.EndInit();
			base.ResumeLayout(false);
		}
	}
}
