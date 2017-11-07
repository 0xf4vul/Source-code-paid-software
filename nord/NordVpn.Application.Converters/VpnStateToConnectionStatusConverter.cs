using NordVpn.Core.Abstract.Vpn;
using NordVpnControls.Buttons;
using System;
using System.Globalization;

namespace NordVpn.Application.Converters
{
	public class VpnStateToConnectionStatusConverter : ValueConverter<VpnState, ConnectionStatus>
	{
		protected override ConnectionStatus CoreConvert(VpnState value, Type targetType, object parameter, CultureInfo culture)
		{
			switch (value)
			{
			case 0:
				return 0;
			case 1:
				return 0;
			case 2:
				return 1;
			case 3:
				return 2;
			default:
				throw new NotSupportedException();
			}
		}
	}
}
