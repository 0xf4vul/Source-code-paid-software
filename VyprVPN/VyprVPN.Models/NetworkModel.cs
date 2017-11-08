using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using GoldenFrogUT.Networking;
using Log;
using System;
using System.Collections.Concurrent;
using VyprVPN.Messages;

namespace VyprVPN.Models
{
	public class NetworkModel : ModelBase, INetworkModel
	{
		private static readonly FileLogger logger = FileLogger.get_Instance();

		private bool isDisposed;

		private INetworkStateMonitor _networkStateMonitor;

		public static readonly PropertyData ThroughputMeasurementsProperty = ModelBase.RegisterProperty<ConcurrentQueue<ThroughputMeasurement>>("ThroughputMeasurements", typeof(ConcurrentQueue<ThroughputMeasurement>), new ConcurrentQueue<ThroughputMeasurement>(), null, true, true, true);

		public static readonly PropertyData UpstreamRateProperty = ModelBase.RegisterProperty("UpstreamRate", typeof(long), null, null, true, true, true);

		public static readonly PropertyData DownstreamRateProperty = ModelBase.RegisterProperty("DownstreamRate", typeof(long), null, null, true, true, true);

		public ConcurrentQueue<ThroughputMeasurement> ThroughputMeasurements
		{
			get
			{
				return base.GetValue<ConcurrentQueue<ThroughputMeasurement>>(NetworkModel.ThroughputMeasurementsProperty);
			}
		}

		public long UpstreamRate
		{
			get
			{
				return base.GetValue<long>(NetworkModel.UpstreamRateProperty);
			}
			set
			{
				base.SetValue(NetworkModel.UpstreamRateProperty, value);
			}
		}

		public long DownstreamRate
		{
			get
			{
				return base.GetValue<long>(NetworkModel.DownstreamRateProperty);
			}
			set
			{
				base.SetValue(NetworkModel.DownstreamRateProperty, value);
			}
		}

		public NetworkModel()
		{
			NetworkModel.logger.Log(0, "Network model instantiated");
			this.StartNetworkMonitor();
		}

		private void StartNetworkMonitor()
		{
			NetworkModel.logger.Log(0, "Network throughput monitoring active");
			this._networkStateMonitor = ServiceLocatorExtensions.ResolveType<INetworkStateMonitorFactory>(ObjectExtensions.GetServiceLocator(this), null).Create(TimeSpan.FromSeconds(2.0), string.Format("NetworkModel {0}", this.GetHashCode()));
			this._networkStateMonitor.add_MeasurementCollected(new EventHandler<NetworkSnapshotEventArgs>(this.NetworkStateMonitorOnMeasurementCollected));
			this._networkStateMonitor.Start();
		}

		private void NetworkStateMonitorOnMeasurementCollected(object sender, NetworkSnapshotEventArgs args)
		{
			IVyprVPNController vyprVPNController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			ThroughputMeasurement throughputMeasurement;
			if (vyprVPNController.ConnectionStatus == 4)
			{
				throughputMeasurement = new ThroughputMeasurement(args.get_TimeOfSnapshot(), args.get_Bandwidths()[3], vyprVPNController.ConnectionStatus);
			}
			else
			{
				throughputMeasurement = new ThroughputMeasurement(args.get_TimeOfSnapshot(), args.get_Bandwidths()[1], vyprVPNController.ConnectionStatus);
			}
			if (vyprVPNController.KillSwitchActive)
			{
				this.ThroughputMeasurements.Enqueue(new ThroughputMeasurement(DateTime.Now, new BandwidthSnapshot(), vyprVPNController.ConnectionStatus));
			}
			else
			{
				this.ThroughputMeasurements.Enqueue(throughputMeasurement);
			}
			while (this.ThroughputMeasurements.Count > 1000)
			{
				ThroughputMeasurement throughputMeasurement2;
				if (!this.ThroughputMeasurements.TryDequeue(out throughputMeasurement2))
				{
					NetworkModel.logger.Log(3, "Could not dequeue throughput measurement after queue exceeded maximum capacity. Will try to dequeue again at next iteration.");
					break;
				}
				throughputMeasurement2 = null;
			}
			this.UpstreamRate = throughputMeasurement.Snapshot.get_UpstreamBitsPerSecond();
			this.DownstreamRate = throughputMeasurement.Snapshot.get_DownstreamBitsPerSecond();
			MessageBase<ThroughputMeasuredMessage, ThroughputMeasurement>.SendWith(throughputMeasurement, null);
		}

