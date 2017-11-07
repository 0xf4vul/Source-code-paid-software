using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Vpn
{
	public class OpenVpnOutput
	{
		public static OpenVpnOutput Empty
		{
			[CompilerGenerated]
			get
			{
				return OpenVpnOutput.<Empty>k__BackingField;
			}
		}

		public OpenVpnError Status
		{
			[CompilerGenerated]
			get
			{
				return this.<Status>k__BackingField;
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

		public OpenVpnOutput(OpenVpnError status, string message)
		{
			this.<Status>k__BackingField = status;
			this.<Message>k__BackingField = (message ?? "");
		}

		static OpenVpnOutput()
		{
			// Note: this type is marked as 'beforefieldinit'.
			OpenVpnOutput.<Empty>k__BackingField = new OpenVpnOutput(OpenVpnError.None, "");
		}
	}
}
