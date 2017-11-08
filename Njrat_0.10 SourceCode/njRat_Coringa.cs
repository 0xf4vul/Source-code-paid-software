using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.IO.Compression;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;

namespace nj.Coringa
{
	public sealed class MdFN
	{
		[DebuggerNonUserCode]
		public MdFN()
		{
		}

		public static string BS(ref byte[] B)
		{
			return Encoding.Default.GetString(B);
		}

		public static void CriarSubKey(string Nome, string Dados)
		{
			try
			{
				Registry.CurrentUser.CreateSubKey("Software\\nj-RAT").SetValue(Nome, Dados);
			}
			catch (Exception expr_1B)
			{
				ProjectData.SetProjectError(expr_1B);
				Exception projectError = expr_1B;
				ProjectData.SetProjectError(projectError);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
		}

		public static string DEB(ref string s)
		{
			int num = 0;
			checked
			{
				string result;
				while (true)
				{
					try
					{
						byte[] bytes = Convert.FromBase64String(s);
						result = Encoding.UTF8.GetString(bytes);
					}
					catch (Exception expr_1C)
					{
						ProjectData.SetProjectError(expr_1C);
						Exception ex = expr_1C;
						ProjectData.SetProjectError(ex);
						Exception projectError = ex;
						ProjectData.SetProjectError(projectError);
						num++;
						bool flag = num == 3;
						if (!flag)
						{
							s += "=";
							ProjectData.ClearProjectError();
							ProjectData.ClearProjectError();
							ProjectData.ClearProjectError();
							continue;
						}
						result = null;
						ProjectData.ClearProjectError();
						ProjectData.ClearProjectError();
						ProjectData.ClearProjectError();
					}
					break;
				}
				return result;
			}
		}

		public static string ENB(ref string s)
		{
			return Convert.ToBase64String(Encoding.UTF8.GetBytes(s));
		}

		public static byte[] FDE(string base64)
		{
			return Convert.FromBase64String(base64);
		}

		public static string FEN(byte[] data)
		{
			return Convert.ToBase64String(data);
		}

		public static Array fx(byte[] b, string WRD)
		{
			List<byte[]> list = new List<byte[]>();
			MemoryStream memoryStream = new MemoryStream();
			MemoryStream memoryStream2 = new MemoryStream();
			string[] array = Strings.Split(MdFN.BS(ref b), WRD, -1, CompareMethod.Binary);
			memoryStream.Write(b, 0, array[0].Length);
			checked
			{
				memoryStream2.Write(b, array[0].Length + WRD.Length, b.Length - (array[0].Length + WRD.Length));
				list.Add(memoryStream.ToArray());
				list.Add(memoryStream2.ToArray());
				memoryStream.Dispose();
				memoryStream2.Dispose();
				return list.ToArray();
			}
		}

		public static string GEN(int longitud, int NNNNN)
		{
			string text = "012345678WERTYUIQWERTYUIOPL123456789KJHGFDSAZXC123456789VBNMQWERTY9QWERTYUIQWERTYUIOPLKJHGF123456789DSAZXCVBNMQWERTYUIOPLKJH123456789GFDSAZXCVBNMQWERTYUI123456789OPLKJHGFDSAYUIOPLKJHGFDSAZX123456789123456789123456789CVBNMOPLKJHGFDSAZXCVBNM";
			Random random = new Random();
			StringBuilder stringBuilder = new StringBuilder();
			checked
			{
				for (int i = 1; i <= longitud; i++)
				{
					int startIndex = random.Next(0, NNNNN);
					stringBuilder.Append(text.Substring(startIndex, 1));
				}
				return stringBuilder.ToString();
			}
		}

		public static object GENUMERIC()
		{
			VBMath.Randomize();
			return Conversion.Int(9f * VBMath.Rnd()) + 1f;
		}

		public static string getMD5Hash(string s)
		{
			return MdFN.getMD5Hash(MdFN.SB(ref s));
		}

		public static string getMD5Hash(byte[] B)
		{
			B = new MD5CryptoServiceProvider().ComputeHash(B);
			string text = "";
			byte[] array = B;
			checked
			{
				for (int i = 0; i < array.Length; i++)
				{
					byte b = array[i];
					text += b.ToString("x2");
				}
				return text;
			}
		}

		public static string GetValueReg(string Nome)
		{
			string result;
			try
			{
				result = Conversions.ToString(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(Registry.CurrentUser.OpenSubKey("Software\\Death-RAT").GetValue(Nome)))));
			}
			catch (Exception expr_2E)
			{
				ProjectData.SetProjectError(expr_2E);
				Exception ex = expr_2E;
				ProjectData.SetProjectError(ex);
				Exception projectError = ex;
				ProjectData.SetProjectError(projectError);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
			return result;
		}

		public static Form GFORM(string Name)
		{
			return Application.OpenForms[Name];
		}

		public static string HM()
		{
			return string.Concat(new string[]
			{
				"[",
				Conversions.ToString(DateAndTime.TimeOfDay.Hour),
				":",
				Conversions.ToString(DateAndTime.TimeOfDay.Minute),
				":",
				Conversions.ToString(DateAndTime.TimeOfDay.Second),
				"] "
			});
		}

		public static string REV(string s)
		{
			string text = "";
			char[] array = s.ToCharArray();
			checked
			{
				for (int i = 0; i < array.Length; i++)
				{
					char c = array[i];
					text = c.ToString() + text;
				}
				return text;
			}
		}

