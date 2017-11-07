using NordVpn.Map.Pins;
using System;
using System.Globalization;
using System.Windows.Data;

namespace NordVpn.Application.Converters
{
	public class PinStateToZIndexConverter : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			PinStates pinStates = (PinStates)value;
			if (pinStates == PinStates.Connected)
			{
				return 1;
			}
			if (pinStates != PinStates.Connecting)
			{
				return 0;
			}
			return 2;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			int num = (int)value;
			if (num == 0)
			{
				return PinStates.Connected;
			}
			if (num == 2)
			{
				return PinStates.Connecting;
			}
			return PinStates.Disconnected;
		}
	}
}
