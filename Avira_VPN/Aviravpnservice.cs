using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

namespace Avira.VpnService
{
	public class Adapter : NetCfgComponent
	{
		private static Guid adapterGuid = new Guid(1295444338u, 58149, 4558, 191, 193, 8, 0, 43, 225, 3, 24);

		private static Guid netCfgClassGuid = new Guid("C0E8AE97-306E-11D1-AACF-00805FC1270E");

		public Adapter(INetCfg cfg, INetCfgComponent component) : base(cfg, component)
		{
		}

		[IteratorStateMachine(typeof(Adapter.<GetAdapters>d__3))]
		public static IEnumerable<Adapter> GetAdapters(INetCfg cfg)
		{
			object obj;
			int num = cfg.QueryNetCfgClass(ref Adapter.adapterGuid, ref Adapter.netCfgClassGuid, out obj);
			if (num != 0)
			{
				throw new Exception("INetCfg.QueryNetCfgClass failed");
			}
			INetCfgClass expr_46 = obj as INetCfgClass;
			if (expr_46 == null)
			{
				throw new Exception("INetCfgClass failed");
			}
			num = expr_46.EnumComponents(out obj);
			if (num != 0)
			{
				throw new Exception("INetCfgClass.EnumComponents failed");
			}
			IEnumNetCfgComponent enumNetCfgComponent = obj as IEnumNetCfgComponent;
			if (enumNetCfgComponent == null)
			{
				throw new Exception("IEnumNetCfgComponent failed");
			}
			num = enumNetCfgComponent.Reset();
			if (num != 0)
			{
				throw new Exception("INetCfgClass.EnumComponents failed");
			}
			int num2;
			for (num = enumNetCfgComponent.Next(1, out obj, out num2); num == 0; num = enumNetCfgComponent.Next(1, out obj, out num2))
			{
				INetCfgComponent netCfgComponent = obj as INetCfgComponent;
				if (netCfgComponent == null)
				{
					break;
				}
				yield return new Adapter(cfg, netCfgComponent);
			}
			yield break;
		}

		public void Enable(string protocol)
		{
			foreach (BindingPath current in base.GetPaths(NetCfgComponent.EnumBindingPathFlags.EBP_ABOVE))
			{
				if (current.GetOwner().GetId() == protocol)
				{
					current.Enable();
				}
			}
		}

		public void DisableAllProtocols()
		{
			using (IEnumerator<BindingPath> enumerator = base.GetPaths(NetCfgComponent.EnumBindingPathFlags.EBP_ABOVE).GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					enumerator.Current.Disable();
				}
			}
		}
	}
}

using Avira.VPN.Core;
using System;

namespace Avira.VpnService
{
	public static class AppSettings
	{
		public static AppSettingsData Get()
		{
			return new AppSettingsData
			{
				AppImprovement = ProductSettings.ProductImprovement,
				KillSwitch = ProductSettings.KillSwitch,
				UdpSupport = (Features.IsAvailable(Feature.FtUdpSupport) && ProductSettings.UdpSupport)
			};
		}

		public static void Set(AppSettingsData value)
		{
			ProductSettings.ProductImprovement = value.AppImprovement;
			SentryLogTarget.Enabled = ProductSettings.ProductImprovement;
			if (!value.KillSwitch && ProductSettings.KillSwitch)
			{
				NetworkBlocker.Disable();
			}
			ProductSettings.KillSwitch = value.KillSwitch;
			if (value.UdpSupport != ProductSettings.UdpSupport)
			{
				MixPanelProfileUpdater expr_47 = MixPanelProfileUpdater.Instance;
				if (expr_47 != null)
				{
					expr_47.ConnectionProtocolChanged(value.UdpSupport);
				}
				ProductSettings.UdpSupport = value.UdpSupport;
			}
		}
	}
}

using Newtonsoft.Json;
using System;

namespace Avira.VpnService
{
	public class AppSettingsData
	{
		[JsonProperty(PropertyName = "appImprovement")]
		public bool AppImprovement
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "killSwitch")]
		public bool KillSwitch
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "udpSupport")]
		public bool UdpSupport
		{
			get;
			set;
		}
	}
}

using System;

namespace Avira.VpnService
{
	public class AuthNotification : OpenVpnNotification
	{
		public enum AuthTypes
		{
			Auth,
			PrivateKey,
			Failed
		}

		public AuthNotification.AuthTypes Type
		{
			get;
			protected set;
		}

		public AuthNotification(string message)
		{
			if (message.StartsWith("Need"))
			{
				string reason;
				this.Type = AuthNotification.ParseAuthType(message, out reason);
				base.Reason = reason;
				return;
			}
			if (message.StartsWith("Verification Failed"))
			{
				this.Type = AuthNotification.AuthTypes.Failed;
				base.Reason = message;
				return;
			}
			throw new Exception(string.Format("[error] Wrong format of password real-time notification : {0}", message));
		}

		private static AuthNotification.AuthTypes ParseAuthType(string message, out string reason)
		{
			if (message.Contains("'Auth'"))
			{
				reason = "Auth Auth Request";
				return AuthNotification.AuthTypes.Auth;
			}
			if (message.Contains("'Private Key'"))
			{
				reason = "Private Key Auth Request";
				return AuthNotification.AuthTypes.PrivateKey;
			}
			throw new Exception(string.Format("[error] Wrong auth request type in password real-time notification : {0}", message));
		}

		public override string ToString()
		{
			return string.Format("[{0}] {1} ({2}) : {3}", new object[]
			{
				base.Timestamp.ToShortDateString(),
				base.GetType(),
				this.Type,
				base.Reason
			});
		}
	}
}

using System;

namespace Avira.VpnService
{
	public class BindingPath
	{
		private readonly INetCfgBindingPath path;

		private readonly INetCfg cfg;

		public BindingPath(INetCfg cfg, INetCfgBindingPath path)
		{
			this.path = path;
			this.cfg = cfg;
		}

		public NetCfgComponent GetOwner()
		{
			object obj;
			if (this.path.GetOwner(out obj) != 0)
			{
				throw new Exception("INetCfgBindingPath.GetOwner failed");
			}
			INetCfgComponent netCfgComponent = obj as INetCfgComponent;
			if (netCfgComponent == null)
			{
				throw new Exception("INetCfgComponent failed");
			}
			return new NetCfgComponent(this.cfg, netCfgComponent);
		}

		public void Enable()
		{
			if (this.path.Enable(true) != 0)
			{
				throw new Exception("INetCfgBindingPath::Enable failed");
			}
		}

		public void Disable()
		{
			if (this.path.Enable(false) != 0)
			{
				throw new Exception("INetCfgBindingPath::Enable failed");
			}
		}
	}
}

using System;

namespace Avira.VpnService
{
	public class ByteCountNotification : OpenVpnNotification
	{
		public ulong Ingoing
		{
			get;
			private set;
		}

		public ulong Outgoing
		{
			get;
			private set;
		}

		public ByteCountNotification(string message)
		{
			string[] array = message.Split(new char[]
			{
				','
			});
			this.Ingoing = ulong.Parse(array[0]);
			this.Outgoing = ulong.Parse(array[1]);
		}
	}
}

using Avira.VPN.Core;
using System;

namespace Avira.VpnService
{
	public class CommandLineParametersBuilder
	{
		public readonly string DefaultValue = "--mute-replay-warnings --management-hold --block-outside-dns --management-query-passwords --service AviraVPNOpenVpnQuitEvent --redirect-gateway def1 --register-dns --resolv-retry 15 --connect-retry-max 3 --tls-exit --remap-usr1 SIGTERM";

		private string commandLineParameters;

		public RemoteConnectionSettings OpenVpnServerSettings
		{
			get;
			set;
		}

		public RemoteConnectionSettings ManagementConsoleSettings
		{
			get;
			set;
		}

		public bool IsIpV6
		{
			get;
			set;
		}

		public string ConfigFilePath
		{
			get;
			set;
		}

		public string AdapterName
		{
			get;
			set;
		}

		public string Create()
		{
			this.commandLineParameters = this.DefaultValue;
			if (this.OpenVpnServerSettings != null)
			{
				this.AddToArgumentsList("remote", this.OpenVpnServerSettings.ToString());
				this.AddToArgumentsList("hand-window", this.OpenVpnServerSettings.TlsHadshakeWindow.ToString());
			}
			this.AddToArgumentsList("config", this.ConfigFilePath);
			if (this.ManagementConsoleSettings != null)
			{
				this.AddToArgumentsList("management", this.ManagementConsoleSettings.ToString());
			}
			if (this.IsIpV6)
			{
				this.AddToArgumentsList("tun-ipv6", "");
			}
			else
			{
				this.AddToArgumentsList("no-ipv6", "");
			}
			if (!string.IsNullOrEmpty(this.AdapterName))
			{
				this.AddToArgumentsList("dev-node", "\"" + this.AdapterName + "\"");
			}
			return this.commandLineParameters;
		}

		private void AddToArgumentsList(string name, string value = "")
		{
			if (value == null)
			{
				return;
			}
			string text = " --" + name;
			if (!string.IsNullOrEmpty(value))
			{
				text = text + " " + value;
			}
			this.commandLineParameters += text;
		}
	}
}

using System;

namespace Avira.VpnService
{
	public enum COMPONENT_CHARACTERISTICS
	{
		NCF_VIRTUAL = 1,
		NCF_SOFTWARE_ENUMERATED,
		NCF_PHYSICAL = 4,
		NCF_HIDDEN = 8,
		NCF_NO_SERVICE = 16,
		NCF_NOT_USER_REMOVABLE = 32,
		NCF_MULTIPORT_INSTANCED_ADAPTER = 64,
		NCF_HAS_UI = 128,
		NCF_SINGLE_INSTANCE = 256,
		NCF_FILTER = 1024,
		NCF_DONTEXPOSELOWER = 4096,
		NCF_HIDE_BINDING = 8192,
		NCF_NDIS_PROTOCOL = 16384,
		NCF_FIXED_BINDING = 131072
	}
}

using System;

namespace Avira.VpnService
{
	public class Credentials
	{
		public Func<string> UserId
		{
			get;
			set;
		}

		public Func<string> Password
		{
			get;
			set;
		}
	}
}

using System;

namespace Avira.VpnService
{
	public class EducationMessage
	{
		public string Title
		{
			get;
			set;
		}

		public string Title2
		{
			get;
			set;
		}

		public string Message
		{
			get;
			set;
		}

		public string Question
		{
			get;
			set;
		}

		public string Hint
		{
			get;
			set;
		}

		public string Button
		{
			get;
			set;
		}

		public string Image
		{
			get;
			set;
		}

		public string Url
		{
			get;
			set;
		}

		public string BaloonText
		{
			get;
			set;
		}
	}
}

using Avira.Core;
using Avira.VPN.Core;
using Avira.VpnService.Properties;
using System;

namespace Avira.VpnService
{
	public class EducationMessageRotator
	{
		private static readonly string VpnPrivacyLandingPageUrl = string.Format("https://www.avira.com/{0}/vpn-privacy", ProductSettings.ProductLanguage);

		private static readonly string VpnTravelerLandingPageUrl = string.Format("https://www.avira.com/{0}/vpn-traveler", ProductSettings.ProductLanguage);

		private static readonly string VpnWifiLandingPageUrl = string.Format("https://www.avira.com/{0}/vpn-wifi", ProductSettings.ProductLanguage);

		private readonly EducationMessage[] messages = new EducationMessage[]
		{
			new EducationMessage
			{
				Title = ResourcesVpnService.EducationMessageOnlinePrivacyTitle,
				Title2 = ResourcesVpnService.EducationMessageOnlinePrivacyTitle2,
				Message = ResourcesVpnService.EducationMessageOnlinePrivacyMessage,
				Question = ResourcesVpnService.EducationMessageOnlinePrivacyQuestion,
				Hint = ResourcesVpnService.EducationMessageOnlinePrivacyHint,
				Button = ResourcesVpnService.EducationMessageOnlinePrivacyButton,
				Image = "onlineprivacy.png",
				Url = EducationMessageRotator.VpnPrivacyLandingPageUrl,
				BaloonText = ResourcesVpnService.EducationMessageOnlinePrivacyBaloon
			},
			new EducationMessage
			{
				Title = ResourcesVpnService.EducationMessageTravelerTitle,
				Title2 = ResourcesVpnService.EducationMessageTravelerTitle2,
				Message = ResourcesVpnService.EducationMessageTravelerMessage,
				Question = ResourcesVpnService.EducationMessageTravelerQuestion,
				Hint = ResourcesVpnService.EducationMessageTravelerHint,
				Button = ResourcesVpnService.EducationMessageTravelerButton,
				Image = "traveler.png",
				Url = EducationMessageRotator.VpnTravelerLandingPageUrl,
				BaloonText = ResourcesVpnService.EducationMessageTravelerBaloon
			},
			new EducationMessage
			{
				Title = ResourcesVpnService.EducationMessageWifiTitle,
				Title2 = ResourcesVpnService.EducationMessageWifiTitle2,
				Message = ResourcesVpnService.EducationMessageWifiMessage,
				Question = ResourcesVpnService.EducationMessageWifiQuestion,
				Hint = ResourcesVpnService.EducationMessageWifiHint,
				Button = ResourcesVpnService.EducationMessageWifiButton,
				Image = "lock.png",
				Url = EducationMessageRotator.VpnWifiLandingPageUrl,
				BaloonText = ResourcesVpnService.EducationMessageWifiBaloon
			}
		};

		private int currentId;

		private IVpnNotifier notifier;

		private IServicePersistentData persistentData;

		public EducationMessageRotator(IVpnNotifier notifier)
		{
			this.notifier = notifier;
			this.persistentData = new ServicePersistentData();
			this.currentId = this.persistentData.CurrentEducationMessage;
		}

		public void Show()
		{
			Log.Debug(string.Format("Showing education notification with id {0}", this.currentId));
			this.notifier.NotifyLearnMore(this.messages[this.currentId]);
			this.currentId++;
			if (this.currentId >= this.messages.Length)
			{
				this.currentId = 0;
			}
			this.persistentData.CurrentEducationMessage = this.currentId;
		}

		public string GetBaloonText()
		{
			return this.messages[this.currentId].BaloonText;
		}
	}
}

using System;

namespace Avira.VpnService
{
	public class FatalNotification : OpenVpnNotification
	{
		public FatalNotification(string message)
		{
			base.Reason = message;
		}

		public override string ToString()
		{
			return string.Format("[{0}] {1} : {2}", base.Timestamp.ToLongDateString(), base.GetType(), base.Reason);
		}
	}
}

using System;

namespace Avira.VpnService
{
	public enum Feature
	{
		FtKillSwitch = 1,
		FtUdpSupport
	}
}

using Avira.VPN.Core;
using Avira.VpnService.Properties;
using Newtonsoft.Json;
using System;
using System.Reflection;

namespace Avira.VpnService
{
	public class Features
	{
		private RemoteFeature remoteFeature;

		[JsonProperty(PropertyName = "killSwitch")]
		public bool KillSwitch
		{
			get
			{
				return true;
			}
		}

		[JsonProperty(PropertyName = "disableTracking")]
		public bool DisableTracking
		{
			get
			{
				return true;
			}
		}

		[JsonProperty(PropertyName = "autoStart")]
		public bool AutoStart
		{
			get
			{
				return true;
			}
		}

		[JsonProperty(PropertyName = "autoConnectUnsecureWifi")]
		public bool AutoconnectUnsecureWifi
		{
			get
			{
				return false;
			}
		}

		[JsonProperty(PropertyName = "wifiManagement")]
		public bool WifiManagement
		{
			get
			{
				return true;
			}
		}

		[JsonProperty(PropertyName = "udpSupport")]
		public bool UdpSupport
		{
			get
			{
				return this.remoteFeature.IsActive("udp_support", Settings.Default.IsBeta);
			}
		}

		[JsonProperty(PropertyName = "enableCancelConnecting")]
		public bool EnableCancelConnecting
		{
			get
			{
				return true;
			}
		}

		[JsonProperty(PropertyName = "trial")]
		public bool TrialAvailable
		{
			get
			{
				return this.IsActive("trial", false);
			}
		}

		public Features(RemoteFeature remoteFeature)
		{
			this.remoteFeature = remoteFeature;
		}

		public static bool IsAvailable(Feature feature)
		{
			string name = feature.ToString().Substring(2);
			PropertyInfo property = typeof(Features).GetProperty(name);
			if (property != null)
			{
				Features obj = new Features(DiContainer.Resolve<RemoteFeature>());
				return (bool)property.GetValue(obj);
			}
			return false;
		}

		protected bool IsActive(string id, bool defaultValue = false)
		{
			if (this.remoteFeature != null)
			{
				return this.remoteFeature.IsActive(id, defaultValue);
			}
			return defaultValue;
		}
	}
}

using System;

namespace Avira.VpnService
{
	public class HoldNotification : OpenVpnNotification
	{
		public HoldNotification(string message)
		{
			base.Reason = message;
		}

		public override string ToString()
		{
			return string.Format("[{0}] {1} : {2}", base.Timestamp.ToLongDateString(), base.GetType(), base.Reason);
		}
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE90-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface IEnumNetCfgBindingInterface
	{
		[PreserveSig]
		int Next([MarshalAs(UnmanagedType.U4)] [In] int celt, [MarshalAs(UnmanagedType.IUnknown)] out object rgelt, [MarshalAs(UnmanagedType.U4)] out int pceltFetched);

		[PreserveSig]
		int Skip([MarshalAs(UnmanagedType.U4)] [In] int celt);

		[PreserveSig]
		int Reset();

		[PreserveSig]
		int Clone([MarshalAs(UnmanagedType.IUnknown)] out object ppenum);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE92-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface IEnumNetCfgComponent
	{
		[PreserveSig]
		int Next([MarshalAs(UnmanagedType.U4)] [In] int celt, [MarshalAs(UnmanagedType.IUnknown)] out object rgelt, [MarshalAs(UnmanagedType.U4)] out int pceltFetched);

		[PreserveSig]
		int Skip([MarshalAs(UnmanagedType.U4)] [In] int celt);

		[PreserveSig]
		int Reset();

		[PreserveSig]
		int Clone([MarshalAs(UnmanagedType.IUnknown)] out object ppenum);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE91-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface IEnumNetCfgBindingPath
	{
		[PreserveSig]
		int Next([MarshalAs(UnmanagedType.U4)] [In] int celt, [MarshalAs(UnmanagedType.IUnknown)] out object rgelt, [MarshalAs(UnmanagedType.U4)] out int pceltFetched);

		[PreserveSig]
		int Skip([MarshalAs(UnmanagedType.U4)] [In] int celt);

		[PreserveSig]
		int Reset();

		[PreserveSig]
		int Clone([MarshalAs(UnmanagedType.IUnknown)] out object ppenum);
	}
}

using System;

namespace Avira.VpnService
{
	public interface IManagementEndpoint : IDisposable
	{
		event EventHandler<ManagementMessage> MessageReceived;

		event EventHandler<EventArgs> StreamClosed;

		void Request(string command);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE93-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface INetCfg
	{
		[PreserveSig]
		int Initialize(IntPtr reserved);

		[PreserveSig]
		int Uninitialize();

		[PreserveSig]
		int Apply();

		[PreserveSig]
		int Cancel();

		[PreserveSig]
		int EnumComponents(IntPtr pguidClass, [MarshalAs(UnmanagedType.IUnknown)] out object ppenumComponent);

		[PreserveSig]
		int FindComponent([MarshalAs(UnmanagedType.LPWStr)] [In] string pszwInfId, [MarshalAs(UnmanagedType.IUnknown)] out object component);

		[PreserveSig]
		int QueryNetCfgClass([In] ref Guid pguidClass, ref Guid riid, [MarshalAs(UnmanagedType.IUnknown)] out object ppvObject);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE94-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface INetCfgBindingInterface
	{
		[PreserveSig]
		int GetName([MarshalAs(UnmanagedType.LPWStr)] out string ppszwInterfaceName);

		[PreserveSig]
		int GetUpperComponent([MarshalAs(UnmanagedType.IUnknown)] out object ppnccItem);

		[PreserveSig]
		int GetLowerComponent([MarshalAs(UnmanagedType.IUnknown)] out object ppnccItem);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE96-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface INetCfgBindingPath
	{
		[PreserveSig]
		int IsSamePathAs([MarshalAs(UnmanagedType.IUnknown)] [In] object path);

		[PreserveSig]
		int IsSubPathOf([MarshalAs(UnmanagedType.IUnknown)] [In] object path);

		[PreserveSig]
		int IsEnabled();

		[PreserveSig]
		int Enable([MarshalAs(UnmanagedType.Bool)] bool enable);

		[PreserveSig]
		int GetPathToken([MarshalAs(UnmanagedType.LPWStr)] out string ppszwPathToken);

		[PreserveSig]
		int GetOwner([MarshalAs(UnmanagedType.IUnknown)] out object component);

		[PreserveSig]
		int GetDepth([MarshalAs(UnmanagedType.U4)] out int interfaces);

		[PreserveSig]
		int EnumBindingInterfaces([MarshalAs(UnmanagedType.IUnknown)] out object ppenumInterface);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE97-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface INetCfgClass
	{
		[PreserveSig]
		int FindComponent([MarshalAs(UnmanagedType.LPWStr)] [In] string pszwInfId, [MarshalAs(UnmanagedType.IUnknown)] out object ppnccItem);

		[PreserveSig]
		int EnumComponents([MarshalAs(UnmanagedType.IUnknown)] out object ppenumComponent);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE99-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface INetCfgComponent
	{
		[PreserveSig]
		int GetDisplayName([MarshalAs(UnmanagedType.LPWStr)] out string ppszwDisplayName);

		[PreserveSig]
		int SetDisplayName([MarshalAs(UnmanagedType.LPWStr)] [In] string pszwDisplayName);

		[PreserveSig]
		int GetHelpText([MarshalAs(UnmanagedType.LPWStr)] out string pszwHelpText);

		[PreserveSig]
		int GetId([MarshalAs(UnmanagedType.LPWStr)] out string ppszwId);

		[PreserveSig]
		int GetCharacteristics([MarshalAs(UnmanagedType.U4)] out int pdwCharacteristics);

		[PreserveSig]
		int GetInstanceGuid([Out] Guid guid);

		[PreserveSig]
		int GetPnpDevNodeId([MarshalAs(UnmanagedType.LPWStr)] out string ppszwDevNodeId);

		[PreserveSig]
		int GetClassGuid([Out] Guid guid);

		[PreserveSig]
		int GetBindName([MarshalAs(UnmanagedType.LPWStr)] out string ppszwBindName);

		[PreserveSig]
		int GetDeviceStatus([MarshalAs(UnmanagedType.U4)] out int pulStatus);

		[PreserveSig]
		int OpenParamKey([MarshalAs(UnmanagedType.U4)] [Out] IntPtr phkey);

		[PreserveSig]
		int RaisePropertyUi([In] IntPtr hwndParent, [MarshalAs(UnmanagedType.U4)] [In] int flags, [MarshalAs(UnmanagedType.IUnknown)] [In] object punkContext);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE9D-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface INetCfgClassSetup
	{
		[PreserveSig]
		int SelectAndInstall([In] IntPtr hwndParent, [In] IntPtr oboToken, [MarshalAs(UnmanagedType.IUnknown)] out object item);

		[PreserveSig]
		int Install([MarshalAs(UnmanagedType.LPWStr)] [In] string pszwInfId, [In] IntPtr oboToken, [MarshalAs(UnmanagedType.U4)] [In] int setupFlags, [MarshalAs(UnmanagedType.U4)] [In] int upgradeFromBuildNo, [MarshalAs(UnmanagedType.LPWStr)] [In] string answerFile, [MarshalAs(UnmanagedType.LPWStr)] [In] string answerSections, [MarshalAs(UnmanagedType.IUnknown)] out object item);

		[PreserveSig]
		int DeInstall([MarshalAs(UnmanagedType.IUnknown)] [Out] object component, [In] IntPtr oboToken, [MarshalAs(UnmanagedType.LPWStr)] out string refs);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE9E-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface INetCfgComponentBindings
	{
		[PreserveSig]
		int BindTo([MarshalAs(UnmanagedType.IUnknown)] [In] object pnccItem);

		[PreserveSig]
		int UnbindFrom([MarshalAs(UnmanagedType.IUnknown)] [In] object pnccItem);

		[PreserveSig]
		int SupportsBindingInterface([MarshalAs(UnmanagedType.U4)] [In] int flags, [MarshalAs(UnmanagedType.LPWStr)] [In] string interfaceName);

		[PreserveSig]
		int IsBoundTo([MarshalAs(UnmanagedType.IUnknown)] [In] object pnccItem);

		[PreserveSig]
		int IsBindableTo([MarshalAs(UnmanagedType.IUnknown)] [In] object pnccItem);

		[PreserveSig]
		int EnumBindingPaths([MarshalAs(UnmanagedType.U4)] [In] int flags, [MarshalAs(UnmanagedType.IUnknown)] out object ienum);

		[PreserveSig]
		int MoveBefore([MarshalAs(UnmanagedType.IUnknown)] [In] object pncbItemSrc, [MarshalAs(UnmanagedType.IUnknown)] [In] object pncbItemDest);

		[PreserveSig]
		int MoveAfter([MarshalAs(UnmanagedType.IUnknown)] [In] object pncbItemSrc, [MarshalAs(UnmanagedType.IUnknown)] [In] object pncbItemDest);
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE9F-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface INetCfgLock
	{
		[PreserveSig]
		int AcquireWriteLock([MarshalAs(UnmanagedType.I4)] [In] uint cmsTimeout, [MarshalAs(UnmanagedType.LPWStr)] [In] string pszwClientDescription, [MarshalAs(UnmanagedType.LPWStr)] out string ppszwClientDescription);

		[PreserveSig]
		int ReleaseWriteLock();

		[PreserveSig]
		int IsWriteLocked([MarshalAs(UnmanagedType.LPWStr)] [Out] string ppszwClientDescription);
	}
}

using System;
using System.Threading;

namespace Avira.VpnService
{
	public interface INotificationSource
	{
		event EventHandler<FatalNotification> FatalReceived;

		event EventHandler<StateNotification> StateReceived;

		event EventHandler<HoldNotification> HoldReceived;

		event EventHandler<AuthNotification> AuthReceived;

		event EventHandler<ByteCountNotification> ByteCountReceived;

		event EventHandler<LogNotification> LogReceived;

		event EventHandler ReadyReceived;

		EventWaitHandle SourceClosed
		{
			get;
			set;
		}
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	[ComVisible(true), Guid("C0E8AE98-306E-11D1-AACF-00805FC1270E"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
	public interface INetCfgSysPrep
	{
		[PreserveSig]
		int HrSetupSetFirstDword([MarshalAs(UnmanagedType.LPWStr)] [In] string pwszSection, [MarshalAs(UnmanagedType.LPWStr)] [In] string pwszKey, [MarshalAs(UnmanagedType.U4)] [In] int value);

		[PreserveSig]
		int HrSetupSetFirstString([MarshalAs(UnmanagedType.LPWStr)] [In] string pwszSection, [MarshalAs(UnmanagedType.LPWStr)] [In] string pwszKey, [MarshalAs(UnmanagedType.LPWStr)] [In] string pwszValue);

		[PreserveSig]
		int HrSetupSetFirstStringAsBool([MarshalAs(UnmanagedType.LPWStr)] [In] string pwszSection, [MarshalAs(UnmanagedType.LPWStr)] [In] string pwszKey, [MarshalAs(UnmanagedType.Bool)] bool value);

		[PreserveSig]
		int HrSetupSetFirstMultiSzField([MarshalAs(UnmanagedType.LPWStr)] [In] string pwszSection, [MarshalAs(UnmanagedType.LPWStr)] [In] string pwszKey, [MarshalAs(UnmanagedType.LPWStr)] [In] string pmszValue);
	}
}

using Avira.Core;
using Microsoft.Win32;
using System;

namespace Avira.VpnService
{
	public class InterfaceConfig
	{
		private readonly string configPath;

		public InterfaceConfig(string configPath)
		{
			this.configPath = configPath;
		}

		public bool IsIpV6()
		{
			bool result;
			try
			{
				result = (((int)Registry.GetValue(this.configPath, "DisabledComponents", 0) & 16) != 16);
			}
			catch (UnauthorizedAccessException ex)
			{
				Log.Error(string.Format("Failed to get value {0} from registry.", this.configPath), ex);
				result = false;
			}
			return result;
		}
	}
}

using Avira.VPN.Core;
using System;

namespace Avira.VpnService
{
	public interface IOpenVpn
	{
		ConnectionState ConnectionState
		{
			get;
		}

		void Connect(RemoteConnectionSettings selectedRegion, bool isWifiAutoconnect = false);

		void Disconnect();
	}
}

using System;

namespace Avira.VpnService
{
	public interface IOpenVpnClient
	{
		void EnableStateNotification();

		void Release();

		void Auth(string user, string password);

		void EnableByteCountNotification(int period);

		void EnableLogging();

		void SetVerbosityLevel(ushort level);
	}
}

using Avira.Messaging;
using System;

namespace Avira.VpnService
{
	public interface IOpenVpnExe
	{
		event EventHandler Exited;

		event EventHandler<EventArgs<string>> Output;
	}
}

using System;
using System.Collections.Generic;

namespace Avira.VpnService
{
	public interface IServicePersistentData
	{
		string Regions
		{
			get;
			set;
		}

		List<string> TrustedWifis
		{
			get;
			set;
		}

		KnownWifis KnownWiFis
		{
			get;
			set;
		}

		DateTime LastActivityNotification
		{
			get;
			set;
		}

		int CurrentEducationMessage
		{
			get;
			set;
		}
	}
}

using Avira.Vpn.Core;
using System;

namespace Avira.VpnService
{
	public interface ISession
	{
		event EventHandler<TrafficChangedEventArgs> TrafficChanged;

		ulong TrafficUsedTotal
		{
			get;
		}
	}
}

using Avira.VPN.Notifier;
using System;

namespace Avira.VpnService
{
	public interface IVpnNotifier
	{
		Notification.Command ConnectVpnAction
		{
			get;
		}

		Notification.Command LearnMoreAction
		{
			get;
		}

		Notification.Command OpenGuiAction
		{
			get;
		}

		Notification.Command TrustWifiAction
		{
			get;
		}

		Notification.Command UntrustWifiAndConnectVpnAction
		{
			get;
		}

		void NotifyConnectedToUnkownWifi();

		void NotifyConnectedToUnsecureWifi();

		void NotifyFeedback();

		void NotifyInactivity();

		void NotifyKillSwitchActivated();

		void NotifyTrafficLimitReached(string message);

		void NotifyTrafficThreshHoldsReached(Tuple<string, string> message);

		void NotifyUpdate();

		void NotifyUpgrade();

		void NotifyWelcome();

		bool ShouldShowFeedbackNotification(ulong usedInBytes);

		void NotifyLearnMore(EducationMessage message);
	}
}

using System;

namespace Avira.VpnService
{
	public interface IVpnService
	{
		void HandleUpgrade();
	}
}

using Avira.Messaging;
using System;

namespace Avira.VpnService
{
	public interface IWifiNetworkManager
	{
		event EventHandler<EventArgs<KnownWifis.WiFiData>> WifiNetworkConnected;

		event EventHandler<EventArgs<KnownWifis.WiFiData>> WifiNetworkDisconnected;

		void TrustConnectedWifiNetwork();

		void UntrustConnectedWifiNetwork();

		KnownWifis.WiFiData FindWifi(string ssid);
	}
}

using Avira.Core.Networking;
using System;
using System.Collections.Generic;

namespace Avira.VpnService
{
	public class KnownWifis : List<KnownWifis.WiFiData>
	{
		public class WiFiData
		{
			public string Id
			{
				get;
				set;
			}

			public string Ssid
			{
				get;
				set;
			}

			public TrustMode TrustMode
			{
				get;
				set;
			}

			public DateTime LastConnectionTime
			{
				get;
				set;
			}

			public WifiConnectionSecurityMode SecurityMode
			{
				get;
				set;
			}
		}

		public void Trust(string id)
		{
			base.Find((KnownWifis.WiFiData d) => d.Id == id).TrustMode = TrustMode.Trusted;
		}

		public void Untrust(string id)
		{
			base.Find((KnownWifis.WiFiData d) => d.Id == id).TrustMode = TrustMode.Untrusted;
		}

		public void UpdateConnectionTime(string id, DateTime date)
		{
			base.Find((KnownWifis.WiFiData d) => d.Id == id).LastConnectionTime = date;
		}

		public int GetConnectedWifis(int daysAgo)
		{
			return base.FindAll((KnownWifis.WiFiData d) => d.LastConnectionTime.Date >= DateTime.Today.AddDays((double)(-(double)daysAgo))).Count;
		}
	}
}

using Newtonsoft.Json;
using System;
using System.Net.NetworkInformation;

namespace Avira.VpnService
{
	public class LatencyData : EventArgs
	{
		[JsonProperty(PropertyName = "id")]
		public string Id
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "latency")]
		public long Latency
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "error")]
		public string Error
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "ipstatus")]
		public IPStatus IPStatus
		{
			get;
			set;
		}
	}
}

using Newtonsoft.Json;
using System;

namespace Avira.VpnService
{
	public class LicenseData
	{
		[JsonProperty(PropertyName = "app_id")]
		public string AppId
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "expiration_date")]
		public DateTime ExpirationDate
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "traffic_limit")]
		public ulong LimitInBytes
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "grace_period")]
		public int GracePeriodInSeconds
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "subscription")]
		public bool Subscription
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "type")]
		public string Type
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "LicenseType")]
		public string LicenseType
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "error")]
		public string Error
		{
			get;
			set;
		}
	}
}

