using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Helpers.Converters
{
	public class PingTimeConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			long num = (long)value;
			if (num == -2L)
			{
				return string.Empty;
			}
			if (num == -1L)
			{
				return "...";
			}
			return num.ToString();
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotSupportedException();
		}
	}
}
