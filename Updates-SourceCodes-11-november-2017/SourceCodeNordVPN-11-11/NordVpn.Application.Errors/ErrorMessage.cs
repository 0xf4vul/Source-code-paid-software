using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Application.Errors
{
	public class ErrorMessage
	{
		public Exception Exception
		{
			[CompilerGenerated]
			get
			{
				return this.<Exception>k__BackingField;
			}
		}

		public ErrorMessage(Exception exception)
		{
			this.<Exception>k__BackingField = exception;
		}
	}
}
