using System;
using System.Drawing;
using System.Linq;
using System.Management;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ibVPN.Helpers
{
	public class CustomOpenFileDialogHelper
	{
		private ImageList imageList1 = new ImageList();

		public int GetIconOfFile_Folder(string Path)
		{
			SHFILEINFO sHFILEINFO = default(SHFILEINFO);
			Win32.SHGetFileInfo(Path, 0u, ref sHFILEINFO, (uint)Marshal.SizeOf(sHFILEINFO), 256u);
			Icon value = Icon.FromHandle(sHFILEINFO.hIcon);
			this.imageList1.Images.Add(value);
			return this.imageList1.Images.Count - 1;
		}

		public string GetMainModuleFilepath(int processId)
		{
			using (ManagementObjectSearcher managementObjectSearcher = new ManagementObjectSearcher("SELECT ProcessId, ExecutablePath FROM Win32_Process WHERE ProcessId = " + processId))
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

		public ImageList GetImageListOfFile_Folder(string Path)
		{
			SHFILEINFO sHFILEINFO = default(SHFILEINFO);
			Win32.SHGetFileInfo(Path, 0u, ref sHFILEINFO, (uint)Marshal.SizeOf(sHFILEINFO), 256u);
			Icon value = Icon.FromHandle(sHFILEINFO.hIcon);
			this.imageList1.Images.Add(value);
			return this.imageList1;
		}
	}
}
