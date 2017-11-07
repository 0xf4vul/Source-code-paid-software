using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models.Geographical;
using NordVpn.Core.Native.Structures;
using NordVpn.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using WindowsApp.Properties;

namespace NordVpn.Settings.Storage.Users
{
	public class UserPreferencesLoader
	{
		private readonly Settings _settings;

		private readonly UserPreferences _userPreferences;

		public UserPreferencesLoader(Settings settings, UserPreferences userPreferences)
		{
			this._settings = settings;
			this._userPreferences = userPreferences;
		}

		public void Load()
		{
			this._userPreferences.set_VpnProtocol(this.GetVpnProtocol());
			this._userPreferences.set_DistanceUnits(this.GetDistanceUnits());
			this._userPreferences.set_CustomDnsServersEnabled(this.GetIfCustomDnsEnabled());
			this._userPreferences.set_DnsServers(this.GetDnsServers());
			this._userPreferences.set_ShowNotifications(this.GetShowNotifications());
			this._userPreferences.set_StartMinimized(this.GetStartMinimized());
			this._userPreferences.set_WindowPlacement(this.GetWindowPlacement());
		}

		private bool GetIfCustomDnsEnabled()
		{
			return this._settings.UseCustomDns;
		}

		private IReadOnlyCollection<string> GetDnsServers()
		{
			if (string.IsNullOrEmpty(this._settings.DnsHosts))
			{
				return new List<string>();
			}
			return this._settings.DnsHosts.Split(new char[]
			{
				';'
			}, StringSplitOptions.RemoveEmptyEntries).ToList<string>();
		}

		private DistanceUnits GetDistanceUnits()
		{
			if (this._settings.Units.EqualsIgnoringCase("imperial"))
			{
				return 0;
			}
			this._settings.Units.EqualsIgnoringCase("metric");
			return 1;
		}

		private VpnProtocol GetVpnProtocol()
		{
			if (this._settings.OvpnProtocol.EqualsIgnoringCase("udp"))
			{
				return 0;
			}
			if (this._settings.OvpnProtocol.EqualsIgnoringCase("tcp"))
			{
				return 1;
			}
			if (this._settings.OvpnProtocol.EqualsIgnoringCase("xortcp"))
			{
				return 3;
			}
			if (!this._settings.OvpnProtocol.EqualsIgnoringCase("xorudp"))
			{
				throw new NotSupportedException(string.Format("Vpn protocol {0} is not supported", this._settings.OvpnProtocol));
			}
			return 2;
		}

		private bool GetShowNotifications()
		{
			return this._settings.ShowNotifications;
		}

		private bool GetStartMinimized()
		{
			return this._settings.StartMinimized;
		}

		private WindowPlacement GetWindowPlacement()
		{
			return this._settings.WindowPlacement;
		}
	}
}
