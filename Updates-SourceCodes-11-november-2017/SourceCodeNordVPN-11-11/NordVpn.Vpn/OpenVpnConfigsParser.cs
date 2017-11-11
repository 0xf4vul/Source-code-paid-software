using NordVpn.Core.Models;
using NordVpn.Shared;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace NordVpn.Vpn
{
	public class OpenVpnConfigsParser
	{
		public OpenVpnConfig Parse(string file)
		{
			OpenVpnConfig result;
			using (StreamReader streamReader = File.OpenText(file))
			{
				string text = "";
				string text2 = "";
				string text3;
				while ((text3 = streamReader.ReadLine()) != null)
				{
					text3 = text3.Trim();
					if (OpenVpnConfigsParser.StartsWithName(text3, "proto"))
					{
						text = OpenVpnConfigsParser.ParseLine(text3).Skip(1).FirstOrDefault<string>();
					}
					if (OpenVpnConfigsParser.StartsWithName(text3, "remote"))
					{
						text2 = OpenVpnConfigsParser.ParseLine(text3).Skip(1).FirstOrDefault<string>();
					}
					if (!string.IsNullOrEmpty(text) && !string.IsNullOrEmpty(text2))
					{
						break;
					}
				}
				if (string.IsNullOrEmpty(text))
				{
					throw new InvalidOpenVpnConfigException("OpenVPN config is invalid. Protocol value is missing");
				}
				if (string.IsNullOrEmpty(text2))
				{
					throw new InvalidOpenVpnConfigException("OpenVPN config is invalid. Remote value is missing");
				}
				result = new OpenVpnConfig(file, text2, text);
			}
			return result;
		}

		private static bool StartsWithName(string line, string name)
		{
			return line.StartsWithIgnoringCase(name + " ") || line.StartsWithIgnoringCase(name + "\t") || line.EqualsIgnoringCase(name);
		}

		private static List<string> ParseLine(string line)
		{
			List<string> list = new List<string>();
			string text = "";
			bool flag = false;
			bool flag2 = false;
			for (int i = 0; i < line.Length; i++)
			{
				char c = line[i];
				if (flag2)
				{
					if (c != 'n')
					{
						if (c != 't')
						{
							text += c.ToString();
						}
						else
						{
							text += "\t";
						}
					}
					else
					{
						text += "\n";
					}
					flag2 = false;
				}
				else if (c == '"')
				{
					flag = !flag;
				}
				else if (c == '\\')
				{
					flag2 = true;
				}
				else if ((c == ' ' || c == '\t') && !flag)
				{
					if (text.Length > 0)
					{
						list.Add(text);
						text = "";
					}
				}
				else
				{
					text += c.ToString();
				}
			}
			if (text.Length > 0)
			{
				list.Add(text);
			}
			return list;
		}
	}
}
