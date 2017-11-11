using ibVPN.Forms;
using System;
using System.Drawing;
using System.Windows.Forms;

namespace ibVPN.Helpers
{
	public class GeneralHelper
	{
		public CustomMessageBox MessageBoxShow(string message, string caption, int imageIndex, bool oneButton, bool modal)
		{
			CustomMessageBox customMessageBox = new CustomMessageBox();
			customMessageBox.Text = caption;
			customMessageBox.pictureBox1.Image = customMessageBox.imageListMessages.Images[imageIndex];
			customMessageBox.rchInfo.Text = message;
			if (message.Length > 132)
			{
				int num = customMessageBox.Width;
				int height = customMessageBox.Height;
				int num2 = (message.Length - 132) / 33;
				num += 80 * num2;
				customMessageBox.Width = num;
				customMessageBox.Height = height + 30;
				int x = customMessageBox.btnYes.Location.X + 80 * num2 / 2;
				customMessageBox.btnYes.Location = new Point(x, customMessageBox.btnYes.Location.Y + 30);
				int x2 = customMessageBox.btnNo.Location.X + 80 * num2 / 2;
				customMessageBox.btnNo.Location = new Point(x2, customMessageBox.btnNo.Location.Y + 30);
			}
			else
			{
				customMessageBox.Height -= 30;
				customMessageBox.btnYes.Location = new Point(customMessageBox.btnYes.Location.X, customMessageBox.btnYes.Location.Y - 30);
				customMessageBox.btnNo.Location = new Point(customMessageBox.btnNo.Location.X, customMessageBox.btnNo.Location.Y - 30);
			}
			if (oneButton)
			{
				customMessageBox.btnYes.Text = "OK";
				customMessageBox.btnNo.Visible = false;
				int x3 = customMessageBox.Width / 2 - customMessageBox.btnYes.Width / 2;
				int y = customMessageBox.btnYes.Location.Y;
				customMessageBox.btnYes.Location = new Point(x3, y);
			}
			customMessageBox.TopMost = true;
			if (modal)
			{
				customMessageBox.ShowDialog();
			}
			return customMessageBox;
		}

		public CustomMessageBox MessageBoxShowForTrayUse(string message, string caption, int imageIndex, bool oneButton, bool visible, bool notifyWasClicked, int locationX, int locationY, int width, int height)
		{
			CustomMessageBox customMessageBox = new CustomMessageBox();
			if (visible)
			{
				if (notifyWasClicked)
				{
					customMessageBox.StartPosition = FormStartPosition.Manual;
					customMessageBox.Location = new Point(locationX + width / 2 - customMessageBox.Width / 2, locationY + height / 2 - customMessageBox.Height / 2);
				}
				else
				{
					customMessageBox.StartPosition = FormStartPosition.CenterParent;
				}
			}
			else
			{
				customMessageBox.StartPosition = FormStartPosition.CenterScreen;
				customMessageBox.TopMost = true;
			}
			customMessageBox.Text = caption;
			customMessageBox.pictureBox1.Image = customMessageBox.imageListMessages.Images[imageIndex];
			customMessageBox.rchInfo.Text = message;
			if (message.Length > 132)
			{
				int num = customMessageBox.Width;
				int num2 = (message.Length - 132) / 33;
				num += 80 * num2;
				customMessageBox.Width = num;
				int x = customMessageBox.btnYes.Location.X + 80 * num2 / 2;
				customMessageBox.btnYes.Location = new Point(x, customMessageBox.btnYes.Location.Y);
				int x2 = customMessageBox.btnNo.Location.X + 80 * num2 / 2;
				customMessageBox.btnNo.Location = new Point(x2, customMessageBox.btnNo.Location.Y);
			}
			if (oneButton)
			{
				customMessageBox.btnYes.Text = "OK";
				customMessageBox.btnNo.Visible = false;
				int x3 = customMessageBox.Width / 2 - customMessageBox.btnYes.Width / 2;
				int y = customMessageBox.btnYes.Location.Y;
				customMessageBox.btnYes.Location = new Point(x3, y);
			}
			customMessageBox.TopMost = true;
			customMessageBox.ShowDialog();
			return customMessageBox;
		}

		public CustomMessageBox MessageBoxShowKSWAppList(string message, string caption, int imageIndex, bool oneButton, bool modal)
		{
			CustomMessageBox customMessageBox = new CustomMessageBox();
			customMessageBox.Text = caption;
			customMessageBox.pictureBox1.Image = customMessageBox.imageListMessages.Images[imageIndex];
			customMessageBox.rchInfo.Text = message;
			if (message.Length > 132)
			{
				int num = customMessageBox.Height;
				int num2 = (message.Length - 132) / 66;
				if (num2 == 0)
				{
					num += 60;
				}
				else
				{
					num += 80 * num2;
				}
				customMessageBox.Height = num;
			}
			if (oneButton)
			{
				customMessageBox.btnYes.Text = "OK";
				customMessageBox.btnNo.Visible = false;
				int x = customMessageBox.Width / 2 - customMessageBox.btnYes.Width / 2;
				int y = customMessageBox.Height - customMessageBox.btnYes.Height * 3;
				customMessageBox.btnYes.Location = new Point(x, y);
			}
			customMessageBox.TopMost = true;
			if (modal)
			{
				customMessageBox.ShowDialog();
			}
			return customMessageBox;
		}
	}
}
