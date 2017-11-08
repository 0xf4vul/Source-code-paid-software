using GoldenFrogVPN;
using System;

namespace VyprVPN.Classes
{
	public delegate void AccountSettingsChangedEventHandler(object sender, AccountSettingsBag accountSettingsBag);
}

using GoldenFrogVPN;
using System;

namespace VyprVPN.Classes
{
	public delegate void AuthenticationErrorEventHandler(object sender, AuthenticationErrorEventArgs e);
}

using GoldenFrogVPN;
using System;

namespace VyprVPN.Classes
{
	public delegate void AuthenticationStateChangedEventHandler(object sender, AuthenticationStateEventArgs e);
}

using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Automation.Peers;
using System.Windows.Media;

namespace VyprVPN.Classes
{
	public class GenericAutomationPeer : UIElementAutomationPeer
	{
		public GenericAutomationPeer(UIElement owner) : base(owner)
		{
		}

		protected override List<AutomationPeer> GetChildrenCore()
		{
			List<AutomationPeer> childrenCore = base.GetChildrenCore();
			if (childrenCore != null)
			{
				childrenCore.AddRange(this.GetChildPeers(base.Owner));
			}
			return childrenCore;
		}

		private List<AutomationPeer> GetChildPeers(UIElement element)
		{
			List<AutomationPeer> list = new List<AutomationPeer>();
			for (int i = 0; i < VisualTreeHelper.GetChildrenCount(element); i++)
			{
				UIElement uIElement = VisualTreeHelper.GetChild(element, i) as UIElement;
				if (uIElement != null)
				{
					AutomationPeer automationPeer = UIElementAutomationPeer.CreatePeerForElement(uIElement);
					if (automationPeer != null)
					{
						list.Add(automationPeer);
					}
					else
					{
						list.AddRange(this.GetChildPeers(uIElement));
					}
				}
			}
			return list;
		}
	}
}

using GoldenFrogVPN.Classes;
using System;

namespace VyprVPN.Classes
{
	public delegate void KillSwitchStateChangedEventHandler(object sender, KillSwitchStateChangedEventArgs e);
}

using Catel.IoC;
using Catel.Services;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogUT.Utilities;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using VyprVPN.Classes.Interfaces;
using VyprVPN.Properties;
using VyprVPN.ViewModels;

namespace VyprVPN.Classes
{
	public class NewFeatureModalManager : INewFeatureModalManager
	{
		public struct NewFeatureModalInformation
		{
			public readonly string Name;

			public readonly Version VersionOfRelease;

			public NewFeatureModalViewModel ViewModel;

			public NewFeatureModalInformation(string name, Version version, NewFeatureModalViewModel viewModel)
			{
				this.Name = name;
				this.VersionOfRelease = version;
				this.ViewModel = viewModel;
			}

			public bool IsNewIn(Version version)
			{
				if (this.VersionOfRelease == version)
				{
					return true;
				}
				Version expr_17 = this.VersionOfRelease;
				int? num = (expr_17 != null) ? new int?(expr_17.Major) : null;
				if (num == ((version != null) ? new int?(version.Major) : null))
				{
					Version expr_76 = this.VersionOfRelease;
					int? num2 = (expr_76 != null) ? new int?(expr_76.Minor) : null;
					return num2 == ((version != null) ? new int?(version.Minor) : null);
				}
				return false;
			}
		}

		protected readonly IEnumerable<NewFeatureModalManager.NewFeatureModalInformation> Features;

		protected IInformation Information
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IInformation>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		protected IUIHelper UIHelper
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		protected IUIVisualizerService UIVisualizerService
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		protected IVyprVPNController VyprVPNController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		protected ICrypto Crypto
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ICrypto>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		internal Settings UserSettings
		{
			get
			{
				return Settings.Default;
			}
		}

		public NewFeatureModalManager()
		{
			NewFeatureModalManager.NewFeatureModalInformation testFeature = new NewFeatureModalManager.NewFeatureModalInformation("Test Feature", new Version(0, 0, 0), null);
			testFeature.ViewModel = new NewFeatureModalViewModel("/VyprVPN;component/Images/VyprWindows_Onboarding-card1.png", Resources.ApplicationName, Screen.Main, delegate
			{
				this.MarkAsShown(testFeature);
			});
			this.Features = new List<NewFeatureModalManager.NewFeatureModalInformation>();
		}

		public IEnumerable<NewFeatureModalManager.NewFeatureModalInformation> GetNewFeatures()
		{
			Version currentVersion = this.Information.get_ApplicationVersion();
			IEnumerable<NewFeatureModalManager.NewFeatureModalInformation> expr_1D = this.Features;
			if (expr_1D == null)
			{
				return null;
			}
			return from f in expr_1D
			where f.IsNewIn(currentVersion)
			select f;
		}

		public void ShowNewFeatureModals()
		{
			foreach (NewFeatureModalManager.NewFeatureModalInformation current in this.GetNewFeatures())
			{
				if (!this.AlreadyShown(current))
				{
					this.ShowNewFeatureModal(current);
				}
			}
		}

