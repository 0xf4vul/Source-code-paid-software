using NordVpn.Api.Http.Handlers;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models.Settings;
using System;
using System.Collections.Generic;
using System.Linq;

namespace NordVpn.AppServices
{
	public class BlockedApiHandlerProtocolPreferencesChangeObserver
	{
		private readonly ISettings _settings;

		private bool _isPreviousProtocolObfuscated;

		private readonly List<ResiliencyHandler> _handlers;

		public BlockedApiHandlerProtocolPreferencesChangeObserver(ISettings settings, IEnumerable<ResiliencyHandler> handlers)
		{
			this._settings = settings;
			this._handlers = handlers.ToList<ResiliencyHandler>();
		}

		public void Start()
		{
			this._isPreviousProtocolObfuscated = this._settings.Of<UserSettings>().IsObfuscationProtocolEnabled();
			this._settings.Observe<UserSettings, VpnProtocol>((UserSettings p) => p.VpnProtocol, new Action<VpnProtocol>(this.OnVpnProtocolChanged));
			if (this._isPreviousProtocolObfuscated)
			{
				this.ReverseHandlersUrls();
			}
		}

		private void OnVpnProtocolChanged(VpnProtocol vpnProtocol)
		{
			bool isPreviousProtocolObfuscated;
			if ((isPreviousProtocolObfuscated = UserSettings.IsObfuscationProtocolEnabled(vpnProtocol)) ^ this._isPreviousProtocolObfuscated)
			{
				this.ReverseHandlersUrls();
			}
			this._isPreviousProtocolObfuscated = isPreviousProtocolObfuscated;
		}

		private void ReverseHandlersUrls()
		{
			using (List<ResiliencyHandler>.Enumerator enumerator = this._handlers.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					enumerator.Current.ReverseUrls();
				}
			}
		}
	}
}
