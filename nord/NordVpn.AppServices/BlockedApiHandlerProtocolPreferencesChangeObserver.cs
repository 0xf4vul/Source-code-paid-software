using Liberation.Api.Http.Handlers;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Users.Preferences;
using System;

namespace NordVpn.AppServices
{
	public class BlockedApiHandlerProtocolPreferencesChangeObserver
	{
		private readonly UserPreferences _userPreferences;

		private readonly BlockedApiHandler _blockedApiHandler;

		private bool _isPreviousProtocolObfuscated;

		public BlockedApiHandlerProtocolPreferencesChangeObserver(UserPreferences userPreferences, BlockedApiHandler blockedApiHandler)
		{
			this._userPreferences = userPreferences;
			this._blockedApiHandler = blockedApiHandler;
		}

		public void StartObserving()
		{
			this._isPreviousProtocolObfuscated = BlockedApiHandlerProtocolPreferencesChangeObserver.IsObfuscatedProtocol(this._userPreferences.get_VpnProtocol());
			if (this._isPreviousProtocolObfuscated)
			{
				this._blockedApiHandler.ReverseUrls();
			}
			this._userPreferences.add_VpnProtocolChanged(new EventHandler<VpnProtocolChangedEventArgs>(this.OnVpnProtocolChanged));
		}

		private void OnVpnProtocolChanged(object sender, VpnProtocolChangedEventArgs e)
		{
			if (!BlockedApiHandlerProtocolPreferencesChangeObserver.IsObfuscatedProtocol(e.get_Protocol()) || !this._isPreviousProtocolObfuscated)
			{
				this._blockedApiHandler.ReverseUrls();
			}
			this._isPreviousProtocolObfuscated = BlockedApiHandlerProtocolPreferencesChangeObserver.IsObfuscatedProtocol(e.get_Protocol());
		}

		private static bool IsObfuscatedProtocol(VpnProtocol protocol)
		{
			return protocol == 3 || protocol == 2;
		}
	}
}
