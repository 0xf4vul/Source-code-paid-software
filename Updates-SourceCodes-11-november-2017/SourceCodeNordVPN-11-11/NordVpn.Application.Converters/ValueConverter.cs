using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace NordVpn.Application.Converters
{
	public abstract class ValueConverter<T, V> : IValueConverter
	{
		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is T))
			{
				return DependencyProperty.UnsetValue;
			}
			V v = this.CoreConvert((T)((object)value), targetType, parameter, culture);
			if (v != null)
			{
				return v;
			}
			return DependencyProperty.UnsetValue;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			if (!(value is V))
			{
				return DependencyProperty.UnsetValue;
			}
			T t = this.CoreConvertBack((V)((object)value), targetType, parameter, culture);
			if (t != null)
			{
				return t;
			}
			return DependencyProperty.UnsetValue;
		}

		protected abstract V CoreConvert(T value, Type targetType, object parameter, CultureInfo culture);

		protected virtual T CoreConvertBack(V value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}
