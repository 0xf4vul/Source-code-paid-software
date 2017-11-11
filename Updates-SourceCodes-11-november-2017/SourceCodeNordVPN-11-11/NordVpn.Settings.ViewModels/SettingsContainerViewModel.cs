using Caliburn.Micro;
using NordVpn.Settings.Legacy;
using System;

namespace NordVpn.Settings.ViewModels
{
	public sealed class SettingsContainerViewModel : Conductor<Screen>.Collection.OneActive
	{
		private readonly SettingsViewModel _settingsViewModel;

		private readonly SelectAutoConnectViewModel _selectAutoConnectViewModel;

		public SettingsContainerViewModel(SettingsViewModel settingsViewModel, SelectAutoConnectViewModel selectAutoConnectViewModel)
		{
			this._settingsViewModel = settingsViewModel;
			this._settingsViewModel.SettingsContainer = this;
			this._selectAutoConnectViewModel = selectAutoConnectViewModel;
			this._selectAutoConnectViewModel.SettingsContainer = this;
			base.get_Items().Add(this._settingsViewModel);
			base.get_Items().Add(this._selectAutoConnectViewModel);
			this.set_DisplayName("General");
		}

		public void SwitchToSettings()
		{
			this.ActivateItem(this._settingsViewModel);
		}

		public void SwitchToSelectAutostart()
		{
			this.ActivateItem(this._selectAutoConnectViewModel);
		}

		protected override void OnInitialize()
		{
			base.OnInitialize();
			this.ActivateItem(this._settingsViewModel);
		}
	}
}
