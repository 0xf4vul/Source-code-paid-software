using NordVpn.ServiceProxy.Vpn;
using System;
using System.ServiceModel;
using System.Windows;

namespace NordVpn.Vpn.OpenVPNService
{
	[CallbackBehavior(ConcurrencyMode = ConcurrencyMode.Single, UseSynchronizationContext = false)]
	public class VpnEventsCallback : IVpnEventsCallback
	{
		public EventHandler<VpnStateChangedArgsProxy> VpnStateChanged;

		public EventHandler<VpnErrorOccuredEventArgsProxy> VpnErrorOccured;

		public void OnStateChanged(VpnStateChangedArgsProxy e)
		{
			Action method = delegate
			{
				EventHandler<VpnStateChangedArgsProxy> expr_0B = this.VpnStateChanged;
				if (expr_0B == null)
				{
					return;
				}
				expr_0B(this, e);
			};
			Application expr_24 = Application.Current;
			if (expr_24 == null)
			{
				return;
			}
			expr_24.Dispatcher.BeginInvoke(method, null);
		}

		public void OnErrorOccured(VpnErrorOccuredEventArgsProxy e)
		{
			Action method = delegate
			{
				EventHandler<VpnErrorOccuredEventArgsProxy> expr_0B = this.VpnErrorOccured;
				if (expr_0B == null)
				{
					return;
				}
				expr_0B(this, e);
			};
			Application expr_24 = Application.Current;
			if (expr_24 == null)
			{
				return;
			}
			expr_24.Dispatcher.BeginInvoke(method, null);
		}
	}
}