		public void Dispose()
		{
			if (!this.isDisposed)
			{
				this.Dispose(true);
				this.isDisposed = true;
			}
		}

		private void Dispose(bool doDispose)
		{
			if (doDispose)
			{
				GC.SuppressFinalize(this);
				this._networkStateMonitor.Stop();
				NetworkModel.logger.Log(0, "Network throughput monitoring stopped");
				this._networkStateMonitor.Dispose();
				this._networkStateMonitor = null;
				NetworkModel.logger.Log(0, new TraceMessage(string.Empty, "C:\\BuildAgent\\work\\f239b39ee858ff87\\VyprVPNUI\\Models\\NetworkModel.cs", 171, "Dispose").ToString());
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using GoldenFrogVPN;
using GoldenFrogVPN.Enums;
using GoldenFrogVPN.Interfaces;
using Log;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Globalization;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using VyprVPN.Properties;

namespace VyprVPN.Models
{
	public class PreferencesModel : ModelBase, IPreferencesModel
	{
		private readonly List<string> changedProperties = new List<string>();

		private PropertyInfo[] _PropertyInfos;

		public static readonly PropertyData LaunchOnLoginProperty = ModelBase.RegisterProperty("LaunchOnLogin", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ConnectOnStartupProperty = ModelBase.RegisterProperty("ConnectOnStartup", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ConnectOnLaunchProperty = ModelBase.RegisterProperty("ConnectOnLaunch", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData EnableConnectionLogProperty = ModelBase.RegisterProperty("EnableConnectionLog", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ReconnectOnDisconnectProperty = ModelBase.RegisterProperty("ReconnectOnDisconnect", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ConnectOnUnknownWifiProperty = ModelBase.RegisterProperty("ConnectOnUnknownWifi", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ConnectOnUnknownWifiIgnoreSsidsProperty = ModelBase.RegisterProperty("ConnectOnUnknownWifiIgnoreSsids", typeof(ObservableCollection<string>), null, null, true, true, true);

		public static readonly PropertyData NotificationPreferenceProperty = ModelBase.RegisterProperty("NotificationPreference", typeof(NotificationPreferenceEnum), null, null, true, true, true);

		public static readonly PropertyData ConnectSoundProperty = ModelBase.RegisterProperty("ConnectSound", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ConnectSoundFilePathProperty = ModelBase.RegisterProperty("ConnectSoundFilePath", typeof(string), null, null, true, true, true);

		public static readonly PropertyData DisconnectSoundProperty = ModelBase.RegisterProperty("DisconnectSound", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData DisconnectSoundFilePathProperty = ModelBase.RegisterProperty("DisconnectSoundFilePath", typeof(string), null, null, true, true, true);

		public static readonly PropertyData AnalyticsEnabledProperty = ModelBase.RegisterProperty("AnalyticsEnabled", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData SendCrashReportsProperty = ModelBase.RegisterProperty("SendCrashReports", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ProtocolProperty = ModelBase.RegisterProperty<Protocol>("Protocol", typeof(Protocol), -1, null, true, true, true);

		public static readonly PropertyData SelectedOpenVPNProtocolProperty = ModelBase.RegisterProperty<Protocol>("SelectedOpenVPNProtocol", typeof(Protocol), 3, null, true, true, true);

		public static readonly PropertyData OpenVpnPortsAndTransportProtocolConfigsProperty = ModelBase.RegisterProperty("OpenVpnPortsAndTransportProtocolConfigs", typeof(OpenVpnPortsAndTransportProtocolConfigCollection), null, null, true, true, true);

		public static readonly PropertyData AlternateDnsEnabledProperty = ModelBase.RegisterProperty("AlternateDnsEnabled", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData AlternateDnsPrimaryProperty = ModelBase.RegisterProperty("AlternateDnsPrimary", typeof(string), null, null, true, true, true);

		public static readonly PropertyData AlternateDnsSecondaryProperty = ModelBase.RegisterProperty("AlternateDnsSecondary", typeof(string), null, null, true, true, true);

		public static readonly PropertyData DnsLeakProtectionEnabledProperty = ModelBase.RegisterProperty("DnsLeakProtectionEnabled", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData KillSwitchEnabledProperty = ModelBase.RegisterProperty("KillSwitchEnabled", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData KillSwitchModeProperty = ModelBase.RegisterProperty("KillSwitchMode", typeof(KillSwitchModeEnum), null, null, true, true, true);

		public static readonly PropertyData KillLanTrafficEnabledProperty = ModelBase.RegisterProperty("KillLanTrafficEnabled", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData UiLocaleProperty = ModelBase.RegisterProperty("UiLocale", typeof(string), null, null, true, true, true);

		public static readonly PropertyData LooseUpdatesEnabledProperty = ModelBase.RegisterProperty<bool>("LooseUpdatesEnabled", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData SelectedTlsTimeoutProperty = ModelBase.RegisterProperty("SelectedTlsTimeout", typeof(int), null, null, true, true, true);

		public static readonly PropertyData SelectedMtuProperty = ModelBase.RegisterProperty("SelectedMtu", typeof(int), null, null, true, true, true);

		public static readonly PropertyData SelectedRouteDelayProperty = ModelBase.RegisterProperty("SelectedRouteDelay", typeof(int), null, null, true, true, true);

		public static readonly PropertyData SelectedOpenVpnLogVerbosityLevelProperty = ModelBase.RegisterProperty("SelectedOpenVpnLogVerbosityLevel", typeof(int), null, null, true, true, true);

		public static readonly PropertyData SelectedTAPAdapterProperty = ModelBase.RegisterProperty("SelectedTAPAdapter", typeof(TapAdapterType), null, null, true, true, true);

		public static readonly PropertyData AdditionalOpenVpnParametersProperty = ModelBase.RegisterProperty("AdditionalOpenVpnParameters", typeof(string), null, null, true, true, true);

		public static readonly PropertyData PerAppManagementEnabledProperty = ModelBase.RegisterProperty("PerAppManagementEnabled", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData PerAppInitialStateProperty = ModelBase.RegisterProperty("PerAppInitialState", typeof(PerAppBehavior), null, null, true, true, true);

		public static readonly PropertyData ApplicationListProperty = ModelBase.RegisterProperty("ApplicationList", typeof(IEnumerable<IApplicationItem>), null, null, true, true, true);

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChangedEvent;

		private static ISettings UISettings
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
			}
		}

		public bool LaunchOnLogin
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.LaunchOnLoginProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.LaunchOnLoginProperty, value);
			}
		}

		public bool ConnectOnStartup
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.ConnectOnStartupProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.ConnectOnStartupProperty, value);
			}
		}

		public bool ConnectOnLaunch
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.ConnectOnLaunchProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.ConnectOnLaunchProperty, value);
			}
		}

		public bool EnableConnectionLog
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.EnableConnectionLogProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.EnableConnectionLogProperty, value);
			}
		}

		public bool ReconnectOnDisconnect
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.ReconnectOnDisconnectProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.ReconnectOnDisconnectProperty, value);
			}
		}

		public bool ConnectOnUnknownWifi
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.ConnectOnUnknownWifiProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.ConnectOnUnknownWifiProperty, value);
			}
		}