using Avira.Core;
using Avira.Mixpanel;
using Avira.VPN.Core;
using Avira.VpnService.Properties;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Net.NetworkInformation;
using System.Runtime.CompilerServices;
using System.Threading;

namespace Avira.VpnService
{
	public sealed class License : JObject, IDisposable
	{
		private readonly IHttpClient httpClient;

		private readonly string deviceId;

		private bool retryBeforeDowngrading;

		private Timer licensePollingTimer;

		private Timer licenseUpdaterTimer;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<LicenseTypeEventArgs> LicenseChanged;

		public LicenseData LicenseData
		{
			get;
			private set;
		}

		public LicenseType LicenseType
		{
			get
			{
				return (LicenseType)Enum.Parse(typeof(LicenseType), this.LicenseData.LicenseType);
			}
			set
			{
				this.LicenseData.LicenseType = value.ToString();
			}
		}

		internal long LicenseRefreshIntervalInMiliseconds
		{
			get;
			set;
		}

		public int GracePeriod
		{
			get
			{
				return this.LicenseData.GracePeriodInSeconds;
			}
		}

		public ulong Limit
		{
			get
			{
				return this.LicenseData.LimitInBytes;
			}
		}

		public DateTime ExpirationDate
		{
			get
			{
				return this.LicenseData.ExpirationDate;
			}
		}

		public License() : this(new HttpClient(), string.Empty, Settings.Default.LicenseRefreshIntervalInSeconds * 1000L)
		{
		}

		public License(IHttpClient httpClient, string deviceId, long licenseRefreshIntervalInMiliseconds)
		{
			this.httpClient = httpClient;
			this.deviceId = deviceId;
			this.LicenseData = JsonConvert.DeserializeObject<LicenseData>(ProductSettings.LicenseData, new JsonSerializerSettings
			{
				NullValueHandling = NullValueHandling.Ignore
			});
			this.LicenseType = this.LicenseTypeFromString(this.LicenseData.Type);
			this.LicenseRefreshIntervalInMiliseconds = licenseRefreshIntervalInMiliseconds;
			this.RegisterForNetworkConnectivityChanges();
			this.InitLicenseUpdater();
			DiContainer.SetGetter("LicenseType", delegate
			{
				if (this.LicenseType != LicenseType.Pro)
				{
					return "free";
				}
				return "paid";
			});
			DiContainer.SetGetter("LicenseExpiration", () => this.ExpirationDate);
			DiContainer.SetGetter("TrafficLimit", () => this.Limit);
		}

		public void StartLicensePolling()
		{
			Log.Information("Started polling for a PRO license.");
			Timer expr_10 = this.licensePollingTimer;
			if (expr_10 != null)
			{
				expr_10.Dispose();
			}
			this.licensePollingTimer = new Timer(this.PollLicense((int)DateTime.Now.ToUnixTimeStamp()), 0, 0, Settings.Default.LicensePollIntervalInSeconds * 1000);
		}

		private TimerCallback PollLicense(object startTime)
		{
			return delegate(object state)
			{
				try
				{
					LicenseType arg_21_0 = this.LicenseType;
					this.Refresh();
					if (arg_21_0 != this.LicenseType || (int)DateTime.Now.ToUnixTimeStamp() > (int)startTime + Settings.Default.LicensePollMaxTimeInSeconds)
					{
						this.licensePollingTimer.Dispose();
					}
				}
				catch (Exception arg)
				{
					Log.Error(string.Format("License polling failed. {0}", arg));
				}
			};
		}

		private bool CheckLicenseData(string licenseDataJson)
		{
			bool result;
			try
			{
				LicenseData licenseData = JsonConvert.DeserializeObject<LicenseData>(licenseDataJson, new JsonSerializerSettings
				{
					NullValueHandling = NullValueHandling.Ignore
				});
				LicenseType licenseType = this.LicenseTypeFromString(licenseData.Type);
				if (!string.IsNullOrEmpty(licenseData.Error) && licenseType <= this.LicenseType)
				{
					result = false;
				}
				else if (licenseType < this.LicenseType && !this.retryBeforeDowngrading)
				{
					Log.Information("Retrying one more time before downgrading the user...");
					this.retryBeforeDowngrading = true;
					result = false;
				}
				else
				{
					LicenseType licenseType2 = this.LicenseType;
					this.UpdateLicenseData(licenseDataJson, licenseType, licenseData);
					if (licenseType == licenseType2)
					{
						result = string.IsNullOrEmpty(this.LicenseData.Error);
					}
					else
					{
						Log.Information(string.Format("License was updated. Old license type {0}. New license type: {1}", licenseType2, licenseType));
						IEventTracker expr_B0 = VpnMixpanelEventTracker.Instance;
						if (expr_B0 != null)
						{
							expr_B0.TrackEventAsync(VpnEventTrackingNames.LicenseChanged, new Dictionary<string, object>
							{
								{
									"Old License Type",
									licenseType2.ToString()
								},
								{
									"New License Type",
									licenseType.ToString()
								}
							});
						}
						EventHandler<LicenseTypeEventArgs> expr_FB = this.LicenseChanged;
						if (expr_FB != null)
						{
							expr_FB(this, new LicenseTypeEventArgs
							{
								LicenseType = licenseType
							});
						}
						result = string.IsNullOrEmpty(this.LicenseData.Error);
					}
				}
			}
			catch (Exception arg)
			{
				Log.Debug(string.Format("Failed to update license data. {0}", arg));
				result = false;
			}
			return result;
		}

		private void UpdateLicenseData(string licenseDataJson, LicenseType newLicenseType, LicenseData newLicenseData)
		{
			this.retryBeforeDowngrading = false;
			this.LicenseData = newLicenseData;
			this.LicenseType = newLicenseType;
			ProductSettings.LicenseData = licenseDataJson;
		}

		public void Refresh()
		{
			for (int i = 0; i < 3; i++)
			{
				string text = this.RequestLicense();
				if (!string.IsNullOrEmpty(text) && this.CheckLicenseData(text))
				{
					break;
				}
				IAuthenticator expr_21 = DiContainer.Resolve<IAuthenticator>();
				if (expr_21 != null)
				{
					expr_21.RefreshAccessToken();
				}
			}
		}

		private string RequestLicense()
		{
			string result;
			try
			{
				string uri = "license?device_id=" + this.deviceId;
				string text = this.httpClient.Get(uri);
				Log.Debug("License call response: " + text);
				result = text;
			}
			catch (Exception arg)
			{
				Log.Debug(string.Format("Failed to request license. {0}", arg));
				result = string.Empty;
			}
			return result;
		}

		private LicenseType LicenseTypeFromString(string licenseType)
		{
			if (string.IsNullOrEmpty(licenseType))
			{
				return LicenseType.Unregistered;
			}
			if (string.IsNullOrEmpty(this.httpClient.AuthenticationToken))
			{
				return LicenseType.Unregistered;
			}
			if (!(licenseType == "paid"))
			{
				return LicenseType.Registered;
			}
			return LicenseType.Pro;
		}

		private void RegisterForNetworkConnectivityChanges()
		{
			NetworkChange.NetworkAvailabilityChanged += new NetworkAvailabilityChangedEventHandler(this.OnNetworkChange);
		}

		private async void OnNetworkChange(object sender, NetworkAvailabilityEventArgs eventArgs)
		{
			if (eventArgs.IsAvailable)
			{
				Log.Information("Refreshing license due to network connnection.");
				if (await HttpAsyncHelper.WaitForInternetConnection(2000))
				{
					this.Refresh();
				}
			}
		}

		private void InitLicenseUpdater()
		{
			if (this.LicenseType == LicenseType.Unregistered)
			{
				return;
			}
			Log.Information(string.Format("Initializing license updater. Next license check in {0} seconds.", this.LicenseRefreshIntervalInMiliseconds / 1000L));
			Timer expr_30 = this.licenseUpdaterTimer;
			if (expr_30 != null)
			{
				expr_30.Dispose();
			}
			this.licenseUpdaterTimer = new Timer(this.LicenseUpdater(), null, this.LicenseRefreshIntervalInMiliseconds, this.LicenseRefreshIntervalInMiliseconds);
		}

		private TimerCallback LicenseUpdater()
		{
			return delegate(object state)
			{
				try
				{
					this.Refresh();
				}
				catch (Exception arg)
				{
					Log.Error(string.Format("Failed to refresh license. {0}", arg));
				}
			};
		}

		public void Dispose()
		{
			if (this.licensePollingTimer != null)
			{
				this.licensePollingTimer.Dispose();
			}
			if (this.licenseUpdaterTimer != null)
			{
				this.licenseUpdaterTimer.Dispose();
			}
		}
	}
}

using System;

namespace Avira.VpnService
{
	public enum LicenseType
	{
		Unregistered,
		Registered,
		Pro
	}
}

using System;

namespace Avira.VpnService
{
	public class LicenseTypeEventArgs : EventArgs
	{
		public LicenseType LicenseType
		{
			get;
			set;
		}
	}
}

using System;
using System.Collections.Generic;

namespace Avira.VpnService
{
	public class LogNotification : OpenVpnNotification
	{
		public enum LogType
		{
			Debug,
			Informational,
			Warning,
			Error,
			Fatal
		}

		private static readonly Dictionary<char, LogNotification.LogType> LogTypeMap = new Dictionary<char, LogNotification.LogType>
		{
			{
				'I',
				LogNotification.LogType.Informational
			},
			{
				'F',
				LogNotification.LogType.Fatal
			},
			{
				'N',
				LogNotification.LogType.Error
			},
			{
				'W',
				LogNotification.LogType.Debug
			},
			{
				'D',
				LogNotification.LogType.Debug
			}
		};

		public LogNotification.LogType Type
		{
			get;
			private set;
		}

		public LogNotification(string message)
		{
			try
			{
				Dictionary<string, string> dictionary = LogNotification.ParseParameters(message);
				this.Type = ((dictionary["type"] == string.Empty) ? LogNotification.LogType.Debug : LogNotification.LogTypeMap[dictionary["type"][0]]);
				base.Reason = dictionary["message"];
				base.Timestamp = OpenVpnNotification.UnixTimeToDateTime(dictionary["timestamp"]);
			}
			catch (KeyNotFoundException)
			{
				throw new Exception(string.Format("[error] Wrong StateType type in StateType real-time notification: {0}", message));
			}
		}

		private static Dictionary<string, string> ParseParameters(string message)
		{
			string[] array = message.Split(new char[]
			{
				','
			}, 3);
			if (array.Length != 3)
			{
				throw new Exception(string.Format("[error] Wrong parameters number in real-time notification : {0}", message));
			}
			if (string.IsNullOrEmpty(array[0]))
			{
				throw new Exception(string.Format("[error] Wrong format of real-time notification : {0}", message));
			}
			Dictionary<string, string> expr_4A = new Dictionary<string, string>();
			expr_4A.Add("timestamp", array[0].Trim());
			expr_4A.Add("type", array[1].Trim() ?? string.Empty);
			string arg_97_1 = "message";
			string expr_82 = array[2];
			expr_4A.Add(arg_97_1, ((expr_82 != null) ? expr_82.Trim() : null) ?? string.Empty);
			return expr_4A;
		}
	}
}

using Avira.Core;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Sockets;
using System.Runtime.CompilerServices;
using System.Text;

namespace Avira.VpnService
{
	public sealed class ManagementEndpoint : IManagementEndpoint, IDisposable
	{
		private delegate void ResponseDelegate(ManagementEndpoint endpoint);

		private enum MessageType
		{
			RequestSuccess,
			RequestError,
			Realtime
		}

		private sealed class RequestMessage
		{
			public bool Active
			{
				get;
				set;
			}

			public string Body
			{
				get;
				set;
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ManagementEndpoint.<>c <>9 = new ManagementEndpoint.<>c();

			public static ManagementEndpoint.ResponseDelegate <>9__3_0;

			internal void ctor>b__3_0(ManagementEndpoint endpoint)
			{
				endpoint.Response();
			}
		}

		private readonly TcpClient tcpClient;

		private readonly Queue<ManagementEndpoint.RequestMessage> requestQueue = new Queue<ManagementEndpoint.RequestMessage>();

		private readonly ManagementEndpoint.ResponseDelegate response;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<ManagementMessage> MessageReceived;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<ManagementMessage> ErrorReceived;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs> StreamClosed;

		public ManagementEndpoint(string ip, int port)
		{
			ManagementEndpoint.ResponseDelegate arg_2B_1;
			if ((arg_2B_1 = ManagementEndpoint.<>c.<>9__3_0) == null)
			{
				arg_2B_1 = (ManagementEndpoint.<>c.<>9__3_0 = new ManagementEndpoint.ResponseDelegate(ManagementEndpoint.<>c.<>9.<.ctor>b__3_0));
			}
			this.response = arg_2B_1;
			base..ctor();
			this.tcpClient = new TcpClient(ip, port);
		}

		public void Start()
		{
			this.response.BeginInvoke(this, null, null);
		}

		private static string GetNextResponse(TextReader reader)
		{
			string result = null;
			try
			{
				result = reader.ReadLine();
			}
			catch (Exception ex)
			{
				Log.Debug(ex.Message, new object[]
				{
					ex
				});
			}
			return result;
		}

		private static ManagementEndpoint.MessageType GetType(string body)
		{
			if (body.StartsWith("SUCCESS:"))
			{
				return ManagementEndpoint.MessageType.RequestSuccess;
			}
			if (body.StartsWith("ERROR:"))
			{
				return ManagementEndpoint.MessageType.RequestError;
			}
			return ManagementEndpoint.MessageType.Realtime;
		}

		private void Response()
		{
			using (StreamReader streamReader = new StreamReader(this.tcpClient.GetStream()))
			{
				for (string nextResponse = ManagementEndpoint.GetNextResponse(streamReader); nextResponse != null; nextResponse = ManagementEndpoint.GetNextResponse(streamReader))
				{
					this.ProcessMessage(nextResponse);
				}
			}
			EventHandler<EventArgs> expr_3D = this.StreamClosed;
			if (expr_3D == null)
			{
				return;
			}
			expr_3D(this, EventArgs.Empty);
		}

		private void ProcessMessage(string message)
		{
			if (!message.Contains("BYTECOUNT"))
			{
				Log.Debug(string.Format("MI send: {0}", message));
			}
			ManagementEndpoint.MessageType type = ManagementEndpoint.GetType(message);
			if (type != ManagementEndpoint.MessageType.RequestError)
			{
				if (type == ManagementEndpoint.MessageType.Realtime)
				{
					EventHandler<ManagementMessage> expr_32 = this.MessageReceived;
					if (expr_32 == null)
					{
						return;
					}
					expr_32(this, new ManagementMessage
					{
						Data = message
					});
					return;
				}
			}
			else
			{
				EventHandler<ManagementMessage> expr_50 = this.ErrorReceived;
				if (expr_50 != null)
				{
					expr_50(this, new ManagementMessage
					{
						Data = message
					});
				}
			}
			Queue<ManagementEndpoint.RequestMessage> obj = this.requestQueue;
			lock (obj)
			{
				this.requestQueue.Dequeue();
				this.ProcessNextRequest();
			}
		}

		private void SendMessage(string command)
		{
			Log.Debug(string.Format("MI received: {0}", command));
			command += "\r\n";
			NetworkStream arg_34_0 = this.tcpClient.GetStream();
			byte[] bytes = Encoding.ASCII.GetBytes(command);
			arg_34_0.Write(bytes, 0, bytes.Length);
			arg_34_0.Flush();
		}

		private void ProcessNextRequest()
		{
			if (this.requestQueue.Count == 0)
			{
				return;
			}
			ManagementEndpoint.RequestMessage requestMessage = this.requestQueue.First<ManagementEndpoint.RequestMessage>();
			if (requestMessage != null && !requestMessage.Active)
			{
				requestMessage.Active = true;
				this.SendMessage(requestMessage.Body);
			}
		}

		public void Request(string command)
		{
			try
			{
				Queue<ManagementEndpoint.RequestMessage> obj = this.requestQueue;
				lock (obj)
				{
					this.requestQueue.Enqueue(new ManagementEndpoint.RequestMessage
					{
						Active = false,
						Body = command
					});
					this.ProcessNextRequest();
				}
			}
			catch (Exception ex)
			{
				Log.Debug(ex.Message, new object[]
				{
					ex
				});
			}
		}

		public void Dispose()
		{
			if (this.tcpClient == null)
			{
				return;
			}
			try
			{
				this.tcpClient.GetStream().Close();
				this.tcpClient.Close();
			}
			catch (Exception arg)
			{
				Log.Debug(string.Format("ManagementEndPoint Dispose failed: {0}", arg));
			}
		}
	}
}

using System;

namespace Avira.VpnService
{
	public class ManagementMessage : EventArgs
	{
		public string Data
		{
			get;
			set;
		}
	}
}

using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

namespace Avira.VpnService
{
	public class NetCfgComponent
	{
		public enum EnumBindingPathFlags
		{
			EBP_ABOVE = 1,
			EBP_BELOW
		}

		private INetCfgComponent component;

		private INetCfg cfg;

		public NetCfgComponent(INetCfg cfg, INetCfgComponent component)
		{
			this.component = component;
			this.cfg = cfg;
		}

		public string GetId()
		{
			string result;
			if (this.component.GetId(out result) != 0)
			{
				throw new Exception("GetId failed");
			}
			return result;
		}

		public override string ToString()
		{
			return this.GetId();
		}

		[IteratorStateMachine(typeof(NetCfgComponent.<GetPaths>d__6))]
		public IEnumerable<BindingPath> GetPaths(NetCfgComponent.EnumBindingPathFlags where)
		{
			INetCfgComponentBindings expr_2A = this.component as INetCfgComponentBindings;
			if (expr_2A == null)
			{
				throw new Exception("INetCfgComponentBindings failed");
			}
			object obj;
			if (expr_2A.EnumBindingPaths((int)where, out obj) != 0)
			{
				throw new Exception("INetCfgComponentBindings.EnumBindingPaths failed");
			}
			IEnumNetCfgBindingPath enumNetCfgBindingPath = obj as IEnumNetCfgBindingPath;
			if (enumNetCfgBindingPath == null)
			{
				throw new Exception("IEnumNetCfgBindingPath failed");
			}
			if (enumNetCfgBindingPath.Reset() != 0)
			{
				throw new Exception("INetCfgClass.Reset failed");
			}
			int num;
			while (enumNetCfgBindingPath.Next(1, out obj, out num) == 0)
			{
				INetCfgBindingPath netCfgBindingPath = obj as INetCfgBindingPath;
				if (netCfgBindingPath == null)
				{
					break;
				}
				yield return new BindingPath(this.cfg, netCfgBindingPath);
			}
			yield break;
		}
	}
}

using System;

namespace Avira.VpnService
{
	public enum NCRP_FLAGS
	{
		NCRP_QUERY_PROPERTY_UI = 1,
		NCRP_SHOW_PROPERTY_UI
	}
}

using Avira.Core;
using Avira.VPN.Core;
using System;
using System.Diagnostics;

namespace Avira.VpnService
{
	public class NetworkBlocker
	{
		public static bool Enabled
		{
			get;
			set;
		}

		public static int Enable()
		{
			if (!Features.IsAvailable(Feature.FtKillSwitch))
			{
				return 0;
			}
			Log.Information("NetworkBlocker::Enable");
			int expr_1E = NetworkBlocker.Run(string.Empty);
			if (expr_1E == 0)
			{
				NetworkBlocker.Enabled = true;
			}
			return expr_1E;
		}

		public static int Disable()
		{
			if (!Features.IsAvailable(Feature.FtKillSwitch))
			{
				return 0;
			}
			Log.Information("NetworkBlocker::Disable");
			int expr_1E = NetworkBlocker.Run("delete");
			if (expr_1E == 0)
			{
				NetworkBlocker.Enabled = false;
			}
			return expr_1E;
		}

		private static int Run(string argument)
		{
			if (!Features.IsAvailable(Feature.FtKillSwitch))
			{
				Log.Information("Kill switch feature disabled");
				return 0;
			}
			int result;
			using (ProcessWrapper processWrapper = new ProcessWrapper(new Process()))
			{
				int arg_56_0 = new ProcessRunner(processWrapper, new PathWhiteList())
				{
					FileName = FileSystem.MakeFullPath(ProductSettings.NetworkBlockerFileName),
					Arguments = argument
				}.StartAndWaitForExit();
				Log.Information(processWrapper.StandardOutput.ReadToEnd());
				result = arg_56_0;
			}
			return result;
		}
	}
}

using Avira.Core;
using System;
using System.Runtime.CompilerServices;
using System.Threading;

namespace Avira.VpnService
{
	public class NotificationSource : INotificationSource
	{
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<FatalNotification> FatalReceived;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<StateNotification> StateReceived;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<HoldNotification> HoldReceived;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<AuthNotification> AuthReceived;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<ByteCountNotification> ByteCountReceived;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<LogNotification> LogReceived;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler ReadyReceived;

		public EventWaitHandle SourceClosed
		{
			get;
			set;
		}

		public NotificationSource(IManagementEndpoint source)
		{
			source.MessageReceived += new EventHandler<ManagementMessage>(this.OnMessageReceived);
			source.StreamClosed += new EventHandler<EventArgs>(this.OnStreamClosed);
			this.SourceClosed = new ManualResetEvent(false);
		}

		private static void Parse(string buffer, out string body, out string type)
		{
			if (!buffer.StartsWith(">"))
			{
				type = "UNKNOWN";
				body = buffer;
				return;
			}
			int num = buffer.IndexOf(':');
			if (num == -1)
			{
				throw new Exception(string.Format("[error] Message is corrupted : {0}", buffer));
			}
			body = buffer.Substring(num + 1);
			type = buffer.Substring(1, num - 1);
		}

