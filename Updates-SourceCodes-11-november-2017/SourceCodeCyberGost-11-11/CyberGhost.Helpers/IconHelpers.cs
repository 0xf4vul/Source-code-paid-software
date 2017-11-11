using CyberGhost.Settings;
using System;
using System.Drawing;
using System.Runtime.CompilerServices;

namespace CyberGhost.Helpers
{
	public sealed class IconHelpers
	{
		public static Icon DisabledIcon
		{
			get;
			set;
		}

		public static Icon RegularIcon
		{
			get;
			set;
		}

		public static Icon CensorConnectingIcon
		{
			get;
			set;
		}

		public static Icon CensorConnectedIcon
		{
			get;
			set;
		}

		public static Icon CustomConnectingIcon
		{
			get;
			set;
		}

		public static Icon CustomConnectedIcon
		{
			get;
			set;
		}

		public static Icon DownloadConnectingIcon
		{
			get;
			set;
		}

		public static Icon DownloadConnectedIcon
		{
			get;
			set;
		}

		public static Icon SurfConnectingIcon
		{
			get;
			set;
		}

		public static Icon SurfConnectedIcon
		{
			get;
			set;
		}

		public static Icon UnblockConnectingIcon
		{
			get;
			set;
		}

		public static Icon UnblockConnectedIcon
		{
			get;
			set;
		}

		public static Icon WifiConnectingIcon
		{
			get;
			set;
		}

		public static Icon WifiConnectedIcon
		{
			get;
			set;
		}

		public static IconHelpers Instance
		{
			[CompilerGenerated]
			get
			{
				return IconHelpers.<Instance>k__BackingField;
			}
		}

		public void InitTrayIcons()
		{
			IconHelpers.DisabledIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\Disabled.ico"));
			IconHelpers.RegularIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\Regular.ico"));
			IconHelpers.CensorConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\CensorConnecting.ico"));
			IconHelpers.CensorConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\CensorOn.ico"));
			IconHelpers.CustomConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\CustomConnecting.ico"));
			IconHelpers.CustomConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\CustomOn.ico"));
			IconHelpers.DownloadConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\DownloadConnecting.ico"));
			IconHelpers.DownloadConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\DownloadOn.ico"));
			IconHelpers.SurfConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\SurfConnecting.ico"));
			IconHelpers.SurfConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\SurfOn.ico"));
			IconHelpers.UnblockConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\UnblockConnecting.ico"));
			IconHelpers.UnblockConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\UnblockOn.ico"));
			IconHelpers.WifiConnectingIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\WifiConnecting.ico"));
			IconHelpers.WifiConnectedIcon = new Icon(Theming.GetThemedImage("Icons\\Default\\WifiOn.ico"));
		}

		public void SetTrayIconBySelectedProfile(bool isConnected, bool isRegularAsFallbackIcon)
		{
			if (ObjectHolder.TaskbarIcon == null)
			{
				return;
			}
			if (string.IsNullOrWhiteSpace(SettingsHolder.get_Settings().get_ConnectedProfileName()))
			{
				return;
			}
			if (ObjectHolder.TaskbarIcon != null)
			{
				ObjectHolder.TaskbarIcon.set_Icon(this.GetTrayIconBySelectedProfile(isConnected, isRegularAsFallbackIcon));
			}
		}

		public Icon GetTrayIconBySelectedProfile(bool isConnected, bool isRegularAsFallbackIcon)
		{
			string connectedProfileName = SettingsHolder.get_Settings().get_ConnectedProfileName();
			uint num = <PrivateImplementationDetails>.ComputeStringHash(connectedProfileName);
			Icon result;
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
								result = (isConnected ? IconHelpers.WifiConnectedIcon : IconHelpers.WifiConnectingIcon);
								return result;
							}
						}
					}
					else if (connectedProfileName == "custom")
					{
						result = (isConnected ? IconHelpers.CustomConnectedIcon : IconHelpers.CustomConnectingIcon);
						return result;
					}
				}
				else if (connectedProfileName == "wifi")
				{
					result = (isConnected ? IconHelpers.WifiConnectedIcon : IconHelpers.WifiConnectingIcon);
					return result;
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
							result = (isConnected ? IconHelpers.DownloadConnectedIcon : IconHelpers.DownloadConnectingIcon);
							return result;
						}
					}
				}
				else if (connectedProfileName == "unblock")
				{
					result = (isConnected ? IconHelpers.UnblockConnectedIcon : IconHelpers.UnblockConnectingIcon);
					return result;
				}
			}
			else if (num != 2687971255u)
			{
				if (num == 2889374611u)
				{
					if (connectedProfileName == "antiCensor")
					{
						result = (isConnected ? IconHelpers.CensorConnectedIcon : IconHelpers.CensorConnectingIcon);
						return result;
					}
				}
			}
			else if (connectedProfileName == "anonymousBrowsing")
			{
				result = (isConnected ? IconHelpers.SurfConnectedIcon : IconHelpers.SurfConnectingIcon);
				return result;
			}
			result = (isRegularAsFallbackIcon ? IconHelpers.RegularIcon : IconHelpers.DisabledIcon);
			return result;
		}

		static IconHelpers()
		{
			IconHelpers.<Instance>k__BackingField = new IconHelpers();
		}

		private IconHelpers()
		{
		}
	}
}
