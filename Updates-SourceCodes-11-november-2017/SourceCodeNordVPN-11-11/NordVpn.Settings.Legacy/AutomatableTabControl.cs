using NordVpnControls.UIAutomation;
using System;
using System.Windows.Automation.Peers;
using System.Windows.Controls;

namespace NordVpn.Settings.Legacy
{
	public class AutomatableTabControl : TabControl
	{
		protected override AutomationPeer OnCreateAutomationPeer()
		{
			return new GenericAutomationPeer(this);
		}
	}
}
