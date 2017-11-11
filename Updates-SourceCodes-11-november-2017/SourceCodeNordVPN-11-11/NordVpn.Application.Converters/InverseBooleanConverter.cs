using System;
using System.Globalization;

namespace NordVpn.Application.Converters
{
	public sealed class InverseBooleanConverter : ValueConverter<bool, bool>
	{
		protected override bool CoreConvert(bool value, Type targetType, object parameter, CultureInfo culture)
		{
			return !value;
		}

		protected override bool CoreConvertBack(bool value, Type targetType, object parameter, CultureInfo culture)
		{
			return !value;
		}
	}
}
