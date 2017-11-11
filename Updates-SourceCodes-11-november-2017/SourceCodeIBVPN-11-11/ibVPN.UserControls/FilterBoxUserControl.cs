using DevComponents.DotNetBar.Controls;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.UserControls
{
	public class FilterBoxUserControl : UserControl
	{
		private IContainer components;

		public TextBoxX txtSearch;

		public FilterBoxUserControl()
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
			this.txtSearch = new TextBoxX();
			base.SuspendLayout();
			this.txtSearch.AcceptsTab = true;
			this.txtSearch.AccessibleDescription = "";
			this.txtSearch.BackColor = SystemColors.Control;
			this.txtSearch.get_Border().set_CornerType(1);
			this.txtSearch.set_DisabledBackColor(SystemColors.Control);
			this.txtSearch.set_FocusHighlightColor(Color.Empty);
			this.txtSearch.Font = new Font("Segoe UI", 9f);
			this.txtSearch.ForeColor = Color.FromArgb(38, 47, 57);
			this.txtSearch.Location = new Point(0, 7);
			this.txtSearch.Margin = new Padding(0);
			this.txtSearch.MaximumSize = new Size(160, 15);
			this.txtSearch.MinimumSize = new Size(160, 15);
			this.txtSearch.Name = "txtSearch";
			this.txtSearch.Size = new Size(160, 15);
			this.txtSearch.TabIndex = 35;
			this.txtSearch.WordWrap = false;
			base.AutoScaleDimensions = new SizeF(96f, 96f);
			base.AutoScaleMode = AutoScaleMode.Dpi;
			this.BackColor = SystemColors.ActiveCaption;
			base.Controls.Add(this.txtSearch);
			base.Name = "FilterBoxUserControl";
			base.Size = new Size(160, 30);
			base.ResumeLayout(false);
		}
	}
}
