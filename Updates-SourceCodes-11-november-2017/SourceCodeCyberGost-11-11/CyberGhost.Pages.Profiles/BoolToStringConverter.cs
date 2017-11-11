using CyberGhost.Translations;
using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Pages.Profiles
{
	public class BoolToStringConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return Profiles.BoolToStringConverter_Convert___Free__;
			}
			return Profiles.BoolToStringConverter_Convert___Premium__;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return false;
		}
	}
}
