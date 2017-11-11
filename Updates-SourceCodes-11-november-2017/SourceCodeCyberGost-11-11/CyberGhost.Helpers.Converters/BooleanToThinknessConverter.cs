using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace CyberGhost.Helpers.Converters
{
	public class BooleanToThinknessConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return new Thickness(0.0, 0.0, 0.0, 1.0);
			}
			return new Thickness(0.0, 0.0, 0.0, 0.0);
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return null;
		}
	}
}
