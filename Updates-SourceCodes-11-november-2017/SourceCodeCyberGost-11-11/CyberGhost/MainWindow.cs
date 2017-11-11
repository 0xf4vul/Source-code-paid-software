using ARSoft.Tools.Net;
using CyberGhost.Communication;
using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Components.Popups;
using CyberGhost.Helpers;
using CyberGhost.Pages;
using CyberGhost.Pages.Profiles;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.RESTCommunicator.OAuth;
using CyberGhost.Settings;
using CyberGhost.Settings.Helpers;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using CyberGhost.VPNServices.Helpers;
using FirstFloor.ModernUI.Presentation;
using FirstFloor.ModernUI.Windows.Navigation;
using Hardcodet.Wpf.TaskbarNotification;
using Microsoft.Win32;
using MobileConcepts.Components.MCWebBrowser;
using MobileConcepts.Components.Network;
using MobileConcepts.Helpers;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace CyberGhost
{
	public class MainWindow : ModernWindowWithMessage, IComponentConnector, IDisposable
	{
		public class TapAdapterInstallationResult
		{
			public MainWindow.TapAdapterInstallationStatus InstallationStatus;

			public Exception Exception;
		}

		public enum TapAdapterInstallationStatus
		{
			[Description("OK")]
			Ok,
			[Description("User refuses installation")]
			UserRefusesInstallation,
			[Description("Installer failed")]
			Error
		}

		internal enum ConnectResult
		{
			Ok,
			TapAdapterInstallationFailed,
			ProfileNotSet,
			CouldNotFetchServer,
			PortCheckFailed,
			CaCertificateCheckFailed,
			UserCertificateCheckFailed,
			CouldNotFetchServerConfig,
			PopupCancelled
		}

		internal class ConnectResultAdvanced
		{
			public object AdditionalData;

			public MainWindow.ConnectResult ConnectResult;

			public Exception Exception;
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				private TaskAwaiter<bool> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					try
					{
						try
						{
							TaskAwaiter<bool> taskAwaiter;
							if (num != 0)
							{
								taskAwaiter = ObjectHolder.MainForm.UpdateLoggedInUser(true, true).GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									this.<>1__state = 0;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, MainWindow.<>c.<<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0>d>(ref taskAwaiter, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter<bool>);
								this.<>1__state = -1;
							}
							taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter<bool>);
						}
						catch (Exception)
						{
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

			[StructLayout(LayoutKind.Auto)]
			private struct <<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d : IAsyncStateMachine
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
							LogHelper.LogMessage("!!!--- FETCHING NEW SERVER ---!!!");
							ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
							taskAwaiter = Task.Delay(10000).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, MainWindow.<>c.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9>d>(ref taskAwaiter, ref this);
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
						ObjectHolder.MainForm.Connect(true, false, false);
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

			[StructLayout(LayoutKind.Auto)]
			private struct <<ClearResumePurchaseCookie>b__81_0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				private TaskAwaiter<Dictionary<string, string>> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					try
					{
						TaskAwaiter<Dictionary<string, string>> taskAwaiter;
						if (num != 0)
						{
							CookieReader arg_1E_0 = new CookieReader();
							ObjectHolder.ResumePurchaseUrl = string.Empty;
							taskAwaiter = arg_1E_0.GetCookieContainerFromUrl("https://www.cyberghostvpn.com/en_us/clear?type=gc").GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<Dictionary<string, string>>, MainWindow.<>c.<<ClearResumePurchaseCookie>b__81_0>d>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<Dictionary<string, string>>);
							this.<>1__state = -1;
						}
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<Dictionary<string, string>>);
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

			public static readonly MainWindow.<>c <>9 = new MainWindow.<>c();

			public static SendOrPostCallback <>9__69_0;

			public static SendOrPostCallback <>9__73_0;

			public static SendOrPostCallback <>9__73_3;

			public static SendOrPostCallback <>9__73_6;

			public static SendOrPostCallback <>9__73_7;

			public static SendOrPostCallback <>9__73_8;

			public static SendOrPostCallback <>9__73_9;

			public static SendOrPostCallback <>9__73_11;

			public static SendOrPostCallback <>9__73_12;

			public static SendOrPostCallback <>9__73_13;

			public static SendOrPostCallback <>9__73_14;

			public static Action <>9__75_0;

			public static Action <>9__75_1;

			public static SendOrPostCallback <>9__81_0;

			public static SendOrPostCallback <>9__82_0;

			public static SendOrPostCallback <>9__95_2;

			public static SendOrPostCallback <>9__98_0;

			public static Func<Task> <>9__112_1;

			public static Func<Task> <>9__112_2;

			public static Func<Task> <>9__112_3;

			public static Func<Task> <>9__112_4;

			public static Func<Task> <>9__112_5;

			public static Func<Task> <>9__112_7;

			internal async void <CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0(object o)
			{
				try
				{
					await ObjectHolder.MainForm.UpdateLoggedInUser(true, true);
				}
				catch (Exception)
				{
				}
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_0(object o)
			{
				Navigation.ShowMessageOverlay("ConnectionDropped", true);
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_3(object o)
			{
				NotificationPopup.ShowWithoutResult(PopUpZone.Connected);
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_6(object state)
			{
				IconHelpers.Instance.SetTrayIconBySelectedProfile(false, false);
				Navigation.NavigateToConnectedScreen();
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_7(object state)
			{
				ObjectHolder.MainForm.Disconnect();
				ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				Navigation.GoHome();
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_8(object o)
			{
				ObjectHolder.MainForm.Connect(true, false, false);
			}

			internal async void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9(object o)
			{
				LogHelper.LogMessage("!!!--- FETCHING NEW SERVER ---!!!");
				ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
				await Task.Delay(10000);
				ObjectHolder.MainForm.Connect(true, false, false);
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_11(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_12(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
				ObjectHolder.CyberGhostCom.UnlockInternetConnection();
				Navigation.GoHome();
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_13(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
			}

			internal void <CyberGhostCom_OnConnectionStatusChangedEvent>b__73_14(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
			}

			internal void <DoAfterConnect>b__75_0()
			{
				HelperFunctions.StartProcessList(ObjectHolder.AppListLaunchConnectAfter);
				foreach (string current in ObjectHolder.AppListKillConnectAfter)
				{
					ObjectHolder.CyberGhostCom.CloseApplication(current);
				}
			}

			internal void <DoAfterConnect>b__75_1()
			{
				ProcessHelpers.StartProcessListAndDisableDebugger(ObjectHolder.AppListLaunchConnectAfterOnce);
				ObjectHolder.AppListLaunchConnectAfterOnce.Clear();
			}

			internal async void <ClearResumePurchaseCookie>b__81_0(object o)
			{
				CookieReader arg_1E_0 = new CookieReader();
				ObjectHolder.ResumePurchaseUrl = string.Empty;
				await arg_1E_0.GetCookieContainerFromUrl("https://www.cyberghostvpn.com/en_us/clear?type=gc");
			}

			internal void <UpdateLoggedInUser>b__82_0(object o)
			{
				if (SettingsHolder.get_Settings().get_LastUserId() != 0)
				{
					ObjectHolder.MainForm.ShowMe();
					Navigation.ShowMessageOverlay("Logout", false);
				}
				SettingsHolder.get_Settings().set_LastUserId(ObjectHolder.CurrentUser.get_Id());
				SettingsHolder.get_Settings().set_LastProductId(ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Id());
				SettingsHolder.get_Settings().SaveSettingsAsync(false).ConfigureAwait(false);
			}

			internal void <Disconnect>b__95_2(object o)
			{
				Navigation.GoHome();
			}

			internal void <ProcessPreflightConnectResult>b__98_0(object o)
			{
				Navigation.GoHome();
			}

			internal Task ctor>b__112_1()
			{
				return Helper.OpenAuthLink("go_account", false, string.Format("&channel={0}&cc={1}", MainWindow.UpgradeChannel(), SettingsHolder.get_Settings().GetChallenge()), false, null);
			}

			internal Task ctor>b__112_2()
			{
				return Task.FromResult<Task<bool>>(Navigation.GoInAppPurchase("header_upgrade_button", null));
			}

			internal Task ctor>b__112_3()
			{
				return Task.FromResult<bool>(Navigation.GoHome());
			}

			internal Task ctor>b__112_4()
			{
				if (ObjectHolder.ConnectionStatus != -1)
				{
					if (Navigation.IsOnConnectedScreen())
					{
						Navigation.NavigateFromConnectedToProfileScreen();
					}
					else if (Navigation.IsOnProfileScreen())
					{
						Navigation.GoHome();
					}
					else
					{
						Navigation.NavigateToConnectedScreen();
					}
				}
				else
				{
					Navigation.GoHome();
				}
				return Task.FromResult<bool>(true);
			}

			internal Task ctor>b__112_5()
			{
				return Task.FromResult<bool>(Navigation.GoToPage("Settings", null, null));
			}

			internal Task ctor>b__112_7()
			{
				if (!ObjectHolder.DebugWindowIsOpen)
				{
					ObjectHolder.DebugWindowIsOpen = true;
					new DebugWindow().Show();
				}
				return null;
			}
		}

		private readonly object _syncLock = new object();

		private System.Timers.Timer _mTimedPopupTimer;

		private System.Windows.Forms.Timer _mForceUpdateTimer;

		private System.Windows.Forms.Timer _mReestablishedCooldownTimer;

		private bool _mIsAppProtectionConnect;

		private int _reconnectRetries;

		private int _reestablishedCount;

		public bool WasConnected;

		private CancellationTokenSource _forcedDisconnectTokenSource;

		private DateTime _mLastNetwokChangedTime = DateTime.MinValue;

		private DateTime _mLastServiceNotAvailabeMessageShown = DateTime.MinValue;

		private bool _mServiceNotAvailableVisible;

		private System.Timers.Timer _userPollTimer;

		private bool _cancelConnection;

		private CancellationTokenSource _connectionCancellationTokenSource;

		private const string DnsFirewallListName = "_DNS_";

		private readonly WiFiDetector _wifiDetector;

		private DateTime _lastWifiDetected = DateTime.MinValue;

		private DateTime _lastWifiConnect = DateTime.MinValue;

		internal Link LblHeaderLogin;

		internal Link TitleLinkFeedback;

		internal TaskbarIcon TaskbarIcon;

		private bool _contentLoaded;

		public long PrevBytesReceived
		{
			get;
			set;
		}

		public long PrevBytesSent
		{
			get;
			set;
		}

		public double TotalDownloadInBytes
		{
			get;
			set;
		}

		public long BytesReceivedPerSec
		{
			get;
			set;
		}

		public long BytesSentPerSec
		{
			get;
			set;
		}

		public bool Reconnecting
		{
			get;
			set;
		}

		public string LastTapError
		{
			get;
			private set;
		}

		internal void SetupService()
		{
			if (ObjectHolder.CyberGhostCom == null)
			{
				ObjectHolder.CyberGhostCom = new EventSender("CyherGhostPipe");
			}
			UdpClientExtensions.add_UdpError(new UdpClientExtensions.UdpErrorDelegate(this.UdpClientExtensions_UdpError));
			ObjectHolder.CyberGhostCom.add_OnCertificateMissingEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCertificateMissingEvent));
			ObjectHolder.CyberGhostCom.add_OnConnectionStatusChangedEvent(new EventSender.ConnectionStatusChanged(this.CyberGhostCom_OnConnectionStatusChangedEvent));
			ObjectHolder.CyberGhostCom.add_OnTapUpdateRequiredEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnTapUpdateRequiredEvent));
			ObjectHolder.CyberGhostCom.add_OnClientUpdateAvailableEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnClientUpdateAvailableEvent));
			ObjectHolder.CyberGhostCom.add_OnTrafficChangedEvent(new EventSender.TrafficChanged(this.CyberGhostCom_OnTrafficChangedEvent));
			ObjectHolder.CyberGhostCom.add_OnCheckForPlanUpgradeEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCheckForPlanUpgradeEvent));
			ObjectHolder.CyberGhostCom.add_OnUpdateDiEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnUpdateDiEvent));
			ObjectHolder.CyberGhostCom.add_OnSetCredentialsEvent(new EventSender.SetCredentialsEvent(this.CyberGhostCom_OnSetCredentialsEvent));
			NetworkChange.NetworkAddressChanged += new NetworkAddressChangedEventHandler(this.NetworkChange_NetworkAddressChanged);
			NetworkChange.NetworkAvailabilityChanged += new NetworkAvailabilityChangedEventHandler(this.NetworkChange_NetworkAvailabilityChanged);
			ConnectionStatus connectionStatus = ObjectHolder.CyberGhostCom.GetConnectionStatus();
			this._mReestablishedCooldownTimer = new System.Windows.Forms.Timer
			{
				Interval = 60000
			};
			this._mReestablishedCooldownTimer.Tick += new EventHandler(this._mReestablishedCooldownTimer_Tick);
			this._mReestablishedCooldownTimer.Start();
			if (connectionStatus == null)
			{
				VpnServerLastConnectionInfos lastConnectionInfos = ObjectHolder.CyberGhostCom.GetLastConnectionInfos();
				ObjectHolder.CurrentConnectionInfos = lastConnectionInfos;
				Theming.CurrentThemeSet = Theming.ThemeSet.Connected;
				this.CyberGhostCom_OnConnectionStatusChangedEvent(new ConnectionStatusChangedEventArgs
				{
					CurrentConnectionStatus = connectionStatus,
					ServerCountry = lastConnectionInfos.ServerCountry,
					ServerIp = lastConnectionInfos.ServerIp,
					ServerName = lastConnectionInfos.ServerName
				});
			}
		}

		public static Task<MainWindow.TapAdapterInstallationResult> CheckAndInstallTapAdapter(bool forceInstall = false, bool silent = false, bool overrideActiveCardCheck = true)
		{
			TaskCompletionSource<MainWindow.TapAdapterInstallationResult> awaiter = new TaskCompletionSource<MainWindow.TapAdapterInstallationResult>();
			MainWindow.TapAdapterInstallationResult res = new MainWindow.TapAdapterInstallationResult();
			if (!forceInstall && Helpers.IsTapV9Installed("9.0.0.9", overrideActiveCardCheck))
			{
				res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Ok;
				awaiter.TrySetResult(res);
			}
			else if (!silent)
			{
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					if (ModernDialogExtension.ShowDialogYesNo(CyberGhost.Translations.MainWindow.Driver_installation_header, CyberGhost.Translations.MainWindow.Driver_Installation_Message) == MessageBoxResult.No)
					{
						ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.Driver_installation_aborted_header, CyberGhost.Translations.MainWindow.Driver_installation_aborted_message);
						res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.UserRefusesInstallation;
						awaiter.TrySetResult(res);
						return;
					}
					Helpers.InstallTapResult installTapResult2 = Helpers.InstallTap("9.0.0.9", forceInstall);
					if (installTapResult2.InstallationResult)
					{
						EventSender expr_5F = ObjectHolder.CyberGhostCom;
						if (expr_5F != null)
						{
							expr_5F.CorrectTapProtocolls(SettingsHolder.get_Settings().get_DisableIpV6Protocol());
						}
						SettingsHolder.get_Settings().set_TapReinstalled(false);
						res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Ok;
						awaiter.TrySetResult(res);
						return;
					}
					res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Error;
					res.Exception = installTapResult2.Exception;
					awaiter.TrySetResult(res);
				}, null);
			}
			else
			{
				Helpers.InstallTapResult installTapResult = Helpers.InstallTap("9.0.0.9", forceInstall);
				if (installTapResult.InstallationResult)
				{
					EventSender expr_98 = ObjectHolder.CyberGhostCom;
					if (expr_98 != null)
					{
						expr_98.CorrectTapProtocolls(SettingsHolder.get_Settings().get_DisableIpV6Protocol());
					}
					SettingsHolder.get_Settings().set_TapReinstalled(false);
					res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Ok;
					awaiter.TrySetResult(res);
				}
				else
				{
					res.InstallationStatus = MainWindow.TapAdapterInstallationStatus.Error;
					res.Exception = installTapResult.Exception;
					awaiter.TrySetResult(res);
				}
			}
			return awaiter.Task;
		}

		private void CyberGhostCom_OnSetCredentialsEvent(object sender, string username, string password)
		{
			MainWindow.<>c__DisplayClass25_0 <>c__DisplayClass25_ = new MainWindow.<>c__DisplayClass25_0();
			<>c__DisplayClass25_.username = username;
			<>c__DisplayClass25_.password = password;
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				MainWindow.<>c__DisplayClass25_0.<<CyberGhostCom_OnSetCredentialsEvent>b__0>d <<CyberGhostCom_OnSetCredentialsEvent>b__0>d;
				<<CyberGhostCom_OnSetCredentialsEvent>b__0>d.<>4__this = <>c__DisplayClass25_;
				<<CyberGhostCom_OnSetCredentialsEvent>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<CyberGhostCom_OnSetCredentialsEvent>b__0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<CyberGhostCom_OnSetCredentialsEvent>b__0>d.<>t__builder;
				<>t__builder.Start<MainWindow.<>c__DisplayClass25_0.<<CyberGhostCom_OnSetCredentialsEvent>b__0>d>(ref <<CyberGhostCom_OnSetCredentialsEvent>b__0>d);
			}, null);
		}

		private void UdpClientExtensions_UdpError(UdpClientExtensions.ErrorType errorType, Exception e, IPAddress remoteAddress)
		{
			new DnsResolveErrorEvent
			{
				DnsServer = ((remoteAddress != null) ? remoteAddress.ToString() : null),
				ErrorType = errorType.ToString(),
				Exception = ((e != null) ? e.ToString() : null)
			}.FireEvent();
		}

		public void CreateScreenShot(int width, int height, Visual control, string filePath)
		{
			RenderTargetBitmap renderTargetBitmap = new RenderTargetBitmap(width, height, 96.0, 96.0, PixelFormats.Pbgra32);
			renderTargetBitmap.Render(control);
			PngBitmapEncoder pngBitmapEncoder = new PngBitmapEncoder();
			pngBitmapEncoder.Frames.Add(BitmapFrame.Create(renderTargetBitmap));
			using (Stream stream = File.Create(filePath))
			{
				pngBitmapEncoder.Save(stream);
			}
		}

		internal void FinalizeService()
		{
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.remove_OnCertificateMissingEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCertificateMissingEvent));
				ObjectHolder.CyberGhostCom.remove_OnConnectionStatusChangedEvent(new EventSender.ConnectionStatusChanged(this.CyberGhostCom_OnConnectionStatusChangedEvent));
				ObjectHolder.CyberGhostCom.remove_OnTapUpdateRequiredEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnTapUpdateRequiredEvent));
				ObjectHolder.CyberGhostCom.remove_OnClientUpdateAvailableEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnClientUpdateAvailableEvent));
				ObjectHolder.CyberGhostCom.remove_OnTrafficChangedEvent(new EventSender.TrafficChanged(this.CyberGhostCom_OnTrafficChangedEvent));
				ObjectHolder.CyberGhostCom.remove_OnCheckForPlanUpgradeEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCheckForPlanUpgradeEvent));
				ObjectHolder.CyberGhostCom.remove_OnUpdateDiEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnUpdateDiEvent));
				ObjectHolder.CyberGhostCom.remove_OnSetCredentialsEvent(new EventSender.SetCredentialsEvent(this.CyberGhostCom_OnSetCredentialsEvent));
				ObjectHolder.CyberGhostCom.Dispose();
				ObjectHolder.CyberGhostCom = null;
			}
			NetworkChange.NetworkAddressChanged -= new NetworkAddressChangedEventHandler(this.NetworkChange_NetworkAddressChanged);
			NetworkChange.NetworkAvailabilityChanged -= new NetworkAvailabilityChangedEventHandler(this.NetworkChange_NetworkAvailabilityChanged);
			this._mReestablishedCooldownTimer.Stop();
		}

		private bool ComputeTrafficData(long currentBytesReceived, long currentBytesSend)
		{
			bool result = true;
			long num = currentBytesReceived - this.PrevBytesReceived;
			this.PrevBytesReceived = currentBytesReceived;
			if (num > 0L)
			{
				this.BytesReceivedPerSec = num;
				this.TotalDownloadInBytes += (double)this.BytesReceivedPerSec;
			}
			else
			{
				result = false;
			}
			long num2 = currentBytesSend - this.PrevBytesSent;
			this.PrevBytesSent = currentBytesSend;
			if (num2 > 0L)
			{
				this.BytesSentPerSec = num2;
			}
			SettingsHolder expr_65 = SettingsHolder.get_Settings();
			ulong downloadTotalTime = expr_65.get_DownloadTotalTime();
			expr_65.set_DownloadTotalTime(downloadTotalTime + 1uL);
			this.FormatTrafficData();
			return result;
		}

		private void FormatTrafficData()
		{
			object syncLock = this._syncLock;
			lock (syncLock)
			{
				ObjectHolder.DownloadAll = GuiHelper.GetFormatedBytes(this.TotalDownloadInBytes);
				ObjectHolder.Download = GuiHelper.GetFormatedBytesPerSecond((double)this.BytesReceivedPerSec, null);
				if (ObjectHolder.Download.Value > ObjectHolder.MaxSpeed.Value)
				{
					ObjectHolder.MaxSpeed = ObjectHolder.Download;
				}
			}
		}

		private void WhiteListCurrentDnsServers()
		{
			string[] allNetworkAdapters = Helpers.GetAllNetworkAdapters();
			for (int i = 0; i < allNetworkAdapters.Length; i++)
			{
				string nsForAdapter = Helpers.GetNsForAdapter(allNetworkAdapters[i]);
				EventSender expr_18 = ObjectHolder.CyberGhostCom;
				if (expr_18 != null)
				{
					expr_18.AddHostToConnectionWhiteList("_DNS_", nsForAdapter);
				}
			}
		}

		private double GetTimeedPopUpUpdateInterval()
		{
			if (ObjectHolder.CurrentStatus != null)
			{
				double popupTimerInterval = ObjectHolder.CurrentStatus.GetPopupTimerInterval("timer_interval");
				if (popupTimerInterval > 0.0)
				{
					return popupTimerInterval * 1000.0;
				}
			}
			return 3600000.0;
		}

		public void SetupTimedPopUp()
		{
			this._mTimedPopupTimer = new System.Timers.Timer
			{
				Interval = this.GetTimeedPopUpUpdateInterval()
			};
			this._mTimedPopupTimer.Elapsed += new ElapsedEventHandler(this._mTimedPopupTimer_Elapsed);
			this._mTimedPopupTimer.Enabled = true;
		}

		private void _mTimedPopupTimer_Elapsed(object sender, ElapsedEventArgs e)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this._mTimedPopupTimer.Enabled = false;
				this._mTimedPopupTimer.Interval = this.GetTimeedPopUpUpdateInterval();
				NotificationPopup.ShowWithResult(PopUpZone.Timed, CancellationToken.None).ContinueWith(delegate(Task<string> popupTask)
				{
					ObjectHolder.MainContext.Post(delegate(object i)
					{
						this._mTimedPopupTimer.Enabled = true;
					}, null);
				});
			}, null);
		}

		private static void SendConnectionTerminatedEvent()
		{
			ConnectionTerminatedEvent connectionTerminatedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionTerminatedEvent = new WiFiConnectionTerminatedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionTerminatedEvent = new StreamingServiceConnectionTerminatedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionTerminatedEvent = new UnblockServiceConnectionTerminatedEvent();
			}
			else
			{
				connectionTerminatedEvent = new ConnectionTerminatedEvent();
			}
			connectionTerminatedEvent.FireEvent();
		}

		private void SendConnectionOkEvent()
		{
			ConnectionEstablishedEvent connectionEstablishedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionEstablishedEvent = new WiFiConnectionEstablishedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionEstablishedEvent = new StreamingServiceConnectionEstablishedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionEstablishedEvent = new UnblockServiceConnectionEstablishedEvent();
			}
			else
			{
				connectionEstablishedEvent = new ConnectionEstablishedEvent();
			}
			connectionEstablishedEvent.AutomaticRetries = this._reconnectRetries;
			connectionEstablishedEvent.FireEvent();
		}

		private static void SendConnectionAttemptEvent()
		{
			ConnectionAttemptEvent connectionAttemptEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionAttemptEvent = new WifiConnectionAttemptEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionAttemptEvent = new StreamingServiceConnectionAttemptEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionAttemptEvent = new UnblockServiceConnectionAttemptEvent();
			}
			else
			{
				connectionAttemptEvent = new ConnectionAttemptEvent();
			}
			connectionAttemptEvent.FireEvent();
		}

		private void SendConnectionFailedEvent(ConnectionStatusChangedEventArgs e)
		{
			if (e == null)
			{
				return;
			}
			this.SendConnectionFailedEvent(string.IsNullOrWhiteSpace(e.Reason) ? string.Format("{0}", e.CurrentConnectionStatus) : e.Reason, e.Exception, e.ExceptionData, e.AdditionalData);
		}

		private void SendConnectionFailedEvent(string reason, string error, string errorData, string advancedErrorData)
		{
			ConnectionFailedEvent connectionFailedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionFailedEvent = new WiFiConnectionFailedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionFailedEvent = new StreamingServiceConnectionFailedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionFailedEvent = new UnblockServiceConnectionFailedEvent();
			}
			else
			{
				connectionFailedEvent = new ConnectionFailedEvent();
			}
			connectionFailedEvent.AutomaticRetries = this._reconnectRetries;
			if (!string.IsNullOrWhiteSpace(reason))
			{
				connectionFailedEvent.Reason = reason;
			}
			if (!string.IsNullOrWhiteSpace(error))
			{
				connectionFailedEvent.Error = error;
			}
			if (!string.IsNullOrWhiteSpace(errorData))
			{
				connectionFailedEvent.ErrorData = errorData;
			}
			if (!string.IsNullOrWhiteSpace(advancedErrorData))
			{
				connectionFailedEvent.AdvancedErrorData = advancedErrorData;
			}
			else
			{
				string[] lastLogEntries = ObjectHolder.CyberGhostCom.GetLastLogEntries(2);
				if (lastLogEntries != null && lastLogEntries.Length != 0)
				{
					connectionFailedEvent.AdvancedErrorData = string.Join("\r\n", lastLogEntries).Trim();
				}
			}
			connectionFailedEvent.FireEvent();
		}

		private static void SendConnectionDroppedEvent()
		{
			ConnectionDroppedEvent connectionDroppedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionDroppedEvent = new WiFiConnectionDroppedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionDroppedEvent = new StreamingServiceConnectionDroppedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionDroppedEvent = new UnblockServiceConnectionDroppedEvent();
			}
			else
			{
				connectionDroppedEvent = new ConnectionDroppedEvent();
			}
			connectionDroppedEvent.FireEvent();
		}

		private static void SendConnectionReestablishedEvent()
		{
			ConnectionReestablishedEvent connectionReestablishedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionReestablishedEvent = new WiFiConnectionReestablishedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionReestablishedEvent = new StreamingServiceConnectionReestablishedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionReestablishedEvent = new UnblockServiceConnectionReestablishedEvent();
			}
			else
			{
				connectionReestablishedEvent = new ConnectionReestablishedEvent();
			}
			connectionReestablishedEvent.FireEvent();
		}

		private static void SendConnectionAttemptAbortedEvent()
		{
			ConnectionAttemptAbortedEvent connectionAttemptAbortedEvent;
			if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileWifi() && ObjectHolder.ConnectionType == "automatic")
			{
				connectionAttemptAbortedEvent = new WifiConnectionAttemptAbortedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUnblock())
			{
				connectionAttemptAbortedEvent = new StreamingServiceConnectionAttemptAbortedEvent();
			}
			else if (ObjectHolder.CurrentProfile == SettingsHolder.get_Settings().get_ProfileUncensoring())
			{
				connectionAttemptAbortedEvent = new UnblockServiceConnectionAttemptAbortedEvent();
			}
			else
			{
				connectionAttemptAbortedEvent = new ConnectionAttemptAbortedEvent();
			}
			connectionAttemptAbortedEvent.Reason = "user cancelled";
			connectionAttemptAbortedEvent.FireEvent();
		}

		public void StartForegroundUpdate()
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				if (ObjectHolder.ConnectionStatus == -1 || (ObjectHolder.ConnectionStatus != -1 && ModernDialogExtension.ShowDialogYesNo(General.MainWindow_StartForegroundUpdate_ConnectionWillBeDropped, General.MainWindow_StartForegroundUpdate_ConnectionWillBeDroppedMessage) == MessageBoxResult.Yes))
				{
					MainWindow.DoStartForegroundUpdate(new UpdaterArgs.UpdaterNotifyEvent(this.UpdaterArgs_OnNeedsExitApplication));
				}
			}, null);
		}

		public static void DoStartForegroundUpdate(UpdaterArgs.UpdaterNotifyEvent exitEvent)
		{
			string text = (SettingsHolder.get_Settings().get_ReleaseChannel() != 5) ? string.Format("https://download.cyberghostvpn.com/windows/updates/6/{0}/", SettingsHolder.get_Settings().get_ReleaseChannel().ToString().ToLower()) : (string.IsNullOrEmpty(SettingsHolder.get_Settings().get_UpdateUrl()) ? "https://download.cyberghostvpn.com/windows/updates/6/" : SettingsHolder.get_Settings().get_UpdateUrl());
			HelperFunctions.DebugLine(string.Format("Checking for Update on {0}", text));
			UpdaterArgs updaterArgs = new UpdaterArgs
			{
				DirectStart = true,
				UpdateUrl = text
			};
			if (exitEvent != null)
			{
				updaterArgs.add_OnNeedsExitApplication(exitEvent);
			}
			ServiceSettings.get_Settings().LoadSettings();
			ServiceSettings.get_Settings().set_ClientWasRunningBeforeUpdating(true);
			ServiceSettings.get_Settings().SaveSettings(false);
			HelperFunctions.CallUpdaterThreaded(updaterArgs);
		}

		private bool UpdaterArgs_OnNeedsExitApplication()
		{
			if (ObjectHolder.MainContext != null)
			{
				ObjectHolder.MainContext.Post(delegate(object e)
				{
					this.Exit(false);
				}, null);
			}
			else
			{
				this.Exit(false);
			}
			return true;
		}

		private void CyberGhostCom_OnClientUpdateAvailableEvent(object sender)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				if (ObjectHolder.UpdatePanel != null)
				{
					ObjectHolder.UpdatePanel.Visibility = Visibility.Visible;
				}
				if (this._mForceUpdateTimer == null)
				{
					this._mForceUpdateTimer = new System.Windows.Forms.Timer
					{
						Interval = 1800000
					};
					this._mForceUpdateTimer.Tick += new EventHandler(this._mForceUpdateTimer_Tick);
					this._mForceUpdateTimer.Enabled = true;
				}
			}, null);
		}

		private void NetworkChange_NetworkAvailabilityChanged(object sender, NetworkAvailabilityEventArgs e)
		{
			this._mLastNetwokChangedTime = DateTime.Now;
		}

		private void NetworkChange_NetworkAddressChanged(object sender, EventArgs e)
		{
			this._mLastNetwokChangedTime = DateTime.Now;
		}

		private void _mForceUpdateTimer_Tick(object sender, EventArgs e)
		{
			if (ObjectHolder.ConnectionStatus == -1)
			{
				ObjectHolder.CyberGhostCom.StartClientUpdate(false);
				ObjectHolder.MainForm.Exit(false);
			}
		}

		private void CyberGhostCom_OnTapUpdateRequiredEvent(object sender, string reason)
		{
			ObjectHolder.ConnectionStatus = 3000;
			this.LastTapError = reason;
			MainWindow.CheckAndInstallTapAdapter(true, false, false);
		}

		private void CyberGhostCom_OnTrafficChangedEvent(object sender, TrafficChangeParams e)
		{
			if (sender != null && e != null)
			{
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					try
					{
						bool expr_21 = this.ComputeTrafficData((long)e.BytesReceived, (long)e.BytesSend);
						if (!expr_21)
						{
							GuiHelper.ResetTrafficData();
						}
						double num = Math.Round(ObjectHolder.Download.Value, 2);
						double num2 = Math.Round(ObjectHolder.DownloadAll.Value, 2);
						if (expr_21 && num < num2)
						{
							TrafficDataChangedEventArgs expr_5D = new TrafficDataChangedEventArgs();
							expr_5D.set_MaxSpeed(ObjectHolder.MaxSpeed);
							expr_5D.set_CurrentSpeed(ObjectHolder.Download);
							expr_5D.set_TotalReceived(ObjectHolder.DownloadAll);
							TrafficDataChangedEventArgs trafficDataChangedEventArgs = expr_5D;
							if (ObjectHolder.CurrentConnectingScreen != null)
							{
								ITrafficDataChanged expr_90 = ObjectHolder.CurrentConnectingScreen as ITrafficDataChanged;
								if (expr_90 != null)
								{
									expr_90.OnTrafficDataChanged(trafficDataChangedEventArgs);
								}
							}
							if (ObjectHolder.NotifiyIcon != null)
							{
								NotifiyHome expr_A8 = ObjectHolder.NotifiyIcon;
								if (expr_A8 != null)
								{
									expr_A8.OnTrafficDataChanged(trafficDataChangedEventArgs);
								}
							}
						}
					}
					catch (Exception)
					{
					}
				}, null);
				return;
			}
		}

		private void CyberGhostCom_OnCheckForPlanUpgradeEvent(object sender)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = MainWindow.<>c.<>9__69_0) == null)
			{
				arg_25_1 = (MainWindow.<>c.<>9__69_0 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnCheckForPlanUpgradeEvent>b__69_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		private async void CyberGhostCom_OnUpdateDiEvent(object sender, string aDistinctId)
		{
			ObjectHolder.IsFirstStart = false;
			SettingsHolder.get_Settings().set_FirstStartRetries(0);
			if (string.IsNullOrEmpty(aDistinctId))
			{
				await MixpanelEventSender.CheckAlias();
			}
		}

		private void CyberGhostCom_OnCertificateMissingEvent(object sender)
		{
			string path = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.crt", ObjectHolder.CurrentUser.get_Token()));
			string path2 = Path.Combine(Constants.get_UserDataPath(), string.Format("{0}.key", ObjectHolder.CurrentUser.get_Token()));
			string path3 = Path.Combine(Constants.get_UserDataPath(), "ca.crt");
			try
			{
				if (File.Exists(path))
				{
					File.Delete(path);
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(path2))
				{
					File.Delete(path2);
				}
			}
			catch (Exception)
			{
			}
			try
			{
				if (File.Exists(path3))
				{
					File.Delete(path3);
				}
			}
			catch (Exception)
			{
			}
			if (this._reconnectRetries < 3)
			{
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					this.Connect(true, false, true);
				}, null);
				return;
			}
			this.CyberGhostCom_OnConnectionStatusChangedEvent(new ConnectionStatusChangedEventArgs
			{
				CurrentConnectionStatus = 5000
			});
		}

		private void _mReestablishedCooldownTimer_Tick(object sender, EventArgs e)
		{
			if (this._reestablishedCount > 0)
			{
				this._reestablishedCount--;
			}
		}

		private void CyberGhostCom_OnConnectionStatusChangedEvent(ConnectionStatusChangedEventArgs e)
		{
			MainWindow.<>c__DisplayClass73_0 <>c__DisplayClass73_ = new MainWindow.<>c__DisplayClass73_0();
			<>c__DisplayClass73_.e = e;
			if (ObjectHolder.ConnectionStatus == -1 && <>c__DisplayClass73_.e.CurrentConnectionStatus == 20)
			{
				return;
			}
			LogHelper.LogMessage(string.Format("--> {0}: CHANGED CONNECTION STATUS {1} TO {2}", base.GetType().Name, ObjectHolder.ConnectionStatus, <>c__DisplayClass73_.e.CurrentConnectionStatus));
			if (ObjectHolder.ConnectionStatus == 10000 && (<>c__DisplayClass73_.e.CurrentConnectionStatus == null || <>c__DisplayClass73_.e.CurrentConnectionStatus == 1))
			{
				this._reestablishedCount++;
				if (this._reestablishedCount > 10)
				{
					SynchronizationContext arg_BD_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_BD_1;
					if ((arg_BD_1 = MainWindow.<>c.<>9__73_0) == null)
					{
						arg_BD_1 = (MainWindow.<>c.<>9__73_0 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_0));
					}
					arg_BD_0.Post(arg_BD_1, null);
					ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
					return;
				}
				MainWindow.SendConnectionReestablishedEvent();
			}
			if (ObjectHolder.ConnectionStatus == null && <>c__DisplayClass73_.e.CurrentConnectionStatus == 10000)
			{
				MainWindow.SendConnectionDroppedEvent();
			}
			if (ObjectHolder.ConnectionStatus == 20 && <>c__DisplayClass73_.e.CurrentConnectionStatus == -1)
			{
				this._reestablishedCount = 0;
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					this.DoAfterDisconnect(this.WasConnected);
					if (this.WasConnected)
					{
						MainWindow.SendConnectionTerminatedEvent();
						ObjectHolder.CurrentProfile = null;
						NotificationPopup.ShowWithoutResult(PopUpZone.Disconnected);
					}
				}, null);
			}
			if (<>c__DisplayClass73_.e.CurrentConnectionStatus == null)
			{
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					this.DoAfterConnect((bool)o, this._mIsAppProtectionConnect);
				}, this.WasConnected);
				if (!this.Reconnecting && ObjectHolder.ConnectionStatus == 10 && !this.WasConnected)
				{
					this.WasConnected = true;
					this.SendConnectionOkEvent();
					SynchronizationContext arg_1A3_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_1A3_1;
					if ((arg_1A3_1 = MainWindow.<>c.<>9__73_3) == null)
					{
						arg_1A3_1 = (MainWindow.<>c.<>9__73_3 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_3));
					}
					arg_1A3_0.Post(arg_1A3_1, null);
				}
				ObjectHolder.ConnectionStatus = <>c__DisplayClass73_.e.CurrentConnectionStatus;
			}
			if (ObjectHolder.ConnectionStatus == 3000 && <>c__DisplayClass73_.e.CurrentConnectionStatus == 6000)
			{
				<>c__DisplayClass73_.e.CurrentConnectionStatus = 3000;
			}
			if (ObjectHolder.ConnectionStatus != 10 && <>c__DisplayClass73_.e.CurrentConnectionStatus == 10000)
			{
				ObjectHolder.ConnectionStatus = 10000;
			}
			else
			{
				ObjectHolder.ConnectionStatus = <>c__DisplayClass73_.e.CurrentConnectionStatus;
			}
			ConnectionStatus currentConnectionStatus = <>c__DisplayClass73_.e.CurrentConnectionStatus;
			if (currentConnectionStatus <= 5000)
			{
				if (currentConnectionStatus > 20)
				{
					if (currentConnectionStatus <= 2000)
					{
						if (currentConnectionStatus != 1000)
						{
							if (currentConnectionStatus != 2000)
							{
								goto IL_65B;
							}
							goto IL_438;
						}
					}
					else
					{
						if (currentConnectionStatus == 3000)
						{
							this.SendConnectionFailedEvent(<>c__DisplayClass73_.e);
							SynchronizationContext arg_392_0 = ObjectHolder.MainContext;
							SendOrPostCallback arg_392_1;
							if ((arg_392_1 = MainWindow.<>c.<>9__73_12) == null)
							{
								arg_392_1 = (MainWindow.<>c.<>9__73_12 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_12));
							}
							arg_392_0.Post(arg_392_1, null);
							goto IL_6CA;
						}
						if (currentConnectionStatus == 4000)
						{
							goto IL_438;
						}
						if (currentConnectionStatus != 5000)
						{
							goto IL_65B;
						}
					}
					if (!this.WasConnected)
					{
						this.WasConnected = true;
						this.SendConnectionFailedEvent(<>c__DisplayClass73_.e);
					}
					SynchronizationContext arg_357_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_357_1;
					if ((arg_357_1 = MainWindow.<>c.<>9__73_7) == null)
					{
						arg_357_1 = (MainWindow.<>c.<>9__73_7 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_7));
					}
					arg_357_0.Post(arg_357_1, null);
					goto IL_6CA;
				}
				if (currentConnectionStatus <= 1)
				{
					if (currentConnectionStatus != -1)
					{
						if (currentConnectionStatus <= 1)
						{
							ObjectHolder.MainContext.Post(delegate(object o)
							{
								Theming.CurrentThemeSet = Theming.ThemeSet.Connected;
								this.WasConnected = true;
								IconHelpers.Instance.SetTrayIconBySelectedProfile(true, true);
								Navigation.NavigateToConnectedScreen();
								this._reconnectRetries = 0;
								this.Reconnecting = false;
								EventSender expr_32 = ObjectHolder.CyberGhostCom;
								if (expr_32 == null)
								{
									return;
								}
								expr_32.ClearConnectionWhiteList("_DNS_");
							}, null);
							goto IL_6CA;
						}
						goto IL_65B;
					}
				}
				else
				{
					if (currentConnectionStatus == 10)
					{
						SynchronizationContext arg_2CD_0 = ObjectHolder.MainContext;
						SendOrPostCallback arg_2CD_1;
						if ((arg_2CD_1 = MainWindow.<>c.<>9__73_6) == null)
						{
							arg_2CD_1 = (MainWindow.<>c.<>9__73_6 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_6));
						}
						arg_2CD_0.Post(arg_2CD_1, null);
						goto IL_6CA;
					}
					if (currentConnectionStatus != 20)
					{
						goto IL_65B;
					}
					SynchronizationContext arg_29E_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_29E_1;
					if ((arg_29E_1 = MainWindow.<>c.<>9__73_13) == null)
					{
						arg_29E_1 = (MainWindow.<>c.<>9__73_13 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_13));
					}
					arg_29E_0.Post(arg_29E_1, null);
					goto IL_6CA;
				}
			}
			else if (currentConnectionStatus <= 6090)
			{
				if (currentConnectionStatus <= 6010)
				{
					if (currentConnectionStatus != 6000 && currentConnectionStatus != 6010)
					{
						goto IL_65B;
					}
					goto IL_438;
				}
				else
				{
					if (currentConnectionStatus == 6020)
					{
						goto IL_438;
					}
					if (currentConnectionStatus != 6090)
					{
						goto IL_65B;
					}
				}
			}
			else if (currentConnectionStatus <= 10010)
			{
				if (currentConnectionStatus != 10000 && currentConnectionStatus != 10010)
				{
					goto IL_65B;
				}
				goto IL_438;
			}
			else
			{
				if (currentConnectionStatus - 20000 > 1 && currentConnectionStatus != 30001 && currentConnectionStatus != 99999)
				{
					goto IL_65B;
				}
				SynchronizationContext arg_6C5_0 = ObjectHolder.MainContext;
				SendOrPostCallback arg_6C5_1;
				if ((arg_6C5_1 = MainWindow.<>c.<>9__73_11) == null)
				{
					arg_6C5_1 = (MainWindow.<>c.<>9__73_11 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_11));
				}
				arg_6C5_0.Post(arg_6C5_1, null);
				goto IL_6CA;
			}
			this._reconnectRetries = 0;
			this.Reconnecting = false;
			ObjectHolder.ConnectionStatus = -1;
			SettingsHolder.get_Settings().set_ConnectedProfileName(string.Empty);
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				if (ObjectHolder.TaskbarIcon != null)
				{
					ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				}
				Theming.CurrentThemeSet = Theming.ThemeSet.Regular;
				if (<>c__DisplayClass73_.e.CurrentConnectionStatus == -1)
				{
					Navigation.GoHome();
				}
				NotifiyHome expr_35 = ObjectHolder.NotifiyIcon;
				if (expr_35 == null)
				{
					return;
				}
				expr_35.OnAfterDisconnected();
			}, null);
			goto IL_6CA;
			IL_438:
			IconHelpers.Instance.SetTrayIconBySelectedProfile(false, false);
			LogHelper.LogMessage(string.Format("!!!--- CONNECTION DROPPED {0} RETRY {1} ---!!!", <>c__DisplayClass73_.e.CurrentConnectionStatus, this._reconnectRetries));
			if (<>c__DisplayClass73_.e.CurrentConnectionStatus == 10000 && DateTime.Now - this._mLastNetwokChangedTime < TimeSpan.FromMinutes(5.0) && this._reconnectRetries < 1)
			{
				LogHelper.LogMessage("!!!--- DETECTED NETWORK CHANGE! FORCING RECONNECT TO NEW SERVER ---!!!");
				this._reconnectRetries = 2;
			}
			if (<>c__DisplayClass73_.e.CurrentConnectionStatus == 2000 && this._reconnectRetries < 2)
			{
				LogHelper.LogMessage("!!!--- FETCHING NEW SERVER DUE TO TLS-ERROR ---!!!");
				this._reconnectRetries = 2;
			}
			if (<>c__DisplayClass73_.e.CurrentConnectionStatus == 10010 && this._reconnectRetries < 1)
			{
				LogHelper.LogMessage("!!!--- DETECTED OPENVPN EXITED! FORCING RECONNECT TO NEW SERVER ---!!!");
				this._reconnectRetries = 2;
			}
			if (this._reconnectRetries < 2)
			{
				this.Reconnecting = true;
				if (<>c__DisplayClass73_.e.CurrentConnectionStatus != 10000)
				{
					LogHelper.LogMessage("!!!--- FETCHING NEW SERVER ---!!!");
					SynchronizationContext arg_568_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_568_1;
					if ((arg_568_1 = MainWindow.<>c.<>9__73_8) == null)
					{
						arg_568_1 = (MainWindow.<>c.<>9__73_8 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_8));
					}
					arg_568_0.Post(arg_568_1, null);
					goto IL_6CA;
				}
				LogHelper.LogMessage("!!!--- WAITING FOR RECONNECT ---!!!");
				this._reconnectRetries++;
				goto IL_6CA;
			}
			else
			{
				if (this._reconnectRetries < 3)
				{
					SynchronizationContext arg_5BD_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_5BD_1;
					if ((arg_5BD_1 = MainWindow.<>c.<>9__73_9) == null)
					{
						arg_5BD_1 = (MainWindow.<>c.<>9__73_9 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_9));
					}
					arg_5BD_0.Post(arg_5BD_1, null);
					goto IL_6CA;
				}
				MainWindow.<>c__DisplayClass73_1 <>c__DisplayClass73_2 = new MainWindow.<>c__DisplayClass73_1();
				<>c__DisplayClass73_2.CS$<>8__locals1 = <>c__DisplayClass73_;
				LogHelper.LogMessage("!!!--- GIVING UP ---!!!");
				<>c__DisplayClass73_2.wc = this.WasConnected;
				if (!this.WasConnected)
				{
					this.WasConnected = true;
					this.SendConnectionFailedEvent(<>c__DisplayClass73_2.CS$<>8__locals1.e);
				}
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					MainWindow.<>c__DisplayClass73_1.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d <<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d;
					<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d.<>4__this = <>c__DisplayClass73_2;
					<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d.<>t__builder = AsyncVoidMethodBuilder.Create();
					<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d.<>1__state = -1;
					AsyncVoidMethodBuilder <>t__builder = <<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d.<>t__builder;
					<>t__builder.Start<MainWindow.<>c__DisplayClass73_1.<<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d>(ref <<CyberGhostCom_OnConnectionStatusChangedEvent>b__10>d);
				}, null);
				this._reconnectRetries = 100;
				this.Reconnecting = false;
				ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
				goto IL_6CA;
			}
			IL_65B:
			SynchronizationContext arg_680_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_680_1;
			if ((arg_680_1 = MainWindow.<>c.<>9__73_14) == null)
			{
				arg_680_1 = (MainWindow.<>c.<>9__73_14 = new SendOrPostCallback(MainWindow.<>c.<>9.<CyberGhostCom_OnConnectionStatusChangedEvent>b__73_14));
			}
			arg_680_0.Post(arg_680_1, null);
			LogHelper.LogMessage(string.Format("--> GOT AN UNDEFINDED CONNECTION STATUS {0}", ObjectHolder.ConnectionStatus));
			IL_6CA:
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				CommandManager.InvalidateRequerySuggested();
				if (ObjectHolder.CurrentProfile != null)
				{
					try
					{
						IConnectionStates expr_16 = ObjectHolder.CurrentProfile as IConnectionStates;
						if (expr_16 != null)
						{
							expr_16.OnConnectionStatusChanged(<>c__DisplayClass73_.e.CurrentConnectionStatus);
						}
					}
					catch (Exception ex)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnConnectionStatusChanged FOR PROFILE: {0}", ex.Message));
					}
					try
					{
						NotifiyHome expr_4C = ObjectHolder.NotifiyIcon;
						if (expr_4C != null)
						{
							expr_4C.OnConnectionStatusChanged(<>c__DisplayClass73_.e.CurrentConnectionStatus);
						}
					}
					catch (Exception ex2)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnConnectionStatusChanged FOR NotifyIcon: {0}", ex2.Message));
					}
				}
				if (CyberGhost.Pages.Home._Home != null)
				{
					CyberGhost.Pages.Home._Home.OnConnectionStatusChanged(<>c__DisplayClass73_.e.CurrentConnectionStatus);
				}
				if (ObjectHolder.CurrentConnectingScreen != null)
				{
					try
					{
						IConnectionStates expr_A4 = ObjectHolder.CurrentConnectingScreen;
						if (expr_A4 != null)
						{
							expr_A4.OnConnectionStatusChanged(<>c__DisplayClass73_.e.CurrentConnectionStatus);
						}
					}
					catch (Exception ex3)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnConnectionStatusChanged FOR CONNECTING SCREEN: {0}", ex3.Message));
					}
				}
			}, null);
		}

		public void DoBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			try
			{
				if (!isReconnect)
				{
					HelperFunctions.StartProcessList(ObjectHolder.AppListLaunchConnectBefore);
					foreach (string current in ObjectHolder.AppListKillConnectBefore)
					{
						ObjectHolder.CyberGhostCom.CloseApplication(current);
					}
				}
				if (ObjectHolder.MainContext != null)
				{
					ObjectHolder.MainContext.Post(delegate(object o)
					{
						if (ObjectHolder.CurrentProfile != null)
						{
							try
							{
								IConnectionStates expr_11 = ObjectHolder.CurrentProfile as IConnectionStates;
								if (expr_11 != null)
								{
									expr_11.OnBeforeConnect(isReconnect, isAppProtection);
								}
							}
							catch (Exception ex2)
							{
								LogHelper.LogMessage(string.Format("EXCEPTION ON DoBeforeConnect FOR PROFILE: {0}", ex2.Message));
							}
						}
						try
						{
							NotifiyHome expr_48 = ObjectHolder.NotifiyIcon;
							if (expr_48 != null)
							{
								expr_48.OnBeforeConnect(isReconnect, isAppProtection);
							}
						}
						catch (Exception ex3)
						{
							LogHelper.LogMessage(string.Format("EXCEPTION ON DoBeforeConnect FOR NotifyIcon: {0}", ex3.Message));
						}
						if (ObjectHolder.CurrentConnectingScreen != null)
						{
							try
							{
								IConnectionStates expr_85 = ObjectHolder.CurrentConnectingScreen;
								if (expr_85 != null)
								{
									expr_85.OnBeforeConnect(isReconnect, isAppProtection);
								}
							}
							catch (Exception ex4)
							{
								LogHelper.LogMessage(string.Format("EXCEPTION ON DoBeforeConnect FOR CONNECTING SCREEN: {0}", ex4.Message));
							}
						}
						if (CyberGhost.Pages.Home._Home != null)
						{
							CyberGhost.Pages.Home._Home.OnBeforeConnect(isReconnect, isAppProtection);
						}
					}, null);
				}
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("EXCEPTION ON DoBeforeConnect: {0}", ex.Message));
			}
		}

		public void DoAfterConnect(bool isReconnect, bool isAppProtection)
		{
			try
			{
				if (!isReconnect)
				{
					Action arg_22_0;
					if ((arg_22_0 = MainWindow.<>c.<>9__75_0) == null)
					{
						arg_22_0 = (MainWindow.<>c.<>9__75_0 = new Action(MainWindow.<>c.<>9.<DoAfterConnect>b__75_0));
					}
					Task.Run(arg_22_0);
					if (isAppProtection)
					{
						Action arg_4A_0;
						if ((arg_4A_0 = MainWindow.<>c.<>9__75_1) == null)
						{
							arg_4A_0 = (MainWindow.<>c.<>9__75_1 = new Action(MainWindow.<>c.<>9.<DoAfterConnect>b__75_1));
						}
						Task.Run(arg_4A_0);
					}
				}
				if (!isReconnect)
				{
					CancellationTokenSource expr_5C = this._forcedDisconnectTokenSource;
					if (expr_5C != null)
					{
						expr_5C.Cancel(false);
					}
					this._forcedDisconnectTokenSource = new CancellationTokenSource();
					if (ObjectHolder.CurrentUser.IsFreeUser())
					{
						double popupTimerInterval = ObjectHolder.CurrentStatus.GetPopupTimerInterval("forced_disconnect_timer_interval");
						if (popupTimerInterval > -1.0)
						{
							NotificationPopup.ShowOnceTimed(PopUpZone.ForcedDisconnect, popupTimerInterval, this._forcedDisconnectTokenSource.Token);
						}
					}
					if (ObjectHolder.CurrentProfile == null)
					{
						goto IL_37F;
					}
					string text = string.Empty;
					if (Theming.CurrentTheme == Theming.Theme.Pro)
					{
						if (ObjectHolder.CurrentProfile.GetBaseName().Equals("wifi"))
						{
							text = CyberGhost.Translations.Home.GhostWifi + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("network"))
						{
							text = CyberGhost.Translations.Home.GhostNetwork + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousBrowsing"))
						{
							text = CyberGhost.Translations.Home.GhostBrowsing + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousDownloading"))
						{
							text = CyberGhost.Translations.Home.GhostDownloads + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("custom"))
						{
							text = CyberGhost.Translations.Home.GhostPro + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("unblock"))
						{
							text = CyberGhost.Translations.Home.GhostStreaming + Status._IS_ACTIVE;
						}
						else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("antiCensor"))
						{
							text = CyberGhost.Translations.Home.GhostAntiCensor + Status._IS_ACTIVE;
						}
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("wifi"))
					{
						text = CyberGhost.Translations.Home._Wifiprotection + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("network"))
					{
						text = CyberGhost.Translations.Home._Networkprotection + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousBrowsing"))
					{
						text = CyberGhost.Translations.Home.HeadlinePrivateBrowsing + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("anonymousDownloading"))
					{
						text = CyberGhost.Translations.Home.HeaderAnonDownloading + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("custom"))
					{
						text = CyberGhost.Translations.Home.HeaderCustom + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("unblock"))
					{
						text = CyberGhost.Translations.Home.HeaderUnblock + Status._IS_ACTIVE;
					}
					else if (ObjectHolder.CurrentProfile.GetBaseName().Equals("antiCensor"))
					{
						text = CyberGhost.Translations.Home.HeaderAnti + Status._IS_ACTIVE;
					}
					try
					{
						Toaster.ShowSuccess(this, Status.Status_Head_CyberGhost_6, text, 1, 0, 10.0);
						goto IL_37F;
					}
					catch (Exception ex)
					{
						LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
						goto IL_37F;
					}
				}
				try
				{
					Toaster.ShowSuccess(this, Status.Status_Head_CyberGhost_6, Status.reestablished, 1, 0, 10.0);
				}
				catch (Exception ex2)
				{
					LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex2.Message));
				}
				IL_37F:
				if (ObjectHolder.CurrentProfile != null)
				{
					try
					{
						IConnectionStates expr_390 = ObjectHolder.CurrentProfile as IConnectionStates;
						if (expr_390 != null)
						{
							expr_390.OnAfterConnected(isReconnect, isAppProtection);
						}
					}
					catch (Exception ex3)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterConnected FOR PROFILE: {0}", ex3.Message));
					}
				}
				try
				{
					NotifiyHome expr_3BF = ObjectHolder.NotifiyIcon;
					if (expr_3BF != null)
					{
						expr_3BF.OnAfterConnected(isReconnect, isAppProtection);
					}
				}
				catch (Exception ex4)
				{
					LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterConnected FOR NotifyIcon: {0}", ex4.Message));
				}
				if (ObjectHolder.CurrentConnectingScreen != null)
				{
					try
					{
						IConnectionStates expr_3F4 = ObjectHolder.CurrentConnectingScreen;
						if (expr_3F4 != null)
						{
							expr_3F4.OnAfterConnected(isReconnect, isAppProtection);
						}
					}
					catch (Exception ex5)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterConnected FOR CONNECTING SCREEN: {0}", ex5.Message));
					}
				}
				if (CyberGhost.Pages.Home._Home != null)
				{
					CyberGhost.Pages.Home._Home.OnAfterConnected(isReconnect, isAppProtection);
				}
			}
			catch (Exception ex6)
			{
				HelperFunctions.DebugLine(string.Format("EXCEPTION ON OnAfterConnected: {0}", ex6.Message));
			}
		}

		public void DoBeforeDisconnect()
		{
			try
			{
				CancellationTokenSource expr_06 = this._forcedDisconnectTokenSource;
				if (expr_06 != null)
				{
					expr_06.Cancel(false);
				}
				HelperFunctions.StartProcessList(ObjectHolder.AppListLaunchDisconnectBefore);
				foreach (string current in ObjectHolder.AppListKillDisconnectBefore)
				{
					ObjectHolder.CyberGhostCom.CloseApplication(current);
				}
				if (SettingsHolder.get_Settings().get_AppProtection())
				{
					foreach (string current2 in SettingsHolder.get_Settings().get_AppSandboxList())
					{
						ObjectHolder.CyberGhostCom.CloseApplication(current2);
					}
				}
				ProcessHelpers.ReenableProcessWatcherDebugger();
				if (ObjectHolder.CurrentProfile != null)
				{
					try
					{
						IConnectionStates expr_B1 = ObjectHolder.CurrentProfile as IConnectionStates;
						if (expr_B1 != null)
						{
							expr_B1.OnBeforeDisconnect();
						}
					}
					catch (Exception ex)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnBeforeDisconnect FOR PROFILE: {0}", ex.Message));
					}
				}
				try
				{
					NotifiyHome expr_DE = ObjectHolder.NotifiyIcon;
					if (expr_DE != null)
					{
						expr_DE.OnBeforeDisconnect();
					}
				}
				catch (Exception ex2)
				{
					LogHelper.LogMessage(string.Format("EXCEPTION ON OnBeforeDisconnect FOR NotifyIcon: {0}", ex2.Message));
				}
				if (ObjectHolder.CurrentConnectingScreen != null)
				{
					try
					{
						IConnectionStates expr_111 = ObjectHolder.CurrentConnectingScreen;
						if (expr_111 != null)
						{
							expr_111.OnBeforeDisconnect();
						}
					}
					catch (Exception ex3)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnBeforeDisconnect FOR CONNECTING SCREEN: {0}", ex3.Message));
					}
				}
				if (CyberGhost.Pages.Home._Home != null)
				{
					CyberGhost.Pages.Home._Home.OnBeforeDisconnect();
				}
			}
			catch (Exception ex4)
			{
				LogHelper.LogMessage(string.Format("EXCEPTION ON OnBeforeDisconnect: {0}", ex4.Message));
			}
		}

		public void DoAfterDisconnect(bool wasConnected)
		{
			try
			{
				HelperFunctions.StartProcessList(ObjectHolder.AppListLaunchDisconnectAfter);
				foreach (string current in ObjectHolder.AppListKillDisconnectAfter)
				{
					ObjectHolder.CyberGhostCom.CloseApplication(current);
				}
				if (ObjectHolder.CurrentProfile != null)
				{
					try
					{
						IConnectionStates expr_55 = ObjectHolder.CurrentProfile as IConnectionStates;
						if (expr_55 != null)
						{
							expr_55.OnAfterDisconnected();
						}
					}
					catch (Exception ex)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterDisconnected FOR PROFILE: {0}", ex.Message));
					}
				}
				try
				{
					NotifiyHome expr_80 = ObjectHolder.NotifiyIcon;
					if (expr_80 != null)
					{
						expr_80.OnAfterDisconnected();
					}
				}
				catch (Exception ex2)
				{
					LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterDisconnected FOR PROFILE: {0}", ex2.Message));
				}
				if (ObjectHolder.CurrentConnectingScreen != null)
				{
					try
					{
						IConnectionStates expr_B1 = ObjectHolder.CurrentConnectingScreen;
						if (expr_B1 != null)
						{
							expr_B1.OnAfterDisconnected();
						}
					}
					catch (Exception ex3)
					{
						LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterDisconnected FOR CONNECTING SCREEN: {0}", ex3.Message));
					}
				}
				if (CyberGhost.Pages.Home._Home != null)
				{
					CyberGhost.Pages.Home._Home.OnAfterDisconnected();
				}
				DebugWindow expr_EE = ObjectHolder.DebugWindow;
				if (expr_EE != null)
				{
					expr_EE.CreateNewSession();
				}
				ObjectHolder.TaskbarIcon.set_Icon(IconHelpers.DisabledIcon);
				try
				{
					if (wasConnected)
					{
						Toaster.ShowSuccess(this, Status.Status_Head_CyberGhost_6, Status.disconnected, 1, 0, 10.0);
					}
				}
				catch (Exception ex4)
				{
					LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex4.Message));
				}
			}
			catch (Exception ex5)
			{
				LogHelper.LogMessage(string.Format("EXCEPTION ON OnAfterDisconnected: {0}", ex5.Message));
			}
		}

		public void ClearResumePurchaseCookie()
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = MainWindow.<>c.<>9__81_0) == null)
			{
				arg_25_1 = (MainWindow.<>c.<>9__81_0 = new SendOrPostCallback(MainWindow.<>c.<>9.<ClearResumePurchaseCookie>b__81_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		[AsyncStateMachine(typeof(MainWindow.<UpdateLoggedInUser>d__82))]
		public Task<bool> UpdateLoggedInUser(bool updateStatus, bool forceUserRefresh)
		{
			MainWindow.<UpdateLoggedInUser>d__82 <UpdateLoggedInUser>d__;
			<UpdateLoggedInUser>d__.<>4__this = this;
			<UpdateLoggedInUser>d__.updateStatus = updateStatus;
			<UpdateLoggedInUser>d__.forceUserRefresh = forceUserRefresh;
			<UpdateLoggedInUser>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<UpdateLoggedInUser>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <UpdateLoggedInUser>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<UpdateLoggedInUser>d__82>(ref <UpdateLoggedInUser>d__);
			return <UpdateLoggedInUser>d__.<>t__builder.Task;
		}

		public void UpdateUserLabel()
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				if (ObjectHolder.CurrentUser != null && !GuiHelper.IsProLoginRequired())
				{
					if (ObjectHolder.CurrentUser.get_AutoCreated() && ObjectHolder.CurrentUser.get_Subscription() != null && ObjectHolder.CurrentUser.IsFreeUser())
					{
						this.LblHeaderLogin.set_DisplayName(CyberGhost.Translations.MainWindow.login);
					}
					else
					{
						this.LblHeaderLogin.set_DisplayName(string.Format(CyberGhost.Translations.MainWindow.Logout, ObjectHolder.CurrentUser.get_UserName()));
					}
				}
				else
				{
					this.LblHeaderLogin.set_DisplayName(CyberGhost.Translations.MainWindow.login);
				}
				this.ShowTitleLinkUpgrade();
			}, null);
		}

		[AsyncStateMachine(typeof(MainWindow.<EnablePollUser>d__84))]
		public Task EnablePollUser()
		{
			MainWindow.<EnablePollUser>d__84 <EnablePollUser>d__;
			<EnablePollUser>d__.<>4__this = this;
			<EnablePollUser>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<EnablePollUser>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <EnablePollUser>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<EnablePollUser>d__84>(ref <EnablePollUser>d__);
			return <EnablePollUser>d__.<>t__builder.Task;
		}

		private Task<bool?> JsonOAuthRestClient_ServiceNotAvailable(object sender, CallInfos infos)
		{
			if (!new string[]
			{
				"feedback",
				"me",
				"status"
			}.Contains(infos.get_Action()) && ObjectHolder.MainForm.IsVisible && DateTime.Now - this._mLastServiceNotAvailabeMessageShown > TimeSpan.FromSeconds(10.0))
			{
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					if (!this._mServiceNotAvailableVisible && (ObjectHolder.ConnectionStatus == null || ObjectHolder.ConnectionStatus == -1))
					{
						this._mLastServiceNotAvailabeMessageShown = DateTime.MaxValue;
						this._mServiceNotAvailableVisible = true;
						ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
						this._mLastServiceNotAvailabeMessageShown = DateTime.Now;
						this._mServiceNotAvailableVisible = false;
					}
				}, null);
			}
			return Task.FromResult<bool?>(new bool?(true));
		}

		[AsyncStateMachine(typeof(MainWindow.<JsonOAuthRestClient_UserNotAuthorized>d__86))]
		private Task<bool?> JsonOAuthRestClient_UserNotAuthorized(object sender, CallInfos infos)
		{
			MainWindow.<JsonOAuthRestClient_UserNotAuthorized>d__86 <JsonOAuthRestClient_UserNotAuthorized>d__;
			<JsonOAuthRestClient_UserNotAuthorized>d__.<>4__this = this;
			<JsonOAuthRestClient_UserNotAuthorized>d__.<>t__builder = AsyncTaskMethodBuilder<bool?>.Create();
			<JsonOAuthRestClient_UserNotAuthorized>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool?> <>t__builder = <JsonOAuthRestClient_UserNotAuthorized>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<JsonOAuthRestClient_UserNotAuthorized>d__86>(ref <JsonOAuthRestClient_UserNotAuthorized>d__);
			return <JsonOAuthRestClient_UserNotAuthorized>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<DoLogout>d__87))]
		public Task<bool> DoLogout()
		{
			MainWindow.<DoLogout>d__87 <DoLogout>d__;
			<DoLogout>d__.<>4__this = this;
			<DoLogout>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<DoLogout>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <DoLogout>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<DoLogout>d__87>(ref <DoLogout>d__);
			return <DoLogout>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<PollUserTimerTick>d__88))]
		private void PollUserTimerTick(object source, ElapsedEventArgs e)
		{
			MainWindow.<PollUserTimerTick>d__88 <PollUserTimerTick>d__;
			<PollUserTimerTick>d__.<>4__this = this;
			<PollUserTimerTick>d__.source = source;
			<PollUserTimerTick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<PollUserTimerTick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <PollUserTimerTick>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<PollUserTimerTick>d__88>(ref <PollUserTimerTick>d__);
		}

		[AsyncStateMachine(typeof(MainWindow.<UpdateStatus>d__89))]
		public Task UpdateStatus()
		{
			MainWindow.<UpdateStatus>d__89 <UpdateStatus>d__;
			<UpdateStatus>d__.<>4__this = this;
			<UpdateStatus>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<UpdateStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <UpdateStatus>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<UpdateStatus>d__89>(ref <UpdateStatus>d__);
			return <UpdateStatus>d__.<>t__builder.Task;
		}

		public void ShowTitleLinkUpgrade()
		{
		}

		public void OnUserOrPlanHasChanged()
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				if (Custom.Serverlist != null)
				{
					Custom.Serverlist = new CgApiServerList();
				}
				if (NotifiyHome.Servers != null)
				{
					NotifiyHome.Servers = new CgApiServerList();
				}
				if (AnonymousBrowsing.Servers != null)
				{
					AnonymousBrowsing.Servers = new CgApiServerList();
				}
				this.ClearResumePurchaseCookie();
				this.UpdateUserLabel();
			}, null);
		}

		internal void Disconnect()
		{
			ThreadPool.QueueUserWorkItem(delegate(object <p0>)
			{
				this._cancelConnection = true;
				if (ObjectHolder.ConnectionStatus != -1)
				{
					if (ObjectHolder.ConnectionStatus == 10 && !this.WasConnected)
					{
						MainWindow.SendConnectionAttemptAbortedEvent();
					}
					ObjectHolder.MainContext.Post(delegate(object o)
					{
						this.DoBeforeDisconnect();
						ObjectHolder.MainForm.Reconnecting = false;
						CancellationTokenSource expr_17 = this._connectionCancellationTokenSource;
						if (expr_17 != null)
						{
							expr_17.Cancel(false);
						}
						this._connectionCancellationTokenSource = null;
						ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(true);
					}, null);
					return;
				}
				SynchronizationContext arg_62_0 = ObjectHolder.MainContext;
				SendOrPostCallback arg_62_1;
				if ((arg_62_1 = MainWindow.<>c.<>9__95_2) == null)
				{
					arg_62_1 = (MainWindow.<>c.<>9__95_2 = new SendOrPostCallback(MainWindow.<>c.<>9.<Disconnect>b__95_2));
				}
				arg_62_0.Post(arg_62_1, null);
			});
		}

		internal Task<MainWindow.ConnectResultAdvanced> ConnectWithProfile(string aProfileClass, bool isReconnect = false, bool isAppProtection = false, bool updateHistory = true)
		{
			object settingByName = SettingsHolder.get_Settings().GetSettingByName(aProfileClass);
			if (settingByName == null)
			{
				return Task.FromResult<MainWindow.ConnectResultAdvanced>(new MainWindow.ConnectResultAdvanced
				{
					ConnectResult = MainWindow.ConnectResult.ProfileNotSet
				});
			}
			return this.ConnectWithProfile(settingByName as CgBase, isReconnect, isAppProtection, updateHistory);
		}

		[AsyncStateMachine(typeof(MainWindow.<ConnectWithProfile>d__97))]
		internal Task<MainWindow.ConnectResultAdvanced> ConnectWithProfile(CgBase aProfile, bool isReconnect = false, bool isAppProtection = false, bool updateHistory = true)
		{
			MainWindow.<ConnectWithProfile>d__97 <ConnectWithProfile>d__;
			<ConnectWithProfile>d__.<>4__this = this;
			<ConnectWithProfile>d__.aProfile = aProfile;
			<ConnectWithProfile>d__.isReconnect = isReconnect;
			<ConnectWithProfile>d__.isAppProtection = isAppProtection;
			<ConnectWithProfile>d__.updateHistory = updateHistory;
			<ConnectWithProfile>d__.<>t__builder = AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced>.Create();
			<ConnectWithProfile>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder = <ConnectWithProfile>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<ConnectWithProfile>d__97>(ref <ConnectWithProfile>d__);
			return <ConnectWithProfile>d__.<>t__builder.Task;
		}

		private void ProcessPreflightConnectResult(MainWindow.ConnectResultAdvanced conResult)
		{
			if (conResult.ConnectResult != MainWindow.ConnectResult.Ok)
			{
				ConnectionStatusChangedEventArgs connectionStatusChangedEventArgs = new ConnectionStatusChangedEventArgs
				{
					Reason = string.Format("{0}", conResult.ConnectResult)
				};
				if (conResult.Exception != null)
				{
					connectionStatusChangedEventArgs.Exception = conResult.Exception.GetType().Name;
					StackFrame frame = new StackTrace(conResult.Exception, true).GetFrame(0);
					if (frame != null)
					{
						string text = frame.GetFileName();
						int num = string.IsNullOrEmpty(text) ? -1 : text.IndexOf("\\CyberGhost 6\\", StringComparison.InvariantCultureIgnoreCase);
						if (num > 0 && !string.IsNullOrEmpty(text))
						{
							text = text.Substring(num + "\\CyberGhost 6\\".Length);
						}
						else if (string.IsNullOrEmpty(text))
						{
							text = "UNKNOWN";
						}
						ConnectionStatusChangedEventArgs expr_B5 = connectionStatusChangedEventArgs;
						expr_B5.ExceptionData += string.Format("{0}::{1} {2}", text, frame.GetFileLineNumber(), conResult.Exception.Message);
					}
				}
				if (conResult.AdditionalData != null)
				{
					ConnectionStatusChangedEventArgs expr_EF = connectionStatusChangedEventArgs;
					expr_EF.AdditionalData += conResult.AdditionalData;
				}
				switch (conResult.ConnectResult)
				{
				case MainWindow.ConnectResult.TapAdapterInstallationFailed:
				{
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 3000;
					ObjectHolder.ConnectionStatus = 3000;
					SynchronizationContext arg_175_0 = ObjectHolder.MainContext;
					SendOrPostCallback arg_175_1;
					if ((arg_175_1 = MainWindow.<>c.<>9__98_0) == null)
					{
						arg_175_1 = (MainWindow.<>c.<>9__98_0 = new SendOrPostCallback(MainWindow.<>c.<>9.<ProcessPreflightConnectResult>b__98_0));
					}
					arg_175_0.Post(arg_175_1, null);
					break;
				}
				case MainWindow.ConnectResult.ProfileNotSet:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 6010;
					break;
				case MainWindow.ConnectResult.CouldNotFetchServer:
				case MainWindow.ConnectResult.CouldNotFetchServerConfig:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 6010;
					break;
				case MainWindow.ConnectResult.PortCheckFailed:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 6020;
					break;
				case MainWindow.ConnectResult.CaCertificateCheckFailed:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 5000;
					this.CyberGhostCom_OnCertificateMissingEvent(null);
					break;
				case MainWindow.ConnectResult.UserCertificateCheckFailed:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 5000;
					this.CyberGhostCom_OnCertificateMissingEvent(null);
					break;
				case MainWindow.ConnectResult.PopupCancelled:
					connectionStatusChangedEventArgs.CurrentConnectionStatus = 6090;
					break;
				}
				this.CyberGhostCom_OnConnectionStatusChangedEvent(connectionStatusChangedEventArgs);
			}
		}

		[AsyncStateMachine(typeof(MainWindow.<Connect>d__99))]
		internal Task<MainWindow.ConnectResultAdvanced> Connect(bool isReconnect = false, bool isAppProtection = false, bool forceCertificateCheck = false)
		{
			MainWindow.<Connect>d__99 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.isReconnect = isReconnect;
			<Connect>d__.isAppProtection = isAppProtection;
			<Connect>d__.forceCertificateCheck = forceCertificateCheck;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced>.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<Connect>d__99>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<InternalConnectWithProfile>d__100))]
		private Task<MainWindow.ConnectResultAdvanced> InternalConnectWithProfile(CgBase aProfile, string lastServerIp, bool isReconnect = false, bool isAppProtection = false, bool updateHistory = true, bool forceCerfificateCheck = false)
		{
			MainWindow.<InternalConnectWithProfile>d__100 <InternalConnectWithProfile>d__;
			<InternalConnectWithProfile>d__.<>4__this = this;
			<InternalConnectWithProfile>d__.aProfile = aProfile;
			<InternalConnectWithProfile>d__.lastServerIp = lastServerIp;
			<InternalConnectWithProfile>d__.isReconnect = isReconnect;
			<InternalConnectWithProfile>d__.isAppProtection = isAppProtection;
			<InternalConnectWithProfile>d__.updateHistory = updateHistory;
			<InternalConnectWithProfile>d__.forceCerfificateCheck = forceCerfificateCheck;
			<InternalConnectWithProfile>d__.<>t__builder = AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced>.Create();
			<InternalConnectWithProfile>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder = <InternalConnectWithProfile>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<InternalConnectWithProfile>d__100>(ref <InternalConnectWithProfile>d__);
			return <InternalConnectWithProfile>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<InternalConnect>d__101))]
		private Task<MainWindow.ConnectResultAdvanced> InternalConnect(ServerTestResult aServerTestResult, bool isReconnect, bool isAppProtection, bool updateHistory = true, bool forceCertificateCheck = false)
		{
			MainWindow.<InternalConnect>d__101 <InternalConnect>d__;
			<InternalConnect>d__.<>4__this = this;
			<InternalConnect>d__.aServerTestResult = aServerTestResult;
			<InternalConnect>d__.isReconnect = isReconnect;
			<InternalConnect>d__.isAppProtection = isAppProtection;
			<InternalConnect>d__.updateHistory = updateHistory;
			<InternalConnect>d__.forceCertificateCheck = forceCertificateCheck;
			<InternalConnect>d__.<>t__builder = AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced>.Create();
			<InternalConnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<MainWindow.ConnectResultAdvanced> <>t__builder = <InternalConnect>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<InternalConnect>d__101>(ref <InternalConnect>d__);
			return <InternalConnect>d__.<>t__builder.Task;
		}

		internal void LockInternet()
		{
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.LockInternetConnection();
			}
		}

		internal void UnlockInternet()
		{
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.UnlockInternetConnection();
			}
		}

		[AsyncStateMachine(typeof(MainWindow.<ConnectDirect>d__109))]
		private void ConnectDirect(HelperFunctions.WlanInfos wifi)
		{
			MainWindow.<ConnectDirect>d__109 <ConnectDirect>d__;
			<ConnectDirect>d__.<>4__this = this;
			<ConnectDirect>d__.wifi = wifi;
			<ConnectDirect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ConnectDirect>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ConnectDirect>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<ConnectDirect>d__109>(ref <ConnectDirect>d__);
		}

		private static Task<WifiPopup.WifiConnectionResult> _wifiOpenMessageBox(string wifiSsid)
		{
			return new WifiPopup
			{
				WifiSsid = wifiSsid
			}.ShowPopup(10000, ObjectHolder.ConnectTokenSource.Token);
		}

		private void _wifiDetector_OnNewWiFiDetected(HelperFunctions.WlanInfos[] newWiFis)
		{
			MainWindow.<>c__DisplayClass111_0 <>c__DisplayClass111_ = new MainWindow.<>c__DisplayClass111_0();
			<>c__DisplayClass111_.<>4__this = this;
			<>c__DisplayClass111_.newWiFis = newWiFis;
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				MainWindow.<>c__DisplayClass111_0.<<_wifiDetector_OnNewWiFiDetected>b__0>d <<_wifiDetector_OnNewWiFiDetected>b__0>d;
				<<_wifiDetector_OnNewWiFiDetected>b__0>d.<>4__this = <>c__DisplayClass111_;
				<<_wifiDetector_OnNewWiFiDetected>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<_wifiDetector_OnNewWiFiDetected>b__0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<_wifiDetector_OnNewWiFiDetected>b__0>d.<>t__builder;
				<>t__builder.Start<MainWindow.<>c__DisplayClass111_0.<<_wifiDetector_OnNewWiFiDetected>b__0>d>(ref <<_wifiDetector_OnNewWiFiDetected>b__0>d);
			}, null);
		}

		public MainWindow()
		{
			try
			{
				this.InitializeComponent();
			}
			catch (Exception)
			{
			}
			base.DataContext = this;
			ObjectHolder.MainContext = SynchronizationContext.Current;
			ObjectHolder.MainForm = this;
			base.MinHeight = 550.0;
			base.MinWidth = 800.0;
			base.Icon = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Default\\Regular.ico")));
			System.Drawing.Point windowSize = SettingsHolder.get_Settings().get_WindowSize();
			if (windowSize.IsEmpty)
			{
				base.Width = 800.0;
				base.Height = 550.0;
			}
			else
			{
				base.Width = (double)windowSize.X;
				base.Height = (double)windowSize.Y;
			}
			System.Drawing.Point windowPosition = SettingsHolder.get_Settings().get_WindowPosition();
			System.Drawing.Point windowRightBottomPosition = new System.Drawing.Point(windowPosition.X + (int)base.Width, windowPosition.Y + (int)base.Height);
			if (!windowPosition.IsEmpty)
			{
				if (!Screen.AllScreens.Any((Screen screen) => screen.WorkingArea.Contains(windowPosition) && screen.WorkingArea.Contains(windowRightBottomPosition)))
				{
					base.WindowStartupLocation = WindowStartupLocation.CenterScreen;
				}
				else
				{
					base.Left = (double)windowPosition.X;
					base.Top = (double)windowPosition.Y;
				}
			}
			else
			{
				base.WindowStartupLocation = WindowStartupLocation.CenterScreen;
			}
			Theming.ThemeChanged += new Theming.NotifyEvent(this.UpdateTheme);
			this.UpdateTheme();
			Dictionary<Uri, ICommand> arg_1E5_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_1E5_1 = new Uri("auth://go_account");
			Func<Task> arg_1E0_0;
			if ((arg_1E0_0 = MainWindow.<>c.<>9__112_1) == null)
			{
				arg_1E0_0 = (MainWindow.<>c.<>9__112_1 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_1));
			}
			arg_1E5_0.Add(arg_1E5_1, new AsyncDelegateCommand(arg_1E0_0, new Func<bool>(MainWindow.CanExecute)));
			Dictionary<Uri, ICommand> arg_22F_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_22F_1 = new Uri("auth://go_upgrade");
			Func<Task> arg_22A_0;
			if ((arg_22A_0 = MainWindow.<>c.<>9__112_2) == null)
			{
				arg_22A_0 = (MainWindow.<>c.<>9__112_2 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_2));
			}
			arg_22F_0.Add(arg_22F_1, new AsyncDelegateCommand(arg_22A_0, new Func<bool>(MainWindow.CanExecute)));
			base.get_LinkNavigator().get_Commands().Add(new Uri("auth://login"), new AsyncDelegateCommand(new Func<Task>(this.OpenLogin), new Func<bool>(MainWindow.CanExecute)));
			Dictionary<Uri, ICommand> arg_2B0_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_2B0_1 = new Uri("auth://home");
			Func<Task> arg_2AB_0;
			if ((arg_2AB_0 = MainWindow.<>c.<>9__112_3) == null)
			{
				arg_2AB_0 = (MainWindow.<>c.<>9__112_3 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_3));
			}
			arg_2B0_0.Add(arg_2B0_1, new AsyncDelegateCommand(arg_2AB_0, new Func<bool>(MainWindow.CanExecute)));
			Dictionary<Uri, ICommand> arg_2FA_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_2FA_1 = new Uri("auth://back");
			Func<Task> arg_2F5_0;
			if ((arg_2F5_0 = MainWindow.<>c.<>9__112_4) == null)
			{
				arg_2F5_0 = (MainWindow.<>c.<>9__112_4 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_4));
			}
			arg_2FA_0.Add(arg_2FA_1, new AsyncDelegateCommand(arg_2F5_0, new Func<bool>(MainWindow.CanExecute)));
			Dictionary<Uri, ICommand> arg_344_0 = base.get_LinkNavigator().get_Commands();
			Uri arg_344_1 = new Uri("auth://settings");
			Func<Task> arg_33F_0;
			if ((arg_33F_0 = MainWindow.<>c.<>9__112_5) == null)
			{
				arg_33F_0 = (MainWindow.<>c.<>9__112_5 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_5));
			}
			arg_344_0.Add(arg_344_1, new AsyncDelegateCommand(arg_33F_0, new Func<bool>(MainWindow.CanExecute)));
			base.get_LinkNavigator().get_Commands().Add(new Uri("auth://go_feedback"), new AsyncDelegateCommand(delegate
			{
				MainWindow.<<-ctor>b__112_6>d <<-ctor>b__112_6>d;
				<<-ctor>b__112_6>d.<>4__this = this;
				<<-ctor>b__112_6>d.<>t__builder = AsyncTaskMethodBuilder.Create();
				<<-ctor>b__112_6>d.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <<-ctor>b__112_6>d.<>t__builder;
				<>t__builder.Start<MainWindow.<<-ctor>b__112_6>d>(ref <<-ctor>b__112_6>d);
				return <<-ctor>b__112_6>d.<>t__builder.Task;
			}, new Func<bool>(MainWindow.CanExecute)));
			Func<Task> arg_3A0_0;
			if ((arg_3A0_0 = MainWindow.<>c.<>9__112_7) == null)
			{
				arg_3A0_0 = (MainWindow.<>c.<>9__112_7 = new Func<Task>(MainWindow.<>c.<>9.<.ctor>b__112_7));
			}
			base.LogoLinkCommand = new AsyncDelegateCommand(arg_3A0_0);
			this._wifiDetector = new WiFiDetector();
			this._wifiDetector.add_OnNewWiFiDetected(new WiFiDetector.NewWiFiDetected(this._wifiDetector_OnNewWiFiDetected));
			ObjectHolder.WifiDetector = this._wifiDetector;
			this.SetupTimedPopUp();
			SystemEvents.PowerModeChanged += new PowerModeChangedEventHandler(this.SystemEvents_PowerModeChanged);
			SystemEvents.SessionEnding += new SessionEndingEventHandler(this.SystemEvents_SessionEnding);
			base.Loaded += delegate(object sender, RoutedEventArgs e)
			{
				base.ContentFrame.add_Navigating(new EventHandler<NavigatingCancelEventArgs>(this.ContentFrame_Navigating));
			};
			KeyValuePair<string, int> lastUsedProfileAndCounter = GuiHelper.GetLastUsedProfileAndCounter();
			if (!string.IsNullOrWhiteSpace(lastUsedProfileAndCounter.Key) && lastUsedProfileAndCounter.Value >= 3 && (!SettingsHolder.get_Settings().get_AutoConnect() || string.IsNullOrEmpty(SettingsHolder.get_Settings().get_AutoStartProfile()) || ObjectHolder.MainForm == null || ObjectHolder.ConnectionStatus != -1 || ObjectHolder.AppListLaunchConnectAfterOnce.Count != 0))
			{
				TrackingHelper.SendProfileClickedEvent(lastUsedProfileAndCounter.Key, "automatic");
				this.LaunchPage(lastUsedProfileAndCounter.Key);
			}
		}

		private void UpdateTheme()
		{
			base.Title = Theming.GetProductName();
			if (Theming.CurrentTheme == Theming.Theme.Pro)
			{
				base.get_MenuLinkGroups()[0].set_DisplayName(CyberGhost.Translations.Home.GhostBrowsing);
				base.get_MenuLinkGroups()[1].set_DisplayName(CyberGhost.Translations.Home.GhostDownloads);
				base.get_MenuLinkGroups()[2].set_DisplayName(CyberGhost.Translations.Home.GhostPro);
				base.get_MenuLinkGroups()[3].set_DisplayName(CyberGhost.Translations.Home.GhostStreaming);
				base.get_MenuLinkGroups()[4].set_DisplayName(CyberGhost.Translations.Home.GhostAntiCensor);
				base.get_MenuLinkGroups()[5].set_DisplayName(CyberGhost.Translations.Home.GhostWifi);
				base.get_MenuLinkGroups()[6].set_DisplayName(CyberGhost.Translations.Home.GhostNetwork);
			}
			base.Icon = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Default\\Regular.ico")));
		}

		public static string UpgradeChannel()
		{
			string result = "client";
			if (DateTime.Now - Constants.get_AffiliateCooldown() <= TimeSpan.FromDays(30.0))
			{
				result = "affiliatecenter";
			}
			return result;
		}

		private void CreateSupportTicket()
		{
			string str = HelperFunctions.RandomString(8L);
			string path = "ticket-" + str + ".png";
			string text = Path.Combine(HelperFunctions.GetUserDataAppPath("CyberGhost", true), path);
			DependencyObject child = VisualTreeHelper.GetChild(this, 0);
			this.CreateScreenShot((int)base.Width, (int)base.Height, (Visual)child, text);
			new Support
			{
				ScreenShotPath = text
			}.Show();
		}

		public void Dispose()
		{
			SystemEvents.PowerModeChanged -= new PowerModeChangedEventHandler(this.SystemEvents_PowerModeChanged);
			if (ObjectHolder.CyberGhostCom == null)
			{
				return;
			}
			ObjectHolder.CyberGhostCom.remove_OnCertificateMissingEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnCertificateMissingEvent));
			ObjectHolder.CyberGhostCom.remove_OnConnectionStatusChangedEvent(new EventSender.ConnectionStatusChanged(this.CyberGhostCom_OnConnectionStatusChangedEvent));
			ObjectHolder.CyberGhostCom.remove_OnTapUpdateRequiredEvent(new EventSender.StringParamEvent(this.CyberGhostCom_OnTapUpdateRequiredEvent));
			ObjectHolder.CyberGhostCom.remove_OnClientUpdateAvailableEvent(new EventSender.NotifyEvent(this.CyberGhostCom_OnClientUpdateAvailableEvent));
			ObjectHolder.CyberGhostCom.remove_OnTrafficChangedEvent(new EventSender.TrafficChanged(this.CyberGhostCom_OnTrafficChangedEvent));
		}

		private void LaunchPage(string profile)
		{
			uint num = <PrivateImplementationDetails>.ComputeStringHash(profile);
			if (num <= 1377339077u)
			{
				if (num != 120087624u)
				{
					if (num != 542584942u)
					{
						if (num != 1377339077u)
						{
							return;
						}
						if (!(profile == "network"))
						{
							return;
						}
						Navigation.GoToPage("Profiles/Network", null, null);
						return;
					}
					else
					{
						if (!(profile == "custom"))
						{
							return;
						}
						Navigation.GoToPage("Profiles/Custom", null, null);
						return;
					}
				}
				else
				{
					if (!(profile == "wifi"))
					{
						return;
					}
					Navigation.GoToPage("Profiles/Wifi", null, null);
					return;
				}
			}
			else if (num <= 1879243226u)
			{
				if (num != 1741922751u)
				{
					if (num != 1879243226u)
					{
						return;
					}
					if (!(profile == "anonymousDownloading"))
					{
						return;
					}
					Navigation.GoToPage("Profiles/AnonymousDownloading", null, null);
					return;
				}
				else
				{
					if (!(profile == "unblock"))
					{
						return;
					}
					Navigation.GoToPage("Profiles/Unblock", null, null);
					return;
				}
			}
			else if (num != 2687971255u)
			{
				if (num != 2889374611u)
				{
					return;
				}
				if (!(profile == "antiCensor"))
				{
					return;
				}
				Navigation.GoToPage("Profiles/Uncensoring", null, null);
				return;
			}
			else
			{
				if (!(profile == "anonymousBrowsing"))
				{
					return;
				}
				Navigation.GoToPage("Profiles/AnonymousBrowsing", null, null);
				return;
			}
		}

		private void ContentFrame_Navigating(object sender, NavigatingCancelEventArgs e)
		{
			if (e.get_Source() != null && e.get_Source().ToString().ToLower().Contains("/pages/profiles/"))
			{
				GuiHelper.StartInactivityCheck(1800000);
				return;
			}
			GuiHelper.StopInactivityCheck();
		}

		private void SystemEvents_SessionEnding(object sender, SessionEndingEventArgs e)
		{
			this.Disconnect();
			this.Exit(false);
		}

		private void SystemEvents_PowerModeChanged(object sender, PowerModeChangedEventArgs e)
		{
			if (e.Mode == PowerModes.Suspend && ObjectHolder.CyberGhostCom.GetConnectionStatus() == null)
			{
				DebugLogHelper.Instance.Info(string.Format("{0}: !!! HIBERNATING DETECTED !!! LOCKING UP !!!", MethodBase.GetCurrentMethod().Name));
				DebugLogHelper.Instance.Info(string.Format("--> {0}: Save/Set connection status in ObjectHolder to DROPPED", MethodBase.GetCurrentMethod().Name));
				ObjectHolder.ConnectionStatus = 10000;
				ObjectHolder.CyberGhostCom.LockInternetConnection();
				ObjectHolder.CyberGhostCom.DisconnectFromVpnServer(false);
				return;
			}
			if (e.Mode == PowerModes.Resume && ObjectHolder.CyberGhostCom.IsInternetConnectionLocked())
			{
				DebugLogHelper.Instance.Info(string.Format("{0}: !!! RESUME DETECTED !!! INIT RECONNECT !!!", MethodBase.GetCurrentMethod().Name));
				ObjectHolder.MainForm.Connect(false, false, false);
			}
		}

		private static bool CanExecute()
		{
			return ObjectHolder.MainForm.ContentBlockerVisibility != Visibility.Visible && (ObjectHolder.ConnectionStatus == null || ObjectHolder.ConnectionStatus == -1 || ObjectHolder.ConnectionStatus == 3000);
		}

		[AsyncStateMachine(typeof(MainWindow.<OpenLogin>d__122))]
		public Task<bool> OpenLogin()
		{
			MainWindow.<OpenLogin>d__122 <OpenLogin>d__;
			<OpenLogin>d__.<>4__this = this;
			<OpenLogin>d__.<>t__builder = AsyncTaskMethodBuilder<bool>.Create();
			<OpenLogin>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<bool> <>t__builder = <OpenLogin>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<OpenLogin>d__122>(ref <OpenLogin>d__);
			return <OpenLogin>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(MainWindow.<Exit>d__123))]
		internal void Exit(bool restartApplication)
		{
			MainWindow.<Exit>d__123 <Exit>d__;
			<Exit>d__.<>4__this = this;
			<Exit>d__.restartApplication = restartApplication;
			<Exit>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Exit>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Exit>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<Exit>d__123>(ref <Exit>d__);
		}

		private void ModernWindow_LocationChanged(object sender, EventArgs e)
		{
			System.Drawing.Point windowPosition = new System.Drawing.Point((int)base.Left, (int)base.Top);
			SettingsHolder.get_Settings().set_WindowPosition(windowPosition);
		}

		private void MainWindow_OnSizeChanged(object sender, SizeChangedEventArgs e)
		{
			System.Drawing.Point windowSize = new System.Drawing.Point((int)base.Width, (int)base.Height);
			SettingsHolder.get_Settings().set_WindowSize(windowSize);
		}

		private void MainWindow_OnIsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			if (!this._wifiDetector.get_Enabled())
			{
				this._wifiDetector.set_Enabled(true);
			}
		}

		private void ModernWindowWithMessage_Closing(object sender, CancelEventArgs e)
		{
			e.Cancel = true;
			if (GuiHelper.IsProLoginRequired())
			{
				this.Exit(false);
				return;
			}
			base.Visibility = Visibility.Hidden;
		}

		private void ModernWindowWithMessage_Activated(object sender, EventArgs e)
		{
		}

		private void ModernWindowWithMessage_Deactivated(object sender, EventArgs e)
		{
		}

		[AsyncStateMachine(typeof(MainWindow.<ShowMe>d__130))]
		public void ShowMe()
		{
			MainWindow.<ShowMe>d__130 <ShowMe>d__;
			<ShowMe>d__.<>4__this = this;
			<ShowMe>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ShowMe>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ShowMe>d__.<>t__builder;
			<>t__builder.Start<MainWindow.<ShowMe>d__130>(ref <ShowMe>d__);
		}

		private void TaskbarIcon_OnTrayMouseDoubleClick(object sender, RoutedEventArgs e)
		{
			MainWindow expr_05 = ObjectHolder.MainForm;
			if (expr_05 == null)
			{
				return;
			}
			expr_05.ShowMe();
		}

		private void TaskbarIcon_OnPreviewTrayPopupOpen(object sender, RoutedEventArgs e)
		{
			e.Handled = GuiHelper.IsProLoginRequired();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/mainwindow.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		internal Delegate _CreateDelegate(Type delegateType, string handler)
		{
			return Delegate.CreateDelegate(delegateType, this, handler);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.LblHeaderLogin = (Link)target;
				return;
			case 2:
				this.TitleLinkFeedback = (Link)target;
				return;
			case 3:
				this.TaskbarIcon = (TaskbarIcon)target;
				this.TaskbarIcon.add_TrayMouseDoubleClick(new RoutedEventHandler(this.TaskbarIcon_OnTrayMouseDoubleClick));
				this.TaskbarIcon.add_PreviewTrayPopupOpen(new RoutedEventHandler(this.TaskbarIcon_OnPreviewTrayPopupOpen));
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