		private void OnMessageReceived(object sender, ManagementMessage msg)
		{
			try
			{
				this.FireNotification(msg.Data);
			}
			catch (Exception arg)
			{
				Log.Warning(string.Format("Unable to fire notification. {0}", arg));
			}
		}

		private void OnStreamClosed(object sender, EventArgs msg)
		{
			Log.Information("OpenVpn: Stream Closed.");
			this.SourceClosed.Set();
		}

		private void FireNotification(string buffer)
		{
			string message;
			string text;
			NotificationSource.Parse(buffer, out message, out text);
			uint num = <PrivateImplementationDetails>.ComputeStringHash(text);
			if (num <= 554706712u)
			{
				if (num != 218589765u)
				{
					if (num != 529558681u)
					{
						if (num == 554706712u)
						{
							if (text == "PASSWORD")
							{
								EventHandler<AuthNotification> expr_137 = this.AuthReceived;
								if (expr_137 == null)
								{
									return;
								}
								expr_137(this, new AuthNotification(message));
								return;
							}
						}
					}
					else if (text == "FATAL")
					{
						EventHandler<FatalNotification> expr_107 = this.FatalReceived;
						if (expr_107 == null)
						{
							return;
						}
						expr_107(this, new FatalNotification(message));
						return;
					}
				}
				else if (text == "INFO")
				{
					EventHandler expr_197 = this.ReadyReceived;
					if (expr_197 == null)
					{
						return;
					}
					expr_197(this, null);
					return;
				}
			}
			else if (num <= 3257650481u)
			{
				if (num != 1574628614u)
				{
					if (num == 3257650481u)
					{
						if (text == "LOG")
						{
							EventHandler<LogNotification> expr_17F = this.LogReceived;
							if (expr_17F == null)
							{
								return;
							}
							expr_17F(this, new LogNotification(message));
							return;
						}
					}
				}
				else if (text == "BYTECOUNT")
				{
					EventHandler<ByteCountNotification> expr_167 = this.ByteCountReceived;
					if (expr_167 == null)
					{
						return;
					}
					expr_167(this, new ByteCountNotification(message));
					return;
				}
			}
			else if (num != 3768217494u)
			{
				if (num == 3954593656u)
				{
					if (text == "HOLD")
					{
						EventHandler<HoldNotification> expr_14F = this.HoldReceived;
						if (expr_14F == null)
						{
							return;
						}
						expr_14F(this, new HoldNotification(message));
						return;
					}
				}
			}
			else if (text == "STATE")
			{
				EventHandler<StateNotification> expr_11F = this.StateReceived;
				if (expr_11F == null)
				{
					return;
				}
				expr_11F(this, new StateNotification(message));
				return;
			}
			Log.Information(string.Format("OpenVpn: Unknown notification type : {0}", buffer));
		}
	}
}

using System;
using System.Runtime.InteropServices;

namespace Avira.VpnService
{
	public struct OBO_TOKEN
	{
		[MarshalAs(UnmanagedType.I4)]
		public OBO_TOKEN_TYPE Type;

		[MarshalAs(UnmanagedType.IUnknown)]
		public object Pncc;

		[MarshalAs(UnmanagedType.LPWStr)]
		public string Manufacturer;

		[MarshalAs(UnmanagedType.LPWStr)]
		public string Product;

		[MarshalAs(UnmanagedType.LPWStr)]
		public string DisplayName;

		[MarshalAs(UnmanagedType.Bool)]
		public bool Registered;
	}
}

using System;

namespace Avira.VpnService
{
	public enum OBO_TOKEN_TYPE
	{
		OBO_USER = 1,
		OBO_COMPONENT,
		OBO_SOFTWARE
	}
}

using Avira.Core;
using Avira.Mixpanel;
using Avira.Vpn.Core;
using Avira.VPN.Core;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Runtime.CompilerServices;
using System.ServiceModel;
using System.Threading;

namespace Avira.VpnService
{
	[ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
	public sealed class OpenVpn : IDisposable, IOpenVpn
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly OpenVpn.<>c <>9 = new OpenVpn.<>c();

			public static Func<int, bool> <>9__28_0;

			public static DataReceivedEventHandler <>9__29_0;

			internal bool <FindAvailablePort>b__28_0(int p)
			{
				OpenVpn.<>c__DisplayClass28_0 <>c__DisplayClass28_ = new OpenVpn.<>c__DisplayClass28_0();
				<>c__DisplayClass28_.p = p;
				return IPGlobalProperties.GetIPGlobalProperties().GetActiveTcpListeners().All(new Func<IPEndPoint, bool>(<>c__DisplayClass28_.<FindAvailablePort>b__1));
			}

			internal void <LogAdaptersConfiguration>b__29_0(object s, DataReceivedEventArgs e)
			{
				Log.Debug(e.Data);
			}
		}

		private const string ManagementServer = "127.0.0.1";

		private readonly object sessionWriteLock = new object();

		private readonly TapAdapter tapAdapter = new TapAdapter(new PathWhiteList());

		private ManagementEndpoint endpoint;

		private NotificationSource notifications;

		private OpenVpnClient client;

		private Session session = new Session();

		private OpenVpnExe openVpnExe;

		private RemoteConnectionSettings latestSelectedRegion;

		private uint reconnectAttempts;

		private bool isWifiAutoconnect;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<Status> StateChangedNotification;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<TrafficChangedEventArgs> TrafficChanged;

		public Credentials Credentials
		{
			get;
			set;
		}

		public ConnectionState ConnectionState
		{
			get;
			private set;
		}

		public Status Status
		{
			get
			{
				return this.session.ToStatus();
			}
		}

		public void Connect(RemoteConnectionSettings selectedRegion, bool isWifiAutoconnect = false)
		{
			object obj = this.sessionWriteLock;
			lock (obj)
			{
				if (this.session.State == ConnectionState.Disconnected)
				{
					if (this.CheckForNetworkConnection())
					{
						try
						{
							this.StartSession();
							this.TrackConnectEvent(selectedRegion);
							this.CleanOpenVpnAbandonedProcesses();
							this.PrepareTapAdapterForConnecting();
							this.LogAdaptersConfiguration();
							int port = this.FindAvailablePort();
							this.openVpnExe = new OpenVpnExe("127.0.0.1", port);
							this.openVpnExe.Start(selectedRegion, this.tapAdapter.Name);
							this.latestSelectedRegion = selectedRegion;
							this.isWifiAutoconnect = isWifiAutoconnect;
							this.AttachSessionToOpenVpn(port);
						}
						catch (Exception ex)
						{
							Log.Error(ex.Message, ex);
							this.StopOpenVpn();
							Session expr_AF = this.session;
							if (expr_AF != null)
							{
								expr_AF.Disconnect();
							}
							this.HandleSpecificExceptions(ex);
						}
					}
				}
			}
		}

		private int FindAvailablePort()
		{
			IEnumerable<int> arg_2E_0 = Enumerable.Range(23000, 25000);
			Func<int, bool> arg_2E_1;
			if ((arg_2E_1 = OpenVpn.<>c.<>9__28_0) == null)
			{
				arg_2E_1 = (OpenVpn.<>c.<>9__28_0 = new Func<int, bool>(OpenVpn.<>c.<>9.<FindAvailablePort>b__28_0));
			}
			return arg_2E_0.First(arg_2E_1);
		}

		private void LogAdaptersConfiguration()
		{
			ProcessRunner expr_0F = new ProcessRunner(new ProcessWrapper(), new PathWhiteList());
			expr_0F.FileName = FileSystem.MakeFullPath(ProductSettings.OpenVpnPath);
			expr_0F.Arguments = "--show-adapters";
			expr_0F.WorkingDirectory = FileSystem.MakeFullPath("OpenVpn");
			DataReceivedEventHandler arg_5A_1;
			if ((arg_5A_1 = OpenVpn.<>c.<>9__29_0) == null)
			{
				arg_5A_1 = (OpenVpn.<>c.<>9__29_0 = new DataReceivedEventHandler(OpenVpn.<>c.<>9.<LogAdaptersConfiguration>b__29_0));
			}
			expr_0F.OutputDataReceived += arg_5A_1;
			expr_0F.StartAndWaitForExit();
		}

		private void TrackConnectEvent(RemoteConnectionSettings userSelectedRegion)
		{
			IEventTracker expr_05 = VpnMixpanelEventTracker.Instance;
			if (expr_05 == null)
			{
				return;
			}
			expr_05.TrackEventAsync(VpnEventTrackingNames.Connect, new Dictionary<string, object>
			{
				{
					"Region",
					userSelectedRegion.Name
				},
				{
					"Uri",
					userSelectedRegion.Uri
				},
				{
					"Port",
					userSelectedRegion.Port
				},
				{
					"Protocol",
					userSelectedRegion.Protocol
				}
			});
		}

		private void CleanOpenVpnAbandonedProcesses()
		{
			new AbandonedProcess(FileSystem.MakeFullPath(ProductSettings.OpenVpnPath)).CleanRunningInstances();
		}

		private void HandleSpecificExceptions(Exception exception)
		{
			VpnException ex = exception as VpnException;
			if (ex != null)
			{
				this.NotifyError(ex.ErrorType);
			}
		}

		private void PrepareTapAdapterForConnecting()
		{
			PathWhiteList whitelist = new PathWhiteList();
			TapDriver tapDriver = new TapDriver(new ProcessWrapper(), whitelist);
			Log.Information("Checking if tap driver is installed...");
			tapDriver.LogStatus();
			if (tapDriver.IsInstalled() && tapDriver.IsRunning())
			{
				Log.Information("Tap driver is installed. Restarting tap adapter...");
				this.tapAdapter.Disable();
				this.tapAdapter.Enable();
			}
			else
			{
				this.InstallTapDriver(tapDriver);
			}
			this.tapAdapter.PrepareConfiguration();
		}

		private void InstallTapDriver(TapDriver tapDriver)
		{
			try
			{
				if (tapDriver.IsInstalled())
				{
					tapDriver.Uninstall();
				}
				tapDriver.Install();
			}
			catch (Exception arg)
			{
				Log.Error(string.Format("Failed to install the Tap driver. {0}", arg));
				tapDriver.Uninstall();
				throw;
			}
			Log.Information("Tap driver installed successfuly.");
			try
			{
				tapDriver.Update();
			}
			catch (Exception arg2)
			{
				Log.Error(string.Format("Failed to update the Tap driver. {0}", arg2));
			}
		}

		private bool CheckForNetworkConnection()
		{
			Log.Debug("Checking for network connection availability...");
			if (NetworkInterface.GetIsNetworkAvailable())
			{
				return true;
			}
			Log.Information("No network available.");
			this.NotifyError(ErrorType.NetworkError);
			return false;
		}

		private void NotifyError(ErrorType errorType)
		{
			Status e = new Status
			{
				Error = errorType
			};
			this.ConnectionState = ConnectionState.Disconnected;
			EventHandler<Status> expr_1A = this.StateChangedNotification;
			if (expr_1A == null)
			{
				return;
			}
			expr_1A(this, e);
		}

		private void StartSession()
		{
			this.session = new Session
			{
				Credentials = this.Credentials
			};
			this.session.StateChanged += new EventHandler<Status>(this.OnStateChangedNotification);
			this.session.TrafficChanged += new EventHandler<TrafficChangedEventArgs>(this.OnTrafficChanged);
			this.session.Start();
		}

		private void AttachSessionToOpenVpn(int port)
		{
			this.endpoint = new ManagementEndpoint("127.0.0.1", port);
			this.notifications = new NotificationSource(this.endpoint);
			this.client = new OpenVpnClient(this.endpoint);
			this.session.Bind(this.openVpnExe, this.notifications, this.client);
			this.endpoint.ErrorReceived += delegate(object source, ManagementMessage message)
			{
				Log.Error(message.Data);
				this.Disconnect();
				this.NotifyError(ErrorType.GeneralError);
			};
			this.endpoint.Start();
		}

		public void Disconnect()
		{
			object obj = this.sessionWriteLock;
			lock (obj)
			{
				if (this.session.State != ConnectionState.Disconnected)
				{
					this.TrackDisconnectEvent();
					this.session.Stop();
					this.StopOpenVpn();
					this.session.Disconnect();
				}
			}
		}

		private void TrackDisconnectEvent()
		{
			if (this.session.State != ConnectionState.Connected)
			{
				return;
			}
			IEventTracker expr_14 = VpnMixpanelEventTracker.Instance;
			if (expr_14 == null)
			{
				return;
			}
			expr_14.TrackEventAsync(VpnEventTrackingNames.Disconnect, null);
		}

		private void OnStateChangedNotification(object sender, Status eventArgs)
		{
			Log.Debug(string.Format("[!] OpenVpn: {0}, {1}, {2}", eventArgs.NewState, eventArgs.Error, eventArgs.Message));
			if (eventArgs.NewState == ConnectionState.Connected)
			{
				this.tapAdapter.ChooseMetric();
			}
			bool arg_76_0 = this.TryReconnecting(ref eventArgs);
			if (eventArgs.NewState == ConnectionState.Disconnecting)
			{
				eventArgs.Error = ErrorType.NoError;
			}
			this.ConnectionState = eventArgs.NewState;
			EventHandler<Status> expr_69 = this.StateChangedNotification;
			if (expr_69 != null)
			{
				expr_69(sender, eventArgs);
			}
			if (arg_76_0)
			{
				this.Reconnect();
				return;
			}
			if (eventArgs.NewState == ConnectionState.Connected)
			{
				this.reconnectAttempts = 0u;
			}
			try
			{
				this.TrackConnectionError(eventArgs);
				if (eventArgs.NewState == ConnectionState.Disconnected && eventArgs.Error == ErrorType.ConnectedError)
				{
					this.StopOpenVpn();
				}
			}
			catch (Exception)
			{
			}
		}

		private bool TryReconnecting(ref Status eventArgs)
		{
			if (eventArgs.NewState != ConnectionState.Disconnected)
			{
				return false;
			}
			if (this.isWifiAutoconnect && !ProductSettings.KillSwitch)
			{
				Log.Debug("Supressing reconnection because connection was wifi and killswitch is disabled");
				return false;
			}
			if (this.TryReconnectDueToOpenVpnError(eventArgs.Error))
			{
				IEventTracker expr_3A = VpnMixpanelEventTracker.Instance;
				if (expr_3A != null)
				{
					expr_3A.TrackEventAsync(VpnEventTrackingNames.ReconnectingDueToOpenVpnError, new Dictionary<string, object>
					{
						{
							"Message",
							eventArgs.Message
						},
						{
							"Error",
							eventArgs.Error
						}
					});
				}
				if (eventArgs.Error == ErrorType.AuthError)
				{
					License expr_88 = DiContainer.Resolve<License>();
					if (expr_88 != null)
					{
						expr_88.Refresh();
					}
				}
				eventArgs.NewState = ConnectionState.Connecting;
				eventArgs.Error = ErrorType.NoError;
				this.reconnectAttempts += 1u;
				return true;
			}
			if (!this.RetryWithFallbackProtocol(eventArgs.Error))
			{
				return false;
			}
			IEventTracker expr_C9 = VpnMixpanelEventTracker.Instance;
			if (expr_C9 != null)
			{
				expr_C9.TrackEventAsync(VpnEventTrackingNames.ReconnectUsingDifferentProtocol, new Dictionary<string, object>
				{
					{
						"Protocol",
						this.latestSelectedRegion.Protocol
					},
					{
						"Port",
						this.latestSelectedRegion.Port
					}
				});
			}
			eventArgs.Error = ErrorType.UdpErrorReconnecting;
			return true;
		}

		private bool RetryWithFallbackProtocol(ErrorType error)
		{
			if (error != ErrorType.GeneralError || !string.Equals(this.latestSelectedRegion.Protocol, "udp") || this.latestSelectedRegion.FallbackProtocol == null)
			{
				return false;
			}
			Log.Information(string.Format("Retrying with Fallback proctocol ({0}).", this.latestSelectedRegion.FallbackProtocol));
			this.latestSelectedRegion.Port = this.latestSelectedRegion.FallbackPort;
			this.latestSelectedRegion.Protocol = this.latestSelectedRegion.FallbackProtocol;
			this.latestSelectedRegion.TlsHadshakeWindow = 60;
			return true;
		}

		private void Reconnect()
		{
			Log.Information(string.Format("Trying to reconnect. Attempt {0}.", this.reconnectAttempts));
			this.reconnectAttempts += 1u;
			ThreadPool.QueueUserWorkItem(delegate(object o)
			{
				this.Connect(this.latestSelectedRegion, false);
			});
		}

		private bool TryReconnectDueToOpenVpnError(ErrorType error)
		{
			return (error == ErrorType.PingReset || error == ErrorType.DecryptionError || error == ErrorType.ServerError || error == ErrorType.AuthError || error == ErrorType.TlsError) && this.reconnectAttempts < 1u && this.latestSelectedRegion != null;
		}

		private void TrackConnectionError(Status vpnStatus)
		{
			if (vpnStatus.NewState == ConnectionState.Disconnected && vpnStatus.Error != ErrorType.NoError)
			{
				IEventTracker expr_1B = VpnMixpanelEventTracker.Instance;
				if (expr_1B != null)
				{
					expr_1B.TrackEventAsync(VpnEventTrackingNames.ConnectionError, new Dictionary<string, object>
					{
						{
							"Message",
							vpnStatus.Message
						},
						{
							"Error",
							vpnStatus.Error
						},
						{
							"Protocol",
							this.latestSelectedRegion.Protocol
						},
						{
							"Port",
							this.latestSelectedRegion.Port
						}
					});
				}
				if (vpnStatus.Message.StartsWith("NETSH"))
				{
					string arg_B1_0 = "NETSH ERROR:\noutput\n{0}";
					OpenVpnExe expr_A5 = this.openVpnExe;
					Log.Error(string.Format(arg_B1_0, (expr_A5 != null) ? expr_A5.ChildLog : null));
				}
				if (vpnStatus.Error == ErrorType.TlsError)
				{
					string arg_EE_0 = "TLS ERROR:\nsession\n{0}\noutput\n{1}";
					Session expr_D0 = this.session;
					object arg_EE_1 = (expr_D0 != null) ? expr_D0.TlsLog : null;
					OpenVpnExe expr_E2 = this.openVpnExe;
					Log.Error(string.Format(arg_EE_0, arg_EE_1, (expr_E2 != null) ? expr_E2.TlsLog : null));
				}
			}
		}

		private void StopOpenVpn()
		{
			OpenVpnExe expr_06 = this.openVpnExe;
			if (expr_06 != null)
			{
				expr_06.Stop();
			}
			this.openVpnExe = null;
			TapAdapter expr_1E = this.tapAdapter;
			if (expr_1E == null)
			{
				return;
			}
			expr_1E.RestoreMetric();
		}

		private void OnTrafficChanged(object sender, TrafficChangedEventArgs currentSessionTrafficEventArgs)
		{
			currentSessionTrafficEventArgs.UsedInBytes = this.tapAdapter.Used;
			EventHandler<TrafficChangedEventArgs> expr_17 = this.TrafficChanged;
			if (expr_17 == null)
			{
				return;
			}
			expr_17(this, currentSessionTrafficEventArgs);
		}

		public void Dispose()
		{
			if (this.endpoint != null)
			{
				this.endpoint.Dispose();
			}
			if (this.openVpnExe != null)
			{
				this.openVpnExe.Dispose();
			}
		}
	}
}

using System;

namespace Avira.VpnService
{
	public class OpenVpnClient : IOpenVpnClient
	{
		private readonly IManagementEndpoint endpoint;

		public OpenVpnClient(IManagementEndpoint endpoint)
		{
			this.endpoint = endpoint;
		}

		public void EnableStateNotification()
		{
			this.endpoint.Request("state on");
		}

		public void Release()
		{
			this.endpoint.Request("hold release");
		}

		public void Auth(string user, string password)
		{
			this.endpoint.Request("username \"Auth\" " + user);
			this.endpoint.Request("password \"Auth\" " + password);
		}

		public void EnableByteCountNotification(int period)
		{
			this.endpoint.Request(string.Format("bytecount {0}", period));
		}

		public void EnableLogging()
		{
			this.endpoint.Request("log on");
		}

		public void SetVerbosityLevel(ushort level)
		{
			if (level > 15)
			{
				level = 15;
			}
			this.endpoint.Request(string.Format("verb {0}", level));
		}
	}
}

using Avira.Core;
using Avira.Messaging;
using Avira.VPN.Core;
using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;
using System.Threading;

namespace Avira.VpnService
{
	public class OpenVpnExe : IDisposable, IOpenVpnExe
	{
		private readonly string managementServer;

		private readonly int port;

		private readonly IProcess process;

		private readonly IWhiteList whitelist;

		private bool disposed;

		public event EventHandler Exited
		{
			add
			{
				this.process.Exited += value;
			}
			remove
			{
				this.process.Exited -= value;
			}
		}

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<string>> Output;

		public string ChildLog
		{
			get;
			private set;
		}

		public string TlsLog
		{
			get;
			private set;
		}

		public OpenVpnExe(string managementServer, int port)
		{
			this.managementServer = managementServer;
			this.port = port;
			this.process = new ProcessWrapper();
			this.whitelist = new PathWhiteList();
		}

		public void Start(RemoteConnectionSettings region, string adapter)
		{
			Log.Debug(string.Format("Starting OpenVpn Management Server on {0}:{1}", this.managementServer, this.port));
			this.ChildLog = string.Empty;
			this.TlsLog = string.Empty;
			ProcessRunner processRunner = new ProcessRunner(this.process, this.whitelist)
			{
				FileName = FileSystem.MakeFullPath(ProductSettings.OpenVpnPath),
				Arguments = OpenVpnExe.CreateCommandLineParameters(region, ProductSettings.OpenVpnConfigPath, this.managementServer, this.port, adapter),
				WorkingDirectory = FileSystem.MakeFullPath("OpenVpn")
			};
			this.process.EnableRaisingEvents = true;
			processRunner.OutputDataReceived += delegate(object s, DataReceivedEventArgs e)
			{
				if (e.Data == null)
				{
					return;
				}
				if (!new Regex("^\\w{3} \\w{3} \\d{1,2}").IsMatch(e.Data) && e.Data != string.Empty)
				{
					this.ChildLog = this.ChildLog + "\n" + e.Data;
				}
				if (e.Data.IndexOf("tls", StringComparison.InvariantCultureIgnoreCase) != -1)
				{
					this.TlsLog = this.TlsLog + "\n" + e.Data;
				}
				EventHandler<EventArgs<string>> expr_84 = this.Output;
				if (expr_84 == null)
				{
					return;
				}
				expr_84(this, new EventArgs<string>(e.Data));
			};
			processRunner.Start();
			Log.Information(string.Format("OpenVpn was started with arguments : {0}", processRunner.Arguments));
		}

		public void Stop()
		{
			EventWaitHandle eventWaitHandle = new EventWaitHandle(false, EventResetMode.ManualReset, "AviraVPNOpenVpnQuitEvent");
			eventWaitHandle.Set();
			try
			{
				this.process.WaitForExit();
				this.process.Close();
			}
			catch (Exception arg)
			{
				Log.Information(string.Format("Could not stop openvpn process. {0}", arg));
			}
			eventWaitHandle.Reset();
			Log.Information("OpenVpn stopped.");
		}

		private static string CreateCommandLineParameters(RemoteConnectionSettings region, string configPath, string managementServer, int managementPort, string adapter)
		{
			if (region == null)
			{
				throw new Exception("Can't get VPN default server.");
			}
			Log.Information(string.Format("Default VPN server {0}:{1} using {2}", region.Uri, region.Port, region.Protocol));
			InterfaceConfig interfaceConfig = new InterfaceConfig("HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Tcpip6\\Parameters");
			Log.Debug(string.Format("OpenVpnExe: tls handshake window {0}", region.TlsHadshakeWindow));
			return new CommandLineParametersBuilder
			{
				ConfigFilePath = configPath,
				ManagementConsoleSettings = new RemoteConnectionSettings
				{
					Uri = managementServer,
					Port = managementPort
				},
				OpenVpnServerSettings = region,
				IsIpV6 = interfaceConfig.IsIpV6(),
				AdapterName = adapter
			}.Create();
		}

		public void Dispose()
		{
			this.Dispose(true);
			GC.SuppressFinalize(this);
		}

		protected virtual void Dispose(bool disposing)
		{
			if (this.disposed)
			{
				return;
			}
			if (disposing)
			{
				this.process.Close();
			}
			this.disposed = true;
		}
	}
}

using System;

namespace Avira.VpnService
{
	public abstract class OpenVpnNotification : EventArgs
	{
		public DateTime Timestamp
		{
			get;
			protected set;
		}

		public string Reason
		{
			get;
			protected set;
		}

		protected static DateTime UnixTimeToDateTime(string timestamp)
		{
			double value;
			if (!double.TryParse(timestamp, out value))
			{
				throw new Exception("Invalid Unix Timestamp.");
			}
			DateTime dateTime = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
			return dateTime.AddSeconds(value).ToLocalTime();
		}
	}
}

using Avira.Core;
using Avira.VPN.Core;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.ServiceProcess;
using System.Threading;

namespace Avira.VpnService
{
	public static class Program
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Program.<>c <>9 = new Program.<>c();

			public static UnhandledExceptionEventHandler <>9__2_0;

			internal void <Main>b__2_0(object sender, UnhandledExceptionEventArgs eventArgs)
			{
				Log.Error("Unhandled exception:", eventArgs.ExceptionObject as Exception);
			}
		}

		private static ServiceBase serviceToRun;

		static Program()
		{
			if (Assembly.GetExecutingAssembly().GetName().Name.StartsWith("Avira."))
			{
				return;
			}
			AppDomain.CurrentDomain.AssemblyResolve += new ResolveEventHandler(Program.CurrentDomain_AssemblyResolve);
		}

		public static void Main(string[] args)
		{
			AppDomain arg_24_0 = AppDomain.CurrentDomain;
			UnhandledExceptionEventHandler arg_24_1;
			if ((arg_24_1 = Program.<>c.<>9__2_0) == null)
			{
				arg_24_1 = (Program.<>c.<>9__2_0 = new UnhandledExceptionEventHandler(Program.<>c.<>9.<Main>b__2_0));
			}
			arg_24_0.UnhandledException += arg_24_1;
			CultureInfo cultureInfo = CultureInfo.CreateSpecificCulture("en-US");
			try
			{
				cultureInfo = CultureInfo.CreateSpecificCulture(ProductSettings.ProductLanguage);
			}
			catch (Exception ex)
			{
				Log.Warning("CreateSpecificCulture failed", ex);
			}
			CultureInfo.DefaultThreadCurrentCulture = cultureInfo;
			CultureInfo.DefaultThreadCurrentUICulture = cultureInfo;
			Thread.CurrentThread.CurrentCulture = cultureInfo;
			Thread.CurrentThread.CurrentUICulture = cultureInfo;
			if (Program.IsConsoleMode(args))
			{
				Program.RunInConsoleMode();
				return;
			}
			Program.RunAsWindowsService();
		}

		private static Assembly CurrentDomain_AssemblyResolve(object sender, ResolveEventArgs args)
		{
			if (args.Name.StartsWith("Avira."))
			{
				int num = args.Name.IndexOf(',');
				string path = args.Name.Substring("Avira.".Length, num - "Avira.".Length) + ".dll";
				return Assembly.LoadFile(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, path));
			}
			return null;
		}

		private static void RunInConsoleMode()
		{
			Trace.Listeners.Add(new ConsoleTraceListener());
			Log.Debug("Running in console mode");
			Program.serviceToRun = new VpnService();
			Console.WriteLine("Service running in interactive mode.");
			Console.WriteLine();
			Log.Debug("ServiceHost started");
			MethodBase arg_7B_0 = typeof(ServiceBase).GetMethod("OnStart", BindingFlags.Instance | BindingFlags.NonPublic);
			Console.Write("Starting {0}...", Program.serviceToRun.ServiceName);
			arg_7B_0.Invoke(Program.serviceToRun, new object[]
			{
				new string[0]
			});
			Console.Write("Started");
			Console.WriteLine();
			Console.WriteLine();
			Console.WriteLine("Press any key to stop the service ...");
			Console.ReadKey();
			Console.WriteLine();
			MethodBase arg_DA_0 = typeof(ServiceBase).GetMethod("OnStop", BindingFlags.Instance | BindingFlags.NonPublic);
			Console.Write("Stopping {0}...", Program.serviceToRun.ServiceName);
			arg_DA_0.Invoke(Program.serviceToRun, null);
			Console.WriteLine("Stopped");
			Log.Debug("ServiceHost stopped");
			Thread.Sleep(1000);
		}

		private static void RunAsWindowsService()
		{
			ServiceBase.Run(new ServiceBase[]
			{
				new VpnService()
			});
		}

		private static bool IsConsoleMode(IEnumerable<string> args)
		{
			return args.Contains("/console");
		}
	}
}

