using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Tray
{
	public sealed class TrayNotificationEventArgs : EventArgs
	{
		public string Title
		{
			[CompilerGenerated]
			get
			{
				return this.<Title>k__BackingField;
			}
		}

		public string Message
		{
			[CompilerGenerated]
			get
			{
				return this.<Message>k__BackingField;
			}
		}

		public TrayNotificationEventArgs(string title, string message)
		{
			this.<Title>k__BackingField = title;
			this.<Message>k__BackingField = message;
		}
	}
}
