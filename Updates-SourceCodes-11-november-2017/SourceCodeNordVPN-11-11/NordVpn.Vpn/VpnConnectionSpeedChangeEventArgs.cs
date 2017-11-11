using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Vpn
{
	public sealed class VpnConnectionSpeedChangeEventArgs : EventArgs
	{
		public bool IsSpeedAvailable
		{
			[CompilerGenerated]
			get
			{
				return this.<IsSpeedAvailable>k__BackingField;
			}
		}

		public double DownloadSpeed
		{
			[CompilerGenerated]
			get
			{
				return this.<DownloadSpeed>k__BackingField;
			}
		}

		public double UploadSpeed
		{
			[CompilerGenerated]
			get
			{
				return this.<UploadSpeed>k__BackingField;
			}
		}

		public VpnConnectionSpeedChangeEventArgs(bool isSpeedAvailable)
		{
			this.<IsSpeedAvailable>k__BackingField = isSpeedAvailable;
		}

		public VpnConnectionSpeedChangeEventArgs(bool isSpeedAvailable, double downloadSpeed, double uploadSpeed) : this(isSpeedAvailable)
		{
			this.<DownloadSpeed>k__BackingField = downloadSpeed;
			this.<UploadSpeed>k__BackingField = uploadSpeed;
		}
	}
}
