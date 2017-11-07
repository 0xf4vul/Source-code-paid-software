using Caliburn.Micro;
using NordVpn.Common.Helpers;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Application
{
	public abstract class AppScreen : Screen
	{
		protected bool Set<T>(ref T field, T value, [CallerMemberName] string propertyName = null)
		{
			return this.Set(ref field, value, propertyName);
		}
	}
}
