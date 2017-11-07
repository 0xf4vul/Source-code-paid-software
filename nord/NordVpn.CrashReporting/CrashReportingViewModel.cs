using NordVpn.Application;
using System;

namespace NordVpn.CrashReporting
{
	public class CrashReportingViewModel : AppScreen
	{
		private string _message;

		private string _email;

		private bool _includeLog = true;

		public bool IncludeLog
		{
			get
			{
				return this._includeLog;
			}
			set
			{
				base.Set<bool>(ref this._includeLog, value, "IncludeLog");
			}
		}

		public string Message
		{
			get
			{
				return this._message;
			}
			set
			{
				base.Set<string>(ref this._message, value, "Message");
			}
		}

		public string Email
		{
			get
			{
				return this._email;
			}
			set
			{
				base.Set<string>(ref this._email, value, "Email");
			}
		}

		public void Confirm()
		{
			this.TryClose(new bool?(true));
		}
	}
}
