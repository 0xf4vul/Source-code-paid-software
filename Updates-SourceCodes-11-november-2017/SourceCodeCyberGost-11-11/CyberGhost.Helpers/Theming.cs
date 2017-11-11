using CyberGhost.Settings;
using FirstFloor.ModernUI.Presentation;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using System;
using System.ComponentModel;
using System.IO;
using System.Runtime.CompilerServices;

namespace CyberGhost.Helpers
{
	public static class Theming
	{
		public delegate void NotifyEvent();

		public enum Theme
		{
			[Description("")]
			Regular,
			[Description("Pro")]
			Pro
		}

		public enum ThemeSet
		{
			Regular,
			Error,
			Connected
		}

		private static volatile Theming.Theme _currentTheme;

		private static volatile Theming.ThemeSet _currentThemeSet;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public static event Theming.NotifyEvent ThemeChanged;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public static event Theming.NotifyEvent ThemeSetChanged;

		public static Theming.Theme CurrentTheme
		{
			get
			{
				return Theming._currentTheme;
			}
			set
			{
				Theming._currentTheme = value;
				Theming.UpdateThemeSet();
				Theming.NotifyEvent expr_12 = Theming.ThemeChanged;
				if (expr_12 == null)
				{
					return;
				}
				expr_12();
			}
		}

		public static Theming.ThemeSet CurrentThemeSet
		{
			get
			{
				return Theming._currentThemeSet;
			}
			set
			{
				Theming._currentThemeSet = value;
				Theming.UpdateThemeSet();
				Theming.NotifyEvent expr_12 = Theming.ThemeSetChanged;
				if (expr_12 == null)
				{
					return;
				}
				expr_12();
			}
		}

		private static void UpdateThemeSet()
		{
			Theming.ThemeSet currentThemeSet = Theming._currentThemeSet;
			if (currentThemeSet == Theming.ThemeSet.Error)
			{
				Theming.SetErrorTheme();
				return;
			}
			if (currentThemeSet != Theming.ThemeSet.Connected)
			{
				Theming.SetRegularTheme();
				return;
			}
			Theming.SetProfileTheme();
		}

		public static string GetProductName()
		{
			Theming.Theme currentTheme = Theming.CurrentTheme;
			if (currentTheme != Theming.Theme.Pro)
			{
				return "CyberGhost";
			}
			return "CyberGhost Pro";
		}

		public static string GetThemedImage(string relativeImagePath)
		{
			relativeImagePath = relativeImagePath.Replace('/', '\\');
			if (relativeImagePath.StartsWith("\\") && relativeImagePath.Length > 1)
			{
				relativeImagePath = relativeImagePath.Substring(1);
			}
			string dataPath = HelperFunctions.get_DataPath();
			string text = Path.Combine(dataPath, "Assets", EumExtensions.GetDescription<Theming.Theme>(Theming.CurrentTheme), relativeImagePath);
			if (!File.Exists(text))
			{
				return Path.Combine(dataPath, "Assets", relativeImagePath);
			}
			return text;
		}

		private static string GetThemeFolder()
		{
			return string.Format("/Themes/{0}/", EumExtensions.GetDescription<Theming.Theme>(Theming.CurrentTheme)).Replace("//", "/");
		}

		private static void SetErrorTheme()
		{
			AppearanceManager.get_Current().set_ThemeSource(new Uri(string.Format("{0}ModernUI.CyberGhost.xaml", Theming.GetThemeFolder()), UriKind.Relative));
		}

		private static void SetRegularTheme()
		{
			AppearanceManager.get_Current().set_ThemeSource(new Uri(string.Format("{0}ModernUI.CyberGhost.xaml", Theming.GetThemeFolder()), UriKind.Relative));
		}

		private static void SetProfileTheme()
		{
			string text = string.Empty;
			string connectedProfileName = SettingsHolder.get_Settings().get_ConnectedProfileName();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(connectedProfileName);
			if (num <= 1377339077u)
			{
				if (num != 120087624u)
				{
					if (num != 542584942u)
					{
						if (num == 1377339077u)
						{
							if (connectedProfileName == "network")
							{
								text = "Network";
							}
						}
					}
					else if (connectedProfileName == "custom")
					{
						text = "Custom";
					}
				}
				else if (connectedProfileName == "wifi")
				{
					text = "Wifi";
				}
			}
			else if (num <= 1879243226u)
			{
				if (num != 1741922751u)
				{
					if (num == 1879243226u)
					{
						if (connectedProfileName == "anonymousDownloading")
						{
							text = "AnonymousDownloading";
						}
					}
				}
				else if (connectedProfileName == "unblock")
				{
					text = "Unblock";
				}
			}
			else if (num != 2687971255u)
			{
				if (num == 2889374611u)
				{
					if (connectedProfileName == "antiCensor")
					{
						text = "Uncensoring";
					}
				}
			}
			else if (connectedProfileName == "anonymousBrowsing")
			{
				text = "AnonymousBrowsing";
			}
			if (!string.IsNullOrEmpty(text))
			{
				AppearanceManager.get_Current().set_ThemeSource(new Uri(string.Format("{0}ModernUI.CyberGhost.Connected.{1}.xaml", Theming.GetThemeFolder(), text), UriKind.Relative));
				return;
			}
			AppearanceManager.get_Current().set_ThemeSource(new Uri(string.Format("{0}ModernUI.CyberGhost.xaml", Theming.GetThemeFolder()), UriKind.Relative));
		}
	}
}
