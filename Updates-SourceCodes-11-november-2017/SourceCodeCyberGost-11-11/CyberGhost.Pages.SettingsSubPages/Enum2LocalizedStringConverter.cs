using CyberGhost.Translations;
using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Enum2LocalizedStringConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value == null)
			{
				return "";
			}
			if (value.ToString().Equals("Ask", StringComparison.InvariantCultureIgnoreCase))
			{
				return Alerts._ASK;
			}
			if (value.ToString().Equals("Ignore", StringComparison.InvariantCultureIgnoreCase))
			{
				return Alerts.TrustThisWifi_never;
			}
			if (value.ToString().Equals("Connect", StringComparison.InvariantCultureIgnoreCase))
			{
				return Alerts.ProtectMe_Always;
			}
			if (value.ToString().Equals("Disconnect", StringComparison.InvariantCultureIgnoreCase))
			{
				return Alerts.Disconnect;
			}
			return "";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return null;
		}
	}
}
