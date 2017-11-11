using CyberGhost.Helpers;
using CyberGhost.Settings;
using Mixpanel;
using MobileConcepts.Helpers;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.ExceptionServices;
using System.Threading;
using System.Threading.Tasks;

namespace CyberGhost.Components.Mixpanel
{
	public static class MixpanelEventSender
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly MixpanelEventSender.<>c <>9 = new MixpanelEventSender.<>c();

			public static Action <>9__6_0;

			internal void <CheckAlias>b__6_0()
			{
				IMixpanelClient mixpanelClient = MixpanelEventSender.GetMixpanelClient();
				if (mixpanelClient == null)
				{
					return;
				}
				string text = Constants.Alias(false);
				if (!string.IsNullOrEmpty(text))
				{
					try
					{
						BaseMixpanelObject baseMixpanelObject = new BaseMixpanelObject();
						if (mixpanelClient.Alias(baseMixpanelObject.DistinctId, text))
						{
							Constants.Alias(true);
						}
					}
					catch
					{
					}
				}
			}
		}

		private static IMixpanelClient _mMixpanelClient;

		private static LinkedList<MixpanelMessage> _unprocessedMessages;

		private static Timer _reprocessTimer;

		private static IMixpanelClient GetMixpanelClient()
		{
			MixpanelConfig.get_Global().set_SerializeJsonFn(new Func<object, string>(JsonConvert.SerializeObject));
			if (MixpanelEventSender._unprocessedMessages == null)
			{
				MixpanelEventSender._unprocessedMessages = new LinkedList<MixpanelMessage>();
			}
			string text;
			if (SettingsHolder.get_Settings().get_LoginServer().Contains("dev-api"))
			{
				text = "53da9420a9c7e44cc7be995a8aae81f6";
			}
			else if (SettingsHolder.get_Settings().get_LoginServer().Contains("beta-api"))
			{
				text = "12eca00eae2e3b78278ca5faea3d19ff";
			}
			else
			{
				text = "249dc9ae0edcac6d1f94fc7d47333d37";
			}
			IMixpanelClient mixpanelClient;
			try
			{
				IMixpanelClient arg_81_0;
				if ((arg_81_0 = MixpanelEventSender._mMixpanelClient) == null)
				{
					arg_81_0 = (MixpanelEventSender._mMixpanelClient = new MixpanelClient(text, null, null));
				}
				mixpanelClient = arg_81_0;
			}
			catch
			{
				mixpanelClient = null;
			}
			if (MixpanelEventSender._reprocessTimer == null && mixpanelClient != null)
			{
				MixpanelEventSender._reprocessTimer = new Timer(new TimerCallback(MixpanelEventSender.TimerCallback), null, 60000, -1);
			}
			return mixpanelClient;
		}

		private static async void TimerCallback(object state)
		{
			LinkedList<MixpanelMessage> linkedList = new LinkedList<MixpanelMessage>();
			LinkedList<MixpanelMessage> unprocessedMessages = MixpanelEventSender._unprocessedMessages;
			bool flag = false;
			int num;
			try
			{
				Monitor.Enter(unprocessedMessages, ref flag);
				if (MixpanelEventSender._unprocessedMessages.Count > 0)
				{
					LinkedList<MixpanelMessage>.Enumerator enumerator = MixpanelEventSender._unprocessedMessages.GetEnumerator();
					try
					{
						while (enumerator.MoveNext())
						{
							MixpanelMessage current = enumerator.Current;
							linkedList.AddLast(current);
						}
					}
					finally
					{
						if (num < 0)
						{
							((IDisposable)enumerator).Dispose();
						}
					}
				}
			}
			finally
			{
				if (num < 0 && flag)
				{
					Monitor.Exit(unprocessedMessages);
				}
			}
			if (linkedList.Count > 0)
			{
				IMixpanelClient mixpanelClient = MixpanelEventSender.GetMixpanelClient();
				if (mixpanelClient != null)
				{
					SendResult sendResult = await mixpanelClient.SendAsync(linkedList);
					if (sendResult.get_SentBatches() != null && sendResult.get_SentBatches().Count > 0)
					{
						unprocessedMessages = MixpanelEventSender._unprocessedMessages;
						flag = false;
						try
						{
							Monitor.Enter(unprocessedMessages, ref flag);
							IEnumerator<ReadOnlyCollection<MixpanelMessage>> var_9 = sendResult.get_SentBatches().GetEnumerator();
							try
							{
								while (var_9.MoveNext())
								{
									IEnumerator<MixpanelMessage> var_10 = var_9.Current.GetEnumerator();
									try
									{
										while (var_10.MoveNext())
										{
											MixpanelMessage var_11_159 = var_10.Current;
											MixpanelEventSender._unprocessedMessages.Remove(var_11_159);
										}
									}
									finally
									{
										if (num < 0 && var_10 != null)
										{
											var_10.Dispose();
										}
									}
								}
							}
							finally
							{
								if (num < 0 && var_9 != null)
								{
									var_9.Dispose();
								}
							}
						}
						finally
						{
							if (num < 0 && flag)
							{
								Monitor.Exit(unprocessedMessages);
							}
						}
					}
				}
			}
			MixpanelEventSender._reprocessTimer.Change(60000, -1);
		}

		private static bool DoSendEvents()
		{
			return !ObjectHolder.IsFirstStart || DateTime.UtcNow - ObjectHolder.StartTime > TimeSpan.FromSeconds(90.0);
		}

		public static Task CheckAlias()
		{
			if (MixpanelEventSender.DoSendEvents())
			{
				Action arg_26_0;
				if ((arg_26_0 = MixpanelEventSender.<>c.<>9__6_0) == null)
				{
					arg_26_0 = (MixpanelEventSender.<>c.<>9__6_0 = new Action(MixpanelEventSender.<>c.<>9.<CheckAlias>b__6_0));
				}
				Task expr_2B = new Task(arg_26_0);
				HelperFunctions.GrabExceptions(expr_2B);
				expr_2B.ConfigureAwait(false);
				expr_2B.Start();
				return expr_2B;
			}
			return null;
		}

		[HandleProcessCorruptedStateExceptions]
		public static Task FireEvent(BaseMixpanelEvent aEvent, BaseMixpanelPeople aCorrespondingPeopleProperty)
		{
			if (MixpanelEventSender.DoSendEvents())
			{
				Task expr_2C = new Task(delegate
				{
					IMixpanelClient mixpanelClient = null;
					try
					{
						mixpanelClient = MixpanelEventSender.GetMixpanelClient();
					}
					catch (Exception ex)
					{
						HelperFunctions.DebugLine(string.Format("COULD NOT FIRE EVENT: {0}", ex.Message));
					}
					if (mixpanelClient == null)
					{
						return;
					}
					string text = Constants.Alias(false);
					if (!string.IsNullOrEmpty(text))
					{
						try
						{
							BaseMixpanelObject baseMixpanelObject = new BaseMixpanelObject();
							if (mixpanelClient.Alias(baseMixpanelObject.DistinctId, text))
							{
								Constants.Alias(true);
							}
						}
						catch
						{
						}
					}
					LinkedList<MixpanelMessage> linkedList = new LinkedList<MixpanelMessage>();
					linkedList.AddLast(aEvent.GetMessage(mixpanelClient));
					foreach (MixpanelMessage current in aCorrespondingPeopleProperty.GetMessages(mixpanelClient))
					{
						linkedList.AddLast(current);
					}
					SendResult sendResult;
					try
					{
						sendResult = mixpanelClient.Send(linkedList);
						if (sendResult != null && (sendResult.get_FailedBatches() == null || sendResult.get_FailedBatches().Count <= 0))
						{
							return;
						}
					}
					catch (Exception ex2)
					{
						sendResult = null;
						LinkedList<MixpanelMessage> unprocessedMessages = MixpanelEventSender._unprocessedMessages;
						lock (unprocessedMessages)
						{
							foreach (MixpanelMessage current2 in linkedList)
							{
								MixpanelEventSender._unprocessedMessages.AddLast(current2);
							}
						}
						HelperFunctions.DebugLine(string.Format("COULD NOT SEND EVENT {0}", ex2.Message));
					}
					if (((sendResult != null) ? sendResult.get_FailedBatches() : null) != null)
					{
						LinkedList<MixpanelMessage> unprocessedMessages = MixpanelEventSender._unprocessedMessages;
						lock (unprocessedMessages)
						{
							using (IEnumerator<ReadOnlyCollection<MixpanelMessage>> enumerator2 = sendResult.get_FailedBatches().GetEnumerator())
							{
								while (enumerator2.MoveNext())
								{
									foreach (MixpanelMessage current3 in enumerator2.Current)
									{
										MixpanelEventSender._unprocessedMessages.AddLast(current3);
									}
								}
							}
						}
					}
				});
				HelperFunctions.GrabExceptions(expr_2C);
				expr_2C.ConfigureAwait(false);
				expr_2C.Start();
				return expr_2C;
			}
			return null;
		}

		public static Task FireEventAsync(BaseMixpanelEvent theEvent, BaseMixpanelPeople thePeople)
		{
			return MixpanelEventSender.FireEvent(theEvent, thePeople);
		}

		public static void FireEvent<TEvent, TPeople>() where TEvent : BaseMixpanelEvent where TPeople : BaseMixpanelPeople
		{
			MixpanelEventSender.FireEvent(Activator.CreateInstance<TEvent>(), Activator.CreateInstance<TPeople>());
		}

		public static void FireEvent<TEvent>() where TEvent : BaseMixpanelEvent
		{
			MixpanelEventSender.FireEvent(Activator.CreateInstance<TEvent>(), Activator.CreateInstance<BaseMixpanelPeople>());
		}

		public static string GetEventAsQueryString<TEvent>(bool preFilterProperties = true, IEnumerable<string> removeParams = null) where TEvent : BaseMixpanelEvent
		{
			IMixpanelClient mixpanelClient = MixpanelEventSender.GetMixpanelClient();
			if (mixpanelClient == null)
			{
				return string.Empty;
			}
			MixpanelMessage arg_35_0 = ((TEvent)((object)Activator.CreateInstance(typeof(TEvent), null))).GetMessage(mixpanelClient);
			LinkedList<string> linkedList = new LinkedList<string>();
			IDictionary<string, object> expr_49 = (IDictionary<string, object>)arg_35_0.get_Data()["properties"];
			expr_49.Add(new KeyValuePair<string, object>("cc", SettingsHolder.get_Settings().GetChallenge()));
			foreach (KeyValuePair<string, object> current in expr_49)
			{
				if ((!preFilterProperties || (!current.Key.Equals("token") && !current.Key.Equals("ip") && !current.Key.Equals("time"))) && (removeParams == null || !removeParams.Contains(current.Key)) && current.Value != null)
				{
					linkedList.AddLast(string.Format("{0}={1}", Uri.EscapeDataString(current.Key.Replace("$", "")), Uri.EscapeDataString(current.Value.ToString())));
				}
			}
			if (removeParams == null || !removeParams.Contains("hid"))
			{
				linkedList.AddLast(string.Format("hid={0}", FingerPrint.Value()));
			}
			return string.Join("&", linkedList);
		}
	}
}