using Avira.Core;
using Avira.VPN.Core;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;

namespace Avira.VpnService
{
	public class RemoteFeature
	{
		private List<RemoteFeatureData> remoteFeatures;

		private IHttpClient httpClient;

		public List<RemoteFeatureData> RemoteFeatures
		{
			get
			{
				if (this.remoteFeatures == null)
				{
					lock (this)
					{
						this.RetrieveRemoteFeatures();
					}
				}
				return this.remoteFeatures;
			}
		}

		public RemoteFeature(IHttpClient httpClient)
		{
			this.httpClient = httpClient;
		}

		private void RetrieveRemoteFeatures()
		{
			if (this.remoteFeatures == null)
			{
				try
				{
					string uri = "features/windows?device_id=" + GeneratedDeviceInfo.GetId();
					JArray jArray = JObject.Parse(this.httpClient.Get(uri)).GetValue("features") as JArray;
					this.remoteFeatures = jArray.ToObject<List<RemoteFeatureData>>();
				}
				catch (Exception ex)
				{
					Log.Debug("Could not get remote features", new object[]
					{
						ex
					});
					this.remoteFeatures = new List<RemoteFeatureData>();
				}
			}
		}

		public RemoteFeatureData GetFeature(string id)
		{
			return this.RemoteFeatures.Find((RemoteFeatureData d) => d.Id == id);
		}

		public bool IsActive(string id, bool defaultValue = false)
		{
			RemoteFeatureData feature = this.GetFeature(id);
			if (feature != null)
			{
				return feature.IsActive;
			}
			return defaultValue;
		}
	}
}

using Avira.Core;
using Avira.Core.Networking;
using Avira.Messaging;
using Avira.VPN.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace Avira.VpnService
{
	public class RegionsLatency
	{
		private readonly INetworkChangeMonitor networkChangeMonitor;

		private readonly IInternetConnectionMonitor internetConnectionMonitor;

		[Routing("latency", true)]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<LatencyData> LatencyProbingCompleted;

		public RegionsLatency() : this(new NetworkChangeMonitor(), new InternetConnectionMonitor())
		{
		}

		internal RegionsLatency(INetworkChangeMonitor networkChangeMonitor, IInternetConnectionMonitor internetConnectionMonitor)
		{
			this.networkChangeMonitor = networkChangeMonitor;
			this.internetConnectionMonitor = internetConnectionMonitor;
			if (this.networkChangeMonitor != null)
			{
				this.networkChangeMonitor.NetworkConnected += delegate(object s, EventArgs e)
				{
					this.ResetLatency();
				};
				this.networkChangeMonitor.Start();
			}
		}

		[Routing("regions/latency")]
		public void ProbeLatency()
		{
			Regions regions = DiContainer.Resolve<Regions>();
			if (regions == null)
			{
				return;
			}
			IVpnProvider vpnProvider = DiContainer.Resolve<IVpnProvider>();
			if (vpnProvider != null && vpnProvider.ConnectionState == ConnectionState.Connected)
			{
				return;
			}
			this.ProbeLatency(regions.RegionList, 3000);
		}

		public void ResetLatency()
		{
			Regions regions = DiContainer.Resolve<Regions>();
			if (regions == null)
			{
				return;
			}
			foreach (RemoteConnectionSettings current in regions.RegionList.ServersConnectionSettings)
			{
				EventHandler<LatencyData> expr_2B = this.LatencyProbingCompleted;
				if (expr_2B != null)
				{
					expr_2B(this, new LatencyData
					{
						Id = current.Id,
						Latency = 0L
					});
				}
			}
		}

		public void ProbeLatency(RegionList regions, int timeout = 3000)
		{
			if (!NetworkInterface.GetIsNetworkAvailable())
			{
				return;
			}
			this.internetConnectionMonitor.InitializeAsync();
			Func<RemoteConnectionSettings, Task<bool>> <>9__1;
			Task.Run(delegate
			{
				Task.Delay(1000);
				if (this.internetConnectionMonitor.LastKnownStatus == InternetConnectionStatus.Disconnected)
				{
					return;
				}
				IEnumerable<RemoteConnectionSettings> arg_49_0 = regions.ServersConnectionSettings;
				Func<RemoteConnectionSettings, Task<bool>> arg_49_1;
				if ((arg_49_1 = <>9__1) == null)
				{
					arg_49_1 = (<>9__1 = ((RemoteConnectionSettings region) => this.SendPing(region, timeout)));
				}
				List<Task> tasks = arg_49_0.Select(arg_49_1).Cast<Task>().ToList<Task>();
				try
				{
					Task.WhenAll(tasks).Wait(timeout * 2);
				}
				catch (AggregateException arg)
				{
					Log.Warning(string.Format("Failed to proble latecy for region list. {0}", arg));
					this.NotifyFailedTasks(regions, tasks);
				}
			});
		}

		private void NotifyFailedTasks(RegionList regions, List<Task> tasks)
		{
			for (int i = 0; i < tasks.Count; i++)
			{
				if (tasks[i].Exception != null)
				{
					Exception ex = tasks[i].Exception;
					RemoteConnectionSettings remoteConnectionSettings = regions.ServersConnectionSettings[i];
					while (ex.InnerException != null)
					{
						ex = ex.InnerException;
					}
					Log.Warning(string.Format("Pinging {0} failed: ", remoteConnectionSettings.Uri), ex);
					LatencyData e = new LatencyData
					{
						Id = remoteConnectionSettings.Id,
						Error = ex.Message
					};
					EventHandler<LatencyData> expr_7A = this.LatencyProbingCompleted;
					if (expr_7A != null)
					{
						expr_7A(this, e);
					}
				}
			}
		}

		protected Task<bool> SendPing(RemoteConnectionSettings region, int timeout = 5000)
		{
			return new Ping().SendPingAsync(region.Uri, timeout).ContinueWith<bool>(delegate(Task<PingReply> reply)
			{
				LatencyData e = new LatencyData
				{
					Id = region.Id,
					IPStatus = reply.Result.Status,
					Latency = reply.Result.RoundtripTime
				};
				EventHandler<LatencyData> expr_44 = this.LatencyProbingCompleted;
				if (expr_44 != null)
				{
					expr_44(this, e);
				}
				return true;
			});
		}
	}
}

using Avira.Core;
using Avira.VPN.Core;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Avira.VpnService
{
	public class RegionList
	{
		[JsonProperty(PropertyName = "default")]
		public string DefaultRegion
		{
			get;
			internal set;
		}

		[JsonProperty(PropertyName = "timestamp")]
		public long Timestamp
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "ttl")]
		public double Ttl
		{
			get;
			private set;
		}

		[JsonProperty(PropertyName = "regions")]
		public List<RemoteConnectionSettings> ServersConnectionSettings
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "errorMessage")]
		public string ErrorMessage
		{
			get;
			set;
		}

		public RemoteConnectionSettings GetDefault()
		{
			try
			{
				return (from server in this.ServersConnectionSettings
				where server.Id == this.DefaultRegion
				select server).FirstOrDefault<RemoteConnectionSettings>() ?? this.ServersConnectionSettings.First<RemoteConnectionSettings>();
			}
			catch (Exception arg_2E_0)
			{
				Log.Warning(arg_2E_0.Message);
			}
			return null;
		}
	}
}

using Newtonsoft.Json;
using System;

namespace Avira.VpnService
{
	public class RemoteFeatureData
	{
		[JsonProperty(PropertyName = "id")]
		public string Id
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "active")]
		public bool IsActive
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "default_value")]
		public string DefaultValue
		{
			get;
			set;
		}

		[JsonProperty(PropertyName = "flag")]
		public string Flag
		{
			get;
			set;
		}
	}
}

using Avira.Core;
using Avira.Messaging;
using Avira.Vpn.Core;
using Avira.VPN.Core;
using Avira.VpnService.Properties;
using System;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;
using System.Threading;

namespace Avira.VpnService
{
	public class Session : ISession
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Session.<>c <>9 = new Session.<>c();

			public static Func<string> <>9__4_0;

			public static Func<string> <>9__4_1;

			internal string ctor>b__4_0()
			{
				return GeneratedDeviceInfo.GetId();
			}

			internal string ctor>b__4_1()
			{
				return GeneratedDeviceInfo.GetId();
			}
		}

		private IOpenVpnClient client;

		private ConnectionState state;

		private bool stopWasRequested;

		private INotificationSource source;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<Status> StateChanged;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<TrafficChangedEventArgs> TrafficChanged;

		public ulong TrafficUsedTotal
		{
			get;
			private set;
		}

		public string TlsLog
		{
			get;
			private set;
		}

		public ConnectionState State
		{
			get
			{
				return this.state;
			}
			internal set
			{
				if (this.state == value)
				{
					return;
				}
				this.state = value;
				this.PropagateState();
			}
		}

		public ErrorType LastErrorType
		{
			get;
			private set;
		}

		public string LastError
		{
			get;
			private set;
		}

		public Credentials Credentials
		{
			get;
			set;
		}

		public Session()
		{
			this.LastError = string.Empty;
			this.LastErrorType = ErrorType.NoError;
			Credentials expr_1E = new Credentials();
			Func<string> arg_3E_1;
			if ((arg_3E_1 = Session.<>c.<>9__4_0) == null)
			{
				arg_3E_1 = (Session.<>c.<>9__4_0 = new Func<string>(Session.<>c.<>9.<.ctor>b__4_0));
			}
			expr_1E.UserId = arg_3E_1;
			Func<string> arg_63_1;
			if ((arg_63_1 = Session.<>c.<>9__4_1) == null)
			{
				arg_63_1 = (Session.<>c.<>9__4_1 = new Func<string>(Session.<>c.<>9.<.ctor>b__4_1));
			}
			expr_1E.Password = arg_63_1;
			this.Credentials = expr_1E;
		}

		public void Bind(IOpenVpnExe process, INotificationSource notifications, IOpenVpnClient client)
		{
			if (this.State != ConnectionState.Connecting)
			{
				throw new Exception("Session wasn't started yet.");
			}
			process.Exited += new EventHandler(this.OnOpenVpnExit);
			process.Output += new EventHandler<EventArgs<string>>(this.HandleOutputLogNotification);
			this.client = client;
			notifications.StateReceived += new EventHandler<StateNotification>(this.HandleStateNotification);
			notifications.HoldReceived += new EventHandler<HoldNotification>(this.HandleHoldNotification);
			notifications.AuthReceived += new EventHandler<AuthNotification>(this.HandleAuthNotification);
			notifications.FatalReceived += new EventHandler<FatalNotification>(this.HandleFatalNotification);
			notifications.ByteCountReceived += new EventHandler<ByteCountNotification>(this.HandleByteCountNotification);
			notifications.LogReceived += new EventHandler<LogNotification>(this.HandleLogNotification);
			notifications.ReadyReceived += new EventHandler(this.HandleReadyNotification);
			this.source = notifications;
		}

		public void Start()
		{
			if (this.State != ConnectionState.Disconnected)
			{
				return;
			}
			this.LastError = string.Empty;
			this.LastErrorType = ErrorType.NoError;
			this.State = ConnectionState.Connecting;
		}

		public void Stop()
		{
			if (this.State != ConnectionState.Connected)
			{
				return;
			}
			this.State = ConnectionState.Disconnecting;
			this.stopWasRequested = true;
		}

		private static ErrorType ParseErrors(string reason)
		{
			if (new Regex("^TCP: connect to (.*) failed").IsMatch(reason))
			{
				return ErrorType.NetworkError;
			}
			return ErrorType.GeneralError;
		}

		private static ErrorType ParseSigterm(string reason)
		{
			string pattern = "SIGTERM\\[(?<type>.*),(?<reason>.*)\\]";
			foreach (Match match in Regex.Matches(reason, pattern, RegexOptions.IgnoreCase))
			{
				Log.Information(string.Format("SIGTERM detected : type={0}, reason={1}", match.Groups["type"], match.Groups["reason"]));
				if (match.Groups["type"].Value == "soft")
				{
					string value = match.Groups["reason"].Value;
					if (value == "ping-restart" || value == "ping-reset")
					{
						ErrorType result = ErrorType.PingReset;
						return result;
					}
					if (value == "connection-reset")
					{
						ErrorType result = ErrorType.ServerError;
						return result;
					}
					if (value == "decryption-error")
					{
						ErrorType result = ErrorType.DecryptionError;
						return result;
					}
					if (value == "tls-error")
					{
						ErrorType result = ErrorType.TlsError;
						return result;
					}
					if (value == "auth-failure")
					{
						ErrorType result = ErrorType.AuthError;
						return result;
					}
				}
			}
			return ErrorType.NoError;
		}

		public void Disconnect()
		{
			this.LastErrorType = ErrorType.NoError;
			this.LastError = string.Empty;
			this.State = ConnectionState.Disconnected;
			this.stopWasRequested = false;
		}

		private void OnOpenVpnExit(object sender, EventArgs args)
		{
			Log.Debug("OpenVpn process exited");
			this.source.SourceClosed.WaitOne();
			if (!this.stopWasRequested)
			{
				Log.Debug("Stop was not requested, change state to disconnected");
				this.State = ConnectionState.Disconnected;
			}
		}

		private void HandleReadyNotification(object sender, EventArgs e)
		{
			Thread.Sleep(100);
			this.ConfigureNotifications();
			this.client.SetVerbosityLevel(Settings.Default.OpenVpnVerbosity);
		}

		private void HandleByteCountNotification(object sender, ByteCountNotification e)
		{
			if (this.State != ConnectionState.Connected)
			{
				return;
			}
			this.TrafficUsedTotal = e.Ingoing + e.Outgoing;
			EventHandler<TrafficChangedEventArgs> expr_23 = this.TrafficChanged;
			if (expr_23 == null)
			{
				return;
			}
			expr_23(this, new TrafficChangedEventArgs
			{
				UsedInBytes = this.TrafficUsedTotal
			});
		}

		private void HandleHoldNotification(object sender, HoldNotification e)
		{
			if (!e.Reason.StartsWith("Waiting for hold release"))
			{
				return;
			}
			this.client.Release();
		}

		private void HandleLogNotification(object sender, LogNotification e)
		{
			if (e.Reason.IndexOf("tls", StringComparison.InvariantCultureIgnoreCase) != -1)
			{
				this.TlsLog = this.TlsLog + "\n" + e.Reason;
			}
			switch (e.Type)
			{
			case LogNotification.LogType.Warning:
				Log.Warning(e.Reason);
				return;
			case LogNotification.LogType.Error:
				if (!e.Reason.StartsWith("RESOLVE: Cannot resolve host address:"))
				{
					Log.Warning(e.Reason);
					this.LastErrorType = Session.ParseErrors(e.Reason);
					this.LastError = e.Reason;
					return;
				}
				break;
			case LogNotification.LogType.Fatal:
				Log.Error(e.Reason);
				return;
			default:
				this.HandleSigterm(e.Reason);
				break;
			}
		}

		private void HandleOutputLogNotification(object sender, EventArgs<string> log)
		{
			this.HandleSigterm(log.Value);
		}

		private void HandleSigterm(string data)
		{
			ErrorType errorType = Session.ParseSigterm(data);
			if (errorType != ErrorType.NoError)
			{
				this.LastErrorType = errorType;
			}
			Log.Information(data);
		}

		private void HandleStateNotification(object sender, StateNotification e)
		{
			switch (e.StateType)
			{
			case StateNotification.Type.Connected:
				if (e.Reason == "ERROR")
				{
					this.State = ConnectionState.Disconnected;
					this.LastErrorType = ErrorType.ConnectedError;
					return;
				}
				this.State = ConnectionState.Connected;
				return;
			case StateNotification.Type.Reconnecting:
				if (this.State != ConnectionState.Connected)
				{
					throw new Exception("Reconnecting in Disconnected state!");
				}
				this.State = ConnectionState.Connecting;
				return;
			case StateNotification.Type.Exiting:
				if (this.State == ConnectionState.Connected)
				{
					this.State = ConnectionState.Disconnecting;
				}
				return;
			default:
				return;
			}
		}

		public void PropagateState()
		{
			Log.Debug(string.Format("[!] Session: {0}, {1}, {2}", this.State.ToString(), this.LastErrorType, this.LastError));
			EventHandler<Status> expr_3A = this.StateChanged;
			if (expr_3A == null)
			{
				return;
			}
			expr_3A(null, this.ToStatus());
		}

		public Status ToStatus()
		{
			return new Status(this.State, this.LastErrorType, this.LastError);
		}

		private void ConfigureNotifications()
		{
			this.client.EnableStateNotification();
			this.client.EnableByteCountNotification(1);
			this.client.EnableLogging();
		}

		private void HandleAuthNotification(object sender, AuthNotification e)
		{
			AuthNotification.AuthTypes type = e.Type;
			if (type == AuthNotification.AuthTypes.Auth)
			{
				this.client.Auth(this.Credentials.UserId(), this.Credentials.Password());
				return;
			}
			if (type != AuthNotification.AuthTypes.Failed)
			{
				return;
			}
			this.State = ConnectionState.Disconnected;
			this.LastErrorType = ErrorType.GeneralError;
			this.LastError = e.Reason;
		}

		private void HandleFatalNotification(object sender, FatalNotification e)
		{
			Log.Error("FATAL: " + e.Reason);
			this.LastErrorType = ErrorType.Fatal;
			this.LastError = e.Reason;
			if (e.Reason.StartsWith("RESOLVE: Cannot resolve host address:"))
			{
				this.LastErrorType = ErrorType.DnsError;
			}
			this.State = ConnectionState.Disconnected;
		}
	}
}

using Avira.Core;
using Avira.VPN.Core;
using Avira.VpnService.Properties;
using System;
using System.Configuration;
using System.IO;

namespace Avira.VpnService
{
	public class SettingsMigrator
	{
		public static void MigrateSettings()
		{
			if (ProductSettings.SettingsMigrated)
			{
				return;
			}
			try
			{
				ProductSettings.UpgradeSettings();
				ProductSettings.MigrateCoreSettings();
				SettingsMigrator.MigrateServiceSettings();
				DesktopShell.ShellExecute(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, ProductSettings.WebAppHostExe), "/migrateSettings", AppDomain.CurrentDomain.BaseDirectory, "open", 0);
			}
			catch (Exception arg)
			{
				Log.Error(string.Format("Failed to migrate settings. Using the default ones. {0}", arg));
			}
			ProductSettings.SettingsMigrated = true;
			ProductSettings.DeleteUserSettingsFolder();
		}

		public static void UpgradeSettings()
		{
			try
			{
				Log.Debug(string.Format("Users settings file: {0}", ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.PerUserRoamingAndLocal).FilePath));
				if (Settings.Default.CallUpgrade)
				{
					Settings.Default.Upgrade();
					Settings.Default.CallUpgrade = false;
				}
			}
			catch (Exception ex)
			{
				Log.Error("Failed to upgrade settings.", ex);
			}
		}

		private static void MigrateServiceSettings()
		{
			SettingsMigrator.UpgradeSettings();
			ProductSettings.LastUpdateCheck = Settings.Default.LastUpdateCheck;
			ProductSettings.RefreshToken = Settings.Default.RefreshToken;
			ProductSettings.LicenseData = Settings.Default.LicenseData;
			ProductSettings.AccessToken = Settings.Default.AccessToken;
			ProductSettings.KillSwitch = Settings.Default.KillSwitch;
			ProductSettings.UsedTraffic = (long)Settings.Default.UsedTraffic;
			ProductSettings.StartGuiAfterUpdate = Settings.Default.StartGuiAfterUpdate;
			ProductSettings.UdpSupport = Settings.Default.UdpSupport;
			ProductSettings.LastConnect = Settings.Default.LastConnect;
		}
	}
}

using System;
using System.Collections.Generic;

namespace Avira.VpnService
{
	public class StateNotification : OpenVpnNotification
	{
		public enum Type
		{
			Connected,
			Reconnecting,
			Exiting,
			Connecting,
			Wait,
			Auth,
			GetConfig,
			AssignIp,
			AddRoutes,
			Resolve,
			TcpConnect
		}

		private static readonly Dictionary<string, StateNotification.Type> StatesMap = new Dictionary<string, StateNotification.Type>
		{
			{
				"CONNECTING",
				StateNotification.Type.Connecting
			},
			{
				"WAIT",
				StateNotification.Type.Wait
			},
			{
				"AUTH",
				StateNotification.Type.Auth
			},
			{
				"GET_CONFIG",
				StateNotification.Type.GetConfig
			},
			{
				"ASSIGN_IP",
				StateNotification.Type.AssignIp
			},
			{
				"ADD_ROUTES",
				StateNotification.Type.AssignIp
			},
			{
				"CONNECTED",
				StateNotification.Type.Connected
			},
			{
				"RECONNECTING",
				StateNotification.Type.Reconnecting
			},
			{
				"EXITING",
				StateNotification.Type.Exiting
			},
			{
				"RESOLVE",
				StateNotification.Type.Resolve
			},
			{
				"TCP_CONNECT",
				StateNotification.Type.TcpConnect
			}
		};

		public string LocalAddress
		{
			get;
			protected set;
		}

		public string RemoteAddress
		{
			get;
			protected set;
		}

		public StateNotification.Type StateType
		{
			get;
			protected set;
		}

		public StateNotification(string message)
		{
			try
			{
				Dictionary<string, string> dictionary = StateNotification.ParseParameters(message);
				base.Timestamp = OpenVpnNotification.UnixTimeToDateTime(dictionary["timestamp"]);
				this.StateType = StateNotification.StatesMap[dictionary["state"]];
				base.Reason = dictionary["reason"];
				this.LocalAddress = dictionary["local"];
				this.RemoteAddress = dictionary["remote"];
			}
			catch (KeyNotFoundException)
			{
				throw new Exception(string.Format("Wrong StateType type in StateType real-time notification: {0}", message));
			}
		}

		private static Dictionary<string, string> ParseParameters(string message)
		{
			string[] array = message.Split(new char[]
			{
				','
			});
			if (array.Length < 5)
			{
				throw new Exception(string.Format("Wrong parameters number in StateType real-time notification : {0}", message));
			}
			if (string.IsNullOrEmpty(array[0]) || string.IsNullOrEmpty(array[1]))
			{
				throw new Exception(string.Format("Wrong format of real-time notification : {0}", message));
			}
			return new Dictionary<string, string>
			{
				{
					"timestamp",
					array[0].Trim()
				},
				{
					"state",
					array[1].Trim()
				},
				{
					"reason",
					array[2] ?? string.Empty
				},
				{
					"local",
					array[3] ?? string.Empty
				},
				{
					"remote",
					array[4] ?? string.Empty
				}
			};
		}

		public override string ToString()
		{
			return string.Format("[{0}] {1} ({2}, {3} => {4}) : {5}", new object[]
			{
				base.Timestamp.ToLongDateString(),
				base.GetType(),
				this.StateType,
				this.LocalAddress,
				this.RemoteAddress,
				base.Reason
			});
		}
	}
}

using Avira.Core;
using Avira.VPN.Core;
using Newtonsoft.Json.Linq;
using System;

namespace Avira.VpnService
{
	public class StatusProvider : IStatusProvider
	{
		private readonly IServicePersistentData persistentData;

		public StatusProvider() : this(new ServicePersistentData())
		{
		}

		public StatusProvider(IServicePersistentData persistentData)
		{
			this.persistentData = persistentData;
		}

		public void SetStatus(JToken about)
		{
			about["version"] = ProductSettings.ProductVersion.ToString();
			about["license_type"] = DiContainer.GetValue<string>("LicenseType");
			about["remaining_traffic_MB"] = StatusProvider.GetRemainingTrafficMB().ToString();
			about["license_expiration"] = this.FormatDate(DiContainer.GetValue<DateTime>("LicenseExpiration"));
			about["last_connect"] = this.FormatDate(ProductSettings.LastConnect);
			object arg_138_1 = "connected_wifis";
			JObject expr_97 = new JObject();
			string arg_BA_1 = "1d";
			KnownWifis expr_A8 = this.persistentData.KnownWiFis;
			expr_97.Add(arg_BA_1, (expr_A8 != null) ? expr_A8.GetConnectedWifis(1) : 0);
			string arg_E2_1 = "2d";
			KnownWifis expr_D0 = this.persistentData.KnownWiFis;
			expr_97.Add(arg_E2_1, (expr_D0 != null) ? expr_D0.GetConnectedWifis(2) : 0);
			string arg_10A_1 = "7d";
			KnownWifis expr_F8 = this.persistentData.KnownWiFis;
			expr_97.Add(arg_10A_1, (expr_F8 != null) ? expr_F8.GetConnectedWifis(7) : 0);
			string arg_133_1 = "30d";
			KnownWifis expr_120 = this.persistentData.KnownWiFis;
			expr_97.Add(arg_133_1, (expr_120 != null) ? expr_120.GetConnectedWifis(30) : 0);
			about[arg_138_1] = expr_97;
			about["sar"] = new SaRating().CalculateRating();
			about["dar"] = DarRating.CalculateRating();
			Log.Debug(string.Format("Connected Wifi: {0}", about["connected_wifis"]));
			Log.Debug(string.Format("KnownWifis: {0}", this.persistentData.KnownWiFis));
		}

		internal static long GetRemainingTrafficMB()
		{
			ulong value = DiContainer.GetValue<ulong>("TrafficLimit");
			ulong value2 = DiContainer.GetValue<ulong>("TrafficUsed");
			if (value == 0uL)
			{
				return 2147483647L;
			}
			if (value < value2)
			{
				return (long)(-(long)((value2 - value) / 1048576uL));
			}
			return (long)((value - value2) / 1048576uL);
		}

		private string FormatDate(DateTime date)
		{
			if (date.Year < 1900)
			{
				return string.Empty;
			}
			return date.ToString("s") + "Z";
		}
	}
}

using System;

namespace Avira.VpnService
{
	public enum SUPPORTS_BINDING_INTERFACE_FLAGS
	{
		NCF_LOWER = 1,
		NCF_UPPER
	}
}

using Avira.Core;
using Avira.Vpn.Core;
using Avira.VPN.Core;
using Newtonsoft.Json;
using System;
using System.Runtime.CompilerServices;

namespace Avira.VpnService
{
	public class Traffic
	{
		private readonly IHttpClient httpClient;

		private readonly string deviceId;

		private TrafficData backendTrafficData;

		private ulong sessionTraffic;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<TrafficChangedEventArgs> TrafficChanged;

		internal TrafficData BackendTrafficData
		{
			get
			{
				if (this.backendTrafficData == null)
				{
					this.backendTrafficData = new TrafficData
					{
						UsedInBytes = (ulong)ProductSettings.UsedTraffic
					};
					this.Refresh();
				}
				return this.backendTrafficData;
			}
		}

		public ulong UsedInBytes
		{
			get
			{
				return this.BackendTrafficData.UsedInBytes + this.sessionTraffic;
			}
		}

