using CyberGhost.RESTCommunicator.Classes;
using MobileConcepts.Components.Log;
using MobileConcepts.Helpers;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Timers;

namespace CyberGhost.Components
{
	public class EventLogger : IMcLogSenderInterface
	{
		private const int MMaxQueueLength = 50;

		private readonly Timer _mcheckUnprocessedApiFeedbacksTimer;

		private readonly LinkedList<CgApiFeedback> _unprocessedApiFeedbacks;

		private int _mFeedbackSendErrors;

		public EventLogger()
		{
			this._unprocessedApiFeedbacks = new LinkedList<CgApiFeedback>();
			this._mcheckUnprocessedApiFeedbacksTimer = new Timer(60000.0);
			this._mcheckUnprocessedApiFeedbacksTimer.Elapsed += new ElapsedEventHandler(this._checkUnprocessedApiFeedbacksTimer_Elapsed);
			this._mcheckUnprocessedApiFeedbacksTimer.Enabled = true;
			this._mFeedbackSendErrors = 0;
		}

		public void LogLocalEvent(McBaseLogItem aEvent)
		{
			McSerializedItem mcSerializedItem = new McSerializedItem();
			mcSerializedItem.SetItem(aEvent);
			HelperFunctions.DebugLine(aEvent.ToString());
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.AddToDebugLog(mcSerializedItem.GetJsonRepresentation());
			}
		}

		public void SendFeedbackTrackingEvent(McTrackingItem aEvent, object optionalData, string value)
		{
			EventLogger.<>c__DisplayClass6_0 expr_05 = new EventLogger.<>c__DisplayClass6_0();
			expr_05.<>4__this = this;
			expr_05.optionalData = optionalData;
			expr_05.value = value;
			expr_05.aEvent = aEvent;
			new Task(delegate
			{
				EventLogger.<>c__DisplayClass6_0.<<SendFeedbackTrackingEvent>b__0>d <<SendFeedbackTrackingEvent>b__0>d;
				<<SendFeedbackTrackingEvent>b__0>d.<>4__this = expr_05;
				<<SendFeedbackTrackingEvent>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<SendFeedbackTrackingEvent>b__0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<SendFeedbackTrackingEvent>b__0>d.<>t__builder;
				<>t__builder.Start<EventLogger.<>c__DisplayClass6_0.<<SendFeedbackTrackingEvent>b__0>d>(ref <<SendFeedbackTrackingEvent>b__0>d);
			}).Start();
		}

		private void _checkUnprocessedApiFeedbacksTimer_Elapsed(object sender, ElapsedEventArgs e)
		{
			new Task(delegate
			{
				EventLogger.<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d <<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d;
				<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d.<>4__this = this;
				<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d.<>t__builder;
				<>t__builder.Start<EventLogger.<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d>(ref <<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d);
			}).Start();
		}
	}
}
