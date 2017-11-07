using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Users;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Threading;

namespace NordVpn.Expiration
{
	public class ExpiredMembershipObserver
	{
		private readonly DispatcherTimer _timer;

		private readonly IUserContext _userContext;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler ForegroundNotificationNeeded;

		public ExpiredMembershipObserver(IUserContext userContext, IVpnConnectionManager vpnConnectionManager)
		{
			this._userContext = userContext;
			this._userContext.add_UserAuthenticated(new EventHandler<UserEventArgs>(this.OnUserAuthenticated));
			this._userContext.add_UserLoggedOut(new EventHandler<UserEventArgs>(this.OnUserLoggedOut));
			vpnConnectionManager.add_VpnStatusChanged(new EventHandler<VpnConnectionStatusChangeEventArgs>(this.VpnConnectionManagerOnVpnStatusChanged));
			this._timer = new DispatcherTimer();
			this._timer.Interval = TimeSpan.FromHours(24.0);
			this._timer.Tick += new EventHandler(this.OnTimerTick);
		}

		public void Start()
		{
			this._timer.Start();
		}

		private void VpnConnectionManagerOnVpnStatusChanged(object sender, VpnConnectionStatusChangeEventArgs e)
		{
			if ((e.get_Status().get_State() == 1 || e.get_Status().get_State() == null) && this._userContext.get_Authenticated() && !this._userContext.get_CurrentUser().get_Settings().get_IsSubscriptionActive())
			{
				this.RaiseForegroundNotificationNeeded();
			}
		}

		private void OnUserAuthenticated(object sender, UserEventArgs e)
		{
			if (!this._timer.IsEnabled)
			{
				this._timer.Start();
			}
			if (this.IsSubscriptionExpired())
			{
				this.RaiseForegroundNotificationNeeded();
			}
		}

		private void OnUserLoggedOut(object sender, UserEventArgs e)
		{
			this._timer.Stop();
		}

		private void OnTimerTick(object sender, EventArgs e)
		{
			if (this.IsSubscriptionExpired())
			{
				this.RaiseForegroundNotificationNeeded();
			}
		}

		private bool IsSubscriptionExpired()
		{
			return this._userContext.get_Authenticated() && !this._userContext.get_CurrentUser().get_IsSubscriptionActive() && !this._userContext.get_CurrentUser().get_IsNewUser();
		}

		private void RaiseForegroundNotificationNeeded()
		{
			EventHandler expr_06 = this.ForegroundNotificationNeeded;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}
	}
}
