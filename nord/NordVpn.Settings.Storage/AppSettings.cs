using NordVpn.Core.Abstract;
using NordVpn.Core.Utilities;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace NordVpn.Settings.Storage
{
	[Obsolete("Remove this class, Create ApplicationPreferences class to simplify viewmodels and make testability easier")]
	public class AppSettings : INotifyPropertyChanged
	{
		private readonly ISettingsStorage _storage;

		private string _autoConnectMode;

		private string _deviceId;

		private string _updateUri;

		private string _autoConnectTarget;

		private KillSwitchSettings _killSwitchApps;

		private bool? _startMinimized;

		private bool? _startOnStartup;

		private bool? _showServerList;

		private bool? _killSwitch;

		private bool? _appFirstRun;

		private bool? _autoConnect;

		private bool? _showMap;

		private bool? _showNotifications;

		private bool? _cyberSec;

		private bool? _showCyberSec;

		private StringCollection _cyberSecHosts;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public bool CyberSec
		{
			get
			{
				if (!this._cyberSec.HasValue)
				{
					this._cyberSec = new bool?(this.Get<bool>("CyberSec"));
				}
				return this._cyberSec.Value;
			}
			set
			{
				this.Set<bool?>(ref this._cyberSec, new bool?(value), "CyberSec");
			}
		}

		public IList<string> CyberSecHosts
		{
			get
			{
				if (this._cyberSecHosts == null)
				{
					this._cyberSecHosts = (this.Get<StringCollection>("CyberSecHosts") ?? new StringCollection());
				}
				return StringCollectionExtensions.AsList(this._cyberSecHosts);
			}
			set
			{
				this.Set<StringCollection>(ref this._cyberSecHosts, ListExtensions.AsStringCollection(value), "CyberSecHosts");
			}
		}

		public bool ShowCyberSecPopup
		{
			get
			{
				if (!this._showCyberSec.HasValue)
				{
					this._showCyberSec = new bool?(this.Get<bool>("ShowCyberSecPopup"));
				}
				return this._showCyberSec.Value;
			}
			set
			{
				this.Set<bool?>(ref this._showCyberSec, new bool?(value), "ShowCyberSecPopup");
			}
		}

		public bool ShowNotifications
		{
			get
			{
				if (!this._showNotifications.HasValue)
				{
					this._showNotifications = new bool?(this.Get<bool>("ShowNotifications"));
				}
				return this._showNotifications.Value;
			}
			set
			{
				this.Set<bool?>(ref this._showNotifications, new bool?(value), "ShowNotifications");
			}
		}

		public bool StartMinimized
		{
			get
			{
				if (!this._startMinimized.HasValue)
				{
					this._startMinimized = new bool?(this.Get<bool>("StartMinimized"));
				}
				return this._startMinimized.Value;
			}
			set
			{
				this.Set<bool?>(ref this._startMinimized, new bool?(value), "StartMinimized");
			}
		}

		public bool AppFirstRun
		{
			get
			{
				if (!this._appFirstRun.HasValue)
				{
					this._appFirstRun = new bool?(this.Get<bool>("AppFirstRun"));
				}
				return this._appFirstRun.Value;
			}
			set
			{
				this.Set<bool?>(ref this._appFirstRun, new bool?(value), "AppFirstRun");
			}
		}

		public bool AutoConnect
		{
			get
			{
				if (!this._autoConnect.HasValue)
				{
					this._autoConnect = new bool?(this.Get<bool>("AutoConnect"));
				}
				return this._autoConnect.Value;
			}
			set
			{
				this.Set<bool?>(ref this._autoConnect, new bool?(value), "AutoConnect");
			}
		}

		public bool StartOnStartup
		{
			get
			{
				if (!this._startOnStartup.HasValue)
				{
					this._startOnStartup = new bool?(this.Get<bool>("StartOnStartup"));
				}
				return this._startOnStartup.Value;
			}
			set
			{
				this.Set<bool?>(ref this._startOnStartup, new bool?(value), "StartOnStartup");
			}
		}

		public KillSwitchSettings KillSwitchApps
		{
			get
			{
				if (this._killSwitchApps == null)
				{
					this._killSwitchApps = (this.Get<KillSwitchSettings>("KillSwitchApps") ?? new KillSwitchSettings());
				}
				return this._killSwitchApps;
			}
			set
			{
				this.Set<KillSwitchSettings>(ref this._killSwitchApps, value, "KillSwitchApps");
			}
		}

		public bool KillSwitch
		{
			get
			{
				if (!this._killSwitch.HasValue)
				{
					this._killSwitch = new bool?(this.Get<bool>("KillSwitch"));
				}
				return this._killSwitch.Value;
			}
			set
			{
				this.Set<bool?>(ref this._killSwitch, new bool?(value), "KillSwitch");
			}
		}

		public string DeviceID
		{
			get
			{
				if (string.IsNullOrEmpty(this._deviceId))
				{
					this._deviceId = this.Get<string>("DeviceID");
				}
				return this._deviceId;
			}
			set
			{
				this.Set<string>(ref this._deviceId, value, "DeviceID");
			}
		}

		public string AutoConnectTarget
		{
			get
			{
				if (string.IsNullOrEmpty(this._autoConnectTarget))
				{
					this._autoConnectTarget = this.Get<string>("AutoConnectTarget");
				}
				return this._autoConnectTarget;
			}
			set
			{
				this.Set<string>(ref this._autoConnectTarget, value, "AutoConnectTarget");
			}
		}

		public string AutoConnectMode
		{
			get
			{
				if (string.IsNullOrEmpty(this._autoConnectMode))
				{
					this._autoConnectMode = this.Get<string>("AutoConnectMode");
				}
				return this._autoConnectMode;
			}
			set
			{
				this.Set<string>(ref this._autoConnectMode, value, "AutoConnectMode");
			}
		}

		public bool ShowServerList
		{
			get
			{
				if (!this._showServerList.HasValue)
				{
					this._showServerList = new bool?(this.Get<bool>("ShowServerList"));
				}
				return this._showServerList.Value;
			}
			set
			{
				this.Set<bool?>(ref this._showServerList, new bool?(value), "ShowServerList");
			}
		}

		public bool ShowMap
		{
			get
			{
				if (!this._showMap.HasValue)
				{
					this._showMap = new bool?(this.Get<bool>("ShowMap"));
				}
				return this._showMap.Value;
			}
			set
			{
				this.Set<bool?>(ref this._showMap, new bool?(value), "ShowMap");
			}
		}

		public string UpdateURI
		{
			get
			{
				if (string.IsNullOrEmpty(this._updateUri))
				{
					this._updateUri = this.Get<string>("UpdateURI");
				}
				return this._updateUri;
			}
		}

		public AppSettings(ISettingsStorage storage)
		{
			this._storage = storage;
		}

		private void Set<T>(ref T field, T value, [CallerMemberName] string propertyName = null)
		{
			if (EqualityComparer<T>.Default.Equals(field, value))
			{
				return;
			}
			field = value;
			this._storage.Set<T>(propertyName, value);
			PropertyChangedEventHandler expr_2E = this.PropertyChanged;
			if (expr_2E == null)
			{
				return;
			}
			expr_2E(this, new PropertyChangedEventArgs(propertyName));
		}

		private T Get<T>([CallerMemberName] string propertyName = null)
		{
			return this._storage.Get<T>(propertyName);
		}
	}
}
