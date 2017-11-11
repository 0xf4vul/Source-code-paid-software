using ibBLL;
using ibVPN.Forms;
using ibVPN.Helpers;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.NetworkInformation;
using System.Reflection;
using System.Text.RegularExpressions;
using System.Threading;
using System.Windows.Forms;
using System.Xml;

namespace ibVPN
{
	internal static class Program
	{
		private const string NOTIFICATION_MESSAGE_BOX = "ibVPN client error message";

		private static SmartDNSAdapters adaptors = new SmartDNSAdapters();

		private static DNSManager dnsManager = new DNSManager();

		private static NetworkInterface activeNIC;

		private static NetworkInterface[] nicArr;

		private const string PREFERRED_DNS = "1.2.3.4";

		private const string ADBLOCK_DNS = "1.2.3.5";

		private static string error = string.Empty;

		[STAThread]
		private static void Main()
		{
			bool flag;
			using (new Mutex(true, "ibVPN", out flag))
			{
				GeneralHelper generalHelper = new GeneralHelper();
				if (!flag)
				{
					string message = "ibVPN is already running!" + Environment.NewLine + "Please check the ibVPN icon in the notification area or in taskbar.";
					string caption = "Multiple Instances";
					generalHelper.MessageBoxShow(message, caption, 1, true, true);
				}
				else
				{
					Program.MainMethod();
				}
			}
		}

		private static void MainMethod()
		{
			Application.EnableVisualStyles();
			Application.SetCompatibleTextRenderingDefault(false);
			LoginForm mainForm = new LoginForm();
			Program.SetInitialDebugMode();
			Program.SetInitialDNS();
			Program.adaptors = Program.dnsManager.PrepareAdaptors(true);
			Application.ThreadException += new ThreadExceptionEventHandler(Program.Application_ThreadException);
			try
			{
				string name = Assembly.GetExecutingAssembly().GetName().Name;
				string text = Application.ExecutablePath.ToString();
				Hashtable settings = Program.GetSettings(text.Substring(0, text.Length - name.Length - 4) + "\\UserSettings.xml");
				if ((string)settings["remember"] == "True")
				{
					if ((string)settings["autologin"] == "True")
					{
						Application.Run(new LoginForm(true));
					}
					else
					{
						Application.Run(mainForm);
					}
				}
				else
				{
					Application.Run(mainForm);
				}
			}
			catch (Exception ex)
			{
				Logger logger = new Logger();
				string name2 = Assembly.GetExecutingAssembly().GetName().Name;
				string text2 = Application.ExecutablePath.ToString();
				string filePath = text2.Substring(0, text2.Length - name2.Length - 4) + "debug.txt";
				logger.filePath = filePath;
				try
				{
					logger.log(ex.ToString());
				}
				catch
				{
				}
				CustomErrorDialogBox customErrorDialogBox = new CustomErrorDialogBox();
				customErrorDialogBox.Text = "ibVPN client error message";
				customErrorDialogBox.pictureBox1.Image = customErrorDialogBox.imageListMessages.Images[1];
				customErrorDialogBox.rchInfo.Text = ex.ToString();
				customErrorDialogBox.TopMost = true;
				customErrorDialogBox.btnCopyToClipboard.Click += new EventHandler(Program.BtnCopyToClipboard_Click);
				Program.error = customErrorDialogBox.rchInfo.Text;
				customErrorDialogBox.ShowDialog();
				if (customErrorDialogBox.Quit)
				{
					logger.log("Eroare netratata - se va rula RestoreDNS din MainMethod - Programm.cs");
					Program.RestoreDNS();
					Program.RestoreDefaultRoute();
					Environment.Exit(1);
				}
			}
		}

		private static bool IsDNSServer(string activeDNSIp)
		{
			bool result = false;
			using (IEnumerator enumerator = Program.GetDNSServers().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if ((string)enumerator.Current == activeDNSIp)
					{
						result = true;
					}
				}
			}
			return result;
		}

