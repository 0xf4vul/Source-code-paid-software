using Caliburn.Micro;
using GalaSoft.MvvmLight.CommandWpf;
using NordVpn.Application;
using NordVpn.Common.Helpers;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Geographical;
using NordVpn.CyberSec;
using NordVpn.CyberSec.Messages;
using NordVpn.KillSwitch.Services;
using NordVpn.KillSwitch.ViewModels;
using NordVpn.Settings.Messages;
using NordVpn.Settings.Storage;
using NordVpn.Shared;
using NordVpn.Updater;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;

namespace NordVpn.Settings.ViewModels
{
	public sealed class SettingsViewModel : AppScreen, IHandle<AutoConnectTargetChangedMessage>, IHandle<CyberSecSettingChangedMessage>, IHandle
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly SettingsViewModel.<>c <>9 = new SettingsViewModel.<>c();

			public static Func<string, int, DnsHostViewModel> <>9__77_0;

			public static Func<DnsHostViewModel, string> <>9__136_0;

			internal DnsHostViewModel <get_DnsHosts>b__77_0(string h, int i)
			{
				return new DnsHostViewModel(i + 1, h);
			}

			internal string <SaveDnsHostsCommand>b__136_0(DnsHostViewModel h)
			{
				return h.Host;
			}
		}

		private readonly AppStartupManager _appStartupManager;

		private readonly IServerProvider _serverProvider;

		private readonly AppSettings _appSettings;

		private readonly CyberSecManager _cyberSecManager;

		private readonly IEventAggregator _eventAggregator;

		private readonly VpnConnector _vpnConnector;

		private readonly WinSparkleUpdater _updater;

		private readonly UserPreferences _userPreferences;

		private readonly ExecutableIconProvider _iconProvider;

		private readonly DiagnosticsLauncher _diagnosticsLauncher;

		private ObservableCollection<ProcessItemViewModel> _killSwitchApps;

		private ObservableCollection<DnsHostViewModel> _dnsHosts;

		private bool _showAutoConnect;

		private bool _showAdvancedSettings;

		private bool _showAdvancedSettingsPopup = true;

		private bool _checkingForUpdate;

		private bool _showSettings = true;

		private bool _isAppSelectionInProgress;

		private bool _cyberSec;

		private bool _showCyberSecReminder;

		private VpnState _vpnState;

		public SettingsContainerViewModel SettingsContainer
		{
			get;
			set;
		}

		public bool ShowCyberSecReminder
		{
			get
			{
				return this._showCyberSecReminder;
			}
			set
			{
				base.Set<bool>(ref this._showCyberSecReminder, value, "ShowCyberSecReminder");
			}
		}

		public bool ShowAdvancedSettings
		{
			get
			{
				return this._showAdvancedSettings;
			}
			set
			{
				base.Set<bool>(ref this._showAdvancedSettings, value, "ShowAdvancedSettings");
			}
		}

		public bool ShowAdvancedSettingsPopup
		{
			get
			{
				return this._showAdvancedSettingsPopup;
			}
			set
			{
				base.Set<bool>(ref this._showAdvancedSettingsPopup, value, "ShowAdvancedSettingsPopup");
			}
		}

		public bool CyberSec
		{
			get
			{
				return this._cyberSecManager.IsEnabled;
			}
			set
			{
				if (value != this._cyberSecManager.IsEnabled)
				{
					if (value)
					{
						if (this._vpnState == null)
						{
							this._cyberSecManager.Enable();
							this.RaiseStateChangedAccordingToState(this._vpnState);
							return;
						}
						EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, new ShowReconnectDialogMessage(true));
						return;
					}
					else
					{
						if (this._vpnState == null)
						{
							this._cyberSecManager.Disable();
							this.RaiseStateChangedAccordingToState(this._vpnState);
							return;
						}
						EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, new ShowReconnectDialogMessage(false));
					}
				}
			}
		}

		public string AutoConnectSelectButtonText
		{
			get
			{
				if (string.IsNullOrEmpty(this._appSettings.AutoConnectTarget))
				{
					return "Select";
				}
				return "Change";
			}
		}

		public string AutoConnectText
		{
			get
			{
				string text = "Auto connect to ";
				if (string.IsNullOrWhiteSpace(this._appSettings.AutoConnectTarget))
				{
					return text;
				}
				if (this._appSettings.AutoConnectMode == "country")
				{
					Country country = this._serverProvider.GetCountries().FirstOrDefault((Country x) => x.get_Identifier().get_Code() == this._appSettings.AutoConnectTarget);
					text += ((country != null) ? country.get_Name() : null);
				}
				if (this._appSettings.AutoConnectMode == "server")
				{
					GeographicalServer geographicalServer = EnumerableServersExtensions.GetById(this._serverProvider.GetServers(), int.Parse(this._appSettings.AutoConnectTarget)).FirstOrDefault<GeographicalServer>();
					text += ((geographicalServer != null) ? geographicalServer.get_Name() : null);
				}
				return text;
			}
			set
			{
			}
		}

		public bool ShowAutoConnect
		{
			get
			{
				return this._showAutoConnect;
			}
			set
			{
				base.Set<bool>(ref this._showAutoConnect, value, "ShowAutoConnect");
			}
		}

		public ObservableCollection<ProcessItemViewModel> KillSwitchApps
		{
			get
			{
				if (this._killSwitchApps == null)
				{
					this._killSwitchApps = this.GetKillSwitchApps().AsObservable<ProcessItemViewModel>();
				}
				return this._killSwitchApps;
			}
		}

		public bool ShowSettings
		{
			get
			{
				return this._showSettings;
			}
			set
			{
				base.Set<bool>(ref this._showSettings, value, "ShowSettings");
			}
		}

		public bool ShowServerList
		{
			get
			{
				return this._appSettings.ShowServerList;
			}
			set
			{
				if (this._appSettings.ShowServerList != value)
				{
					this._appSettings.ShowServerList = value;
					this.NotifyOfPropertyChange("ShowServerList");
				}
			}
		}

		public bool ShowMap
		{
			get
			{
				return this._appSettings.ShowMap;
			}
			set
			{
				if (this._appSettings.ShowMap != value)
				{
					this._appSettings.ShowMap = value;
					this.NotifyOfPropertyChange("ShowMap");
				}
			}
		}

		public bool ObfuscatedServersOnly
		{
			get
			{
				return this._userPreferences.get_VpnProtocol() == 3 || this._userPreferences.get_VpnProtocol() == 2;
			}
			set
			{
				if (value)
				{
					if (this._userPreferences.get_VpnProtocol() == 1)
					{
						this._userPreferences.set_VpnProtocol(3);
					}
					if (this._userPreferences.get_VpnProtocol() == null)
					{
						this._userPreferences.set_VpnProtocol(2);
					}
				}
				else
				{
					if (this._userPreferences.get_VpnProtocol() == 3)
					{
						this._userPreferences.set_VpnProtocol(1);
					}
					if (this._userPreferences.get_VpnProtocol() == 2)
					{
						this._userPreferences.set_VpnProtocol(0);
					}
				}
				this.NotifyOfPropertyChange("ObfuscatedServersOnly");
			}
		}

		public VpnProtocol VpnProtocol
		{
			get
			{
				return this._userPreferences.get_VpnProtocol();
			}
			set
			{
				if (this._userPreferences.get_VpnProtocol() == 3 || this._userPreferences.get_VpnProtocol() == 2)
				{
					if (value == 1)
					{
						this._userPreferences.set_VpnProtocol(3);
					}
					if (value == null)
					{
						this._userPreferences.set_VpnProtocol(2);
					}
				}
				else
				{
					this._userPreferences.set_VpnProtocol(value);
				}
				this.NotifyOfPropertyChange("VpnProtocol");
			}
		}

		public DistanceUnits DistanceUnits
		{
			get
			{
				return this._userPreferences.get_DistanceUnits();
			}
			set
			{
				this._userPreferences.set_DistanceUnits(value);
				this.NotifyOfPropertyChange("DistanceUnits");
			}
		}

		public bool AutomaticUpdates
		{
			get
			{
				return true;
			}
			set
			{
			}
		}

		public bool UseCustomDns
		{
			get
			{
				return this._userPreferences.get_CustomDnsServersEnabled();
			}
			set
			{
				this._userPreferences.set_CustomDnsServersEnabled(value);
				this.NotifyOfPropertyChange("UseCustomDns");
			}
		}

		public ObservableCollection<DnsHostViewModel> DnsHosts
		{
			get
			{
				if (this._dnsHosts == null)
				{
					IEnumerable<string> arg_33_0 = this._userPreferences.get_DnsServers();
					Func<string, int, DnsHostViewModel> arg_33_1;
					if ((arg_33_1 = SettingsViewModel.<>c.<>9__77_0) == null)
					{
						arg_33_1 = (SettingsViewModel.<>c.<>9__77_0 = new Func<string, int, DnsHostViewModel>(SettingsViewModel.<>c.<>9.<get_DnsHosts>b__77_0));
					}
					this._dnsHosts = arg_33_0.Select(arg_33_1).AsObservable<DnsHostViewModel>();
				}
				return this._dnsHosts;
			}
		}

		public bool ShowNotifications
		{
			get
			{
				return this._appSettings.ShowNotifications;
			}
			set
			{
				this._appSettings.ShowNotifications = value;
			}
		}

		public bool AutoConnect
		{
			get
			{
				return this._appSettings.AutoConnect;
			}
			set
			{
				this._appSettings.AutoConnect = value;
			}
		}

		public bool StartMinimized
		{
			get
			{
				return this._appSettings.StartMinimized;
			}
			set
			{
				this._appSettings.StartMinimized = value;
			}
		}

		public bool KillSwitch
		{
			get
			{
				return this._appSettings.KillSwitch;
			}
			set
			{
				this._appSettings.KillSwitch = value;
			}
		}

		public bool StartOnStartup
		{
			get
			{
				return this._appStartupManager.IsAutoStartEnabled();
			}
			set
			{
				this._appStartupManager.SetAutoStart(value);
			}
		}

		public bool IsAppSelectionInProgress
		{
			get
			{
				return this._isAppSelectionInProgress;
			}
			set
			{
				base.Set<bool>(ref this._isAppSelectionInProgress, value, "IsAppSelectionInProgress");
			}
		}

		public ICommand CheckForUpdate
		{
			[CompilerGenerated]
			get
			{
				return this.<CheckForUpdate>k__BackingField;
			}
		}

		public ICommand OpenServerPicker
		{
			[CompilerGenerated]
			get
			{
				return this.<OpenServerPicker>k__BackingField;
			}
		}

		public ICommand OpenAppSelect
		{
			[CompilerGenerated]
			get
			{
				return this.<OpenAppSelect>k__BackingField;
			}
		}

		public ICommand RemoveApp
		{
			[CompilerGenerated]
			get
			{
				return this.<RemoveApp>k__BackingField;
			}
		}

		public ICommand RemoveDnsHost
		{
			[CompilerGenerated]
			get
			{
				return this.<RemoveDnsHost>k__BackingField;
			}
		}

		public ICommand AddDnsHost
		{
			[CompilerGenerated]
			get
			{
				return this.<AddDnsHost>k__BackingField;
			}
		}

		public ICommand SaveDnsHosts
		{
			[CompilerGenerated]
			get
			{
				return this.<SaveDnsHosts>k__BackingField;
			}
		}

		public ICommand ToggleAdvancedSettings
		{
			[CompilerGenerated]
			get
			{
				return this.<ToggleAdvancedSettings>k__BackingField;
			}
		}

		public ICommand SetAdvancedPopupToFalse
		{
			[CompilerGenerated]
			get
			{
				return this.<SetAdvancedPopupToFalse>k__BackingField;
			}
		}

		public ICommand SetShowAdvancedToFalse
		{
			[CompilerGenerated]
			get
			{
				return this.<SetShowAdvancedToFalse>k__BackingField;
			}
		}

		public SettingsViewModel(AppStartupManager appStartupManager, UserPreferences userPreferences, IServerProvider serverProvider, WinSparkleUpdater updater, AppSettings appSettings, CyberSecManager cyberSecManager, IEventAggregator eventAggregator, VpnConnector vpnConnector, DiagnosticsLauncher diagnosticsLauncher, ExecutableIconProvider iconProvider)
		{
			this._appStartupManager = appStartupManager;
			this._userPreferences = userPreferences;
			this._checkingForUpdate = false;
			this._serverProvider = serverProvider;
			this._updater = updater;
			this._appSettings = appSettings;
			this._cyberSecManager = cyberSecManager;
			this._eventAggregator = eventAggregator;
			this._vpnConnector = vpnConnector;
			this._diagnosticsLauncher = diagnosticsLauncher;
			this._iconProvider = iconProvider;
			this.<CheckForUpdate>k__BackingField = new RelayCommand(new Action(this.CheckForUpdateCommand), new Func<bool>(this.CanCheckForUpdateCommand));
			this.<OpenServerPicker>k__BackingField = new RelayCommand(new Action(this.OpenServerPickerCommand));
			this.<RemoveDnsHost>k__BackingField = new RelayCommand<int>(new Action<int>(this.RemoveDnsHostCommand));
			this.<AddDnsHost>k__BackingField = new RelayCommand(new Action(this.AddDnsHostCommand));
			this.<SaveDnsHosts>k__BackingField = new RelayCommand(new Action(this.SaveDnsHostsCommand));
			this.<OpenAppSelect>k__BackingField = new RelayCommand(new Action(this.OpenAppSelectPopup), () => !this.IsAppSelectionInProgress).ObservesProperty(() => this.IsAppSelectionInProgress);
			this.<RemoveApp>k__BackingField = new RelayCommand<ProcessItemViewModel>(new Action<ProcessItemViewModel>(this.RemoveAppCommand));
			this.<ToggleAdvancedSettings>k__BackingField = new RelayCommand(new Action(this.ToggleAdvancedSettingsCommand));
			this.<SetAdvancedPopupToFalse>k__BackingField = new RelayCommand(new Action(this.SetAdvancedPopupToFalseCommand));
			this.<SetShowAdvancedToFalse>k__BackingField = new RelayCommand(new Action(this.SetShowAdvancedToFalseCommand));
			this._appSettings.PropertyChanged += new PropertyChangedEventHandler(this.AppSettingsOnPropertyChanged);
			this._vpnConnector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.OnServerConnectionStatusChanged);
			this.set_DisplayName("General");
		}

		[AsyncStateMachine(typeof(SettingsViewModel.<OnActivate>d__22))]
		protected override void OnActivate()
		{
			SettingsViewModel.<OnActivate>d__22 <OnActivate>d__;
			<OnActivate>d__.<>4__this = this;
			<OnActivate>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnActivate>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnActivate>d__.<>t__builder;
			<>t__builder.Start<SettingsViewModel.<OnActivate>d__22>(ref <OnActivate>d__);
		}

		[AsyncStateMachine(typeof(SettingsViewModel.<SafeGetState>d__23))]
		private Task<VpnState> SafeGetState()
		{
			SettingsViewModel.<SafeGetState>d__23 <SafeGetState>d__;
			<SafeGetState>d__.<>4__this = this;
			<SafeGetState>d__.<>t__builder = AsyncTaskMethodBuilder<VpnState>.Create();
			<SafeGetState>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnState> <>t__builder = <SafeGetState>d__.<>t__builder;
			<>t__builder.Start<SettingsViewModel.<SafeGetState>d__23>(ref <SafeGetState>d__);
			return <SafeGetState>d__.<>t__builder.Task;
		}

		private void OnServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			this.RaiseStateChangedAccordingToState(e.State);
		}

		private void RaiseStateChangedAccordingToState(VpnState state)
		{
			this._vpnState = state;
			if (this._vpnState == null && this._cyberSecManager.IsEnabled)
			{
				this.ShowCyberSecReminder = true;
			}
			else
			{
				this.ShowCyberSecReminder = false;
			}
			this.NotifyOfPropertyChange("CyberSec");
		}

		public void RunDiagnostics()
		{
			try
			{
				this._diagnosticsLauncher.Start();
			}
			catch (Win32Exception)
			{
			}
		}

		public void Handle(AutoConnectTargetChangedMessage message)
		{
			this.NotifyOfPropertyChange("AutoConnectText");
		}

		public void Handle(CyberSecSettingChangedMessage message)
		{
			this.NotifyOfPropertyChange("CyberSec");
			this.NotifyOfPropertyChange("ShowCyberSecReminder");
		}

		private void AppSettingsOnPropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "KillSwitchApps")
			{
				this.KillSwitchApps.Clear();
				this.KillSwitchApps.AddRange(this.GetKillSwitchApps());
			}
		}

		private void RemoveAppCommand(ProcessItemViewModel item)
		{
			IEnumerable<KillSwitchApp> items = from a in this._appSettings.KillSwitchApps.Items
			where a.Path != item.Path
			select a;
			this._appSettings.KillSwitchApps = new KillSwitchSettings(items);
		}

		[AsyncStateMachine(typeof(SettingsViewModel.<OpenAppSelectPopup>d__131))]
		private void OpenAppSelectPopup()
		{
			SettingsViewModel.<OpenAppSelectPopup>d__131 <OpenAppSelectPopup>d__;
			<OpenAppSelectPopup>d__.<>4__this = this;
			<OpenAppSelectPopup>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OpenAppSelectPopup>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OpenAppSelectPopup>d__.<>t__builder;
			<>t__builder.Start<SettingsViewModel.<OpenAppSelectPopup>d__131>(ref <OpenAppSelectPopup>d__);
		}

		private void SetShowAdvancedToFalseCommand()
		{
			this.ShowAdvancedSettings = false;
		}

		private void SetAdvancedPopupToFalseCommand()
		{
			this.ShowAdvancedSettingsPopup = false;
		}

		private void ToggleAdvancedSettingsCommand()
		{
			this.ShowAdvancedSettings = !this.ShowAdvancedSettings;
		}

		private void OpenServerPickerCommand()
		{
			SettingsContainerViewModel expr_06 = this.SettingsContainer;
			if (expr_06 == null)
			{
				return;
			}
			expr_06.SwitchToSelectAutostart();
		}

		private void SaveDnsHostsCommand()
		{
			bool flag = false;
			using (IEnumerator<DnsHostViewModel> enumerator = this.DnsHosts.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if (!enumerator.Current.IsValid)
					{
						flag = true;
					}
				}
			}
			if (flag)
			{
				return;
			}
			UserPreferences arg_6D_0 = this._userPreferences;
			IEnumerable<DnsHostViewModel> arg_63_0 = this.DnsHosts;
			Func<DnsHostViewModel, string> arg_63_1;
			if ((arg_63_1 = SettingsViewModel.<>c.<>9__136_0) == null)
			{
				arg_63_1 = (SettingsViewModel.<>c.<>9__136_0 = new Func<DnsHostViewModel, string>(SettingsViewModel.<>c.<>9.<SaveDnsHostsCommand>b__136_0));
			}
			arg_6D_0.set_DnsServers(arg_63_0.Select(arg_63_1).ToList<string>());
		}

		private void RemoveDnsHostCommand(int index)
		{
			this.DnsHosts.RemoveAt(index - 1);
			for (int i = 0; i < this.DnsHosts.Count; i++)
			{
				this.DnsHosts[i].Key = i + 1;
			}
			this.SaveDnsHostsCommand();
		}

		private void AddDnsHostCommand()
		{
			this.DnsHosts.Add(new DnsHostViewModel(this.DnsHosts.Count + 1, "0.0.0.0"));
		}

		private bool CanCheckForUpdateCommand()
		{
			return !this._checkingForUpdate;
		}

		private void CheckForUpdateCommand()
		{
			try
			{
				this._checkingForUpdate = true;
				this._updater.CheckForUpdate();
			}
			finally
			{
				this._checkingForUpdate = false;
			}
		}

		private List<ProcessItemViewModel> GetKillSwitchApps()
		{
			return (from a in this._appSettings.KillSwitchApps.Items
			select new ProcessItemViewModel(a.Name, a.DisplayName, a.Path, this._iconProvider.GetIcon(a.Path))).ToList<ProcessItemViewModel>();
		}
	}
}
