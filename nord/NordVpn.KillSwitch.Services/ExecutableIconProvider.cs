using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Windows.Media.Imaging;

namespace NordVpn.KillSwitch.Services
{
	public class ExecutableIconProvider
	{
		public BitmapFrame GetIcon(string path)
		{
			BitmapFrame result;
			try
			{
				Icon icon = Icon.ExtractAssociatedIcon(path);
				if (icon != null)
				{
					using (Bitmap bitmap = icon.ToBitmap())
					{
						MemoryStream memoryStream = new MemoryStream();
						bitmap.Save(memoryStream, ImageFormat.Png);
						memoryStream.Seek(0L, SeekOrigin.Begin);
						result = BitmapFrame.Create(memoryStream);
						return result;
					}
				}
				result = null;
			}
			catch
			{
				result = null;
			}
			return result;
		}
	}
}