		protected void ShowNewFeatureModal(NewFeatureModalManager.NewFeatureModalInformation feature)
		{
			NewFeatureModalViewModel viewModel = feature.ViewModel;
			if (viewModel != null)
			{
				this.UIVisualizerService.ShowDialog(viewModel, null);
			}
		}

		private bool AlreadyShown(NewFeatureModalManager.NewFeatureModalInformation feature)
		{
			if (this.UserSettings.NewFeatureModalAlreadyShown == null)
			{
				return false;
			}
			string username = this.VyprVPNController.Username;
			foreach (string current in this.UserSettings.NewFeatureModalAlreadyShown)
			{
				try
				{
					if (!string.IsNullOrEmpty(current) && this.Crypto.HashesToEqualPBKDF2Hash(username + feature.Name, current))
					{
						return true;
					}
					continue;
				}
				object arg_5D_0;
				Exception expr_62 = arg_5D_0 as Exception;
				int arg_84_0;
				if (expr_62 == null)
				{
					arg_84_0 = 0;
				}
				else
				{
					Exception ex = expr_62;
					arg_84_0 = (((ex is ArgumentException || ex is ArgumentNullException) > false) ? 1 : 0);
				}
				endfilter(arg_84_0);
			}
			return false;
		}

		private void MarkAsShown(NewFeatureModalManager.NewFeatureModalInformation feature)
		{
			if (!this.AlreadyShown(feature))
			{
				string value = this.Crypto.PBKDF2Hash(this.VyprVPNController.Username + feature.Name, null);
				Settings userSettings = this.UserSettings;
				if (userSettings == null)
				{
					return;
				}
				if (userSettings.NewFeatureModalAlreadyShown == null)
				{
					userSettings.NewFeatureModalAlreadyShown = new StringCollection();
				}
				userSettings.NewFeatureModalAlreadyShown.Add(value);
				userSettings.Save();
			}
		}
	}
}

using System;

namespace VyprVPN.Classes
{
	public delegate void PropertyChangedEventHandler(object sender, string property);
}

using System;
using VyprVPN.Properties;

namespace VyprVPN.Classes
{
	public static class ServerRegionConstants
	{
		public const string RegionAsia = "Asia";

		public const string RegionEurope = "Europe";

		public const string RegionNorthAmerica = "North America";

		public const string RegionSouthAmerica = "South America";

		public const string RegionOceania = "Oceania";

		public const string RegionAfrica = "Africa";

		public const string RegionAutomatic = "Automatic";

		public const string RegionVyprVpnServer = "VyprVPN Server";

		public static string GetLocalizedRegionString(string apiRegionName)
		{
			uint num = <PrivateImplementationDetails>.ComputeStringHash(apiRegionName);
			if (num <= 1856913705u)
			{
				if (num <= 300682232u)
				{
					if (num != 42921931u)
					{
						if (num == 300682232u)
						{
							if (apiRegionName == "North America")
							{
								return Resources.NorthAmerica;
							}
						}
					}
					else if (apiRegionName == "Oceania")
					{
						return Resources.Oceania;
					}
				}
				else if (num != 1634363268u)
				{
					if (num == 1856913705u)
					{
						if (apiRegionName == "VyprVPN Server")
						{
							return Resources.VyprVPNServer;
						}
					}
				}
				else if (apiRegionName == "Automatic")
				{
					return Resources.Automatic;
				}
			}
			else if (num <= 2312924951u)
			{
				if (num != 1970133831u)
				{
					if (num == 2312924951u)
					{
						if (apiRegionName == "Asia")
						{
							return Resources.Asia;
						}
					}
				}
				else if (apiRegionName == "Africa")
				{
					return Resources.Africa;
				}
			}
			else if (num != 2334648798u)
			{
				if (num == 3705455847u)
				{
					if (apiRegionName == "Europe")
					{
						return Resources.Europe;
					}
				}
			}
			else if (apiRegionName == "South America")
			{
				return Resources.SouthAmerica;
			}
			return apiRegionName;
		}
	}
}

using GoldenFrogVPN;
using System;

namespace VyprVPN.Classes
{
	public delegate void ServiceStoppedEventHandler(object sender, ServiceStopEventArgs e);
}

using System;

namespace VyprVPN.Classes
{
	public enum ToastButton
	{
		Reconnect,
		Disconnect,
		None
	}
}

using Catel.IoC;
using Catel.Services;
using GoldenFrogUX.Toast;
using Log;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Media.Imaging;
using VyprVPN.Properties;

namespace VyprVPN.Classes
{
	public class ToastHelper
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ToastHelper.<>c <>9 = new ToastHelper.<>c();

			public static Action <>9__3_0;

			public static Action <>9__3_1;

