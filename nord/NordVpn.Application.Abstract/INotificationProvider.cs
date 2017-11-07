using System;

namespace NordVpn.Application.Abstract
{
	public interface INotificationProvider
	{
		void NotifyError(string message);

		void NotifyError(string message, TimeSpan expiration, string messageAfterExpiration);

		void Notify(string message);
	}
}
