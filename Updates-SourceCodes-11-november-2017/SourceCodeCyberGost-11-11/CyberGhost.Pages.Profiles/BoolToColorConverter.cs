using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class BoolToColorConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return "Green";
			}
			return "Red";
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return false;
		}
	}
}
