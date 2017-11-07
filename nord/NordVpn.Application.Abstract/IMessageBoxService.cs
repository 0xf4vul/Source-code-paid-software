using System;

namespace NordVpn.Application.Abstract
{
	public interface IMessageBoxService
	{
		bool? ShowYesNoCancelConfirmation(string message, string yesOptionText, string noOptionText);

		bool? ShowYesNoConfirmation(string message, string yesOptionText, string noOptionText);

		bool? ShowYesCancelConfirmation(string message, string yesOptionText);
	}
}
