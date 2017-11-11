using NordVpn.Application;
using NordVpn.Application.Abstract;
using System;

namespace NordVpn.CyberSec.ViewModels
{
	public class CyberSecModalViewModel : AppScreen
	{
		private readonly IBrowser _browser;

		private readonly CyberSecManager _cyberSecManager;

		public CyberSecModalViewModel(IBrowser browser, CyberSecManager cyberSecManager)
		{
			this._browser = browser;
			this._cyberSecManager = cyberSecManager;
		}

		public void TurnOn()
		{
			this._cyberSecManager.Enable();
			this.Close();
		}

		public void OpenArticle()
		{
			this._browser.Open("https://nordme.org/special/cybersec/");
		}

		public void Close()
		{
			this.TryClose(null);
		}
	}
}
