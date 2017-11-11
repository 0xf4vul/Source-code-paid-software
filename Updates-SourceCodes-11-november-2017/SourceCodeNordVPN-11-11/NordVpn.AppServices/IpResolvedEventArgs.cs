using System;
using System.Runtime.CompilerServices;

namespace NordVpn.AppServices
{
	public sealed class IpResolvedEventArgs : EventArgs
	{
		public string Ip
		{
			[CompilerGenerated]
			get
			{
				return this.<Ip>k__BackingField;
			}
		}

		public IpResolvedEventArgs(string ip)
		{
			this.<Ip>k__BackingField = ip;
		}
	}
}