		public Traffic(IHttpClient httpClient, string deviceId)
		{
			this.httpClient = httpClient;
			this.deviceId = deviceId;
			DiContainer.SetGetter("TrafficUsed", () => this.UsedInBytes);
		}

		public void OnTrafficChanged(object sender, TrafficChangedEventArgs trafficEventArgs)
		{
			this.sessionTraffic = trafficEventArgs.UsedInBytes;
			EventHandler<TrafficChangedEventArgs> expr_12 = this.TrafficChanged;
			if (expr_12 == null)
			{
				return;
			}
			expr_12(sender, trafficEventArgs);
		}

		public void Refresh()
		{
			string uri = "traffic?device_id=" + this.deviceId;
			try
			{
				string value = this.httpClient.Get(uri);
				this.backendTrafficData = JsonConvert.DeserializeObject<TrafficData>(value);
				this.sessionTraffic = 0uL;
				Log.Information(string.Format("Backend store traffic: {0} Bytes.", this.backendTrafficData.UsedInBytes));
				EventHandler<TrafficChangedEventArgs> expr_57 = this.TrafficChanged;
				if (expr_57 != null)
				{
					expr_57(this, new TrafficChangedEventArgs
					{
						UsedInBytes = this.backendTrafficData.UsedInBytes
					});
				}
			}
			catch (Exception arg_91_0)
			{
				this.backendTrafficData = new TrafficData
				{
					UsedInBytes = (ulong)ProductSettings.UsedTraffic
				};
				Log.Warning(arg_91_0);
			}
		}
	}
}

using Avira.Core;
using Avira.Mixpanel;
using Avira.VPN.Core;
using System;
using System.Collections.Generic;
using System.IO;

namespace Avira.VpnService
{
	public class TapDriver
	{
		private const string DeviceName = "phantomtap";

		private readonly IProcess process;

		private readonly IWhiteList whitelist;

		private string infPath;

		private string tapInstall;

		private string aviraRootCertificate = "Certificates\\avira.cer";

		private string workingDirectory;

		public TapDriver(IProcess process, IWhiteList whitelist)
		{
			this.process = process;
			this.whitelist = whitelist;
			this.ConstructComponentsFullPath();
		}

		public void Install()
		{
			using (CertificatesManager certificatesManager = new CertificatesManager(this.aviraRootCertificate))
			{
				Log.Debug("Adding avira certificate to trusted publishers.");
				certificatesManager.AddToTrustedPublisher();
				Log.Debug("Installing tap driver...");
				Tuple<int, string> tuple = this.RunDevcon("install  " + this.infPath + " phantomtap");
				Log.Debug("Deleting avira certificate from trusted publishers.");
				certificatesManager.DeleteFromTrustedPublisher();
				if (tuple.Item1 != 0 || !tuple.Item2.Contains("Drivers installed successfully"))
				{
					IEventTracker expr_71 = VpnMixpanelEventTracker.Instance;
					if (expr_71 != null)
					{
						expr_71.TrackEventAsync(VpnEventTrackingNames.TapDriverError, new Dictionary<string, object>
						{
							{
								"Operation",
								"Install"
							},
							{
								"Error",
								tuple
							}
						});
					}
					throw new Exception("Couldn't install the Tap Driver. Output: " + tuple);
				}
			}
		}

		public void Uninstall()
		{
			Tuple<int, string> tuple = this.RunDevcon("tap_remove phantomtap");
			if (tuple.Item1 != 0 || tuple.Item2.Contains("No devices were removed"))
			{
				throw new Exception("Couldn't uninstall the Tap Driver. Output: " + tuple);
			}
		}

		public void Update()
		{
			using (CertificatesManager certificatesManager = new CertificatesManager(this.aviraRootCertificate))
			{
				Log.Debug("Adding avira certificate to trusted publishers.");
				certificatesManager.AddToTrustedPublisher();
				Log.Debug("Updating the tap driver...");
				Tuple<int, string> tuple = this.RunDevcon("update " + this.infPath + " phantomtap");
				Log.Debug("Deleting avira certificate from trusted publishers.");
				certificatesManager.DeleteFromTrustedPublisher();
				if (tuple.Item1 != 0 || !tuple.Item2.Contains("Drivers installed successfully"))
				{
					throw new Exception("Couldn't install the Tap Driver. Output: " + tuple);
				}
			}
		}

		public bool IsInstalled()
		{
			Tuple<int, string> tuple = this.RunDevcon("find phantomtap");
			return tuple.Item1 == 0 && !tuple.Item2.Contains("No matching devices found.");
		}

		public bool IsRunning()
		{
			Tuple<int, string> tuple = this.RunDevcon("status phantomtap");
			return tuple.Item1 == 0 && tuple.Item2.Contains("Driver is running.");
		}

		public void LogStatus()
		{
			Log.Debug(this.RunDevcon("status phantomtap").Item2);
		}

		private void ConstructComponentsFullPath()
		{
			bool flag = WindowsInfo.Is64BitOperatingSystem();
			bool flag2 = WindowsInfo.IsWindows10();
			Log.Information(flag2 ? "Selecting Windows 10 drivers..." : "Selecting Windows 7 drivers!");
			this.workingDirectory = Path.Combine(new string[]
			{
				FileSystem.MakeFullPath("OpenVpn\\TAP")
			});
			this.workingDirectory = Path.Combine(this.workingDirectory, flag2 ? "win10" : "win7");
			this.workingDirectory = Path.Combine(this.workingDirectory, flag ? "amd64" : "i386");
			this.tapInstall = Path.Combine(this.workingDirectory, "tapinstall.exe");
			this.infPath = string.Format("\"{0}\"", Path.Combine(this.workingDirectory, "OemVista.inf"));
			this.aviraRootCertificate = FileSystem.MakeFullPath(this.aviraRootCertificate);
		}

		private Tuple<int, string> RunDevcon(string arguments)
		{
			int num = new ProcessRunner(this.process, this.whitelist)
			{
				FileName = this.tapInstall,
				Arguments = arguments,
				WorkingDirectory = this.workingDirectory
			}.StartAndWaitForExit();
			if (num != 0)
			{
				Log.Error(string.Concat(new object[]
				{
					"ERROR when running devcon.exe with arguments ",
					arguments,
					". Exception: ",
					this.process.StandardError.ReadToEnd(),
					" Error: ",
					this.process.ExitCode
				}));
			}
			return new Tuple<int, string>(num, this.process.StandardOutput.ReadToEnd());
		}
	}
}

using System;

namespace Avira.VpnService
{
	public enum TrustMode
	{
		Unknown,
		Trusted,
		Untrusted
	}
}

using Avira.Core;
using Avira.VPN.Core;
using System;
using System.Diagnostics.CodeAnalysis;
using System.Runtime.CompilerServices;
using System.Timers;

namespace Avira.VpnService
{
	public sealed class UserActivityMonitor : IDisposable
	{
		private readonly IServicePersistentData persistentData;

		private readonly Timer popupTimer;

		private readonly TimeSpan userInactivityThreshold;

		private bool isAfterInstallation;

		private DateTime popupTimerStart;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler Inactive;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler Installed;

		public UserActivityMonitor(TimeSpan inactivityThreshold, TimeSpan popupTimeout) : this(inactivityThreshold, popupTimeout, new ServicePersistentData())
		{
		}

		internal UserActivityMonitor(TimeSpan inactivityThreshold, TimeSpan popupTimeout, IServicePersistentData persistentData)
		{
			this.userInactivityThreshold = inactivityThreshold;
			this.persistentData = persistentData;
			this.popupTimer = new Timer(popupTimeout.TotalMilliseconds)
			{
				AutoReset = false
			};
			this.popupTimer.Elapsed += new ElapsedEventHandler(this.OnTimedEvent);
		}

		public void OnStart()
		{
			Log.Debug(string.Format("UserActivityMonitor.OnStart: LastActivityNotification = {0}, LastConnect = {1}", this.persistentData.LastActivityNotification, ProductSettings.LastConnect));
			if (this.IsOnStartAfterInstallation() && this.persistentData.LastActivityNotification == DateTime.MinValue)
			{
				this.isAfterInstallation = true;
				this.popupTimer.Start();
				this.popupTimerStart = (this.persistentData.LastActivityNotification = DateTime.UtcNow);
				return;
			}
			DateTime dateTime = UserActivityMonitor.IsConnectPerformed() ? ProductSettings.LastConnect : ProductSettings.InstallDate;
			DateTime d = (this.persistentData.LastActivityNotification > dateTime) ? this.persistentData.LastActivityNotification : dateTime;
			if (DateTime.UtcNow - d <= this.userInactivityThreshold)
			{
				return;
			}
			this.isAfterInstallation = false;
			this.popupTimer.Start();
			this.persistentData.LastActivityNotification = DateTime.UtcNow;
		}

		private static bool IsConnectPerformed()
		{
			return ProductSettings.LastConnect != DateTime.MinValue;
		}

		private bool IsOnStartAfterInstallation()
		{
			TimeSpan t = new TimeSpan(0, 0, 2, 0);
			return DateTime.UtcNow - ProductSettings.InstallDate <= t && !UserActivityMonitor.IsConnectPerformed();
		}

		private void OnTimedEvent(object source, ElapsedEventArgs e)
		{
			if (this.isAfterInstallation)
			{
				if (this.popupTimerStart < ProductSettings.LastConnect)
				{
					Log.Debug("Skiping Installed event due to user activity");
					return;
				}
				EventHandler expr_2B = this.Installed;
				if (expr_2B == null)
				{
					return;
				}
				expr_2B(this, null);
				return;
			}
			else
			{
				EventHandler expr_3E = this.Inactive;
				if (expr_3E == null)
				{
					return;
				}
				expr_3E(this, null);
				return;
			}
		}

		[SuppressMessage("ReSharper", "UseNullPropagation", Justification = "Issue with parser.")]
		public void Dispose()
		{
			if (this.popupTimer != null)
			{
				this.popupTimer.Dispose();
			}
		}
	}
}

using Avira.Core;
using Avira.Mixpanel;
using Avira.VPN.Core;
using Avira.VpnService.Properties;
using Newtonsoft.Json;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;

namespace Avira.VpnService
{
	public sealed class Updater : IDisposable
	{
		internal class UpdateBridgeRequest
		{
			internal class ProductInfo
			{
				[JsonProperty(PropertyName = "productId")]
				public int ProductId
				{
					get;
					set;
				}

				[JsonProperty(PropertyName = "productVersion")]
				public string ProductVersion
				{
					get;
					set;
				}

				[JsonProperty(PropertyName = "productLanguage")]
				public string ProductLanguage
				{
					get;
					set;
				}

				[JsonProperty(PropertyName = "licenseNumber")]
				public string LicenseNumber
				{
					get;
					set;
				}

				[JsonProperty(PropertyName = "osVersion")]
				public string OsVersion
				{
					get;
					set;
				}
			}

			[JsonProperty(PropertyName = "method")]
			public string Method
			{
				get;
				set;
			}

			[JsonProperty(PropertyName = "ApiVersion")]
			public int ApiVersion
			{
				get;
				set;
			}

			[JsonProperty(PropertyName = "params")]
			public Updater.UpdateBridgeRequest.ProductInfo Params
			{
				get;
				set;
			}
		}

		internal class UpdateBridgeResponse
		{
			internal class UpdateInfo
			{
				[JsonProperty(PropertyName = "server")]
				public string Server
				{
					get;
					protected set;
				}

				[JsonProperty(PropertyName = "filename")]
				public string FileName
				{
					get;
					protected set;
				}
			}

			internal class ErrorInfo
			{
				[JsonProperty(PropertyName = "message")]
				public string Message
				{
					get;
					set;
				}

				[JsonProperty(PropertyName = "code")]
				public int Code
				{
					get;
					set;
				}
			}

			public string DownloadUri
			{
				get
				{
					return this.Result.Server + this.Result.FileName;
				}
			}

			[JsonProperty(PropertyName = "result")]
			public Updater.UpdateBridgeResponse.UpdateInfo Result
			{
				get;
				set;
			}

			[JsonProperty(PropertyName = "error")]
			public Updater.UpdateBridgeResponse.ErrorInfo Error
			{
				get;
				set;
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<TryDeleteUpdatePackage>b__33_0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncTaskMethodBuilder <>t__builder;

				private TaskAwaiter <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					try
					{
						try
						{
							TaskAwaiter taskAwaiter;
							if (num != 0)
							{
								taskAwaiter = Task.Delay(10000).GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									this.<>1__state = 0;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, Updater.<>c.<<TryDeleteUpdatePackage>b__33_0>d>(ref taskAwaiter, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter);
								this.<>1__state = -1;
							}
							taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter);
							File.Delete(Updater.UpdatePackagePath);
						}
						catch (Exception arg)
						{
							Log.Warning(string.Format("Failed to deleted alredy installed update package. {0}", arg));
						}
					}
					catch (Exception exception)
					{
						this.<>1__state = -2;
						this.<>t__builder.SetException(exception);
						return;
					}
					this.<>1__state = -2;
					this.<>t__builder.SetResult();
				}

				[DebuggerHidden]
				void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
				{
					this.<>t__builder.SetStateMachine(stateMachine);
				}
			}

			public static readonly Updater.<>c <>9 = new Updater.<>c();

			public static Func<Task> <>9__33_0;

			public static Action <>9__42_0;

			internal async Task <TryDeleteUpdatePackage>b__33_0()
			{
				try
				{
					await Task.Delay(10000);
					File.Delete(Updater.UpdatePackagePath);
				}
				catch (Exception var_2_7D)
				{
					Log.Warning(string.Format("Failed to deleted alredy installed update package. {0}", var_2_7D));
				}
			}

			internal void <DownloadCompletedEventHandler>b__42_0()
			{
				File.Move(Updater.TempUpdatePackagePath, Updater.UpdatePackagePath);
			}
		}

		private const int ErrorNoUpdateAvailable = -32001;

		private static readonly string TempUpdateFile = string.Format("{0}_temp.exe", Settings.Default.UpdatePackageName);

		private static readonly string UpdateFile = string.Format("{0}.exe", Settings.Default.UpdatePackageName);

		private readonly IHttpClient httpClient;

		private readonly IProcess updateProcess;

		private readonly long installationTimerIntervalInSeconds;

		private readonly long installNewPackageIntervalInSeconds;

		private long lastCheckForUpdateInstalling;

		private Updater.UpdateBridgeResponse updateInfo;

		private Timer updateInstallerTimer;

		private bool installerLock;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs> QueryForUpdate;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs> PrepareForUpdate;

		private static string TempUpdatePackagePath
		{
			get
			{
				return Path.Combine(Path.GetTempPath(), Updater.TempUpdateFile);
			}
		}

		private static string UpdatePackagePath
		{
			get
			{
				return Path.Combine(Path.GetTempPath(), Updater.UpdateFile);
			}
		}

		public bool DefereUpdate
		{
			get;
			set;
		}

		public Updater() : this(new HttpClient(new Uri(Settings.Default.UpdateServerUrl)), new ProcessWrapper(), Settings.Default.UpdateTimersIntervalInSeconds, Settings.Default.InstallNewPackageIntervalInSeconds)
		{
		}

		public Updater(IHttpClient httpClient, IProcess updateProcess, long installationTimerIntervalInSeconds, long installNewPackageIntervalInSeconds)
		{
			this.httpClient = httpClient;
			this.updateProcess = updateProcess;
			this.installationTimerIntervalInSeconds = installationTimerIntervalInSeconds;
			this.installNewPackageIntervalInSeconds = installNewPackageIntervalInSeconds;
			this.lastCheckForUpdateInstalling = DateTime.Now.ToUnixTimeStamp();
			this.StartUpdateInstalledTimer();
		}

		public bool UpdateToNewPackageIfValid()
		{
			if (!Updater.CheckForDownloadedUpdatePackage())
			{
				return false;
			}
			using (new FileStream(Updater.UpdatePackagePath, FileMode.OpenOrCreate, FileAccess.Read, FileShare.Read))
			{
				if (Updater.IsUpdatePackageAuthentic())
				{
					if (Process.GetProcessesByName("Avira.WebAppHost").Length != 0)
					{
						this.WaitForGuiToClose();
					}
					return Updater.RunUpdatePackage(this.updateProcess);
				}
			}
			Log.Error(string.Format("Update package is not authentic. Sha1 Hash: {0}", FileSystem.GetSha1Hash(Updater.UpdatePackagePath)));
			Updater.CleanupPreviousPackages();
			return false;
		}

		public void DownloadIfNewPackageAvailable()
		{
			if (!this.CheckForNewUpdate())
			{
				return;
			}
			Updater.CleanupPreviousPackages();
			string downloadUri = this.updateInfo.DownloadUri;
			Log.Information(string.Format("Downloading update package: {0}", downloadUri));
			this.httpClient.DownloadFileAsync(downloadUri, Path.Combine(Path.GetTempPath(), Updater.TempUpdateFile), new AsyncCompletedEventHandler(this.DownloadCompletedEventHandler));
		}

		private static bool IsUpdatePackageAuthentic()
		{
			return new AuthenticodeVerifier().VerifyAviraSignature(Updater.UpdatePackagePath);
		}

		internal static void CleanupPreviousPackages()
		{
			if (File.Exists(Updater.UpdatePackagePath))
			{
				File.Delete(Updater.UpdatePackagePath);
			}
			if (File.Exists(Updater.TempUpdateFile))
			{
				File.Delete(Updater.TempUpdateFile);
			}
		}

		private static bool RunUpdatePackage(IProcess updateProcess)
		{
			Log.Information("Updating to package: " + Updater.UpdatePackagePath);
			IEventTracker expr_19 = VpnMixpanelEventTracker.Instance;
			if (expr_19 != null)
			{
				expr_19.TrackEventSync(VpnEventTrackingNames.UpdateStarted, null);
			}
			MixPanelProfileUpdater.ResetLastSentProfileDate();
			bool result;
			try
			{
				ProcessStartInfo startInfo = new ProcessStartInfo
				{
					FileName = Updater.UpdatePackagePath,
					Arguments = ProductSettings.GetUpdaterArguments(Settings.Default.IsBeta),
					UseShellExecute = false,
					CreateNoWindow = true
				};
				updateProcess.StartInfo = startInfo;
				updateProcess.Start();
				Log.Debug("Update process started successfully.");
				result = true;
			}
			catch (Exception ex)
			{
				Log.Error("Failed to start process.", ex);
				result = false;
			}
			return result;
		}

		private static bool IsDownloadedPackageAlreadyInstalled()
		{
			Version version = new Version(FileVersionInfo.GetVersionInfo(Updater.UpdatePackagePath).ProductVersion);
			if (new Version(version.Major, version.Minor, version.Build, 0) > ProductSettings.ProductVersion)
			{
				return false;
			}
			Log.Information(string.Format("Package already installed {0}. Removing setup package.", Updater.UpdatePackagePath));
			Updater.TryDeleteUpdatePackage();
			return true;
		}

		private static void TryDeleteUpdatePackage()
		{
			Func<Task> arg_1F_0;
			if ((arg_1F_0 = Updater.<>c.<>9__33_0) == null)
			{
				arg_1F_0 = (Updater.<>c.<>9__33_0 = new Func<Task>(Updater.<>c.<>9.<TryDeleteUpdatePackage>b__33_0));
			}
			Task.Run(arg_1F_0);
		}

		private static bool CheckForDownloadedUpdatePackage()
		{
			Log.Debug("Checking for available update package.");
			return File.Exists(Updater.UpdatePackagePath) && !Updater.IsDownloadedPackageAlreadyInstalled();
		}

		private void WaitForGuiToClose()
		{
			EventHandler<EventArgs> expr_06 = this.PrepareForUpdate;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new EventArgs());
		}

		private void StartUpdateInstalledTimer()
		{
			this.updateInstallerTimer = new Timer(delegate(object s)
			{
				this.UpdateInstallerTimerCallback();
			}, null, this.installationTimerIntervalInSeconds * 1000L, this.installationTimerIntervalInSeconds * 1000L);
		}

		private void UpdateInstallerTimerCallback()
		{
			if (this.installerLock)
			{
				return;
			}
			this.installerLock = true;
			try
			{
				long num = DateTime.Now.ToUnixTimeStamp();
				if (this.lastCheckForUpdateInstalling + this.installNewPackageIntervalInSeconds <= num)
				{
					if (!Updater.CheckForDownloadedUpdatePackage())
					{
						Log.Debug("No update package available.");
						this.lastCheckForUpdateInstalling = num;
					}
					else if (DiContainer.Resolve<IOpenVpn>() != null && DiContainer.Resolve<IOpenVpn>().ConnectionState != ConnectionState.Disconnected)
					{
						Log.Debug("Vpn is connected. Update not possible.");
					}
					else
					{
						int length = ProductSettings.WebAppHostExe.IndexOf(".exe", StringComparison.Ordinal);
						if (Process.GetProcessesByName(ProductSettings.WebAppHostExe.Substring(0, length)).Length != 0)
						{
							Task<bool> expr_9C = this.QueryForUpdateAndWait(2000);
							expr_9C.Wait();
							if (expr_9C.Result)
							{
								Log.Debug("GUI is running and visible. Can't run the update.");
								return;
							}
							ProductSettings.StartGuiAfterUpdate = true;
						}
						this.UpdateToNewPackageIfValid();
						this.lastCheckForUpdateInstalling = num;
					}
				}
			}
			catch (Exception arg)
			{
				Log.Error(string.Format("Exception when checking for a newly update package. {0}", arg));
			}
			finally
			{
				this.installerLock = false;
			}
		}

		internal async Task<bool> QueryForUpdateAndWait(int timeout)
		{
			this.DefereUpdate = false;
			EventHandler<EventArgs> expr_21 = this.QueryForUpdate;
			if (expr_21 != null)
			{
				expr_21(this, new EventArgs());
			}
			await Task.Delay(timeout);
			return this.DefereUpdate;
		}

		private bool CheckForNewUpdate()
		{
			string jsonResponse = this.QueryUpdateServer();
			return this.IsUpdateAvailableOnServer(jsonResponse);
		}

		private bool IsUpdateAvailableOnServer(string jsonResponse)
		{
			try
			{
				this.updateInfo = JsonConvert.DeserializeObject<Updater.UpdateBridgeResponse>(jsonResponse);
				if (this.updateInfo.Error == null)
				{
					Log.Information("Update package available.");
					return true;
				}
				if (this.updateInfo.Error.Code == -32001)
				{
					Log.Information("No update package available.");
				}
				else
				{
					Log.Error(string.Format("Update Error: {0} Code: {1}", this.updateInfo.Error.Message, this.updateInfo.Error.Code));
				}
			}
			catch (Exception ex)
			{
				Log.Error("Error on deserializing server response", ex);
			}
			return false;
		}

		private string QueryUpdateServer()
		{
			string text = File.Exists(Updater.UpdatePackagePath) ? FileVersionInfo.GetVersionInfo(Updater.UpdatePackagePath).ProductVersion : ProductSettings.ProductVersion.ToString();
			Log.Information(string.Format("Checking for new update package. Current local or downloaded Version: {0}", text));
			Updater.UpdateBridgeRequest value = new Updater.UpdateBridgeRequest
			{
				Method = "getUpdateUrl",
				ApiVersion = 1,
				Params = new Updater.UpdateBridgeRequest.ProductInfo
				{
					ProductId = ProductSettings.ProductId,
					ProductVersion = text,
					ProductLanguage = ProductSettings.ProductLanguage,
					LicenseNumber = (Settings.Default.IsBeta ? "vpnbeta" : string.Empty),
					OsVersion = Environment.OSVersion.Version.ToString()
				}
			};
			return this.httpClient.Post(JsonConvert.SerializeObject(value));
		}

		private void DownloadCompletedEventHandler(object sender, AsyncCompletedEventArgs completeEvent)
		{
			if (completeEvent.Cancelled || completeEvent.Error != null)
			{
				Log.Error((completeEvent.Error != null) ? string.Format("Failed to download the update: Cancelled: {0} Error: {1}", completeEvent.Cancelled, completeEvent.Error.Message) : "Download was canceled.");
				return;
			}
			Action arg_64_0;
			if ((arg_64_0 = Updater.<>c.<>9__42_0) == null)
			{
				arg_64_0 = (Updater.<>c.<>9__42_0 = new Action(Updater.<>c.<>9.<DownloadCompletedEventHandler>b__42_0));
			}
			Catch.All(arg_64_0);
			Log.Information("Download update completed. File: {0}", new object[]
			{
				Updater.UpdatePackagePath
			});
		}

		public void Dispose()
		{
			if (this.updateInstallerTimer != null)
			{
				this.updateInstallerTimer.Dispose();
			}
		}
	}
}

using Avira.VPN.Core;
using Avira.VpnService.Properties;
using System;

namespace Avira.VpnService
{
	public class VpnHttpClient : HttpClient
	{
		public VpnHttpClient(IAuthenticator authentification) : base(new Uri(Settings.Default.VpnBackendUrl), authentification)
		{
		}
	}
}

