using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using Catel.Services;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogUT.Utilities;
using GoldenFrogVPN;
using GoldenFrogVPN.Classes;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Views.PreferencesWindow.Messages;
using VyprVPN.Views.UpdateInformationWindow;

namespace VyprVPN.ViewModels
{
	public class AccountViewModel : VyprViewModel
	{
		public static readonly PropertyData UsernameProperty = ModelBase.RegisterProperty<string>("Username", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData HasReferAFriendProperty = ModelBase.RegisterProperty<bool>("HasReferAFriend", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData AccountTypeProperty = ModelBase.RegisterProperty<string>("AccountType", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData DataUsageProperty = ModelBase.RegisterProperty("DataUsage", typeof(DataUsage), null, null, true, true, true);

		public static readonly PropertyData AccountIsUsageBasedProperty = ModelBase.RegisterProperty<bool>("AccountIsUsageBased", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData CanUpgradeToUnlimitedProperty = ModelBase.RegisterProperty<bool>("CanUpgradeToUnlimited", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData VersionProperty = ModelBase.RegisterProperty<bool>("Version", typeof(string), true, null, true, true, true);

		public static readonly PropertyData UpdateStateProperty = ModelBase.RegisterProperty<bool>("UpdateState", typeof(UpdateCheckState), true, null, true, true, true);

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		private bool _checkingForUpdates;

		private IGeneralUtilities _generalUtilities = ServiceLocatorExtensions.ResolveType<IGeneralUtilities>(ServiceLocator.get_Default(), null);

		[CompilerGenerated]
		public static readonly PropertyData LooseUpdatesEnabledProperty = ModelBase.RegisterProperty("LooseUpdatesEnabled", typeof(bool), null, null, true, true, true);

		public string Username
		{
			get
			{
				return (string)base.GetValue(AccountViewModel.UsernameProperty);
			}
			set
			{
				base.SetValue(AccountViewModel.UsernameProperty, value);
			}
		}

		public bool HasReferAFriend
		{
			get
			{
				return (bool)base.GetValue(AccountViewModel.HasReferAFriendProperty);
			}
			set
			{
				base.SetValue(AccountViewModel.HasReferAFriendProperty, value);
			}
		}

		public string AccountType
		{
			get
			{
				return (string)base.GetValue(AccountViewModel.AccountTypeProperty);
			}
			set
			{
				base.SetValue(AccountViewModel.AccountTypeProperty, value);
			}
		}

		public DataUsage DataUsage
		{
			get
			{
				return (DataUsage)base.GetValue(AccountViewModel.DataUsageProperty);
			}
			set
			{
				base.SetValue(AccountViewModel.DataUsageProperty, value);
			}
		}

		public bool AccountIsUsageBased
		{
			get
			{
				return (bool)base.GetValue(AccountViewModel.AccountIsUsageBasedProperty);
			}
			set
			{
				base.SetValue(AccountViewModel.AccountIsUsageBasedProperty, value);
			}
		}

		public bool CanUpgradeToUnlimited
		{
			get
			{
				return (bool)base.GetValue(AccountViewModel.CanUpgradeToUnlimitedProperty);
			}
			set
			{
				base.SetValue(AccountViewModel.CanUpgradeToUnlimitedProperty, value);
			}
		}

		public string Version
		{
			get
			{
				return base.GetValue<string>(AccountViewModel.VersionProperty);
			}
			private set
			{
				base.SetValue(AccountViewModel.VersionProperty, value);
			}
		}

		public AsynchronousCommand UpdateCommand
		{
			get;
			private set;
		}

		public UpdateCheckState UpdateState
		{
			get
			{
				return base.GetValue<UpdateCheckState>(AccountViewModel.UpdateStateProperty);
			}
			set
			{
				base.SetValue(AccountViewModel.UpdateStateProperty, value);
			}
		}

		[Model]
		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(AccountViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(AccountViewModel.PreferencesModelProperty, value);
			}
		}

		public AsynchronousCommand LogoutCommand
		{
			get;
			private set;
		}

		public ICommand ManageAccountCommand
		{
			get;
			private set;
		}

		public ICommand UpgradeAccountCommand
		{
			get;
			private set;
		}

		[ViewModelToModel("PreferencesModel", "LooseUpdatesEnabled"), CompilerGenerated]
		public bool LooseUpdatesEnabled
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(AccountViewModel.LooseUpdatesEnabledProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(AccountViewModel.LooseUpdatesEnabledProperty, value);
			}
		}

		public AccountViewModel()
		{
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			MessageBase<UsernameChangedMessage, string>.Register(this, delegate(UsernameChangedMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.Username = e.get_Data();
				});
			}, null);
			this.LogoutCommand = new AsynchronousCommand(delegate
			{
				base.logger.Log(0, "AccountViewModel: Logout button clicked");
				base.VyprVPNController.Logout();
				base.logger.Log(0, "AccountViewModel: Logout complete, sending CloseSettingsWindowMessage");
				MessageBase<CloseSettingsWindowMessage, bool>.SendWith(true, null);
			}, () => base.VyprVPNController.IsLoggedIn, null);
			this.Version = ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationVersionWithReleaseMode();
			this.Username = base.VyprVPNController.Username;
			this.AccountType = base.VyprVPNController.AccountType;
			this.DataUsage = base.VyprVPNController.DataUsage;
			this.AccountIsUsageBased = base.VyprVPNController.IsUsageBased;
			this.CanUpgradeToUnlimited = (base.VyprVPNController.AccountLevel == EnumUtilities.GetEnumDescription(0));
			if (base.VyprVPNController != null && base.VyprVPNController.AccountSettingsBag != null && base.VyprVPNController.AccountSettingsBag.get_URLs() != null)
			{
				if (base.VyprVPNController.AccountSettingsBag.get_URLs().ContainsKey("control_panel_vpn_refer"))
				{
					this.HasReferAFriend = true;
				}
			}
			else
			{
				base.logger.Log(3, "AcccountSettingsBag is null and we are trying to construt that AccountViewModel");
			}
			this.ManageAccountCommand = new Command(new Action(this.doManageAccountCommand), null, null);
			this.UpgradeAccountCommand = new Command(new Action(this.doUpgradeAccountCommand), null, null);
			this.UpdateCommand = new AsynchronousCommand(new Action(this.StartUpdate), () => !this._checkingForUpdates, null);
			base.logger.Log(0, "AccountViewModel instantiated");
		}

		private void doManageAccountCommand()
		{
			this._generalUtilities.StartWebUri(base.VyprVPNController.GetControlPanelLink());
		}

		private void doUpgradeAccountCommand()
		{
			string text = base.VyprVPNController.GetUpgradeAccountLink();
			text = base.VyprVPNController.AddGoogleAnalyticsToURL(text, "upgrade", "upgrade-to-unlimited");
			this._generalUtilities.StartWebUri(text);
		}

		private void StartUpdate()
		{
			this._checkingForUpdates = true;
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.UpdateState = UpdateCheckState.Checking;
			});
			Task.Run(delegate
			{
				base.VyprVPNController.GetAvailableUpgrade(delegate(object sender, GetAvailableUpdateSpecCompletedEventArgs e)
				{
					SerializableReleaseSpec releaseSpec = e.get_ReleaseSpec();
					Version versionToSkip = base.VyprVPNController.VersionToSkip;
					IUIHelper iUIHelper = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
					this._checkingForUpdates = false;
					if (releaseSpec == null || releaseSpec.get_Version() <= versionToSkip)
					{
						iUIHelper.Dispatch(delegate
						{
							this.UpdateState = UpdateCheckState.NoneFound;
						});
						return;
					}
					iUIHelper.Dispatch(delegate
					{
						this.UpdateState = UpdateCheckState.NoStatus;
					});
					UpdateInformationViewModel updateWindowModel = new UpdateInformationViewModel(releaseSpec);
					iUIHelper.Dispatch(delegate
					{
						if ((await ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(this), null).ShowDialog(updateWindowModel, null)) ?? false)
						{
							this.UIState.ActiveScreen = Screen.Account;
						}
					});
				}, delegate(object sender, GetAvailableUpdateSpecErrorEventArgs e)
				{
					ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
					{
						this.UpdateState = UpdateCheckState.Error;
					});
				});
			});
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogUT.Utilities;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Properties;
using VyprVPN.Views.FeedbackDialogs;

namespace VyprVPN.ViewModels
{
	public class ActionOverflowViewModel : VyprViewModel
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ActionOverflowViewModel.<>c <>9 = new ActionOverflowViewModel.<>c();

			public static Action <>9__49_0;

			public static Action <>9__51_0;

			internal void <OnContactSupportCommandExecute>b__49_0()
			{
				new FeedbackWindow(new ContactSupportViewModel())
				{
					Owner = Application.Current.MainWindow
				}.ShowDialog();
			}

			internal void <OnReportBugCommandExecute>b__51_0()
			{
				new FeedbackWindow(new BugReportViewModel())
				{
					Owner = Application.Current.MainWindow
				}.ShowDialog();
			}
		}

		public static readonly PropertyData CanReferAFriendProperty = ModelBase.RegisterProperty<bool>("CanReferAFriend", typeof(bool), false, null, true, true, true);

		public ICommand SettingsCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand FAQCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand ContactSupportCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand FeatureRequestCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand ReportBugCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand ForumCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand VyprBusinessCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand ReferAFriendCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand VyprVPNAppsCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand MoreProductsCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand TakeBackInternetCommand
		{
			get;
			private set;
		}

		public bool CanReferAFriend
		{
			get
			{
				return (bool)base.GetValue(ActionOverflowViewModel.CanReferAFriendProperty);
			}
			set
			{
				base.SetValue(ActionOverflowViewModel.CanReferAFriendProperty, value);
			}
		}

		public ActionOverflowViewModel()
		{
			this.InitializeCommands();
			this.CanReferAFriend = (base.VyprVPNController.AccountLevel != EnumUtilities.GetEnumDescription(0));
			base.VyprVPNController.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(this.VyprVPNController_PropertyChanged);
			base.logger.Log(0, "ActionOverflowViewModel instantiated");
		}

		private void VyprVPNController_PropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "AccountLevel")
			{
				this.CanReferAFriend = (base.VyprVPNController.AccountLevel != EnumUtilities.GetEnumDescription(0));
			}
		}

		private void InitializeCommands()
		{
			this.ContactSupportCommand = new AsynchronousCommand(new Action(this.OnContactSupportCommandExecute), null, null);
			this.SettingsCommand = new Command(new Action(this.OnSettingsCommandExecute), null, null);
			this.FeatureRequestCommand = new AsynchronousCommand(new Action(this.OnFeatureRequestCommandExecute), null, null);
			this.ReportBugCommand = new AsynchronousCommand(new Action(this.OnReportBugCommandExecute), null, null);
			this.FAQCommand = new AsynchronousCommand(new Action(this.OnFAQCommandExecute), null, null);
			this.ForumCommand = new AsynchronousCommand(new Action(this.OnForumCommandExecute), null, null);
			this.VyprBusinessCommand = new AsynchronousCommand(new Action(this.OnVyprBusinessCommandExecute), null, null);
			this.ReferAFriendCommand = new AsynchronousCommand(new Action(this.OnReferAFriendCommandExecute), null, null);
			this.VyprVPNAppsCommand = new AsynchronousCommand(new Action(this.OnVyprVPNAppsCommandExecute), null, null);
			this.MoreProductsCommand = new AsynchronousCommand(new Action(this.OnMoreProductsCommandExecute), null, null);
			this.TakeBackInternetCommand = new AsynchronousCommand(new Action(this.OnTakeBackInternetCommandExecute), null, null);
		}

		private async void OnSettingsCommandExecute()
		{
			await VyprVPNSettings.ShowSettings();
		}

		private void OnFAQCommandExecute()
		{
			base.logger.Log(0, "Executing FAQ command");
			try
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).UpdateCurrentThreadLocale();
				Process.Start(ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).AddGoogleAnalyticsToURL(Url.FAQ, "help", "help-faq"));
			}
			catch (Exception ex)
			{
				base.logger.Log(1, "Unable to shell exec URL {0}: {1}", new object[]
				{
					Url.FAQ,
					ex.Message
				});
			}
		}

		private void OnContactSupportCommandExecute()
		{
			base.logger.Log(0, "Executing Contact Support command");
			IUIHelper arg_3B_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			Action arg_3B_1;
			if ((arg_3B_1 = ActionOverflowViewModel.<>c.<>9__49_0) == null)
			{
				arg_3B_1 = (ActionOverflowViewModel.<>c.<>9__49_0 = new Action(ActionOverflowViewModel.<>c.<>9.<OnContactSupportCommandExecute>b__49_0));
			}
			arg_3B_0.Dispatch(arg_3B_1);
		}

		private void OnFeatureRequestCommandExecute()
		{
			base.logger.Log(0, "Executing Feature Request command");
			try
			{
				Process.Start(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.FeatureRequest, "feedback", "feature-request"));
			}
			catch (Exception ex)
			{
				base.logger.Log(1, "Unable to shell exec url {0}: {1}", new object[]
				{
					Url.FeatureRequest,
					ex.Message
				});
			}
		}

		private void OnReportBugCommandExecute()
		{
			base.logger.Log(0, "Executing Report Bug command");
			IUIHelper arg_3B_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			Action arg_3B_1;
			if ((arg_3B_1 = ActionOverflowViewModel.<>c.<>9__51_0) == null)
			{
				arg_3B_1 = (ActionOverflowViewModel.<>c.<>9__51_0 = new Action(ActionOverflowViewModel.<>c.<>9.<OnReportBugCommandExecute>b__51_0));
			}
			arg_3B_0.Dispatch(arg_3B_1);
		}

		private void OnForumCommandExecute()
		{
			base.logger.Log(0, "Executing Forum command");
			try
			{
				Process.Start(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.Forum, "feedback", "forums"));
			}
			catch (Exception ex)
			{
				base.logger.Log(1, "Unable to shell exec url {0}: {1}", new object[]
				{
					Url.Forum,
					ex.Message
				});
			}
		}

		private void OnTakeBackInternetCommandExecute()
		{
			base.logger.Log(0, "Executing Take Back Your Internet command");
			try
			{
				Process.Start(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.TakeBackInternet, "Product", "take-back-your-internet"));
			}
			catch (Exception ex)
			{
				base.logger.Log(1, "Unable to shell exec URL {0}: {1}", new object[]
				{
					Url.TakeBackInternet,
					ex.Message
				});
			}
		}

		private void OnMoreProductsCommandExecute()
		{
			base.logger.Log(0, "Executing More Products command");
			try
			{
				Process.Start(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.GoldenFrog, "faq", "more-products-by-golden-frog"));
			}
			catch (Exception ex)
			{
				base.logger.Log(1, "Unable to shell exec URL {0}: {1}", new object[]
				{
					Url.GoldenFrog,
					ex.Message
				});
			}
		}

		private void OnVyprVPNAppsCommandExecute()
		{
			base.logger.Log(0, "Executing VyprVPN Apps command");
			try
			{
				Process.Start(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.VyprVPNApps, "vyprvpn", "vyprvpn-apps"));
			}
			catch (Exception ex)
			{
				base.logger.Log(1, "Unable to shell exec URL {0}: {1}", new object[]
				{
					Url.VyprVPNApps,
					ex.Message
				});
			}
		}

		private void OnReferAFriendCommandExecute()
		{
			base.logger.Log(0, "Executing Refer A Friend command");
			try
			{
				string text = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ObjectExtensions.GetServiceLocator(this), null).GetReferAFriendLink();
				text = base.VyprVPNController.AddGoogleAnalyticsToURL(text, "refer-a-friend", "refer-a-friend");
				Process.Start(text);
			}
			catch (Exception ex)
			{
				base.logger.Log(1, "Unable to shell exec URL {0}: {1}", new object[]
				{
					Url.ReferAFriend,
					ex.Message
				});
			}
		}

		private void OnVyprBusinessCommandExecute()
		{
			base.logger.Log(0, "Executing VyprVPN for Business command");
			try
			{
				Process.Start(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.VyprVPNForBusiness, "product", "vyprvpn-for-business"));
			}
			catch (Exception ex)
			{
				base.logger.Log(1, "Unable to shell exec URL {0}: {1}", new object[]
				{
					Url.VyprVPNForBusiness,
					ex.Message
				});
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using Catel.Services;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogVPN;
using GoldenFrogVPN.Enums;
using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Properties;
using VyprVPN.Views.PreferencesWindow.Advanced;

namespace VyprVPN.ViewModels
{
	public class AdvancedViewModel : VyprViewModel
	{
		private int[] _logVerbosityLevels = new int[]
		{
			0,
			1,
			2,
			3,
			4,
			5,
			6,
			7,
			8,
			9,
			10,
			11
		};

		private Tuple<string, TapAdapterType>[] _tapTypes;

		private IUIHelper _uiHelper = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		public static readonly PropertyData HasOpenVpnOrChameleonSelectedProperty = ModelBase.RegisterProperty<bool>("HasOpenVpnOrChameleonSelected", typeof(bool), false, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData SelectedOpenVpnLogVerbosityLevelProperty = ModelBase.RegisterProperty("SelectedOpenVpnLogVerbosityLevel", typeof(int), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData SelectedRouteDelayProperty = ModelBase.RegisterProperty("SelectedRouteDelay", typeof(int), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData SelectedMtuProperty = ModelBase.RegisterProperty("SelectedMtu", typeof(int), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData SelectedTlsTimeoutProperty = ModelBase.RegisterProperty("SelectedTlsTimeout", typeof(int), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData SelectedTAPAdapterProperty = ModelBase.RegisterProperty("SelectedTAPAdapter", typeof(TapAdapterType), null, null, true, true, true);

		public AsynchronousCommand OptimizeMtuCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand AddParametersCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand RestoreSettingsCommand
		{
			get;
			private set;
		}

		[Model]
		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(AdvancedViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(AdvancedViewModel.PreferencesModelProperty, value);
			}
		}

		public bool HasOpenVpnOrChameleonSelected
		{
			get
			{
				bool result = false;
				if (this.PreferencesModel != null)
				{
					result = (this.PreferencesModel.Protocol == 4 || this.PreferencesModel.Protocol == 2 || this.PreferencesModel.Protocol == 3);
				}
				return result;
			}
		}

		public int[] LogVerbosityLevels
		{
			get
			{
				return this._logVerbosityLevels;
			}
		}

		public Tuple<string, TapAdapterType>[] TAPTypes
		{
			get
			{
				return this._tapTypes;
			}
		}

		public Uri VerbositySupportUri
		{
			get
			{
				Uri result;
				Uri.TryCreate(Url.VerbositySupport + "?utm_source=vyprvpn-windows-" + ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationVersionWithReleaseMode() + "&utm_medium=application&utm_campaign=help&utm_content=read-about-verbosity", UriKind.Absolute, out result);
				return result;
			}
		}

		public Uri MtuSupportUri
		{
			get
			{
				Uri result;
				Uri.TryCreate(Url.MtuSupport + "?utm_source=vyprvpn-windows-" + ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_ApplicationVersionWithReleaseMode() + "&utm_medium=application&utm_campaign=help&utm_content=read-about-MTU", UriKind.Absolute, out result);
				return result;
			}
		}

		[ViewModelToModel("PreferencesModel", "SelectedOpenVpnLogVerbosityLevel"), CompilerGenerated]
		public int SelectedOpenVpnLogVerbosityLevel
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<int>(AdvancedViewModel.SelectedOpenVpnLogVerbosityLevelProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(AdvancedViewModel.SelectedOpenVpnLogVerbosityLevelProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "SelectedRouteDelay"), CompilerGenerated]
		public int SelectedRouteDelay
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<int>(AdvancedViewModel.SelectedRouteDelayProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(AdvancedViewModel.SelectedRouteDelayProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "SelectedMtu"), CompilerGenerated]
		public int SelectedMtu
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<int>(AdvancedViewModel.SelectedMtuProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(AdvancedViewModel.SelectedMtuProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "SelectedTlsTimeout"), CompilerGenerated]
		public int SelectedTlsTimeout
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<int>(AdvancedViewModel.SelectedTlsTimeoutProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(AdvancedViewModel.SelectedTlsTimeoutProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "SelectedTAPAdapter"), CompilerGenerated]
		public TapAdapterType SelectedTAPAdapter
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<TapAdapterType>(AdvancedViewModel.SelectedTAPAdapterProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(AdvancedViewModel.SelectedTAPAdapterProperty, value);
			}
		}

		public AdvancedViewModel()
		{
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			this.PreferencesModel.PropertyChangedEvent += new System.ComponentModel.PropertyChangedEventHandler(this.PreferencesModel_PropertyChangedEvent);
			ServiceLocatorExtensions.RegisterInstance<AdvancedViewModel>(ObjectExtensions.GetServiceLocator(this), this, null);
			this.OptimizeMtuCommand = new AsynchronousCommand(new Action(this.OnOptimizeMtu), null, null);
			this.AddParametersCommand = new AsynchronousCommand(new Action(this.OnAddParametersCommand), null, null);
			this.RestoreSettingsCommand = new AsynchronousCommand(new Action(this.OnRestoreSettingsCommand), new Func<bool>(this.RestoreSettingsCommandCanExecute), null);
			CommandManager.RequerySuggested += new EventHandler(this.RequerySuggested);
			this._tapTypes = new Tuple<string, TapAdapterType>[]
			{
				new Tuple<string, TapAdapterType>(Resources.OpenVPNTAPOptionText, 0),
				new Tuple<string, TapAdapterType>(Resources.VyprVPNTAPOptionText, 1)
			};
			base.logger.Log(0, "AdvancedViewModel instantiated");
		}

		private void PreferencesModel_PropertyChangedEvent(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "SelectedRouteDelay")
			{
				base.RaisePropertyChanged<int>(() => this.PreferencesModel.SelectedRouteDelay);
			}
			if (e.PropertyName == "SelectedTlsTimeout")
			{
				base.RaisePropertyChanged<int>(() => this.PreferencesModel.SelectedTlsTimeout);
			}
			if (e.PropertyName == "SelectedOpenVpnLogVerbosityLevel")
			{
				base.RaisePropertyChanged<int>(() => this.PreferencesModel.SelectedOpenVpnLogVerbosityLevel);
			}
			if (e.PropertyName == "SelectedMtu")
			{
				base.RaisePropertyChanged<int>(() => this.PreferencesModel.SelectedMtu);
			}
			if (e.PropertyName == "SelectedTAPAdapter")
			{
				base.RaisePropertyChanged<TapAdapterType>(() => this.PreferencesModel.SelectedTAPAdapter);
			}
			if (e.PropertyName == "AdditionalOpenVpnParameters")
			{
				base.RaisePropertyChanged<string>(() => this.PreferencesModel.AdditionalOpenVpnParameters);
			}
		}

		private void OnOptimizeMtu()
		{
			this._uiHelper.Dispatch(delegate
			{
				OptimizeMtuDialogViewModel optimizeMtuDialogViewModel = new OptimizeMtuDialogViewModel();
				await ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(this), null).ShowDialog(optimizeMtuDialogViewModel, null);
			});
		}

		private void OnAddParametersCommand()
		{
			this._uiHelper.Dispatch(delegate
			{
				AddParametersDialogViewModel addParametersDialogViewModel = new AddParametersDialogViewModel();
				await ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(this), null).ShowDialog(addParametersDialogViewModel, null);
			});
		}

		private void OnRestoreSettingsCommand()
		{
			this._uiHelper.Dispatch(delegate
			{
				SettingsRestoreDialogViewModel settingsRestoreDialogViewModel = new SettingsRestoreDialogViewModel();
				await ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(this), null).ShowDialog(settingsRestoreDialogViewModel, null);
			});
		}

		private bool RestoreSettingsCommandCanExecute()
		{
			IOpenVpnCommandLineConfig config = ServiceLocatorExtensions.ResolveType<IOpenVpnCommandLineConfig>(ServiceLocator.get_Default(), null);
			return !this.PreferencesModelAgreesWithCommandLineConfig(this.PreferencesModel, config);
		}

		public bool PreferencesModelAgreesWithCommandLineConfig(IPreferencesModel preferencesModel, IOpenVpnCommandLineConfig config)
		{
			if (preferencesModel == null && config == null)
			{
				return true;
			}
			if (preferencesModel == null || config == null)
			{
				return false;
			}
			bool flag = (string.IsNullOrWhiteSpace(config.get_AdditionalOpenVpnParameters()) && string.IsNullOrWhiteSpace(preferencesModel.AdditionalOpenVpnParameters)) || config.get_AdditionalOpenVpnParameters() == preferencesModel.AdditionalOpenVpnParameters;
			return preferencesModel.SelectedRouteDelay == config.get_SelectedRouteDelay() && preferencesModel.SelectedTlsTimeout == config.get_SelectedTlsTimeout() && preferencesModel.SelectedOpenVpnLogVerbosityLevel == config.get_SelectedOpenVpnLogVerbosityLevel() && preferencesModel.SelectedMtu == config.get_SelectedMtu() && flag;
		}

		private void RequerySuggested(object sender, EventArgs e)
		{
			IViewModelCommandManager viewModelCommandManager = ViewModelExtensions.GetViewModelCommandManager(this);
			if (viewModelCommandManager != null)
			{
				try
				{
					viewModelCommandManager.InvalidateCommands(false);
					return;
				}
				catch (Exception ex)
				{
					base.logger.Log(3, "Invalidating commands on advanced tab failed. Ex: {0}", new object[]
					{
						ex
					});
					return;
				}
			}
			base.logger.Log(3, "GetViewModelCommandManager somehow returned null for the AdvancedViewModel");
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("PreferencesModel"))
			{
				base.RaisePropertyChanged("HasOpenVpnOrChameleonSelected");
			}
		}
	}
}

