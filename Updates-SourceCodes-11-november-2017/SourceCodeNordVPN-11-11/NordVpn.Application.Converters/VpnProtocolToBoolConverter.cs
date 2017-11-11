using NordVpn.Core.Abstract.Vpn;
using System;
using System.Globalization;

namespace NordVpn.Application.Converters
{
	public class VpnProtocolToBoolConverter : ValueConverter<VpnProtocol, bool>
	{
		protected override bool CoreConvert(VpnProtocol value, Type targetType, object parameter, CultureInfo culture)
		{
			if ((string)parameter == "tcp")
			{
				return value == 1 || value == 3;
			}
			return (string)parameter == "udp" && (value == null || value == 2);
		}

		protected override VpnProtocol CoreConvertBack(bool value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!((string)parameter == "tcp"))
			{
				return 0;
			}
			return 1;
		}
	}
}
