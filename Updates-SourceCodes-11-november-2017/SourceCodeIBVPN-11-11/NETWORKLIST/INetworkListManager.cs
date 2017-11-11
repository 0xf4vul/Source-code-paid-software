using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace NETWORKLIST
{
	[CompilerGenerated, Guid("DCB00000-570F-4A9B-8D69-199FDBA5723B"), TypeIdentifier]
	[ComImport]
	public interface INetworkListManager
	{
		[DispId(5)]
		bool IsConnectedToInternet
		{
			[DispId(5)]
			[MethodImpl(MethodImplOptions.InternalCall)]
			get;
		}

		void _VtblGap1_4();
	}
}
