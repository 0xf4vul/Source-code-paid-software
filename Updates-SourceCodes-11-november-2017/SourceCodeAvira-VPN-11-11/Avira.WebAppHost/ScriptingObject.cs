using Avira.Core;
using Avira.Messaging;
using System;
using System.Reflection;
using System.Runtime.InteropServices;

namespace Avira.WebAppHost
{
	[ComVisible(true)]
	public class ScriptingObject
	{
		private object javaScriptCallback;

		private object onCloseCallback;

		private IMessenger messenger;

		public IMessenger Messenger
		{
			get
			{
				return this.messenger;
			}
			set
			{
				this.messenger = value;
				if (this.messenger != null)
				{
					this.messenger.add_MessageReceived(delegate(object sender, MessageReceivedEvent @event)
					{
						this.OnMessage(@event.get_Message());
					});
					this.messenger.add_ConnectionReestablished(delegate(object sender, EventArgs args)
					{
						this.OnMessage(Envelope.Pack(Message.CreateNotification("connectionReestablished"), "WebAppHost"));
					});
				}
			}
		}

		public void Close()
		{
			if (this.onCloseCallback != null)
			{
				this.onCloseCallback.GetType().InvokeMember("[DispID=0]", BindingFlags.Instance | BindingFlags.InvokeMethod, null, this.onCloseCallback, new object[0]);
			}
		}

		public void Trace(string message)
		{
			Log.Debug(message);
		}

		public void SendMessage(string message)
		{
			this.Messenger.Send(message);
		}

		public void RegisterMessageCallback(object callback)
		{
			this.javaScriptCallback = callback;
		}

		public void OnMessage(string message)
		{
			try
			{
				object expr_06 = this.javaScriptCallback;
				if (expr_06 != null)
				{
					expr_06.GetType().InvokeMember("[DispID=0]", BindingFlags.Instance | BindingFlags.InvokeMethod, null, this.javaScriptCallback, new object[]
					{
						message
					});
				}
			}
			catch (Exception ex)
			{
				Log.Error("Javascript 'onMessage' callback failed.", ex);
			}
		}

		public void RegisterOnClose(object closeCallback)
		{
			this.onCloseCallback = closeCallback;
		}
	}
}