		private static bool IsDNSIncorrect()
		{
			Program.activeNIC = Program.GetActiveNIC();
			bool result;
			if (Program.activeNIC != null)
			{
				string text = Program.GetActiveNicDNS(Program.activeNIC).Trim();
				result = (text.Contains("1.2.3.4") || text.Contains("1.2.3.5") || Program.IsDNSServer(text));
			}
			else
			{
				result = true;
			}
			return result;
		}

		private static void SetInitialDebugMode()
		{
			try
			{
				string name = Assembly.GetExecutingAssembly().GetName().Name;
				string text = Application.ExecutablePath.ToString();
				Hashtable arg_6C_0 = Program.GetSettings(text.Substring(0, text.Length - name.Length - 4) + "\\UserSettings.xml");
				Logger logger = new Logger();
				string text2 = text.Substring(0, text.Length - name.Length - 4) + "debug.txt";
				if (!((string)arg_6C_0["disableDebugMode"] == "True"))
				{
					logger.filePath = text2;
					logger.flush();
				}
				else if (File.Exists(text2))
				{
					File.Delete(text2);
				}
			}
			catch
			{
			}
		}

		private static ArrayList GetDNSServers()
		{
			string name = Assembly.GetExecutingAssembly().GetName().Name;
			string text = Application.ExecutablePath.ToString();
			string path = text.Substring(0, text.Length - name.Length - 4) + "DNSServers.xml";
			ArrayList arrayList = new ArrayList();
			if (File.Exists(path))
			{
				StreamReader arg_62_0 = new StreamReader(new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.Read));
				XmlDocument xmlDocument = new XmlDocument();
				string xml = arg_62_0.ReadToEnd();
				arg_62_0.Close();
				xmlDocument.LoadXml(xml);
				foreach (XmlNode xmlNode in xmlDocument.ChildNodes)
				{
					if (xmlNode.Name.Equals("servers"))
					{
						foreach (XmlNode xmlNode2 in xmlNode.ChildNodes)
						{
							if (xmlNode2.Name.Equals("ip"))
							{
								arrayList.Add(xmlNode2.InnerText);
							}
						}
					}
				}
			}
			return arrayList;
		}

		private static void SetInitialDNS()
		{
			try
			{
				string name = Assembly.GetExecutingAssembly().GetName().Name;
				string text = Application.ExecutablePath.ToString();
				Logger logger = new Logger();
				string filePath = text.Substring(0, text.Length - name.Length - 4) + "debug.txt";
				logger.filePath = filePath;
				SmartDNSClone smartDNSClone = new SmartDNSClone();
				if (Program.IsDNSIncorrect())
				{
					logger.log("s-a facut restore adaptoare din backupInitial - DNS incorect");
					smartDNSClone.RestoreFromBackup();
				}
				else
				{
					logger.log("nu s-a facut restore adaptoare din backupInitial - DNS corect");
				}
			}
			catch
			{
			}
		}

		private static NetworkInterface GetActiveNIC()
		{
			Program.nicArr = NetworkInterface.GetAllNetworkInterfaces();
			NetworkInterface[] array = Program.nicArr;
			for (int i = 0; i < array.Length; i++)
			{
				NetworkInterface networkInterface = array[i];
				UnicastIPAddressInformationCollection arg_29_0 = networkInterface.GetIPProperties().UnicastAddresses;
				string b = Program.ReadNetworkAdapter();
				using (IEnumerator<UnicastIPAddressInformation> enumerator = arg_29_0.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						if (enumerator.Current.Address.ToString() == b && !networkInterface.Name.Contains("ibvpn"))
						{
							return networkInterface;
						}
					}
				}
			}
			return null;
		}

		public static string GetActiveNicDNS(NetworkInterface adapter)
		{
			string text = string.Empty;
			IPAddressCollection dnsAddresses = adapter.GetIPProperties().DnsAddresses;
			if (dnsAddresses.Count > 0)
			{
				foreach (IPAddress current in dnsAddresses)
				{
					text = text + " " + current.ToString();
				}
			}
			return text;
		}

		private static string ReadNetworkAdapter()
		{
			int num = 0;
			bool flag = false;
			string text = string.Empty;
			ArrayList arrayList = new ArrayList();
			ArrayList arrayList2 = new ArrayList();
			List<int> list = new List<int>();
			int i = 75;
			string[] array = new string[0];
			string arg_38_0 = "\\s+";
			string replacement = "^";
			Regex regex = new Regex(arg_38_0);
			int num2 = 0;
			int num3 = 0;
			string text2 = string.Empty;
			string text3 = string.Empty;
			string result = string.Empty;
			while (i > 0)
			{
				text += "=";
				i--;
			}
			string name = Assembly.GetExecutingAssembly().GetName().Name;
			string text4 = Application.ExecutablePath.ToString();
			StreamReader streamReader = new StreamReader(text4.Substring(0, text4.Length - name.Length - 4) + "\\Resources\\routeprint.txt");
			string text5;
			while ((text5 = streamReader.ReadLine()) != null && !flag)
			{
				if (text5.Contains("Metric") || arrayList.Count > num)
				{
					num = arrayList.IndexOf(text5);
					if (text5.Contains(text))
					{
						flag = true;
					}
					else
					{
						arrayList.Add(text5);
					}
				}
			}
			arrayList.RemoveAt(0);
			foreach (string input in arrayList)
			{
				string text6 = regex.Replace(input, replacement);
				int num4 = 0;
				int num5 = 0;
				string text7 = text6;
				for (int j = 0; j < text7.Length; j++)
				{
					if (text7[j] == '^')
					{
						if (num5 == 3)
						{
							num2 = num4 + 1;
						}
						if (num5 == 4)
						{
							num3 = num4 + 1;
						}
						num5++;
					}
					num4++;
				}
				int num6 = text6.Length - num3 + 1;
				text2 = text6.Substring(num2, text6.Length - num2 - num6);
				text3 = text6.Substring(num3);
				array = new string[]
				{
					text2,
					text3
				};
				list.Add(Convert.ToInt32(array[1].ToString()));
				arrayList2.Add(array);
			}
			int num7 = 2147483647;
			foreach (int current in list)
			{
				if (current < num7)
				{
					num7 = current;
				}
			}
			foreach (string[] array2 in arrayList2)
			{
				if (array2[1] == num7.ToString())
				{
					result = array2[0];
				}
			}
			streamReader.Close();
			return result;
		}

		private static void BtnCopyToClipboard_Click(object sender, EventArgs e)
		{
			GeneralHelper generalHelper = new GeneralHelper();
			if (!string.IsNullOrEmpty(Program.error))
			{
				Program.GetMeText(Program.error);
				generalHelper.MessageBoxShow("The text has been copied to clipboard.", "ibVPN client error message", 0, true, true);
			}
		}

		private static void Application_ThreadException(object sender, ThreadExceptionEventArgs e)
		{
			Logger logger = new Logger();
			string name = Assembly.GetExecutingAssembly().GetName().Name;
			string text = Application.ExecutablePath.ToString();
			string filePath = text.Substring(0, text.Length - name.Length - 4) + "debug.txt";
			logger.filePath = filePath;
			try
			{
				logger.log(e.Exception.ToString());
			}
			catch
			{
			}
			CustomErrorDialogBox customErrorDialogBox = new CustomErrorDialogBox();
			customErrorDialogBox.Text = "ibVPN client error message";
			customErrorDialogBox.pictureBox1.Image = customErrorDialogBox.imageListMessages.Images[1];
			customErrorDialogBox.rchInfo.Text = e.Exception.ToString();
			customErrorDialogBox.TopMost = true;
			customErrorDialogBox.btnCopyToClipboard.Click += new EventHandler(Program.BtnCopyToClipboard_Click);
			Program.error = customErrorDialogBox.rchInfo.Text;
			customErrorDialogBox.ShowDialog();
			if (customErrorDialogBox.Quit)
			{
				logger.log("Eroare netrata - se va rula RestoreDNS din ApplicationThreadException - Programm.cs");
				Program.RestoreDNS();
				Program.RestoreDefaultRoute();
				Environment.Exit(1);
			}
		}

		private static void RestoreDefaultRoute()
		{
			Logger logger = new Logger();
			string name = Assembly.GetExecutingAssembly().GetName().Name;
			string text = Application.ExecutablePath.ToString();
			string filePath = text.Substring(0, text.Length - name.Length - 4) + "debug.txt";
			logger.filePath = filePath;
			string text2 = (string)Program.GetSettings(text.Substring(0, text.Length - name.Length - 4) + "\\UserSettings.xml")["defaultGateway"];
			if (text2 != null && text2 != "0.0.0.0")
			{
				logger.log("incepe btnRestoreInternet_Click- din Programm.cs");
				try
				{
					logger.log("s-a incercat RestoreDefaultRoute- din Program.cs");
					new Process
					{
						StartInfo = new ProcessStartInfo
						{
							WindowStyle = ProcessWindowStyle.Hidden,
							FileName = "cmd.exe",
							Arguments = "/c route add 0.0.0.0 mask 0.0.0.0 " + text2.ToString()
						}
					}.Start();
					logger.log("s-a reusit RestoreDefaultRoute - defaultGateway  din Program.cs : " + text2.ToString());
					return;
				}
				catch (Exception ex)
				{
					logger.log("RestoreDefaultRoute failed - din Program.cs" + ex.Message);
					return;
				}
			}
			logger.log("nu exista o ruta defaultGateway corecta- din Program.cs");
		}

		private static string GetMeText(string res)
		{
			Thread expr_1D = new Thread(delegate(object x)
			{
				try
				{
					Clipboard.SetText(res);
					res = Clipboard.GetText();
				}
				catch (Exception ex)
				{
					res = ex.Message;
				}
			});
			expr_1D.SetApartmentState(ApartmentState.STA);
			expr_1D.Start();
			expr_1D.Join();
			return res;
		}

		private static void RestoreDNS()
		{
			try
			{
				string name = Assembly.GetExecutingAssembly().GetName().Name;
				string text = Application.ExecutablePath.ToString();
				Hashtable expr_40 = Program.GetSettings(text.Substring(0, text.Length - name.Length - 4) + "\\UserSettings.xml");
				string a = (string)expr_40["forceSecureDNS"];
				string arg_81_0 = (string)expr_40["forceSecureDNSFirewall"];
				if (a == "True")
				{
					Program.dnsManager.RestoreAdaptors(Program.adaptors);
				}
				if (arg_81_0 == "True")
				{
					Program.dnsManager.ForceUnblockDnsServers();
				}
			}
			catch
			{
			}
		}

		private static Hashtable GetSettings(string userXMLLocation)
		{
			Hashtable hashtable = new Hashtable();
			GeneralHelper generalHelper = new GeneralHelper();
			try
			{
				if (File.Exists(userXMLLocation))
				{
					StreamReader arg_2D_0 = new StreamReader(new FileStream(userXMLLocation, FileMode.Open, FileAccess.Read, FileShare.Read));
					XmlDocument xmlDocument = new XmlDocument();
					string xml = arg_2D_0.ReadToEnd();
					arg_2D_0.Close();
					xmlDocument.LoadXml(xml);
					foreach (XmlNode xmlNode in xmlDocument.ChildNodes)
					{
						if (xmlNode.Name.Equals("configuration"))
						{
							foreach (XmlNode xmlNode2 in xmlNode.ChildNodes)
							{
								if (xmlNode2.Name.Equals("add"))
								{
									hashtable.Add(xmlNode2.Attributes["key"].Value, xmlNode2.Attributes["value"].Value);
								}
							}
						}
					}
				}
			}
			catch
			{
				string message = "The UserSettings.xml file cannot be read, or is missing from the installation folder. Please re-install the application, or contact ibVPN Support.";
				generalHelper.MessageBoxShow(message, "ibVPN client error message", 1, true, true);
				Environment.Exit(1);
			}
			return hashtable;
		}
	}
}
