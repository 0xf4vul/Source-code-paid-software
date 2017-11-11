using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Application.Analytics;
using NordVpn.AppServices.AutoConnect;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Geographical;
using NordVpn.Core.Models.Settings;
using NordVpn.CyberSec;
using NordVpn.CyberSec.Messages;
using NordVpn.KillSwitch.Services;
using NordVpn.KillSwitch.ViewModels;
using NordVpn.Shared;
using NordVpn.Updater;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;

namespace NordVpn.Settings.ViewModels
{
	public sealed class SettingsViewModel : AppScreen
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly SettingsViewModel.<>c <>9 = new SettingsViewModel.<>c();

			public static Func<string, int, DnsHostViewModel> <>9__58_0;

			public static Func<DnsHostViewModel, string> <>9__93_1;

			internal DnsHostViewModel <get_DnsHosts>b__58_0(string h, int i)
			{
				return new DnsHostViewModel(i + 1, h);
			}

			internal string <SaveDnsHosts>b__93_1(DnsHostViewModel h)
			{
				return h.Host;
			}
		}

		private readonly AppStartupManager _appStartupManager;

		private readonly IPersistedSettings _settings;

		private readonly CyberSecManager _cyberSecManager;

		private readonly IEventAggregator _eventAggregator;

		private readonly WinSparkleUpdater _updater;

		private readonly ExecutableIconProvider _iconProvider;

		private readonly DiagnosticsLauncher _diagnosticsLauncher;

		private ObservableCollection<ProcessItemViewModel> _killSwitchApps;

		private ObservableCollection<DnsHostViewModel> _dnsHosts;

		private bool _showAutoConnect;

		private bool _canCheckForUpdate = true;

		private bool _canOpenAppSelect = true;

		private bool _showCyberSecReminder;

		private bool _advancedSettingsVisible;

		private bool _advancedSettingsConfirmed;

		private readonly AutoConnectManager _autoConnectManager;

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
				this.Set<bool>(ref this._showCyberSecReminder, value, "ShowCyberSecReminder");
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
				if (value == this._cyberSecManager.IsEnabled)
				{
					return;
				}
				if (value)
				{
					if (!this._cyberSecManager.TryEnable())
					{
						EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, new ShowReconnectDialogMessage(true));
					}
				}
				else if (!this._cyberSecManager.TryDisable())
				{
					EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, new ShowReconnectDialogMessage(false));
				}
				this.NotifyOfPropertyChange("CyberSec");
			}
		}

		public string AutoConnectSelectButtonText
		{
			get
			{
				if (!this._autoConnectManager.IsAutoConnectTargetSet())
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
				return string.Format("Auto connect to {0}", this._autoConnectManager.GetAutoConnectDestination());
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
				this.Set<bool>(ref this._showAutoConnect, value, "ShowAutoConnect");
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

		public bool ShowServerList
		{
			get
			{
				return this._settings.Of<AppSettings>().get_ShowServerList();
			}
			set
			{
				PersistedSettingsExtension.Save<AppSettings>(this._settings, (AppSettings s) => s.get_ShowServerList() != value, delegate(AppSettings s)
				{
					s.set_ShowServerList(value);
				});
				this.NotifyOfPropertyChange("ShowServerList");
				SettingsViewModel.SendAnalytics("show_serverlist_clicked");
			}
		}

		public bool ShowMap
		{
			get
			{
				return this._settings.Of<AppSettings>().get_ShowMap();
			}
			set
			{
				PersistedSettingsExtension.Save<AppSettings>(this._settings, (AppSettings s) => s.get_ShowMap() != value, delegate(AppSettings s)
				{
					s.set_ShowMap(value);
				});
				this.NotifyOfPropertyChange("ShowMap");
				SettingsViewModel.SendAnalytics("show_map_clicked");
			}
		}

		public bool ObfuscatedServersOnly
		{
			get
			{
				return this._settings.Of<UserSettings>().IsObfuscationProtocolEnabled();
			}
			set
			{
				PersistedSettingsExtension.Save<UserSettings>(this._settings, delegate(UserSettings s)
				{
					s.SetObfuscationProtocol(value);
				});
				this.NotifyOfPropertyChange("ObfuscatedServersOnly");
			}
		}

		public VpnProtocol VpnProtocol
		{
			get
			{
				return this._settings.Of<UserSettings>().get_VpnProtocol();
			}
			set
			{
				PersistedSettingsExtension.Save<UserSettings>(this._settings, delegate(UserSettings s)
				{
					s.EnableProtocolByFamily(value);
				});
				this.NotifyOfPropertyChange("VpnProtocol");
			}
		}

		public DistanceUnits DistanceUnits
		{
			get
			{
				return this._settings.Of<UserSettings>().get_DistanceUnits();
			}
			set
			{
				PersistedSettingsExtension.Save<UserSettings>(this._settings, (UserSettings s) => s.get_DistanceUnits() != value, delegate(UserSettings s)
				{
					s.set_DistanceUnits(value);
				});
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
				return this._settings.Of<UserSettings>().get_CustomDnsServersEnabled();
			}
			set
			{
				PersistedSettingsExtension.Save<UserSettings>(this._settings, (UserSettings s) => s.get_CustomDnsServersEnabled() != value, delegate(UserSettings s)
				{
					s.set_CustomDnsServersEnabled(value);
				});
				this.NotifyOfPropertyChange("UseCustomDns");
			}
		}

		public ObservableCollection<DnsHostViewModel> DnsHosts
		{
			get
			{
				if (this._dnsHosts == null)
				{
					IEnumerable<string> arg_38_0 = this._settings.Of<UserSettings>().get_DnsServers();
					Func<string, int, DnsHostViewModel> arg_38_1;
					if ((arg_38_1 = SettingsViewModel.<>c.<>9__58_0) == null)
					{
						arg_38_1 = (SettingsViewModel.<>c.<>9__58_0 = new Func<string, int, DnsHostViewModel>(SettingsViewModel.<>c.<>9.<get_DnsHosts>b__58_0));
					}
					this._dnsHosts = arg_38_0.Select(arg_38_1).AsObservable<DnsHostViewModel>();
				}
				return this._dnsHosts;
			}
		}

		public bool ShowNotifications
		{
			get
			{
				return this._settings.Of<AppSettings>().get_ShowNotifications();
			}
			set
			{
				PersistedSettingsExtension.Save<AppSettings>(this._settings, (AppSettings s) => s.get_ShowNotifications() != value, delegate(AppSettings s)
				{
					s.set_ShowNotifications(value);
				});
				this.NotifyOfPropertyChange("ShowNotifications");
			}
		}

		public bool AutoConnect
		{
			get
			{
				return this._settings.Of<UserSettings>().get_AutoConnect();
			}
			set
			{
				PersistedSettingsExtension.Save<UserSettings>(this._settings, (UserSettings s) => s.get_AutoConnect() != value, delegate(UserSettings s)
				{
					s.set_AutoConnect(value);
				});
				this.NotifyOfPropertyChange("AutoConnect");
			}
		}

		public bool StartMinimized
		{
			get
			{
				return this._settings.Of<AppSettings>().get_StartMinimized();
			}
			set
			{
				PersistedSettingsExtension.Save<AppSettings>(this._settings, (AppSettings s) => s.get_StartMinimized() != value, delegate(AppSettings s)
				{
					s.set_StartMinimized(value);
				});
				this.NotifyOfPropertyChange("StartMinimized");
			}
		}

		public bool KillSwitch
		{
			get
			{
				return this._settings.Of<UserSettings>().get_KillSwitch();
			}
			set
			{
				PersistedSettingsExtension.Save<UserSettings>(this._settings, (UserSettings s) => s.get_KillSwitch() != value, delegate(UserSettings s)
				{
					s.set_KillSwitch(value);
				});
				this.NotifyOfPropertyChange("KillSwitch");
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
				this.NotifyOfPropertyChange("StartOnStartup");
			}
		}

		public bool CanOpenAppSelect
		{
			get
			{
				return this._canOpenAppSelect;
			}
			set
			{
				this.Set<bool>(ref this._canOpenAppSelect, value, "CanOpenAppSelect");
			}
		}

		public bool AdvancedSettingsVisible
		{
			get
			{
				return this._advancedSettingsVisible;
			}
			set
			{
				this.Set<bool>(ref this._advancedSettingsVisible, value, "AdvancedSettingsVisible");
			}
		}

		public bool AdvancedSettingsConfirmed
		{
			get
			{
				return this._advancedSettingsConfirmed;
			}
			set
			{
				this.Set<bool>(ref this._advancedSettingsConfirmed, value, "AdvancedSettingsConfirmed");
			}
		}

		public bool CanCheckForUpdate
		{
			get
			{
				return this._canCheckForUpdate;
			}
			set
			{
				this.Set<bool>(ref this._canCheckForUpdate, value, "CanCheckForUpdate");
			}
		}

		public SettingsViewModel(AppStartupManager appStartupManager, IPersistedSettings settings, WinSparkleUpdater updater, CyberSecManager cyberSecManager, IEventAggregator eventAggregator, AutoConnectManager autoConnectManager, DiagnosticsLauncher diagnosticsLauncher, ExecutableIconProvider iconProvider)
		{
			this._appStartupManager = appStartupManager;
			this._settings = settings;
			this._updater = updater;
			this._cyberSecManager = cyberSecManager;
			this._eventAggregator = eventAggregator;
			this._autoConnectManager = autoConnectManager;
			this._diagnosticsLauncher = diagnosticsLauncher;
			this._iconProvider = iconProvider;
			this._settings.Observe<UserSettings, IList<KillSwitchApp>>((UserSettings s) => s.KillSwitchApps, delegate(IList<KillSwitchApp> _)
			{
				this.UpdateKillSwitchApps();
			}).Observe<UserSettings, bool>((UserSettings s) => s.CyberSec, delegate(bool _)
			{
				this.UpdateCyberSecStatus();
			});
			this._cyberSecManager.VpnReconnectionNeeded += new EventHandler<EventArgs<bool>>(this.CyberSecManagerOnVpnReconnectionNeeded);
			this._autoConnectManager.AutoConnectTargetChanged += new EventHandler(this.NotifyAutoConnectTextChanged);
			this._autoConnectManager.AutoConnectServersChanged += new EventHandler(this.NotifyAutoConnectTextChanged);
			this.set_DisplayName("General");
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

		public void RemoveApp(ProcessItemViewModel item)
		{
			IEnumerable<KillSwitchApp> source = from a in this._settings.Of<UserSettings>().get_KillSwitchApps()
			where a.get_Path() != item.Path
			select a;
			this._settings.Of<UserSettings>().set_KillSwitchApps(source.ToList<KillSwitchApp>());
		}

		[AsyncStateMachine(typeof(SettingsViewModel.<OpenAppSelect>d__88))]
		public void OpenAppSelect()
		{
			SettingsViewModel.<OpenAppSelect>d__88 <OpenAppSelect>d__;
			<OpenAppSelect>d__.<>4__this = this;
			<OpenAppSelect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OpenAppSelect>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OpenAppSelect>d__.<>t__builder;
			<>t__builder.Start<SettingsViewModel.<OpenAppSelect>d__88>(ref <OpenAppSelect>d__);
		}

		public void ToggleAdvancedSettings()
		{
			this.AdvancedSettingsVisible = !this.AdvancedSettingsVisible;
		}

		public void ConfirmShowAdvancedSettings()
		{
			this.AdvancedSettingsConfirmed = true;
		}

		public void CancelShowAdvancedSettings()
		{
			this.AdvancedSettingsConfirmed = false;
			this.AdvancedSettingsVisible = false;
		}

		public void OpenServerPicker()
		{
			SettingsContainerViewModel expr_06 = this.SettingsContainer;
			if (expr_06 == null)
			{
				return;
			}
			expr_06.SwitchToSelectAutostart();
		}

		public void SaveDnsHosts()
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
			PersistedSettingsExtension.Save<UserSettings>(this._settings, delegate(UserSettings s)
			{
				IEnumerable<DnsHostViewModel> arg_26_0 = this.DnsHosts;
				Func<DnsHostViewModel, string> arg_26_1;
				if ((arg_26_1 = SettingsViewModel.<>c.<>9__93_1) == null)
				{
					arg_26_1 = (SettingsViewModel.<>c.<>9__93_1 = new Func<DnsHostViewModel, string>(SettingsViewModel.<>c.<>9.<SaveDnsHosts>b__93_1));
				}
				s.set_DnsServers(arg_26_0.Select(arg_26_1).ToList<string>());
			});
		}

		public void RemoveDnsHost(DnsHostViewModel dnsHostItem)
		{
			this.DnsHosts.Remove(dnsHostItem);
			for (int i = 0; i < this.DnsHosts.Count; i++)
			{
				this.DnsHosts[i].Key = i + 1;
			}
			this.SaveDnsHosts();
		}

		public void AddDnsHost()
		{
			this.DnsHosts.Add(new DnsHostViewModel(this.DnsHosts.Count + 1, "0.0.0.0"));
		}

		public void CheckForUpdate()
		{
			try
			{
				this.CanCheckForUpdate = false;
				this._updater.CheckForUpdate();
			}
			finally
			{
				this.CanCheckForUpdate = true;
			}
		}

		private List<ProcessItemViewModel> GetKillSwitchApps()
		{
			return (from a in this._settings.Of<UserSettings>().get_KillSwitchApps()
			select new ProcessItemViewModel(a.get_Name(), a.get_DisplayName(), a.get_Path(), this._iconProvider.GetIcon(a.get_Path()))).ToList<ProcessItemViewModel>();
		}

		private void UpdateKillSwitchApps()
		{
			this.KillSwitchApps.Clear();
			this.KillSwitchApps.AddRange(this.GetKillSwitchApps());
		}

		private void NotifyAutoConnectTextChanged(object sender, EventArgs e)
		{
			this.NotifyOfPropertyChange("AutoConnectText");
		}

		private void UpdateCyberSecStatus()
		{
			this.NotifyOfPropertyChange("CyberSec");
			this.NotifyOfPropertyChange("ShowCyberSecReminder");
		}

		private void CyberSecManagerOnVpnReconnectionNeeded(object sender, EventArgs<bool> eventArgs)
		{
			this.ShowCyberSecReminder = eventArgs.get_Data();
			this.NotifyOfPropertyChange("CyberSec");
		}

		[Analytics, Event("settings")]
		private static void SendAnalytics(string action)
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(SettingsViewModel.SendAnalytics(string)).MethodHandle, typeof(SettingsViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			analyticsAttribute.Init(null, methodFromHandle, new object[]
			{
				action
			});
			analyticsAttribute.OnEntry();
			try
			{
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}
	}
}