using Avira.Core;
using Avira.Mixpanel;
using Avira.VPN.Core;
using Avira.VPN.Notifier;
using Avira.VPN.NotifierClient;
using Avira.VpnService.Properties;
using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace Avira.VpnService
{
	public sealed class VpnNotifier : IDisposable, IVpnNotifier
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly VpnNotifier.<>c <>9 = new VpnNotifier.<>c();

			public static Action <>9__18_1;

			public static Action <>9__20_1;

			public static Action <>9__26_1;

			internal void <get_OpenGuiAction>b__18_1()
			{
				DesktopShell.ShellExecute(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, ProductSettings.WebAppHostExe), null, null, "open", 0);
			}

			internal void <get_LearnMoreAction>b__20_1()
			{
				DesktopShell.ShellExecute(VpnNotifier.LearnMoreLandingPageUrl, null, null, "open", 0);
			}

			internal void <get_UnblockTrafficAction>b__26_1()
			{
				NetworkBlocker.Disable();
			}
		}

		private static readonly string LearnMoreLandingPageUrl = string.Format("http://www.avira.com/{0}/vpn-ftu", ProductSettings.ProductLanguage);

		private IVpnService vpnService;

		private IVpnProvider vpnProvider;

		private IWifiNetworkManager unsecureWifiMonitor;

		private NotifierClient notifierClient = new NotifierClient();

		private string FeedbackUrl
		{
			get
			{
				return string.Concat(new string[]
				{
					string.Format("https://www.avira.com/vpn-feedback/?DeviceID={0}", GeneratedDeviceInfo.GetId()),
					string.Format("&ProductID={0}", ProductSettings.ProductId),
					string.Format("&ProductVersion={0}", ProductSettings.ProductVersion),
					string.Format("&ProductLanguage={0}", ProductSettings.ProductLanguage),
					"&PlatformType=Windows",
					string.Format("&PlatformVersion={0}", WindowsInfo.VersionNumber()),
					string.Format("&BundleID={0}", Settings.Default.InstallationBundleId)
				});
			}
		}

		public Notification.Command ConnectVpnAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "ConnectVpn",
					Run = delegate(string a, string n)
					{
						this.Trigger(n, delegate
						{
							this.vpnProvider.ConnectToLastSelectedRegion(false);
						});
					},
					Text = ResourcesVpnService.SecureMyConnection
				};
			}
		}

		public Notification.Command ActivateAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "ActivateVpn",
					Run = delegate(string a, string n)
					{
						this.Trigger(n, delegate
						{
							this.unsecureWifiMonitor.UntrustConnectedWifiNetwork();
							this.vpnProvider.ConnectToLastSelectedRegion(false);
						});
					},
					Text = ResourcesVpnService.Activate
				};
			}
		}

		public Notification.Command UntrustWifiAndConnectVpnAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "UntrustWifiAndConnectVpn",
					Run = delegate(string a, string n)
					{
						this.Trigger(n, delegate
						{
							this.unsecureWifiMonitor.UntrustConnectedWifiNetwork();
							this.vpnProvider.ConnectToLastSelectedRegion(false);
						});
					},
					Text = ResourcesVpnService.SecureMyConnection
				};
			}
		}

		public Notification.Command TrustWifiAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "TrustWifi",
					Text = ResourcesVpnService.TrustWifiNetwork,
					Run = delegate(string a, string n)
					{
						this.Trigger(n, new Action(this.unsecureWifiMonitor.TrustConnectedWifiNetwork));
					}
				};
			}
		}

		public Notification.Command OpenGuiAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "OpenGui",
					Text = ResourcesVpnService.OpenVpnAction,
					Run = delegate(string a, string n)
					{
						Action arg_21_2;
						if ((arg_21_2 = VpnNotifier.<>c.<>9__18_1) == null)
						{
							arg_21_2 = (VpnNotifier.<>c.<>9__18_1 = new Action(VpnNotifier.<>c.<>9.<get_OpenGuiAction>b__18_1));
						}
						this.Trigger(n, arg_21_2);
					}
				};
			}
		}

		public Notification.Command LearnMoreAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "LearnMore",
					Text = ResourcesVpnService.LearnMore,
					Run = delegate(string a, string n)
					{
						Action arg_21_2;
						if ((arg_21_2 = VpnNotifier.<>c.<>9__20_1) == null)
						{
							arg_21_2 = (VpnNotifier.<>c.<>9__20_1 = new Action(VpnNotifier.<>c.<>9.<get_LearnMoreAction>b__20_1));
						}
						this.Trigger(n, arg_21_2);
					}
				};
			}
		}

		private Notification.Command UpgradeAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "Upgrade",
					Text = ResourcesVpnService.Buy,
					Run = delegate(string a, string n)
					{
						this.Trigger(n, new Action(this.vpnService.HandleUpgrade));
					}
				};
			}
		}

		private Notification.Command ReconnectVpnAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "ReconnectVpn",
					Run = delegate(string a, string n)
					{
						this.Trigger(n, delegate
						{
							this.vpnProvider.ConnectToLastSelectedRegion(false);
						});
					},
					Text = ResourcesVpnService.Reconnect
				};
			}
		}

		private Notification.Command UnblockTrafficAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "UnblockTraffic",
					Text = ResourcesVpnService.UnblockTraffic,
					Run = delegate(string a, string n)
					{
						Action arg_21_2;
						if ((arg_21_2 = VpnNotifier.<>c.<>9__26_1) == null)
						{
							arg_21_2 = (VpnNotifier.<>c.<>9__26_1 = new Action(VpnNotifier.<>c.<>9.<get_UnblockTrafficAction>b__26_1));
						}
						this.Trigger(n, arg_21_2);
					}
				};
			}
		}

		private Notification.Command NotNow
		{
			get
			{
				return new Notification.Command
				{
					Id = "NotNow",
					Text = ResourcesVpnService.NotNow,
					Run = delegate(string a, string n)
					{
						this.Trigger(n, null);
					}
				};
			}
		}

		private Notification.Command SendFeedbackAction
		{
			get
			{
				return new Notification.Command
				{
					Id = "SendFeedback",
					Text = ResourcesVpnService.FeedbackAction,
					Run = delegate(string a, string n)
					{
						this.Trigger(n, delegate
						{
							DesktopShell.ShellExecute(this.FeedbackUrl, null, null, "open", 0);
						});
					}
				};
			}
		}

		public VpnNotifier(IVpnService vpnCommandProvider, IWifiNetworkManager unsecureWifiMonitor, IVpnProvider vpnProvider) : this(vpnCommandProvider, unsecureWifiMonitor, vpnProvider, DiContainer.Resolve<License>())
		{
		}

		public VpnNotifier(IVpnService vpnCommandProvider, IWifiNetworkManager unsecureWifiMonitor, IVpnProvider vpnProvider, License license)
		{
			this.vpnService = vpnCommandProvider;
			this.vpnProvider = vpnProvider;
			this.unsecureWifiMonitor = unsecureWifiMonitor;
			ProductSettings.ProductVersionChanged += new EventHandler<ProductSettings.ProductVersionChangedEventArgs>(this.ProductVersionChanged);
			if (license != null)
			{
				license.LicenseChanged += new EventHandler<LicenseTypeEventArgs>(this.LicenseChanged);
			}
		}

		private static void TrackNotificationEvent(string eventName, string propertyName, string notificationId)
		{
			if (string.IsNullOrEmpty(notificationId) || string.IsNullOrEmpty(eventName))
			{
				return;
			}
			IEventTracker expr_16 = VpnMixpanelEventTracker.Instance;
			if (expr_16 == null)
			{
				return;
			}
			expr_16.TrackEventAsync(eventName, new Dictionary<string, object>
			{
				{
					propertyName,
					notificationId
				}
			});
		}

		public void NotifyUpdate()
		{
			Notification notification = new Notification
			{
				Id = "Update",
				Title = ResourcesVpnService.Congratulations,
				Message = ResourcesVpnService.UpdateMessage,
				Hint = ResourcesVpnService.UpdateHint,
				TemplateName = "TemplateVpnMessagWithCaption",
				Action1 = this.OpenGuiAction
			};
			this.Notify(notification);
		}

		public void NotifyUpgrade()
		{
			Notification notification = new Notification
			{
				Id = "Upgrade",
				Title = ResourcesVpnService.Congratulations,
				Message = ResourcesVpnService.UpgradeMessage,
				Hint = ResourcesVpnService.UpgradeHint,
				TemplateName = "TemplateVpnMessagWithCaption",
				Action1 = this.OpenGuiAction
			};
			this.Notify(notification);
		}

		public void NotifyFeedback()
		{
			Notification notification = new Notification
			{
				Id = "GiveFeedback",
				Icon = Notification.IconType.Feedback,
				Message = ResourcesVpnService.FeedbackMessage + "<br/>" + ResourcesVpnService.FeedbackHint,
				Hint = ResourcesVpnService.FeedbackHint,
				TemplateName = "TemplateVPnMessage",
				Action1 = this.SendFeedbackAction,
				Action2 = this.NotNow
			};
			this.Notify(notification);
			ProductSettings.FeedbackNotificationCount++;
		}

		public void NotifyConnectedToUnsecureWifi()
		{
			Notification notification = new Notification
			{
				Id = "UnsecureWifi",
				Position = Notification.PositionType.CenterScreen,
				Message = ResourcesVpnService.ConnectedToUnknownWifiNetworkStatus,
				Hint = ResourcesVpnService.ConnectedToUnsecureWifiNetworkAdvice,
				TemplateName = "TemplateVpn2",
				Action1 = this.ActivateAction,
				Action2 = this.TrustWifiAction
			};
			this.Notify(notification);
		}

		public void NotifyInactivity()
		{
			Notification notification = new Notification
			{
				Id = "Inactivity",
				Message = ResourcesVpnService.UserInactivityMessage,
				TemplateName = "TemplateVPnMessage",
				Action1 = this.ConnectVpnAction,
				Action2 = this.LearnMoreAction
			};
			this.Notify(notification);
		}

		public void NotifyLearnMore(EducationMessage message)
		{
			Notification notification = new Notification
			{
				Id = "Inactivity",
				TemplateName = "TemplateEducationMessage",
				Title = message.Title,
				Title2 = message.Title2,
				Message = message.Message,
				Question = message.Question,
				Hint = message.Hint,
				Image = message.Image,
				Position = Notification.PositionType.CenterScreen,
				Timeout = 0,
				Action1 = this.CreateLearnMoreWithText(message.Button, message.Url)
			};
			this.Notify(notification);
		}

		private Notification.Command CreateLearnMoreWithText(string text, string url)
		{
			Action <>9__1;
			return new Notification.Command
			{
				Id = "LearnMore",
				Text = text,
				Run = delegate(string a, string n)
				{
					VpnNotifier arg_26_0 = this;
					Action arg_26_2;
					if ((arg_26_2 = <>9__1) == null)
					{
						arg_26_2 = (<>9__1 = delegate
						{
							DesktopShell.ShellExecute(url, null, null, "open", 0);
						});
					}
					arg_26_0.Trigger(n, arg_26_2);
				}
			};
		}

		public void NotifyKillSwitchActivated()
		{
			Notification notification = new Notification
			{
				Id = "KillSwitch",
				Message = ResourcesVpnService.KillSwitchMessage,
				TemplateName = "TemplateWarningNoHint",
				Action1 = this.ReconnectVpnAction,
				Action2 = this.UnblockTrafficAction,
				Timeout = 0
			};
			this.Notify(notification);
		}

		public void NotifyWelcome()
		{
			Notification notification = new Notification
			{
				Id = "Welcome",
				Message = ResourcesVpnService.WelcomeMessage,
				TemplateName = "TemplateVPnMessage",
				Action1 = this.ConnectVpnAction,
				Action2 = this.LearnMoreAction
			};
			this.Notify(notification);
		}

		public void NotifyConnectedToUnkownWifi()
		{
			Notification notification = new Notification
			{
				Id = "UnkownWifi",
				Position = Notification.PositionType.CenterScreen,
				Message = ResourcesVpnService.ConnectedToUnknownWifiNetworkStatus,
				Hint = ResourcesVpnService.ConnectedToUnsecureWifiNetworkAdvice,
				TemplateName = "TemplateVpn2",
				Action1 = this.ActivateAction,
				Action2 = this.TrustWifiAction
			};
			this.Notify(notification);
		}

		public void NotifyTrafficLimitReached(string message)
		{
			Notification notification = new Notification
			{
				Id = "TrafficLimitReached",
				Message = message,
				TemplateName = "TemplateVPnMessage",
				Action1 = this.UpgradeAction,
				Action2 = this.LearnMoreAction,
				OnlyIfNoForegroundUiWindow = true
			};
			this.Notify(notification);
		}

		public void NotifyTrafficThreshHoldsReached(Tuple<string, string> message)
		{
			Notification notification = new Notification
			{
				Id = message.Item2,
				Message = message.Item1,
				TemplateName = "TemplateVPnMessage",
				Action1 = this.UpgradeAction,
				Action2 = this.NotNow,
				OnlyIfNoForegroundUiWindow = true
			};
			this.Notify(notification);
		}

		public void Notify(Notification notification)
		{
			Log.Information(string.Format("Showing notification: {0}", notification.Id));
			VpnNotifier.TrackNotificationEvent(VpnEventTrackingNames.Notification, VpnEventTrackingNames.NotificationIdProperty, notification.Id);
			this.notifierClient.Notify(notification);
		}

		private void Trigger(string notificationId, Action action)
		{
			Log.Information(string.Format("Executing notification action: {0}", notificationId));
			VpnNotifier.TrackNotificationEvent(VpnEventTrackingNames.NotificationAction, VpnEventTrackingNames.ActionIdProperty, notificationId);
			if (action != null)
			{
				action();
			}
		}

		public void Dispose()
		{
			this.notifierClient.Dispose();
		}

		public bool ShouldShowFeedbackNotification(ulong usedInBytes)
		{
			return ProductSettings.FeedbackNotificationCount <= 0 && usedInBytes > 31457280uL;
		}

		private void ProductVersionChanged(object sender, ProductSettings.ProductVersionChangedEventArgs e)
		{
			if (e.PreviousVersion < new Version(1, 9, 0, 0))
			{
				Task.Run(delegate
				{
					Task.Delay(1000);
					this.NotifyUpdate();
				});
			}
		}

		private void LicenseChanged(object sender, LicenseTypeEventArgs e)
		{
			if (e.LicenseType == LicenseType.Pro)
			{
				Task.Run(delegate
				{
					Task.Delay(500);
					this.NotifyUpgrade();
				});
			}
		}
	}
}

using Avira.Core;
using Avira.Messaging;
using Avira.Mixpanel;
using Avira.Vpn.Core;
using Avira.VPN.Core;
using Avira.VpnService.Properties;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using NLog;
using NLog.Targets;
using NLog.Targets.Wrappers;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.IO.Pipes;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Security.AccessControl;
using System.Security.Principal;
using System.ServiceProcess;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;

namespace Avira.VpnService
{
	public class VpnService : ServiceBase, IVpnService, IVpnProvider
	{
		public class DisconnectTimerEventArgs : EventArgs
		{
			[JsonProperty(PropertyName = "RemainingSeconds")]
			public int RemainingSeconds
			{
				get;
				set;
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly VpnService.<>c <>9 = new VpnService.<>c();

			public static Func<KnownWifis.WiFiData, bool> <>9__76_0;

			public static Func<KnownWifis.WiFiData, <>f__AnonymousType2<string, string, bool, bool>> <>9__76_3;

			public static Predicate<<>f__AnonymousType2<string, string, bool, bool>> <>9__76_4;

			public static Func<object> <>9__91_0;

			public static Func<object> <>9__91_1;

			public static Func<object> <>9__91_2;

			public static Func<object> <>9__91_3;

			public static Func<string> <>9__91_4;

			internal bool <GetCurrentWifiList>b__76_0(KnownWifis.WiFiData item)
			{
				return item.TrustMode > TrustMode.Unknown;
			}

			internal <>f__AnonymousType2<string, string, bool, bool> <GetCurrentWifiList>b__76_3(KnownWifis.WiFiData item)
			{
				return new
				{
					Id = item.Id,
					Ssid = item.Ssid,
					Autoconnect = false,
					Connected = true
				};
			}

			internal bool <GetCurrentWifiList>b__76_4(<>f__AnonymousType2<string, string, bool, bool> item)
			{
				return item.Connected;
			}

			internal object <CreateAndRegisterDiObjects>b__91_0()
			{
				return Settings.Default.OeApi;
			}

			internal object <CreateAndRegisterDiObjects>b__91_1()
			{
				return Settings.Default.AuthentificationServerUrl;
			}

			internal object <CreateAndRegisterDiObjects>b__91_2()
			{
				return ResourcesVpnService.ResourceManager;
			}

			internal object <CreateAndRegisterDiObjects>b__91_3()
			{
				return ResourcesVpnService.Culture;
			}

			internal string <CreateAndRegisterDiObjects>b__91_4()
			{
				return GeneratedDeviceInfo.GetId();
			}
		}

		private readonly MixPanelProfileUpdater mixPanelProfileUpdater = MixPanelProfileUpdater.Instance;

		private readonly VpnUpdater updater = new VpnUpdater();

		private readonly UserActivityMonitor userActivityMonitor = new UserActivityMonitor(Settings.Default.InactivityThreshold, Settings.Default.PopupTimeout);

		private readonly ReflectionService reflectionService;

		private VpnNotifier vpnNotifier;

		private bool isLogoffDone = true;

		private License license;

		private OpenVpn openVpn;

		private Regions regions;

		private RemoteFeature remoteFeature;

		private Traffic traffic;

		private PipeCommunicatorServer communciatorServer;

		private Router router;

		private IStatusReporter statusReporter;

		private ILauncherGuiController launcherGuiController;

		private EducationMessageRotator educationMessageRotator;

		private System.Timers.Timer disconnectTimer;

		private ConnectionState openVpnConnectionState = ConnectionState.Unknown;

		private ReflectionService updaterService;

		private WifiNetworkManager unsecureWifiNetworkMonitor;

		private IAuthenticator auth2;

		private VpnHttpClient httpClient;

		private RegionsLatency latencyProber = new RegionsLatency();

		private WifiManager wifiManager;

		private bool disconnectWasRequested;

		private bool traffic50PercentReachedNotification;

		private bool traffic80PercentReachedNotification;

		private bool traffic90PercentReachedNotification;

		private IContainer components;

		[Routing("traffic/get", true)]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<TrafficData>> TrafficChanged;

		[Routing("disconnectTimer")]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<VpnService.DisconnectTimerEventArgs> OnDisconnectTimerChanged;

		[Routing("trafficLimitReached")]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs> OnTrafficLimitReached;

		[Routing("killSwitchActivated")]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs> KillSwitchActivated;

		[Routing("users/currentUser/license", true)]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<LicenseData>> LicenseChanged;

		[Routing("regions/get", true)]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<RegionList>> RegionsChanged;

		[Routing("status", true)]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<Status>> StatusChanged;

		[Routing("showNotification")]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<JObject>> ShowNotification;

		[Routing("wifis/get", true)]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<JToken>> WifiListChanged;

		[Routing("appSettings")]
		public AppSettingsData GuiSettings
		{
			get
			{
				return AppSettings.Get();
			}
			set
			{
				AppSettings.Set(value);
			}
		}

		[Routing("features")]
		public Features Features
		{
			get
			{
				return new Features(this.remoteFeature);
			}
		}

		[Routing("productInfo")]
		public JObject ProductInfo
		{
			get
			{
				return new JObject
				{
					{
						"DeviceId",
						GeneratedDeviceInfo.GetId()
					},
					{
						"ProductID",
						ProductSettings.ProductId
					},
					{
						"ProductVersion",
						ProductSettings.ProductVersion.ToString()
					},
					{
						"ProductLanguage",
						ProductSettings.ProductLanguage
					},
					{
						"PlatformType",
						"Windows"
					},
					{
						"PlatformVersion",
						WindowsInfo.VersionNumber().ToString()
					},
					{
						"BundleID",
						Settings.Default.InstallationBundleId
					}
				};
			}
		}

		public RemoteConnectionSettings ConnectedRegion
		{
			get
			{
				return VpnService.GetSelectedRegion(this.regions.RegionList);
			}
		}

		public ConnectionState ConnectionState
		{
			get
			{
				return this.openVpn.ConnectionState;
			}
		}

		public VpnService()
		{
			this.InitializeComponent();
			base.CanHandlePowerEvent = true;
			base.CanHandleSessionChangeEvent = true;
			this.reflectionService = new ReflectionService(this);
		}

		[Routing("exit")]
		public void HandleExitRequest()
		{
			this.DisconnectOpenVpn();
			this.updater.UpdateProduct();
		}

		[Routing("resetUserConfig")]
		public void ResetUserConfig()
		{
			Settings.Default.Reset();
			this.license.Refresh();
		}

		[Routing("regions/get")]
		public RegionList GetRegionList()
		{
			return this.regions.RegionList;
		}

		[Routing("users/currentUser/license")]
		public LicenseData HandleUserLicenseRequest()
		{
			return this.license.LicenseData;
		}

		[Routing("disconnect")]
		public void Disconnect()
		{
			this.DisconnectOpenVpn();
			if (this.vpnNotifier.ShouldShowFeedbackNotification(this.traffic.UsedInBytes))
			{
				Task.Run(delegate
				{
					await Task.Delay(30000);
					this.vpnNotifier.NotifyFeedback();
				});
			}
		}

		[Routing("status")]
		public Status HandleStatus()
		{
			return this.openVpn.Status;
		}

		[Routing("disconnect")]
		public void HandleCloseClicked()
		{
			if (this.openVpnConnectionState != ConnectionState.Disconnected)
			{
				return;
			}
			ProductSettings.StartGuiAfterUpdate = true;
			this.updater.UpdateProduct();
		}

		[Routing("license/update")]
		public void HandleUpdateLicense()
		{
			Log.Information("Updating license...");
			this.license.Refresh();
		}

		[Routing("traffic/get")]
		public TrafficData GetCurrentTrafficInfo()
		{
			return new TrafficData
			{
				UsedInBytes = this.traffic.UsedInBytes,
				LimitInBytes = this.license.Limit,
				GracePeriodInSeconds = this.license.GracePeriod
			};
		}

		[Routing("wifis/get")]
		public JToken GetCurrentWifiList()
		{
			if (this.unsecureWifiNetworkMonitor == null)
			{
				return new JArray();
			}
			string connectedId = this.unsecureWifiNetworkMonitor.ConnectedWifi;
			new JObject();
			IEnumerable<KnownWifis.WiFiData> arg_55_0 = this.unsecureWifiNetworkMonitor.Wifis;
			Func<KnownWifis.WiFiData, bool> arg_55_1;
			if ((arg_55_1 = VpnService.<>c.<>9__76_0) == null)
			{
				arg_55_1 = (VpnService.<>c.<>9__76_0 = new Func<KnownWifis.WiFiData, bool>(VpnService.<>c.<>9.<GetCurrentWifiList>b__76_0));
			}
			var list = (from item in arg_55_0.Where(arg_55_1)
			select new
			{
				Id = item.Id,
				Ssid = item.Ssid,
				Autoconnect = (item.TrustMode == TrustMode.Untrusted),
				Connected = (!string.IsNullOrEmpty(connectedId) && item.Id == connectedId)
			}).ToList();
			if (!string.IsNullOrEmpty(connectedId))
			{
				IEnumerable<KnownWifis.WiFiData> arg_B9_0 = from item in this.unsecureWifiNetworkMonitor.Wifis
				where item.TrustMode == TrustMode.Unknown && item.Id == connectedId
				select item;
				var arg_B9_1;
				if ((arg_B9_1 = VpnService.<>c.<>9__76_3) == null)
				{
					arg_B9_1 = (VpnService.<>c.<>9__76_3 = new Func<KnownWifis.WiFiData, <>f__AnonymousType2<string, string, bool, bool>>(VpnService.<>c.<>9.<GetCurrentWifiList>b__76_3));
				}
				var list2 = arg_B9_0.Select(arg_B9_1).ToList();
				if (list2.Count > 0)
				{
					list.Add(list2[0]);
				}
			}
			var arg_FA_0 = list;
			var arg_FA_1;
			if ((arg_FA_1 = VpnService.<>c.<>9__76_4) == null)
			{
				arg_FA_1 = (VpnService.<>c.<>9__76_4 = new Predicate<<>f__AnonymousType2<string, string, bool, bool>>(VpnService.<>c.<>9.<GetCurrentWifiList>b__76_4));
			}
			int num = arg_FA_0.FindIndex(arg_FA_1);
			if (num != -1)
			{
				var item2 = list[num];
				list.RemoveAt(num);
				list.Insert(0, item2);
			}
			return JToken.FromObject(list);
		}

		[Routing("trackEvent")]
		public void TrackEvent(string eventId)
		{
			IEventTracker expr_05 = VpnMixpanelEventTracker.Instance;
			if (expr_05 == null)
			{
				return;
			}
			expr_05.TrackEventAsync(eventId, null);
		}

		[Routing("wifis/trust")]
		public void TrustWifi(string id)
		{
			this.unsecureWifiNetworkMonitor.TrustById(id);
			IEventTracker expr_11 = VpnMixpanelEventTracker.Instance;
			if (expr_11 == null)
			{
				return;
			}
			expr_11.TrackEventAsync(VpnEventTrackingNames.WifiAutoconnectSettingsChanged, null);
		}

		[Routing("wifis/untrust")]
		public void UntrustWifi(string id)
		{
			this.unsecureWifiNetworkMonitor.UntrustById(id);
			IEventTracker expr_11 = VpnMixpanelEventTracker.Instance;
			if (expr_11 == null)
			{
				return;
			}
			expr_11.TrackEventAsync(VpnEventTrackingNames.WifiAutoconnectSettingsChanged, null);
		}

		[Routing("wifis/delete")]
		public void DeleteWifi(string id)
		{
			this.unsecureWifiNetworkMonitor.DeleteById(id);
			IEventTracker expr_11 = VpnMixpanelEventTracker.Instance;
			if (expr_11 == null)
			{
				return;
			}
			expr_11.TrackEventAsync(VpnEventTrackingNames.WifiAutoconnectSettingsChanged, null);
		}

		[Routing("connect")]
		public void Connect(RemoteConnectionSettings region)
		{
			ProductSettings.LastConnect = DateTime.UtcNow;
			ThreadPool.QueueUserWorkItem(delegate(object o)
			{
				this.traffic.Refresh();
			});
			if (!this.TrafficLimitReached())
			{
				RemoteConnectionSettings remoteConnectionSettings = this.DecideConnectionProtocol(region);
				remoteConnectionSettings = this.DecideConnectionUri(remoteConnectionSettings);
				this.openVpn.Connect(remoteConnectionSettings, this.wifiManager != null && this.wifiManager.IsWifiAutoconnected);
				return;
			}
			this.DisconnectOpenVpn();
			EventHandler<EventArgs> expr_30 = this.OnTrafficLimitReached;
			if (expr_30 == null)
			{
				return;
			}
			expr_30(this, new EventArgs());
		}

		private RemoteConnectionSettings DecideConnectionUri(RemoteConnectionSettings connectionRegion)
		{
			connectionRegion.Uri = this.regions.RegionList.GetDefault().Uri;
			foreach (RemoteConnectionSettings current in this.regions.RegionList.ServersConnectionSettings)
			{
				if (connectionRegion.Id == current.Id)
				{
					connectionRegion.Uri = current.Uri;
					break;
				}
			}
			return connectionRegion;
		}

		[Routing("registerUser")]
		public void RegisterUser()
		{
			this.GetLauncherDashboardAccessor().Register();
			IEventTracker expr_10 = VpnMixpanelEventTracker.Instance;
			if (expr_10 == null)
			{
				return;
			}
			expr_10.TrackEventAsync(VpnEventTrackingNames.RegistrationClicked, null);
		}

		[Routing("learnMore")]
		public void LearnMore()
		{
			EducationMessageRotator expr_06 = this.educationMessageRotator;
			if (expr_06 != null)
			{
				expr_06.Show();
			}
			IEventTracker expr_16 = VpnMixpanelEventTracker.Instance;
			if (expr_16 == null)
			{
				return;
			}
			expr_16.TrackEventAsync(VpnEventTrackingNames.EducationMessageClicked, null);
		}

		[Routing("upgrade")]
		public void Upgrade()
		{
			this.HandleUpgrade();
			IEventTracker expr_0B = VpnMixpanelEventTracker.Instance;
			if (expr_0B == null)
			{
				return;
			}
			expr_0B.TrackEventAsync(VpnEventTrackingNames.UpgradeClicked, null);
		}

		[Routing("openDashboard")]
		public void OpenDashboard()
		{
			this.GetLauncherDashboardAccessor().OpenDashboard();
			IEventTracker expr_10 = VpnMixpanelEventTracker.Instance;
			if (expr_10 == null)
			{
				return;
			}
			expr_10.TrackEventAsync(VpnEventTrackingNames.OpenDashboardClicked, null);
		}

		private static void SignalServiceStart()
		{
			SharedStartEvent sharedStartEvent = new SharedStartEvent();
			if (sharedStartEvent.Exists())
			{
				Log.Information("Avira.Webapphost is running. Signaling event for reconnection.");
				sharedStartEvent.Signal();
			}
		}

		protected override void OnStart(string[] args)
		{
			Log.Information("{0} started. Version: {1}", new object[]
			{
				base.ServiceName,
				FileSystem.GetVersion(base.GetType().Assembly.Location)
			});
			Catch.All(new Action(this.AdjustLogFileSecurity));
			SettingsMigrator.MigrateSettings();
			if (ProductSettings.InstallDate == DateTime.MinValue)
			{
				ProductSettings.InstallDate = File.GetCreationTimeUtc(ProductSettings.SettingsFilePath);
			}
			Log.Information("{0} Install Date : {1}", new object[]
			{
				base.ServiceName,
				ProductSettings.InstallDate
			});
			SentryLogTarget.Enabled = ProductSettings.ProductImprovement;
			if (this.updater.UpdateProduct())
			{
				return;
			}
			this.updater.StartCheckingForUpdates();
			ThreadPool.QueueUserWorkItem(delegate(object o)
			{
				this.Start();
			});
			Log.Debug("VpnService - exiting OnStart()");
		}

