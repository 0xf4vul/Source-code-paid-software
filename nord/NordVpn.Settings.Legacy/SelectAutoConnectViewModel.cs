using Caliburn.Micro;
using GalaSoft.MvvmLight.CommandWpf;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Settings.Messages;
using NordVpn.Settings.Storage;
using NordVpn.Settings.ViewModels;
using NordVpn.Shared;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public class SelectAutoConnectViewModel : ExpandableServerListViewModel
	{
		private readonly AppSettings _appSettings;

		private readonly ServerListFactory _serverListFactory;

		private readonly IEventAggregator _eventAggregator;

		public SettingsContainerViewModel SettingsContainer
		{
			get;
			set;
		}

		public ICommand GoBack
		{
			[CompilerGenerated]
			get
			{
				return this.<GoBack>k__BackingField;
			}
		}

		public ICommand SelectServer
		{
			[CompilerGenerated]
			get
			{
				return this.<SelectServer>k__BackingField;
			}
		}

		public ICommand SelectCountry
		{
			[CompilerGenerated]
			get
			{
				return this.<SelectCountry>k__BackingField;
			}
		}

		public SelectAutoConnectViewModel(IServerProvider serverProvider, AppSettings appSettings, UserPreferences userPreferences, ServerListFactory serverListFactory, IEventAggregator eventAggregator) : base(userPreferences)
		{
			this._serverListFactory = serverListFactory;
			serverProvider.add_ServersChanged(new EventHandler(this.OnServersChanged));
			this._appSettings = appSettings;
			this._eventAggregator = eventAggregator;
			this.<GoBack>k__BackingField = new RelayCommand(new Action(this.GoBackCommand));
			this.<SelectServer>k__BackingField = new RelayCommand<ServerItemViewModel>(new Action<ServerItemViewModel>(this.SelectServerCommand));
			this.<SelectCountry>k__BackingField = new RelayCommand<ServersByCountryViewModel>(new Action<ServersByCountryViewModel>(this.SelectCountryCommand));
		}

		private void OnServersChanged(object sender, EventArgs e)
		{
			base.Items.SupressNotification = true;
			base.Items.Clear();
			base.Items.AddRange(this._serverListFactory.BuildServerList());
			base.Items.SupressNotification = false;
		}

		private void SelectServerCommand(ServerItemViewModel serverVm)
		{
			this._appSettings.AutoConnectMode = "server";
			this._appSettings.AutoConnectTarget = serverVm.Server.get_Id().ToString();
			EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, new AutoConnectTargetChangedMessage());
			this.GoBackCommand();
		}

		private void SelectCountryCommand(ServersByCountryViewModel serverVm)
		{
			this._appSettings.AutoConnectMode = "country";
			this._appSettings.AutoConnectTarget = serverVm.Country.get_Code();
			EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, new AutoConnectTargetChangedMessage());
			this.GoBackCommand();
		}

		private void GoBackCommand()
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