using System;
using System.Windows;

namespace VyprVPN.ViewModels
{
	public class BugReportViewModel : FeedbackViewModel
	{
		public BugReportViewModel()
		{
			base.Title = FeedbackViewModel.ResourceManager.GetString("BugReportDialogTitle");
			base.FeedbackHintText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogFeedbackHintText");
			base.FeedbackFormDescription = FeedbackViewModel.ResourceManager.GetString("BugReportDialogDescription");
			base.EmailHintText = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogEmailHintText");
			base.EmailFieldHeadingText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogEmailHeadingText");
			base.IncludeLogsText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogConnectionLogCheckboxText");
			base.SubmitButtonText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogSubmitButtonText");
			base.ShowIncludeLogs = true;
			base.IncludeLogs = true;
			base.FeedbackProgressDescriptionText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogProgressDescription");
			base.FeedbackProgressText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogProgressText");
			base.FeedbackSuccessDescriptionText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogSendSuccessDescription");
			base.FeedbackFailureDescriptionText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogSendFailureDescription");
		}

		protected override void SubmitButtonClickedExecuted(Window window)
		{
			this.SubmitFormData(0);
		}

		protected override void ResendButtonClickedExecuted(Window window)
		{
			this.SubmitFormData(0);
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogVPN;
using GoldenFrogVPN.Enums;
using System;
using VyprVPN.Classes;
using VyprVPN.Properties;

namespace VyprVPN.ViewModels
{
	public class ConfigureProtocolViewModel : VyprViewModel
	{
		private Protocol _protocolToConfigure;

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		public static readonly PropertyData ChangesMadeProperty = ModelBase.RegisterProperty<bool>("ChangesMade", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData DialogTitleProperty = ModelBase.RegisterProperty("DialogTitle", typeof(string), null, null, true, true, true);

		public static readonly PropertyData ConfigurationProperty = ModelBase.RegisterProperty("Configuration", typeof(OpenVpnPortsAndTransportProtocolConfig), null, null, true, true, true);

		public static readonly PropertyData SelectedPortTextProperty = ModelBase.RegisterProperty("SelectedPortText", typeof(string), null, null, true, true, true);

		public static readonly PropertyData ManuallyEnteredPortProperty = ModelBase.RegisterProperty("ManuallyEnteredPort", typeof(string), null, null, true, true, true);

		public static readonly PropertyData ShowPortNumberErrorProperty = ModelBase.RegisterProperty<bool>("ShowPortNumberError", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData EncryptionLevelVisibleProperty = ModelBase.RegisterProperty<bool>("EncryptionLevelVisible", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData EncryptionLevelProperty = ModelBase.RegisterProperty("EncryptionLevel", typeof(Protocol), null, null, true, true, true);

		public static readonly PropertyData AutomaticPortSelectionProperty = ModelBase.RegisterProperty("AutomaticPortSelection", typeof(bool), null, null, true, true, true);

		[Model]
		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(ConfigureProtocolViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.PreferencesModelProperty, value);
			}
		}

		public bool ChangesMade
		{
			get
			{
				return base.GetValue<bool>(ConfigureProtocolViewModel.ChangesMadeProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.ChangesMadeProperty, value);
				this.ShowPortNumberError = false;
			}
		}

		public string DialogTitle
		{
			get
			{
				return base.GetValue<string>(ConfigureProtocolViewModel.DialogTitleProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.DialogTitleProperty, value);
			}
		}

		public OpenVpnPortsAndTransportProtocolConfig Configuration
		{
			get
			{
				return base.GetValue<OpenVpnPortsAndTransportProtocolConfig>(ConfigureProtocolViewModel.ConfigurationProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.ConfigurationProperty, value);
			}
		}

		public string SelectedPortText
		{
			get
			{
				return base.GetValue<string>(ConfigureProtocolViewModel.SelectedPortTextProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.SelectedPortTextProperty, value);
			}
		}

		public string ManuallyEnteredPort
		{
			get
			{
				return base.GetValue<string>(ConfigureProtocolViewModel.ManuallyEnteredPortProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.ManuallyEnteredPortProperty, value);
				this.ChangesMade = true;
			}
		}

		public bool ShowPortNumberError
		{
			get
			{
				return base.GetValue<bool>(ConfigureProtocolViewModel.ShowPortNumberErrorProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.ShowPortNumberErrorProperty, value);
			}
		}

		public string PortRange
		{
			get
			{
				string text = "";
				if (this.Configuration != null && this.Configuration.get_AllowedPorts() != null && this.Configuration.get_AllowedPorts().get_Ranges() != null)
				{
					for (int i = 0; i < this.Configuration.get_AllowedPorts().get_Ranges().Count; i++)
					{
						if (i != 0)
						{
							text += ", ";
						}
						PortRange portRange = this.Configuration.get_AllowedPorts().get_Ranges()[i];
						if (portRange.get_MinPort() == portRange.get_MaxPort())
						{
							text += portRange.get_MinPort();
						}
						else
						{
							text = string.Concat(new object[]
							{
								text,
								portRange.get_MinPort(),
								"-",
								portRange.get_MaxPort()
							});
						}
					}
				}
				return string.Format("({0}: {1})", Resources.Range, text);
			}
		}

		public bool EncryptionLevelVisible
		{
			get
			{
				return base.GetValue<bool>(ConfigureProtocolViewModel.EncryptionLevelVisibleProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.EncryptionLevelVisibleProperty, value);
			}
		}

		public Protocol EncryptionLevel
		{
			get
			{
				return base.GetValue<Protocol>(ConfigureProtocolViewModel.EncryptionLevelProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.EncryptionLevelProperty, value);
				if (value != this._protocolToConfigure)
				{
					this.SetProtocolToConfigure(value);
					base.RaisePropertyChanged("PortRange");
				}
				this.ChangesMade = true;
			}
		}

		public bool AutomaticPortSelection
		{
			get
			{
				return base.GetValue<bool>(ConfigureProtocolViewModel.AutomaticPortSelectionProperty);
			}
			set
			{
				base.SetValue(ConfigureProtocolViewModel.AutomaticPortSelectionProperty, value);
				this.ChangesMade = true;
			}
		}

		public ConfigureProtocolViewModel()
		{
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
		}

		public ConfigureProtocolViewModel(Protocol protocolToConfigure)
		{
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			if (protocolToConfigure == 3 || protocolToConfigure == 2)
			{
				this.DialogTitle = string.Format("{0} {1}", Resources.Configure, Resources.OpenVPNPreferenceLabel);
				this.EncryptionLevelVisible = true;
				this.EncryptionLevel = this.PreferencesModel.SelectedOpenVPNProtocol;
			}
			else
			{
				this.DialogTitle = string.Format("{0} {1}", Resources.Configure, Resources.ChameleonPreferenceLabel);
				this.SetProtocolToConfigure(protocolToConfigure);
			}
			this.ChangesMade = false;
		}

		private void SetProtocolToConfigure(Protocol protocolToConfigure)
		{
			this._protocolToConfigure = protocolToConfigure;
			this.Configuration = this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs.get_Item(protocolToConfigure);
			if (this.Configuration == null)
			{
				base.logger.Log(3, "{0} Configuration received from preferences model was null.", new object[]
				{
					protocolToConfigure
				});
				return;
			}
			if (!this.Configuration.get_AutomaticPortWorked())
			{
				this.SelectedPortText = Resources.Port + ":";
			}
			else
			{
				this.SelectedPortText = string.Format("{0}: {1}", Resources.Port, this.Configuration.get_SelectedPort());
			}
			if (this.Configuration.get_SelectedManualPort() != 0)
			{
				this.ManuallyEnteredPort = string.Concat(this.Configuration.get_SelectedManualPort());
			}
			this.AutomaticPortSelection = this.Configuration.get_AutomaticPortSelection();
		}

		public void SaveChanges()
		{
			this.Configuration.set_AutomaticPortSelection(this.AutomaticPortSelection);
			if (!this.Configuration.get_AutomaticPortSelection())
			{
				this.Configuration.set_SelectedPort(int.Parse(this.ManuallyEnteredPort));
			}
			Protocol protocol = this._protocolToConfigure;
			if (this._protocolToConfigure == 3 || this._protocolToConfigure == 2)
			{
				this.PreferencesModel.SelectedOpenVPNProtocol = this.EncryptionLevel;
				protocol = this.EncryptionLevel;
			}
			OpenVpnPortsAndTransportProtocolConfigCollection openVpnPortsAndTransportProtocolConfigs = this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs;
			openVpnPortsAndTransportProtocolConfigs.set_Item(protocol, this.Configuration);
			this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs = openVpnPortsAndTransportProtocolConfigs;
		}

		public bool ValidateEnteredData()
		{
			bool result = false;
			if (!this.AutomaticPortSelection)
			{
				try
				{
					int num = int.Parse(this.ManuallyEnteredPort);
					if (this.Configuration.get_AllowedPorts().Contains(num))
					{
						result = true;
					}
					else
					{
						this.ShowPortNumberError = true;
					}
					return result;
				}
				catch (Exception)
				{
					this.ShowPortNumberError = true;
					return result;
				}
			}
			result = true;
			return result;
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("Configuration"))
			{
				base.RaisePropertyChanged("PortRange");
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using Catel.Services;
using GoldenFrogVPN;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;
using VyprVPN.Classes;
using VyprVPN.Views.PreferencesWindow.Connection;
using VyprVPN.Views.PreferencesWindow.Connection.Selectors;

namespace VyprVPN.ViewModels
{
	public class ConnectionViewModel : VyprViewModel
	{
		public static readonly PropertyData KnownSsidsProperty = ModelBase.RegisterProperty("KnownSsids", typeof(List<string>), null, null, true, true, true);

		public static readonly PropertyData ConnectOnUnknownWifiSelectedSsidProperty = ModelBase.RegisterProperty("ConnectOnUnknownWifiSelectedSsid", typeof(string), null, null, true, true, true);

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		public static readonly PropertyData ConnectOnUnknownWifiIgnoreSsidsProperty = ModelBase.RegisterProperty("ConnectOnUnknownWifiIgnoreSsids", typeof(ObservableCollection<string>), null, null, true, true, true);

		public static readonly PropertyData ConnectOnStartupProperty = ModelBase.RegisterProperty("ConnectOnStartup", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ReconnectOnDisconnectProperty = ModelBase.RegisterProperty("ReconnectOnDisconnect", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData ConnectOnLaunchProperty = ModelBase.RegisterProperty("ConnectOnLaunch", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData ConnectOnUnknownWifiProperty = ModelBase.RegisterProperty("ConnectOnUnknownWifi", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData KillSwitchEnabledProperty = ModelBase.RegisterProperty("KillSwitchEnabled", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData PerAppManagementEnabledProperty = ModelBase.RegisterProperty("PerAppManagementEnabled", typeof(bool), null, null, true, true, true);

		public AsynchronousCommand AddSsidCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand RemoveSsidCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand ManageAppsCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand ConfigureKillSwitchCommand
		{
			get;
			private set;
		}

		public bool PerAppSupported
		{
			get
			{
				return Environment.OSVersion.Platform == PlatformID.Win32NT && Environment.OSVersion.Version >= new Version(6, 1) && ServiceLocatorExtensions.ResolveType<IVyprFeatureToggler>(ServiceLocator.get_Default(), null).IsEnabled(0);
			}
		}

		public bool PerAppOmittedBecauseVista
		{
			get
			{
				return !this.PerAppSupported && ServiceLocatorExtensions.ResolveType<IVyprFeatureToggler>(ServiceLocator.get_Default(), null).IsEnabled(0);
			}
		}

		public List<string> KnownSsids
		{
			get
			{
				return base.GetValue<List<string>>(ConnectionViewModel.KnownSsidsProperty);
			}
			set
			{
				base.SetValue(ConnectionViewModel.KnownSsidsProperty, value);
			}
		}

		public string ConnectOnUnknownWifiSelectedSsid
		{
			get
			{
				return base.GetValue<string>(ConnectionViewModel.ConnectOnUnknownWifiSelectedSsidProperty);
			}
			set
			{
				base.SetValue(ConnectionViewModel.ConnectOnUnknownWifiSelectedSsidProperty, value);
			}
		}

		[Model]
		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(ConnectionViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(ConnectionViewModel.PreferencesModelProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "")]
		public ObservableCollection<string> ConnectOnUnknownWifiIgnoreSsids
		{
			get
			{
				return base.GetValue<ObservableCollection<string>>(ConnectionViewModel.ConnectOnUnknownWifiIgnoreSsidsProperty);
			}
			set
			{
				base.SetValue(ConnectionViewModel.ConnectOnUnknownWifiIgnoreSsidsProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "")]
		public bool ConnectOnStartup
		{
			get
			{
				return base.GetValue<bool>(ConnectionViewModel.ConnectOnStartupProperty);
			}
			set
			{
				base.SetValue(ConnectionViewModel.ConnectOnStartupProperty, value);
				if (value)
				{
					this.ReconnectOnDisconnect = true;
				}
			}
		}

		[ViewModelToModel("PreferencesModel", "")]
		public bool ReconnectOnDisconnect
		{
			get
			{
				return base.GetValue<bool>(ConnectionViewModel.ReconnectOnDisconnectProperty);
			}
			set
			{
				base.SetValue(ConnectionViewModel.ReconnectOnDisconnectProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "ConnectOnLaunch"), CompilerGenerated]
		public bool ConnectOnLaunch
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(ConnectionViewModel.ConnectOnLaunchProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(ConnectionViewModel.ConnectOnLaunchProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "ConnectOnUnknownWifi"), CompilerGenerated]
		public bool ConnectOnUnknownWifi
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(ConnectionViewModel.ConnectOnUnknownWifiProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(ConnectionViewModel.ConnectOnUnknownWifiProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "KillSwitchEnabled"), CompilerGenerated]
		public bool KillSwitchEnabled
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(ConnectionViewModel.KillSwitchEnabledProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(ConnectionViewModel.KillSwitchEnabledProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "PerAppManagementEnabled"), CompilerGenerated]
		public bool PerAppManagementEnabled
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(ConnectionViewModel.PerAppManagementEnabledProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(ConnectionViewModel.PerAppManagementEnabledProperty, value);
			}
		}

		public ConnectionViewModel()
		{
			try
			{
				this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
				ServiceLocatorExtensions.RegisterInstance<ConnectionViewModel>(ObjectExtensions.GetServiceLocator(this), this, null);
			}
			catch (Exception ex)
			{
				base.logger.Log(3, "Error initializing ConnectionViewModel: {0}", new object[]
				{
					ex
				});
			}
			this.AddSsidCommand = new AsynchronousCommand(new Action(this.OnAddSsidCommandExecute), new Func<bool>(this.OnAddSsidCommandCanExecute), null);
			this.RemoveSsidCommand = new AsynchronousCommand(new Action(this.OnRemoveSsidCommandExecute), new Func<bool>(this.OnRemoveSsidCommandCanExecute), null);
			this.ManageAppsCommand = new AsynchronousCommand(new Action(this.OnManageAppsCommand), () => this.PreferencesModel.PerAppManagementEnabled, null);
			this.ConfigureKillSwitchCommand = new AsynchronousCommand(new Action(this.OnConfigureKillSwitchCommand), () => this.PreferencesModel.KillSwitchEnabled, null);
			this.ConnectOnStartup = this.PreferencesModel.ConnectOnStartup;
			base.logger.Log(0, "ConnectionViewModel instantiated");
		}

		private bool OnAddSsidCommandCanExecute()
		{
			return true;
		}

		private void OnAddSsidCommandExecute()
		{
			WirelessNetworkSelectorWindowViewModel selectorWindowViewModel = new WirelessNetworkSelectorWindowViewModel();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				new WirelessNetworkSelectorWindow(selectorWindowViewModel).ShowDialog();
				if (!string.IsNullOrEmpty(selectorWindowViewModel.NetworkNameText) && !this.ConnectOnUnknownWifiIgnoreSsids.Contains(selectorWindowViewModel.NetworkNameText))
				{
					this.ConnectOnUnknownWifiIgnoreSsids.Add(selectorWindowViewModel.NetworkNameText);
					List<string> list = this.ConnectOnUnknownWifiIgnoreSsids.ToList<string>();
					list.Sort();
					this.ConnectOnUnknownWifiIgnoreSsids = new ObservableCollection<string>(list);
				}
			});
		}

		private bool OnRemoveSsidCommandCanExecute()
		{
			return !string.IsNullOrEmpty(this.ConnectOnUnknownWifiSelectedSsid);
		}

		private void OnRemoveSsidCommandExecute()
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				List<string> list = this.ConnectOnUnknownWifiIgnoreSsids.ToList<string>();
				list.Remove(this.ConnectOnUnknownWifiSelectedSsid);
				this.ConnectOnUnknownWifiIgnoreSsids = new ObservableCollection<string>(list);
			});
		}

		private void OnManageAppsCommand()
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				ManageConnectionPerAppViewModel manageConnectionPerAppViewModel = new ManageConnectionPerAppViewModel();
				await ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(this), null).ShowDialog(manageConnectionPerAppViewModel, null);
			});
		}

		private void OnConfigureKillSwitchCommand()
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				ConfigureKillSwitchDialogViewModel configureKillSwitchDialogViewModel = new ConfigureKillSwitchDialogViewModel();
				await ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(this), null).ShowDialog(configureKillSwitchDialogViewModel, null);
			});
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("PerAppSupported"))
			{
				base.RaisePropertyChanged("PerAppOmittedBecauseVista");
			}
		}
	}
}

