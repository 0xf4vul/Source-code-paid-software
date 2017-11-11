using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Rendering;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Forms
{
	public class CustomMessageBox : Form
	{
		private IContainer components;

		public ButtonX btnNo;

		public ButtonX btnYes;

		public PictureBox pictureBox1;

		public RichTextBox rchInfo;

		public ImageList imageListMessages;

		public bool Yes
		{
			get;
			set;
		}

		public bool No
		{
			get;
			set;
		}

		public CustomMessageBox()
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

		private void btnYes_Click(object sender, EventArgs e)
		{
			this.Yes = true;
			this.No = false;
			base.Close();
		}

		private void btnNo_Click(object sender, EventArgs e)
		{
			this.Yes = false;
			this.No = true;
			base.Close();
		}

		private void CustomMessageBox_Load(object sender, EventArgs e)
		{
			this.btnYes.AccessibleDescription = this.rchInfo.Text;
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
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(CustomMessageBox));
			this.btnNo = new ButtonX();
			this.btnYes = new ButtonX();
			this.pictureBox1 = new PictureBox();
			this.rchInfo = new RichTextBox();
			this.imageListMessages = new ImageList(this.components);
			((ISupportInitialize)this.pictureBox1).BeginInit();
			base.SuspendLayout();
			this.btnNo.AccessibleRole = AccessibleRole.PushButton;
			this.btnNo.BackColor = Color.FromArgb(38, 47, 57);
			this.btnNo.set_ColorTable(0);
			this.btnNo.Cursor = Cursors.Hand;
			this.btnNo.set_FocusCuesEnabled(false);
			this.btnNo.Location = new Point(217, 126);
			this.btnNo.Name = "btnNo";
			this.btnNo.Size = new Size(99, 29);
			this.btnNo.set_Style(9);
			this.btnNo.TabIndex = 20;
			this.btnNo.Text = "No";
			this.btnNo.set_TextColor(Color.White);
			this.btnNo.Click += new EventHandler(this.btnNo_Click);
			this.btnYes.AccessibleRole = AccessibleRole.PushButton;
			this.btnYes.BackColor = Color.FromArgb(27, 158, 28);
			this.btnYes.set_ColorTable(0);
			this.btnYes.Cursor = Cursors.Hand;
			this.btnYes.set_FocusCuesEnabled(false);
			this.btnYes.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.btnYes.Location = new Point(110, 126);
			this.btnYes.Name = "btnYes";
			this.btnYes.Size = new Size(99, 29);
			this.btnYes.set_Style(9);
			this.btnYes.TabIndex = 19;
			this.btnYes.Text = "Yes";
			this.btnYes.set_TextColor(Color.White);
			this.btnYes.Click += new EventHandler(this.btnYes_Click);
			this.pictureBox1.Image = (Image)componentResourceManager.GetObject("pictureBox1.Image");
			this.pictureBox1.InitialImage = (Image)componentResourceManager.GetObject("pictureBox1.InitialImage");
			this.pictureBox1.Location = new Point(15, 12);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new Size(80, 80);
			this.pictureBox1.TabIndex = 21;
			this.pictureBox1.TabStop = false;
			this.rchInfo.Anchor = (AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right);
			this.rchInfo.BackColor = Color.FromArgb(240, 240, 240);
			this.rchInfo.BorderStyle = BorderStyle.None;
			this.rchInfo.Enabled = false;
			this.rchInfo.Font = new Font("Segoe UI", 9f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.rchInfo.ForeColor = Color.FromArgb(61, 61, 61);
			this.rchInfo.Location = new Point(110, 16);
			this.rchInfo.Margin = new Padding(0);
			this.rchInfo.Name = "rchInfo";
			this.rchInfo.ReadOnly = true;
			this.rchInfo.ScrollBars = RichTextBoxScrollBars.None;
			this.rchInfo.Size = new Size(289, 96);
			this.rchInfo.TabIndex = 38;
			this.rchInfo.Text = "Please proceed to the Client Area to check your current order, or make an order for one of the ibVPN packages.";
			this.imageListMessages.ImageStream = (ImageListStreamer)componentResourceManager.GetObject("imageListMessages.ImageStream");
			this.imageListMessages.TransparentColor = Color.Transparent;
			this.imageListMessages.Images.SetKeyName(0, "alert-confirm_ok.png");
			this.imageListMessages.Images.SetKeyName(1, "alert-close3_app.png");
			this.imageListMessages.Images.SetKeyName(2, "alert-confirm_request.png");
			this.imageListMessages.Images.SetKeyName(3, "alert-server_change.png");
			base.AutoScaleDimensions = new SizeF(6f, 13f);
			base.AutoScaleMode = AutoScaleMode.Font;
			base.ClientSize = new Size(408, 166);
			base.Controls.Add(this.rchInfo);
			base.Controls.Add(this.pictureBox1);
			base.Controls.Add(this.btnNo);
			base.Controls.Add(this.btnYes);
			base.FormBorderStyle = FormBorderStyle.FixedSingle;
			base.Icon = (Icon)componentResourceManager.GetObject("$this.Icon");
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "CustomMessageBox";
			base.StartPosition = FormStartPosition.CenterParent;
			this.Text = "CustomMessageBox";
			base.Load += new EventHandler(this.CustomMessageBox_Load);
			((ISupportInitialize)this.pictureBox1).EndInit();
			base.ResumeLayout(false);
		}
	}
}
