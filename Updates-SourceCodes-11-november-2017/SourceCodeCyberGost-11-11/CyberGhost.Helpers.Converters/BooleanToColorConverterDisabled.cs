using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;

namespace CyberGhost.Helpers.Converters
{
	public class BooleanToColorConverterDisabled : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return ObjectHolder.MainForm.FindResource("SubMenuText") as SolidColorBrush;
			}
			return new SolidColorBrush(Colors.Gray);
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return null;
		}
	}
}