using GoldenFrogUT.Utilities;
using System;
using System.Windows;

namespace VyprVPN.ViewModels
{
	public class ContactSupportViewModel : FeedbackViewModel
	{
		private bool _isLoggedIn;

		public ContactSupportViewModel()
		{
			try
			{
				this._isLoggedIn = base.VyprVPNController.IsLoggedIn;
			}
			catch (Exception ex)
			{
				FeedbackViewModel.Logger.Log(1, "Error while querying logged in state: {0}", new object[]
				{
					ex.Message
				});
			}
			base.Title = FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogTitle");
			base.CancelButtonText = FeedbackViewModel.ResourceManager.GetString("Cancel");
			base.FeedbackHintText = FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogFeedbackHintText");
			base.FeedbackFormDescription = FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogDescription");
			base.EmailHintText = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogEmailHintText");
			base.EmailFieldHeadingText = (this._isLoggedIn ? FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogEmailHeadingText") : FeedbackViewModel.ResourceManager.GetString("Email"));
			base.IncludeLogsText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogConnectionLogCheckboxText");
			base.SubmitButtonText = FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogSubmitButtonText");
			base.ShowIncludeLogs = true;
			base.IncludeLogs = true;
			base.FeedbackProgressDescriptionText = FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogProgressDescription");
			base.FeedbackProgressText = FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogProgressText");
			base.FeedbackSuccessDescriptionText = FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogSendSuccessDescription");
			base.FeedbackFailureDescriptionText = FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogSendFailureDescription");
		}

		protected override void SubmitButtonClickedExecuted(Window window)
		{
			this.SubmitFormData(2);
		}

		protected override bool SubmitButtonClickedCanExecute(Window window)
		{
			if (!this._isLoggedIn)
			{
				bool flag = EmailUtilities.IsValidEmail(base.EmailFieldText);
				return base.FeedbackFormText.Trim().Length > 0 & flag;
			}
			return base.FeedbackFormText.Trim().Length > 0;
		}

		protected override void ResendButtonClickedExecuted(Window window)
		{
			this.SubmitFormData(2);
		}
	}
}

using Catel.Data;
using Catel.Messaging;
using Catel.MVVM;
using GoldenFrogUT.Utilities;
using GoldenFrogVPN.Enums;
using System;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Security;
using System.Windows.Input;
using VyprVPN.Messages;
using VyprVPN.Properties;
using VyprVPN.Views.OnboardingWindow;

namespace VyprVPN.ViewModels
{
	public class CreateAccountViewModel : OnboardingAccountPaneViewModel
	{
		private static readonly string[] CreateAccountWarningSplitTokens = new string[]
		{
			"{0}"
		};

		public static readonly PropertyData IsCreatingAccountProperty = ModelBase.RegisterProperty("IsCreatingAccount", typeof(bool), null, null, true, true, true);

		public ICommand CreateAccountCommand
		{
			get;
			private set;
		}

		public ICommand LaunchTermsOfServiceCommand
		{
			get;
			private set;
		}

		public ICommand LogInCommand
		{
			get;
			private set;
		}

		public bool IsCreatingAccount
		{
			get
			{
				return base.GetValue<bool>(CreateAccountViewModel.IsCreatingAccountProperty);
			}
			private set
			{
				base.SetValue(CreateAccountViewModel.IsCreatingAccountProperty, value);
			}
		}

		public string CreateAccountWarning1
		{
			get
			{
				return Resources.CreateAccountWarning.Split(CreateAccountViewModel.CreateAccountWarningSplitTokens, StringSplitOptions.None).FirstOrDefault<string>();
			}
		}

		public string CreateAccountWarning2
		{
			get
			{
				return Resources.CreateAccountWarning.Split(CreateAccountViewModel.CreateAccountWarningSplitTokens, StringSplitOptions.None).LastOrDefault<string>();
			}
		}

		public CreateAccountViewModel()
		{
			this.LaunchTermsOfServiceCommand = new Command(new Action(this.LaunchTermsOfService), null, null);
			this.CreateAccountCommand = new Command(new Action(this.CreateAccount), () => !this.IsCreatingAccount, null);
			this.LogInCommand = new Command(new Action(this.LogIn), null, null);
			base.ContactSupportCommand = new Command(new Action(this.ContactSupport), null, null);
			base.ChangePasswordVisibilityCommand = new Command(new Action(this.ChangePasswordVisibility), null, null);
			base.logger.Log(0, "CreateAccountViewModel instantiated");
		}

		private async void CreateAccount()
		{
			this.IsCreatingAccount = true;
			string text = null;
			SecureString secureString = null;
			text = this.Username.Trim();
			secureString = CryptStringExtensions.ToSecureString(this.Password.Trim());
			if (this.ShowInvalidCredentialsError)
			{
				this.ShowInvalidCredentialsError = false;
			}
			CreateAccountApiResultCode createAccountApiResultCode = 5;
			try
			{
				CreateAccountApiResultCode createAccountApiResultCode2 = await this.VyprVPNController.CreateAccountAsync(text, secureString);
				createAccountApiResultCode = createAccountApiResultCode2;
			}
			catch (Exception var_3_FC)
			{
				this.logger.Log(4, "Exception: {0}", new object[]
				{
					var_3_FC
				});
			}
			switch (createAccountApiResultCode)
			{
			case 0:
				MessageBase<AccountCreatedMessage, NetworkCredential>.SendWith(new NetworkCredential(text, secureString), null);
				break;
			case 1:
				this.InvalidCredentialsErrorMessage = Resources.InvalidUsernamePassword;
				break;
			case 2:
				this.InvalidCredentialsErrorMessage = Resources.RequestedAccountAlreadyExists;
				break;
			case 3:
				this.InvalidCredentialsErrorMessage = Resources.AccountCannotBeCreated;
				break;
			default:
				this.InvalidCredentialsErrorMessage = Resources.ServerError;
				break;
			}
			this.ShowInvalidCredentialsError = (createAccountApiResultCode > 0);
			this.Password = "";
			this.IsCreatingAccount = false;
		}

		private void LogIn()
		{
			if (base.ShowInvalidCredentialsError)
			{
				base.ShowInvalidCredentialsError = false;
			}
			base.UIState.ActiveScreen = Screen.Login;
		}

		private void ContactSupport()
		{
			Process.Start(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.FAQ, "help", "support-team"));
		}

		private void LaunchTermsOfService()
		{
			Process.Start(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.TermsOfService, "tos", "terms-of-service"));
		}

		private void ChangePasswordVisibility()
		{
			base.ShowPassword = !base.ShowPassword;
		}
	}
}

using Catel.Data;
using Catel.Messaging;
using Catel.MVVM;
using System;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Enums;
using VyprVPN.Messages;

namespace VyprVPN.ViewModels
{
	public class DialogControlViewModel : VyprViewModel
	{
		public static readonly PropertyData MessageProperty = ModelBase.RegisterProperty("Message", typeof(string), null, null, true, true, true);

		public static readonly PropertyData QuestionProperty = ModelBase.RegisterProperty("Question", typeof(string), null, null, true, true, true);

		public static readonly PropertyData IsQuestionVisibleProperty = ModelBase.RegisterProperty("IsQuestionVisible", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData PrimaryButtonTextProperty = ModelBase.RegisterProperty("PrimaryButtonText", typeof(string), null, null, true, true, true);

		public static readonly PropertyData SecondaryButtonTextProperty = ModelBase.RegisterProperty("SecondaryButtonText", typeof(string), null, null, true, true, true);

		public static readonly PropertyData IsSecondaryButtonVisibleProperty = ModelBase.RegisterProperty("IsSecondaryButtonVisible", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData CheckBoxTextProperty = ModelBase.RegisterProperty("CheckBoxText", typeof(string), null, null, true, true, true);

		public static readonly PropertyData IsCheckBoxVisibleProperty = ModelBase.RegisterProperty("IsCheckBoxVisible", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData IsCheckBoxCheckedProperty = ModelBase.RegisterProperty("IsCheckBoxChecked", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ImageIconProperty = ModelBase.RegisterProperty("Icon", typeof(ImageIcon), null, null, true, true, true);

		public static readonly PropertyData IsIconVisibleProperty = ModelBase.RegisterProperty("IsIconVisible", typeof(bool), null, null, true, true, true);

		public string Message
		{
			get
			{
				return base.GetValue<string>(DialogControlViewModel.MessageProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.MessageProperty, value);
			}
		}

		public string Question
		{
			get
			{
				return base.GetValue<string>(DialogControlViewModel.QuestionProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.QuestionProperty, value);
			}
		}

		public bool IsQuestionVisible
		{
			get
			{
				return base.GetValue<bool>(DialogControlViewModel.IsQuestionVisibleProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.IsQuestionVisibleProperty, value);
			}
		}

		public string PrimaryButtonText
		{
			get
			{
				return base.GetValue<string>(DialogControlViewModel.PrimaryButtonTextProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.PrimaryButtonTextProperty, value);
			}
		}

		public string SecondaryButtonText
		{
			get
			{
				return base.GetValue<string>(DialogControlViewModel.SecondaryButtonTextProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.SecondaryButtonTextProperty, value);
			}
		}

		public bool IsSecondaryButtonVisible
		{
			get
			{
				return base.GetValue<bool>(DialogControlViewModel.IsSecondaryButtonVisibleProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.IsSecondaryButtonVisibleProperty, value);
			}
		}

		public string CheckBoxMessage
		{
			get
			{
				return base.GetValue<string>(DialogControlViewModel.CheckBoxTextProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.CheckBoxTextProperty, value);
			}
		}

		public bool IsCheckBoxVisible
		{
			get
			{
				return base.GetValue<bool>(DialogControlViewModel.IsCheckBoxVisibleProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.IsCheckBoxVisibleProperty, value);
			}
		}

		public bool IsCheckBoxChecked
		{
			get
			{
				return base.GetValue<bool>(DialogControlViewModel.IsCheckBoxCheckedProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.IsCheckBoxCheckedProperty, value);
			}
		}

		public ImageIcon Icon
		{
			get
			{
				return base.GetValue<ImageIcon>(DialogControlViewModel.ImageIconProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.ImageIconProperty, value);
			}
		}

		public bool IsIconVisible
		{
			get
			{
				return base.GetValue<bool>(DialogControlViewModel.IsIconVisibleProperty);
			}
			set
			{
				base.SetValue(DialogControlViewModel.IsIconVisibleProperty, value);
			}
		}

		public ICommand PrimaryButtonCommand
		{
			get;
			set;
		}

		public ICommand SecondaryButtonCommand
		{
			get;
			set;
		}

		private DialogControlViewModel()
		{
			this.PrimaryButtonCommand = new AsynchronousCommand(delegate
			{
				this.OnPrimaryButtonPressed();
			}, null, null);
			this.SecondaryButtonCommand = new AsynchronousCommand(delegate
			{
				this.OnSecondaryButtonPressed();
			}, null, null);
			this.IsSecondaryButtonVisible = false;
			this.IsCheckBoxVisible = false;
			this.IsIconVisible = false;
		}

		public DialogControlViewModel(string message, string primaryButtonText) : this()
		{
			this.Message = message;
			this.PrimaryButtonText = primaryButtonText;
		}

		public DialogControlViewModel(string message, string question, string primaryButtonText) : this(message, primaryButtonText)
		{
			this.Question = question;
		}

		public DialogControlViewModel(string message, string question, string primaryButtonText, string secondaryButtonText) : this(message, question, primaryButtonText)
		{
			this.SecondaryButtonText = secondaryButtonText;
			this.IsSecondaryButtonVisible = true;
		}

		private void OnPrimaryButtonPressed()
		{
			base.LogInfo("DialogControlViewModel (DCVM): Primary button for dialog control pressed. Signalling button press.");
			MessageBase<DialogControlPrimaryButtonPressedMessage, object>.SendWith(null, null);
			this.CloseWithResult(true);
		}

		private void OnSecondaryButtonPressed()
		{
			base.LogInfo("DialogControlViewModel (DCVM): Secondary button for dialog control pressed. Signalling button press.");
			MessageBase<DialogControlSecondaryButtonPressedMessage, object>.SendWith(null, null);
			this.CloseWithResult(false);
		}

		private void CloseWithResult(bool result)
		{
			base.LogInfo(string.Format("DCVM: Closing dialog control with result {0}.", result));
			MessageBase<DialogControlSetResultMessage, bool>.SendWith(result, null);
			this.CloseDialog();
			base.LogInfo("DialogControlViewModel: Dialog result reported.");
		}

		private void CloseDialog()
		{
			MessageBase<DialogControlClosedMessage, object>.SendWith(null, null);
			base.LogInfo("DCVM: Signal sent to close dialog control.");
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogUT.GoldenFrog.WebAPIs;
using GoldenFrogVPN.Classes;
using Log;
using System;
using System.Collections.Generic;
using System.IO;
using System.Resources;
using System.Windows;
using VyprVPN.Properties;

namespace VyprVPN.ViewModels
{
	public class FeedbackViewModel : ViewModelBase
	{
		protected enum FeedbackDialogState
		{
			Form,
			Progress,
			Success,
			Failure
		}

		protected static readonly FileLogger Logger = FileLogger.get_Instance();

		protected static readonly ResourceManager ResourceManager = new ResourceManager(typeof(Resources));

		protected FeedbackViewModel.FeedbackDialogState DialogState;

		private readonly AsynchronousCommand<Window> _submitButtonClickedCommand;

		private readonly AsynchronousCommand<Window> _closeButtonClickedCommand;

		private readonly AsynchronousCommand<Window> _backButtonClickedCommand;

		public static readonly PropertyData TitleProperty = ModelBase.RegisterProperty<string>("Title", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData SubmitButtonTextProperty = ModelBase.RegisterProperty<string>("SubmitButtonText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData CancelButtonTextProperty = ModelBase.RegisterProperty<string>("CancelButtonText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData CloseButtonTextProperty = ModelBase.RegisterProperty<string>("CloseButtonText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData ResendButtonTextProperty = ModelBase.RegisterProperty<string>("ResendButtonText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData BackButtonTextProperty = ModelBase.RegisterProperty<string>("BackButtonText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData FeedbackFormDescriptionProperty = ModelBase.RegisterProperty<string>("FeedbackFormDescription", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData FeedbackHintTextProperty = ModelBase.RegisterProperty<string>("FeedbackHintText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData FeedbackFormTextProperty = ModelBase.RegisterProperty<string>("FeedbackFormText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData EmailFieldTextHeadingProperty = ModelBase.RegisterProperty<string>("EmailFieldTextHeading", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData EmailHintTextProperty = ModelBase.RegisterProperty<string>("EmailHintText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData EmailFieldTextProperty = ModelBase.RegisterProperty<string>("EmailFieldText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData ShowIncludeLogsProperty = ModelBase.RegisterProperty<bool>("ShowIncludeLogs", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IncludeLogsProperty = ModelBase.RegisterProperty<bool>("IncludeLogs", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IncludeLogsTextProperty = ModelBase.RegisterProperty<string>("IncludeLogsText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData FeedbackProgressTextProperty = ModelBase.RegisterProperty<string>("FeedbackProgressText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData FeedbackProgressDescriptionTextProperty = ModelBase.RegisterProperty<string>("FeedbackProgressDescriptionText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData FeedbackSuccessHeadingTextProperty = ModelBase.RegisterProperty<string>("FeedbackSuccessHeadingText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData FeedbackSuccessDescriptionTextProperty = ModelBase.RegisterProperty<string>("FeedbackSuccessDescriptionText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData FeedbackFailureHeadingTextProperty = ModelBase.RegisterProperty<string>("FeedbackFailureHeadingText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData FeedbackFailureDescriptionTextProperty = ModelBase.RegisterProperty<string>("FeedbackFailureDescriptionText", typeof(string), string.Empty, null, true, true, true);

		public static readonly PropertyData ShowFormProperty = ModelBase.RegisterProperty<bool>("ShowForm", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData ShowProgressProperty = ModelBase.RegisterProperty<bool>("ShowProgress", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ShowSuccessProperty = ModelBase.RegisterProperty<bool>("ShowSuccess", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ShowFailureProperty = ModelBase.RegisterProperty<bool>("ShowFailure", typeof(bool), false, null, true, true, true);

		public IVyprVPNController VyprVPNController
		{
			get
			{
				IVyprVPNController result;
				try
				{
					result = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ObjectExtensions.GetServiceLocator(this), null);
				}
				catch (Exception)
				{
					result = null;
				}
				return result;
			}
		}

		public AsynchronousCommand<Window> SubmitButtonClicked
		{
			get
			{
				return this._submitButtonClickedCommand;
			}
		}

		public AsynchronousCommand<Window> CloseButtonClicked
		{
			get
			{
				return this._closeButtonClickedCommand;
			}
		}

		public AsynchronousCommand<Window> BackButtonClicked
		{
			get
			{
				return this._backButtonClickedCommand;
			}
		}

		public string Title
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.TitleProperty);
			}
			protected set
			{
				base.SetValue(FeedbackViewModel.TitleProperty, value);
			}
		}

		public string SubmitButtonText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.SubmitButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.SubmitButtonTextProperty, value);
			}
		}

		public string CancelButtonText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.CancelButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.CancelButtonTextProperty, value);
			}
		}

		public string CloseButtonText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.CloseButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.CloseButtonTextProperty, value);
			}
		}

		public string ResendButtonText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.ResendButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.ResendButtonTextProperty, value);
			}
		}

		public string BackButtonText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.BackButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.BackButtonTextProperty, value);
			}
		}