			internal void <ShowToast>b__3_0()
			{
				ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).Connect(13);
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowApplicationWindow();
			}

			internal void <ShowToast>b__3_1()
			{
				ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).Disconnect(13);
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowApplicationWindow();
			}
		}

		private static ToastManager _manager;

		private static ToastManager manager
		{
			get
			{
				if (ToastHelper._manager == null)
				{
					ToastHelper._manager = new ToastManager(ServiceLocatorExtensions.ResolveType<ILanguageService>(ServiceLocator.get_Default(), null).get_PreferredCulture());
				}
				return ToastHelper._manager;
			}
		}

		public static void ShowToast(string notificationText, string notificationBody, ToastButton buttonType, ToastLength length, ToastIconType toastIcon, Action clickAction = null, Action cleanupAction = null, bool isConnectionError = false)
		{
			FileLogger instance = FileLogger.get_Instance();
			if (ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).IsApplicationActive() && !isConnectionError)
			{
				instance.Log(0, "Skipping toast because application has focus.");
				return;
			}
			if (ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).NotificationPreference == 2)
			{
				instance.Log(0, "Skipping toast because setting is disabled.");
				return;
			}
			if (ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).NotificationPreference == 1 && !isConnectionError)
			{
				instance.Log(0, "Skipping toast because it is not an error toast.");
				return;
			}
			Toast toast = default(Toast);
			toast.set_BoldText(notificationText);
			toast.set_SecondLine(notificationBody);
			if (buttonType != ToastButton.Reconnect)
			{
				if (buttonType == ToastButton.Disconnect)
				{
					toast.set_HasButtons(true);
					toast.set_TopButtonText(Resources.Close);
					toast.set_BottomButtonText(Resources.Disconnect);
					Action arg_11A_1;
					if ((arg_11A_1 = ToastHelper.<>c.<>9__3_1) == null)
					{
						arg_11A_1 = (ToastHelper.<>c.<>9__3_1 = new Action(ToastHelper.<>c.<>9.<ShowToast>b__3_1));
					}
					toast.set_BottomButtonAction(arg_11A_1);
				}
			}
			else
			{
				toast.set_HasButtons(true);
				toast.set_TopButtonText(Resources.Close);
				toast.set_BottomButtonText(Resources.Reconnect);
				Action arg_D2_1;
				if ((arg_D2_1 = ToastHelper.<>c.<>9__3_0) == null)
				{
					arg_D2_1 = (ToastHelper.<>c.<>9__3_0 = new Action(ToastHelper.<>c.<>9.<ShowToast>b__3_0));
				}
				toast.set_BottomButtonAction(arg_D2_1);
			}
			if (toastIcon != ToastIconType.Connected)
			{
				if (toastIcon != ToastIconType.Disconnected)
				{
					toast.set_IconBackground(1);
					BitmapImage bitmapImage = new BitmapImage();
					bitmapImage.BeginInit();
					bitmapImage.UriSource = new Uri("pack://application:,,,/Images/Vypr-Toast-Yellow.png");
					bitmapImage.EndInit();
					toast.set_Icon(bitmapImage);
				}
				else
				{
					toast.set_IconBackground(0);
					BitmapImage bitmapImage = new BitmapImage();
					bitmapImage.BeginInit();
					bitmapImage.UriSource = new Uri("pack://application:,,,/Images/Vypr-Toast-Red.png");
					bitmapImage.EndInit();
					toast.set_Icon(bitmapImage);
				}
			}
			else
			{
				toast.set_IconBackground(2);
				BitmapImage bitmapImage = new BitmapImage();
				bitmapImage.BeginInit();
				bitmapImage.UriSource = new Uri("pack://application:,,,/Images/Vypr-Toast-Blue.png");
				bitmapImage.EndInit();
				toast.set_Icon(bitmapImage);
			}
			if (clickAction == null)
			{
				clickAction = new Action(ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowApplicationWindow);
			}
			toast.set_ToastAction(clickAction);
			toast.set_ToastLength(TimeSpan.FromSeconds((double)length));
			toast.set_CleanupAction(cleanupAction);
			toast.set_ExpanderText(Resources.ToastExpanderText);
			instance.Log(0, "Showing toast with title: \"{0}\"", new object[]
			{
				notificationText
			});
			ToastHelper.manager.ShowToast(toast);
		}
	}
}

using System;

namespace VyprVPN.Classes
{
	public enum ToastLength
	{
		Short = 7,
		Long = 25
	}
}

using System;

namespace VyprVPN.Classes
{
	public enum ToastIconType
	{
		Connected,
		Disconnected,
		Error
	}
}

using GoldenFrogVPN;
using System;

namespace VyprVPN.Classes
{
	public delegate void UpdateAvailableEventHandler(object sender, UpgradeAvailableEventArgs property);
}

using GoldenFrogVPN.Classes;
using System;

namespace VyprVPN.Classes
{
	public delegate void UpdateDownloadCompletedEventHandler(object sender, UpdateDownloadCompletedEventArgs e);
}

using GoldenFrogVPN.Classes;
using System;

namespace VyprVPN.Classes
{
	public delegate void UpdateDownloadProgressChangedEventHandler(object sender, UpdateDownloadProgressChangedEventArgs e);
}

using Catel.IoC;
using GoldenFrogUT.Utilities;
using Log;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;
using VyprVPN.Properties;