		private void AdjustLogFileSecurity()
		{
			FileTarget fileTarget = (FileTarget)((AsyncTargetWrapper)LogManager.Configuration.FindTargetByName("VpnLogDebug")).WrappedTarget;
			if (fileTarget == null)
			{
				Log.Error("AdjustLogFileSecurity: could not find target VpnLogDebug.");
				return;
			}
			LogEventInfo logEvent = new LogEventInfo
			{
				TimeStamp = DateTime.Now
			};
			string path = fileTarget.FileName.Render(logEvent);
			if (!File.Exists(path))
			{
				return;
			}
			FileSecurity accessControl = File.GetAccessControl(path);
			if (accessControl.GetAccessRules(true, false, typeof(SecurityIdentifier)).Count > 0)
			{
				return;
			}
			FileSystemAccessRule rule = new FileSystemAccessRule(new SecurityIdentifier(WellKnownSidType.AuthenticatedUserSid, null), FileSystemRights.Write, AccessControlType.Allow);
			accessControl.AddAccessRule(rule);
			File.SetAccessControl(path, accessControl);
		}

		protected override void OnStop()
		{
			Log.Debug("Stopping VPN service ...");
			ILauncherGuiController expr_10 = this.launcherGuiController;
			if (expr_10 != null)
			{
				expr_10.Stop();
			}
			this.DisconnectOpenVpn();
			PipeCommunicatorServer expr_27 = this.communciatorServer;
			if (expr_27 != null)
			{
				expr_27.Dispose();
			}
			DiContainer.Clear();
			License expr_3D = this.license;
			if (expr_3D != null)
			{
				expr_3D.Dispose();
			}
			Regions expr_4E = this.regions;
			if (expr_4E != null)
			{
				expr_4E.Dispose();
			}
			VpnUpdater expr_5F = this.updater;
			if (expr_5F != null)
			{
				expr_5F.Dispose();
			}
			UserActivityMonitor expr_70 = this.userActivityMonitor;
			if (expr_70 != null)
			{
				expr_70.Dispose();
			}
			MixPanelProfileUpdater expr_81 = this.mixPanelProfileUpdater;
			if (expr_81 != null)
			{
				expr_81.Dispose();
			}
			Log.Debug("VpnSerivce - exiting OnStop()");
		}

		private void CreateAndRegisterDiObjects()
		{
			this.InitWifiMonitor();
			this.vpnNotifier = new VpnNotifier(this, this.unsecureWifiNetworkMonitor, this);
			if (Settings.Default.EducationMessageActive)
			{
				this.educationMessageRotator = new EducationMessageRotator(this.vpnNotifier);
			}
			if (this.unsecureWifiNetworkMonitor != null)
			{
				this.wifiManager = new WifiManager(this, this.unsecureWifiNetworkMonitor, this.vpnNotifier);
				this.unsecureWifiNetworkMonitor.WifiListChanged += new EventHandler(this.TriggerWifiListChanged);
				this.unsecureWifiNetworkMonitor.WifiNetworkDisconnected += new EventHandler<EventArgs<KnownWifis.WiFiData>>(this.TriggerWifiListChanged);
				this.unsecureWifiNetworkMonitor.WifiNetworkConnected += new EventHandler<EventArgs<KnownWifis.WiFiData>>(this.TriggerWifiListChanged);
			}
			string arg_BF_0 = "OeApiUrl";
			Func<object> arg_BF_1;
			if ((arg_BF_1 = VpnService.<>c.<>9__91_0) == null)
			{
				arg_BF_1 = (VpnService.<>c.<>9__91_0 = new Func<object>(VpnService.<>c.<>9.<CreateAndRegisterDiObjects>b__91_0));
			}
			DiContainer.SetGetter(arg_BF_0, arg_BF_1);
			string arg_E8_0 = "AuthentificationServerUrl";
			Func<object> arg_E8_1;
			if ((arg_E8_1 = VpnService.<>c.<>9__91_1) == null)
			{
				arg_E8_1 = (VpnService.<>c.<>9__91_1 = new Func<object>(VpnService.<>c.<>9.<CreateAndRegisterDiObjects>b__91_1));
			}
			DiContainer.SetGetter(arg_E8_0, arg_E8_1);
			string arg_111_0 = "ResourceManager";
			Func<object> arg_111_1;
			if ((arg_111_1 = VpnService.<>c.<>9__91_2) == null)
			{
				arg_111_1 = (VpnService.<>c.<>9__91_2 = new Func<object>(VpnService.<>c.<>9.<CreateAndRegisterDiObjects>b__91_2));
			}
			DiContainer.SetGetter(arg_111_0, arg_111_1);
			string arg_13A_0 = "Culture";
			Func<object> arg_13A_1;
			if ((arg_13A_1 = VpnService.<>c.<>9__91_3) == null)
			{
				arg_13A_1 = (VpnService.<>c.<>9__91_3 = new Func<object>(VpnService.<>c.<>9.<CreateAndRegisterDiObjects>b__91_3));
			}
			DiContainer.SetGetter(arg_13A_0, arg_13A_1);
			DiContainer.ExportedTypes expr_162 = DiContainer.GetExportedTypes(Assembly.LoadFile(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, Settings.Default.UserManagementAsembly)));
			DiContainer.Register<IAuthenticator>(expr_162, CreationMode.Singleton);
			DiContainer.Register<IStatusReporter>(expr_162, CreationMode.Singleton);
			DiContainer.Register<IDashboardAccessor>(expr_162, CreationMode.Multiple);
			DiContainer.Register<ILauncherGuiController>(expr_162, CreationMode.Singleton);
			DiContainer.Register<IUserManagementController>(expr_162, CreationMode.Singleton);
			this.auth2 = DiContainer.Resolve<IAuthenticator>();
			this.httpClient = new VpnHttpClient(this.auth2);
			this.license = new License(this.httpClient, GeneratedDeviceInfo.GetId(), Settings.Default.LicenseRefreshIntervalInSeconds * 1000L);
			DiContainer.SetInstance<License>(this.license);
			this.traffic = new Traffic(this.httpClient, GeneratedDeviceInfo.GetId());
			this.regions = new Regions(this.httpClient);
			this.remoteFeature = new RemoteFeature(this.httpClient);
			DiContainer.SetInstance<Regions>(this.regions);
			DiContainer.SetInstance<IStatusProvider>(new StatusProvider());
			DiContainer.SetInstance<RemoteFeature>(this.remoteFeature);
			this.statusReporter = DiContainer.Resolve<IStatusReporter>();
			this.statusReporter.Start(15000);
			OpenVpn expr_24B = new OpenVpn();
			Credentials expr_251 = new Credentials();
			Func<string> arg_271_1;
			if ((arg_271_1 = VpnService.<>c.<>9__91_4) == null)
			{
				arg_271_1 = (VpnService.<>c.<>9__91_4 = new Func<string>(VpnService.<>c.<>9.<CreateAndRegisterDiObjects>b__91_4));
			}
			expr_251.UserId = arg_271_1;
			expr_251.Password = delegate
			{
				if (!string.IsNullOrEmpty(this.auth2.AccessToken))
				{
					return this.auth2.AccessToken;
				}
				return GeneratedDeviceInfo.GetId();
			};
			expr_24B.Credentials = expr_251;
			this.openVpn = expr_24B;
			DiContainer.SetInstance<IOpenVpn>(this.openVpn);
			DiContainer.SetInstance<IVpnProvider>(this);
			this.launcherGuiController = DiContainer.Resolve<ILauncherGuiController>();
		}

		private void VpnService_UserProfileChanged(object sender, EventArgs<JObject> e)
		{
			Log.Debug("User name changed");
		}

		public void Start()
		{
			this.CleanupEnvironment();
			this.CreateAndRegisterDiObjects();
			this.license.Refresh();
			this.auth2.AccessTokenChanged += delegate(object sender, EventArgs args)
			{
				this.license.Refresh();
			};
			this.traffic.TrafficChanged += new EventHandler<TrafficChangedEventArgs>(this.OnTrafficChanged);
			this.license.LicenseChanged += new EventHandler<LicenseTypeEventArgs>(this.CurrentUserOnLicenseChanged);
			this.regions.RegionsListUpdated += delegate(object sender, EventArgs args)
			{
				EventHandler<EventArgs<RegionList>> expr_06 = this.RegionsChanged;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(sender, new EventArgs<RegionList>(this.GetRegionList()));
			};
			this.openVpn.StateChangedNotification += delegate(object sender, Status status)
			{
				Log.Debug(string.Format("[!] VpnService: {0}, {1}, {2}", status.NewState.ToString(), status.Error, status.Message));
				EventHandler<EventArgs<Status>> expr_3A = this.StatusChanged;
				if (expr_3A != null)
				{
					expr_3A(sender, new EventArgs<Status>(status));
				}
				WifiManager expr_52 = this.wifiManager;
				if (!string.IsNullOrEmpty((expr_52 != null) ? expr_52.AutoconnectSsid : null) && status.NewState == ConnectionState.Connected)
				{
					JObject expr_79 = new JObject();
					expr_79["message"] = string.Format(ResourcesVpnService.WifiAutoConnect, this.wifiManager.AutoconnectSsid);
					expr_79["type"] = "info";
					expr_79["timeout"] = 5000;
					expr_79["action"] = "register";
					JObject value = expr_79;
					EventHandler<EventArgs<JObject>> expr_E4 = this.ShowNotification;
					if (expr_E4 == null)
					{
						return;
					}
					expr_E4(this, new EventArgs<JObject>(value));
				}
			};
			this.openVpn.StateChangedNotification += new EventHandler<Status>(this.OpenVpnOnStateChangedNotification);
			this.openVpn.TrafficChanged += new EventHandler<TrafficChangedEventArgs>(this.traffic.OnTrafficChanged);
			this.StartCommunicatorServer();
			ThreadPool.QueueUserWorkItem(delegate(object o)
			{
				this.traffic.Refresh();
			});
			VpnService.SignalServiceStart();
			if (ProductSettings.StartGuiAfterUpdate)
			{
				DesktopShell.ShellExecute(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, ProductSettings.WebAppHostExe), " /hide", AppDomain.CurrentDomain.BaseDirectory, "open", 0);
				ProductSettings.StartGuiAfterUpdate = false;
			}
			this.InitUserActivityMonitor();
			this.KillSwitchActivated += delegate(object s, EventArgs a)
			{
				this.vpnNotifier.NotifyKillSwitchActivated();
			};
			ILauncherGuiController expr_133 = this.launcherGuiController;
			if (expr_133 != null)
			{
				expr_133.Initialize();
			}
			ProductSettings.CheckForVersionUpdate();
		}

		private void TriggerWifiListChanged(object sender, EventArgs args)
		{
			EventHandler<EventArgs<JToken>> expr_06 = this.WifiListChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new EventArgs<JToken>(this.GetCurrentWifiList()));
		}

		private void CleanupEnvironment()
		{
			if (!ProductSettings.KillSwitch)
			{
				NetworkBlocker.Disable();
			}
			new AbandonedProcess(FileSystem.MakeFullPath(ProductSettings.OpenVpnPath)).SoftCleanRunningInstances();
		}

		private void StartCommunicatorServer()
		{
			PipeSecurity pipeSecurity = new PipeSecurity();
			pipeSecurity.AddAccessRule(new PipeAccessRule(WindowsIdentity.GetCurrent().User, PipeAccessRights.FullControl, AccessControlType.Allow));
			pipeSecurity.AddAccessRule(new PipeAccessRule(new SecurityIdentifier(WellKnownSidType.AuthenticatedUserSid, null), PipeAccessRights.ReadWrite, AccessControlType.Allow));
			this.communciatorServer = new PipeCommunicatorServer(ProductSettings.VpnPipeName, pipeSecurity);
			if (!Settings.Default.DisablePipeAccessAuthorization)
			{
				this.communciatorServer.AuthorizationChecker = new PipeAuthorizationChecker();
			}
			this.communciatorServer.Start();
			this.router = new Router(new Multiplexer(this.communciatorServer));
			this.router.AddAllRoutes(this.reflectionService);
			this.updaterService = new ReflectionService(this.updater);
			this.router.AddAllRoutes(this.updaterService);
			this.router.AddAllRoutes(new ReflectionService(this.latencyProber));
			IUserManagementController userManagementController = DiContainer.Resolve<IUserManagementController>();
			if (userManagementController != null)
			{
				this.router.AddAllRoutes(new ReflectionService(userManagementController));
				userManagementController.RunAfterTrialActivation = delegate
				{
					this.license.Refresh();
				};
			}
		}

		private void InitUserActivityMonitor()
		{
			try
			{
				if (this.license.LicenseType != LicenseType.Pro)
				{
					this.userActivityMonitor.Inactive += delegate(object s, EventArgs a)
					{
						DesktopShell.ShellExecute(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, ProductSettings.WebAppHostExe), " /hide", AppDomain.CurrentDomain.BaseDirectory, "open", 0);
						Thread.Sleep(1000);
						JObject expr_3D = new JObject();
						string arg_5A_1 = "message";
						EducationMessageRotator expr_49 = this.educationMessageRotator;
						expr_3D[arg_5A_1] = ((expr_49 != null) ? expr_49.GetBaloonText() : null);
						expr_3D["type"] = "info";
						expr_3D["timeout"] = 5000;
						expr_3D["action"] = "learn";
						JObject value = expr_3D;
						EventHandler<EventArgs<JObject>> expr_A5 = this.ShowNotification;
						if (expr_A5 == null)
						{
							return;
						}
						expr_A5(this, new EventArgs<JObject>(value));
					};
				}
				this.userActivityMonitor.Installed += delegate(object s, EventArgs a)
				{
					this.NotifyWelcome();
				};
				this.userActivityMonitor.OnStart();
			}
			catch (Exception arg)
			{
				Log.Warning(string.Format("Failed to initialize user activity monitor. {0}", arg));
			}
		}

		private void NotifyWelcome()
		{
			if (Settings.Default.InstallationBundleId.StartsWith("avpn") || Settings.Default.InstallationBundleId.StartsWith("avpp"))
			{
				this.vpnNotifier.NotifyWelcome();
			}
		}

		private void NotifyTrafficLimitReached()
		{
			if (this.openVpn.Status.NewState == ConnectionState.Disconnected)
			{
				return;
			}
			string message = string.Format(ResourcesVpnService.TrafficLimitReached, (this.license.GracePeriod == 0) ? 60 : this.license.GracePeriod);
			this.vpnNotifier.NotifyTrafficLimitReached(message);
		}

		public void ConnectToLastSelectedRegion(bool startMinimized = false)
		{
			Regions expr_06 = this.regions;
			if (((expr_06 != null) ? expr_06.RegionList : null) == null)
			{
				Log.Error("Couldn't connect the VPN. There are no connection regions.");
				return;
			}
			DesktopShell.ShellExecute(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, ProductSettings.WebAppHostExe), startMinimized ? "/hide" : string.Empty, AppDomain.CurrentDomain.BaseDirectory, "open", 0);
			RemoteConnectionSettings selectedRegion = VpnService.GetSelectedRegion(this.regions.RegionList);
			Log.Information(string.Format("Connecting to Last Selected Region: {0}", selectedRegion));
			this.Connect(selectedRegion);
		}

		internal static RemoteConnectionSettings GetSelectedRegion(RegionList regionList)
		{
			VpnService.<>c__DisplayClass101_0 <>c__DisplayClass101_ = new VpnService.<>c__DisplayClass101_0();
			<>c__DisplayClass101_.selectedRegion = regionList.DefaultRegion;
			try
			{
				Dictionary<string, object> dictionary = JsonConvert.DeserializeObject<Dictionary<string, object>>(ProductSettings.UiSettings);
				object expr_28 = dictionary["selectedRegion"];
				if (!string.IsNullOrEmpty((expr_28 != null) ? expr_28.ToString() : null))
				{
					VpnService.<>c__DisplayClass101_0 arg_53_0 = <>c__DisplayClass101_;
					object expr_47 = dictionary["selectedRegion"];
					arg_53_0.selectedRegion = ((expr_47 != null) ? expr_47.ToString() : null);
				}
			}
			catch (Exception arg)
			{
				Log.Warning(string.Format("GetSelectedRegion failed. {0}", arg));
			}
			return new RemoteConnectionSettings(regionList.ServersConnectionSettings.FirstOrDefault((RemoteConnectionSettings r) => r.Id.Equals(<>c__DisplayClass101_.selectedRegion)));
		}

		private void CurrentUserOnLicenseChanged(object sender, LicenseTypeEventArgs args)
		{
			Log.Information("-----CurrentUserOnLicenseChanged : " + args.LicenseType);
			this.StopDisconnectTimer();
			this.traffic.Refresh();
			EventHandler<EventArgs<LicenseData>> expr_31 = this.LicenseChanged;
			if (expr_31 == null)
			{
				return;
			}
			expr_31(sender, new EventArgs<LicenseData>(this.license.LicenseData));
		}

		private void OnTrafficChanged(object sender, TrafficChangedEventArgs trafficChangedEventArgs)
		{
			TrafficData currentTrafficInfo = this.GetCurrentTrafficInfo();
			EventHandler<EventArgs<TrafficData>> expr_0D = this.TrafficChanged;
			if (expr_0D != null)
			{
				expr_0D(this, new EventArgs<TrafficData>(currentTrafficInfo));
			}
			this.NotifyUserIfTrafficThreshHoldsReached(currentTrafficInfo);
			if (this.disconnectTimer != null)
			{
				return;
			}
			if (this.TrafficLimitReached())
			{
				this.HandleTrafficLimitReached();
			}
		}

		private void NotifyUserIfTrafficThreshHoldsReached(TrafficData trafficData)
		{
			if (this.openVpn.Status.NewState == ConnectionState.Disconnected)
			{
				return;
			}
			Tuple<string, string> tuple = this.TrafficThreshHoldReached(trafficData);
			if (string.IsNullOrEmpty(tuple.Item1))
			{
				return;
			}
			this.vpnNotifier.NotifyTrafficThreshHoldsReached(tuple);
		}

		private Tuple<string, string> TrafficThreshHoldReached(TrafficData trafficData)
		{
			ulong num = trafficData.LimitInBytes / 2uL;
			if (trafficData.UsedInBytes <= num || trafficData.LimitInBytes == 0uL || trafficData.UsedInBytes >= trafficData.LimitInBytes)
			{
				return new Tuple<string, string>(string.Empty, string.Empty);
			}
			double num2 = trafficData.UsedInBytes * 100.0 / trafficData.LimitInBytes;
			if (num2 >= 90.0)
			{
				if (this.traffic90PercentReachedNotification)
				{
					return new Tuple<string, string>(string.Empty, string.Empty);
				}
				this.traffic90PercentReachedNotification = true;
				return new Tuple<string, string>(string.Format(ResourcesVpnService.TrafficXPercentReached, 90), "Traffic90PercentReached");
			}
			else if (num2 >= 80.0)
			{
				if (this.traffic80PercentReachedNotification)
				{
					return new Tuple<string, string>(string.Empty, string.Empty);
				}
				this.traffic80PercentReachedNotification = true;
				return new Tuple<string, string>(string.Format(ResourcesVpnService.TrafficXPercentReached, 80), "Traffic80PercentReached");
			}
			else
			{
				if (num2 < 50.0)
				{
					return new Tuple<string, string>(string.Empty, string.Empty);
				}
				if (this.traffic50PercentReachedNotification)
				{
					return new Tuple<string, string>(string.Empty, string.Empty);
				}
				this.traffic50PercentReachedNotification = true;
				return new Tuple<string, string>(string.Format(ResourcesVpnService.TrafficXPercentReached, 50), "Traffic50PercentReached");
			}
		}

		private void HandleTrafficLimitReached()
		{
			EventHandler<EventArgs> expr_06 = this.OnTrafficLimitReached;
			if (expr_06 != null)
			{
				expr_06(this, new EventArgs());
			}
			this.NotifyTrafficLimitReached();
			IEventTracker expr_22 = VpnMixpanelEventTracker.Instance;
			if (expr_22 != null)
			{
				expr_22.TrackEventAsync(VpnEventTrackingNames.TrafficLimitReached, new Dictionary<string, object>
				{
					{
						"License Limit In Bytes",
						this.license.Limit
					},
					{
						"Used Traffic In Bytes",
						this.traffic.UsedInBytes
					}
				});
			}
			this.StartDisconnectTimer((this.license.GracePeriod == 0) ? 60 : this.license.GracePeriod);
		}

		protected override void OnSessionChange(SessionChangeDescription changeDescription)
		{
			Log.Debug(string.Format("=> Session changed for {0} ({1})", changeDescription.SessionId, changeDescription.Reason.ToString()));
			SessionChangeReason reason = changeDescription.Reason;
			if (reason != SessionChangeReason.ConsoleConnect)
			{
				if (reason == SessionChangeReason.SessionLogon)
				{
					this.isLogoffDone = false;
					this.TriggerUIWithDelay(3000);
					return;
				}
				if (reason != SessionChangeReason.SessionLogoff)
				{
					return;
				}
				this.isLogoffDone = true;
			}
			else if (!this.isLogoffDone)
			{
				this.TriggerUIWithDelay(3000);
				return;
			}
		}

		private void TriggerUIWithDelay(int milliseconds)
		{
			Task.Run(delegate
			{
				await Task.Delay(milliseconds);
				if (this.openVpn.ConnectionState != ConnectionState.Disconnected)
				{
					DesktopShell.ShellExecute(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, ProductSettings.WebAppHostExe), string.Empty, AppDomain.CurrentDomain.BaseDirectory, "open", 0);
				}
			});
		}

		private void InitWifiMonitor()
		{
			try
			{
				this.unsecureWifiNetworkMonitor = new WifiNetworkManager();
			}
			catch (Exception ex2)
			{
				Win32Exception ex = ex2 as Win32Exception;
				if (ex != null && ex.NativeErrorCode == 1062)
				{
					Log.Information("WLAN AutoConfig service is not started. WiFiMonitor will be disabled");
				}
				else
				{
					Log.Warning(string.Format("Failed to initialize Wifi Monitor. {0}", ex2));
				}
			}
		}

		private void StartDisconnectTimer(int delayTimeUntilDisconnection)
		{
			if (this.openVpnConnectionState != ConnectionState.Connected)
			{
				return;
			}
			if (Interlocked.CompareExchange<System.Timers.Timer>(ref this.disconnectTimer, new System.Timers.Timer(TimeSpan.FromSeconds(1.0).TotalMilliseconds), null) != null)
			{
				return;
			}
			this.disconnectTimer.Elapsed += delegate(object sender, ElapsedEventArgs args)
			{
				EventHandler<VpnService.DisconnectTimerEventArgs> expr_0B = this.OnDisconnectTimerChanged;
				if (expr_0B != null)
				{
					expr_0B(this, new VpnService.DisconnectTimerEventArgs
					{
						RemainingSeconds = delayTimeUntilDisconnection
					});
				}
				Interlocked.Decrement(ref delayTimeUntilDisconnection);
				if (delayTimeUntilDisconnection >= 0)
				{
					return;
				}
				this.StopDisconnectTimer();
				this.DisconnectOpenVpn();
			};
			this.disconnectTimer.Start();
		}

		private void StopDisconnectTimer()
		{
			System.Timers.Timer expr_06 = this.disconnectTimer;
			if (expr_06 != null)
			{
				expr_06.Stop();
			}
			this.disconnectTimer = null;
		}

		private void OpenVpnOnStateChangedNotification(object sender, Status status)
		{
			if (status.NewState == ConnectionState.Connected)
			{
				bool enableNetworkBlockerOnConnect = Settings.Default.EnableNetworkBlockerOnConnect;
				if (ProductSettings.KillSwitch | enableNetworkBlockerOnConnect)
				{
					NetworkBlocker.Enable();
				}
			}
			if (status.NewState == ConnectionState.Disconnected)
			{
				if (this.disconnectWasRequested || !ProductSettings.KillSwitch)
				{
					NetworkBlocker.Disable();
				}
				this.disconnectWasRequested = false;
				if (NetworkBlocker.Enabled)
				{
					EventHandler<EventArgs> expr_54 = this.KillSwitchActivated;
					if (expr_54 != null)
					{
						expr_54(this, EventArgs.Empty);
					}
				}
			}
			this.openVpnConnectionState = status.NewState;
			if (status.NewState == ConnectionState.Disconnected && (status.Error == ErrorType.NetworkError || status.Error == ErrorType.DnsError || status.Error == ErrorType.ServerError))
			{
				ThreadPool.QueueUserWorkItem(delegate(object o)
				{
					this.regions.ForceUpdateRegions();
				});
			}
		}

		private bool TrafficLimitReached()
		{
			ulong limit = this.license.Limit;
			return limit != 0uL && this.traffic.UsedInBytes > limit;
		}

		public void HandleUpgrade()
		{
			this.GetLauncherDashboardAccessor().Upgrade();
			this.license.StartLicensePolling();
		}

		private bool IsUdpAvailable()
		{
			bool result;
			try
			{
				using (UdpChecker udpChecker = new UdpChecker(Settings.Default.UdpEchoServerUrl))
				{
					result = udpChecker.IsUdpAvailable();
				}
			}
			catch (Exception)
			{
				result = false;
			}
			return result;
		}

		private RemoteConnectionSettings DecideConnectionProtocol(RemoteConnectionSettings region)
		{
			if (AppSettings.Get().UdpSupport && this.IsUdpAvailable())
			{
				region.Protocol = "udp";
				region.Port = 1194;
				region.TlsHadshakeWindow = 10;
				region.FallbackProtocol = "tcp";
				region.FallbackPort = 443;
			}
			else
			{
				region.Protocol = "tcp";
				region.Port = 443;
				region.TlsHadshakeWindow = 60;
				region.FallbackProtocol = null;
				region.FallbackPort = 0;
			}
			return region;
		}

		private IDashboardAccessor GetLauncherDashboardAccessor()
		{
			return DiContainer.Resolve<IDashboardAccessor>();
		}

		protected override bool OnPowerEvent(PowerBroadcastStatus powerStatus)
		{
			if (powerStatus == PowerBroadcastStatus.ResumeSuspend)
			{
				this.userActivityMonitor.OnStart();
				ThreadPool.QueueUserWorkItem(delegate(object ob)
				{
					Thread.Sleep(4000);
					this.traffic.Refresh();
				});
			}
			return base.OnPowerEvent(powerStatus);
		}

		private void DisconnectOpenVpn()
		{
			this.StopDisconnectTimer();
			this.disconnectWasRequested = true;
			OpenVpn expr_13 = this.openVpn;
			if (expr_13 != null)
			{
				expr_13.Disconnect();
			}
			if (this.traffic != null)
			{
				ProductSettings.UsedTraffic = (long)this.traffic.UsedInBytes;
			}
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				if (this.components != null)
				{
					this.components.Dispose();
				}
				if (this.statusReporter != null)
				{
					this.statusReporter.Dispose();
				}
				if (this.openVpn != null)
				{
					this.openVpn.Dispose();
				}
				if (this.communciatorServer != null)
				{
					this.communciatorServer.Dispose();
				}
				if (this.regions != null)
				{
					this.regions.Dispose();
				}
				if (this.license != null)
				{
					this.license.Dispose();
				}
				if (this.mixPanelProfileUpdater != null)
				{
					this.mixPanelProfileUpdater.Dispose();
				}
				if (this.updater != null)
				{
					this.updater.Dispose();
				}
				if (this.unsecureWifiNetworkMonitor != null)
				{
					this.unsecureWifiNetworkMonitor.Dispose();
				}
				if (this.userActivityMonitor != null)
				{
					this.userActivityMonitor.Dispose();
				}
				if (this.vpnNotifier != null)
				{
					this.vpnNotifier.Dispose();
				}
			}
			base.Dispose(disposing);
		}

		private void InitializeComponent()
		{
			this.components = new Container();
			base.ServiceName = ProductSettings.ProductName;
		}
	}
}

using Avira.Core;
using Avira.Messaging;
using Avira.VPN.Core;
using Avira.VpnService.Properties;
using System;
using System.Runtime.CompilerServices;
using System.Threading;