		public string FeedbackFormDescription
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.FeedbackFormDescriptionProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.FeedbackFormDescriptionProperty, value);
			}
		}

		public string FeedbackHintText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.FeedbackHintTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.FeedbackHintTextProperty, value);
			}
		}

		public string FeedbackFormText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.FeedbackFormTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.FeedbackFormTextProperty, value);
			}
		}

		public string EmailFieldHeadingText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.EmailFieldTextHeadingProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.EmailFieldTextHeadingProperty, value);
			}
		}

		public string EmailHintText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.EmailHintTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.EmailHintTextProperty, value);
			}
		}

		public string EmailFieldText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.EmailFieldTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.EmailFieldTextProperty, value);
			}
		}

		public bool ShowIncludeLogs
		{
			get
			{
				return base.GetValue<bool>(FeedbackViewModel.ShowIncludeLogsProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.ShowIncludeLogsProperty, value);
			}
		}

		public bool IncludeLogs
		{
			get
			{
				return base.GetValue<bool>(FeedbackViewModel.IncludeLogsProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.IncludeLogsProperty, value);
			}
		}

		public string IncludeLogsText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.IncludeLogsTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.IncludeLogsTextProperty, value);
			}
		}

		public string FeedbackProgressText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.FeedbackProgressTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.FeedbackProgressTextProperty, value);
			}
		}

		public string FeedbackProgressDescriptionText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.FeedbackProgressDescriptionTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.FeedbackProgressDescriptionTextProperty, value);
			}
		}

		public string FeedbackSuccessHeadingText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.FeedbackSuccessHeadingTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.FeedbackSuccessHeadingTextProperty, value);
			}
		}

		public string FeedbackSuccessDescriptionText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.FeedbackSuccessDescriptionTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.FeedbackSuccessDescriptionTextProperty, value);
			}
		}

		public string FeedbackFailureHeadingText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.FeedbackFailureHeadingTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.FeedbackFailureHeadingTextProperty, value);
			}
		}

		public string FeedbackFailureDescriptionText
		{
			get
			{
				return base.GetValue<string>(FeedbackViewModel.FeedbackFailureDescriptionTextProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.FeedbackFailureDescriptionTextProperty, value);
			}
		}

		public bool ShowForm
		{
			get
			{
				return base.GetValue<bool>(FeedbackViewModel.ShowFormProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.ShowFormProperty, value);
			}
		}

		public bool ShowProgress
		{
			get
			{
				return base.GetValue<bool>(FeedbackViewModel.ShowProgressProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.ShowProgressProperty, value);
			}
		}

		public bool ShowSuccess
		{
			get
			{
				return base.GetValue<bool>(FeedbackViewModel.ShowSuccessProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.ShowSuccessProperty, value);
			}
		}

		public bool ShowFailure
		{
			get
			{
				return base.GetValue<bool>(FeedbackViewModel.ShowFailureProperty);
			}
			set
			{
				base.SetValue(FeedbackViewModel.ShowFailureProperty, value);
			}
		}

		public FeedbackViewModel()
		{
			this.Title = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogTitle");
			this.CancelButtonText = FeedbackViewModel.ResourceManager.GetString("Cancel");
			this.CloseButtonText = FeedbackViewModel.ResourceManager.GetString("Close");
			this.ResendButtonText = FeedbackViewModel.ResourceManager.GetString("Resend");
			this.BackButtonText = FeedbackViewModel.ResourceManager.GetString("Back");
			this.FeedbackHintText = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogFeedbackHintText");
			this.FeedbackFormDescription = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogDescription");
			this.EmailHintText = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogEmailHintText");
			this.EmailFieldHeadingText = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogEmailHeadingText");
			this.IncludeLogsText = FeedbackViewModel.ResourceManager.GetString("BugReportDialogConnectionLogCheckboxText");
			this.SubmitButtonText = FeedbackViewModel.ResourceManager.GetString("ContactSupportDialogSubmitButtonText");
			this.ShowIncludeLogs = true;
			this.IncludeLogs = true;
			this.FeedbackProgressDescriptionText = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogProgressDescription");
			this.FeedbackProgressText = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogProgressText");
			this.FeedbackSuccessDescriptionText = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogSendSuccessDescription");
			this.FeedbackFailureDescriptionText = FeedbackViewModel.ResourceManager.GetString("FeedbackDialogSendFailureDescription");
			this._submitButtonClickedCommand = new AsynchronousCommand<Window>(new Action<Window>(this.SubmitButtonClickedExecuted), new Func<Window, bool>(this.SubmitButtonClickedCanExecute), null);
			this._closeButtonClickedCommand = new AsynchronousCommand<Window>(new Action<Window>(this.CloseButtonClickedExecuted), new Func<Window, bool>(this.CloseButtonClickedCanExecute), null);
			this._backButtonClickedCommand = new AsynchronousCommand<Window>(new Action<Window>(this.BackButtonClickedExecuted), new Func<Window, bool>(this.BackButtonClickedCanExecute), null);
		}

		protected virtual void SubmitButtonClickedExecuted(Window window)
		{
			this.SubmitFormData(1);
		}

		protected virtual bool SubmitButtonClickedCanExecute(Window window)
		{
			return this.FeedbackFormText.Trim().Length > 0;
		}

		protected virtual void ResendButtonClickedExecuted(Window window)
		{
			this.SubmitFormData(1);
		}

		protected virtual bool ResendButtonClickedCanExecute(Window window)
		{
			return this.FeedbackFormText.Trim().Length > 0;
		}

		protected virtual void CloseButtonClickedExecuted(Window window)
		{
			if (window != null)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(window.Close));
			}
		}

		protected virtual bool CloseButtonClickedCanExecute(Window window)
		{
			return true;
		}

		protected virtual void BackButtonClickedExecuted(Window window)
		{
			this.UpdateFormState(FeedbackViewModel.FeedbackDialogState.Form);
		}

		protected virtual bool BackButtonClickedCanExecute(Window window)
		{
			return true;
		}

		protected virtual void SubmitFormData(ContactTypes contactType)
		{
			string text = string.IsNullOrEmpty(this.EmailFieldText) ? string.Format("Message:{0}{1}", Environment.NewLine, this.FeedbackFormText) : string.Format("Optional Email: {0}{1}{1}Message:{1}{2}", this.EmailFieldText, Environment.NewLine, this.FeedbackFormText);
			IContactWrapper contactWrapper = ServiceLocatorExtensions.ResolveType<IContactWrapper>(ServiceLocator.get_Default(), null);
			string text2 = "NotLoggedIn";
			string text3 = this.EmailFieldText;
			IVyprVPNController vyprVPNController = this.VyprVPNController;
			if (vyprVPNController != null)
			{
				text2 = ((vyprVPNController.AccountSettingsBag != null) ? vyprVPNController.AccountSettingsBag.get_UserID() : "NotLoggedIn");
				text3 = ((vyprVPNController.AccountSettingsBag != null) ? vyprVPNController.AccountSettingsBag.get_UserEmail() : this.EmailFieldText);
			}
			List<string> list = new List<string>();
			if (this.IncludeLogs)
			{
				string text4 = Path.Combine(ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_LocalApplicationDataFolder(), "Logs", "VyprVPN.log");
				if (File.Exists(VyprVPNCommon.ServiceLogPath))
				{
					list.Add(VyprVPNCommon.ServiceLogPath);
				}
				if (File.Exists(VyprVPNCommon.ConnectionLogPath))
				{
					list.Add(VyprVPNCommon.ConnectionLogPath);
				}
				if (File.Exists(text4))
				{
					list.Add(text4);
				}
				Dictionary<string, IEnumerable<string>> dictionary = new Dictionary<string, IEnumerable<string>>();
				dictionary["attachment"] = list;
				contactWrapper.Initialize(text2 ?? "NotLoggedIn", text3, text, dictionary, contactType, "https://api.goldenfrog.com/contact");
			}
			else
			{
				contactWrapper.Initialize(text2 ?? "NotLoggedIn", text3, text, contactType, "https://api.goldenfrog.com/contact");
			}
			this.UpdateFormState(FeedbackViewModel.FeedbackDialogState.Progress);
			try
			{
				contactWrapper.PushToApi();
				FeedbackViewModel.Logger.Log(0, "Submitted feedback type {0} with {1} files attached.", new object[]
				{
					contactWrapper.get_ContactType(),
					0
				});
				this.UpdateFormState(FeedbackViewModel.FeedbackDialogState.Success);
			}
			catch (Exception ex)
			{
				FeedbackViewModel.Logger.Log(3, "Failed to send feedback to Golden Frog API: {0}", new object[]
				{
					ex
				});
				this.UpdateFormState(FeedbackViewModel.FeedbackDialogState.Failure);
			}
		}

		protected void UpdateFormState(FeedbackViewModel.FeedbackDialogState newState)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				switch (newState)
				{
				case FeedbackViewModel.FeedbackDialogState.Form:
					this.ShowForm = true;
					this.ShowProgress = false;
					this.ShowSuccess = false;
					this.ShowFailure = false;
					return;
				case FeedbackViewModel.FeedbackDialogState.Progress:
					this.ShowForm = false;
					this.ShowProgress = true;
					this.ShowSuccess = false;
					this.ShowFailure = false;
					return;
				case FeedbackViewModel.FeedbackDialogState.Success:
					this.ShowForm = false;
					this.ShowProgress = false;
					this.ShowSuccess = true;
					this.ShowFailure = false;
					return;
				case FeedbackViewModel.FeedbackDialogState.Failure:
					this.ShowForm = false;
					this.ShowProgress = false;
					this.ShowSuccess = false;
					this.ShowFailure = true;
					return;
				default:
					return;
				}
			});
			this.DialogState = newState;
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Models;

namespace VyprVPN.ViewModels
{
	public class GraphViewModel : VyprViewModel
	{
		public static readonly PropertyData NetworkProperty = ModelBase.RegisterProperty("Network", typeof(NetworkModel), null, null, true, true, true);

		public static readonly PropertyData IsVPNConnectedProperty = ModelBase.RegisterProperty("IsVPNConnected", typeof(bool), null, null, true, true, true);

		public ICommand TearOutCommand
		{
			get;
			private set;
		}

		[Model]
		public INetworkModel Network
		{
			get
			{
				return base.GetValue<NetworkModel>(GraphViewModel.NetworkProperty);
			}
			set
			{
				base.SetValue(GraphViewModel.NetworkProperty, value);
			}
		}

		public bool IsVPNConnected
		{
			get
			{
				return base.GetValue<bool>(GraphViewModel.IsVPNConnectedProperty);
			}
			set
			{
				base.SetValue(GraphViewModel.IsVPNConnectedProperty, value);
			}
		}

		public List<ThroughputMeasurement> ThroughputMeasurements
		{
			get
			{
				List<ThroughputMeasurement> expr_10 = this.Network.ThroughputMeasurements.ToList<ThroughputMeasurement>();
				expr_10.Reverse();
				return expr_10;
			}
		}

		public GraphViewModel()
		{
			this.TearOutCommand = new AsynchronousCommand(delegate
			{
				base.UIState.TearOutGraph();
			}, null, null);
			this.Network = ServiceLocatorExtensions.ResolveType<INetworkModel>(ServiceLocator.get_Default(), null);
			MessageBase<ConnectedChangedMessage, bool>.Register(this, delegate(ConnectedChangedMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.IsVPNConnected = e.get_Data();
				});
			}, null);
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("Network"))
			{
				base.RaisePropertyChanged("ThroughputMeasurements");
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogVPN;
using GoldenFrogVPN.Enums;
using Microsoft.Win32;
using System;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using VyprVPN.Classes;
using VyprVPN.Properties;
using VyprVPN.Views.ConnectionLogWindow;

namespace VyprVPN.ViewModels
{
	public class GeneralPreferencesViewModel : VyprViewModel
	{
		public static readonly PropertyData ConnectSoundFilenameProperty = ModelBase.RegisterProperty("ConnectSoundFilename", typeof(string), null, null, true, true, true);

		public static readonly PropertyData DisconnectSoundFilenameProperty = ModelBase.RegisterProperty("DisconnectSoundFilename", typeof(string), null, null, true, true, true);

		public static readonly PropertyData ShowTimeConnectedProperty = ModelBase.RegisterProperty<bool>("ShowTimeConnected", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData LaunchOnLoginProperty = ModelBase.RegisterProperty("LaunchOnLogin", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData NotificationPreferenceProperty = ModelBase.RegisterProperty("NotificationPreference", typeof(NotificationPreferenceEnum), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData ConnectSoundProperty = ModelBase.RegisterProperty("ConnectSound", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData ConnectSoundFilePathProperty = ModelBase.RegisterProperty("ConnectSoundFilePath", typeof(string), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData DisconnectSoundProperty = ModelBase.RegisterProperty("DisconnectSound", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData DisconnectSoundFilePathProperty = ModelBase.RegisterProperty("DisconnectSoundFilePath", typeof(string), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData EnableConnectionLogProperty = ModelBase.RegisterProperty("EnableConnectionLog", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData AnalyticsEnabledProperty = ModelBase.RegisterProperty("AnalyticsEnabled", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData SendCrashReportsProperty = ModelBase.RegisterProperty("SendCrashReports", typeof(bool), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData UiLocaleProperty = ModelBase.RegisterProperty("UiLocale", typeof(string), null, null, true, true, true);

		public AsynchronousCommand ChooseConnectSoundFileCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand ChooseDisconnectSoundFileCommand
		{
			get;
			private set;
		}

		public string ConnectSoundFilename
		{
			get
			{
				return base.GetValue<string>(GeneralPreferencesViewModel.ConnectSoundFilenameProperty);
			}
			set
			{
				base.SetValue(GeneralPreferencesViewModel.ConnectSoundFilenameProperty, value);
			}
		}

		public string DisconnectSoundFilename
		{
			get
			{
				return base.GetValue<string>(GeneralPreferencesViewModel.DisconnectSoundFilenameProperty);
			}
			set
			{
				base.SetValue(GeneralPreferencesViewModel.DisconnectSoundFilenameProperty, value);
			}
		}

		public bool ShowTimeConnected
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null).ShowTimeConnected;
			}
			set
			{
				base.SetValue(GeneralPreferencesViewModel.ShowTimeConnectedProperty, value);
				ISettings expr_1C = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				expr_1C.ShowTimeConnected = value;
				expr_1C.Save();
			}
		}

		public bool MixPanelToggledOn
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprFeatureToggler>(ServiceLocator.get_Default(), null).IsEnabled(1);
			}
		}

		[Model]
		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(GeneralPreferencesViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(GeneralPreferencesViewModel.PreferencesModelProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "LaunchOnLogin"), CompilerGenerated]
		public bool LaunchOnLogin
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(GeneralPreferencesViewModel.LaunchOnLoginProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.LaunchOnLoginProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "NotificationPreference"), CompilerGenerated]
		public NotificationPreferenceEnum NotificationPreference
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<NotificationPreferenceEnum>(GeneralPreferencesViewModel.NotificationPreferenceProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.NotificationPreferenceProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "ConnectSound"), CompilerGenerated]
		public bool ConnectSound
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(GeneralPreferencesViewModel.ConnectSoundProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.ConnectSoundProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "ConnectSoundFilePath"), CompilerGenerated]
		public string ConnectSoundFilePath
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<string>(GeneralPreferencesViewModel.ConnectSoundFilePathProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.ConnectSoundFilePathProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "DisconnectSound"), CompilerGenerated]
		public bool DisconnectSound
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(GeneralPreferencesViewModel.DisconnectSoundProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.DisconnectSoundProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "DisconnectSoundFilePath"), CompilerGenerated]
		public string DisconnectSoundFilePath
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<string>(GeneralPreferencesViewModel.DisconnectSoundFilePathProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.DisconnectSoundFilePathProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "EnableConnectionLog"), CompilerGenerated]
		public bool EnableConnectionLog
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(GeneralPreferencesViewModel.EnableConnectionLogProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.EnableConnectionLogProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "AnalyticsEnabled"), CompilerGenerated]
		public bool AnalyticsEnabled
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(GeneralPreferencesViewModel.AnalyticsEnabledProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.AnalyticsEnabledProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "SendCrashReports"), CompilerGenerated]
		public bool SendCrashReports
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<bool>(GeneralPreferencesViewModel.SendCrashReportsProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.SendCrashReportsProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "UiLocale"), CompilerGenerated]
		public string UiLocale
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<string>(GeneralPreferencesViewModel.UiLocaleProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GeneralPreferencesViewModel.UiLocaleProperty, value);
			}
		}

		public GeneralPreferencesViewModel()
		{
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			ServiceLocatorExtensions.RegisterInstance<GeneralPreferencesViewModel>(ObjectExtensions.GetServiceLocator(this), this, null);
			this.ChooseConnectSoundFileCommand = new AsynchronousCommand(delegate
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(this.OnBrowseConnectSound));
			}, () => this.PreferencesModel.ConnectSound, null);
			this.ChooseDisconnectSoundFileCommand = new AsynchronousCommand(delegate
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(this.OnBrowseDisconnectSound));
			}, () => this.PreferencesModel.DisconnectSound, null);
			this.OnConnectSoundFileChanged();
			this.OnDisconnectSoundFileChanged();
			base.logger.Log(0, "GeneralPreferencesViewModel instantiated");
		}

		public void OpenConnectionLog()
		{
			new ConnectionLogWindow(new ConnectionLogViewModel()).Show();
		}

		private void OnBrowseDisconnectSound()
		{
			this.PreferencesModel.DisconnectSoundFilePath = this.BrowseFile();
			this.OnDisconnectSoundFileChanged();
		}

		private void OnBrowseConnectSound()
		{
			this.PreferencesModel.ConnectSoundFilePath = this.BrowseFile();
			this.OnConnectSoundFileChanged();
		}

		private void OnDisconnectSoundFileChanged()
		{
			string disconnectSoundFilePath = this.PreferencesModel.DisconnectSoundFilePath;
			if (!string.IsNullOrEmpty(disconnectSoundFilePath))
			{
				this.DisconnectSoundFilename = Path.GetFileName(disconnectSoundFilePath);
			}
		}

		private void OnConnectSoundFileChanged()
		{
			string connectSoundFilePath = this.PreferencesModel.ConnectSoundFilePath;
			if (!string.IsNullOrEmpty(connectSoundFilePath))
			{
				this.ConnectSoundFilename = Path.GetFileName(connectSoundFilePath);
			}
		}

		private string BrowseFile()
		{
			OpenFileDialog openFileDialog = new OpenFileDialog
			{
				InitialDirectory = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location),
				FileName = string.Empty,
				DefaultExt = ".wav",
				Filter = "WAV files (.wav)|*.wav",
				AddExtension = true,
				CheckFileExists = true
			};
			if (!(openFileDialog.ShowDialog() == true))
			{
				return string.Empty;
			}
			return openFileDialog.FileName;
		}
	}
}

