using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Map;
using NordVpn.Map.Messages;
using NordVpn.Search.ViewModels;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels;
using NordVpn.Settings.Messages;
using NordVpn.Settings.Storage;
using NordVpn.Settings.ViewModels;
using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace NordVpn.Header.ViewModels
{
	public class HeaderBarViewModel : AppScreen
	{
		private const string LightBlue = "#7493c2";

		private const string White = "white";

		private readonly IEventAggregator _eventAggregator;

		private readonly AppSettings _appSettings;

		private string _serversForeground;

		private string _settingsForeground;

		private string _mapForeground;

		public bool ShowServerList
		{
			get
			{
				return this._appSettings.ShowServerList;
			}
		}

		public bool ShowMap
		{
			get
			{
				return this._appSettings.ShowMap;
			}
		}

		public string ServersForeground
		{
			get
			{
				return this._serversForeground;
			}
			set
			{
				base.Set<string>(ref this._serversForeground, value, "ServersForeground");
			}
		}

		public string MapForeground
		{
			get
			{
				return this._mapForeground;
			}
			set
			{
				base.Set<string>(ref this._mapForeground, value, "MapForeground");
			}
		}

		public string SettingsForeground
		{
			get
			{
				return this._settingsForeground;
			}
			set
			{
				base.Set<string>(ref this._settingsForeground, value, "SettingsForeground");
			}
		}

		public SearchViewModel Search
		{
			[CompilerGenerated]
			get
			{
				return this.<Search>k__BackingField;
			}
		}

		public ConnectButtonViewModel ConnectButton
		{
			[CompilerGenerated]
			get
			{
				return this.<ConnectButton>k__BackingField;
			}
		}

		public HeaderBarViewModel(IEventAggregator eventAggregator, AppSettings appSettings, SearchViewModel searchViewModel, ConnectButtonViewModel connectButtonViewModel)
		{
			this._eventAggregator = eventAggregator;
			this._appSettings = appSettings;
			this._appSettings.PropertyChanged += new PropertyChangedEventHandler(this.OnSettingPropertyChanged);
			this.<Search>k__BackingField = searchViewModel;
			this.<ConnectButton>k__BackingField = connectButtonViewModel;
		}

		public void ActivateButtonByViewModelType(Type type)
		{
			this.MapForeground = "#7493c2";
			this.ServersForeground = "#7493c2";
			this.SettingsForeground = "#7493c2";
			if (type == typeof(MapViewModel))
			{
				this.MapForeground = "white";
				return;
			}
			if (type == typeof(ServersContainerViewModel))
			{
				this.ServersForeground = "white";
				return;
			}
			if (type == typeof(SettingsTabViewModel))
			{
				this.SettingsForeground = "white";
			}
		}

		public void Servers()
		{
			EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, new ServerlistRequestMessage());
		}

		public void Map()
		{
			EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, new MapRequestMessage());
		}

		public void Settings()
		{
			EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, new SettingsRequestMessage());
		}

		private void OnSettingPropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "ShowServerList")
			{
				base.NotifyOfPropertyChange<bool>(() => this.ShowServerList);
			}
			if (e.PropertyName == "ShowMap")
			{
				base.NotifyOfPropertyChange<bool>(() => this.ShowMap);
			}
		}
	}
}
