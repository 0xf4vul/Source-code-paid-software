using System;
using System.Globalization;
using System.Windows.Data;
using VyprVPN.Properties;

namespace VyprVPN.Converters
{
	public class BoolToActiveInactiveStringConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(bool)value)
			{
				return Resources.Disabled;
			}
			return Resources.Enabled;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using GoldenFrogUX.Converters;
using System;
using System.Globalization;
using System.Windows.Controls;
using System.Windows.Data;

namespace VyprVPN.Converters
{
	public class EnumToVisibilityConverter : IValueConverter
	{
		private BooleanToVisibilityConverter boolToVisConverter = new BooleanToVisibilityConverter();

		private EnumToBooleanConverter enumToBoolConverter = new EnumToBooleanConverter();

		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			object value2 = this.enumToBoolConverter.Convert(value, typeof(bool), parameter, culture);
			return this.boolToVisConverter.Convert(value2, targetType, null, culture);
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace VyprVPN.Converters
{
	public class FlowDirectionToHorizontalAlignmentConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is FlowDirection))
			{
				throw new NotSupportedException("FlowDirectionToHorizontalAlignmentConverter requires a value of type FlowDirection");
			}
			FlowDirection flowDirection = (FlowDirection)value;
			if (flowDirection == FlowDirection.LeftToRight)
			{
				return HorizontalAlignment.Left;
			}
			if (flowDirection != FlowDirection.RightToLeft)
			{
				return HorizontalAlignment.Left;
			}
			return HorizontalAlignment.Right;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is HorizontalAlignment))
			{
				throw new NotSupportedException("FlowDirectionToHorizontalAlignmentConverter can only convert back from type HorizontalAlignment");
			}
			HorizontalAlignment horizontalAlignment = (HorizontalAlignment)value;
			if (horizontalAlignment == HorizontalAlignment.Left)
			{
				return FlowDirection.LeftToRight;
			}
			if (horizontalAlignment != HorizontalAlignment.Right)
			{
				return FlowDirection.LeftToRight;
			}
			return FlowDirection.RightToLeft;
		}
	}
}

using Catel.IoC;
using Log;
using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using VyprVPN.Enums;

namespace VyprVPN.Converters
{
	public class ImageIconEnumToIconImageSourceConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			ImageIcon? imageIcon = value as ImageIcon?;
			if (imageIcon.HasValue)
			{
				ImageIcon valueOrDefault = imageIcon.GetValueOrDefault();
				if (valueOrDefault == ImageIcon.Warning)
				{
					Application expr_4E = Application.Current;
					return ((expr_4E != null) ? expr_4E.Resources["WindowsWarningImageSource"] : null) ?? DependencyProperty.UnsetValue;
				}
				if (valueOrDefault == ImageIcon.Information)
				{
					Application expr_29 = Application.Current;
					return ((expr_29 != null) ? expr_29.Resources["WindowsInformationImageSource"] : null) ?? DependencyProperty.UnsetValue;
				}
			}
			ILogger expr_7A = ServiceLocatorExtensions.ResolveType<ILogger>(ObjectExtensions.GetServiceLocator(this), null);
			if (expr_7A != null)
			{
				expr_7A.Log(3, string.Format("Unknown value passed to EnumToIconConverter.Convert: {0} (with parameter {1}).", value, parameter));
			}
			return DependencyProperty.UnsetValue;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using System;
using System.Globalization;
using System.Windows.Data;

namespace VyprVPN.Converters
{
	public class InvertedValueConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value is int)
			{
				return -(int)value;
			}
			if (value is double)
			{
				double num = (double)value;
				if (double.IsNaN(num))
				{
					return 0.0;
				}
				return -num;
			}
			else
			{
				if (value is bool)
				{
					return !(bool)value;
				}
				return value;
			}
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using GoldenFrogVPN.Enums;
using System;
using System.Globalization;
using System.Windows.Data;
using VyprVPN.Properties;

namespace VyprVPN.Converters
{
	public class PerAppBehaviorToFriendlyStringConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is PerAppBehavior))
			{
				throw new ArgumentException(string.Format("Could not convert unexpected type {0} to PerAppBehavior.", value.GetType()));
			}
			switch ((PerAppBehavior)value)
			{
			case 0:
				return Resources.Default;
			case 1:
				return Resources.PerAppBehaviorBypassVpnViewString;
			case 2:
				return Resources.PerAppBehaviorVpnPreferredViewString;
			case 3:
				return Resources.PerAppBehaviorVpnRequiredViewString;
			default:
				return value;
			}
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			string a = (string)value;
			if (a == Resources.Default)
			{
				return 0;
			}
			if (a == Resources.PerAppBehaviorVpnPreferredViewString)
			{
				return 2;
			}
			if (a == Resources.PerAppBehaviorVpnRequiredViewString)
			{
				return 3;
			}
			if (a == Resources.PerAppBehaviorBypassVpnViewString)
			{
				return 1;
			}
			return null;
		}
	}
}

