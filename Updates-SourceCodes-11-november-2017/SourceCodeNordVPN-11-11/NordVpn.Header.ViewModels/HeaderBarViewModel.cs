using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models.Settings;
using NordVpn.Map;
using NordVpn.Map.Messages;
using NordVpn.Search.ViewModels;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels;
using NordVpn.Settings.Messages;
using NordVpn.Settings.ViewModels;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Header.ViewModels
{
	public class HeaderBarViewModel : AppScreen
	{
		private const string LightBlue = "#7493c2";

		private const string White = "white";

		private readonly IEventAggregator _eventAggregator;

		private readonly ISettings _settings;

		private string _serversForeground;

		private string _settingsForeground;

		private string _mapForeground;

		public bool ShowServerList
		{
			get
			{
				return this._settings.Of<AppSettings>().get_ShowServerList();
			}
		}

		public bool ShowMap
		{
			get
			{
				return this._settings.Of<AppSettings>().get_ShowMap();
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
				this.Set<string>(ref this._serversForeground, value, "ServersForeground");
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
				this.Set<string>(ref this._mapForeground, value, "MapForeground");
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
				this.Set<string>(ref this._settingsForeground, value, "SettingsForeground");
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

		public HeaderBarViewModel(IEventAggregator eventAggregator, ISettings settings, SearchViewModel searchViewModel, ConnectButtonViewModel connectButtonViewModel)
		{
			this._eventAggregator = eventAggregator;
			this._settings = settings;
			this.<Search>k__BackingField = searchViewModel;
			this.<ConnectButton>k__BackingField = connectButtonViewModel;
			this._settings.Observe<AppSettings, bool>((AppSettings p) => p.ShowMap, delegate(bool _)
			{
				this.NotifyOfPropertyChange("ShowMap");
			}).Observe<AppSettings, bool>((AppSettings p) => p.ShowServerList, delegate(bool _)
			{
				this.NotifyOfPropertyChange("ShowServerList");
			});
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
	}
}
