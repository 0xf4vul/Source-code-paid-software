using System;
using System.ComponentModel;

namespace CyberGhost.Pages
{
	public enum PopUpZone
	{
		[Description("POPUP_APPLICATION_LAUNCH")]
		StartUp,
		[Description("POPUP_DISCONNECTED")]
		Disconnected,
		[Description("POPUP_CONNECTED")]
		Connected,
		[Description("POPUP_BEFORE_CONNECT")]
		Connecting,
		[Description("POPUP_TIMED")]
		Timed,
		[Description("POPUP_FORCED_DISCONNECT")]
		ForcedDisconnect
	}
}
