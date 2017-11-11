using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace NETWORKLIST
{
	[CompilerGenerated, Guid("DCB00001-570F-4A9B-8D69-199FDBA5723B"), InterfaceType(1), TypeIdentifier]
	[ComImport]
	public interface INetworkListManagerEvents
	{
		[MethodImpl(MethodImplOptions.InternalCall)]
		void ConnectivityChanged([In] NLM_CONNECTIVITY newConnectivity);
	}
}
