using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class BoolToVisibleConverterInvert : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return "Hidden";
			}
			return "Visible";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return false;
		}
	}
}