namespace Avira.VpnService
{
	public sealed class VpnUpdater : IDisposable
	{
		private readonly Updater updater = new Updater();

		private Timer updateTimer;

		[Routing("queryForUpdate")]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs> QueryForUpdate;

		[Routing("prepareForUpdate")]
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs> PrepareForUpdate;

		public VpnUpdater()
		{
			this.updater.QueryForUpdate += delegate(object sender, EventArgs args)
			{
				EventHandler<EventArgs> expr_06 = this.QueryForUpdate;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, args);
			};
			this.updater.PrepareForUpdate += delegate(object sender, EventArgs args)
			{
				EventHandler<EventArgs> expr_06 = this.PrepareForUpdate;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, args);
			};
		}

		[Routing("updater/defereUpdate")]
		public void HandleDefereUpdate()
		{
			this.updater.DefereUpdate = true;
		}

		public void StartCheckingForUpdates()
		{
			long num = VpnUpdater.UpdateCheckAlreadyDone() ? Settings.Default.UpdateTimersIntervalInSeconds : ((long)Settings.Default.InitialUpdateCheckInSeconds);
			Log.Information(string.Format("Checking for new updates in {0} seconds.", num));
			this.updateTimer = new Timer(this.CheckForNewUpdates(), null, num * 1000L, Settings.Default.UpdateTimersIntervalInSeconds * 1000L);
		}

		public bool UpdateProduct()
		{
			bool result;
			try
			{
				result = this.updater.UpdateToNewPackageIfValid();
			}
			catch (Exception ex)
			{
				Log.Error("Failed to update to new package.", ex);
				result = false;
			}
			return result;
		}

		internal static bool UpdateCheckAlreadyDone()
		{
			if (ProductSettings.LastUpdateCheck == default(DateTime))
			{
				return false;
			}
			TimeSpan timeSpan = DateTime.Now - ProductSettings.LastUpdateCheck;
			Log.Debug(string.Format("UpdateCheck time diff: {0}", timeSpan));
			return timeSpan.TotalSeconds < (double)Settings.Default.UpdateCheckIntervalInSeconds;
		}

		private TimerCallback CheckForNewUpdates()
		{
			return delegate(object state)
			{
				try
				{
					DateTime now = DateTime.Now;
					if (ProductSettings.LastUpdateCheck.ToUnixTimeStamp() + (long)Settings.Default.UpdateCheckIntervalInSeconds > now.ToUnixTimeStamp())
					{
						Log.Debug("Update check interval not reached.");
						return;
					}
					this.updater.DownloadIfNewPackageAvailable();
					ProductSettings.LastUpdateCheck = now;
				}
				catch (Exception ex)
				{
					Log.Error("Checking for updates failed.", ex);
				}
			};
		}

		public void Dispose()
		{
			if (this.updateTimer != null)
			{
				this.updateTimer.Dispose();
			}
			if (this.updater != null)
			{
				this.updater.Dispose();
			}
		}
	}
}

using Avira.Core;
using Avira.Core.Networking;
using Avira.Messaging;
using Avira.Mixpanel;
using Avira.VPN.Core;
using System;

namespace Avira.VpnService
{
	public class WifiManager
	{
		private IVpnProvider vpn;

		private IWifiNetworkManager wifiNetworkManager;

		private IVpnNotifier vpnNotifier;

		private string AutoconnectId
		{
			get;
			set;
		}

		public string AutoconnectSsid
		{
			get;
			private set;
		}

		public bool IsWifiAutoconnected
		{
			get;
			private set;
		}

		public WifiManager(IVpnProvider vpn, IWifiNetworkManager wifiNetworkManager, IVpnNotifier vpnNotifier)
		{
			this.vpn = vpn;
			this.wifiNetworkManager = wifiNetworkManager;
			this.vpnNotifier = vpnNotifier;
			this.IsWifiAutoconnected = false;
			this.wifiNetworkManager.WifiNetworkConnected += new EventHandler<EventArgs<KnownWifis.WiFiData>>(this.ConnectedToWifi);
			this.wifiNetworkManager.WifiNetworkDisconnected += delegate(object s, EventArgs<KnownWifis.WiFiData> a)
			{
				if (a.Value == null)
				{
					return;
				}
				if (this.AutoconnectId == a.Value.Id)
				{
					Log.Debug(string.Format("WifiManager.OnWifiNetworkDisconnected: requested disconnect for {0} {1}", a.Value.Ssid, a.Value.Id));
					this.IsWifiAutoconnected = false;
					this.vpn.Disconnect();
				}
				this.AutoconnectId = string.Empty;
				this.AutoconnectSsid = string.Empty;
			};
			this.vpn.StatusChanged += delegate(object s, EventArgs<Status> e)
			{
				if (e.Value.NewState == ConnectionState.Disconnected)
				{
					this.AutoconnectId = string.Empty;
					this.AutoconnectSsid = string.Empty;
				}
			};
		}

		internal void ConnectedToWifi(object sender, EventArgs<KnownWifis.WiFiData> eventArgs)
		{
			Log.Information("Connected to a unknown WiFi network.");
			this.AutoconnectId = string.Empty;
			this.AutoconnectSsid = string.Empty;
			KnownWifis.WiFiData value = eventArgs.Value;
			if (value != null && value.TrustMode == TrustMode.Trusted)
			{
				return;
			}
			if (value != null && value.TrustMode == TrustMode.Untrusted)
			{
				Log.Debug(string.Format("WifiManager.ConnectedToUnkownWifiNetworkHandler: requested connect for {0} {1}", value.Ssid, value.Id));
				this.IsWifiAutoconnected = true;
				this.vpn.ConnectToLastSelectedRegion(false);
				IEventTracker expr_73 = VpnMixpanelEventTracker.Instance;
				if (expr_73 != null)
				{
					expr_73.TrackEventAsync(VpnEventTrackingNames.Autoconnect, null);
				}
				this.AutoconnectId = value.Id;
				this.AutoconnectSsid = value.Ssid;
				return;
			}
			if (eventArgs.Value.SecurityMode == WifiConnectionSecurityMode.Unsecure)
			{
				IVpnNotifier expr_B1 = this.vpnNotifier;
				if (expr_B1 == null)
				{
					return;
				}
				expr_B1.NotifyConnectedToUnsecureWifi();
				return;
			}
			else
			{
				IVpnNotifier expr_C2 = this.vpnNotifier;
				if (expr_C2 == null)
				{
					return;
				}
				expr_C2.NotifyConnectedToUnkownWifi();
				return;
			}
		}
	}
}

using Avira.Core;
using Avira.Core.Networking;
using Avira.Messaging;
using Avira.Mixpanel;
using Avira.VPN.Core;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;

namespace Avira.VpnService
{
	public sealed class WifiNetworkManager : IDisposable, IWifiNetworkManager
	{
		internal static class NativeMethods
		{
			[DllImport("iphlpapi.dll", SetLastError = true)]
			public static extern int GetBestInterface(uint DestAddr, out uint BestIfIndex);
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly WifiNetworkManager.<>c <>9 = new WifiNetworkManager.<>c();

			public static Func<NetworkInterface, bool> <>9__44_0;

			public static Func<NetworkInterface, <>f__AnonymousType0<NetworkInterface, IPv4InterfaceProperties>> <>9__44_1;

			public static Func<<>f__AnonymousType0<NetworkInterface, IPv4InterfaceProperties>, NetworkInterface> <>9__44_3;

			public static Func<NetworkInterface, bool> <>9__44_4;

			public static Func<NetworkInterface, <>f__AnonymousType1<NetworkInterface, IPv6InterfaceProperties>> <>9__44_5;

			public static Func<<>f__AnonymousType1<NetworkInterface, IPv6InterfaceProperties>, NetworkInterface> <>9__44_7;

			public static Func<IPAddress, bool> <>9__45_0;

			internal bool <GetNetworkInterfaceByIndex>b__44_0(NetworkInterface thisInterface)
			{
				return thisInterface.Supports(NetworkInterfaceComponent.IPv4);
			}

			internal <>f__AnonymousType0<NetworkInterface, IPv4InterfaceProperties> <GetNetworkInterfaceByIndex>b__44_1(NetworkInterface thisInterface)
			{
				return new
				{
					thisInterface = thisInterface,
					ipv4Properties = thisInterface.GetIPProperties().GetIPv4Properties()
				};
			}

			internal NetworkInterface <GetNetworkInterfaceByIndex>b__44_3(<>f__AnonymousType0<NetworkInterface, IPv4InterfaceProperties> <>h__TransparentIdentifier0)
			{
				return <>h__TransparentIdentifier0.thisInterface;
			}

			internal bool <GetNetworkInterfaceByIndex>b__44_4(NetworkInterface thisInterface)
			{
				return thisInterface.Supports(NetworkInterfaceComponent.IPv6);
			}

			internal <>f__AnonymousType1<NetworkInterface, IPv6InterfaceProperties> <GetNetworkInterfaceByIndex>b__44_5(NetworkInterface thisInterface)
			{
				return new
				{
					thisInterface = thisInterface,
					ipv6Properties = thisInterface.GetIPProperties().GetIPv6Properties()
				};
			}

			internal NetworkInterface <GetNetworkInterfaceByIndex>b__44_7(<>f__AnonymousType1<NetworkInterface, IPv6InterfaceProperties> <>h__TransparentIdentifier0)
			{
				return <>h__TransparentIdentifier0.thisInterface;
			}

			internal bool <IsMainInterfaceWifi>b__45_0(IPAddress thisAddress)
			{
				return thisAddress.AddressFamily == AddressFamily.InterNetwork;
			}
		}

		private readonly IWifiNetworkMonitor wifiNetworkMonitor;

		private readonly IInternetConnectionMonitor internetConnectionMonitor;

		private readonly object internetCheckerLock = new object();

		private readonly IServicePersistentData persistentData;

		private readonly IDnsWrapper dnsWrapper;

		private readonly object mutex = new object();

		private Timer internetCheckTimer;

		private long internetCheckerStartTimeInSec;

		private WifiConnectionEventArgs connectedWifiConnectionArgs;

		private string connectedWifiId = string.Empty;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<KnownWifis.WiFiData>> WifiNetworkConnected;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<KnownWifis.WiFiData>> WifiNetworkDisconnected;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler WifiListChanged;

		internal static long InternetCheckIntervalInMiliseconds
		{
			get;
			set;
		}

		internal static long InternetCheckMaxCheckTimeInMiliseconds
		{
			get;
			set;
		}

		public KnownWifis Wifis
		{
			get
			{
				object obj = this.mutex;
				KnownWifis result;
				lock (obj)
				{
					result = this.ReadKnownWifis();
				}
				return result;
			}
		}

		public string ConnectedWifi
		{
			get
			{
				WifiConnectionEventArgs connectedWifi = this.wifiNetworkMonitor.GetConnectedWifi();
				if (connectedWifi == null || connectedWifi == null || connectedWifi.Status != WifiConnectionStatus.Connected)
				{
					return string.Empty;
				}
				return this.GetId(connectedWifi.Ssid);
			}
		}

		public WifiNetworkManager() : this(new WifiNetworkMonitor(), new InternetConnectionMonitor(), new ServicePersistentData(), new DnsWrapper())
		{
		}

		internal WifiNetworkManager(IWifiNetworkMonitor wifiNetworkMonitor, IInternetConnectionMonitor internetConnectionMonitor, IServicePersistentData persistentData, IDnsWrapper dnsWrapper)
		{
			this.wifiNetworkMonitor = wifiNetworkMonitor;
			this.internetConnectionMonitor = internetConnectionMonitor;
			this.persistentData = persistentData;
			this.dnsWrapper = dnsWrapper;
			WifiConnectionEventArgs connectedWifi = this.wifiNetworkMonitor.GetConnectedWifi();
			if (connectedWifi != null)
			{
				string id = this.GetId(connectedWifi.Ssid);
				this.connectedWifiId = id;
				this.UpdateWifiConnectionTime(id);
			}
			this.wifiNetworkMonitor.StatusChanged += new EventHandler<WifiConnectionEventArgs>(this.WifiNetworkMonitorOnStatusChanged);
		}

		public void TrustById(string id)
		{
			object obj = this.mutex;
			lock (obj)
			{
				KnownWifis knownWifis = this.ReadKnownWifis();
				knownWifis.Trust(id);
				this.WriteKnownWiFis(knownWifis);
			}
		}

		public void DeleteById(string id)
		{
			object obj = this.mutex;
			lock (obj)
			{
				KnownWifis knownWifis = this.ReadKnownWifis();
				int index = knownWifis.FindIndex((KnownWifis.WiFiData item) => item.Id == id);
				knownWifis.RemoveAt(index);
				this.WriteKnownWiFis(knownWifis);
			}
		}

		public void TrustConnectedWifiNetwork()
		{
			WifiConnectionEventArgs expr_06 = this.connectedWifiConnectionArgs;
			if (string.IsNullOrEmpty((expr_06 != null) ? expr_06.Ssid : null))
			{
				return;
			}
			WifiConnectionEventArgs expr_21 = this.connectedWifiConnectionArgs;
			string id = this.GetId((expr_21 != null) ? expr_21.Ssid : null);
			string arg_4B_0 = "Trusting Wifi Network: {0} ({1})";
			WifiConnectionEventArgs expr_3E = this.connectedWifiConnectionArgs;
			Log.Information(string.Format(arg_4B_0, (expr_3E != null) ? expr_3E.Ssid : null, id));
			this.TrustById(id);
		}

		public void UntrustById(string id)
		{
			object obj = this.mutex;
			lock (obj)
			{
				KnownWifis knownWifis = this.ReadKnownWifis();
				knownWifis.Untrust(id);
				this.WriteKnownWiFis(knownWifis);
			}
		}

		public void UntrustConnectedWifiNetwork()
		{
			WifiConnectionEventArgs expr_06 = this.connectedWifiConnectionArgs;
			if (string.IsNullOrEmpty((expr_06 != null) ? expr_06.Ssid : null))
			{
				return;
			}
			WifiConnectionEventArgs expr_21 = this.connectedWifiConnectionArgs;
			string id = this.GetId((expr_21 != null) ? expr_21.Ssid : null);
			string arg_4B_0 = "Untrusting Wifi Network: {0} ({1})";
			WifiConnectionEventArgs expr_3E = this.connectedWifiConnectionArgs;
			Log.Information(string.Format(arg_4B_0, (expr_3E != null) ? expr_3E.Ssid : null, id));
			this.UntrustById(id);
		}

		public bool IsKnownWifi(string id)
		{
			return this.FindWifi(id) != null;
		}

		public KnownWifis.WiFiData FindWifi(string id)
		{
			object obj = this.mutex;
			KnownWifis.WiFiData result;
			lock (obj)
			{
				KnownWifis expr_24 = this.ReadKnownWifis();
				result = ((expr_24 != null) ? expr_24.Find((KnownWifis.WiFiData d) => d.Id == id) : null);
			}
			return result;
		}

		private string GetId(string ssid)
		{
			object obj = this.mutex;
			bool flag = false;
			string id2;
			try
			{
				Monitor.Enter(obj, ref flag);
				string id = this.wifiNetworkMonitor.GetProfileUniqueId(ssid);
				KnownWifis knownWifis = this.ReadKnownWifis();
				if ((string.IsNullOrEmpty(id) ? knownWifis.Find((KnownWifis.WiFiData d) => d.Ssid == ssid) : knownWifis.Find((KnownWifis.WiFiData d) => d.Id == id)) == null)
				{
					KnownWifis.WiFiData wiFiData = knownWifis.Find((KnownWifis.WiFiData d) => d.Ssid == ssid);
					if (wiFiData == null)
					{
						WifiConnectionSecurityMode securityMode = (this.connectedWifiConnectionArgs == null) ? WifiConnectionSecurityMode.Unknown : this.connectedWifiConnectionArgs.SecurityMode;
						wiFiData = new KnownWifis.WiFiData
						{
							Id = id,
							Ssid = ssid,
							SecurityMode = securityMode
						};
						knownWifis.Add(wiFiData);
					}
					else
					{
						wiFiData.Id = id;
					}
					this.WriteKnownWiFis(knownWifis);
				}
				id2 = id;
			}
			finally
			{
				if (flag)
				{
					Monitor.Exit(obj);
				}
			}
			return id2;
		}

		private KnownWifis ReadKnownWifis()
		{
			return this.persistentData.KnownWiFis ?? new KnownWifis();
		}

		private void WriteKnownWiFis(KnownWifis knownWiFis)
		{
			this.persistentData.KnownWiFis = knownWiFis;
			EventHandler expr_12 = this.WifiListChanged;
			if (expr_12 == null)
			{
				return;
			}
			expr_12(this, EventArgs.Empty);
		}

		private bool IsWifiNeworkTrusted(string id)
		{
			KnownWifis.WiFiData wiFiData = this.FindWifi(id);
			return wiFiData != null && wiFiData.TrustMode == TrustMode.Trusted;
		}

		private NetworkInterface GetNetworkInterfaceByIndex(uint index)
		{
			IEnumerable<NetworkInterface> arg_31_0 = NetworkInterface.GetAllNetworkInterfaces();
			Func<NetworkInterface, bool> arg_31_1;
			if ((arg_31_1 = WifiNetworkManager.<>c.<>9__44_0) == null)
			{
				arg_31_1 = (WifiNetworkManager.<>c.<>9__44_0 = new Func<NetworkInterface, bool>(WifiNetworkManager.<>c.<>9.<GetNetworkInterfaceByIndex>b__44_0));
			}
			IEnumerable<NetworkInterface> arg_55_0 = arg_31_0.Where(arg_31_1);
			var arg_55_1;
			if ((arg_55_1 = WifiNetworkManager.<>c.<>9__44_1) == null)
			{
				arg_55_1 = (WifiNetworkManager.<>c.<>9__44_1 = new Func<NetworkInterface, <>f__AnonymousType0<NetworkInterface, IPv4InterfaceProperties>>(WifiNetworkManager.<>c.<>9.<GetNetworkInterfaceByIndex>b__44_1));
			}
			var arg_8A_0 = from <>h__TransparentIdentifier0 in arg_55_0.Select(arg_55_1)
			where <>h__TransparentIdentifier0.ipv4Properties != null && (long)<>h__TransparentIdentifier0.ipv4Properties.Index == (long)((ulong)index)
			select <>h__TransparentIdentifier0;
			var arg_8A_1;
			if ((arg_8A_1 = WifiNetworkManager.<>c.<>9__44_3) == null)
			{
				arg_8A_1 = (WifiNetworkManager.<>c.<>9__44_3 = new Func<<>f__AnonymousType0<NetworkInterface, IPv4InterfaceProperties>, NetworkInterface>(WifiNetworkManager.<>c.<>9.<GetNetworkInterfaceByIndex>b__44_3));
			}
			NetworkInterface networkInterface = arg_8A_0.Select(arg_8A_1).SingleOrDefault<NetworkInterface>();
			if (networkInterface != null)
			{
				return networkInterface;
			}
			IEnumerable<NetworkInterface> arg_BE_0 = NetworkInterface.GetAllNetworkInterfaces();
			Func<NetworkInterface, bool> arg_BE_1;
			if ((arg_BE_1 = WifiNetworkManager.<>c.<>9__44_4) == null)
			{
				arg_BE_1 = (WifiNetworkManager.<>c.<>9__44_4 = new Func<NetworkInterface, bool>(WifiNetworkManager.<>c.<>9.<GetNetworkInterfaceByIndex>b__44_4));
			}
			IEnumerable<NetworkInterface> arg_E2_0 = arg_BE_0.Where(arg_BE_1);
			var arg_E2_1;
			if ((arg_E2_1 = WifiNetworkManager.<>c.<>9__44_5) == null)
			{
				arg_E2_1 = (WifiNetworkManager.<>c.<>9__44_5 = new Func<NetworkInterface, <>f__AnonymousType1<NetworkInterface, IPv6InterfaceProperties>>(WifiNetworkManager.<>c.<>9.<GetNetworkInterfaceByIndex>b__44_5));
			}
			var arg_117_0 = from <>h__TransparentIdentifier0 in arg_E2_0.Select(arg_E2_1)
			where <>h__TransparentIdentifier0.ipv6Properties != null && (long)<>h__TransparentIdentifier0.ipv6Properties.Index == (long)((ulong)index)
			select <>h__TransparentIdentifier0;
			var arg_117_1;
			if ((arg_117_1 = WifiNetworkManager.<>c.<>9__44_7) == null)
			{
				arg_117_1 = (WifiNetworkManager.<>c.<>9__44_7 = new Func<<>f__AnonymousType1<NetworkInterface, IPv6InterfaceProperties>, NetworkInterface>(WifiNetworkManager.<>c.<>9.<GetNetworkInterfaceByIndex>b__44_7));
			}
			return arg_117_0.Select(arg_117_1).SingleOrDefault<NetworkInterface>();
		}

		private bool IsMainInterfaceWifi()
		{
			bool result;
			try
			{
				IEnumerable<IPAddress> arg_34_0 = this.dnsWrapper.GetHostEntry("dns.msftncsi.com").AddressList;
				Func<IPAddress, bool> arg_34_1;
				if ((arg_34_1 = WifiNetworkManager.<>c.<>9__45_0) == null)
				{
					arg_34_1 = (WifiNetworkManager.<>c.<>9__45_0 = new Func<IPAddress, bool>(WifiNetworkManager.<>c.<>9.<IsMainInterfaceWifi>b__45_0));
				}
				IPAddress iPAddress = arg_34_0.Where(arg_34_1).FirstOrDefault<IPAddress>();
				if (iPAddress == null)
				{
					Log.Debug("No IPV4 found for dns.msftncsi.com.");
					result = true;
				}
				else
				{
					uint index;
					int bestInterface = WifiNetworkManager.NativeMethods.GetBestInterface(BitConverter.ToUInt32(iPAddress.GetAddressBytes(), 0), out index);
					if (bestInterface != 0)
					{
						Log.Debug(string.Format("Could not find best interface for IPV4 {0}. Error {1}.", iPAddress, bestInterface));
						result = true;
					}
					else
					{
						result = (this.GetNetworkInterfaceByIndex(index).NetworkInterfaceType == NetworkInterfaceType.Wireless80211);
					}
				}
			}
			catch (Exception arg)
			{
				Log.Warning(string.Format("Failed to check if main interface is Wifi. {0}", arg));
				result = true;
			}
			return result;
		}

		private void WifiNetworkMonitorOnStatusChanged(object sender, WifiConnectionEventArgs wifiConnectionEventArgs)
		{
			if (wifiConnectionEventArgs.Status != WifiConnectionStatus.Connected)
			{
				this.StopInternetChecker();
				EventArgs<KnownWifis.WiFiData> e = new EventArgs<KnownWifis.WiFiData>(this.FindWifi(this.connectedWifiId));
				EventHandler<EventArgs<KnownWifis.WiFiData>> expr_26 = this.WifiNetworkDisconnected;
				if (expr_26 == null)
				{
					return;
				}
				expr_26(this, e);
				return;
			}
			else
			{
				if (!this.IsMainInterfaceWifi())
				{
					Log.Debug(string.Format("Connected Wifi network {0} is not the main network interface. Not popping up the Notifier.", wifiConnectionEventArgs.Ssid));
					return;
				}
				this.connectedWifiConnectionArgs = wifiConnectionEventArgs;
				this.connectedWifiId = this.GetId(wifiConnectionEventArgs.Ssid);
				this.UpdateWifiConnectionTime(this.connectedWifiId);
				if (!this.IsWifiNeworkTrusted(this.connectedWifiId))
				{
					this.StartInternetChecker();
					return;
				}
				string arg_A1_0 = "Connected to a known Wifi Network. {0} ({1})";
				WifiConnectionEventArgs expr_8F = this.connectedWifiConnectionArgs;
				Log.Information(string.Format(arg_A1_0, (expr_8F != null) ? expr_8F.Ssid : null, this.connectedWifiId));
				IEventTracker expr_B0 = VpnMixpanelEventTracker.Instance;
				if (expr_B0 == null)
				{
					return;
				}
				expr_B0.TrackEventAsync(VpnEventTrackingNames.ConnectedToTrustedWifiNetwork, null);
				return;
			}
		}

		private void NotifyConnectionEstablish()
		{
			EventArgs<KnownWifis.WiFiData> e = new EventArgs<KnownWifis.WiFiData>(this.FindWifi(this.connectedWifiId));
			string eventName = (this.connectedWifiConnectionArgs.SecurityMode == WifiConnectionSecurityMode.Unsecure) ? VpnEventTrackingNames.ConnectedToUnsecureNetwork : VpnEventTrackingNames.ConnectedToUntrustedWifiNetwork;
			IEventTracker expr_32 = VpnMixpanelEventTracker.Instance;
			if (expr_32 != null)
			{
				expr_32.TrackEventAsync(eventName, null);
			}
			EventHandler<EventArgs<KnownWifis.WiFiData>> expr_45 = this.WifiNetworkConnected;
			if (expr_45 == null)
			{
				return;
			}
			expr_45(this, e);
		}

		private void UpdateWifiConnectionTime(string id)
		{
			object obj = this.mutex;
			lock (obj)
			{
				KnownWifis knownWifis = this.ReadKnownWifis();
				knownWifis.UpdateConnectionTime(id, DateTime.Now);
				this.WriteKnownWiFis(knownWifis);
			}
		}

		private void StartInternetChecker()
		{
			if (this.internetConnectionMonitor.CurrentStatus == InternetConnectionStatus.Connected)
			{
				this.InternetStatusChangedEventHandler(null, EventArgs.Empty);
				return;
			}
			this.internetConnectionMonitor.StatusChanged += new EventHandler(this.InternetStatusChangedEventHandler);
			this.internetCheckerStartTimeInSec = DateTime.Now.ToUnixTimeStamp();
			object obj = this.internetCheckerLock;
			lock (obj)
			{
				Timer expr_59 = this.internetCheckTimer;
				if (expr_59 != null)
				{
					expr_59.Dispose();
				}
				this.internetCheckTimer = new Timer(this.InternetChecker(), null, 0L, WifiNetworkManager.InternetCheckIntervalInMiliseconds);
			}
		}

		private TimerCallback InternetChecker()
		{
			return delegate(object state)
			{
				if (this.internetCheckerStartTimeInSec * 1000L + WifiNetworkManager.InternetCheckMaxCheckTimeInMiliseconds < DateTime.Now.ToUnixTimeStamp() * 1000L)
				{
					Trace.TraceInformation("No internet access. Stop polling for internet access.");
					this.StopInternetChecker();
					return;
				}
				this.internetConnectionMonitor.InitializeAsync();
			};
		}

		private void StopInternetChecker()
		{
			object obj = this.internetCheckerLock;
			lock (obj)
			{
				if (this.internetCheckTimer != null)
				{
					this.internetCheckTimer.Dispose();
					this.internetConnectionMonitor.StatusChanged -= new EventHandler(this.InternetStatusChangedEventHandler);
				}
			}
		}

		private void InternetStatusChangedEventHandler(object sender, EventArgs eventArgs)
		{
			if (this.internetConnectionMonitor.CurrentStatus != InternetConnectionStatus.Connected)
			{
				return;
			}
			Trace.TraceInformation("Internet access is available.");
			this.NotifyConnectionEstablish();
			this.StopInternetChecker();
		}

		public void Dispose()
		{
			if (this.internetCheckTimer != null)
			{
				this.internetCheckTimer.Dispose();
			}
		}

		static WifiNetworkManager()
		{
			// Note: this type is marked as 'beforefieldinit'.
			WifiNetworkManager.<InternetCheckIntervalInMiliseconds>k__BackingField = 5000L;
			WifiNetworkManager.<InternetCheckMaxCheckTimeInMiliseconds>k__BackingField = 300000L;
		}
	}
}
