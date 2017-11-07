using NordVpn.Core.Models.Geographical;
using System;
using System.Globalization;

namespace NordVpn.Application.Converters
{
	public class DistanceUnitsToBoolConverter : ValueConverter<DistanceUnits, bool>
	{
		protected override bool CoreConvert(DistanceUnits value, Type targetType, object parameter, CultureInfo culture)
		{
			return value == (DistanceUnits)parameter;
		}

		protected override DistanceUnits CoreConvertBack(bool value, Type targetType, object parameter, CultureInfo culture)
		{
			return (DistanceUnits)parameter;
		}
	}
}
