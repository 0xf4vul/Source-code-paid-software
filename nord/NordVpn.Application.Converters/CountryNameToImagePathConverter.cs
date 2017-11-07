using System;
using System.Globalization;

namespace NordVpn.Application.Converters
{
	public class CountryNameToImagePathConverter : ValueConverter<string, string>
	{
		protected override string CoreConvert(string value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value == null)
			{
				return null;
			}
			return string.Format("pack://application:,,,/Resources/Assets/Images/Flags/{0}.png", value);
		}
	}
}
