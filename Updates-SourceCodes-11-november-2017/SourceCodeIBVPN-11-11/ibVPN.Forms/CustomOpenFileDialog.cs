using DevComponents.DotNetBar;
using ibVPN.Helpers;
using System;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class CustomOpenFileDialog : Form
	{
		private const string NOTIFICATION_MESSAGE_BOX = "ibVPN client notification/info message";

		private const string BLANK_TEXT = "Paste the desired application path, here";

		private GeneralHelper helper;

		private string appName;

		private string appPath;

		private IContainer components;

		private TreeView treeView1;

		private ButtonX btnCancel;

		private ButtonX btnSelect;

		private ImageList imageList1;

		private TextBox txtMyComputer;

		private ButtonX btnMyComputer;

		public RichTextBox rchInfo;

		public string SelectedApplication
		{
			get;
			set;
		}

		public string SelectedFileApplication
		{
			get;
			set;
		}

		public Image Ico
		{
			get;
			set;
		}

		public CustomOpenFileDialog()
		{
			this.<SelectedApplication>k__BackingField = string.Empty;
			this.<SelectedFileApplication>k__BackingField = string.Empty;
			this.helper = new GeneralHelper();
			this.appName = Assembly.GetExecutingAssembly().GetName().Name;
			this.appPath = Application.ExecutablePath.ToString();
			base..ctor();
			this.InitializeComponent();
		}

		private void GetAllDrives()
		{
			string[] logicalDrives = Directory.GetLogicalDrives();
			for (int i = 0; i < logicalDrives.Count<string>(); i++)
			{
				this.AddTreeviewNode(logicalDrives[i].ToString());
			}
		}

		private void AddTreeviewNode(string driveName)
		{
			TreeNode treeNode = new TreeNode();
			treeNode.Text = driveName;
			treeNode.Tag = driveName;
			treeNode.ImageIndex = this.GetIconOfFile_Folder(driveName);
			treeNode.SelectedImageIndex = treeNode.ImageIndex;
			treeNode.Nodes.Add(" ");
			this.treeView1.Nodes.Add(treeNode);
		}

		private void treeView1_BeforeExpand(object sender, TreeViewCancelEventArgs e)
		{
			e.Node.Nodes.Clear();
			this.GetFilesAndFolder(e.Node, (string)e.Node.Tag);
		}

		private void GetFilesAndFolder(TreeNode tn, string Path)
		{
			try
			{
				string[] arg_12_0 = Directory.GetDirectories(Path);
				string[] files = Directory.GetFiles(Path, "*.exe");
				string[] array = arg_12_0;
				for (int i = 0; i < array.Length; i++)
				{
					string text = array[i];
					TreeNode treeNode = new TreeNode();
					treeNode.Tag = text;
					treeNode.Text = new DirectoryInfo(text).Name;
					treeNode.ImageIndex = this.GetIconOfFile_Folder(text);
					treeNode.SelectedImageIndex = treeNode.ImageIndex;
					treeNode.Nodes.Add(" ");
					tn.Nodes.Add(treeNode);
				}
				array = files;
				for (int i = 0; i < array.Length; i++)
				{
					string text2 = array[i];
					TreeNode treeNode2 = new TreeNode();
					treeNode2.Tag = text2;
					treeNode2.Text = new FileInfo(text2).Name;
					treeNode2.ImageIndex = this.GetIconOfFile_Folder(text2);
					treeNode2.SelectedImageIndex = treeNode2.ImageIndex;
					tn.Nodes.Add(treeNode2);
				}
			}
			catch
			{
				this.helper.MessageBoxShow("Cannot access this folder.", "ibVPN client notification/info message", 1, true, true);
			}
		}

		private bool CheckIfPathIsFile(string Path)
		{
			try
			{
				bool result;
				if ((File.GetAttributes(Path) & FileAttributes.Directory) == FileAttributes.Directory)
				{
					result = false;
					return result;
				}
				result = true;
				return result;
			}
			catch
			{
			}
			return false;
		}

		public int GetIconOfFile_Folder(string Path)
		{
			SHFILEINFO sHFILEINFO = default(SHFILEINFO);
			Win32.SHGetFileInfo(Path, 0u, ref sHFILEINFO, (uint)Marshal.SizeOf(sHFILEINFO), 256u);
			try
			{
				Icon value = Icon.FromHandle(sHFILEINFO.hIcon);
				this.imageList1.Images.Add(value);
			}
			catch
			{
			}
			return this.imageList1.Images.Count - 1;
		}

		public ImageList GetImageListOfFile_Folder(string Path)
		{
			SHFILEINFO sHFILEINFO = default(SHFILEINFO);
			Win32.SHGetFileInfo(Path, 0u, ref sHFILEINFO, (uint)Marshal.SizeOf(sHFILEINFO), 256u);
			Icon value = Icon.FromHandle(sHFILEINFO.hIcon);
			this.imageList1.Images.Add(value);
			return this.imageList1;
		}

		private void treeView1_NodeMouseClick(object sender, TreeNodeMouseClickEventArgs e)
		{
			if (this.CheckIfPathIsFile(e.Node.Tag.ToString()))
			{
				this.SelectedFileApplication = Path.GetFileName(e.Node.Tag.ToString());
				this.SelectedApplication = e.Node.Tag.ToString();
				this.Ico = this.imageList1.Images[e.Node.ImageIndex];
				return;
			}
			this.SelectedApplication = string.Empty;
			this.SelectedFileApplication = string.Empty;
		}

		private void CustomOpenFileDialog_Load(object sender, EventArgs e)
		{
			this.GetAllDrives();
			this.txtMyComputer.LostFocus += new EventHandler(this.TxtMyComputer_LostFocus);
		}

		private void TxtMyComputer_LostFocus(object sender, EventArgs e)
		{
			if (this.txtMyComputer.Text == string.Empty)
			{
				this.txtMyComputer.TextChanged -= new EventHandler(this.txtMyComputer_TextChanged);
				this.txtMyComputer.Text = "Paste the desired application path, here";
				this.txtMyComputer.TextChanged += new EventHandler(this.txtMyComputer_TextChanged);
			}
		}

		private void btnSelect_Click(object sender, EventArgs e)
		{
			if (!(this.SelectedApplication != string.Empty))
			{
				this.helper.MessageBoxShow("Please select an application !", "ibVPN client notification/info message", 2, true, true);
				return;
			}
			if (this.SelectedApplication.EndsWith("ibVPN.exe"))
			{
				this.helper.MessageBoxShow("You cannot select this application !", "ibVPN client notification/info message", 1, true, true);
				return;
			}
			base.Close();
		}

		private void btnCancel_Click(object sender, EventArgs e)
		{
			this.SelectedFileApplication = string.Empty;
			this.SelectedApplication = string.Empty;
			base.Close();
		}

		private void btnMyComputer_Click(object sender, EventArgs e)
		{
			if (this.txtMyComputer.Text != string.Empty && this.txtMyComputer.Text != "Paste the desired application path, here")
			{
				TreeNode treeNode = new TreeNode();
				treeNode.Text = this.txtMyComputer.Text.Trim();
				treeNode.Tag = this.txtMyComputer.Text.Trim();
				treeNode.ImageIndex = this.GetIconOfFile_Folder(this.txtMyComputer.Text.Trim());
				treeNode.SelectedImageIndex = treeNode.ImageIndex;
				treeNode.Nodes.Add(" ");
				this.treeView1.Nodes.Add(treeNode);
			}
		}

		private void txtMyComputer_TextChanged(object sender, EventArgs e)
		{
			if (this.txtMyComputer.Text == "Paste the desired application path, here")
			{
				this.txtMyComputer.Text = string.Empty;
			}
		}

		private void txtMyComputer_MouseDown(object sender, MouseEventArgs e)
		{
			if (this.txtMyComputer.Text == "Paste the desired application path, here")
			{
				this.txtMyComputer.Text = string.Empty;
			}
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(CustomOpenFileDialog));
			this.treeView1 = new TreeView();
			this.imageList1 = new ImageList(this.components);
			this.btnCancel = new ButtonX();
			this.btnSelect = new ButtonX();
			this.txtMyComputer = new TextBox();
			this.btnMyComputer = new ButtonX();
			this.rchInfo = new RichTextBox();
			base.SuspendLayout();
			this.treeView1.BackColor = Color.FromArgb(247, 247, 247);
			this.treeView1.BorderStyle = BorderStyle.None;
			this.treeView1.ImageIndex = 0;
			this.treeView1.ImageList = this.imageList1;
			this.treeView1.Location = new Point(14, 67);
			this.treeView1.Name = "treeView1";
			this.treeView1.SelectedImageIndex = 0;
			this.treeView1.Size = new Size(392, 375);
			this.treeView1.TabIndex = 32;
			this.treeView1.BeforeExpand += new TreeViewCancelEventHandler(this.treeView1_BeforeExpand);
			this.treeView1.NodeMouseClick += new TreeNodeMouseClickEventHandler(this.treeView1_NodeMouseClick);
			this.imageList1.ColorDepth = ColorDepth.Depth8Bit;
			this.imageList1.ImageSize = new Size(16, 16);
			this.imageList1.TransparentColor = Color.Transparent;
			this.btnCancel.AccessibleRole = AccessibleRole.PushButton;
			this.btnCancel.BackColor = Color.FromArgb(38, 47, 57);
			this.btnCancel.set_ColorTable(0);
			this.btnCancel.Cursor = Cursors.Hand;
			this.btnCancel.set_FocusCuesEnabled(false);
			this.btnCancel.Location = new Point(205, 460);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new Size(85, 25);
			this.btnCancel.set_Style(9);
			this.btnCancel.TabIndex = 34;
			this.btnCancel.Text = "Cancel";
			this.btnCancel.set_TextColor(Color.White);
			this.btnCancel.Click += new EventHandler(this.btnCancel_Click);
			this.btnSelect.AccessibleRole = AccessibleRole.PushButton;
			this.btnSelect.BackColor = Color.FromArgb(27, 158, 28);
			this.btnSelect.set_ColorTable(0);
			this.btnSelect.Cursor = Cursors.Hand;
			this.btnSelect.set_FocusCuesEnabled(false);
			this.btnSelect.Location = new Point(110, 460);
			this.btnSelect.Name = "btnSelect";
			this.btnSelect.Size = new Size(85, 25);
			this.btnSelect.set_Style(9);
			this.btnSelect.TabIndex = 33;
			this.btnSelect.Text = "Select";
			this.btnSelect.set_TextColor(Color.White);
			this.btnSelect.Click += new EventHandler(this.btnSelect_Click);
			this.txtMyComputer.Location = new Point(12, 12);
			this.txtMyComputer.Name = "txtMyComputer";
			this.txtMyComputer.Size = new Size(333, 23);
			this.txtMyComputer.TabIndex = 35;
			this.txtMyComputer.Text = "Paste the desired application path, here";
			this.txtMyComputer.TextChanged += new EventHandler(this.txtMyComputer_TextChanged);
			this.txtMyComputer.MouseDown += new MouseEventHandler(this.txtMyComputer_MouseDown);
			this.btnMyComputer.AccessibleRole = AccessibleRole.PushButton;
			this.btnMyComputer.BackColor = Color.FromArgb(27, 158, 28);
			this.btnMyComputer.set_ColorTable(0);
			this.btnMyComputer.Cursor = Cursors.Hand;
			this.btnMyComputer.set_FocusCuesEnabled(false);
			this.btnMyComputer.Location = new Point(351, 12);
			this.btnMyComputer.Name = "btnMyComputer";
			this.btnMyComputer.Size = new Size(59, 23);
			this.btnMyComputer.set_Style(9);
			this.btnMyComputer.TabIndex = 36;
			this.btnMyComputer.Text = "Add Path";
			this.btnMyComputer.set_TextColor(Color.White);
			this.btnMyComputer.Click += new EventHandler(this.btnMyComputer_Click);
			this.rchInfo.Anchor = (AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right);
			this.rchInfo.BackColor = Color.FromArgb(247, 247, 247);
			this.rchInfo.BorderStyle = BorderStyle.None;
			this.rchInfo.Enabled = false;
			this.rchInfo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.rchInfo.ForeColor = Color.FromArgb(61, 61, 61);
			this.rchInfo.Location = new Point(12, 45);
			this.rchInfo.Margin = new Padding(0);
			this.rchInfo.Name = "rchInfo";
			this.rchInfo.ReadOnly = true;
			this.rchInfo.ScrollBars = RichTextBoxScrollBars.None;
			this.rchInfo.Size = new Size(342, 16);
			this.rchInfo.TabIndex = 39;
			this.rchInfo.Text = "Please browse and select the desired application's path below:";
			base.AcceptButton = this.btnSelect;
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			this.BackColor = Color.FromArgb(247, 247, 247);
			base.ClientSize = new Size(416, 491);
			base.Controls.Add(this.rchInfo);
			base.Controls.Add(this.btnMyComputer);
			base.Controls.Add(this.txtMyComputer);
			base.Controls.Add(this.btnCancel);
			base.Controls.Add(this.btnSelect);
			base.Controls.Add(this.treeView1);
			this.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.FromArgb(61, 61, 61);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			this.MinimumSize = new Size(420, 530);
			base.Name = "CustomOpenFileDialog";
			base.SizeGripStyle = SizeGripStyle.Hide;
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "Browse and add a program to the KillSwitch List";
			base.TopMost = true;
			base.Load += new EventHandler(this.CustomOpenFileDialog_Load);
			base.ResumeLayout(false);
			base.PerformLayout();
		}
	}
}
