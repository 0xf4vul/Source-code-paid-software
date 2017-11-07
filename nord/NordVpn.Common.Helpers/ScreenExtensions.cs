using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

namespace NordVpn.Common.Helpers
{
	public static class ScreenExtensions
	{
		public static bool Set<T>(this PropertyChangedBase screen, ref T field, T value, [CallerMemberName] string propertyName = null)
		{
			if (EqualityComparer<T>.Default.Equals(field, value))
			{
				return false;
			}
			field = value;
			screen.NotifyOfPropertyChange(propertyName);
			return true;
		}
	}
}