using Catel.Messaging;
using Catel.MVVM;
using System;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Messages;

namespace VyprVPN.ViewModels
{
	public class GraphWindowTitlebarViewModel : VyprViewModel
	{
		public ICommand CloseWindowCommand
		{
			get;
			private set;
		}

		public GraphWindowTitlebarViewModel()
		{
			this.CloseWindowCommand = new AsynchronousCommand(new Action(this.OnCloseWindowCommandExecute), null, null);
		}

		private void OnCloseWindowCommandExecute()
		{
			MessageBase<CloseGraphWindowMessage, bool>.SendWith(true, null);
		}
	}
}

using System;
using VyprVPN.Classes;

namespace VyprVPN.ViewModels
{
	public class GraphWindowViewModel : VyprViewModel
	{
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using GoldenFrogUT.Utilities;
using GoldenFrogVPN;
using System;
using System.Diagnostics;
using System.Windows.Input;
using VyprVPN.Messages;
using VyprVPN.Properties;
using VyprVPN.Views.OnboardingWindow;

namespace VyprVPN.ViewModels
{
	public class LoginViewModel : OnboardingAccountPaneViewModel
	{
		public static readonly PropertyData IsLoggingInProperty = ModelBase.RegisterProperty("IsLoggingIn", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData IsSignupEnabledProperty = ModelBase.RegisterProperty("IsSignupEnabled", typeof(bool), null, null, true, true, true);

		private IServiceEventsSource _vpnServiceSubscriber
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IServiceEventsSource>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private IFraudAbuseManager FraudAbuse
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IFraudAbuseManager>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		public ICommand LoginCommand
		{
			get;
			private set;
		}

		public ICommand SignUpCommand
		{
			get;
			private set;
		}

		public ICommand ForgotPasswordCommand
		{
			get;
			private set;
		}

		public bool IsLoggingIn
		{
			get
			{
				return base.GetValue<bool>(LoginViewModel.IsLoggingInProperty);
			}
			private set
			{
				base.SetValue(LoginViewModel.IsLoggingInProperty, value);
			}
		}

		public bool IsSignupEnabled
		{
			get
			{
				return base.GetValue<bool>(LoginViewModel.IsSignupEnabledProperty);
			}
			private set
			{
				base.SetValue(LoginViewModel.IsSignupEnabledProperty, value);
			}
		}

		public LoginViewModel()
		{
			this.LoginCommand = new Command(new Action(this.Login), () => !this.IsLoggingIn, null);
			this.SignUpCommand = new Command(new Action(this.SignUp), null, null);
			base.ContactSupportCommand = new Command(new Action(this.ContactSupport), null, null);
			base.ChangePasswordVisibilityCommand = new Command(new Action(this.ChangePasswordVisibility), null, null);
			this.ForgotPasswordCommand = new Command(new Action(this.ForgotPasswordClicked), null, null);
			this.IsSignupEnabled = !this.FraudAbuse.IsFraudAbuseMarkerSet();
			MessageBase<UsernameChangedMessage, string>.Register(this, new Action<UsernameChangedMessage>(this.OnLogin), null);
			base.logger.Log(0, "Calling GetUsername()");
			base.Username = base.VyprVPNController.Username;
			base.logger.Log(0, "GetUsername() returned {0}", new object[]
			{
				base.Username
			});
			this._vpnServiceSubscriber.AuthenticationErrorEvent += delegate(object sender, AuthenticationErrorEventArgs args)
			{
				switch (args.get_Error())
				{
				case 0:
					base.InvalidCredentialsErrorMessage = Resources.InvalidCredentials;
					break;
				case 1:
					base.InvalidCredentialsErrorMessage = Resources.LoginServerUnreachable;
					break;
				case 2:
					base.InvalidCredentialsErrorMessage = Resources.AccountUnconfirmed;
					break;
				case 3:
					base.InvalidCredentialsErrorMessage = Resources.AccountLocked;
					break;
				default:
					base.InvalidCredentialsErrorMessage = Resources.AuthenticationError;
					break;
				}
				this.IsLoggingIn = false;
			};
			base.logger.Log(0, "LoginViewModel instantiated");
		}

		private async void Login()
		{
			this.IsLoggingIn = true;
			if (this.ShowInvalidCredentialsError)
			{
				this.ShowInvalidCredentialsError = false;
			}
			bool flag = false;
			try
			{
				bool flag2 = await this.VyprVPNController.LoginAsync(this.Username.Trim(), CryptStringExtensions.ToSecureString(this.Password.Trim()));
				flag = flag2;
			}
			catch (Exception var_3_D6)
			{
				this.logger.Log(4, "Exception: {0}", new object[]
				{
					var_3_D6
				});
			}
			this.ShowInvalidCredentialsError = !flag;
			this.Password = "";
			if (flag)
			{
				ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).SendLoginAnalyticsEvent();
				this.UIState.ActiveScreen = Screen.Main;
			}
			this.IsLoggingIn = false;
		}

		private void SignUp()
		{
			if (this.FraudAbuse.IsFraudAbuseMarkerSet())
			{
				return;
			}
			ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).SendStartedSignUpAnalyticsEvent();
			if (base.ShowInvalidCredentialsError)
			{
				base.ShowInvalidCredentialsError = false;
			}
			base.UIState.ActiveScreen = Screen.CreateAccount;
		}

		private void ContactSupport()
		{
			Process.Start(base.VyprVPNController.AddGoogleAnalyticsToURL(Url.FAQ, "help", "login-contact-support-faq"));
		}

		private void ChangePasswordVisibility()
		{
			base.ShowPassword = !base.ShowPassword;
		}

		private void ForgotPasswordClicked()
		{
			MessageBase<ForgotPasswordLinkMessage, string>.SendWith(null, null);
		}

		private void OnLogin(UsernameChangedMessage msg)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).Dispatch(delegate
			{
				this.IsSignupEnabled = !this.FraudAbuse.IsFraudAbuseMarkerSet();
			});
		}
	}
}

using Catel.MVVM;
using GoldenFrogUX.Controls;
using System;
using System.Windows.Input;
using VyprVPN.Classes;

namespace VyprVPN.ViewModels
{
	public class MainButtonAreaViewModel : VyprViewModel
	{
		public ICommand LogInCommand
		{
			get;
			private set;
		}

		public ICommand ConnectCommand
		{
			get;
			private set;
		}

		public ICommand DisconnectCommand
		{
			get;
			private set;
		}

		public ICommand CancelConnectCommand
		{
			get;
			set;
		}

		public MainButtonAreaViewModel()
		{
			this.LogInCommand = new AsynchronousCommand(delegate
			{
				base.UIState.ActiveScreen = Screen.Login;
			}, null, null);
			SimpleCommand expr_25 = new SimpleCommand();
			expr_25.set_ExecuteDelegate(delegate(object o)
			{
				if (base.VyprVPNController.IsLoggedIn && base.VyprVPNController.VPNServer != null)
				{
					if (base.VyprVPNController.FastestServerSelected)
					{
						base.VyprVPNController.FindAndConnectToFastestServer(0);
						return;
					}
					base.VyprVPNController.Connect(0);
				}
			});
			this.ConnectCommand = expr_25;
			this.DisconnectCommand = new AsynchronousCommand(delegate
			{
				base.VyprVPNController.Disconnect(3);
			}, () => base.VyprVPNController.IsLoggedIn && base.VyprVPNController.VPNServer != null, null);
			this.CancelConnectCommand = new AsynchronousCommand(delegate
			{
				base.VyprVPNController.Disconnect(11);
			}, () => base.VyprVPNController.IsLoggedIn && base.VyprVPNController.VPNServer != null, null);
			CommandManager.RequerySuggested += new EventHandler(this.RequerySuggested);
		}

		private void RequerySuggested(object sender, EventArgs e)
		{
			IViewModelCommandManager viewModelCommandManager = ViewModelExtensions.GetViewModelCommandManager(this);
			if (viewModelCommandManager != null)
			{
				try
				{
					viewModelCommandManager.InvalidateCommands(false);
					return;
				}
				catch (Exception ex)
				{
					base.logger.Log(3, "Invalidating commands on main button failed. Ex: {0}", new object[]
					{
						ex
					});
					return;
				}
			}
			base.logger.Log(3, "GetViewModelCommandManager somehow returned null for the MainButtonAreaViewModel");
		}
	}
}

using Catel.Collections;
using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogVPN;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;
using VyprVPN.Classes;
using VyprVPN.Classes.Notifications;
using VyprVPN.Messages;
using VyprVPN.Messages.Account;
using VyprVPN.Properties;

namespace VyprVPN.ViewModels
{
	public class MainWindowViewModel : VyprViewModel
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly MainWindowViewModel.<>c <>9 = new MainWindowViewModel.<>c();

			public static Func<CultureInfo> <>9__56_0;

			public static Func<INotification, bool> <>9__57_0;

			internal CultureInfo <LogUserSettings>b__56_0()
			{
				return Thread.CurrentThread.CurrentCulture;
			}

