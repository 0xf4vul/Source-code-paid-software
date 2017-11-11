using NordVpn.AppServices.AutoConnect;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Settings.ViewModels;
using System;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public class SelectAutoConnectViewModel : ExpandableServerListViewModel
	{
		private readonly AutoConnectServersProvider _serversProvider;

		private readonly AutoConnectManager _autoConnectManager;

		public SettingsContainerViewModel SettingsContainer
		{
			get;
			set;
		}

		public SelectAutoConnectViewModel(IPersistedSettings settings, AutoConnectManager autoConnectManager, AutoConnectServersProvider serversProvider) : base(settings)
		{
			this._autoConnectManager = autoConnectManager;
			this._serversProvider = serversProvider;
			this._serversProvider.ServersChanged += delegate(object s, EventArgs e)
			{
				this.UpdateServers();
			};
		}

		public void SelectServer(ServerItemViewModel serverVm)
		{
			this._autoConnectManager.SetAutoConnectToServer(serverVm.Server);
			this.SwitchToSettings();
		}

		public void SelectCountry(ServersByCountryViewModel serverVm)
		{
			this._autoConnectManager.SetAutoConnectToCountry(serverVm.Country);
			this.SwitchToSettings();
		}

		public void GoBack()
		{
			this.SwitchToSettings();
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this.UpdateServers();
		}

		private void UpdateServers()
		{
			base.Items.Clear();
			base.Items.AddRange(this._serversProvider.BuildServerList());
		}

		private void SwitchToSettings()
		{
			SettingsContainerViewModel expr_06 = this.SettingsContainer;
			if (expr_06 == null)
			{
				return;
			}
			expr_06.SwitchToSettings();
		}
	}
}
