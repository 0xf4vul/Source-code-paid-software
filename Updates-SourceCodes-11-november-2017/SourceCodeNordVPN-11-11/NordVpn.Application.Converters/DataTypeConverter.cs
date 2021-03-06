using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace NordVpn.Application.Converters
{
	public class DataTypeConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value == null)
			{
				return DependencyProperty.UnsetValue;
			}
			return value.GetType();
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}
