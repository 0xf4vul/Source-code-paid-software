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

using System;
using System.Globalization;
using System.Windows.Data;

namespace CyberGhost.Helpers.Converters
{
	public class BooleanToOpacityConverterDisabled : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return 1;
			}
			return 0.5;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return null;
		}
	}
}

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

using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace CyberGhost.Helpers.Converters
{
	public class BooleanToThinknessConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((bool)value)
			{
				return new Thickness(0.0, 0.0, 0.0, 1.0);
			}
			return new Thickness(0.0, 0.0, 0.0, 0.0);
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			return null;
		}
	}
}

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
