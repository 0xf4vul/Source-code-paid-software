using NordVpn.Application.Abstract;
using NordVpn.Properties;
using NordVpnControls.Windows;
using System;
using System.Windows;

namespace NordVpn.Application
{
	public class MessageBoxService : IMessageBoxService
	{
		public bool? ShowYesNoCancelConfirmation(string message, string yesOptionText, string noOptionText)
		{
			UserConfirmationWindow expr_05 = new UserConfirmationWindow();
			expr_05.set_ConfirmationMessage(message);
			expr_05.set_OkButtonText(yesOptionText);
			expr_05.set_NoButtonText(noOptionText);
			expr_05.Owner = Application.Current.MainWindow;
			expr_05.Title = Resources.WindowTitle;
			expr_05.ShowDialog();
			return expr_05.get_ConfirmationResult();
		}

		public bool? ShowYesNoConfirmation(string message, string yesOptionText, string noOptionText)
		{
			UserConfirmationWindow expr_05 = new UserConfirmationWindow();
			expr_05.set_ConfirmationMessage(message);
			expr_05.set_OkButtonText(yesOptionText);
			expr_05.set_NoButtonText(noOptionText);
			expr_05.set_ShowCancelButton(false);
			expr_05.Owner = Application.Current.MainWindow;
			expr_05.Title = Resources.WindowTitle;
			expr_05.ShowDialog();
			return expr_05.get_ConfirmationResult();
		}

		public bool? ShowYesCancelConfirmation(string message, string yesOptionText)
		{
			UserConfirmationWindow expr_05 = new UserConfirmationWindow();
			expr_05.set_ConfirmationMessage(message);
			expr_05.set_OkButtonText(yesOptionText);
			expr_05.set_ShowNoButton(false);
			expr_05.Owner = Application.Current.MainWindow;
			expr_05.Title = Resources.WindowTitle;
			expr_05.ShowDialog();
			return expr_05.get_ConfirmationResult();
		}
	}
}
