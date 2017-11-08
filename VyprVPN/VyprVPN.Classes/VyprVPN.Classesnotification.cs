using Catel.Data;
using Catel.IoC;
using GoldenFrogUT.GoldenFrog;
using Log;
using System;
using System.Windows.Input;
using VyprVPN.Properties;

namespace VyprVPN.Classes.Notifications
{
	public class AccountStateNotification : ModelBase, INotification
	{
		private readonly ILogger _logger = ConsoleLogger.get_Instance();

		private readonly IVyprVPNController _vyprVpnvController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);

		public static readonly PropertyData ImageUriProperty = ModelBase.RegisterProperty<Uri>("ImageUri", typeof(Uri), new Uri("pack://application:,,,/Images/InMenu-AuthenticationError-24.png"), null, true, true, true);

		public static readonly PropertyData MessageProperty = ModelBase.RegisterProperty<string>("Message", typeof(string), Resources.AuthenticationError, null, true, true, true);

		public static readonly PropertyData CommandMessageProperty = ModelBase.RegisterProperty<string>("CommandMessage", typeof(string), Resources.MoreInfo, null, true, true, true);

		public static readonly PropertyData CommandProperty = ModelBase.RegisterProperty("Command", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData IsIgnorableProperty = ModelBase.RegisterProperty<bool>("IsIgnorable", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IgnoreCommandProperty = ModelBase.RegisterProperty("IgnoreCommand", typeof(ICommand), null, null, true, true, true);

		public Uri ImageUri
		{
			get
			{
				return base.GetValue<Uri>(AccountStateNotification.ImageUriProperty);
			}
			set
			{
				base.SetValue(AccountStateNotification.ImageUriProperty, value);
			}
		}

		public string Message
		{
			get
			{
				return base.GetValue<string>(AccountStateNotification.MessageProperty);
			}
			set
			{
				base.SetValue(AccountStateNotification.MessageProperty, value);
			}
		}

		public string CommandMessage
		{
			get
			{
				return base.GetValue<string>(AccountStateNotification.CommandMessageProperty);
			}
			set
			{
				base.SetValue(AccountStateNotification.CommandMessageProperty, value);
			}
		}

		public ICommand Command
		{
			get
			{
				return base.GetValue<ICommand>(AccountStateNotification.CommandProperty);
			}
			set
			{
				base.SetValue(AccountStateNotification.CommandProperty, value);
			}
		}

		public bool IsIgnorable
		{
			get
			{
				return base.GetValue<bool>(AccountStateNotification.IsIgnorableProperty);
			}
			set
			{
				base.SetValue(AccountStateNotification.IsIgnorableProperty, value);
			}
		}

		public ICommand IgnoreCommand
		{
			get
			{
				return base.GetValue<ICommand>(AccountStateNotification.IgnoreCommandProperty);
			}
			set
			{
				base.SetValue(AccountStateNotification.IgnoreCommandProperty, value);
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogUT.Utilities;
using Log;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using VyprVPN.Properties;

namespace VyprVPN.Classes.Notifications
{
	public class FreeTrialNotification : ModelBase, INotification
	{
		private readonly ILogger _logger = ConsoleLogger.get_Instance();

		private readonly IGeneralUtilities _generalUtilities = ServiceLocatorExtensions.ResolveType<IGeneralUtilities>(ServiceLocator.get_Default(), null);

		public static readonly PropertyData MessageProperty = ModelBase.RegisterProperty<string>("Message", typeof(string), Resources.NeedAnAccount, null, true, true, true);

		public static readonly PropertyData CommandMessageProperty = ModelBase.RegisterProperty<string>("CommandMessage", typeof(string), Resources.FreeTrialLink, null, true, true, true);

		public static readonly PropertyData CommandProperty = ModelBase.RegisterProperty("Command", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData IsIgnorableProperty = ModelBase.RegisterProperty<bool>("IsIgnorable", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IgnoreCommandProperty = ModelBase.RegisterProperty("IgnoreCommand", typeof(ICommand), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData ImageUriProperty = ModelBase.RegisterProperty("ImageUri", typeof(Uri), null, null, true, true, true);

		public Uri ImageUri
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<Uri>(FreeTrialNotification.ImageUriProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(FreeTrialNotification.ImageUriProperty, value);
			}
		}

		public string Message
		{
			get
			{
				return base.GetValue<string>(FreeTrialNotification.MessageProperty);
			}
			set
			{
				base.SetValue(FreeTrialNotification.MessageProperty, value);
			}
		}

		public string CommandMessage
		{
			get
			{
				return base.GetValue<string>(FreeTrialNotification.CommandMessageProperty);
			}
			set
			{
				base.SetValue(FreeTrialNotification.CommandMessageProperty, value);
			}
		}

		public ICommand Command
		{
			get
			{
				return base.GetValue<ICommand>(FreeTrialNotification.CommandProperty);
			}
			set
			{
				base.SetValue(FreeTrialNotification.CommandProperty, value);
			}
		}

		public bool IsIgnorable
		{
			get
			{
				return base.GetValue<bool>(FreeTrialNotification.IsIgnorableProperty);
			}
			set
			{
				base.SetValue(FreeTrialNotification.IsIgnorableProperty, value);
			}
		}

		public ICommand IgnoreCommand
		{
			get
			{
				return base.GetValue<ICommand>(FreeTrialNotification.IgnoreCommandProperty);
			}
			set
			{
				base.SetValue(FreeTrialNotification.IgnoreCommandProperty, value);
			}
		}

		public FreeTrialNotification()
		{
			try
			{
				this._logger = FileLogger.get_Instance();
			}
			catch
			{
			}
			this.Command = new AsynchronousCommand(delegate
			{
				try
				{
					string text = "https://www.goldenfrog.com/vyprvpn/buy-vpn?utm_source=vyprvpn-windows-" + ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationVersionWithReleaseMode() + "&utm_medium=application&utm_campaign=Create-Account-link&utm_content=3-day-free-trial";
					this._generalUtilities.StartWebUri(text);
				}
				catch (Exception ex)
				{
					this._logger.Log(1, "Failed to load Free Trial webpage in a browser windows: {0}", new object[]
					{
						ex.Message
					});
				}
			}, null, null);
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using Log;
using System;
using System.Windows.Input;
using VyprVPN.Properties;

namespace VyprVPN.Classes.Notifications
{
	public class InAppPurchaseExpiryNotification : ModelBase, INotification
	{
		private readonly ILogger _logger = FileLogger.get_Instance();

		private readonly IVyprVPNController _vyprVpnController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);

		public static readonly PropertyData ImageUriProperty = ModelBase.RegisterProperty<Uri>("ImageUri", typeof(Uri), new Uri("pack://application:,,,/Images/InMenu-AuthenticationError-24.png"), null, true, true, true);

		public static readonly PropertyData MessageProperty = ModelBase.RegisterProperty<string>("Message", typeof(string), Resources.PaymentMethodExpired, null, true, true, true);

		public static readonly PropertyData CommandMessageProperty = ModelBase.RegisterProperty<string>("CommandMessage", typeof(string), Resources.ManageAccount, null, true, true, true);

		public static readonly PropertyData CommandProperty = ModelBase.RegisterProperty("Command", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData IsIgnorableProperty = ModelBase.RegisterProperty<bool>("IsIgnorable", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IgnoreCommandProperty = ModelBase.RegisterProperty("IgnoreCommand", typeof(ICommand), null, null, true, true, true);

		public Uri ImageUri
		{
			get
			{
				return base.GetValue<Uri>(InAppPurchaseExpiryNotification.ImageUriProperty);
			}
			set
			{
				base.SetValue(InAppPurchaseExpiryNotification.ImageUriProperty, value);
			}
		}

		public string Message
		{
			get
			{
				return base.GetValue<string>(InAppPurchaseExpiryNotification.MessageProperty);
			}
			set
			{
				base.SetValue(InAppPurchaseExpiryNotification.MessageProperty, value);
			}
		}

		public string CommandMessage
		{
			get
			{
				return base.GetValue<string>(InAppPurchaseExpiryNotification.CommandMessageProperty);
			}
			set
			{
				base.SetValue(InAppPurchaseExpiryNotification.CommandMessageProperty, value);
			}
		}

		public ICommand Command
		{
			get
			{
				return base.GetValue<ICommand>(InAppPurchaseExpiryNotification.CommandProperty);
			}
			set
			{
				base.SetValue(InAppPurchaseExpiryNotification.CommandProperty, value);
			}
		}

		public bool IsIgnorable
		{
			get
			{
				return base.GetValue<bool>(InAppPurchaseExpiryNotification.IsIgnorableProperty);
			}
			set
			{
				base.SetValue(InAppPurchaseExpiryNotification.IsIgnorableProperty, value);
			}
		}

		public ICommand IgnoreCommand
		{
			get
			{
				return base.GetValue<ICommand>(InAppPurchaseExpiryNotification.IgnoreCommandProperty);
			}
			set
			{
				base.SetValue(InAppPurchaseExpiryNotification.IgnoreCommandProperty, value);
			}
		}

		public InAppPurchaseExpiryNotification()
		{
			try
			{
				this._logger = FileLogger.get_Instance();
			}
			catch
			{
			}
			this.Command = new AsynchronousCommand(delegate
			{
				this._vyprVpnController.LaunchManageAccountUrl();
			}, null, null);
		}
	}
}

using GoldenFrogUT.GoldenFrog;
using System;
using System.Windows.Input;

namespace VyprVPN.Classes.Notifications
{
	public interface IUpdateNotification : INotification
	{
		string ChangeLogMessage
		{
			get;
			set;
		}

		ICommand ChangeLogCommand
		{
			get;
			set;
		}
	}
}

using Catel.Data;
using Catel.IoC;
using GoldenFrogUT.GoldenFrog;
using Log;
using System;
using System.Windows.Input;
using VyprVPN.Properties;

namespace VyprVPN.Classes.Notifications
{
	public class KillSwitchStateNotification : ModelBase, INotification
	{
		private readonly ILogger _logger = ConsoleLogger.get_Instance();

		private readonly IVyprVPNController _vyprVpnvController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);

		public static readonly PropertyData ImageUriProperty = ModelBase.RegisterProperty<Uri>("ImageUri", typeof(Uri), new Uri("pack://application:,,,/Images/InMenu-AuthenticationError-24.png"), null, true, true, true);

		public static readonly PropertyData MessageProperty = ModelBase.RegisterProperty<string>("Message", typeof(string), Resources.KillSwitchActive, null, true, true, true);

		public static readonly PropertyData CommandMessageProperty = ModelBase.RegisterProperty("CommandMessage", typeof(string), null, null, true, true, true);

		public static readonly PropertyData CommandProperty = ModelBase.RegisterProperty("Command", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData IsIgnorableProperty = ModelBase.RegisterProperty<bool>("IsIgnorable", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IgnoreCommandProperty = ModelBase.RegisterProperty("IgnoreCommand", typeof(ICommand), null, null, true, true, true);

		public Uri ImageUri
		{
			get
			{
				return base.GetValue<Uri>(KillSwitchStateNotification.ImageUriProperty);
			}
			set
			{
				base.SetValue(KillSwitchStateNotification.ImageUriProperty, value);
			}
		}

		public string Message
		{
			get
			{
				return base.GetValue<string>(KillSwitchStateNotification.MessageProperty);
			}
			set
			{
				base.SetValue(KillSwitchStateNotification.MessageProperty, value);
			}
		}

		public string CommandMessage
		{
			get
			{
				return base.GetValue<string>(KillSwitchStateNotification.CommandMessageProperty);
			}
			set
			{
				base.SetValue(KillSwitchStateNotification.CommandMessageProperty, value);
			}
		}

		public ICommand Command
		{
			get
			{
				return base.GetValue<ICommand>(KillSwitchStateNotification.CommandProperty);
			}
			set
			{
				base.SetValue(KillSwitchStateNotification.CommandProperty, value);
			}
		}

		public bool IsIgnorable
		{
			get
			{
				return base.GetValue<bool>(KillSwitchStateNotification.IsIgnorableProperty);
			}
			set
			{
				base.SetValue(KillSwitchStateNotification.IsIgnorableProperty, value);
			}
		}

		public ICommand IgnoreCommand
		{
			get
			{
				return base.GetValue<ICommand>(KillSwitchStateNotification.IgnoreCommandProperty);
			}
			set
			{
				base.SetValue(KillSwitchStateNotification.IgnoreCommandProperty, value);
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogVPN;
using Log;
using System;
using System.Windows.Input;
using VyprVPN.Properties;

namespace VyprVPN.Classes.Notifications
{
	public class UBAUsageNotification : ModelBase, INotification
	{
		private readonly ILogger _logger = FileLogger.get_Instance();

		private readonly IVyprVPNController _vyprVpnController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);

		public static readonly PropertyData ImageUriProperty = ModelBase.RegisterProperty<Uri>("ImageUri", typeof(Uri), new Uri("pack://application:,,,/Images/InMenu-AuthenticationError-24.png"), null, true, true, true);

		public static readonly PropertyData DataUsageProperty = ModelBase.RegisterProperty<DataUsage>("DataUsage", typeof(DataUsage), new DataUsage(500000000uL, 500000000uL), null, true, true, true);

		public static readonly PropertyData MessageProperty = ModelBase.RegisterProperty<string>("Message", typeof(string), Resources.FreeAccountOutOfData, null, true, true, true);

		public static readonly PropertyData CommandMessageProperty = ModelBase.RegisterProperty<string>("CommandMessage", typeof(string), Resources.Upgrade, null, true, true, true);

		public static readonly PropertyData CommandProperty = ModelBase.RegisterProperty("Command", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData IsIgnorableProperty = ModelBase.RegisterProperty<bool>("IsIgnorable", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData IgnoreCommandProperty = ModelBase.RegisterProperty("IgnoreCommand", typeof(ICommand), null, null, true, true, true);

		public Uri ImageUri
		{
			get
			{
				return base.GetValue<Uri>(UBAUsageNotification.ImageUriProperty);
			}
			set
			{
				base.SetValue(UBAUsageNotification.ImageUriProperty, value);
			}
		}

		public DataUsage DataUsage
		{
			get
			{
				return base.GetValue<DataUsage>(UBAUsageNotification.DataUsageProperty);
			}
			set
			{
				base.SetValue(UBAUsageNotification.DataUsageProperty, value);
			}
		}

		public string Message
		{
			get
			{
				return base.GetValue<string>(UBAUsageNotification.MessageProperty);
			}
			set
			{
				base.SetValue(UBAUsageNotification.MessageProperty, value);
			}
		}

		public string CommandMessage
		{
			get
			{
				return base.GetValue<string>(UBAUsageNotification.CommandMessageProperty);
			}
			set
			{
				base.SetValue(UBAUsageNotification.CommandMessageProperty, value);
			}
		}

		public ICommand Command
		{
			get
			{
				return base.GetValue<ICommand>(UBAUsageNotification.CommandProperty);
			}
			set
			{
				base.SetValue(UBAUsageNotification.CommandProperty, value);
			}
		}

		public bool IsIgnorable
		{
			get
			{
				return base.GetValue<bool>(UBAUsageNotification.IsIgnorableProperty);
			}
			set
			{
				base.SetValue(UBAUsageNotification.IsIgnorableProperty, value);
			}
		}

		public ICommand IgnoreCommand
		{
			get
			{
				return base.GetValue<ICommand>(UBAUsageNotification.IgnoreCommandProperty);
			}
			set
			{
				base.SetValue(UBAUsageNotification.IgnoreCommandProperty, value);
			}
		}

		public UBAUsageNotification()
		{
			try
			{
				this._logger = FileLogger.get_Instance();
			}
			catch
			{
			}
			this.Command = new AsynchronousCommand(delegate
			{
				this._vyprVpnController.LaunchUpgradeAccountUrl();
			}, null, null);
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using Log;
using System;
using System.Diagnostics;
using System.Windows.Input;
using VyprVPN.Properties;

namespace VyprVPN.Classes.Notifications
{
	public class UpgradeNotification : ModelBase, IUpdateNotification, INotification
	{
		private readonly ILogger _logger = ConsoleLogger.get_Instance();

		private readonly IVyprVPNController _vyprVpnvController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);

		public static readonly PropertyData ImageUriProperty = ModelBase.RegisterProperty<Uri>("ImageUri", typeof(Uri), new Uri("pack://application:,,,/Images/Button-Update-Arrow.png"), null, true, true, true);

		public static readonly PropertyData MessageProperty = ModelBase.RegisterProperty<string>("Message", typeof(string), Resources.UpdateAvailable, null, true, true, true);

		public static readonly PropertyData CommandProperty = ModelBase.RegisterProperty("Command", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData IsIgnorableProperty = ModelBase.RegisterProperty<bool>("IsIgnorable", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData IgnoreCommandProperty = ModelBase.RegisterProperty("IgnoreCommand", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData ChangeLogMessageProperty = ModelBase.RegisterProperty<string>("ChangeLogMessage", typeof(string), Resources.ChangeLog, null, true, true, true);

		public static readonly PropertyData ChangeLogCommandProperty = ModelBase.RegisterProperty("ChangeLogCommand", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData CommandMessageProperty = ModelBase.RegisterProperty<string>("CommandMessage", typeof(string), Resources.Install, null, true, true, true);

		public Uri ImageUri
		{
			get
			{
				return base.GetValue<Uri>(UpgradeNotification.ImageUriProperty);
			}
			set
			{
				base.SetValue(UpgradeNotification.ImageUriProperty, value);
			}
		}

		public string Message
		{
			get
			{
				if (this._vyprVpnvController.UpgradeInfo.get_UpdateReleaseMode() == 1)
				{
					return string.Format("{0} (Beta)", base.GetValue<string>(UpgradeNotification.MessageProperty));
				}
				return base.GetValue<string>(UpgradeNotification.MessageProperty);
			}
			set
			{
				base.SetValue(UpgradeNotification.MessageProperty, value);
			}
		}

		public ICommand Command
		{
			get
			{
				return base.GetValue<ICommand>(UpgradeNotification.CommandProperty);
			}
			set
			{
				base.SetValue(UpgradeNotification.CommandProperty, value);
			}
		}

		public bool IsIgnorable
		{
			get
			{
				return base.GetValue<bool>(UpgradeNotification.IsIgnorableProperty);
			}
			set
			{
				base.SetValue(UpgradeNotification.IsIgnorableProperty, value);
			}
		}

		public ICommand IgnoreCommand
		{
			get
			{
				return base.GetValue<ICommand>(UpgradeNotification.IgnoreCommandProperty);
			}
			set
			{
				base.SetValue(UpgradeNotification.IgnoreCommandProperty, value);
			}
		}

		public string ChangeLogMessage
		{
			get
			{
				return base.GetValue<string>(UpgradeNotification.ChangeLogMessageProperty);
			}
			set
			{
				base.SetValue(UpgradeNotification.ChangeLogMessageProperty, value);
			}
		}

		public ICommand ChangeLogCommand
		{
			get
			{
				return base.GetValue<ICommand>(UpgradeNotification.ChangeLogCommandProperty);
			}
			set
			{
				base.SetValue(UpgradeNotification.ChangeLogCommandProperty, value);
			}
		}

		public string CommandMessage
		{
			get
			{
				return base.GetValue<string>(UpgradeNotification.CommandMessageProperty);
			}
			set
			{
				base.SetValue(UpgradeNotification.CommandMessageProperty, value);
			}
		}

		public UpgradeNotification()
		{
			try
			{
				this._logger = FileLogger.get_Instance();
			}
			catch
			{
			}
			this.ChangeLogCommand = new AsynchronousCommand(delegate
			{
				try
				{
					if (this._vyprVpnvController.UpgradeInfo.get_UpdateReleaseMode() == 1)
					{
						Process.Start("https://www.goldenfrog.com/downloads/vyprvpn/desktop/beta/WinReleaseNotes.html");
					}
					else
					{
						Process.Start("https://www.goldenfrog.com/vyprvpn/changelog/windows");
					}
				}
				catch (Exception ex)
				{
					this._logger.Log(1, "Failed to load Change Log webpage in a browser windows: {0}", new object[]
					{
						ex.Message
					});
				}
			}, null, null);
			this.Command = this._vyprVpnvController.InstallUpgradeCommand;
		}
	}
}