using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;

namespace VyprVPN.Converters
{
	public class PingToColorConverter : IValueConverter
	{
		private static Brush GreenBrush = new SolidColorBrush(Color.FromRgb(75, 206, 126));

		private static Brush YellowBrush = new SolidColorBrush(Color.FromRgb(253, 186, 61));

		private static Brush RedBrush = new SolidColorBrush(Color.FromRgb(252, 83, 52));

		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			long num = (long)value;
			if (num < 150L)
			{
				return PingToColorConverter.GreenBrush;
			}
			if (num < 300L)
			{
				return PingToColorConverter.YellowBrush;
			}
			return PingToColorConverter.RedBrush;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using GoldenFrogVPN.Enums;
using System;
using System.Globalization;
using System.Windows.Data;
using VyprVPN.Properties;

namespace VyprVPN.Converters
{
	public class ProtocolToFriendlyConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			switch ((Protocol)value)
			{
			case -1:
				return Resources.ProtocolUnsetViewString;
			case 0:
				return Resources.ProtocolPPTPViewString;
			case 1:
				return Resources.ProtocolL2TPViewString;
			case 2:
				return Resources.ProtocolOpenVPN160ViewString;
			case 3:
				return Resources.ProtocolOpenVPN256ViewString;
			case 4:
				return Resources.ProtocolChameleonViewString;
			default:
				return ProtocolExtensions.ToFriendlyString((Protocol)value);
			}
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using GoldenFrogVPN.Enums;
using System;
using System.Globalization;
using System.Windows.Data;

namespace VyprVPN.Converters
{
	public class ProtocolToShortConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			string text = ProtocolExtensions.ToFriendlyString((Protocol)value);
			object result;
			try
			{
				result = text.Split(new char[]
				{
					' '
				})[0];
			}
			catch
			{
				result = text;
			}
			return result;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using System;
using System.Globalization;
using System.Windows.Data;
using VyprVPN.Classes;

namespace VyprVPN.Converters
{
	public class RegionTitleValueConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			string text = value as string;
			if (text == null)
			{
				return value;
			}
			return ServerRegionConstants.GetLocalizedRegionString(text);
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using Catel.IoC;
using GoldenFrogUT.GoldenFrog;
using System;
using System.Globalization;
using System.Windows.Data;
using VyprVPN.Properties;

namespace VyprVPN.Converters
{
	public class TargetVersionToUpdateDescriptionConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			string arg = value.ToString();
			return string.Format(Resources.VyprVpnUpdateDescription, arg, ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationVersion());
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using System;
using System.Globalization;
using System.Windows.Data;
using VyprVPN.Properties;

namespace VyprVPN.Converters
{
	public class UpdateHeadingBetaConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is bool) && !(value is bool))
			{
				throw new ArgumentException("Value must be a bool", "value");
			}
			string arg_40_0 = string.IsNullOrEmpty((string)parameter) ? string.Empty : ((string)parameter);
			string format = Resources.VyprVpnUpdateHeading;
			if (arg_40_0.ToLower() == "download")
			{
				format = Resources.VyprVpnUpdateDownloadHeading;
			}
			if ((bool)value)
			{
				return string.Format(format, " " + Resources.VyprVpnUpdateBeta);
			}
			return string.Format(format, string.Empty);
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using GoldenFrogVPN;
using System;
using System.Globalization;
using System.Windows.Data;

namespace VyprVPN.Converters
{
	public class VPNServerToString : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value == null)
			{
				return "";
			}
			return ((VPNServer)value).get_Location();
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}
