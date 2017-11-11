using System;
using System.Management;
using System.Security.Cryptography;
using System.Text;

namespace CyberGhost.Helpers
{
	public class FingerPrint
	{
		private static string _fingerPrint = string.Empty;

		public static string Value()
		{
			if (string.IsNullOrEmpty(FingerPrint._fingerPrint))
			{
				FingerPrint._fingerPrint = FingerPrint.GetHash(string.Concat(new string[]
				{
					"CPU >> ",
					FingerPrint.CpuId(),
					"\nBIOS >> ",
					FingerPrint.BiosId(),
					"\nBASE >> ",
					FingerPrint.BaseId(),
					FingerPrint.VideoId(),
					"\nMAC >> ",
					FingerPrint.MacId()
				}));
			}
			return FingerPrint._fingerPrint;
		}

		private static string GetHash(string s)
		{
			HashAlgorithm arg_12_0 = new MD5CryptoServiceProvider();
			byte[] bytes = new ASCIIEncoding().GetBytes(s);
			return FingerPrint.GetHexString(arg_12_0.ComputeHash(bytes));
		}

		private static string GetHexString(byte[] bt)
		{
			string text = string.Empty;
			for (int i = 0; i < bt.Length; i++)
			{
				byte expr_10 = bt[i];
				int num = (int)(expr_10 & 15);
				int num2 = expr_10 >> 4 & 15;
				if (num2 > 9)
				{
					text += ((char)(num2 - 10 + 65)).ToString();
				}
				else
				{
					text += num2.ToString();
				}
				if (num > 9)
				{
					text += ((char)(num - 10 + 65)).ToString();
				}
				else
				{
					text += num.ToString();
				}
				if (i + 1 != bt.Length && (i + 1) % 2 == 0)
				{
					text += "-";
				}
			}
			return text;
		}

		private static string identifier(string wmiClass, string wmiProperty, string wmiMustBeTrue)
		{
			string text = "";
			using (ManagementObjectCollection.ManagementObjectEnumerator enumerator = new ManagementClass(wmiClass).GetInstances().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					ManagementObject managementObject = (ManagementObject)enumerator.Current;
					if (managementObject[wmiMustBeTrue].ToString() == "True" && text == "")
					{
						try
						{
							text = managementObject[wmiProperty].ToString();
							break;
						}
						catch
						{
						}
					}
				}
			}
			return text;
		}

		private static string identifier(string wmiClass, string wmiProperty)
		{
			string text = "";
			using (ManagementObjectCollection.ManagementObjectEnumerator enumerator = new ManagementClass(wmiClass).GetInstances().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					ManagementObject managementObject = (ManagementObject)enumerator.Current;
					if (text == "")
					{
						try
						{
							object expr_3A = managementObject[wmiProperty];
							text = ((expr_3A != null) ? expr_3A.ToString() : null);
							break;
						}
						catch
						{
						}
					}
				}
			}
			return text;
		}

		private static string CpuId()
		{
			string text = FingerPrint.identifier("Win32_Processor", "UniqueId");
			if (text == "")
			{
				text = FingerPrint.identifier("Win32_Processor", "ProcessorId");
				if (text == "")
				{
					text = FingerPrint.identifier("Win32_Processor", "Name");
					if (text == "")
					{
						text = FingerPrint.identifier("Win32_Processor", "Manufacturer");
					}
					text += FingerPrint.identifier("Win32_Processor", "MaxClockSpeed");
				}
			}
			return text;
		}

		private static string BiosId()
		{
			return string.Concat(new string[]
			{
				FingerPrint.identifier("Win32_BIOS", "Manufacturer"),
				FingerPrint.identifier("Win32_BIOS", "SMBIOSBIOSVersion"),
				FingerPrint.identifier("Win32_BIOS", "IdentificationCode"),
				FingerPrint.identifier("Win32_BIOS", "SerialNumber"),
				FingerPrint.identifier("Win32_BIOS", "ReleaseDate"),
				FingerPrint.identifier("Win32_BIOS", "Version")
			});
		}

		private static string DiskId()
		{
			return FingerPrint.identifier("Win32_DiskDrive", "Model") + FingerPrint.identifier("Win32_DiskDrive", "Manufacturer") + FingerPrint.identifier("Win32_DiskDrive", "Signature") + FingerPrint.identifier("Win32_DiskDrive", "TotalHeads");
		}

		private static string BaseId()
		{
			return FingerPrint.identifier("Win32_BaseBoard", "Model") + FingerPrint.identifier("Win32_BaseBoard", "Manufacturer") + FingerPrint.identifier("Win32_BaseBoard", "Name") + FingerPrint.identifier("Win32_BaseBoard", "SerialNumber");
		}

		private static string VideoId()
		{
			return FingerPrint.identifier("Win32_VideoController", "DriverVersion") + FingerPrint.identifier("Win32_VideoController", "Name");
		}

		private static string MacId()
		{
			return FingerPrint.identifier("Win32_NetworkAdapterConfiguration", "MACAddress", "IPEnabled");
		}
	}
}