namespace VyprVPN.Classes
{
	public class UpgradeHandler
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly UpgradeHandler.<>c <>9 = new UpgradeHandler.<>c();

			public static Action<string> <>9__2_0;

			internal void <Upgrade>b__2_0(string v)
			{
				UpgradeHandler.logger.Log(0, "Deleting old version information: {0}", new object[]
				{
					v
				});
				Directory.Delete(v, true);
			}
		}

		private static readonly FileLogger logger = FileLogger.get_Instance();

		protected static ISettings UISettings
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
			}
		}

		private static SecureString ReadV1Password(string userName)
		{
			UpgradeHandler.logger.Log(0, "LoadPassword() Called with parameter, userName : " + userName);
			byte[] bytes = Encoding.Unicode.GetBytes(userName);
			string path = Application.LocalUserAppDataPath + "\\..\\..\\..\\GoldenFrog\\VyprVPN\\VyprVpn.dat";
			try
			{
				byte[] bytes2 = ProtectedData.Unprotect(File.ReadAllBytes(path), bytes, DataProtectionScope.CurrentUser);
				UpgradeHandler.logger.Log(0, "LoadPassword() returns the value, Password = ********");
				return CryptStringExtensions.ToSecureString(Encoding.Unicode.GetString(bytes2));
			}
			catch (Exception ex)
			{
				UpgradeHandler.logger.Log(0, "Exception decoding password: {0}", new object[]
				{
					ex
				});
			}
			return null;
		}

		public static Dictionary<string, string> Upgrade()
		{
			if (!UpgradeHandler.UISettings.CallUpgrade)
			{
				return null;
			}
			try
			{
				string path = Application.LocalUserAppDataPath + "\\..\\..\\..\\GoldenFrog\\";
				if (Directory.Exists(path))
				{
					List<string> list = Directory.GetDirectories(Directory.GetDirectories(path, "VyprVPN.exe_Url_*").ToList<string>().First<string>(), "1.*").ToList<string>();
					if (list.Count > 0)
					{
						list.Sort();
						string text = list.Last<string>();
						UpgradeHandler.logger.Log(0, "Version to upgrade from: {0}", new object[]
						{
							text
						});
						Dictionary<string, string> dictionary = new Dictionary<string, string>();
						if (text != null)
						{
							DataSet expr_95 = new DataSet();
							expr_95.ReadXml(string.Format("{0}/user.config", text));
							foreach (DataRow current in expr_95.Tables["setting"].AsEnumerable())
							{
								dictionary[current["name"].ToString()] = current["value"].ToString();
							}
							UpgradeHandler.logger.Log(0, "XML Reader Done!");
						}
						List<string> arg_13C_0 = list;
						Action<string> arg_13C_1;
						if ((arg_13C_1 = UpgradeHandler.<>c.<>9__2_0) == null)
						{
							arg_13C_1 = (UpgradeHandler.<>c.<>9__2_0 = new Action<string>(UpgradeHandler.<>c.<>9.<Upgrade>b__2_0));
						}
						arg_13C_0.ForEach(arg_13C_1);
						try
						{
							IVyprVPNController vyprVPNController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
							if (vyprVPNController != null)
							{
								vyprVPNController.ConnectOnLaunch = bool.Parse(dictionary["ConnectOnLaunch"]);
							}
						}
						catch (Exception ex)
						{
							UpgradeHandler.logger.Log(0, "Exception decoding ConnectOnLaunch: {0}", new object[]
							{
								ex
							});
						}
						UpgradeHandler.UISettings.CallUpgrade = false;
						UpgradeHandler.UISettings.Save();
						try
						{
							SecureString secureString = UpgradeHandler.ReadV1Password(dictionary["UserName"]);
							if (secureString != null)
							{
								dictionary["Password"] = CryptStringExtensions.ToInsecureString(secureString);
							}
						}
						catch (Exception ex2)
						{
							UpgradeHandler.logger.Log(0, "Exception decoding Password: {0}", new object[]
							{
								ex2
							});
						}
						return dictionary;
					}
				}
			}
			catch (Exception ex3)
			{
				UpgradeHandler.logger.Log(2, "Exception attempting v1.x upgrade: {0}", new object[]
				{
					ex3
				});
			}
			UpgradeHandler.logger.Log(0, "Performing standard settings upgrade...");
			UpgradeHandler.UISettings.Upgrade();
			UpgradeHandler.UISettings.CallUpgrade = false;
			UpgradeHandler.UISettings.Save();
			return null;
		}
	}
}

using Catel.IoC;
using Catel.MVVM;
using Log;
using System;

namespace VyprVPN.Classes
{
	public class VyprViewModel : ViewModelBase
	{
		protected ILogger logger
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ILogger>(ServiceLocator.get_Default(), null);
			}
		}

		public IUIState UIState
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIState>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		public IVyprVPNController VyprVPNController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		protected void LogInfo(string logMessage)
		{
			this.logger.Log(0, logMessage);
		}
	}
}