			internal bool <UpdateUbaNotification>b__57_0(INotification notification)
			{
				return notification is AccountStateNotification;
			}
		}

		public const double NotificationWidgetHeight = 30.0;

		private readonly AsynchronousCommand<INotification> _controlPanelCommand;

		private readonly AsynchronousCommand<INotification> _loginAgainCommand;

		private readonly AsynchronousCommand<INotification> _ignoreNotificationCommand;

		private readonly AsynchronousCommand<INotification> _ubaNotificationDismissedCommand;

		public static readonly PropertyData IsLoggingInProperty = ModelBase.RegisterProperty<bool>("IsLoggingIn", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IsFindingFastestLocationProperty = ModelBase.RegisterProperty<bool>("IsFindingFastestLocation", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IsChoosingProtocolProperty = ModelBase.RegisterProperty<bool>("IsChoosingProtocol", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IsMainScreenActiveProperty = ModelBase.RegisterProperty<bool>("IsMainScreenActive", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData AllowVpnControlsProperty = ModelBase.RegisterProperty<bool>("AllowVpnControls", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData ShowGraphProperty = ModelBase.RegisterProperty("ShowGraph", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData NotificationsCollectionProperty = ModelBase.RegisterProperty("NotificationsCollection", typeof(FastObservableCollection<INotification>), null, null, true, true, true);

		public static readonly PropertyData NotificationContainerHeightProperty = ModelBase.RegisterProperty<double>("NotificationContainerHeight", typeof(double), 0.0, null, true, true, true);

		private IServiceEventsSource _vpnServiceSubscriber
		{
			get
			{
				if (!ServiceLocatorExtensions.IsTypeRegistered<IServiceEventsSource>(ObjectExtensions.GetServiceLocator(this), null))
				{
					return null;
				}
				return ServiceLocatorExtensions.ResolveType<IServiceEventsSource>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private IVyprVPNController _vyprVpnController
		{
			get
			{
				if (!ServiceLocatorExtensions.IsTypeRegistered<IVyprVPNController>(ObjectExtensions.GetServiceLocator(this), null))
				{
					return null;
				}
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ObjectExtensions.GetServiceLocator(this), null) as VyprVPNController;
			}
		}

		public ICommand WindowFocusCommand
		{
			get;
			set;
		}

		public ICommand LogSettingsCommand
		{
			get;
			set;
		}

		public bool IsLoggingIn
		{
			get
			{
				return base.GetValue<bool>(MainWindowViewModel.IsLoggingInProperty);
			}
			set
			{
				base.SetValue(MainWindowViewModel.IsLoggingInProperty, value);
			}
		}

		public bool IsFindingFastestLocation
		{
			get
			{
				return base.GetValue<bool>(MainWindowViewModel.IsFindingFastestLocationProperty);
			}
			set
			{
				base.SetValue(MainWindowViewModel.IsFindingFastestLocationProperty, value);
				base.SetValue(value ? MainWindowViewModel.IsLoggingInProperty : MainWindowViewModel.IsMainScreenActiveProperty, false);
			}
		}

		public bool IsChoosingProtocol
		{
			get
			{
				return base.GetValue<bool>(MainWindowViewModel.IsChoosingProtocolProperty);
			}
			set
			{
				base.SetValue(MainWindowViewModel.IsChoosingProtocolProperty, value);
				base.SetValue(value ? MainWindowViewModel.IsLoggingInProperty : MainWindowViewModel.IsMainScreenActiveProperty, false);
			}
		}

		public bool IsMainScreenActive
		{
			get
			{
				return base.GetValue<bool>(MainWindowViewModel.IsMainScreenActiveProperty);
			}
			set
			{
				base.SetValue(MainWindowViewModel.IsMainScreenActiveProperty, value);
				if (value)
				{
					base.SetValue(MainWindowViewModel.IsLoggingInProperty, false);
				}
			}
		}

		public bool AllowVpnControls
		{
			get
			{
				return base.GetValue<bool>(MainWindowViewModel.AllowVpnControlsProperty);
			}
			set
			{
				base.SetValue(MainWindowViewModel.AllowVpnControlsProperty, value);
			}
		}

		public bool ShowGraph
		{
			get
			{
				return base.GetValue<bool>(MainWindowViewModel.ShowGraphProperty);
			}
			set
			{
				base.SetValue(MainWindowViewModel.ShowGraphProperty, value);
			}
		}

		public FastObservableCollection<INotification> NotificationsCollection
		{
			get
			{
				return base.GetValue<FastObservableCollection<INotification>>(MainWindowViewModel.NotificationsCollectionProperty);
			}
			set
			{
				base.SetValue(MainWindowViewModel.NotificationsCollectionProperty, value);
			}
		}

		public double NotificationContainerHeight
		{
			get
			{
				return base.GetValue<double>(MainWindowViewModel.NotificationContainerHeightProperty);
			}
			set
			{
				base.SetValue(MainWindowViewModel.NotificationContainerHeightProperty, value);
			}
		}

		public MainWindowViewModel()
		{
			this.WindowFocusCommand = new AsynchronousCommand(delegate
			{
				this._vyprVpnController.RefreshAccountSettings(false);
			}, null, null);
			this.LogSettingsCommand = new AsynchronousCommand(new Action(this.LogUserSettings), null, null);
			this._controlPanelCommand = new AsynchronousCommand<INotification>(delegate(INotification notification)
			{
				string text = "No URL Created...";
				try
				{
					text = this._vyprVpnController.GetControlPanelLink();
					Process.Start(text);
				}
				catch (Exception ex)
				{
					base.logger.Log(1, "Unable to shell exec manage account URL {0}: {1}", new object[]
					{
						text,
						ex.Message
					});
				}
				this.RemoveNotification(notification);
			}, null, null);
			this._loginAgainCommand = new AsynchronousCommand<INotification>(delegate(INotification notification)
			{
				try
				{
					base.UIState.ActiveScreen = Screen.Login;
					this._vyprVpnController.Logout();
				}
				catch (Exception ex)
				{
					base.logger.Log(1, "Unable to log user out to retry login: {0}", new object[]
					{
						ex.Message
					});
				}
				this.RemoveNotification(notification);
			}, null, null);
			this._ignoreNotificationCommand = new AsynchronousCommand<INotification>(new Action<INotification>(this.RemoveNotification), null, null);
			this._ubaNotificationDismissedCommand = new AsynchronousCommand<INotification>(new Action<INotification>(this.UbaNotificationDismissed), null, null);
			this._vpnServiceSubscriber.AuthenticationErrorEvent += delegate(object sender, AuthenticationErrorEventArgs args)
			{
				switch (args.get_Error())
				{
				case 0:
					if (this._vyprVpnController.IsLoggedIn)
					{
						this.InsertNotification(new AccountStateNotification
						{
							Message = Resources.AuthenticationError,
							CommandMessage = Resources.LoginAgain,
							Command = this._loginAgainCommand
						}, false);
					}
					break;
				case 2:
					this.InsertNotification(new AccountStateNotification
					{
						Message = Resources.AccountUnconfirmed,
						CommandMessage = Resources.ConfirmAccount,
						Command = this._controlPanelCommand
					}, false);
					break;
				case 3:
					this.InsertNotification(new AccountStateNotification
					{
						Message = Resources.AccountLocked,
						CommandMessage = Resources.MoreInfo,
						Command = this._controlPanelCommand
					}, false);
					break;
				}
				this.AllowVpnControls = false;
			};
			this._vyprVpnController.PropertyChanged += delegate(object sender, PropertyChangedEventArgs args)
			{
				if (args.PropertyName == "DataUsage")
				{
					this.UpdateUbaNotification();
				}
			};
			base.VyprVPNController.ClearUpdateAvailable += delegate(object sender, EventArgs args)
			{
				foreach (INotification current in this.GetNotificationInstances(typeof(UpgradeNotification)).ToList<INotification>())
				{
					this.RemoveNotification(current);
				}
			};
			this.NotificationsCollection = new FastObservableCollection<INotification>();
			this.NotificationsCollection.CollectionChanged += delegate(object sender, NotifyCollectionChangedEventArgs args)
			{
				this.NotificationContainerHeight = (double)this.NotificationsCollection.Count * 30.0;
			};
			MessageBase<UpgradeAvailableMessage, UpgradeAvailableEventArgs>.Register(this, delegate(UpgradeAvailableMessage e)
			{
				UpgradeNotification notification3 = new UpgradeNotification
				{
					IgnoreCommand = this._ignoreNotificationCommand
				};
				this.InsertNotification(notification3, true);
			}, null);
			if (base.VyprVPNController.IsUpgradeAvailable)
			{
				UpgradeNotification notification2 = new UpgradeNotification
				{
					IgnoreCommand = this._ignoreNotificationCommand
				};
				this.InsertNotification(notification2, true);
			}
			MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.Register(this, delegate(AuthenticationStateChangedMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					if (e.get_Data().AuthenticationState == null)
					{
						this.InsertNotification(new FreeTrialNotification(), false);
						using (List<INotification>.Enumerator enumerator = this.NotificationsCollection.ToList<INotification>().GetEnumerator())
						{
							while (enumerator.MoveNext())
							{
								INotification current = enumerator.Current;
								if (current is AccountStateNotification || current is UBAUsageNotification || current is InAppPurchaseExpiryNotification)
								{
									this.RemoveNotification(current);
								}
							}
							goto IL_F9;
						}
					}
					using (List<INotification>.Enumerator enumerator = this.NotificationsCollection.ToList<INotification>().GetEnumerator())
					{
						while (enumerator.MoveNext())
						{
							FreeTrialNotification freeTrialNotification = enumerator.Current as FreeTrialNotification;
							if (freeTrialNotification != null)
							{
								this.RemoveNotification(freeTrialNotification);
							}
						}
					}
					if (this.VyprVPNController.NonRecurringAccountHasExpired)
					{
						this.InsertNotification(new InAppPurchaseExpiryNotification(), false);
					}
					IL_F9:
					this.UpdateUbaNotification();
				});
			}, null);
			MessageBase<UIStateChangedMessage, IUIState>.Register(this, new Action<UIStateChangedMessage>(this.OnUIStateChanged), null);
			MessageBase<AccountUnlockedMessage, string>.Register(this, new Action<AccountUnlockedMessage>(this.OnAccountUnlocked), null);
			MessageBase<NotificationStateChangedMessage, Type>.Register(this, new Action<NotificationStateChangedMessage>(this.OnNotificationStateChanged), null);
		}

		private void OnNotificationStateChanged(NotificationStateChangedMessage notificationStateChangedMessage)
		{
			Type notificationType = notificationStateChangedMessage.get_Data();
			List<INotification> list = (from notification in this.NotificationsCollection
			where notificationType == notification.GetType()
			select notification).ToList<INotification>();
			this.NotificationsCollection.RemoveItems(list);
		}

		private void OnUIStateChanged(UIStateChangedMessage obj)
		{
			this.ShowGraph = (obj.get_Data().ActiveScreen == Screen.Login);
		}

		private void OnAccountUnlocked(AccountUnlockedMessage message)
		{
			this.GetNotificationInstances(typeof(AccountStateNotification)).ToList<INotification>().ForEach(delegate(INotification notification)
			{
				this.RemoveNotification(notification);
			});
		}

		private void InsertNotification(INotification notification, bool replaceExisting = false)
		{
			List<INotification> list = this.GetNotificationInstances(notification.GetType()).ToList<INotification>();
			if (list.Any<INotification>())
			{
				if (replaceExisting)
				{
					base.logger.Log(0, "Already showing notification of {0}, replacing instance.", new object[]
					{
						notification.GetType()
					});
					using (List<INotification>.Enumerator enumerator = list.GetEnumerator())
					{
						while (enumerator.MoveNext())
						{
							INotification current = enumerator.Current;
							this.RemoveNotification(current);
						}
						goto IL_8F;
					}
				}
				base.logger.Log(0, "Already showing notification of {0}, skipping insertion.", new object[]
				{
					notification.GetType()
				});
				return;
			}
			IL_8F:
			if (notification is IUpdateNotification)
			{
				this.NotificationsCollection.Insert(0, notification);
				return;
			}
			this.NotificationsCollection.Add(notification);
		}

		private IEnumerable<INotification> GetNotificationInstances(Type notificationType)
		{
			return from n in this.NotificationsCollection
			where n.GetType() == notificationType
			select n;
		}

		private void RemoveNotification(INotification notification)
		{
			if (notification != null)
			{
				IUIHelper arg_44_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
				MessageBase<NotificationStateChangedMessage, Type>.SendWith(notification.GetType(), null);
				arg_44_0.Dispatch(delegate
				{
					this.NotificationsCollection.Remove(notification);
				});
			}
		}

		private void LogUserSettings()
		{
			IInformation information = ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null);
			if (information.get_CurrentReleaseMode() == 2 || information.get_CurrentReleaseMode() == 1)
			{
				StringBuilder stringBuilder = new StringBuilder();
				stringBuilder.AppendLine("---Outputting Settings---");
				stringBuilder.AppendLine("Thread.CurrentThread.CurrentCulture: " + Thread.CurrentThread.CurrentCulture);
				stringBuilder.AppendLine("Thread.CurrentThread.CurrentUICulture: " + Thread.CurrentThread.CurrentUICulture);
				Dispatcher arg_92_0 = Application.Current.Dispatcher;
				Func<CultureInfo> arg_92_1;
				if ((arg_92_1 = MainWindowViewModel.<>c.<>9__56_0) == null)
				{
					arg_92_1 = (MainWindowViewModel.<>c.<>9__56_0 = new Func<CultureInfo>(MainWindowViewModel.<>c.<>9.<LogUserSettings>b__56_0));
				}
				CultureInfo arg = arg_92_0.Invoke<CultureInfo>(arg_92_1);
				stringBuilder.AppendLine("UI thread culture: " + arg);
				if (!ServiceLocatorExtensions.IsTypeRegistered<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null))
				{
					IPreferencesModel preferencesModel = VyprVPNSettings.CreatePreferencesModel();
					ServiceLocatorExtensions.RegisterInstance<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), preferencesModel, null);
				}
				IPreferencesModel arg2 = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
				stringBuilder.AppendLine("User preferences \n" + arg2);
				base.logger.Log(0, stringBuilder.ToString());
			}
		}

		private void UpdateUbaNotification()
		{
			if (!this._vyprVpnController.IsUsageBased)
			{
				return;
			}
			if (this._vyprVpnController.DataUsage == null)
			{
				return;
			}
			if (this._vyprVpnController.IsLoggedIn)
			{
				IEnumerable<INotification> arg_51_0 = this.NotificationsCollection;
				Func<INotification, bool> arg_51_1;
				if ((arg_51_1 = MainWindowViewModel.<>c.<>9__57_0) == null)
				{
					arg_51_1 = (MainWindowViewModel.<>c.<>9__57_0 = new Func<INotification, bool>(MainWindowViewModel.<>c.<>9.<UpdateUbaNotification>b__57_0));
				}
				if (arg_51_0.FirstOrDefault(arg_51_1) == null && this._vyprVpnController.DataUsage.get_UsedPercentage() >= this._vyprVpnController.NextUbaThreshold)
				{
					UBAUsageNotification uBAUsageNotification = new UBAUsageNotification
					{
						DataUsage = this._vyprVpnController.DataUsage,
						IgnoreCommand = this._ubaNotificationDismissedCommand
					};
					if (this._vyprVpnController.DataUsage.get_UsedPercentage() >= 100)
					{
						uBAUsageNotification.IsIgnorable = false;
					}
					this.InsertNotification(uBAUsageNotification, true);
					return;
				}
			}
			foreach (INotification current in this.NotificationsCollection.ToList<INotification>())
			{
				if (current is UBAUsageNotification)
				{
					this.RemoveNotification(current);
				}
			}
		}

		private void UbaNotificationDismissed(INotification notification)
		{
			UBAUsageNotification uBAUsageNotification = notification as UBAUsageNotification;
			if (uBAUsageNotification != null)
			{
				this._vyprVpnController.UpdateUbaThreshold();
				this.RemoveNotification(uBAUsageNotification);
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN.ViewModels
{
	public class NewFeatureModalViewModel : VyprViewModel, IDisposable
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<-ctor>b__5_2>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				private TaskAwaiter <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					try
					{
						TaskAwaiter taskAwaiter;
						if (num != 0)
						{
							taskAwaiter = VyprVPNSettings.ShowSettings().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, NewFeatureModalViewModel.<>c.<<-ctor>b__5_2>d>(ref taskAwaiter, ref this);
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

			public static readonly NewFeatureModalViewModel.<>c <>9 = new NewFeatureModalViewModel.<>c();

			public static Action <>9__5_2;

			internal async void ctor>b__5_2()
			{
				await VyprVPNSettings.ShowSettings();
			}
		}

		private Action OnClosedAction;

		private bool isDisposed;

		public static readonly PropertyData TagProperty = ModelBase.RegisterProperty("Tag", typeof(object), null, null, true, true, true);

		public static readonly PropertyData TextContentProperty = ModelBase.RegisterProperty("TextContent", typeof(string), null, null, true, true, true);

		public static readonly PropertyData ImageContentSourceProperty = ModelBase.RegisterProperty("ImageContentSource", typeof(string), null, null, true, true, true);

		public static readonly PropertyData PrimaryOptionTextProperty = ModelBase.RegisterProperty("PrimaryOptionText", typeof(string), null, null, true, true, true);

		public static readonly PropertyData SecondaryOptionTextProperty = ModelBase.RegisterProperty("SecondaryOptionText", typeof(string), null, null, true, true, true);

		public static readonly PropertyData PrimaryOptionCommandProperty = ModelBase.RegisterProperty("PrimaryOptionCommand", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData SecondaryOptionCommandProperty = ModelBase.RegisterProperty("SecondaryOptionCommand", typeof(ICommand), null, null, true, true, true);

		protected IUIHelper UIHelper
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			}
		}

		public object Tag
		{
			get
			{
				return base.GetValue<object>(NewFeatureModalViewModel.TagProperty);
			}
			set
			{
				this.OnTagChanged(this.Tag, value);
				base.SetValue(NewFeatureModalViewModel.TagProperty, value);
			}
		}

		public string TextContent
		{
			get
			{
				return base.GetValue<string>(NewFeatureModalViewModel.TextContentProperty);
			}
			set
			{
				base.SetValue(NewFeatureModalViewModel.TextContentProperty, value);
			}
		}

		public string ImageContentSource
		{
			get
			{
				return base.GetValue<string>(NewFeatureModalViewModel.ImageContentSourceProperty);
			}
			set
			{
				base.SetValue(NewFeatureModalViewModel.ImageContentSourceProperty, value);
			}
		}

		public string PrimaryOptionText
		{
			get
			{
				return base.GetValue<string>(NewFeatureModalViewModel.PrimaryOptionTextProperty);
			}
			set
			{
				base.SetValue(NewFeatureModalViewModel.PrimaryOptionTextProperty, value);
			}
		}

		public string SecondaryOptionText
		{
			get
			{
				return base.GetValue<string>(NewFeatureModalViewModel.SecondaryOptionTextProperty);
			}
			set
			{
				base.SetValue(NewFeatureModalViewModel.SecondaryOptionTextProperty, value);
			}
		}

		public ICommand PrimaryOptionCommand
		{
			get
			{
				return base.GetValue<ICommand>(NewFeatureModalViewModel.PrimaryOptionCommandProperty);
			}
			set
			{
				base.SetValue(NewFeatureModalViewModel.PrimaryOptionCommandProperty, value);
			}
		}

		public ICommand SecondaryOptionCommand
		{
			get
			{
				return base.GetValue<ICommand>(NewFeatureModalViewModel.SecondaryOptionCommandProperty);
			}
			set
			{
				base.SetValue(NewFeatureModalViewModel.SecondaryOptionCommandProperty, value);
			}
		}

		public NewFeatureModalViewModel()
		{
			this.Tag = base.get_UniqueIdentifier();
			MessageBase<NewFeatureModalClosedWindowMessage, object>.Register(this, new Action<NewFeatureModalClosedWindowMessage>(this.OnViewClosed), this.Tag);
		}

		public NewFeatureModalViewModel(string imagePath, string featureText, Screen uiScreen, Action onClosed = null) : this()
		{
			NewFeatureModalViewModel <>4__this = this;
			Action <>9__1;
			AsynchronousCommand primaryOptionCommand = new AsynchronousCommand(delegate
			{
				IUIHelper arg_2A_0 = ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
				Action arg_2A_1;
				if ((arg_2A_1 = <>9__1) == null)
				{
					arg_2A_1 = (<>9__1 = delegate
					{
						ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).ActiveScreen = uiScreen;
						<>4__this.SignalClose();
						IUIHelper arg_4B_0 = <>4__this.UIHelper;
						Action arg_4B_1;
						if ((arg_4B_1 = NewFeatureModalViewModel.<>c.<>9__5_2) == null)
						{
							arg_4B_1 = (NewFeatureModalViewModel.<>c.<>9__5_2 = new Action(NewFeatureModalViewModel.<>c.<>9.<.ctor>b__5_2));
						}
						arg_4B_0.Dispatch(arg_4B_1);
					});
				}
				arg_2A_0.Dispatch(arg_2A_1);
			}, null, null);
			AsynchronousCommand secondaryOptionCommand = new AsynchronousCommand(delegate
			{
				this.SignalClose();
			}, null, null);
			this.ImageContentSource = imagePath;
			this.TextContent = featureText;
			this.PrimaryOptionText = Resources.GetStarted;
			this.PrimaryOptionCommand = primaryOptionCommand;
			this.SecondaryOptionText = Resources.NotNow;
			this.SecondaryOptionCommand = secondaryOptionCommand;
			this.OnClosedAction = onClosed;
		}

		public NewFeatureModalViewModel(string contentImageSource, string contentText, string primaryOptionText, string secondaryOptionText, ICommand primaryOptionCommand, ICommand secondaryOptionCommand, Action onClose = null) : this(contentImageSource, contentText, Screen.GeneralPreferences, onClose)
		{
			this.PrimaryOptionText = primaryOptionText;
			this.SecondaryOptionText = secondaryOptionText;
			this.PrimaryOptionCommand = primaryOptionCommand;
			this.SecondaryOptionCommand = secondaryOptionCommand;
		}

		public void SignalClose()
		{
			MessageBase<NewFeatureModalCloseWindowMessage, object>.SendWith(null, this.Tag);
		}

		private void OnViewClosed(NewFeatureModalClosedWindowMessage msg)
		{
			Action expr_06 = this.OnClosedAction;
			if (expr_06 != null)
			{
				expr_06();
			}
			this.Close();
		}

		private void OnTagChanged(object oldTag, object newTag)
		{
			MessageBase<NewFeatureModalClosedWindowMessage, object>.Unregister(this, new Action<NewFeatureModalClosedWindowMessage>(this.OnViewClosed), oldTag);
			MessageBase<NewFeatureModalClosedWindowMessage, object>.Register(this, new Action<NewFeatureModalClosedWindowMessage>(this.OnViewClosed), newTag);
		}

		protected virtual void Dispose(bool disposing)
		{
			if (!this.isDisposed)
			{
				MessageBase<NewFeatureModalClosedWindowMessage, object>.Unregister(this, new Action<NewFeatureModalClosedWindowMessage>(this.OnViewClosed), this.Tag);
				MessageBase<NewFeatureModalClosedWindowMessage, object>.Unregister(this, new Action<NewFeatureModalClosedWindowMessage>(this.OnViewClosed), null);
				this.isDisposed = true;
			}
			this.OnClosedAction = null;
		}

		public void Dispose()
		{
			this.Dispose(true);
			GC.SuppressFinalize(this);
		}

		~NewFeatureModalViewModel()
		{
			this.Dispose(false);
		}
	}
}

using Catel.IoC;
using Catel.Reflection;
using Catel.Services;
using GoldenFrogUT.Utilities;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Threading.Tasks;
using VyprVPN.Classes;
using VyprVPN.Properties;
using VyprVPN.Views.QuitDialog;

namespace VyprVPN.ViewModels
{
	public class PreferencesWindowViewModel : VyprViewModel
	{
		private List<string> _dirtyProperties;

		private IPreferencesModel PreferencesModel
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private IVyprVPNController _vyprVpnController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			}
		}

		public PreferencesWindowViewModel(IPreferencesModel preferencesModel)
		{
			ServiceLocatorExtensions.RegisterInstance<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), preferencesModel, null);
			this._vyprVpnController.RefreshAccountSettings(true);
		}

		protected override async Task<bool> Save()
		{
			this._dirtyProperties = this.PreferencesModel.GetDirtyProperties().ToList<string>();
			if (this._dirtyProperties.Contains("KillSwitchEnabled"))
			{
				this._dirtyProperties.Remove("KillSwitchEnabled");
				this._dirtyProperties.Add("KillSwitchEnabled");
			}
			string item = "ConnectOnUnknownWifi";
			string item2 = "ConnectOnUnknownWifiIgnoreSsids";
			if (this._dirtyProperties.Contains(item) && this._dirtyProperties.Contains(item2))
			{
				if (this.PreferencesModel.ConnectOnUnknownWifi)
				{
					this._dirtyProperties.Remove(item);
					this._dirtyProperties.Add(item);
				}
				else
				{
					this._dirtyProperties.Remove(item2);
					this._dirtyProperties.Add(item2);
				}
			}
			List<string>.Enumerator enumerator = this._dirtyProperties.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					PropertyInfo property = typeof(IPreferencesModel).GetProperty(current);
					object value = property.GetValue(this.PreferencesModel, null);
					this.logger.Log(0, "PreferencesWindowViewModel:Save saving dirty property {0} with value {1}", new object[]
					{
						current,
						value
					});
					Type typeFromHandle = typeof(IVyprVPNController);
					if (ReflectionExtensions.GetPropertyEx(typeFromHandle, current, true, true, true) != null)
					{
						PropertyInfo property2 = typeFromHandle.GetProperty(current);
						if (current.Equals("ConnectOnUnknownWifiIgnoreSsids"))
						{
							property2.SetValue(this.VyprVPNController, ((ObservableCollection<string>)property.GetValue(this.PreferencesModel, null)).ToList<string>(), null);
						}
						else if (current.Equals("AlternateDnsPrimary") || current.Equals("AlternateDnsSecondary"))
						{
							IPAddress iPAddress = null;
							string ipString = property.GetValue(this.PreferencesModel, null).ToString().Replace(" ", "");
							property2.SetValue(this.VyprVPNController, IPAddress.TryParse(ipString, out iPAddress) ? iPAddress.ToString() : IPAddress.Any.ToString(), null);
						}
						else
						{
							property2.SetValue(this.VyprVPNController, property.GetValue(this.PreferencesModel, null), null);
						}
					}
					if (current.Equals("UiLocale", StringComparison.OrdinalIgnoreCase))
					{
						string text = (string)property.GetValue(this.PreferencesModel, null);
						ISettings settings = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
						if (text != settings.SelectedUILocale)
						{
							settings.SelectedUILocale = text;
							settings.Save();
						}
					}
				}
			}
			finally
			{
				int num;
				if (num < 0)
				{
					((IDisposable)enumerator).Dispose();
				}
			}
			this.PreferencesModel.ClearDirtyFlag();
			if (this._dirtyProperties.Contains("UiLocale"))
			{
				this.ShowRestartRequestedMessageBox();
			}
			else if (this.VyprVPNController.ConnectionStatus != null && (this._dirtyProperties.Contains("AlternateDnsEnabled") || this._dirtyProperties.Contains("AlternateDnsPrimary") || this._dirtyProperties.Contains("AlternateDnsSecondary") || this._dirtyProperties.Contains("DnsLeakProtectionEnabled") || this._dirtyProperties.Contains("Protocol") || this._dirtyProperties.Contains("SelectedOpenVpnLogVerbosityLevel") || this._dirtyProperties.Contains("SelectedRouteDelay") || this._dirtyProperties.Contains("SelectedMtu") || this._dirtyProperties.Contains("SelectedTlsTimeout") || this._dirtyProperties.Contains("SelectedTAPAdapter") || this._dirtyProperties.Contains("AdditionalOpenVpnParameters")))
			{
				this.ShowReconnectRequestedMessageBox();
			}
			return true;
		}

		private void ShowRestartRequestedMessageBox()
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				bool? flag = new QuitDialog(Resources.RestartRequired, Resources.SettingsRestartRequestedMessage, string.Empty, Resources.Restart, Resources.Cancel, "", false, true, false).ShowDialog();
				if (!flag.HasValue)
				{
					base.logger.Log(0, "Unexpected result received from locale change UI.");
					return;
				}
				if (flag.Value)
				{
					base.logger.Log(0, "User selected to restart UI on locale change.");
					ServiceLocatorExtensions.ResolveType<IGeneralUtilities>(ServiceLocator.get_Default(), null).RestartApplication("VyprVPNRestart.bat", 5);
					return;
				}
				base.logger.Log(0, "User selected not to restart UI on locale change.");
			});
		}

		private void ShowReconnectRequestedMessageBox()
		{
			IMessageService messageService = ServiceLocatorExtensions.ResolveType<IMessageService>(ServiceLocator.get_Default(), null);
			string reconnectMessage = Resources.SettingsReconnectRequestedMessage1 + Environment.NewLine + Environment.NewLine;
			if (this._dirtyProperties.Contains("AlternateDnsEnabled") || this._dirtyProperties.Contains("AlternateDnsPrimary") || this._dirtyProperties.Contains("AlternateDnsSecondary") || this._dirtyProperties.Contains("DnsLeakProtectionEnabled"))
			{
				reconnectMessage = reconnectMessage + " - " + Resources.SettingsDnsChanges + Environment.NewLine;
			}
			if (this._dirtyProperties.Contains("Protocol"))
			{
				reconnectMessage = reconnectMessage + " - " + Resources.SettingsProtocolChanges + Environment.NewLine;
			}
			if (this._dirtyProperties.Contains("SelectedOpenVpnLogVerbosityLevel"))
			{
				reconnectMessage = reconnectMessage + " - " + Resources.Verbosity + Environment.NewLine;
			}
			if (this._dirtyProperties.Contains("SelectedRouteDelay"))
			{
				reconnectMessage = reconnectMessage + " - " + Resources.RouteDelay + Environment.NewLine;
			}
			if (this._dirtyProperties.Contains("SelectedMtu"))
			{
				reconnectMessage = reconnectMessage + " - " + Resources.MTU + Environment.NewLine;
			}
			if (this._dirtyProperties.Contains("SelectedTlsTimeout"))
			{
				reconnectMessage = reconnectMessage + " - " + Resources.TlsTimeout + Environment.NewLine;
			}
			if (this._dirtyProperties.Contains("SelectedTAPAdapter"))
			{
				reconnectMessage = reconnectMessage + " - " + Resources.TAPAdapter + Environment.NewLine;
			}
			if (this._dirtyProperties.Contains("AdditionalOpenVpnParameters"))
			{
				reconnectMessage = reconnectMessage + " - " + Resources.OtherOpenVPNParameters + Environment.NewLine;
			}
			reconnectMessage = reconnectMessage + Environment.NewLine + Resources.SettingsReconnectRequestedMessage2;
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				MessageResult messageResult = await messageService.Show(reconnectMessage, "VyprVPN", 4, 3);
				if (messageResult != 3)
				{
					if (messageResult != 4)
					{
						this.logger.Log(0, "Unexpected result received from reconnect on settings change UI.");
					}
					else
					{
						this.logger.Log(0, "User selected not to reconnect on settings change.");
					}
				}
				else
				{
					this.logger.Log(0, "User selected to reconnect on settings change.");
					this.VyprVPNController.Reconnect(2);
				}
			});
		}
	}
}

