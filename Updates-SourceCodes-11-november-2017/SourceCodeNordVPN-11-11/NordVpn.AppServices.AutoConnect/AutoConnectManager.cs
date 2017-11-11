using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Settings;
using NordVpn.Shared;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.AppServices.AutoConnect
{
	public class AutoConnectManager
	{
		private readonly AutoConnector _autoConnector;

		private readonly IPersistedSettings _settings;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler AutoConnectTargetChanged;

		public event EventHandler AutoConnectServersChanged
		{
			add
			{
				this._autoConnector.ServersChanged += value;
			}
			remove
			{
				this._autoConnector.ServersChanged -= value;
			}
		}

		public AutoConnectManager(AutoConnector autoConnector, IPersistedSettings settings)
		{
			this._autoConnector = autoConnector;
			this._settings = settings;
		}

		public Task AutoConnectToSetTarget()
		{
			if (!this.IsAutoConnectEnabled())
			{
				return NordVpn.Shared.TaskExtensions.CompletedTask;
			}
			return this._autoConnector.AutoConnect(this.GetSettings().get_AutoConnectMode(), this.GetSettings().get_AutoConnectTarget());
		}

		public string GetAutoConnectDestination()
		{
			if (!this.IsAutoConnectTargetSet())
			{
				return "";
			}
			return this._autoConnector.GetAutoConnectDestination(this.GetSettings().get_AutoConnectMode(), this.GetSettings().get_AutoConnectTarget());
		}

		public void SetAutoConnectToCountry(CountryIdentifier country)
		{
			PersistedSettingsExtension.Save<UserSettings>(this._settings, delegate(UserSettings s)
			{
				s.set_AutoConnectMode("country");
				s.set_AutoConnectTarget(country.get_Code());
			});
			this.RaiseAutoConnectTargetChanged();
		}

		public void SetAutoConnectToServer(GeographicalServer server)
		{
			PersistedSettingsExtension.Save<UserSettings>(this._settings, delegate(UserSettings s)
			{
				s.set_AutoConnectMode("server");
				s.set_AutoConnectTarget(server.get_Id().ToString());
			});
			this.RaiseAutoConnectTargetChanged();
		}

		public bool IsAutoConnectTargetSet()
		{
			return !this.GetSettings().get_AutoConnectTarget().IsNullOrWhiteSpace();
		}

		private bool IsAutoConnectEnabled()
		{
			return this.GetSettings().get_AutoConnect();
		}

		private UserSettings GetSettings()
		{
			return this._settings.Of<UserSettings>();
		}

		private void RaiseAutoConnectTargetChanged()
		{
			EventHandler expr_06 = this.AutoConnectTargetChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}
	}
}