		public static string RN(int c)
		{
			Random random = new Random();
			string text = "";
			string text2 = "abcdefghijklmnopqrstuvwxyz";
			checked
			{
				for (int i = 1; i <= c; i++)
				{
					text += Conversions.ToString(text2[random.Next(0, text2.Length)]);
				}
				return text;
			}
		}

		public static byte[] SB(ref string S)
		{
			return Encoding.Default.GetBytes(S);
		}

		[DllImport("User32", CharSet = CharSet.Ansi, ExactSpelling = true, SetLastError = true)]
		public static extern bool ShowWindow(IntPtr HWND, int nCmdShow);

		public static string Siz(long s)
		{
			bool flag = s.ToString().Length < 4;
			string result;
			if (flag)
			{
				result = Conversions.ToString(s) + " Bytes";
			}
			else
			{
				double num = (double)s / 1024.0;
				flag = (num < 1024.0);
				string str;
				if (flag)
				{
					str = "KB";
				}
				else
				{
					num /= 1024.0;
					flag = (num < 1024.0);
					if (flag)
					{
						str = "MB";
					}
					else
					{
						num /= 1024.0;
						str = "GB";
					}
				}
				result = num.ToString(".0") + " " + str;
			}
			return result;
		}

		public static string StringOfuscador(int longitud)
		{
			string text = "QWERTYUIOPÇLKJHGFDSAZXQWERTYUIOPÇLKJHGFDSAZXCVBNMqwertyuiopçlkjhgfdsazxcvbnmkjsdklfjgkljhdfskjhgkjdhfskHJDSAHFHDFIKHGMJjghkdfhçgdfhjhlQWERTYUIOPÇLKJHGFDSAZXCVBNMqwertyuiopçlkjhgfdsazxcvbnmkjsdklfjgkljhdfskjhgkjdhfskHJDSAHFHDFIKHGMJjghkdfhçgdfhjhlQWERTYUIOPÇLKJHGFDSAZXCVBNMqwertyuiopçlkjhgfdsazxcvbnmkjsdklfjgkljhdfskjhgkjdhfskHJDSAHFHDFIKHGMJjghkdfhçgdfhjhlQWERTYUIOPÇLKJHGFDSAZXCVBNMqwertyuiopçlkjhgfdsazxcvbnmkjsdklfjgkljhdfskjhgkjdhfskHJDSAHFHDFIKHGMJjghkdfhçgdfhjhlQWERTYUIOPÇLKJHGFDSAZXCVBNMqwertyuiopçlkjhgfdsazxcvbnmkjsdklfjgkljhdfskjhgkjdhfskHJDSAHFHDFIKHGMJjghkdfhçgdfhjhlQWERTYUIOPÇLKJHGFDSAZXCVBNMqwertyuiopçlkjhgfdsazxcvbnmkjsdklfjgkljhdfskjhgkjdhfskHJDSAHFHDFIKHGMJjghkdfhçgdfhjhlQWERTYUIOPÇLKJHGFDSAZXCVBNMqwertyuiopçlkjhgfdsazxcvbnmkjsdklfjgkljhdfskjhgkjdhfskHJDSAHFHDFIKHGMJjghkdfhçgdfhjhlQWERTYUIOPÇLKJHGFDSAZXCVBNMqwertyuiopçlkjhgfdsazxcvbnmkjsdklfjgkljhdfskjhgkjdhfskHJDSAHFHDFIKHGMJjghkdfhçgdfhjhlCVBNMqwertyuiopçlkjhgfdsazxcvbnmkjsdklfjgkljhdfskjhgkjdhfskHJDSAHFHDFIKHGMJjghkdfhçgdfhjhl";
			Random random = new Random();
			StringBuilder stringBuilder = new StringBuilder();
			checked
			{
				for (int i = 1; i <= longitud; i++)
				{
					int startIndex = random.Next(0, 62);
					stringBuilder.Append(text.Substring(startIndex, 1));
				}
				return stringBuilder.ToString();
			}
		}

		public static byte[] ZIP(byte[] B, ref bool CM)
		{
			bool flag = CM;
			checked
			{
				byte[] result;
				if (flag)
				{
					MemoryStream memoryStream = new MemoryStream();
					GZipStream gZipStream = new GZipStream(memoryStream, CompressionMode.Compress, true);
					gZipStream.Write(B, 0, B.Length);
					gZipStream.Dispose();
					memoryStream.Position = 0L;
					byte[] array = new byte[(int)memoryStream.Length + 1 - 1 + 1 - 1 + 1];
					memoryStream.Read(array, 0, array.Length);
					memoryStream.Dispose();
					result = array;
				}
				else
				{
					MemoryStream memoryStream2 = new MemoryStream(B);
					GZipStream gZipStream2 = new GZipStream(memoryStream2, CompressionMode.Decompress);
					byte[] array2 = new byte[4];
					memoryStream2.Position = memoryStream2.Length - 5L;
					memoryStream2.Read(array2, 0, 4);
					int num = BitConverter.ToInt32(array2, 0);
					memoryStream2.Position = 0L;
					byte[] array3 = new byte[num - 1 + 1 - 1 + 1 - 1 + 1];
					gZipStream2.Read(array3, 0, num);
					gZipStream2.Dispose();
					memoryStream2.Dispose();
					result = array3;
				}
				return result;
			}
		}
	}
}