using Catel.Data;
using Catel.Messaging;
using Catel.MVVM;
using System;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Messages;

namespace VyprVPN.ViewModels
{
	public class ProgressControlViewModel : VyprViewModel, IDisposable
	{
		public static readonly PropertyData ButtonTextProperty = ModelBase.RegisterProperty("ButtonText", typeof(string), null, null, true, true, true);

		public static readonly PropertyData ProgressValueProperty = ModelBase.RegisterProperty("ProgressValue", typeof(int), null, null, true, true, true);

		public static readonly PropertyData IsIndeterminateProperty = ModelBase.RegisterProperty("IsIndeterminate", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData MessageProperty = ModelBase.RegisterProperty("Message", typeof(string), null, null, true, true, true);

		public static readonly PropertyData MaximumProgressValueProperty = ModelBase.RegisterProperty("MaximumProgressValue", typeof(int), null, null, true, true, true);

		public static readonly PropertyData MinimumProgressValueProperty = ModelBase.RegisterProperty("MinimumProgressValue", typeof(int), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData SourceProperty = ModelBase.RegisterProperty("Source", typeof(CancellationTokenSource), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData WorkProperty = ModelBase.RegisterProperty("Work", typeof(Action), null, null, true, true, true);

		protected CancellationTokenSource Source
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<CancellationTokenSource>(ProgressControlViewModel.SourceProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(ProgressControlViewModel.SourceProperty, value);
			}
		}

		protected Action Work
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<Action>(ProgressControlViewModel.WorkProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(ProgressControlViewModel.WorkProperty, value);
			}
		}

		public string ButtonText
		{
			get
			{
				return base.GetValue<string>(ProgressControlViewModel.ButtonTextProperty);
			}
			set
			{
				base.SetValue(ProgressControlViewModel.ButtonTextProperty, value);
			}
		}

		public int ProgressValue
		{
			get
			{
				return base.GetValue<int>(ProgressControlViewModel.ProgressValueProperty);
			}
			set
			{
				base.SetValue(ProgressControlViewModel.ProgressValueProperty, value);
			}
		}

		public bool IsIndeterminate
		{
			get
			{
				return base.GetValue<bool>(ProgressControlViewModel.IsIndeterminateProperty);
			}
			set
			{
				base.SetValue(ProgressControlViewModel.IsIndeterminateProperty, value);
			}
		}

		public string Message
		{
			get
			{
				return base.GetValue<string>(ProgressControlViewModel.MessageProperty);
			}
			set
			{
				base.SetValue(ProgressControlViewModel.MessageProperty, value);
			}
		}

		public int MaximumProgressValue
		{
			get
			{
				return base.GetValue<int>(ProgressControlViewModel.MaximumProgressValueProperty);
			}
			set
			{
				base.SetValue(ProgressControlViewModel.MaximumProgressValueProperty, value);
			}
		}

		public int MinimumProgressValue
		{
			get
			{
				return base.GetValue<int>(ProgressControlViewModel.MinimumProgressValueProperty);
			}
			set
			{
				base.SetValue(ProgressControlViewModel.MinimumProgressValueProperty, value);
			}
		}

		public ICommand ButtonCommand
		{
			get;
			private set;
		}

		protected ProgressControlViewModel(string message, string buttonText)
		{
			this.MinimumProgressValue = 0;
			this.MaximumProgressValue = 100;
			this.IsIndeterminate = true;
			this.Message = message;
			this.ButtonText = buttonText;
			this.ButtonCommand = new AsynchronousCommand(delegate
			{
				this.Close();
			}, null, null);
		}

		public ProgressControlViewModel(string message, string buttonText, Action<CancellationToken> cancellableWork, bool isIndeteriminate = true) : this(message, buttonText)
		{
			if (cancellableWork == null)
			{
				throw new ArgumentException("Action cannot be null", "cancellableWork");
			}
			Action<CancellationToken> work = cancellableWork;
			this.Source = new CancellationTokenSource();
			this.Work = delegate
			{
				work(this.Source.Token);
			};
			this.IsIndeterminate = isIndeteriminate;
		}

		public void StartWork()
		{
			if (this.Work == null)
			{
				base.LogInfo("ProgressControlViewModel (PCVM): No work to run in background. Skipping.");
				return;
			}
			base.LogInfo("ProgressControlViewModel (PCVM): Running progress control's given work.");
			Task.Run(this.Work).ContinueWith(delegate(Task task)
			{
				this.Close();
			});
		}

		protected void SetProgressRatio(double completed, double total)
		{
			this.ProgressValue = (int)(completed / total) * 100;
		}

		protected void SetProgress(int value)
		{
			this.ProgressValue = Math.Max(Math.Min(value, this.MaximumProgressValue), this.MinimumProgressValue);
		}

		public void Close()
		{
			base.LogInfo("PCVM: Closing progress control and signalling cancel for remaining actions.");
			CancellationTokenSource expr_11 = this.Source;
			if (expr_11 != null)
			{
				expr_11.Cancel();
			}
			base.LogInfo("PCVM: Signal sent to cancel remaining actions.");
			this.Dispose();
			MessageBase<ProgressControlClosedMessage, object>.SendWith(null, null);
			base.LogInfo("PCVM: Signal sent that progress control closed.");
		}

		public void Dispose()
		{
			CancellationTokenSource expr_06 = this.Source;
			if (expr_06 != null)
			{
				expr_06.Dispose();
			}
			this.Source = null;
			this.Work = null;
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using Catel.Services;
using GoldenFrogVPN;
using GoldenFrogVPN.Enums;
using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using VyprVPN.Classes;
using VyprVPN.Properties;

namespace VyprVPN.ViewModels
{
	public class ProtocolViewModel : VyprViewModel
	{
		public static readonly PropertyData HasChameleonProperty = ModelBase.RegisterProperty<bool>("HasChameleon", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData HasOpenVPNProperty = ModelBase.RegisterProperty<bool>("HasOpenVPN", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData HasL2TPProperty = ModelBase.RegisterProperty<bool>("HasL2TP", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData HasPPTPProperty = ModelBase.RegisterProperty<bool>("HasPPTP", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ProtocolSelectedProperty = ModelBase.RegisterProperty("ProtocolSelected", typeof(Protocol), null, null, true, true, true);

		public static readonly PropertyData ChameleonPortProperty = ModelBase.RegisterProperty("ChameleonPort", typeof(string), null, null, true, true, true);

		public static readonly PropertyData OpenVPNPortProperty = ModelBase.RegisterProperty("OpenVPNPort", typeof(string), null, null, true, true, true);

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData ProtocolProperty = ModelBase.RegisterProperty("Protocol", typeof(Protocol), null, null, true, true, true);

		public AsynchronousCommand ConfigureChameleon
		{
			get;
			private set;
		}

		public AsynchronousCommand ConfigureOpenVPN
		{
			get;
			private set;
		}

		public bool HasChameleon
		{
			get
			{
				return (bool)base.GetValue(ProtocolViewModel.HasChameleonProperty);
			}
			set
			{
				base.SetValue(ProtocolViewModel.HasChameleonProperty, value);
			}
		}

		public bool HasOpenVPN
		{
			get
			{
				return (bool)base.GetValue(ProtocolViewModel.HasOpenVPNProperty);
			}
			set
			{
				base.SetValue(ProtocolViewModel.HasOpenVPNProperty, value);
			}
		}

		public bool HasL2TP
		{
			get
			{
				return (bool)base.GetValue(ProtocolViewModel.HasL2TPProperty);
			}
			set
			{
				base.SetValue(ProtocolViewModel.HasL2TPProperty, value);
			}
		}

		public bool HasPPTP
		{
			get
			{
				return (bool)base.GetValue(ProtocolViewModel.HasPPTPProperty);
			}
			set
			{
				base.SetValue(ProtocolViewModel.HasPPTPProperty, value);
			}
		}

		public Protocol ProtocolSelected
		{
			get
			{
				Protocol protocol = this.PreferencesModel.Protocol;
				if (protocol == 3 || protocol == 2)
				{
					protocol = 3;
				}
				return protocol;
			}
			set
			{
				if (value == 3)
				{
					this.PreferencesModel.Protocol = this.PreferencesModel.SelectedOpenVPNProtocol;
				}
				else
				{
					this.PreferencesModel.Protocol = value;
				}
				base.RaisePropertyChanged<Protocol>(() => this.ProtocolSelected);
			}
		}

		public string ChameleonPort
		{
			get
			{
				return (string)base.GetValue(ProtocolViewModel.ChameleonPortProperty);
			}
			set
			{
				base.SetValue(ProtocolViewModel.ChameleonPortProperty, value);
			}
		}

		public string OpenVPNPort
		{
			get
			{
				return (string)base.GetValue(ProtocolViewModel.OpenVPNPortProperty);
			}
			set
			{
				base.SetValue(ProtocolViewModel.OpenVPNPortProperty, value);
			}
		}

		public string OpenVPNEncryption
		{
			get
			{
				if (this.PreferencesModel.SelectedOpenVPNProtocol != 2)
				{
					return Resources.Bit256;
				}
				return Resources.Bit160;
			}
		}

		[Model]
		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(ProtocolViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(ProtocolViewModel.PreferencesModelProperty, value);
			}
		}

		[ViewModelToModel("PreferencesModel", "Protocol"), CompilerGenerated]
		public Protocol Protocol
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<Protocol>(ProtocolViewModel.ProtocolProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(ProtocolViewModel.ProtocolProperty, value);
			}
		}

		public ProtocolViewModel()
		{
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			this.PreferencesModel.PropertyChangedEvent += new System.ComponentModel.PropertyChangedEventHandler(this.PreferencesModel_PropertyChangedEvent);
			this.SetupProtocolProperties();
			this.ConfigureChameleon = new AsynchronousCommand(delegate
			{
				this.LaunchConfigureDialog(4);
			}, null, null);
			this.ConfigureOpenVPN = new AsynchronousCommand(delegate
			{
				this.LaunchConfigureDialog(3);
			}, null, null);
		}

		private void PreferencesModel_PropertyChangedEvent(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "SelectedOpenVPNProtocol")
			{
				base.RaisePropertyChanged<string>(() => this.OpenVPNEncryption);
				base.RaisePropertyChanged<Protocol>(() => this.ProtocolSelected);
				if (this.PreferencesModel.Protocol == 2 || this.PreferencesModel.Protocol == 3)
				{
					this.PreferencesModel.Protocol = this.PreferencesModel.SelectedOpenVPNProtocol;
					return;
				}
			}
			else if (e.PropertyName == "OpenVpnPortsAndTransportProtocolConfigs")
			{
				this.PopulatePortAndEncryptionInformation();
			}
		}

		private void LaunchConfigureDialog(Protocol protocolToConfigure)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				ConfigureProtocolViewModel configureProtocolViewModel = new ConfigureProtocolViewModel(protocolToConfigure);
				await ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(this), null).ShowDialog(configureProtocolViewModel, null);
			});
		}

		private void SetupProtocolProperties()
		{
			if (base.VyprVPNController == null || base.VyprVPNController.AccountSettingsBag == null || base.VyprVPNController.AccountSettingsBag.get_AccountProtocols() == null)
			{
				base.logger.Log(1, "ProtocolViewModel.SetupProtocolProperties called while it's dependencies are null, probably the AccountSettingBag");
				return;
			}
			if (!base.VyprVPNController.AccountSettingsBag.get_AccountProtocols().Contains(this.PreferencesModel.Protocol))
			{
				this.PreferencesModel.Protocol = ProtocolExtensions.GetBestAvailableOrDefault(base.VyprVPNController.AccountSettingsBag.get_AccountProtocols());
			}
			this.HasChameleon = base.VyprVPNController.AccountSettingsBag.get_AccountProtocols().Contains(4);
			this.HasOpenVPN = (base.VyprVPNController.AccountSettingsBag.get_AccountProtocols().Contains(3) || base.VyprVPNController.AccountSettingsBag.get_AccountProtocols().Contains(2));
			this.HasL2TP = base.VyprVPNController.AccountSettingsBag.get_AccountProtocols().Contains(1);
			this.HasPPTP = base.VyprVPNController.AccountSettingsBag.get_AccountProtocols().Contains(0);
			this.PopulatePortAndEncryptionInformation();
		}

		private void PopulatePortAndEncryptionInformation()
		{
			if (this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs != null)
			{
				OpenVpnPortsAndTransportProtocolConfig openVpnPortsAndTransportProtocolConfig = this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs.ContainsKey(4) ? this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs.get_Item(4) : null;
				if (openVpnPortsAndTransportProtocolConfig != null)
				{
					string text = openVpnPortsAndTransportProtocolConfig.get_AutomaticPortSelection() ? Resources.Automatic : Resources.Manual;
					int selectedPort = openVpnPortsAndTransportProtocolConfig.get_SelectedPort();
					if (openVpnPortsAndTransportProtocolConfig.get_AutomaticPortSelection() && !openVpnPortsAndTransportProtocolConfig.get_AutomaticPortWorked())
					{
						this.ChameleonPort = text;
					}
					else
					{
						this.ChameleonPort = string.Format("{0} ({1})", text, selectedPort);
					}
				}
				if (this.PreferencesModel.Protocol == 2)
				{
					OpenVpnPortsAndTransportProtocolConfig openVpnPortsAndTransportProtocolConfig2 = this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs.ContainsKey(2) ? this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs.get_Item(2) : null;
					if (openVpnPortsAndTransportProtocolConfig2 != null)
					{
						string text2 = openVpnPortsAndTransportProtocolConfig2.get_AutomaticPortSelection() ? Resources.Automatic : Resources.Manual;
						int selectedPort2 = openVpnPortsAndTransportProtocolConfig2.get_SelectedPort();
						if (openVpnPortsAndTransportProtocolConfig2.get_AutomaticPortSelection() && !openVpnPortsAndTransportProtocolConfig2.get_AutomaticPortWorked())
						{
							this.OpenVPNPort = text2;
							return;
						}
						this.OpenVPNPort = string.Format("{0} ({1})", text2, selectedPort2);
						return;
					}
				}
				else
				{
					OpenVpnPortsAndTransportProtocolConfig openVpnPortsAndTransportProtocolConfig3 = this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs.ContainsKey(3) ? this.PreferencesModel.OpenVpnPortsAndTransportProtocolConfigs.get_Item(3) : null;
					if (openVpnPortsAndTransportProtocolConfig3 != null)
					{
						string text3 = openVpnPortsAndTransportProtocolConfig3.get_AutomaticPortSelection() ? Resources.Automatic : Resources.Manual;
						int selectedPort3 = openVpnPortsAndTransportProtocolConfig3.get_SelectedPort();
						if (openVpnPortsAndTransportProtocolConfig3.get_AutomaticPortSelection() && !openVpnPortsAndTransportProtocolConfig3.get_AutomaticPortWorked())
						{
							this.OpenVPNPort = text3;
							return;
						}
						this.OpenVPNPort = string.Format("{0} ({1})", text3, selectedPort3);
						return;
					}
				}
			}
			else
			{
				this.ChameleonPort = Resources.Automatic;
				this.OpenVPNPort = Resources.Automatic;
			}
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("PreferencesModel"))
			{
				base.RaisePropertyChanged("ProtocolSelected");
			}
			if (e.PropertyName.Equals("PreferencesModel"))
			{
				base.RaisePropertyChanged("OpenVPNEncryption");
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using ServiceManager.Enums;
using ServiceManager.Interfaces;
using System;
using System.Threading;
using VyprVPN.Classes;
using VyprVPN.Enums;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN.ViewModels
{
	public class ServiceRepairWizardViewModel : VyprViewModel, IDisposable
	{
		public enum ServiceRepairWizardState
		{
			RepairPrompt,
			RepairProgress,
			FailureDialog,
			AutostartRepairPrompt,
			AutostartRepairProgress,
			SuccessDialog
		}

		private object stateLock = new object();

		public static readonly PropertyData StateProperty = ModelBase.RegisterProperty("State", typeof(ServiceRepairWizardViewModel.ServiceRepairWizardState), null, null, true, true, true);

		public static readonly PropertyData WindowTitleProperty = ModelBase.RegisterProperty("WindowTitle", typeof(string), null, null, true, true, true);

		public static readonly PropertyData InitialPromptDataContextProperty = ModelBase.RegisterProperty("RepairPromptDataContext", typeof(DialogControlViewModel), null, null, true, true, true);

		public static readonly PropertyData RepairProgressDataContextProperty = ModelBase.RegisterProperty("RepairProgressDataContext", typeof(ProgressControlViewModel), null, null, true, true, true);

		public static readonly PropertyData FailureDialogDataContextProperty = ModelBase.RegisterProperty("FailureDialogDataContext", typeof(DialogControlViewModel), null, null, true, true, true);

		public static readonly PropertyData AutostartRepairPromptDataContextProperty = ModelBase.RegisterProperty("AutostartRepairPromptDataContext", typeof(DialogControlViewModel), null, null, true, true, true);

		public static readonly PropertyData AutostartRepairProgressDataContextProperty = ModelBase.RegisterProperty("AutostartRepairProgressDataContext", typeof(ProgressControlViewModel), null, null, true, true, true);

		public static readonly PropertyData SuccessDialogDataContextProperty = ModelBase.RegisterProperty("SuccessDialogDataContext", typeof(DialogControlViewModel), null, null, true, true, true);

		public static readonly PropertyData IsEnabledProperty = ModelBase.RegisterProperty("IsEnabled", typeof(bool), null, null, true, true, true);

		private IServiceRepair Repair
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IServiceRepair>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private IUIHelper uiHelper
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		private bool CanPromptForAutostartRepair
		{
			get
			{
				return !this.Repair.IsSetToAutoStart() && ServiceLocatorExtensions.ResolveType<ISettings>(ObjectExtensions.GetServiceLocator(this), null).CorrectServiceAutoStartIssues;
			}
		}

		public ServiceRepairWizardViewModel.ServiceRepairWizardState State
		{
			get
			{
				return base.GetValue<ServiceRepairWizardViewModel.ServiceRepairWizardState>(ServiceRepairWizardViewModel.StateProperty);
			}
			set
			{
				base.SetValue(ServiceRepairWizardViewModel.StateProperty, value);
			}
		}

		public string WindowTitle
		{
			get
			{
				return base.GetValue<string>(ServiceRepairWizardViewModel.WindowTitleProperty);
			}
			protected set
			{
				base.SetValue(ServiceRepairWizardViewModel.WindowTitleProperty, value);
			}
		}

		public DialogControlViewModel RepairPromptDataContext
		{
			get
			{
				return base.GetValue<DialogControlViewModel>(ServiceRepairWizardViewModel.InitialPromptDataContextProperty);
			}
			set
			{
				base.SetValue(ServiceRepairWizardViewModel.InitialPromptDataContextProperty, value);
			}
		}

		public ProgressControlViewModel RepairProgressDataContext
		{
			get
			{
				return base.GetValue<ProgressControlViewModel>(ServiceRepairWizardViewModel.RepairProgressDataContextProperty);
			}
			set
			{
				base.SetValue(ServiceRepairWizardViewModel.RepairProgressDataContextProperty, value);
			}
		}

		public DialogControlViewModel FailureDialogDataContext
		{
			get
			{
				return base.GetValue<DialogControlViewModel>(ServiceRepairWizardViewModel.FailureDialogDataContextProperty);
			}
			set
			{
				base.SetValue(ServiceRepairWizardViewModel.FailureDialogDataContextProperty, value);
			}
		}

		public DialogControlViewModel AutostartRepairPromptDataContext
		{
			get
			{
				return base.GetValue<DialogControlViewModel>(ServiceRepairWizardViewModel.AutostartRepairPromptDataContextProperty);
			}
			set
			{
				base.SetValue(ServiceRepairWizardViewModel.AutostartRepairPromptDataContextProperty, value);
			}
		}

		public ProgressControlViewModel AutostartRepairProgressDataContext
		{
			get
			{
				return base.GetValue<ProgressControlViewModel>(ServiceRepairWizardViewModel.AutostartRepairProgressDataContextProperty);
			}
			set
			{
				base.SetValue(ServiceRepairWizardViewModel.AutostartRepairProgressDataContextProperty, value);
			}
		}

		public DialogControlViewModel SuccessDialogDataContext
		{
			get
			{
				return base.GetValue<DialogControlViewModel>(ServiceRepairWizardViewModel.SuccessDialogDataContextProperty);
			}
			set
			{
				base.SetValue(ServiceRepairWizardViewModel.SuccessDialogDataContextProperty, value);
			}
		}

		public bool IsEnabled
		{
			get
			{
				return base.GetValue<bool>(ServiceRepairWizardViewModel.IsEnabledProperty);
			}
			set
			{
				base.SetValue(ServiceRepairWizardViewModel.IsEnabledProperty, value);
			}
		}

		public ServiceRepairWizardViewModel()
		{
			this.uiHelper.UpdateCurrentThreadLocale();
			this.WindowTitle = Resources.ApplicationName;
			this.IsEnabled = true;
			MessageBase<ServiceRepairWizardViewClosingMessage, bool?>.Register(this, new Action<ServiceRepairWizardViewClosingMessage>(this.OnViewClosing), null);
			ServiceDiagnosis serviceDiagnosis = this.Repair.DiagnoseService();
			this.State = ((serviceDiagnosis == 4 || serviceDiagnosis == 3) ? ServiceRepairWizardViewModel.ServiceRepairWizardState.RepairPrompt : ServiceRepairWizardViewModel.ServiceRepairWizardState.FailureDialog);
			this.RepairPromptDataContext = new DialogControlViewModel(this.GetPromptMessageForDiagnosis(serviceDiagnosis), Resources.Yes)
			{
				SecondaryButtonText = Resources.QuitVyprVPN,
				IsSecondaryButtonVisible = true,
				Icon = ImageIcon.Warning,
				IsIconVisible = true,
				PrimaryButtonCommand = new AsynchronousCommand(delegate
				{
					this.ChangeState(ServiceRepairWizardViewModel.ServiceRepairWizardState.RepairProgress);
				}, new Func<bool>(this.CanStateChange), null),
				SecondaryButtonCommand = new AsynchronousCommand(delegate
				{
					this.AttemptCloseWithResult(false);
				}, new Func<bool>(this.CanStateChange), null)
			};
			this.RepairProgressDataContext = new ProgressControlViewModel(Resources.ServiceRepairDialogAttemptingRepairsMessage, Resources.ServiceRepairDialogCancelText, new Action<CancellationToken>(this.PerformRepairs), true);
			string message = Resources.ServiceNotSetToAutoStartMessage + Environment.NewLine + Environment.NewLine + Resources.ServiceNotSetToAutoStartQuestion;
			this.AutostartRepairPromptDataContext = new DialogControlViewModel(message, Resources.Yes)
			{
				SecondaryButtonText = Resources.No,
				IsSecondaryButtonVisible = true,
				Icon = ImageIcon.Information,
				IsIconVisible = true,
				CheckBoxMessage = Resources.NeverAskAgain,
				IsCheckBoxVisible = true,
				PrimaryButtonCommand = new AsynchronousCommand(delegate
				{
					this.UpdateAutostartPreference(this.AutostartRepairPromptDataContext.IsCheckBoxChecked);
					this.ChangeState(ServiceRepairWizardViewModel.ServiceRepairWizardState.AutostartRepairProgress);
				}, new Func<bool>(this.CanStateChange), null),
				SecondaryButtonCommand = new AsynchronousCommand(delegate
				{
					this.UpdateAutostartPreference(this.AutostartRepairPromptDataContext.IsCheckBoxChecked);
					this.ChangeState(ServiceRepairWizardViewModel.ServiceRepairWizardState.SuccessDialog);
				}, new Func<bool>(this.CanStateChange), null)
			};
			this.AutostartRepairProgressDataContext = new ProgressControlViewModel(Resources.ServiceRepairDialogAttemptingRepairsMessage, Resources.ServiceRepairDialogCancelText, delegate(CancellationToken token)
			{
				this.AttemptCancellableAutostartRepair(token);
				this.ChangeState(ServiceRepairWizardViewModel.ServiceRepairWizardState.SuccessDialog);
			}, true);
			this.SuccessDialogDataContext = new DialogControlViewModel(Resources.ServiceRepairSuccessful, Resources.OK)
			{
				Icon = ImageIcon.Information,
				IsIconVisible = true,
				PrimaryButtonCommand = new AsynchronousCommand(delegate
				{
					this.AttemptCloseWithResult(true);
				}, new Func<bool>(this.CanStateChange), null)
			};
			this.FailureDialogDataContext = new DialogControlViewModel(this.GetFailureMessageForDiagnosis(serviceDiagnosis), Resources.Yes)
			{
				Question = Resources.ContactSupportNowQuestion,
				IsQuestionVisible = true,
				SecondaryButtonText = Resources.No,
				IsSecondaryButtonVisible = true,
				Icon = ImageIcon.Warning,
				IsIconVisible = true,
				PrimaryButtonCommand = new AsynchronousCommand(delegate
				{
					this.uiHelper.ShowCustomerSupportDialog();
					this.AttemptCloseWithResult(false);
				}, new Func<bool>(this.CanStateChange), null),
				SecondaryButtonCommand = new AsynchronousCommand(delegate
				{
					this.AttemptCloseWithResult(false);
				}, new Func<bool>(this.CanStateChange), null)
			};
		}

		private void PerformRepairs(CancellationToken token)
		{
			bool expr_07 = this.AttemptCancellableRepairs(token);
			ServiceRepairWizardViewModel.ServiceRepairWizardState state = expr_07 ? (this.CanPromptForAutostartRepair ? ServiceRepairWizardViewModel.ServiceRepairWizardState.AutostartRepairPrompt : ServiceRepairWizardViewModel.ServiceRepairWizardState.SuccessDialog) : ServiceRepairWizardViewModel.ServiceRepairWizardState.FailureDialog;
			if (expr_07 && this.Repair.DiagnoseService() != null)
			{
				state = ServiceRepairWizardViewModel.ServiceRepairWizardState.FailureDialog;
				if (this.FailureDialogDataContext != null)
				{
					this.uiHelper.UpdateCurrentThreadLocale();
					this.FailureDialogDataContext.Message = Resources.ServiceRepairedThenStopped;
					this.FailureDialogDataContext.IsQuestionVisible = false;
				}
			}
			this.ChangeState(state);
		}

		private string GetPromptMessageForDiagnosis(ServiceDiagnosis diagnosis)
		{
			this.uiHelper.UpdateCurrentThreadLocale();
			if (diagnosis == 3)
			{
				return Resources.ServiceNotRunningRestartRequest;
			}
			if (diagnosis == 4)
			{
				return Resources.ServiceNotFoundInstallRequest;
			}
			return Resources.ServiceNotCommunicating;
		}

		private string GetFailureMessageForDiagnosis(ServiceDiagnosis diagnosis)
		{
			this.uiHelper.UpdateCurrentThreadLocale();
			if (diagnosis == 3)
			{
				return Resources.ServiceStartFailedMessage;
			}
			if (diagnosis == 4)
			{
				return Resources.ServiceInstallFailed;
			}
			return Resources.ServiceNotCommunicating;
		}

		private bool AttemptCancellableRepairs(CancellationToken token)
		{
			this.Repair.EnableCancellation(new CancellationToken?(token));
			bool? arg_23_0 = this.AttemptRepairs(null);
			this.Repair.ResetCancellation();
			return arg_23_0 ?? false;
		}

		private bool AttemptCancellableAutostartRepair(CancellationToken token)
		{
			this.Repair.EnableCancellation(new CancellationToken?(token));
			bool? arg_2E_0 = this.AttemptRepairs(() => new bool?(this.Repair.SetToAutoStart()));
			this.Repair.ResetCancellation();
			return arg_2E_0 ?? false;
		}

		private bool? AttemptRepairs(Func<bool?> customRepair = null)
		{
			base.LogInfo("SRWVM: Attempting to repair service.");
			bool? flag = null;
			try
			{
				flag = ((customRepair == null) ? new bool?(this.Repair.RepairService()) : customRepair());
			}
			catch (OperationCanceledException)
			{
				base.LogInfo("SRWVM: Repair operations canceled.");
			}
			finally
			{
				base.LogInfo(string.Format("SRWVM: Completing service repairs after result of {0}.", flag));
				this.Repair.ResetCancellation();
			}
			return flag;
		}

		private void UpdateAutostartPreference(bool neverAskAgain)
		{
			if (neverAskAgain)
			{
				base.LogInfo("SRWVM: Disabling future autostart checks.");
				ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null).CorrectServiceAutoStartIssues = false;
				ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null).Save();
			}
		}

		private void OnViewClosing(ServiceRepairWizardViewClosingMessage message)
		{
			bool result = this.State == ServiceRepairWizardViewModel.ServiceRepairWizardState.AutostartRepairPrompt || this.State == ServiceRepairWizardViewModel.ServiceRepairWizardState.AutostartRepairProgress || this.State == ServiceRepairWizardViewModel.ServiceRepairWizardState.SuccessDialog;
			this.AttemptCloseWithResult(result);
		}

		private bool CanStateChange()
		{
			return this.IsEnabled;
		}

		private void ChangeState(ServiceRepairWizardViewModel.ServiceRepairWizardState state)
		{
			this.Dispatch(delegate
			{
				this.IsEnabled = false;
				if (this.State != state)
				{
					if (state == ServiceRepairWizardViewModel.ServiceRepairWizardState.RepairProgress)
					{
						this.RepairProgressDataContext.StartWork();
					}
					else if (state == ServiceRepairWizardViewModel.ServiceRepairWizardState.AutostartRepairProgress)
					{
						this.AutostartRepairProgressDataContext.StartWork();
					}
					this.State = state;
				}
				this.IsEnabled = true;
			});
		}

		private void AttemptCloseWithResult(bool result)
		{
			try
			{
				MessageBase<ServiceRepairWizardViewSetDialogResultMessage, bool?>.SendWith(new bool?(result), null);
			}
			catch (Exception ex)
			{
				base.logger.Log(3, string.Format("SRWVM: Could not set dialog result: {0}", ex.Message));
			}
		}

		private void Dispatch(Action action)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).Dispatch(action);
		}

