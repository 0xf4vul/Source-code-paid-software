using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Helpers;
using CyberGhost.Settings.Settings;
using MobileConcepts.Helpers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace CyberGhost.Helpers
{
	public class CgApiHelper
	{
		public static bool DoVersionCheck()
		{
			Version version = ObjectHolder.CurrentStatus.RequiredCg6ClientVersion();
			Version version2 = Assembly.GetExecutingAssembly().GetName().Version;
			Version obj = Version.Parse("6.0.0.0");
			return version == null || version2.Equals(obj) || version2 >= version;
		}

		public static async Task LoadHintsFromCsv()
		{
			try
			{
				string path = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "hint");
				if (!File.Exists(path))
				{
					await CgApiHelper.FetchRandomHintS();
				}
				string[] arg_CE_0 = CgApiHelper.Base64Decode(File.ReadAllText(path)).Split(new char[]
				{
					'\n'
				});
				ObjectHolder.HintList = new CgApiHintList();
				ObjectHolder.HintList.get_Items().Clear();
				for (int var_3_D0 = 0; var_3_D0 < arg_CE_0.Length; var_3_D0++)
				{
					string var_4_D9 = arg_CE_0[var_3_D0];
					if (!string.IsNullOrEmpty(var_4_D9))
					{
						string[] var_5_F9 = var_4_D9.Split(new char[]
						{
							';'
						});
						CgApiHint expr_100 = new CgApiHint();
						expr_100.set_Id(int.Parse(var_5_F9[0]));
						CgApiDisplaynameLocalization expr_115 = new CgApiDisplaynameLocalization();
						expr_115.set_DefaultString(var_5_F9[2]);
						expr_115.set_Strings(new Dictionary<string, string>());
						expr_100.set_Description(expr_115);
						expr_100.get_Description().get_Strings()["de"] = var_5_F9[1];
						expr_100.get_Description().get_Strings()["en"] = var_5_F9[2];
						expr_100.get_Description().get_Strings()["es"] = var_5_F9[3];
						expr_100.get_Description().get_Strings()["fr"] = var_5_F9[4];
						expr_100.get_Description().get_Strings()["it"] = var_5_F9[5];
						expr_100.get_Description().get_Strings()["pl"] = var_5_F9[6];
						expr_100.get_Description().get_Strings()["ro"] = var_5_F9[7];
						expr_100.get_Description().get_Strings()["ru"] = var_5_F9[8];
						expr_100.set_Profile(var_5_F9[9]);
						ObjectHolder.HintList.get_Items().Add(expr_100);
					}
				}
				path = null;
			}
			catch (Exception var_7_234)
			{
				HelperFunctions.DebugLine(string.Format("CgiApiHelper::{0} COULD NOT LOAD HINT FROM CSV {1}", MethodBase.GetCurrentMethod().Name, var_7_234.Message));
			}
		}

		public static async Task FetchRandomHintS()
		{
			try
			{
				StringBuilder stringBuilder = new StringBuilder();
				ObjectHolder.HintList = new CgApiHintList();
				await ObjectHolder.HintList.Fetch();
				List<CgApiHint>.Enumerator var_2 = ObjectHolder.HintList.get_Items().GetEnumerator();
				try
				{
					while (var_2.MoveNext())
					{
						CgApiHint var_3_A5 = var_2.Current;
						object var_4_B1 = var_3_A5.get_Description().get_DefaultString();
						object var_5_BE = var_3_A5.get_Description().get_DefaultString();
						object var_6_CB = var_3_A5.get_Description().get_DefaultString();
						object var_7_D8 = var_3_A5.get_Description().get_DefaultString();
						object var_8_E5 = var_3_A5.get_Description().get_DefaultString();
						object var_9_F2 = var_3_A5.get_Description().get_DefaultString();
						object var_10_FF = var_3_A5.get_Description().get_DefaultString();
						object var_11_10C = var_3_A5.get_Description().get_DefaultString();
						object var_12_114 = var_3_A5.get_Profile();
						if (var_3_A5.get_Description().get_Strings().ContainsKey("de"))
						{
							var_4_B1 = var_3_A5.get_Description().get_Strings()["de"];
						}
						if (var_3_A5.get_Description().get_Strings().ContainsKey("en"))
						{
							var_5_BE = var_3_A5.get_Description().get_Strings()["en"];
						}
						if (var_3_A5.get_Description().get_Strings().ContainsKey("es"))
						{
							var_6_CB = var_3_A5.get_Description().get_Strings()["es"];
						}
						if (var_3_A5.get_Description().get_Strings().ContainsKey("fr"))
						{
							var_7_D8 = var_3_A5.get_Description().get_Strings()["fr"];
						}
						if (var_3_A5.get_Description().get_Strings().ContainsKey("it"))
						{
							var_8_E5 = var_3_A5.get_Description().get_Strings()["it"];
						}
						if (var_3_A5.get_Description().get_Strings().ContainsKey("pl"))
						{
							var_9_F2 = var_3_A5.get_Description().get_Strings()["pl"];
						}
						if (var_3_A5.get_Description().get_Strings().ContainsKey("ro"))
						{
							var_11_10C = var_3_A5.get_Description().get_Strings()["ro"];
						}
						if (var_3_A5.get_Description().get_Strings().ContainsKey("ru"))
						{
							var_10_FF = var_3_A5.get_Description().get_Strings()["ru"];
						}
						stringBuilder.AppendLine(string.Format("{0};{1};{2};{3};{4};{5};{6};{7};{8};{9}", new object[]
						{
							var_3_A5.get_Id(),
							var_4_B1,
							var_5_BE,
							var_6_CB,
							var_7_D8,
							var_8_E5,
							var_9_F2,
							var_11_10C,
							var_10_FF,
							var_12_114
						}));
					}
				}
				finally
				{
					int num;
					if (num < 0)
					{
						var_2.Dispose();
					}
				}
				File.WriteAllText(Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "hint"), CgApiHelper.Base64Encode(stringBuilder.ToString()));
				stringBuilder = null;
			}
			catch (Exception var_14_336)
			{
				HelperFunctions.DebugLine(string.Format("CgiApiHelper::{0} COULD NOT FETCH RANDOM HINT {1}", MethodBase.GetCurrentMethod().Name, var_14_336.Message));
			}
		}

		public static async Task LoadProgramsFromCsv()
		{
			try
			{
				string path = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "programs");
				if (!File.Exists(path))
				{
					await CgApiHelper.FetchProgramList();
				}
				string[] arg_CE_0 = CgApiHelper.Base64Decode(File.ReadAllText(path)).Split(new char[]
				{
					'\n'
				});
				ObjectHolder.ProgramList = new CgApiProgramList();
				ObjectHolder.ProgramList.get_Items().Clear();
				for (int var_3_D0 = 0; var_3_D0 < arg_CE_0.Length; var_3_D0++)
				{
					string var_4_D6 = arg_CE_0[var_3_D0];
					if (!string.IsNullOrEmpty(var_4_D6))
					{
						string[] var_5_F3 = var_4_D6.Split(new char[]
						{
							';'
						});
						CgApiProgram expr_FA = new CgApiProgram();
						expr_FA.set_Id(int.Parse(var_5_F3[0]));
						expr_FA.set_ExeName(var_5_F3[1]);
						expr_FA.set_RegName(var_5_F3[2]);
						ObjectHolder.ProgramList.get_Items().Add(expr_FA);
					}
				}
				path = null;
			}
			catch (Exception var_7_143)
			{
				HelperFunctions.DebugLine(string.Format("CgApiHelper::{0} COULD NOT LOAD PROGS FROM CSV {1}", MethodBase.GetCurrentMethod().Name, var_7_143.Message));
			}
		}

		public static async Task FetchProgramList()
		{
			try
			{
				StringBuilder stringBuilder = new StringBuilder();
				ObjectHolder.ProgramList = new CgApiProgramList();
				await ObjectHolder.ProgramList.Fetch();
				List<CgApiProgram>.Enumerator var_2 = ObjectHolder.ProgramList.get_Items().GetEnumerator();
				try
				{
					while (var_2.MoveNext())
					{
						CgApiProgram expr_A2 = var_2.Current;
						stringBuilder.AppendLine(string.Format("{0};{1};{2}", expr_A2.get_Id().ToString(), expr_A2.get_ExeName(), expr_A2.get_RegName()));
					}
				}
				finally
				{
					int num;
					if (num < 0)
					{
						var_2.Dispose();
					}
				}
				File.WriteAllText(Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), "programs"), CgApiHelper.Base64Encode(stringBuilder.ToString()));
				stringBuilder = null;
			}
			catch (Exception var_8_130)
			{
				HelperFunctions.DebugLine(string.Format("CgApiHelper::{0} COULD NOT FETCH PROGRAM {1}", MethodBase.GetCurrentMethod().Name, var_8_130.Message));
			}
		}

		public static string Base64Encode(string plainText)
		{
			return Convert.ToBase64String(Encoding.UTF8.GetBytes(plainText));
		}

		public static string Base64Decode(string base64EncodedData)
		{
			byte[] bytes = Convert.FromBase64String(base64EncodedData);
			return Encoding.UTF8.GetString(bytes);
		}

		public static CgBase SetFeaturesByProfile(CgBase profile, CgApiUser user = null)
		{
			if (profile == null)
			{
				return null;
			}
			if (user == null)
			{
				user = ObjectHolder.CurrentUser;
			}
			if (user == null)
			{
				return null;
			}
			string baseName = profile.GetBaseName();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(baseName);
			if (num <= 1377339077u)
			{
				if (num != 120087624u)
				{
					if (num != 542584942u)
					{
						if (num == 1377339077u)
						{
							if (baseName == "network")
							{
								SettingsHelpers.SetDefaultFeaturesNetwork(profile, user);
							}
						}
					}
					else if (baseName == "custom")
					{
						SettingsHelpers.SetDefaultFeaturesCustom(profile, user);
					}
				}
				else if (baseName == "wifi")
				{
					SettingsHelpers.SetDefaultFeaturesWifi(profile, user);
				}
			}
			else if (num <= 1879243226u)
			{
				if (num != 1741922751u)
				{
					if (num == 1879243226u)
					{
						if (baseName == "anonymousDownloading")
						{
							SettingsHelpers.SetDefaultFeaturesAnonymousDownloading(profile, user);
						}
					}
				}
				else if (baseName == "unblock")
				{
					SettingsHelpers.SetDefaultFeaturesUnblock(profile, user);
				}
			}
			else if (num != 2687971255u)
			{
				if (num == 2889374611u)
				{
					if (baseName == "antiCensor")
					{
						SettingsHelpers.SetDefaultFeaturesAntiCensor(profile, user);
					}
				}
			}
			else if (baseName == "anonymousBrowsing")
			{
				SettingsHelpers.SetDefaultFeaturesAnonymousBrowsing(profile, user);
			}
			return profile;
		}

		public static Channel GetLoginSystemChannel()
		{
			string text = SettingsHolder.get_Settings().get_LoginServer();
			if (string.IsNullOrEmpty(text))
			{
				text = "rest.cyberghostvpn.com";
			}
			if (text.Contains("rest"))
			{
				return 5;
			}
			if (text.Contains("beta-api"))
			{
				return 3;
			}
			if (text.Contains("dev-api"))
			{
				return 1;
			}
			return 0;
		}
	}
}
