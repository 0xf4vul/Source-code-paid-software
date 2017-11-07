using System;
using System.Globalization;
using System.Windows;

namespace NordVpn.Application.Converters
{
	public class MainWindowWidthToServerSidePanelWidthConverter : ValueConverter<double, GridLength>
	{
		protected override GridLength CoreConvert(double value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value < 1024.0)
			{
				return new GridLength(0.0);
			}
			return new GridLength(1.0, GridUnitType.Star);
		}
	}
}
