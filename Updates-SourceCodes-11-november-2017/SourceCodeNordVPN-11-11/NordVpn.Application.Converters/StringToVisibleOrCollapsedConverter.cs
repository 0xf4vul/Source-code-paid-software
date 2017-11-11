using NordVpn.Shared;
using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace NordVpn.Application.Converters
{
	public sealed class StringToVisibleOrCollapsedConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value == null)
			{
				return Visibility.Collapsed;
			}
			string value2;
			if ((value2 = (value as string)) != null)
			{
				return value2.IsNullOrEmpty() ? Visibility.Collapsed : Visibility.Visible;
			}
			return DependencyProperty.UnsetValue;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotSupportedException();
		}
	}
}