		public ObservableCollection<string> ConnectOnUnknownWifiIgnoreSsids
		{
			get
			{
				return base.GetValue<ObservableCollection<string>>(PreferencesModel.ConnectOnUnknownWifiIgnoreSsidsProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.ConnectOnUnknownWifiIgnoreSsidsProperty, value);
			}
		}

		public NotificationPreferenceEnum NotificationPreference
		{
			get
			{
				return base.GetValue<NotificationPreferenceEnum>(PreferencesModel.NotificationPreferenceProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.NotificationPreferenceProperty, value);
			}
		}

		public bool ConnectSound
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.ConnectSoundProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.ConnectSoundProperty, value);
			}
		}

		public string ConnectSoundFilePath
		{
			get
			{
				return base.GetValue<string>(PreferencesModel.ConnectSoundFilePathProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.ConnectSoundFilePathProperty, value);
			}
		}

		public bool DisconnectSound
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.DisconnectSoundProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.DisconnectSoundProperty, value);
			}
		}

		public string DisconnectSoundFilePath
		{
			get
			{
				return base.GetValue<string>(PreferencesModel.DisconnectSoundFilePathProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.DisconnectSoundFilePathProperty, value);
			}
		}

		public bool AnalyticsEnabled
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.AnalyticsEnabledProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.AnalyticsEnabledProperty, value);
			}
		}

		public bool SendCrashReports
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.SendCrashReportsProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.SendCrashReportsProperty, value);
			}
		}

		public Protocol Protocol
		{
			get
			{
				return base.GetValue<Protocol>(PreferencesModel.ProtocolProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.ProtocolProperty, value);
			}
		}

		public Protocol SelectedOpenVPNProtocol
		{
			get
			{
				return base.GetValue<Protocol>(PreferencesModel.SelectedOpenVPNProtocolProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.SelectedOpenVPNProtocolProperty, value);
			}
		}

		public OpenVpnPortsAndTransportProtocolConfigCollection OpenVpnPortsAndTransportProtocolConfigs
		{
			get
			{
				return base.GetValue<OpenVpnPortsAndTransportProtocolConfigCollection>(PreferencesModel.OpenVpnPortsAndTransportProtocolConfigsProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.OpenVpnPortsAndTransportProtocolConfigsProperty, value);
				base.RaisePropertyChanged<OpenVpnPortsAndTransportProtocolConfigCollection>(() => this.OpenVpnPortsAndTransportProtocolConfigs);
			}
		}

		public string UiLocale
		{
			get
			{
				return base.GetValue<string>(PreferencesModel.UiLocaleProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.UiLocaleProperty, value);
			}
		}

		public bool LooseUpdatesEnabled
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.LooseUpdatesEnabledProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.LooseUpdatesEnabledProperty, value);
			}
		}

		public bool AlternateDnsEnabled
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.AlternateDnsEnabledProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.AlternateDnsEnabledProperty, value);
			}
		}

		public string AlternateDnsPrimary
		{
			get
			{
				return base.GetValue<string>(PreferencesModel.AlternateDnsPrimaryProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.AlternateDnsPrimaryProperty, value);
			}
		}

		public string AlternateDnsSecondary
		{
			get
			{
				return base.GetValue<string>(PreferencesModel.AlternateDnsSecondaryProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.AlternateDnsSecondaryProperty, value);
			}
		}

		public bool DnsLeakProtectionEnabled
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.DnsLeakProtectionEnabledProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.DnsLeakProtectionEnabledProperty, value);
			}
		}

		public bool KillSwitchEnabled
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.KillSwitchEnabledProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.KillSwitchEnabledProperty, value);
			}
		}

		public KillSwitchModeEnum KillSwitchMode
		{
			get
			{
				return base.GetValue<KillSwitchModeEnum>(PreferencesModel.KillSwitchModeProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.KillSwitchModeProperty, value);
			}
		}

		public bool KillLanTrafficEnabled
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.KillLanTrafficEnabledProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.KillLanTrafficEnabledProperty, value);
			}
		}

		public int SelectedTlsTimeout
		{
			get
			{
				return base.GetValue<int>(PreferencesModel.SelectedTlsTimeoutProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.SelectedTlsTimeoutProperty, value);
			}
		}

		public int SelectedMtu
		{
			get
			{
				return base.GetValue<int>(PreferencesModel.SelectedMtuProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.SelectedMtuProperty, value);
			}
		}

		public int SelectedRouteDelay
		{
			get
			{
				return base.GetValue<int>(PreferencesModel.SelectedRouteDelayProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.SelectedRouteDelayProperty, value);
			}
		}

		public int SelectedOpenVpnLogVerbosityLevel
		{
			get
			{
				return base.GetValue<int>(PreferencesModel.SelectedOpenVpnLogVerbosityLevelProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.SelectedOpenVpnLogVerbosityLevelProperty, value);
			}
		}

		public TapAdapterType SelectedTAPAdapter
		{
			get
			{
				return base.GetValue<TapAdapterType>(PreferencesModel.SelectedTAPAdapterProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.SelectedTAPAdapterProperty, value);
			}
		}

		public string AdditionalOpenVpnParameters
		{
			get
			{
				return base.GetValue<string>(PreferencesModel.AdditionalOpenVpnParametersProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.AdditionalOpenVpnParametersProperty, value);
			}
		}

		public bool PerAppManagementEnabled
		{
			get
			{
				return base.GetValue<bool>(PreferencesModel.PerAppManagementEnabledProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.PerAppManagementEnabledProperty, value);
			}
		}

		public PerAppBehavior PerAppInitialState
		{
			get
			{
				return base.GetValue<PerAppBehavior>(PreferencesModel.PerAppInitialStateProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.PerAppInitialStateProperty, value);
			}
		}

		public IEnumerable<IApplicationItem> ApplicationList
		{
			get
			{
				return base.GetValue<IEnumerable<IApplicationItem>>(PreferencesModel.ApplicationListProperty);
			}
			set
			{
				base.SetValue(PreferencesModel.ApplicationListProperty, value);
			}
		}

		public PreferencesModel()
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.UiLocale = PreferencesModel.SelectDefaultUiLocale();
			});
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName != "IsDirty")
			{
				if (!this.changedProperties.Contains(e.PropertyName))
				{
					this.changedProperties.Add(e.PropertyName);
				}
				PropertyChangedEventHandler propertyChangedEvent = this.PropertyChangedEvent;
				if (propertyChangedEvent != null)
				{
					propertyChangedEvent(this, e);
				}
			}
		}

		public void ClearDirtyFlag()
		{
			this.changedProperties.Clear();
			base.set_IsDirty(false);
		}

		public string[] GetDirtyProperties()
		{
			return this.changedProperties.ToArray();
		}

		public static string SelectDefaultUiLocale()
		{
			ILogger instance = FileLogger.get_Instance();
			if (PreferencesModel.UISettings.SelectedUILocale.Equals("unset"))
			{
				CultureInfo currentCulture = Thread.CurrentThread.CurrentCulture;
				instance.Log(0, "SelectedUILocale unset. Current culture is {0}", new object[]
				{
					currentCulture.Name
				});
				string text = currentCulture.TwoLetterISOLanguageName.ToLower().Trim();
				if (new List<string>
				{
					"zh",
					"nl",
					"en",
					"fr",
					"de",
					"ja",
					"ko",
					"pt",
					"es",
					"it",
					"tr",
					"ar"
				}.Contains(text))
				{
					if (text.Equals("zh"))
					{
						if (currentCulture.Name.ToLower().Contains("cn"))
						{
							PreferencesModel.UISettings.SelectedUILocale = "zh-cn";
						}
						else
						{
							PreferencesModel.UISettings.SelectedUILocale = "zh-tw";
						}
					}
					else
					{
						PreferencesModel.UISettings.SelectedUILocale = text;
					}
				}
				else
				{
					instance.Log(0, "Current culture not supported, selecting english");
					PreferencesModel.UISettings.SelectedUILocale = "en";
				}
				PreferencesModel.UISettings.Save();
			}
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).UpdateCurrentThreadLocale();
			return PreferencesModel.UISettings.SelectedUILocale;
		}

		public override string ToString()
		{
			if (this._PropertyInfos == null)
			{
				this._PropertyInfos = base.GetType().GetProperties();
			}
			StringBuilder stringBuilder = new StringBuilder();
			PropertyInfo[] propertyInfos = this._PropertyInfos;
			int i = 0;
			while (i < propertyInfos.Length)
			{
				PropertyInfo propertyInfo = propertyInfos[i];
				object obj = propertyInfo.GetValue(this, null) ?? "(null)";
				if (propertyInfo.PropertyType == typeof(ObservableCollection<string>))
				{
					stringBuilder.AppendLine(propertyInfo.Name + ": ");
					using (IEnumerator<string> enumerator = (obj as ObservableCollection<string>).GetEnumerator())
					{
						while (enumerator.MoveNext())
						{
							string current = enumerator.Current;
							stringBuilder.Append(current);
						}
						goto IL_C9;
					}
					goto IL_AB;
				}
				goto IL_AB;
				IL_C9:
				i++;
				continue;
				IL_AB:
				stringBuilder.AppendLine(propertyInfo.Name + ": " + obj.ToString());
				goto IL_C9;
			}
			return stringBuilder.ToString();
		}
	}
}