using Catel.IoC;
using GoldenFrogVPN;
using GoldenFrogVPN.Classes;
using GoldenFrogVPN.Enums;
using IPC;
using Log;
using System;
using System.Runtime.CompilerServices;
using System.ServiceModel;
using System.Windows;
using VyprVPN.Properties;

namespace VyprVPN.Classes
{
	[CallbackBehavior(ConcurrencyMode = ConcurrencyMode.Multiple, UseSynchronizationContext = false)]
	public class VyprVPNServiceSubscriber : IIPCServerCallback, IServiceEventsSource
	{
		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<ConnectionInformationEventArgs> StatusChangedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<ConnectionErrorEventArgs> ConnectionErrorEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event AccountSettingsChangedEventHandler AccountSettingsChangedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<SendConfirmationEmailApiResultCode> SendConfirmationEmailResultEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PingCompletedEventHandler PingCompletedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChangedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event UpdateAvailableEventHandler UpgradeAvailableEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event ServiceStoppedEventHandler ServiceStoppedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event AuthenticationStateChangedEventHandler AuthenticationStateChangedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event AuthenticationErrorEventHandler AuthenticationErrorEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event KillSwitchStateChangedEventHandler KillSwitchStateChangedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event UpdateDownloadProgressChangedEventHandler UpdateDownloadProgressChangedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event UpdateDownloadCompletedEventHandler UpdateDownloadCompletedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event GetAvailableUpdateSpecCompletedEventHandler GetAvailableUpdateSpecCompletedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event GetAvailableUpdateSpecErrorEventHandler GetAvailableUpdateSpecErrorEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event GetOptimizedMtuCompletedEventHandler GetOptimizedMtuCompletedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event GetOptimizedMtuErrorEventHandler GetOptimizedMtuErrorEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event UpdateAppsListFromFileSystemCompletedEventHandler UpdateAppsListFromFileSystemCompletedEvent;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event UpdateAppsListFromFileSystemErrorEventHandler UpdateAppsListFromFileSystemErrorEvent;

