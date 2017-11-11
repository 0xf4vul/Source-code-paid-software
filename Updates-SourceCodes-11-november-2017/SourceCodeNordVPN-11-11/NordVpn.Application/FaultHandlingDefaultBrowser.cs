using NordVpn.Application.Abstract;
using NordVpn.Properties;
using NordVpnControls.Windows;
using System;
using System.Diagnostics;
using System.Windows;

namespace NordVpn.Application
{
	public class FaultHandlingDefaultBrowser : IBrowser
	{
		private readonly Func<BrowserOpenFailureWindow> _failureWindow;

		public FaultHandlingDefaultBrowser(Func<BrowserOpenFailureWindow> failureWindow)
		{
			this._failureWindow = failureWindow;
		}

		public void Open(string url)
		{
			try
			{
				Process.Start(url);
			}
			catch (Exception)
			{
				BrowserOpenFailureWindow expr_15 = this._failureWindow();
				expr_15.Owner = Application.Current.MainWindow;
				expr_15.Title = Resources.WindowTitle;
				expr_15.set_Url(url);
				expr_15.ShowDialog();
			}
		}
	}
}
