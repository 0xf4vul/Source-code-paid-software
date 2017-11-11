using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;

namespace CyberGhost.Helpers.Converters
{
	public class BooleanToColorConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return new SolidColorBrush(Color.FromRgb(253, 195, 9));
			}
			return ObjectHolder.MainForm.FindResource("SubMenuText") as SolidColorBrush;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return null;
		}
	}
}
