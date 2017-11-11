using MobileConcepts.Components.Log;
using System;

namespace CyberGhost.Helpers
{
	public static class LogHelper
	{
		public static void LogMessage(string message)
		{
			McSystemLogItem expr_05 = new McSystemLogItem();
			expr_05.set_Info(message);
			McSystemLogItem aEvent = expr_05;
			ObjectHolder.EventLogger.LogLocalEvent(aEvent);
		}
	}
}