		public void Dispose()
		{
			ProgressControlViewModel expr_06 = this.RepairProgressDataContext;
			if (expr_06 != null)
			{
				expr_06.Dispose();
			}
			ProgressControlViewModel expr_17 = this.AutostartRepairProgressDataContext;
			if (expr_17 != null)
			{
				expr_17.Dispose();
			}
			this.IsEnabled = false;
			this.WindowTitle = null;
			this.RepairPromptDataContext = null;
			this.RepairProgressDataContext = null;
			this.FailureDialogDataContext = null;
			this.AutostartRepairPromptDataContext = null;
			this.AutostartRepairProgressDataContext = null;
			this.SuccessDialogDataContext = null;
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("Repair"))
			{
				base.RaisePropertyChanged("CanPromptForAutostartRepair");
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using System;
using VyprVPN.Models;

namespace VyprVPN.ViewModels
{
	public class StatusbarViewModel : ViewModelBase
	{
		public static readonly PropertyData NetworkProperty = ModelBase.RegisterProperty("Network", typeof(NetworkModel), null, null, true, true, true);

		public static readonly PropertyData VyprVPNControllerProperty = ModelBase.RegisterProperty("VyprVPNController", typeof(IVyprVPNController), null, null, true, true, true);

		[Model]
		public INetworkModel Network
		{
			get
			{
				return base.GetValue<NetworkModel>(StatusbarViewModel.NetworkProperty);
			}
			set
			{
				base.SetValue(StatusbarViewModel.NetworkProperty, value);
			}
		}

		public IVyprVPNController VyprVPNController
		{
			get
			{
				return base.GetValue<IVyprVPNController>(StatusbarViewModel.VyprVPNControllerProperty);
			}
			set
			{
				base.SetValue(StatusbarViewModel.VyprVPNControllerProperty, value);
			}
		}

		public StatusbarViewModel()
		{
			this.Network = ServiceLocatorExtensions.ResolveType<INetworkModel>(ObjectExtensions.GetServiceLocator(this), null);
			this.VyprVPNController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ObjectExtensions.GetServiceLocator(this), null);
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using System;
using System.Windows;
using System.Windows.Input;
using VyprVPN.Classes;

namespace VyprVPN.ViewModels
{
	public class TitlebarViewModel : VyprViewModel
	{
		public static readonly PropertyData IsBetaProperty = ModelBase.RegisterProperty<bool>("IsBeta", typeof(bool), false, null, true, true, true);

		public ICommand CloseWindowCommand
		{
			get;
			private set;
		}

		public bool IsBeta
		{
			get
			{
				return base.GetValue<bool>(TitlebarViewModel.IsBetaProperty);
			}
			set
			{
				base.SetValue(TitlebarViewModel.IsBetaProperty, value);
			}
		}

		public TitlebarViewModel()
		{
			this.IsBeta = (ServiceLocatorExtensions.ResolveType<IInformation>(ServiceLocator.get_Default(), null).get_CurrentReleaseMode() == 1);
			this.CloseWindowCommand = new Command(delegate
			{
				base.logger.Log(0, "Closing main window");
				try
				{
					ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(Application.Current.MainWindow.Close));
				}
				catch (Exception ex)
				{
					base.logger.Log(4, "Exception: {0}", new object[]
					{
						ex
					});
					throw;
				}
			}, null, null);
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using System;
using System.Collections.ObjectModel;
using System.Windows;
using VyprVPN.Properties;

namespace VyprVPN.ViewModels
{
	public class WirelessNetworkSelectorWindowViewModel : ViewModelBase
	{
		public static readonly PropertyData WirelessSsidSelectorDescriptionProperty = ModelBase.RegisterProperty("WirelessSsidSelectorDescription", typeof(string), null, null, true, true, true);

		public static readonly PropertyData NetworkNameTextProperty = ModelBase.RegisterProperty("NetworkNameText", typeof(string), null, null, true, true, true);

		public static readonly PropertyData KnownSsidsProperty = ModelBase.RegisterProperty("KnownSsids", typeof(ObservableCollection<string>), null, null, true, true, true);

		public static readonly PropertyData ShowTextEntryProperty = ModelBase.RegisterProperty<bool>("ShowTextEntry", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ShowKnownListingProperty = ModelBase.RegisterProperty<bool>("ShowKnownListing", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData NetworkSelectorModeTextProperty = ModelBase.RegisterProperty("NetworkSelectorModeText", typeof(string), null, null, true, true, true);

		public AsynchronousCommand<Window> OkCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand<Window> CancelCommand
		{
			get;
			private set;
		}

		public AsynchronousCommand<Window> ContextSwitchCommand
		{
			get;
			private set;
		}

		private IPCClient IpcClient
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IIPCServer>(ObjectExtensions.GetServiceLocator(this), null) as IPCClient;
			}
		}

		public string WirelessSsidSelectorDescription
		{
			get
			{
				return base.GetValue<string>(WirelessNetworkSelectorWindowViewModel.WirelessSsidSelectorDescriptionProperty);
			}
			set
			{
				base.SetValue(WirelessNetworkSelectorWindowViewModel.WirelessSsidSelectorDescriptionProperty, value);
			}
		}

		public string NetworkNameText
		{
			get
			{
				return base.GetValue<string>(WirelessNetworkSelectorWindowViewModel.NetworkNameTextProperty);
			}
			set
			{
				base.SetValue(WirelessNetworkSelectorWindowViewModel.NetworkNameTextProperty, value);
			}
		}

		public ObservableCollection<string> KnownSsids
		{
			get
			{
				return base.GetValue<ObservableCollection<string>>(WirelessNetworkSelectorWindowViewModel.KnownSsidsProperty);
			}
			set
			{
				base.SetValue(WirelessNetworkSelectorWindowViewModel.KnownSsidsProperty, value);
			}
		}

		public bool ShowTextEntry
		{
			get
			{
				return base.GetValue<bool>(WirelessNetworkSelectorWindowViewModel.ShowTextEntryProperty);
			}
			set
			{
				base.SetValue(WirelessNetworkSelectorWindowViewModel.ShowTextEntryProperty, value);
			}
		}

		public bool ShowKnownListing
		{
			get
			{
				return base.GetValue<bool>(WirelessNetworkSelectorWindowViewModel.ShowKnownListingProperty);
			}
			set
			{
				base.SetValue(WirelessNetworkSelectorWindowViewModel.ShowKnownListingProperty, value);
			}
		}

		public string NetworkSelectorModeText
		{
			get
			{
				return base.GetValue<string>(WirelessNetworkSelectorWindowViewModel.NetworkSelectorModeTextProperty);
			}
			set
			{
				base.SetValue(WirelessNetworkSelectorWindowViewModel.NetworkSelectorModeTextProperty, value);
			}
		}

		public WirelessNetworkSelectorWindowViewModel()
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).UpdateCurrentThreadLocale();
			this.KnownSsids = new ObservableCollection<string>(this.IpcClient.GetNetworkSsidListing());
			this.NetworkSelectorModeText = Resources.AddOther;
			this.WirelessSsidSelectorDescription = Resources.ChooseNameOfKnownWifiNetwork;
			this.OkCommand = new AsynchronousCommand<Window>(new Action<Window>(this.OnOkCommandExecute), new Func<Window, bool>(this.OnOkCommandCanExecute), null);
			this.CancelCommand = new AsynchronousCommand<Window>(new Action<Window>(this.OnCancelCommandExecute), null, null);
			this.ContextSwitchCommand = new AsynchronousCommand<Window>(new Action<Window>(this.OnContextSwitchCommandExecute), null, null);
		}

		private bool OnOkCommandCanExecute(Window window)
		{
			return !string.IsNullOrEmpty(this.NetworkNameText);
		}

		private void OnOkCommandExecute(Window window)
		{
			if (window != null)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(window.Close));
			}
		}

		private void OnCancelCommandExecute(Window window)
		{
			if (window != null)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.NetworkNameText = null;
					window.Close();
				});
			}
		}

		private void OnContextSwitchCommandExecute(Window window)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).UpdateCurrentThreadLocale();
				if (this.ShowTextEntry)
				{
					this.ShowTextEntry = false;
					this.ShowKnownListing = true;
					this.NetworkSelectorModeText = Resources.AddOther;
					this.WirelessSsidSelectorDescription = Resources.ChooseNameOfKnownWifiNetwork;
					return;
				}
				this.ShowTextEntry = true;
				this.ShowKnownListing = false;
				this.NetworkSelectorModeText = Resources.ShowNetworks;
				this.WirelessSsidSelectorDescription = Resources.EnterNameOfKnownWifiNetwork;
			});
		}
	}
}
