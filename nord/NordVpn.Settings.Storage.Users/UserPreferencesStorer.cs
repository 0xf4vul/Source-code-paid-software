using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models.Geographical;
using System;
using WindowsApp.Properties;

namespace NordVpn.Settings.Storage.Users
{
	public class UserPreferencesStorer
	{
		private readonly Settings _settings;

		private readonly UserPreferences _userPreferences;

		public UserPreferencesStorer(Settings settings, UserPreferences userPreferences)
		{
			this._settings = settings;
			this._userPreferences = userPreferences;
		}

		public void StartObserving()
		{
			this._userPreferences.add_VpnProtocolChanged(new EventHandler<VpnProtocolChangedEventArgs>(this.OnVpnProtocolChanged));
			this._userPreferences.add_CustomDnsStatusChanged(new EventHandler<CustomDnsStatusChangedEventArgs>(this.OnCustomDnsStatusChanged));
			this._userPreferences.add_CustomDnsServersChanged(new EventHandler<CustomDnsServersChangedEventArgs>(this.OnCustomDnsServersChanged));
			this._userPreferences.add_DistanceUnitsChanged(new EventHandler<DistanceUnitsChangedEventArgs>(this.OnDistanceUnitsChanged));
			this._userPreferences.add_ShowNotificationsChanged(new EventHandler<BooleanValueChangedEventArgs>(this.OnShowNotificationsChanged));
			this._userPreferences.add_StartMinimizedChanged(new EventHandler<BooleanValueChangedEventArgs>(this.OnStartMinimized));
			this._userPreferences.add_WindowPlacementChanged(new EventHandler<WindowPlacementChangedEventArgs>(this.OnWindowPlacementChanged));
		}

		private void OnWindowPlacementChanged(object sender, WindowPlacementChangedEventArgs windowPlacementChangedEventArgs)
		{
			this._settings.WindowPlacement = windowPlacementChangedEventArgs.get_NewValue();
		}

		private void OnStartMinimized(object sender, BooleanValueChangedEventArgs args)
		{
			this._settings.StartMinimized = args.get_NewValue();
		}

		private void OnShowNotificationsChanged(object sender, BooleanValueChangedEventArgs booleanValueChangedEventArgs)
		{
			this._settings.ShowNotifications = booleanValueChangedEventArgs.get_NewValue();
		}

		private void OnVpnProtocolChanged(object sender, VpnProtocolChangedEventArgs e)
		{
			this._settings.OvpnProtocol = this.GetVpnProtocol(e.get_Protocol());
		}

		private void OnCustomDnsStatusChanged(object sender, CustomDnsStatusChangedEventArgs e)
		{
			this._settings.UseCustomDns = e.get_CustomDnsServersEnabled();
		}

		private void OnCustomDnsServersChanged(object sender, CustomDnsServersChangedEventArgs e)
		{
			this._settings.DnsHosts = string.Join(";", e.get_DnsServers());
		}

		private void OnDistanceUnitsChanged(object sender, DistanceUnitsChangedEventArgs e)
		{
			this._settings.Units = this.GetDistanceUnits(e.get_Units());
		}

		private string GetDistanceUnits(DistanceUnits units)
		{
			if (units == null)
			{
				return "imperial";
			}
			if (units != 1)
			{
				throw new NotSupportedException();
			}
			return "metric";
		}

		private string GetVpnProtocol(VpnProtocol protocol)
		{
			switch (protocol)
			{
			case 0:
				return "udp";
			case 1:
				return "tcp";
			case 2:
				return "xorudp";
			case 3:
				return "xortcp";
			default:
				throw new NotSupportedException();
			}
		}
	}
}