		private IUIHelper UIHelper
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			}
		}

		private ILogger Logger
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ILogger>(ServiceLocator.get_Default(), null);
			}
		}

		public string Language
		{
			get
			{
				ISettings settings = ServiceLocatorExtensions.TryResolveType<ISettings>(ServiceLocator.get_Default(), null);
				if (settings != null)
				{
					return settings.SelectedUILocale;
				}
				return null;
			}
		}

		public Guid GUID
		{
			get;
			set;
		}

		public VyprVPNServiceSubscriber()
		{
			this.GUID = Guid.NewGuid();
			this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber instantiated", new object[]
			{
				this.GUID
			});
		}

		public void OnConnectionStateUpdate(ConnectionInformationEventArgs e)
		{
			this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnConnectionStateUpdate called with '{1}' status and '{2}' IP", new object[]
			{
				this.GUID,
				e.get_ConnectionState().ToString(),
				(e.get_PublicIP() != null) ? e.get_PublicIP().ToString() : "null"
			});
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnConnectionStateUpdate called with '{1}' status in UI thread", new object[]
				{
					this.GUID,
					e.get_ConnectionState().ToString()
				});
				if (this.StatusChangedEvent != null)
				{
					if (e.get_ConnectionState() == 1)
					{
						e.set_ConnectionState(2);
					}
					this.StatusChangedEvent(this, e);
					return;
				}
				this.Logger.Log(1, "Unable to send StatusChangedEvent as there was nobody listening for the event.");
			});
		}

		public void OnConnectionError(ConnectionErrorEventArgs e)
		{
			ConnectionError connectionError = e.get_ConnectionError();
			this.Logger.Log(3, "Connection Error: {0}, {1}, '{2}'", new object[]
			{
				connectionError.get_Code(),
				connectionError.get_ErrorType(),
				connectionError.get_Message()
			});
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnConnectionError called with '{1}' error in UI thread", new object[]
				{
					this.GUID,
					connectionError.ToString()
				});
				EventHandler<ConnectionErrorEventArgs> connectionErrorEvent = this.ConnectionErrorEvent;
				if (connectionErrorEvent != null)
				{
					connectionErrorEvent(this, e);
				}
			});
		}

		public void OnServiceStop(ServiceStopEventArgs e)
		{
			this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnServiceStop called with '{1}' reason", new object[]
			{
				this.GUID,
				e.get_Reason().ToString()
			});
			ServiceStoppedEventHandler serviceStoppedEvent = this.ServiceStoppedEvent;
			if (serviceStoppedEvent != null)
			{
				serviceStoppedEvent(this, e);
			}
		}

		public void OnUpgradeAvailable(UpgradeAvailableEventArgs e)
		{
			this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnUpgradeAvailable called with version '{1}'", new object[]
			{
				this.GUID,
				e.get_NewVersionNumber()
			});
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnUpgradeAvailable called with version '{1}' in UI thread", new object[]
				{
					this.GUID,
					e.get_NewVersionNumber()
				});
				UpdateAvailableEventHandler upgradeAvailableEvent = this.UpgradeAvailableEvent;
				if (upgradeAvailableEvent != null)
				{
					upgradeAvailableEvent(this, e);
				}
			});
		}

		public void OnSendConfirmationEmailResult(SendConfirmationEmailApiResultCode result)
		{
			this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnSendConfirmationEmailResult", new object[]
			{
				this.GUID
			});
			this.UIHelper.Dispatch(delegate
			{
				this.Logger.Log(0, "{0}:SendConfirmationEmailResultEvent call dispatched to the UI thread", new object[]
				{
					this.GUID
				});
				EventHandler<SendConfirmationEmailApiResultCode> sendConfirmationEmailResultEvent = this.SendConfirmationEmailResultEvent;
				if (sendConfirmationEmailResultEvent != null)
				{
					sendConfirmationEmailResultEvent(this, result);
				}
			});
		}

		public void OnAccountSettingsChange(AccountSettingsBag accountSettingsBag)
		{
			this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnAccountSettingsChange", new object[]
			{
				this.GUID
			});
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "{0}:AccountSettingsChanged call dispatched to the UI thread", new object[]
				{
					this.GUID
				});
				AccountSettingsChangedEventHandler accountSettingsChangedEvent = this.AccountSettingsChangedEvent;
				if (accountSettingsChangedEvent != null)
				{
					accountSettingsChangedEvent(this, accountSettingsBag);
				}
			});
		}

		public void OnVpnServerPingCompleted(VPNServer server, PingEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "{0}:PingCompleted call dispatched to the UI thread", new object[]
				{
					this.GUID
				});
				PingCompletedEventHandler pingCompletedEvent = this.PingCompletedEvent;
				if (pingCompletedEvent != null)
				{
					pingCompletedEvent.Invoke(server, e);
				}
			});
		}

		public void OnTapInstallFromUIRequested(string descPrefix, string hardwareId, string infPath)
		{
			if (!new OpenVPNInterfaceManager(descPrefix, hardwareId, infPath).RunDevconInstallForTap(2147483647))
			{
				NativeMethods.ShowTopMostMessageBox(Resources.OpenVPNErrorTapAdapter + " " + Resources.RebootAndRetryConnection, Resources.ApplicationName, MessageBoxButton.OK, MessageBoxImage.Hand);
			}
		}

		public void OnPropertyChanged(string property)
		{
			this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnPropertyChanged called with {1}", new object[]
			{
				this.GUID,
				property
			});
			PropertyChangedEventHandler propertyChangedEvent = this.PropertyChangedEvent;
			if (propertyChangedEvent != null)
			{
				propertyChangedEvent(this, property);
			}
		}

		public void OnConnectionLogUpdated(ConnectionLogEntry connectionLogEntry)
		{
			this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnConnectionLogUpdated received updated connection log info", new object[]
			{
				this.GUID
			});
			IConnectionLog uiConnectiongLog = ServiceLocatorExtensions.ResolveType<IConnectionLog>(ServiceLocator.get_Default(), null);
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				uiConnectiongLog.Add(connectionLogEntry);
			});
		}

		public void OnConnectionLogCleared()
		{
			this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnConnectionLogUpdated received updated connection log info", new object[]
			{
				this.GUID
			});
			IConnectionLog @object = ServiceLocatorExtensions.ResolveType<IConnectionLog>(ServiceLocator.get_Default(), null);
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(@object.Clear));
		}

		public void OnAuthenticationStateUpdate(AuthenticationStateEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnAuthenticationStateUpdate called with oldState '{1}', newState '{2}' in UI thread", new object[]
				{
					this.GUID,
					e.get_OldState(),
					e.get_NewState()
				});
				this.InvokeEventHandler(this.AuthenticationStateChangedEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnAuthenticationError(AuthenticationErrorEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnAuthenticationError called with error '{1}' in UI thread", new object[]
				{
					this.GUID,
					e.get_Error()
				});
				this.InvokeEventHandler(this.AuthenticationErrorEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnKillSwitchStateChanged(KillSwitchStateChangedEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "{0}:VyprVPNServiceSubscriber.OnKillSwitchStateChanged called with updated state '{1}' in UI thread", new object[]
				{
					this.GUID,
					e
				});
				this.InvokeEventHandler(this.KillSwitchStateChangedEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnUpdateDownloadProgressChanged(UpdateDownloadProgressChangedEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "VyprVPNServiceSubscriber.OnUpdateDownloadProgressChanged called with progress '{1}' for version '{2}' in UI thread: {0}", new object[]
				{
					this.GUID,
					e.get_PercentComplete(),
					e.get_TargetVersion()
				});
				this.InvokeEventHandler(this.UpdateDownloadProgressChangedEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnUpdateDownloadCompleted(UpdateDownloadCompletedEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "VyprVPNServiceSubscriber.OnUpdateDownloadCompleted called with updated result '{1}' for version '{2}' in UI thread: {0}", new object[]
				{
					this.GUID,
					e.get_Success(),
					e.get_TargetVersion()
				});
				this.InvokeEventHandler(this.UpdateDownloadCompletedEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnGetAvailableUpdateSpecCompleted(GetAvailableUpdateSpecCompletedEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				if (e != null && e.get_ReleaseSpec() != null)
				{
					this.Logger.Log(0, "VyprVPNServiceSubscriber.OnGetAvailableUpdateSpecCompleted called with version '{1}' in UI thread: {0}", new object[]
					{
						this.GUID,
						e.get_ReleaseSpec().get_Version()
					});
				}
				else
				{
					this.Logger.Log(0, "VyprVPNServiceSubscriber.OnGetAvailableUpdateSpecCompleted called with no update in UI thread: {0}", new object[]
					{
						this.GUID
					});
				}
				this.InvokeEventHandler(this.GetAvailableUpdateSpecCompletedEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnGetAvailableUpdateSpecErrored(GetAvailableUpdateSpecErrorEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "VyprVPNServiceSubscriber.OnGetAvailableUpdateSpecErrored called in UI thread: {0}", new object[]
				{
					this.GUID
				});
				this.InvokeEventHandler(this.GetAvailableUpdateSpecErrorEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnGetOptimizedMtuCompleted(GetOptimizedMtuCompletedEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				if (e != null && e.get_OptimizedMtu() != 0)
				{
					this.Logger.Log(0, "VyprVPNServiceSubscriber.OnGetOptimizedMtuCompleted called with MTU '{1}' in UI thread: {0}", new object[]
					{
						this.GUID,
						e.get_OptimizedMtu()
					});
				}
				else
				{
					this.Logger.Log(0, "VyprVPNServiceSubscriber.OnGetOptimizedMtuCompleted called with no update in UI thread: {0}", new object[]
					{
						this.GUID
					});
				}
				this.InvokeEventHandler(this.GetOptimizedMtuCompletedEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnGetOptimizedMtuErrored(GetOptimizedMtuErrorEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "VyprVPNServiceSubscriber.OnGetOptimizedMtuErrored called in UI thread: {0}", new object[]
				{
					this.GUID
				});
				this.InvokeEventHandler(this.GetOptimizedMtuErrorEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnUpdateAppsListFromFileSystemCompleted(UpdateAppsListFromFileSystemCompletedEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				if (e != null && e.get_UpdatedAppList() != null)
				{
					this.Logger.Log(0, "VyprVPNServiceSubscriber.OnUpdateAppsListFromFileSystemCompleted called in UI thread: {0}", new object[]
					{
						this.GUID
					});
				}
				else
				{
					this.Logger.Log(0, "VyprVPNServiceSubscriber.OnUpdateAppsListFromFileSystemCompleted called with no update in UI thread: {0}", new object[]
					{
						this.GUID
					});
				}
				this.InvokeEventHandler(this.UpdateAppsListFromFileSystemCompletedEvent, new object[]
				{
					this,
					e
				});
			});
		}

		public void OnUpdateAppsListFromFileSystemError(UpdateAppsListFromFileSystemErrorEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Logger.Log(0, "VyprVPNServiceSubscriber.OnUpdateAppsListFromFileSystemError called in UI thread: {0}", new object[]
				{
					this.GUID
				});
				this.InvokeEventHandler(this.UpdateAppsListFromFileSystemErrorEvent, new object[]
				{
					this,
					e
				});
			});
		}

		private void InvokeEventHandler(Delegate d, params object[] args)
		{
			if (d != null)
			{
				d.DynamicInvoke(args);
			}
		}
	}
}

using Catel.IoC;
using Catel.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using VyprVPN.Models;
using VyprVPN.ViewModels;

namespace VyprVPN.Classes
{
	public static class VyprVPNSettings
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly VyprVPNSettings.<>c <>9 = new VyprVPNSettings.<>c();

			public static Func<string, bool> <>9__7_0;

			internal bool <CreatePreferencesModel>b__7_0(string x)
			{
				return !string.IsNullOrEmpty(x);
			}
		}

		private static IUIState UIState
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null);
			}
		}

		private static IVyprVPNController VyprVPNController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			}
		}

		private static IUIVisualizerService UIVisualizerService
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ServiceLocator.get_Default(), null);
			}
		}

		public static async Task ShowSettings()
		{
			PreferencesWindowViewModel preferencesWindowViewModel = new PreferencesWindowViewModel(VyprVPNSettings.CreatePreferencesModel());
			Screen activeScreen = VyprVPNSettings.UIState.ActiveScreen;
			switch (activeScreen)
			{
			case Screen.Account:
			case Screen.AccountDetails:
			case Screen.GeneralPreferences:
				goto IL_4C;
			case Screen.VyprVPNDetails:
			case Screen.DumpTruckDetails:
				break;
			default:
				if (activeScreen == Screen.ChooseProtocol)
				{
					goto IL_4C;
				}
				break;
			}
			VyprVPNSettings.UIState.ActiveScreen = Screen.ConnectionPreferences;
			IL_4C:
			if ((await VyprVPNSettings.UIVisualizerService.ShowDialog(preferencesWindowViewModel, null)) ?? false)
			{
				VyprVPNSettings.UIState.ActiveScreen = Screen.Main;
			}
		}

		public static PreferencesModel CreatePreferencesModel()
		{
			PreferencesModel expr_05 = new PreferencesModel();
			expr_05.LaunchOnLogin = VyprVPNSettings.VyprVPNController.LaunchOnLogin;
			expr_05.ConnectOnStartup = VyprVPNSettings.VyprVPNController.ConnectOnStartup;
			expr_05.ConnectOnLaunch = VyprVPNSettings.VyprVPNController.ConnectOnLaunch;
			expr_05.EnableConnectionLog = VyprVPNSettings.VyprVPNController.EnableConnectionLog;
			expr_05.ReconnectOnDisconnect = VyprVPNSettings.VyprVPNController.ReconnectOnDisconnect;
			expr_05.ConnectOnUnknownWifi = VyprVPNSettings.VyprVPNController.ConnectOnUnknownWifi;
			IEnumerable<string> arg_8F_0 = VyprVPNSettings.VyprVPNController.ConnectOnUnknownWifiIgnoreSsids;
			Func<string, bool> arg_8F_1;
			if ((arg_8F_1 = VyprVPNSettings.<>c.<>9__7_0) == null)
			{
				arg_8F_1 = (VyprVPNSettings.<>c.<>9__7_0 = new Func<string, bool>(VyprVPNSettings.<>c.<>9.<CreatePreferencesModel>b__7_0));
			}
			expr_05.ConnectOnUnknownWifiIgnoreSsids = new ObservableCollection<string>(arg_8F_0.Where(arg_8F_1));
			expr_05.ConnectSound = VyprVPNSettings.VyprVPNController.ConnectSound;
			expr_05.ConnectSoundFilePath = VyprVPNSettings.VyprVPNController.ConnectSoundFilePath;
			expr_05.DisconnectSound = VyprVPNSettings.VyprVPNController.DisconnectSound;
			expr_05.DisconnectSoundFilePath = VyprVPNSettings.VyprVPNController.DisconnectSoundFilePath;
			expr_05.AnalyticsEnabled = VyprVPNSettings.VyprVPNController.AnalyticsEnabled;
			expr_05.SendCrashReports = VyprVPNSettings.VyprVPNController.SendCrashReports;
			expr_05.Protocol = VyprVPNSettings.VyprVPNController.Protocol;
			expr_05.AlternateDnsEnabled = VyprVPNSettings.VyprVPNController.AlternateDnsEnabled;
			expr_05.AlternateDnsPrimary = VyprVPNSettings.VyprVPNController.AlternateDnsPrimary;
			expr_05.AlternateDnsSecondary = VyprVPNSettings.VyprVPNController.AlternateDnsSecondary;
			expr_05.LooseUpdatesEnabled = VyprVPNSettings.VyprVPNController.LooseUpdatesEnabled;
			expr_05.DnsLeakProtectionEnabled = VyprVPNSettings.VyprVPNController.DnsLeakProtectionEnabled;
			expr_05.KillSwitchEnabled = VyprVPNSettings.VyprVPNController.KillSwitchEnabled;
			expr_05.KillSwitchMode = VyprVPNSettings.VyprVPNController.KillSwitchMode;
			expr_05.KillLanTrafficEnabled = VyprVPNSettings.VyprVPNController.KillLanTrafficEnabled;
			expr_05.NotificationPreference = VyprVPNSettings.VyprVPNController.NotificationPreference;
			expr_05.SelectedOpenVPNProtocol = VyprVPNSettings.VyprVPNController.SelectedOpenVPNProtocol;
			expr_05.OpenVpnPortsAndTransportProtocolConfigs = VyprVPNSettings.VyprVPNController.OpenVpnPortsAndTransportProtocolConfigs;
			expr_05.AdditionalOpenVpnParameters = VyprVPNSettings.VyprVPNController.AdditionalOpenVpnParameters;
			expr_05.SelectedTlsTimeout = VyprVPNSettings.VyprVPNController.SelectedTlsTimeout;
			expr_05.SelectedMtu = VyprVPNSettings.VyprVPNController.SelectedMtu;
			expr_05.SelectedRouteDelay = VyprVPNSettings.VyprVPNController.SelectedRouteDelay;
			expr_05.SelectedOpenVpnLogVerbosityLevel = VyprVPNSettings.VyprVPNController.SelectedOpenVpnLogVerbosityLevel;
			expr_05.SelectedTAPAdapter = VyprVPNSettings.VyprVPNController.SelectedTAPAdapter;
			expr_05.ApplicationList = VyprVPNSettings.VyprVPNController.ApplicationList;
			expr_05.PerAppInitialState = VyprVPNSettings.VyprVPNController.PerAppInitialState;
			expr_05.PerAppManagementEnabled = VyprVPNSettings.VyprVPNController.PerAppManagementEnabled;
			expr_05.ClearDirtyFlag();
			return expr_05;
		}
	}
}
