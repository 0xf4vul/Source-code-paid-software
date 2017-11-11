using MobileConcepts.Components.Log;
using System;
using System.Runtime.CompilerServices;

namespace CyberGhost.Helpers
{
	public sealed class DebugLogHelper
	{
		private McSystemLogItem BaseEvent
		{
			[CompilerGenerated]
			get
			{
				return this.<BaseEvent>k__BackingField;
			}
		}

		public static DebugLogHelper Instance
		{
			[CompilerGenerated]
			get
			{
				return DebugLogHelper.<Instance>k__BackingField;
			}
		}

		public void Info(string info)
		{
			this.BaseEvent.set_Info(info);
			ObjectHolder.EventLogger.LogLocalEvent(this.BaseEvent);
		}

		static DebugLogHelper()
		{
			DebugLogHelper.<Instance>k__BackingField = new DebugLogHelper();
		}

		private DebugLogHelper()
		{
			this.<BaseEvent>k__BackingField = new McSystemLogItem();
		}
	}
}
