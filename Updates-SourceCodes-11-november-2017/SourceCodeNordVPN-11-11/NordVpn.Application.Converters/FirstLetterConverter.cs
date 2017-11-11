using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace NordVpn.Application.Converters
{
	public class FirstLetterConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (string.IsNullOrEmpty(value as string))
			{
				return DependencyProperty.UnsetValue;
			}
			return value.ToString().Substring(0, 1);
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return null;
		}
	}
}
