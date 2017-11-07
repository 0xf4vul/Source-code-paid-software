using NordVpn.Shared;
using System;
using System.Globalization;

namespace NordVpn.Application.Converters
{
	public class LabelInvalidCharsConverter : ValueConverter<string, string>
	{
		protected override string CoreConvert(string value, Type targetType, object parameter, CultureInfo culture)
		{
			if (value == null)
			{
				return null;
			}
			if (!value.ContainsIgnoringCase("_"))
			{
				return value;
			}
			return value.Replace("_", "__");
		}
	}
}
