using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Rendering;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class CustomErrorDialogBox : Form
	{
		private IContainer components;

		public RichTextBox rchInfo;

		public PictureBox pictureBox1;

		public ButtonX btnQuit;

		public ButtonX btnContinue;

		public ImageList imageListMessages;

		public ButtonX btnCopyToClipboard;

		public bool AppContinue
		{
			get;
			set;
		}

		public bool CopyToClipboard
		{
			get;
			set;
		}

		public bool Quit
		{
			get;
			set;
		}

		public CustomErrorDialogBox()
		{
			this.InitializeComponent();
			this.SetButtonsColorTable();
		}

		private void SetButtonsColorTable()
		{
			Office2007ColorTable expr_0F = ((Office2007Renderer)GlobalManager.get_Renderer()).get_ColorTable();
			Office2007ButtonItemColorTable expr_1B = expr_0F.get_ButtonItemColors().get_Item(0);
			expr_1B.MouseOver.Background = new LinearGradientColorTable(Color.Gainsboro);
			expr_1B.MouseOver.OuterBorder = new LinearGradientColorTable(Color.Gainsboro);
			expr_1B.MouseOver.InnerBorder = new LinearGradientColorTable(Color.Gainsboro);
			Office2007ButtonItemColorTable expr_78 = expr_0F.get_ButtonItemColors().get_Item(Enum.GetName(typeof(eButtonColor), 0));
			expr_78.Pressed.OuterBorder = new LinearGradientColorTable(Color.FromArgb(40, 0, 0, 0));
			expr_78.Pressed.InnerBorder = new LinearGradientColorTable(Color.White);
			expr_78.Pressed.Background = new LinearGradientColorTable(Color.FromArgb(255, 68, 91, 114));
			expr_78.MouseOver.OuterBorder = new LinearGradientColorTable(Color.FromArgb(40, 0, 0, 0));
			expr_78.MouseOver.InnerBorder = new LinearGradientColorTable(Color.White);
			expr_78.MouseOver.Background = new LinearGradientColorTable(Color.FromArgb(255, 56, 76, 100));
		}

		private void btnContinue_Click(object sender, EventArgs e)
		{
			this.AppContinue = true;
			this.CopyToClipboard = false;
			this.Quit = false;
			base.Close();
		}

		private void btnCopyToClipboard_Click(object sender, EventArgs e)
		{
			this.AppContinue = false;
			this.CopyToClipboard = true;
			this.Quit = false;
		}

		private void btnQuit_Click(object sender, EventArgs e)
		{
			this.AppContinue = false;
			this.CopyToClipboard = false;
			this.Quit = true;
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(CustomErrorDialogBox));
			this.rchInfo = new RichTextBox();
			this.pictureBox1 = new PictureBox();
			this.btnQuit = new ButtonX();
			this.btnContinue = new ButtonX();
			this.imageListMessages = new ImageList(this.components);
			this.btnCopyToClipboard = new ButtonX();
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.rchInfo.Anchor = (AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right);
			this.rchInfo.BackColor = Color.FromArgb(240, 240, 240);
			this.rchInfo.BorderStyle = BorderStyle.None;
			this.rchInfo.Enabled = false;
			this.rchInfo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.rchInfo.ForeColor = Color.FromArgb(61, 61, 61);
			this.rchInfo.Location = new Point(110, 9);
			this.rchInfo.Margin = new Padding(0);
			this.rchInfo.Name = "rchInfo";
			this.rchInfo.ReadOnly = true;
			this.rchInfo.ScrollBars = RichTextBoxScrollBars.None;
			this.rchInfo.Size = new Size(479, 246);
			this.rchInfo.TabIndex = 42;
			this.rchInfo.Text = "Please proceed to the Client Area to check your current order, or make an order for one of the ibVPN packages.";
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.InitialImage = (Image)componentResourceManager.GetObject("pictureBox1.InitialImage");
			this.pictureBox1.Location = new Point(15, 5);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(80, 80);
			this.pictureBox1.TabIndex = 41;
			this.pictureBox1.TabStop = false;
			this.btnQuit.AccessibleRole = AccessibleRole.PushButton;
			this.btnQuit.BackColor = Color.FromArgb(38, 47, 57);
			this.btnQuit.set_ColorTable(0);
			this.btnQuit.Cursor = Cursors.Hand;
			this.btnQuit.set_FocusCuesEnabled(false);
			this.btnQuit.Location = new Point(358, 265);
			this.btnQuit.Name = "btnQuit";
			this.btnQuit.Size = new Size(111, 29);
			this.btnQuit.set_Style(9);
			this.btnQuit.TabIndex = 40;
			this.btnQuit.Text = "Quit";
			this.btnQuit.set_TextColor(Color.White);
			this.btnQuit.Click += new EventHandler(this.btnQuit_Click);
			this.btnContinue.AccessibleRole = AccessibleRole.PushButton;
			this.btnContinue.BackColor = Color.FromArgb(27, 158, 28);
			this.btnContinue.set_ColorTable(0);
			this.btnContinue.Cursor = Cursors.Hand;
			this.btnContinue.set_FocusCuesEnabled(false);
			this.btnContinue.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnContinue.Location = new Point(130, 265);
			this.btnContinue.Name = "btnContinue";
			this.btnContinue.Size = new Size(111, 29);
			this.btnContinue.set_Style(9);
			this.btnContinue.TabIndex = 39;
			this.btnContinue.Text = "Continue";
			this.btnContinue.set_TextColor(Color.White);
			this.btnContinue.Click += new EventHandler(this.btnContinue_Click);
			this.imageListMessages.ImageStream = (ImageListStreamer)componentResourceManager.GetObject("imageListMessages.ImageStream");
			this.imageListMessages.TransparentColor = Color.Transparent;
			this.imageListMessages.Images.SetKeyName(0, "alert-confirm_ok.png");
			this.imageListMessages.Images.SetKeyName(1, "alert-close3_app.png");
			this.imageListMessages.Images.SetKeyName(2, "alert-confirm_request.png");
			this.imageListMessages.Images.SetKeyName(3, "alert-server_change.png");
			this.btnCopyToClipboard.AccessibleRole = AccessibleRole.PushButton;
			this.btnCopyToClipboard.BackColor = Color.FromArgb(27, 158, 28);
			this.btnCopyToClipboard.set_ColorTable(0);
			this.btnCopyToClipboard.Cursor = Cursors.Hand;
			this.btnCopyToClipboard.set_FocusCuesEnabled(false);
			this.btnCopyToClipboard.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnCopyToClipboard.Location = new Point(244, 265);
			this.btnCopyToClipboard.Name = "btnCopyToClipboard";
			this.btnCopyToClipboard.Size = new Size(111, 29);
			this.btnCopyToClipboard.set_Style(9);
			this.btnCopyToClipboard.TabIndex = 43;
			this.btnCopyToClipboard.Text = "Copy to clipboard";
			this.btnCopyToClipboard.set_TextColor(Color.White);
			this.btnCopyToClipboard.Click += new EventHandler(this.btnCopyToClipboard_Click);
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(598, 307);
			base.Controls.Add(this.btnCopyToClipboard);
			base.Controls.Add(this.rchInfo);
			base.Controls.Add(this.pictureBox1);
			base.Controls.Add(this.btnQuit);
			base.Controls.Add(this.btnContinue);
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "CustomErrorDialogBox";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "CustomErrorDialogBox";
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
