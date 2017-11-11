using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Helpers.Converters
{
	public class BooleanToStringValueConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return System.Convert.ToString(value).Equals(System.Convert.ToString(parameter));
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!System.Convert.ToBoolean(value))
			{
				return Binding.DoNothing;
			}
			return parameter;
		}
	}
}
