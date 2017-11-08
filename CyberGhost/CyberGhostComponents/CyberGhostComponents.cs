using MobileConcepts.Components.Log;
using MobileConcepts.Helpers;
using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using System.Windows.Input;

namespace CyberGhost.Components
{
	public sealed class AsyncDelegateCommand : ICommand
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <Execute>d__9 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public AsyncDelegateCommand <>4__this;

			private ConfiguredTaskAwaitable.ConfiguredTaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				AsyncDelegateCommand asyncDelegateCommand = this.<>4__this;
				try
				{
					try
					{
						ConfiguredTaskAwaitable.ConfiguredTaskAwaiter configuredTaskAwaiter;
						if (num != 0)
						{
							asyncDelegateCommand._currentExecution = asyncDelegateCommand._executeAsync();
							if (asyncDelegateCommand._currentExecution == null)
							{
								goto IL_97;
							}
							configuredTaskAwaiter = asyncDelegateCommand._currentExecution.ConfigureAwait(false).GetAwaiter();
							if (!configuredTaskAwaiter.IsCompleted)
							{
								int arg_4D_1 = 0;
								num = 0;
								this.<>1__state = arg_4D_1;
								this.<>u__1 = configuredTaskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<ConfiguredTaskAwaitable.ConfiguredTaskAwaiter, AsyncDelegateCommand.<Execute>d__9>(ref configuredTaskAwaiter, ref this);
								return;
							}
						}
						else
						{
							configuredTaskAwaiter = this.<>u__1;
							this.<>u__1 = default(ConfiguredTaskAwaitable.ConfiguredTaskAwaiter);
							int arg_83_1 = -1;
							num = -1;
							this.<>1__state = arg_83_1;
						}
						configuredTaskAwaiter.GetResult();
						configuredTaskAwaiter = default(ConfiguredTaskAwaitable.ConfiguredTaskAwaiter);
						IL_97:;
					}
					catch (Exception ex)
					{
						McExceptionLogItem expr_A0 = new McExceptionLogItem();
						expr_A0.set_RelatingException(ex);
						expr_A0.set_ExceptionMessage("UNKNOWN EXCEPTION IN AsyncButton::Exceute : " + ex.Message);
						McExceptionLogItem aEvent = expr_A0;
						ObjectHolder.EventLogger.LogLocalEvent(aEvent);
						HelperFunctions.DebugLine("UNKNOWN EXCEPTION IN AsyncButton::Execute : " + ex.Message);
					}
					finally
					{
						if (num < 0)
						{
							asyncDelegateCommand._currentExecution = null;
							CommandManager.InvalidateRequerySuggested();
						}
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

		private readonly Func<bool> _canExecute;

		private readonly Func<Task> _executeAsync;

		private Task _currentExecution;

		public event EventHandler CanExecuteChanged
		{
			add
			{
				CommandManager.RequerySuggested += value;
			}
			remove
			{
				CommandManager.RequerySuggested -= value;
			}
		}

		public AsyncDelegateCommand(Func<Task> executeAsync) : this(executeAsync, null)
		{
		}

		public AsyncDelegateCommand(Func<Task> executeAsync, Func<bool> canExecute)
		{
			if (executeAsync == null)
			{
				throw new ArgumentNullException("executeAsync");
			}
			this._executeAsync = executeAsync;
			this._canExecute = canExecute;
		}

		public bool CanExecute(object parameter)
		{
			return (this._currentExecution == null || this._currentExecution.IsCompleted) && (this._canExecute == null || this._canExecute());
		}

		[AsyncStateMachine(typeof(AsyncDelegateCommand.<Execute>d__9))]
		public void Execute(object parameter)
		{
			AsyncDelegateCommand.<Execute>d__9 <Execute>d__;
			<Execute>d__.<>4__this = this;
			<Execute>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Execute>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Execute>d__.<>t__builder;
			<>t__builder.Start<AsyncDelegateCommand.<Execute>d__9>(ref <Execute>d__);
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Numerics;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace CyberGhost.Components
{
	public class ConnectedSlider : System.Windows.Controls.UserControl, IComponentConnector, IDisposable, IConnectionStates, ITrafficDataChanged
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <SwitchPages>d__24 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public ConnectedSlider <>4__this;

			public bool toRight;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				ConnectedSlider connectedSlider = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = ConnectedSlider.FadeElementsOut(connectedSlider.LblUpLeftFirstLine, connectedSlider.LblUpLeftSecondLine, connectedSlider.LblImageCountry, connectedSlider.LblDownLeftSecondLine, connectedSlider.LblDownLeftFirstLine, connectedSlider.LblUpRightFirstLine, connectedSlider.LblUpRightSecondLine, connectedSlider.ImageUpLeft, connectedSlider.ImageDownLeft, connectedSlider.ImageUpRight).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, ConnectedSlider.<SwitchPages>d__24>(ref taskAwaiter, ref this);
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
					if (this.toRight)
					{
						connectedSlider._activePage = (connectedSlider._activePage + 1) % 3;
					}
					else
					{
						if (connectedSlider._activePage == 0)
						{
							connectedSlider._activePage = 3;
						}
						connectedSlider._activePage = (connectedSlider._activePage - 1) % 3;
					}
					connectedSlider.SwitchToPageNumber(connectedSlider._activePage);
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

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <SwitchToPageNumber>d__26 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public int page;

			public ConnectedSlider <>4__this;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				ConnectedSlider connectedSlider = this.<>4__this;
				try
				{
					TaskAwaiter taskAwaiter;
					switch (num)
					{
					case 0:
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
						break;
					case 1:
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
						goto IL_230;
					case 2:
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
						goto IL_25D;
					default:
						if (this.page == 0)
						{
							connectedSlider._activePage = 0;
							connectedSlider._isOnDownloadPage = false;
							connectedSlider.SetGuiElementsToFeaturesStats();
							taskAwaiter = ConnectedSlider.FadeElementsIn(connectedSlider.LblUpLeftFirstLine, connectedSlider.LblUpLeftSecondLine, connectedSlider.LblImageCountry, connectedSlider.LblDownLeftSecondLine, connectedSlider.LblDownLeftFirstLine, connectedSlider.LblUpRightFirstLine, connectedSlider.LblUpRightSecondLine, connectedSlider.ImageUpLeft, connectedSlider.ImageDownLeft, connectedSlider.ImageUpRight).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, ConnectedSlider.<SwitchToPageNumber>d__26>(ref taskAwaiter, ref this);
								return;
							}
						}
						else if (this.page == 1)
						{
							connectedSlider._activePage = 1;
							connectedSlider._isOnDownloadPage = true;
							connectedSlider.SetGuiElementsToDownloadStats(connectedSlider.TrafficData);
							taskAwaiter = ConnectedSlider.FadeElementsIn(connectedSlider.LblUpLeftFirstLine, connectedSlider.LblUpLeftSecondLine, connectedSlider.LblImageCountry, connectedSlider.LblDownLeftSecondLine, connectedSlider.LblDownLeftFirstLine, connectedSlider.LblUpRightFirstLine, connectedSlider.LblUpRightSecondLine, connectedSlider.ImageUpLeft, connectedSlider.ImageDownLeft, connectedSlider.ImageUpRight).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 1;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, ConnectedSlider.<SwitchToPageNumber>d__26>(ref taskAwaiter, ref this);
								return;
							}
							goto IL_230;
						}
						else
						{
							if (this.page != 2)
							{
								goto IL_26C;
							}
							connectedSlider._activePage = 2;
							connectedSlider._isOnDownloadPage = false;
							connectedSlider.SetGuiElementsToServerInfo();
							taskAwaiter = ConnectedSlider.FadeElementsIn(connectedSlider.LblUpLeftFirstLine, connectedSlider.LblUpLeftSecondLine, connectedSlider.LblImageCountry, connectedSlider.LblDownLeftSecondLine, connectedSlider.LblDownLeftFirstLine, connectedSlider.LblUpRightFirstLine, connectedSlider.LblUpRightSecondLine, connectedSlider.ImageUpLeft, connectedSlider.ImageDownLeft, connectedSlider.ImageUpRight).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 2;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, ConnectedSlider.<SwitchToPageNumber>d__26>(ref taskAwaiter, ref this);
								return;
							}
							goto IL_25D;
						}
						break;
					}
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					goto IL_285;
					IL_230:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					goto IL_285;
					IL_25D:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					IL_26C:;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_285:
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <FadeElementsIn>d__34 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			public TextBlock lblUpLeftFirstLine;

			private double <j>5__1;

			public TextBlock lblUpLeftSecondLine;

			public Image lblImageCountry;

			public TextBlock lblDownLeftSecondLine;

			public TextBlock lblDownLeftFirstLine;

			public TextBlock lblUpRightFirstLine;

			public TextBlock lblUpRightSecondLine;

			public Image imageUpLeft;

			public Image imageDownLeft;

			public Image imageUpRight;

			private int <i>5__2;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num == 0)
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
						goto IL_A2;
					}
					this.<i>5__2 = 0;
					IL_31:
					if (this.<i>5__2 > 10)
					{
						goto IL_1A9;
					}
					this.<j>5__1 = 0.0;
					if (this.<i>5__2 == 10)
					{
						this.<j>5__1 = 1.0;
					}
					else if (this.<i>5__2 != 10)
					{
						this.<j>5__1 = (double)this.<i>5__2 / 10.0;
					}
					taskAwaiter = Task.Delay(20).GetAwaiter();
					if (!taskAwaiter.IsCompleted)
					{
						this.<>1__state = 0;
						this.<>u__1 = taskAwaiter;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, ConnectedSlider.<FadeElementsIn>d__34>(ref taskAwaiter, ref this);
						return;
					}
					IL_A2:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					this.lblUpLeftFirstLine.Opacity = this.<j>5__1;
					this.lblUpLeftSecondLine.Opacity = this.<j>5__1;
					this.lblImageCountry.Opacity = this.<j>5__1;
					this.lblDownLeftSecondLine.Opacity = this.<j>5__1;
					this.lblDownLeftFirstLine.Opacity = this.<j>5__1;
					this.lblUpRightFirstLine.Opacity = this.<j>5__1;
					this.lblUpRightSecondLine.Opacity = this.<j>5__1;
					this.imageUpLeft.Opacity = this.<j>5__1;
					this.imageDownLeft.Opacity = this.<j>5__1;
					this.imageUpRight.Opacity = this.<j>5__1;
					int num2 = this.<i>5__2;
					this.<i>5__2 = num2 + 1;
					goto IL_31;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_1A9:
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <FadeElementsOut>d__35 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncTaskMethodBuilder <>t__builder;

			public TextBlock lblUpLeftFirstLine;

			private double <j>5__1;

			public TextBlock lblUpLeftSecondLine;

			public Image lblImageCountry;

			public TextBlock lblDownLeftSecondLine;

			public TextBlock lblDownLeftFirstLine;

			public TextBlock lblUpRightFirstLine;

			public TextBlock lblUpRightSecondLine;

			public Image imageUpLeft;

			public Image imageDownLeft;

			public Image imageUpRight;

			private int <i>5__2;

			private TaskAwaiter <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter taskAwaiter;
					if (num == 0)
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter);
						this.<>1__state = -1;
						goto IL_A2;
					}
					this.<i>5__2 = 10;
					IL_32:
					if (this.<i>5__2 < 0)
					{
						goto IL_1A9;
					}
					this.<j>5__1 = 0.0;
					if (this.<i>5__2 == 10)
					{
						this.<j>5__1 = 1.0;
					}
					else if (this.<i>5__2 != 10)
					{
						this.<j>5__1 = (double)this.<i>5__2 / 10.0;
					}
					taskAwaiter = Task.Delay(20).GetAwaiter();
					if (!taskAwaiter.IsCompleted)
					{
						this.<>1__state = 0;
						this.<>u__1 = taskAwaiter;
						this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, ConnectedSlider.<FadeElementsOut>d__35>(ref taskAwaiter, ref this);
						return;
					}
					IL_A2:
					taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter);
					this.lblUpLeftFirstLine.Opacity = this.<j>5__1;
					this.lblUpLeftSecondLine.Opacity = this.<j>5__1;
					this.lblImageCountry.Opacity = this.<j>5__1;
					this.lblDownLeftSecondLine.Opacity = this.<j>5__1;
					this.lblDownLeftFirstLine.Opacity = this.<j>5__1;
					this.lblUpRightFirstLine.Opacity = this.<j>5__1;
					this.lblUpRightSecondLine.Opacity = this.<j>5__1;
					this.imageUpLeft.Opacity = this.<j>5__1;
					this.imageDownLeft.Opacity = this.<j>5__1;
					this.imageUpRight.Opacity = this.<j>5__1;
					int num2 = this.<i>5__2;
					this.<i>5__2 = num2 - 1;
					goto IL_32;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_1A9:
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		private readonly DispatcherTimer _generalDispatcherTimer = new DispatcherTimer();

		private readonly Stopwatch _stopWatch = new Stopwatch();

		private readonly System.Windows.Forms.Timer _timerForDownload;

		private readonly System.Timers.Timer _timerForStopWatch = new System.Timers.Timer(1000.0)
		{
			Enabled = true
		};

		private int _activePage;

		private bool _isOnDownloadPage;

		private BigInteger _timercounter = 1;

		private readonly System.Windows.Forms.Timer _featureStatsUpdateTimer;

		internal ImageBrush BackgroundImage;

		internal Image ImageUpLeft;

		internal Image ImageUpRight;

		internal Image ImageDownLeft;

		internal Image ImageDownRight;

		internal System.Windows.Controls.Label SwitchLeft;

		internal System.Windows.Controls.Label SwitchRight;

		internal StackPanel StackPanelMalware;

		internal TextBlock LblUpLeftFirstLine;

		internal TextBlock LblUpLeftSecondLine;

		internal StackPanel StackPanelAds;

		internal Image LblImageCountry;

		internal TextBlock LblDownLeftFirstLine;

		internal TextBlock LblDownLeftSecondLine;

		internal StackPanel StackPanelIp;

		internal TextBlock LblUpRightFirstLine;

		internal TextBlock LblUpRightSecondLine;

		internal StackPanel StackPanelTimer;

		internal TextBlock LblDownRightFirstLine;

		internal TextBlock LblDownRightSecondLine;

		private bool _contentLoaded;

		public TrafficDataChangedEventArgs TrafficData
		{
			get;
			set;
		}

		public ConnectedSlider()
		{
			this.InitializeComponent();
			this._generalDispatcherTimer.Tick += new EventHandler(this.GeneralDispatcherTimerTick);
			this._generalDispatcherTimer.Interval = new TimeSpan(0, 0, 0, 0, 1);
			this._timerForStopWatch.Elapsed += new ElapsedEventHandler(this.StartStopWatch);
			this._timerForDownload = new System.Windows.Forms.Timer
			{
				Interval = 1500
			};
			this._timerForDownload.Tick += new EventHandler(this.PollTimerTick);
			this._featureStatsUpdateTimer = new System.Windows.Forms.Timer
			{
				Interval = 120000
			};
			this._featureStatsUpdateTimer.Tick += new EventHandler(this._featureStatsUpdateTimer_Tick);
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.ImageUpLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\virus.png")));
			this.ImageUpRight.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\tracking-2.png")));
			this.ImageDownLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\adblock.png")));
			this.ImageDownRight.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\time.png")));
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this._isOnDownloadPage = false;
			this.LblDownLeftSecondLine.Text = Profiles.CustomCountry;
			if (ObjectHolder.CurrentStatus != null)
			{
				this.LblUpRightFirstLine.Text = ObjectHolder.CurrentStatus.get_RealIp();
			}
			this.LblUpRightFirstLine.Foreground = new SolidColorBrush(Colors.Red);
			this.LblUpRightSecondLine.Text = Profiles.ConnectedAnonymousBrowsing_OnBeforeConnect_CURRENT_IP_NOT_HIDDEN;
			this.LblUpRightSecondLine.Foreground = new SolidColorBrush(Colors.Red);
			this.SetGuiElementsToServerInfo();
			this._activePage = 2;
			this.LblDownRightFirstLine.Text = "00:00:00";
		}

		public void OnBeforeDisconnect()
		{
			this.TrafficData = GuiHelper.ResetTrafficData();
			this.SwitchLeft.Visibility = Visibility.Hidden;
			this.SwitchRight.Visibility = Visibility.Hidden;
			this._timerForDownload.Stop();
			this._timerForStopWatch.Stop();
			this._stopWatch.Stop();
			this._generalDispatcherTimer.Stop();
			this._featureStatsUpdateTimer.Stop();
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			ObjectHolder.DownloadTimerCounter = 0;
			this._timercounter = 0;
			this._timerForDownload.Start();
			this._featureStatsUpdateTimer.Start();
			VpnServerLastConnectionInfos expr_32 = ObjectHolder.CurrentConnectionInfos;
			if (!string.IsNullOrEmpty((expr_32 != null) ? expr_32.ServerIp : null))
			{
				TextBlock arg_5C_0 = this.LblUpRightFirstLine;
				VpnServerLastConnectionInfos expr_50 = ObjectHolder.CurrentConnectionInfos;
				arg_5C_0.Text = ((expr_50 != null) ? expr_50.ServerIp : null);
			}
			if (ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing()))
			{
				this.SwitchLeft.Style = (base.FindResource("AnonSurfing") as Style);
				this.SwitchRight.Style = (base.FindResource("AnonSurfing") as Style);
				this.LblUpRightFirstLine.Foreground = (base.FindResource("BrushColorYellow") as SolidColorBrush);
			}
			if (ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading()))
			{
				this.SwitchLeft.Style = (base.FindResource("AnonDown") as Style);
				this.SwitchRight.Style = (base.FindResource("AnonDown") as Style);
				this.LblUpRightFirstLine.Foreground = (base.FindResource("ProfileAnonDownloadColorBrush") as SolidColorBrush);
			}
			if (ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileCustom()))
			{
				this.SwitchLeft.Style = (base.FindResource("Custom") as Style);
				this.SwitchRight.Style = (base.FindResource("Custom") as Style);
				this.LblUpRightFirstLine.Foreground = (base.FindResource("MangentaBaseBrush") as SolidColorBrush);
			}
			if (ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileNetwork()))
			{
				this.SwitchLeft.Style = (base.FindResource("Wifi") as Style);
				this.SwitchRight.Style = (base.FindResource("Wifi") as Style);
				this.LblUpRightFirstLine.Foreground = (base.FindResource("ProfileWifiColorBrush") as SolidColorBrush);
			}
			if (ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileWifi()))
			{
				this.SwitchLeft.Style = (base.FindResource("Wifi") as Style);
				this.SwitchRight.Style = (base.FindResource("Wifi") as Style);
				this.LblUpRightFirstLine.Foreground = (base.FindResource("ProfileWifiColorBrush") as SolidColorBrush);
			}
			this.LblUpRightSecondLine.Text = Profiles.ConnectedAnonymousBrowsing_OnAfterConnected_IP_REPLACED_BY_CYBERGHOST;
			this.SwitchLeft.Visibility = Visibility.Visible;
			this.SwitchRight.Visibility = Visibility.Visible;
			this.SwitchToPageNumber(ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading()) ? 1 : 2);
		}

		public void OnAfterDisconnected()
		{
			this._timerForDownload.Stop();
			this._timerForDownload.Dispose();
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
		}

		public void Dispose()
		{
			if (this._timerForDownload != null)
			{
				this._timerForDownload.Tick -= new EventHandler(this.PollTimerTick);
			}
		}

		public void OnTrafficDataChanged(TrafficDataChangedEventArgs trafficData)
		{
			this.TrafficData = trafficData;
			if (this._isOnDownloadPage)
			{
				this.SetGuiElementsToDownloadStats(trafficData);
			}
		}

		public void OnNavigatedTo()
		{
			if (ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing()))
			{
				if (File.Exists(Theming.GetThemedImage("Background\\anonSurfBack.png")))
				{
					this.BackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anonSurfBack.png")));
				}
				this.LblUpLeftFirstLine.Foreground = (base.FindResource("BrushColorYellow") as SolidColorBrush);
				this.LblUpRightFirstLine.Foreground = (base.FindResource("BrushColorYellow") as SolidColorBrush);
				this.LblDownLeftFirstLine.Foreground = (base.FindResource("BrushColorYellow") as SolidColorBrush);
				this.LblDownRightFirstLine.Foreground = (base.FindResource("BrushColorYellow") as SolidColorBrush);
			}
			if (ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading()))
			{
				if (File.Exists(Theming.GetThemedImage("Background\\anonDownloadBack.png")))
				{
					this.BackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\anonDownloadBack.png")));
				}
				this.LblUpLeftFirstLine.Foreground = (base.FindResource("ProfileAnonDownloadColorBrush") as SolidColorBrush);
				this.LblUpRightFirstLine.Foreground = (base.FindResource("ProfileAnonDownloadColorBrush") as SolidColorBrush);
				this.LblDownLeftFirstLine.Foreground = (base.FindResource("ProfileAnonDownloadColorBrush") as SolidColorBrush);
				this.LblDownRightFirstLine.Foreground = (base.FindResource("ProfileAnonDownloadColorBrush") as SolidColorBrush);
			}
			if (ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileCustom()))
			{
				if (File.Exists(Theming.GetThemedImage("Background\\stats-settingsBack.png")))
				{
					this.BackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\stats-settingsBack.png")));
				}
				this.LblUpLeftFirstLine.Foreground = (base.FindResource("MangentaBaseBrush") as SolidColorBrush);
				this.LblUpRightFirstLine.Foreground = (base.FindResource("MangentaBaseBrush") as SolidColorBrush);
				this.LblDownLeftFirstLine.Foreground = (base.FindResource("MangentaBaseBrush") as SolidColorBrush);
				this.LblDownRightFirstLine.Foreground = (base.FindResource("MangentaBaseBrush") as SolidColorBrush);
			}
			if (ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileNetwork()) || ObjectHolder.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileWifi()))
			{
				if (File.Exists(Theming.GetThemedImage("Background\\stats-wifi.png")))
				{
					this.BackgroundImage.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\stats-wifi.png")));
				}
				this.LblUpLeftFirstLine.Foreground = (base.FindResource("ProfileWifiColorBrush") as SolidColorBrush);
				this.LblUpRightFirstLine.Foreground = (base.FindResource("ProfileWifiColorBrush") as SolidColorBrush);
				this.LblDownLeftFirstLine.Foreground = (base.FindResource("ProfileWifiColorBrush") as SolidColorBrush);
				this.LblDownRightFirstLine.Foreground = (base.FindResource("ProfileWifiColorBrush") as SolidColorBrush);
			}
			this.TrafficData = GuiHelper.ResetTrafficData();
			this.SwitchLeft.Visibility = Visibility.Hidden;
			this.SwitchRight.Visibility = Visibility.Hidden;
			ObjectHolder.ConnectedDispatcherTimer = this._generalDispatcherTimer;
			if (!this._stopWatch.IsRunning)
			{
				this._stopWatch.Stop();
				this._stopWatch.Reset();
				this._timerForStopWatch.Start();
			}
		}

		private void SwitchLeft_OnMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			this.SwitchPages(false);
		}

		private void SwitchRight_OnMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			this.SwitchPages(true);
		}

		[AsyncStateMachine(typeof(ConnectedSlider.<SwitchPages>d__24))]
		private void SwitchPages(bool toRight)
		{
			ConnectedSlider.<SwitchPages>d__24 <SwitchPages>d__;
			<SwitchPages>d__.<>4__this = this;
			<SwitchPages>d__.toRight = toRight;
			<SwitchPages>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SwitchPages>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SwitchPages>d__.<>t__builder;
			<>t__builder.Start<ConnectedSlider.<SwitchPages>d__24>(ref <SwitchPages>d__);
		}

		private void _featureStatsUpdateTimer_Tick(object sender, EventArgs e)
		{
			if (this._activePage == 0)
			{
				this.SetGuiElementsToFeaturesStats();
			}
		}

		[AsyncStateMachine(typeof(ConnectedSlider.<SwitchToPageNumber>d__26))]
		private void SwitchToPageNumber(int page)
		{
			ConnectedSlider.<SwitchToPageNumber>d__26 <SwitchToPageNumber>d__;
			<SwitchToPageNumber>d__.<>4__this = this;
			<SwitchToPageNumber>d__.page = page;
			<SwitchToPageNumber>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SwitchToPageNumber>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SwitchToPageNumber>d__.<>t__builder;
			<>t__builder.Start<ConnectedSlider.<SwitchToPageNumber>d__26>(ref <SwitchToPageNumber>d__);
		}

		public void SetGuiElementsToServerInfo()
		{
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<SetGuiElementsToServerInfo>b__27_0), null);
		}

		public void SetGuiElementsToDownloadStats(TrafficDataChangedEventArgs data)
		{
			if (this._isOnDownloadPage)
			{
				GuiHelper.DisplayTrafficIcons(this._isOnDownloadPage, this.ImageUpLeft, this.ImageDownLeft, this.ImageUpRight);
				this.LblUpLeftFirstLine.Text = data.get_CurrentSpeed().Key;
				this.LblUpLeftSecondLine.Text = Profiles.anonDownload_downloadspeed;
				this.LblUpRightFirstLine.Text = data.get_MaxSpeed().Key;
				this.LblUpRightSecondLine.Text = Profiles.AnonDownload_MaxSpeed;
				this.LblDownLeftFirstLine.Text = data.get_TotalReceived().Key;
				this.LblDownLeftSecondLine.Text = Profiles.AnonDownAmmount;
				this.LblDownLeftSecondLine.Margin = new Thickness(0.0, 10.0, 0.0, 0.0);
				this.LblDownLeftFirstLine.Visibility = Visibility.Visible;
				this.LblImageCountry.Visibility = Visibility.Collapsed;
			}
		}

		public void SetGuiElementsToFeaturesStats()
		{
			try
			{
				this.ImageUpLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\virus.png")));
				this.ImageDownLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\adblock.png")));
				this.ImageUpRight.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\tracking-2.png")));
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} COULD NOT SET BITMAP {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
			this.LblUpLeftFirstLine.Text = Status._DISABLED;
			this.LblUpRightFirstLine.Text = Status._DISABLED;
			this.LblDownLeftFirstLine.Text = Status._DISABLED;
			this.LblUpLeftSecondLine.Text = Status.malware;
			this.LblUpRightSecondLine.Text = Status.tracking;
			this.LblDownLeftSecondLine.Text = Status.adds;
			this.LblDownLeftSecondLine.Margin = new Thickness(0.0, 10.0, 0.0, 0.0);
			this.LblImageCountry.Visibility = Visibility.Collapsed;
			this.LblDownLeftFirstLine.Visibility = Visibility.Visible;
			ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<SetGuiElementsToFeaturesStats>b__29_0), null);
		}

		private void GeneralDispatcherTimerTick(object sender, EventArgs e)
		{
			if (this._stopWatch.IsRunning)
			{
				TimeSpan elapsed = this._stopWatch.Elapsed;
				ObjectHolder.CurrentConnectionTime = string.Format("{0:00}:{1:00}:{2:00}", elapsed.Hours, elapsed.Minutes, elapsed.Seconds);
				this.LblDownRightFirstLine.Text = ObjectHolder.CurrentConnectionTime;
			}
		}

		private void StartStopWatch(object source, ElapsedEventArgs e)
		{
			if (ObjectHolder.ConnectionStatus == null)
			{
				this._timerForStopWatch.Stop();
				ObjectHolder.MainContext.Post(new SendOrPostCallback(this.<StartStopWatch>b__31_0), null);
			}
		}

		private void PollTimerTick(object sender, EventArgs e)
		{
			this._timercounter = ++this._timercounter;
			ObjectHolder.DownloadTimerCounter = this._timercounter;
		}

		public static string MutateServerName(string servername, TextBlock lblUpLeftFirstLine)
		{
			string[] array = servername.Split(new char[]
			{
				'-'
			});
			string result;
			if (array.Length != 0)
			{
				if (array[0].Length <= 25)
				{
					result = array[0];
					lblUpLeftFirstLine.ToolTip = null;
				}
				else
				{
					lblUpLeftFirstLine.ToolTip = array[0];
					result = GuiHelper.Truncate(servername, 40);
				}
			}
			else
			{
				result = servername;
				lblUpLeftFirstLine.ToolTip = null;
			}
			return result;
		}

		[AsyncStateMachine(typeof(ConnectedSlider.<FadeElementsIn>d__34))]
		public static Task FadeElementsIn(TextBlock lblUpLeftFirstLine, TextBlock lblUpLeftSecondLine, Image lblImageCountry, TextBlock lblDownLeftSecondLine, TextBlock lblDownLeftFirstLine, TextBlock lblUpRightFirstLine, TextBlock lblUpRightSecondLine, Image imageUpLeft, Image imageDownLeft, Image imageUpRight)
		{
			ConnectedSlider.<FadeElementsIn>d__34 <FadeElementsIn>d__;
			<FadeElementsIn>d__.lblUpLeftFirstLine = lblUpLeftFirstLine;
			<FadeElementsIn>d__.lblUpLeftSecondLine = lblUpLeftSecondLine;
			<FadeElementsIn>d__.lblImageCountry = lblImageCountry;
			<FadeElementsIn>d__.lblDownLeftSecondLine = lblDownLeftSecondLine;
			<FadeElementsIn>d__.lblDownLeftFirstLine = lblDownLeftFirstLine;
			<FadeElementsIn>d__.lblUpRightFirstLine = lblUpRightFirstLine;
			<FadeElementsIn>d__.lblUpRightSecondLine = lblUpRightSecondLine;
			<FadeElementsIn>d__.imageUpLeft = imageUpLeft;
			<FadeElementsIn>d__.imageDownLeft = imageDownLeft;
			<FadeElementsIn>d__.imageUpRight = imageUpRight;
			<FadeElementsIn>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<FadeElementsIn>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <FadeElementsIn>d__.<>t__builder;
			<>t__builder.Start<ConnectedSlider.<FadeElementsIn>d__34>(ref <FadeElementsIn>d__);
			return <FadeElementsIn>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(ConnectedSlider.<FadeElementsOut>d__35))]
		public static Task FadeElementsOut(TextBlock lblUpLeftFirstLine, TextBlock lblUpLeftSecondLine, Image lblImageCountry, TextBlock lblDownLeftSecondLine, TextBlock lblDownLeftFirstLine, TextBlock lblUpRightFirstLine, TextBlock lblUpRightSecondLine, Image imageUpLeft, Image imageDownLeft, Image imageUpRight)
		{
			ConnectedSlider.<FadeElementsOut>d__35 <FadeElementsOut>d__;
			<FadeElementsOut>d__.lblUpLeftFirstLine = lblUpLeftFirstLine;
			<FadeElementsOut>d__.lblUpLeftSecondLine = lblUpLeftSecondLine;
			<FadeElementsOut>d__.lblImageCountry = lblImageCountry;
			<FadeElementsOut>d__.lblDownLeftSecondLine = lblDownLeftSecondLine;
			<FadeElementsOut>d__.lblDownLeftFirstLine = lblDownLeftFirstLine;
			<FadeElementsOut>d__.lblUpRightFirstLine = lblUpRightFirstLine;
			<FadeElementsOut>d__.lblUpRightSecondLine = lblUpRightSecondLine;
			<FadeElementsOut>d__.imageUpLeft = imageUpLeft;
			<FadeElementsOut>d__.imageDownLeft = imageDownLeft;
			<FadeElementsOut>d__.imageUpRight = imageUpRight;
			<FadeElementsOut>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<FadeElementsOut>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <FadeElementsOut>d__.<>t__builder;
			<>t__builder.Start<ConnectedSlider.<FadeElementsOut>d__35>(ref <FadeElementsOut>d__);
			return <FadeElementsOut>d__.<>t__builder.Task;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/connectedslider.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.BackgroundImage = (ImageBrush)target;
				return;
			case 2:
				this.ImageUpLeft = (Image)target;
				return;
			case 3:
				this.ImageUpRight = (Image)target;
				return;
			case 4:
				this.ImageDownLeft = (Image)target;
				return;
			case 5:
				this.ImageDownRight = (Image)target;
				return;
			case 6:
				this.SwitchLeft = (System.Windows.Controls.Label)target;
				this.SwitchLeft.MouseLeftButtonUp += new MouseButtonEventHandler(this.SwitchLeft_OnMouseLeftButtonUp);
				return;
			case 7:
				this.SwitchRight = (System.Windows.Controls.Label)target;
				this.SwitchRight.MouseLeftButtonUp += new MouseButtonEventHandler(this.SwitchRight_OnMouseLeftButtonUp);
				return;
			case 8:
				this.StackPanelMalware = (StackPanel)target;
				return;
			case 9:
				this.LblUpLeftFirstLine = (TextBlock)target;
				return;
			case 10:
				this.LblUpLeftSecondLine = (TextBlock)target;
				return;
			case 11:
				this.StackPanelAds = (StackPanel)target;
				return;
			case 12:
				this.LblImageCountry = (Image)target;
				return;
			case 13:
				this.LblDownLeftFirstLine = (TextBlock)target;
				return;
			case 14:
				this.LblDownLeftSecondLine = (TextBlock)target;
				return;
			case 15:
				this.StackPanelIp = (StackPanel)target;
				return;
			case 16:
				this.LblUpRightFirstLine = (TextBlock)target;
				return;
			case 17:
				this.LblUpRightSecondLine = (TextBlock)target;
				return;
			case 18:
				this.StackPanelTimer = (StackPanel)target;
				return;
			case 19:
				this.LblDownRightFirstLine = (TextBlock)target;
				return;
			case 20:
				this.LblDownRightSecondLine = (TextBlock)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[CompilerGenerated]
		private void <SetGuiElementsToServerInfo>b__27_0(object o)
		{
			if (File.Exists(Theming.GetThemedImage("Icons\\Connected\\name.png")))
			{
				this.ImageUpLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\name.png")));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\Connected\\country.png")))
			{
				this.ImageDownLeft.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\country.png")));
			}
			if (File.Exists(Theming.GetThemedImage("Icons\\Connected\\IP.png")))
			{
				this.ImageUpRight.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Connected\\IP.png")));
			}
			this.LblUpLeftFirstLine.Text = string.Empty;
			this.LblUpRightFirstLine.Text = string.Empty;
			this.LblDownLeftFirstLine.Text = string.Empty;
			if (ObjectHolder.ConnectionStatus == null)
			{
				this.LblUpRightSecondLine.Foreground = (base.FindResource("SubMenuText") as SolidColorBrush);
				this.LblUpRightSecondLine.Text = Profiles.ConnectedAnonymousBrowsing_OnAfterConnected_IP_REPLACED_BY_CYBERGHOST;
				VpnServerLastConnectionInfos expr_F7 = ObjectHolder.CurrentConnectionInfos;
				if (!string.IsNullOrEmpty((expr_F7 != null) ? expr_F7.ServerIp : null))
				{
					this.LblUpRightFirstLine.Text = ObjectHolder.CurrentConnectionInfos.ServerIp;
				}
			}
			else if (ObjectHolder.ConnectionStatus == 10)
			{
				this.LblUpRightFirstLine.Text = ObjectHolder.CurrentStatus.get_RealIp();
				this.LblUpRightSecondLine.Text = Profiles.ConnectedAnonymousBrowsing_OnBeforeConnect_CURRENT_IP_NOT_HIDDEN;
				this.LblUpRightSecondLine.Foreground = new SolidColorBrush(Colors.Red);
				this.LblUpLeftFirstLine.Text = "-";
				if (File.Exists(Theming.GetThemedImage("Icons\\Flags\\24\\blank.png")))
				{
					this.LblImageCountry.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Flags\\24\\blank.png")));
				}
			}
			if (ObjectHolder.ConnectionStatus != 10)
			{
				VpnServerLastConnectionInfos expr_1BB = ObjectHolder.CurrentConnectionInfos;
				if (!string.IsNullOrEmpty((expr_1BB != null) ? expr_1BB.ServerName : null))
				{
					this.LblUpLeftFirstLine.Text = ConnectedSlider.MutateServerName(ObjectHolder.CurrentConnectionInfos.ServerName, this.LblUpLeftFirstLine);
				}
				this.LblUpLeftSecondLine.Text = General.SERVER;
				try
				{
					VpnServerLastConnectionInfos expr_203 = ObjectHolder.CurrentConnectionInfos;
					if (!string.IsNullOrEmpty((expr_203 != null) ? expr_203.ServerCountry : null))
					{
						string arg_23B_0 = "Icons\\Flags\\24";
						string arg_236_0 = "{0}.png";
						VpnServerLastConnectionInfos expr_225 = ObjectHolder.CurrentConnectionInfos;
						Uri uriSource = new Uri(Theming.GetThemedImage(Path.Combine(arg_23B_0, string.Format(arg_236_0, (expr_225 != null) ? expr_225.ServerCountry.ToLower() : null))));
						this.LblImageCountry.Source = new BitmapImage(uriSource);
					}
				}
				catch (Exception ex)
				{
					HelperFunctions.DebugLine(string.Format("{0}::{1} FAILED SET BITMAP SOURCE {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
				}
				VpnServerLastConnectionInfos expr_290 = ObjectHolder.CurrentConnectionInfos;
				if (!string.IsNullOrEmpty((expr_290 != null) ? expr_290.ServerCountry : null))
				{
					this.LblDownLeftSecondLine.Text = GuiHelper.FindTranslationForCountry(ObjectHolder.CurrentConnectionInfos.ServerCountry);
				}
			}
			this.LblDownLeftFirstLine.Visibility = Visibility.Collapsed;
			this.LblImageCountry.Visibility = Visibility.Visible;
			this.LblDownLeftSecondLine.Margin = new Thickness(0.0, 15.0, 0.0, 0.0);
		}

		[CompilerGenerated]
		private void <SetGuiElementsToFeaturesStats>b__29_0(object o)
		{
			if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.get_TokenObj() != null && ObjectHolder.CurrentUser.get_TokenObj().get_Features() != null)
			{
				using (List<CgApiFeatures>.Enumerator enumerator = ObjectHolder.CurrentUser.get_TokenObj().get_Features().GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						GuiHelper.SetDisplayFeatureStatsById(enumerator.Current, this.LblUpLeftFirstLine, this.LblDownLeftFirstLine, this.LblUpRightFirstLine, ObjectHolder.CurrentProfile);
					}
					return;
				}
			}
			Tuple<string, string, string> tuple = GuiHelper.DetermineStatus(ObjectHolder.CurrentProfile);
			this.LblDownLeftFirstLine.Text = (ObjectHolder.CurrentProfile.get_FeatureAdBlock() ? "0" : tuple.Item1);
			this.LblUpLeftFirstLine.Text = (ObjectHolder.CurrentProfile.get_FeatureMalware() ? "0" : tuple.Item2);
			this.LblUpRightFirstLine.Text = (ObjectHolder.CurrentProfile.get_FeatureTracking() ? "0" : tuple.Item3);
		}

		[CompilerGenerated]
		private void <StartStopWatch>b__31_0(object o)
		{
			this._stopWatch.Start();
			this._generalDispatcherTimer.Start();
		}
	}
}

using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class DebugCommentDialog : ModernDialog, IComponentConnector
	{
		public bool SendLog;

		internal TextBox ResponseTextBox;

		private bool _contentLoaded;

		public string ResponseText
		{
			get
			{
				return this.ResponseTextBox.Text;
			}
			set
			{
				this.ResponseTextBox.Text = value;
			}
		}

		public DebugCommentDialog()
		{
			this.InitializeComponent();
			base.Width = 300.0;
			base.Height = 150.0;
		}

		private void OKButton_Click(object sender, RoutedEventArgs e)
		{
			this.SendLog = true;
			base.DialogResult = new bool?(true);
		}

		private void Close_Click(object sender, RoutedEventArgs e)
		{
			this.SendLog = false;
			base.Close();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/debugcommentdialog.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ResponseTextBox = (TextBox)target;
				return;
			case 2:
				((Button)target).Click += new RoutedEventHandler(this.OKButton_Click);
				return;
			case 3:
				((Button)target).Click += new RoutedEventHandler(this.Close_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using MobileConcepts.Components.Log;
using System;
using System.Collections.ObjectModel;

namespace CyberGhost.Components
{
	public class DebugTreeItem
	{
		public string Name
		{
			get;
			set;
		}

		public string NodeName
		{
			get;
			set;
		}

		public string Value
		{
			get;
			set;
		}

		public string DateTime
		{
			get;
			set;
		}

		public string LogCategory
		{
			get;
			set;
		}

		public bool Highlight
		{
			get;
			set;
		}

		public McBaseLogItem Item
		{
			get;
			set;
		}

		public ObservableCollection<DebugTreeItem> Childs
		{
			get;
			set;
		}

		public DebugTreeItem()
		{
			this.Name = null;
			this.Value = null;
			this.DateTime = null;
			this.LogCategory = null;
			this.NodeName = null;
			this.Childs = new ObservableCollection<DebugTreeItem>();
		}
	}
}

using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using MobileConcepts.Components.Log;
using MobileConcepts.Helpers;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;

namespace CyberGhost.Components
{
	public class EventLogger : IMcLogSenderInterface
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass6_0
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<SendFeedbackTrackingEvent>b__0>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncVoidMethodBuilder <>t__builder;

				public EventLogger.<>c__DisplayClass6_0 <>4__this;

				private CgApiFeedback <feedback>5__1;

				private TaskAwaiter<bool> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					EventLogger.<>c__DisplayClass6_0 <>c__DisplayClass6_ = this.<>4__this;
					try
					{
						try
						{
							bool flag;
							TaskAwaiter<bool> taskAwaiter;
							if (num != 0)
							{
								CgApiFeedback expr_1B = new CgApiFeedback();
								expr_1B.set_Os("win");
								this.<feedback>5__1 = expr_1B;
								FeedbackData expr_30 = new FeedbackData();
								expr_30.set_OptionalData((OptionalData)<>c__DisplayClass6_.optionalData);
								expr_30.set_Value(<>c__DisplayClass6_.value);
								expr_30.set_Type(<>c__DisplayClass6_.aEvent.get_Type());
								FeedbackData feedbackData = expr_30;
								if (feedbackData.get_OptionalData() != null)
								{
									feedbackData.get_OptionalData().set_TotalApplicationLaunches(new int?(SettingsHolder.get_Settings().get_TotalApplicationLaunches()));
									feedbackData.get_OptionalData().set_TotalConnectionAttempts(new int?(SettingsHolder.get_Settings().get_TotalConnectionAttempts()));
									feedbackData.get_OptionalData().set_TotalConnectionsFailed(new int?(SettingsHolder.get_Settings().get_TotalConnectionFailed()));
									feedbackData.get_OptionalData().set_TotalConnectionsOk(new int?(SettingsHolder.get_Settings().get_TotalConnectionsOk()));
								}
								this.<feedback>5__1.set_Data(feedbackData);
								LinkedList<CgApiFeedback> unprocessedApiFeedbacks = <>c__DisplayClass6_.<>4__this._unprocessedApiFeedbacks;
								flag = false;
								bool flag2;
								try
								{
									Monitor.Enter(unprocessedApiFeedbacks, ref flag);
									flag2 = (<>c__DisplayClass6_.<>4__this._unprocessedApiFeedbacks.Count == 0);
								}
								finally
								{
									if (num < 0 && flag)
									{
										Monitor.Exit(unprocessedApiFeedbacks);
									}
								}
								if (flag = !flag2)
								{
									goto IL_193;
								}
								taskAwaiter = this.<feedback>5__1.PostFeedbackData().GetAwaiter();
								if (!taskAwaiter.IsCompleted)
								{
									int arg_142_1 = 0;
									num = 0;
									this.<>1__state = arg_142_1;
									this.<>u__1 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, EventLogger.<>c__DisplayClass6_0.<<SendFeedbackTrackingEvent>b__0>d>(ref taskAwaiter, ref this);
									return;
								}
							}
							else
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter<bool>);
								int arg_17A_1 = -1;
								num = -1;
								this.<>1__state = arg_17A_1;
							}
							int arg_18F_0 = taskAwaiter.GetResult() ? 1 : 0;
							taskAwaiter = default(TaskAwaiter<bool>);
							flag = (arg_18F_0 == 0);
							IL_193:
							if (flag)
							{
								LinkedList<CgApiFeedback> unprocessedApiFeedbacks = <>c__DisplayClass6_.<>4__this._unprocessedApiFeedbacks;
								flag = false;
								try
								{
									Monitor.Enter(unprocessedApiFeedbacks, ref flag);
									if (<>c__DisplayClass6_.<>4__this._unprocessedApiFeedbacks.Count >= 50)
									{
										<>c__DisplayClass6_.<>4__this._unprocessedApiFeedbacks.RemoveFirst();
									}
									<>c__DisplayClass6_.<>4__this._unprocessedApiFeedbacks.AddLast(this.<feedback>5__1);
								}
								finally
								{
									if (num < 0 && flag)
									{
										Monitor.Exit(unprocessedApiFeedbacks);
									}
								}
							}
							this.<feedback>5__1 = null;
						}
						catch (Exception ex)
						{
							McExceptionLogItem expr_20D = new McExceptionLogItem();
							expr_20D.set_RelatingException(ex);
							expr_20D.set_ExceptionMessage("Failed to trigger Feedback" + ex.Message);
							McExceptionLogItem aEvent = expr_20D;
							ObjectHolder.EventLogger.LogLocalEvent(aEvent);
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

			public object optionalData;

			public string value;

			public McTrackingItem aEvent;

			public EventLogger <>4__this;

			[AsyncStateMachine(typeof(EventLogger.<>c__DisplayClass6_0.<<SendFeedbackTrackingEvent>b__0>d))]
			internal void <SendFeedbackTrackingEvent>b__0()
			{
				EventLogger.<>c__DisplayClass6_0.<<SendFeedbackTrackingEvent>b__0>d <<SendFeedbackTrackingEvent>b__0>d;
				<<SendFeedbackTrackingEvent>b__0>d.<>4__this = this;
				<<SendFeedbackTrackingEvent>b__0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
				<<SendFeedbackTrackingEvent>b__0>d.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <<SendFeedbackTrackingEvent>b__0>d.<>t__builder;
				<>t__builder.Start<EventLogger.<>c__DisplayClass6_0.<<SendFeedbackTrackingEvent>b__0>d>(ref <<SendFeedbackTrackingEvent>b__0>d);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public EventLogger <>4__this;

			private CgApiFeedback <feedback>5__1;

			private LinkedList<CgApiFeedback>.Enumerator <>7__wrap1;

			private TaskAwaiter<bool> <>u__1;

			private TaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				EventLogger eventLogger = this.<>4__this;
				try
				{
					if (num > 1)
					{
						eventLogger._mcheckUnprocessedApiFeedbacksTimer.Enabled = false;
					}
					try
					{
						if (num > 1)
						{
							LinkedList<CgApiFeedback> linkedList = new LinkedList<CgApiFeedback>();
							LinkedList<CgApiFeedback> unprocessedApiFeedbacks = eventLogger._unprocessedApiFeedbacks;
							bool flag = false;
							try
							{
								Monitor.Enter(unprocessedApiFeedbacks, ref flag);
								if (eventLogger._unprocessedApiFeedbacks.Count > 0)
								{
									LinkedList<CgApiFeedback>.Enumerator enumerator = eventLogger._unprocessedApiFeedbacks.GetEnumerator();
									try
									{
										while (enumerator.MoveNext())
										{
											CgApiFeedback current = enumerator.Current;
											linkedList.AddLast(current);
										}
									}
									finally
									{
										if (num < 0)
										{
											((IDisposable)enumerator).Dispose();
										}
									}
								}
							}
							finally
							{
								if (num < 0 && flag)
								{
									Monitor.Exit(unprocessedApiFeedbacks);
								}
							}
							if (linkedList.Count <= 0)
							{
								goto IL_25E;
							}
							this.<>7__wrap1 = linkedList.GetEnumerator();
						}
						try
						{
							TaskAwaiter<bool> taskAwaiter;
							if (num == 0)
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter<bool>);
								int arg_FB_1 = -1;
								num = -1;
								this.<>1__state = arg_FB_1;
								goto IL_1CA;
							}
							if (num != 1)
							{
								goto IL_18E;
							}
							TaskAwaiter taskAwaiter2 = this.<>u__2;
							this.<>u__2 = default(TaskAwaiter);
							int arg_D9_1 = -1;
							num = -1;
							this.<>1__state = arg_D9_1;
							IL_178:
							taskAwaiter2.GetResult();
							taskAwaiter2 = default(TaskAwaiter);
							this.<feedback>5__1 = null;
							IL_18E:
							if (!this.<>7__wrap1.MoveNext())
							{
								goto IL_23A;
							}
							this.<feedback>5__1 = this.<>7__wrap1.Current;
							taskAwaiter = this.<feedback>5__1.PostFeedbackData().GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								int arg_1E4_1 = 0;
								num = 0;
								this.<>1__state = arg_1E4_1;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, EventLogger.<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d>(ref taskAwaiter, ref this);
								return;
							}
							IL_1CA:
							bool arg_1D9_0 = taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter<bool>);
							if (arg_1D9_0)
							{
								LinkedList<CgApiFeedback> unprocessedApiFeedbacks = eventLogger._unprocessedApiFeedbacks;
								bool flag = false;
								try
								{
									Monitor.Enter(unprocessedApiFeedbacks, ref flag);
									eventLogger._unprocessedApiFeedbacks.Remove(this.<feedback>5__1);
								}
								finally
								{
									if (num < 0 && flag)
									{
										Monitor.Exit(unprocessedApiFeedbacks);
									}
								}
								eventLogger._mFeedbackSendErrors = Math.Max(eventLogger._mFeedbackSendErrors - 1, 0);
								taskAwaiter2 = Task.Delay(1000 + eventLogger._mFeedbackSendErrors * 1000).GetAwaiter();
								if (taskAwaiter2.IsCompleted)
								{
									goto IL_178;
								}
								int arg_208_1 = 1;
								num = 1;
								this.<>1__state = arg_208_1;
								this.<>u__2 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, EventLogger.<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d>(ref taskAwaiter2, ref this);
								return;
							}
							else
							{
								eventLogger._mFeedbackSendErrors = Math.Min(eventLogger._mFeedbackSendErrors + 1, 59);
							}
							IL_23A:;
						}
						finally
						{
							if (num < 0)
							{
								((IDisposable)this.<>7__wrap1).Dispose();
							}
						}
						this.<>7__wrap1 = default(LinkedList<CgApiFeedback>.Enumerator);
						IL_25E:;
					}
					finally
					{
						if (num < 0)
						{
							eventLogger._mcheckUnprocessedApiFeedbacksTimer.Enabled = true;
						}
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

		private const int MMaxQueueLength = 50;

		private readonly System.Timers.Timer _mcheckUnprocessedApiFeedbacksTimer;

		private readonly LinkedList<CgApiFeedback> _unprocessedApiFeedbacks;

		private int _mFeedbackSendErrors;

		public EventLogger()
		{
			this._unprocessedApiFeedbacks = new LinkedList<CgApiFeedback>();
			this._mcheckUnprocessedApiFeedbacksTimer = new System.Timers.Timer(60000.0);
			this._mcheckUnprocessedApiFeedbacksTimer.Elapsed += new ElapsedEventHandler(this._checkUnprocessedApiFeedbacksTimer_Elapsed);
			this._mcheckUnprocessedApiFeedbacksTimer.Enabled = true;
			this._mFeedbackSendErrors = 0;
		}

		public void LogLocalEvent(McBaseLogItem aEvent)
		{
			McSerializedItem mcSerializedItem = new McSerializedItem();
			mcSerializedItem.SetItem(aEvent);
			HelperFunctions.DebugLine(aEvent.ToString());
			if (ObjectHolder.CyberGhostCom != null)
			{
				ObjectHolder.CyberGhostCom.AddToDebugLog(mcSerializedItem.GetJsonRepresentation());
			}
		}

		public void SendFeedbackTrackingEvent(McTrackingItem aEvent, object optionalData, string value)
		{
			EventLogger.<>c__DisplayClass6_0 expr_05 = new EventLogger.<>c__DisplayClass6_0();
			expr_05.<>4__this = this;
			expr_05.optionalData = optionalData;
			expr_05.value = value;
			expr_05.aEvent = aEvent;
			new Task(new Action(expr_05.<SendFeedbackTrackingEvent>b__0)).Start();
		}

		private void _checkUnprocessedApiFeedbacksTimer_Elapsed(object sender, ElapsedEventArgs e)
		{
			new Task(new Action(this.<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0)).Start();
		}

		[AsyncStateMachine(typeof(EventLogger.<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d)), CompilerGenerated]
		private void <_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0()
		{
			EventLogger.<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d <<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d;
			<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d.<>4__this = this;
			<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d.<>t__builder = AsyncVoidMethodBuilder.Create();
			<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d.<>t__builder;
			<>t__builder.Start<EventLogger.<<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d>(ref <<_checkUnprocessedApiFeedbacksTimer_Elapsed>b__7_0>d);
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class FeatureCheckBox : UserControl, IComponentConnector
	{
		internal ToggleButton FeatureBoxButton;

		internal Label FeatureBoxLabel;

		private bool _contentLoaded;

		public new object DataContext
		{
			get
			{
				return base.DataContext;
			}
			set
			{
				base.DataContext = value;
				this.ApplyTheme();
			}
		}

		public bool Checked
		{
			get;
			set;
		}

		public int Id
		{
			get;
			set;
		}

		public string Ident
		{
			get;
			set;
		}

		public bool Premium
		{
			get;
			set;
		}

		private CgApiFeature.Feature CurrentFeature
		{
			get;
			set;
		}

		public FeatureCheckBox()
		{
			this.InitializeComponent();
		}

		private void ApplyTheme()
		{
			if (this.DataContext is CgProfileAnonymousBrowsing)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_AnonymousBrowsing") as Style);
				return;
			}
			if (this.DataContext is CgProfileAnonymousDownloading)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_Torrent") as Style);
				return;
			}
			if (this.DataContext is CgProfileCustom)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_Custom") as Style);
				return;
			}
			if (this.DataContext is CgProfileNetwork)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_Network") as Style);
				return;
			}
			if (this.DataContext is CgProfileWifi)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_Network") as Style);
				return;
			}
			if (this.DataContext is CgProfileUnblock)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_AnonymousBrowsing") as Style);
				return;
			}
			if (this.DataContext is CgProfileUncensoring)
			{
				this.FeatureBoxButton.Style = (base.FindResource("AnimatedSwitch_AnonymousBrowsing") as Style);
			}
		}

		public void FeatureBoxButton_Click(object sender, RoutedEventArgs e)
		{
			try
			{
				if (this.FeatureBoxButton.IsChecked.HasValue)
				{
					this.Checked = this.FeatureBoxButton.IsChecked.Value;
				}
				if (this.DataContext is CgProfileAnonymousBrowsing)
				{
					CgProfileAnonymousBrowsing profileAnonymousBrowsing = SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing();
					this.SetFeaturesInSetting(profileAnonymousBrowsing);
				}
				if (this.DataContext is CgProfileAnonymousDownloading)
				{
					CgProfileAnonymousDownloading profileAnonymousDownloading = SettingsHolder.get_Settings().get_ProfileAnonymousDownloading();
					this.SetFeaturesInSetting(profileAnonymousDownloading);
				}
				if (this.DataContext is CgProfileCustom)
				{
					CgProfileCustom profileCustom = SettingsHolder.get_Settings().get_ProfileCustom();
					this.SetFeaturesInSetting(profileCustom);
				}
				if (this.DataContext is CgProfileNetwork)
				{
					CgProfileNetwork profileNetwork = SettingsHolder.get_Settings().get_ProfileNetwork();
					this.SetFeaturesInSetting(profileNetwork);
				}
				if (this.DataContext is CgProfileUnblock)
				{
					CgProfileUnblock profileUnblock = SettingsHolder.get_Settings().get_ProfileUnblock();
					this.SetFeaturesInSetting(profileUnblock);
				}
				if (this.DataContext is CgProfileUncensoring)
				{
					CgProfileUncensoring profileUncensoring = SettingsHolder.get_Settings().get_ProfileUncensoring();
					this.SetFeaturesInSetting(profileUncensoring);
				}
				if (this.DataContext is CgProfileWifi)
				{
					CgProfileWifi profileWifi = SettingsHolder.get_Settings().get_ProfileWifi();
					this.SetFeaturesInSetting(profileWifi);
				}
				if (this.Ident.Equals("FeatureSpeed"))
				{
					this.CurrentFeature = 9;
				}
				else if (this.Ident.Equals("FeatureMalware"))
				{
					this.CurrentFeature = 2;
				}
				else if (this.Ident.Equals("FeatureAdBlock"))
				{
					this.CurrentFeature = 1;
				}
				else if (this.Ident.Equals("FeatureTracking"))
				{
					this.CurrentFeature = 4;
				}
				else if (this.Ident.Equals("FeatureZip"))
				{
					this.CurrentFeature = 3;
				}
				else if (this.Ident.Equals("FeatureHttps"))
				{
					this.CurrentFeature = 8;
				}
				this.SetConversionPopUp(this.CurrentFeature);
				if (this.CurrentFeature == 9)
				{
					this.FeatureBoxButton.IsChecked = new bool?(!ObjectHolder.CurrentUser.IsFreeUser());
					this.FeatureBoxButton.IsEnabled = ObjectHolder.CurrentUser.IsFreeUser();
				}
			}
			catch (Exception arg_1FD_0)
			{
				HelperFunctions.DebugLine(arg_1FD_0.Message);
			}
		}

		private void SetFeaturesInSetting(CgBase profile)
		{
			if (this.Ident == "FeatureMalware")
			{
				profile.set_FeatureMalware(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(2));
			}
			if (this.Ident == "FeatureAdBlock")
			{
				profile.set_FeatureAdBlock(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(1));
			}
			if (this.Ident == "FeatureTracking")
			{
				profile.set_FeatureTracking(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(4));
			}
			if (this.Ident == "FeatureZip")
			{
				profile.set_FeatureZip(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(3));
			}
			if (this.Ident == "FeatureHttps")
			{
				profile.set_FeatureHttps(this.Checked && ObjectHolder.CurrentUser.HasUserAccessToFeature(8));
			}
			SettingsHolder.get_Settings().SaveSettingsAsync(false);
		}

		private void SetConversionPopUp(CgApiFeature.Feature currentFeature)
		{
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(currentFeature))
			{
				this.FeatureBoxButton.IsChecked = new bool?(false);
				ConversionPopUpHelpers.ShowConversionPopUp(currentFeature);
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/featurecheckbox.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.FeatureBoxButton = (ToggleButton)target;
				this.FeatureBoxButton.Click += new RoutedEventHandler(this.FeatureBoxButton_Click);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.FeatureBoxLabel = (Label)target;
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;

namespace CyberGhost.Components
{
	public class FeatureGroup : UserControl, IComponentConnector
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <UpgradeButton_OnClick>d__8 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public FeatureGroup <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				FeatureGroup featureGroup = this.<>4__this;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = Navigation.GoInAppPurchase(featureGroup.CurrentProfile, "button").GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, FeatureGroup.<UpgradeButton_OnClick>d__8>(ref taskAwaiter, ref this);
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

		internal DockPanel DockForFree;

		internal Button UpgradeButton;

		internal DockPanel DockForPremium;

		internal Label DockForPremiumLabel1;

		internal Button ResetSettings;

		internal TextBlock DockForPremiumLabel2;

		internal FeatureCheckBox FMalware;

		internal FeatureCheckBox FAddblock;

		internal FeatureCheckBox FTracking;

		internal FeatureCheckBox FZip;

		internal FeatureCheckBox FHttps;

		internal FeatureCheckBox FSpeed;

		private bool _contentLoaded;

		public CgBase CurrentProfile
		{
			get;
			set;
		}

		public FeatureGroup()
		{
			this.InitializeComponent();
		}

		public void SetProfileColor()
		{
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileNetwork()) || this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileWifi()))
			{
				this.DockForPremium.Background = (base.FindResource("BlueBaseBrush") as SolidColorBrush);
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileCustom()))
			{
				this.DockForPremium.Background = (base.FindResource("MangentaBaseBrush") as SolidColorBrush);
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing()))
			{
				this.DockForPremium.Background = (base.FindResource("YellowBaseBrush") as SolidColorBrush);
				if (Theming.CurrentTheme == Theming.Theme.Pro)
				{
					this.DockForPremiumLabel1.Foreground = (SolidColorBrush)new BrushConverter().ConvertFrom("#555555");
					this.ResetSettings.Foreground = (SolidColorBrush)new BrushConverter().ConvertFrom("#555555");
					this.DockForPremiumLabel2.Foreground = (SolidColorBrush)new BrushConverter().ConvertFrom("#555555");
				}
				else
				{
					this.DockForPremiumLabel1.Foreground = new SolidColorBrush(Colors.Black);
					this.ResetSettings.Foreground = new SolidColorBrush(Colors.Black);
					this.DockForPremiumLabel2.Foreground = new SolidColorBrush(Colors.Black);
				}
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading()))
			{
				this.DockForPremium.Background = (base.FindResource("PurpleBaseBrush") as SolidColorBrush);
			}
		}

		public void BindFeatures()
		{
			this.SetProfileColor();
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading()))
			{
				this.FMalware.Visibility = Visibility.Visible;
				this.FTracking.Visibility = Visibility.Visible;
				this.FSpeed.Visibility = Visibility.Visible;
				this.FMalware.SetValue(Grid.RowProperty, 1);
				this.FMalware.SetValue(Grid.ColumnProperty, 0);
				this.FTracking.SetValue(Grid.RowProperty, 2);
				this.FTracking.SetValue(Grid.ColumnProperty, 0);
				this.FSpeed.SetValue(Grid.RowProperty, 1);
				this.FSpeed.SetValue(Grid.ColumnProperty, 1);
				this.FAddblock.Visibility = Visibility.Collapsed;
				this.FHttps.Visibility = Visibility.Collapsed;
				this.FZip.Visibility = Visibility.Collapsed;
			}
			else
			{
				this.FMalware.SetValue(Grid.RowProperty, 1);
				this.FMalware.SetValue(Grid.ColumnProperty, 0);
				this.FAddblock.SetValue(Grid.RowProperty, 2);
				this.FAddblock.SetValue(Grid.ColumnProperty, 0);
				this.FTracking.SetValue(Grid.RowProperty, 3);
				this.FTracking.SetValue(Grid.ColumnProperty, 0);
				this.FZip.SetValue(Grid.RowProperty, 1);
				this.FZip.SetValue(Grid.ColumnProperty, 1);
				this.FHttps.SetValue(Grid.RowProperty, 2);
				this.FHttps.SetValue(Grid.ColumnProperty, 1);
				this.FSpeed.SetValue(Grid.RowProperty, 3);
				this.FSpeed.SetValue(Grid.ColumnProperty, 1);
				this.FMalware.Visibility = Visibility.Visible;
				this.FTracking.Visibility = Visibility.Visible;
				this.FSpeed.Visibility = Visibility.Visible;
				this.FAddblock.Visibility = Visibility.Visible;
				this.FHttps.Visibility = Visibility.Visible;
				this.FZip.Visibility = Visibility.Visible;
			}
			this.FMalware.DataContext = this.CurrentProfile;
			this.FAddblock.DataContext = this.CurrentProfile;
			this.FHttps.DataContext = this.CurrentProfile;
			this.FTracking.DataContext = this.CurrentProfile;
			this.FZip.DataContext = this.CurrentProfile;
			this.FSpeed.DataContext = this.CurrentProfile;
			this.FMalware.FeatureBoxLabel.Content = Profiles.malware_head;
			this.FMalware.Premium = true;
			this.FMalware.Checked = this.CurrentProfile.get_FeatureMalware();
			this.FMalware.FeatureBoxButton.IsChecked = new bool?(this.FMalware.Checked);
			this.FMalware.Ident = "FeatureMalware";
			this.FTracking.FeatureBoxLabel.Content = Profiles.tracking_head;
			this.FTracking.Premium = true;
			this.FTracking.Checked = this.CurrentProfile.get_FeatureTracking();
			this.FTracking.FeatureBoxButton.IsChecked = new bool?(this.FTracking.Checked);
			this.FTracking.Ident = "FeatureTracking";
			this.FSpeed.FeatureBoxLabel.Content = Profiles.speed_head;
			this.FSpeed.Premium = true;
			this.FSpeed.Checked = ObjectHolder.CurrentUser.HasUserAccessToFeature(9);
			this.FSpeed.FeatureBoxButton.IsChecked = new bool?(this.FSpeed.Checked);
			this.FSpeed.Ident = "FeatureSpeed";
			this.FAddblock.FeatureBoxLabel.Content = Profiles.ads_head;
			this.FAddblock.Premium = true;
			this.FAddblock.Checked = this.CurrentProfile.get_FeatureAdBlock();
			this.FAddblock.FeatureBoxButton.IsChecked = new bool?(this.FAddblock.Checked);
			this.FAddblock.Ident = "FeatureAdBlock";
			this.FHttps.FeatureBoxLabel.Content = Profiles.https_everywhere;
			this.FHttps.Premium = true;
			this.FHttps.Checked = this.CurrentProfile.get_FeatureHttps();
			this.FHttps.FeatureBoxButton.IsChecked = new bool?(this.FHttps.Checked);
			this.FHttps.Ident = "FeatureHttps";
			this.FZip.FeatureBoxLabel.Content = Profiles.compression_head;
			this.FZip.Premium = true;
			this.FZip.Checked = this.CurrentProfile.get_FeatureZip();
			this.FZip.FeatureBoxButton.IsChecked = new bool?(this.FZip.Checked);
			this.FZip.Ident = "FeatureZip";
		}

		public void ResetFeatureSettings()
		{
			CgBase cgBase = CgApiHelper.SetFeaturesByProfile(this.CurrentProfile, null);
			if (cgBase != null)
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				this.FMalware.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureMalware());
				this.FAddblock.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureAdBlock());
				this.FHttps.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureHttps());
				this.FTracking.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureTracking());
				this.FZip.FeatureBoxButton.IsChecked = new bool?(cgBase.get_FeatureZip());
				this.FSpeed.FeatureBoxButton.IsChecked = new bool?(ObjectHolder.CurrentUser.HasUserAccessToFeature(9));
			}
		}

		[AsyncStateMachine(typeof(FeatureGroup.<UpgradeButton_OnClick>d__8))]
		private void UpgradeButton_OnClick(object sender, RoutedEventArgs e)
		{
			FeatureGroup.<UpgradeButton_OnClick>d__8 <UpgradeButton_OnClick>d__;
			<UpgradeButton_OnClick>d__.<>4__this = this;
			<UpgradeButton_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpgradeButton_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpgradeButton_OnClick>d__.<>t__builder;
			<>t__builder.Start<FeatureGroup.<UpgradeButton_OnClick>d__8>(ref <UpgradeButton_OnClick>d__);
		}

		private void ResetSettings_OnClick(object sender, RoutedEventArgs e)
		{
			this.ResetFeatureSettings();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/featuregroup.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
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
				this.DockForFree = (DockPanel)target;
				return;
			case 2:
				this.UpgradeButton = (Button)target;
				this.UpgradeButton.Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			case 3:
				this.DockForPremium = (DockPanel)target;
				return;
			case 4:
				this.DockForPremiumLabel1 = (Label)target;
				return;
			case 5:
				this.ResetSettings = (Button)target;
				this.ResetSettings.Click += new RoutedEventHandler(this.ResetSettings_OnClick);
				return;
			case 6:
				this.DockForPremiumLabel2 = (TextBlock)target;
				return;
			case 7:
				this.FMalware = (FeatureCheckBox)target;
				return;
			case 8:
				this.FAddblock = (FeatureCheckBox)target;
				return;
			case 9:
				this.FTracking = (FeatureCheckBox)target;
				return;
			case 10:
				this.FZip = (FeatureCheckBox)target;
				return;
			case 11:
				this.FHttps = (FeatureCheckBox)target;
				return;
			case 12:
				this.FSpeed = (FeatureCheckBox)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class FeatureDisplay : UserControl, IComponentConnector, IConnectionStates
	{
		internal StackPanel HintContainer;

		internal TextBlock Hint;

		internal StackPanel FeatureContainer;

		internal Grid GridMalware;

		internal Label CheckMalware;

		internal Grid GridAds;

		internal Label CheckAds;

		internal Grid GridTracking;

		internal Label CheckTracking;

		internal Grid GridZip;

		internal Label CheckZip;

		internal Grid GridHttps;

		internal Label CheckHttps;

		internal Label CheckIp;

		internal Label CurrentIp;

		internal Label CheckIp2;

		internal Grid GridSpeed;

		internal Label CheckSpeed;

		internal Label CheckEncryption;

		internal Label CheckLogging;

		private bool _contentLoaded;

		public FeatureDisplay()
		{
			this.InitializeComponent();
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.HintContainer.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Hidden;
		}

		public void OnBeforeDisconnect()
		{
			this.FeatureContainer.Visibility = Visibility.Hidden;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			this.HintContainer.Visibility = Visibility.Hidden;
			this.FeatureContainer.Visibility = Visibility.Visible;
			string content = string.Empty;
			VpnServerLastConnectionInfos expr_23 = ObjectHolder.CurrentConnectionInfos;
			if (!string.IsNullOrEmpty((expr_23 != null) ? expr_23.ServerName : null))
			{
				VpnServerLastConnectionInfos expr_3B = ObjectHolder.CurrentConnectionInfos;
				string arg_5D_0 = (expr_3B != null) ? expr_3B.ServerIp : null;
				string arg_5D_1 = "-";
				VpnServerLastConnectionInfos expr_51 = ObjectHolder.CurrentConnectionInfos;
				content = arg_5D_0 + arg_5D_1 + ((expr_51 != null) ? expr_51.ServerName : null);
			}
			this.CurrentIp.Content = content;
			this.UpdateCurrentIpControl(this.CurrentIp, content);
		}

		public void OnAfterDisconnected()
		{
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
		}

		public void SetFeatureVisibility(CgBase profile)
		{
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousDownloading()))
			{
				GuiHelper.SetRandomHint(this.Hint, "anonDownload");
			}
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileAnonymousBrowsing()))
			{
				GuiHelper.SetRandomHint(this.Hint, "anonSurfing");
			}
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileCustom()))
			{
				GuiHelper.SetRandomHint(this.Hint, "custom");
			}
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileNetwork()))
			{
				GuiHelper.SetRandomHint(this.Hint, "network");
			}
			if (profile.Equals(SettingsHolder.get_Settings().get_ProfileWifi()))
			{
				GuiHelper.SetRandomHint(this.Hint, "wifi");
			}
			this.GridZip.Visibility = Visibility.Visible;
			this.GridAds.Visibility = Visibility.Visible;
			this.GridTracking.Visibility = Visibility.Visible;
			this.GridMalware.Visibility = Visibility.Visible;
			this.GridHttps.Visibility = Visibility.Visible;
			this.GridSpeed.Visibility = Visibility.Visible;
			if (!profile.get_FeatureZip())
			{
				this.GridZip.Visibility = Visibility.Collapsed;
			}
			if (!profile.get_FeatureAdBlock())
			{
				this.GridAds.Visibility = Visibility.Collapsed;
			}
			if (!profile.get_FeatureTracking())
			{
				this.GridTracking.Visibility = Visibility.Collapsed;
			}
			if (!profile.get_FeatureMalware())
			{
				this.GridMalware.Visibility = Visibility.Collapsed;
			}
			if (!profile.get_FeatureHttps())
			{
				this.GridHttps.Visibility = Visibility.Collapsed;
			}
			if (ObjectHolder.CurrentUser != null && !ObjectHolder.CurrentUser.HasUserAccessToFeature(9))
			{
				this.GridSpeed.Visibility = Visibility.Collapsed;
			}
			Style style = base.FindResource("FeatureLittleLabelArrow") as Style;
			if (profile is CgProfileAnonymousBrowsing)
			{
				style = (base.FindResource("FeatureLittleLabelArrow") as Style);
			}
			else if (profile is CgProfileAnonymousDownloading)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Torrent") as Style);
			}
			else if (profile is CgProfileCustom)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Custom") as Style);
			}
			else if (profile is CgProfileNetwork)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Network") as Style);
			}
			else if (profile is CgProfileWifi)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Network") as Style);
			}
			else if (profile is CgProfileUnblock)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Unblock") as Style);
			}
			else if (profile is CgProfileUncensoring)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Uncensoring") as Style);
			}
			if (style != null)
			{
				this.CheckAds.Style = style;
				this.CheckEncryption.Style = style;
				this.CheckHttps.Style = style;
				this.CheckIp.Style = style;
				this.CheckIp2.Style = style;
				this.CheckLogging.Style = style;
				this.CheckMalware.Style = style;
				this.CheckSpeed.Style = style;
				this.CheckTracking.Style = style;
				this.CheckZip.Style = style;
			}
		}

		public void UpdateCurrentIpControl(Label control, string content)
		{
			if (control == null)
			{
				return;
			}
			control.Content = content;
			ToolTip toolTip = new ToolTip();
			StackPanel stackPanel = new StackPanel();
			TextBlock textBlock = new TextBlock();
			TextBlock textBlock2 = new TextBlock();
			textBlock.Text = Profiles.Current_IP;
			textBlock2.Text = content;
			stackPanel.Children.Add(textBlock);
			stackPanel.Children.Add(textBlock2);
			toolTip.Content = stackPanel;
			control.ToolTip = toolTip;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/featuredisplay.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.HintContainer = (StackPanel)target;
				return;
			case 2:
				this.Hint = (TextBlock)target;
				return;
			case 3:
				this.FeatureContainer = (StackPanel)target;
				return;
			case 4:
				this.GridMalware = (Grid)target;
				return;
			case 5:
				this.CheckMalware = (Label)target;
				return;
			case 6:
				this.GridAds = (Grid)target;
				return;
			case 7:
				this.CheckAds = (Label)target;
				return;
			case 8:
				this.GridTracking = (Grid)target;
				return;
			case 9:
				this.CheckTracking = (Label)target;
				return;
			case 10:
				this.GridZip = (Grid)target;
				return;
			case 11:
				this.CheckZip = (Label)target;
				return;
			case 12:
				this.GridHttps = (Grid)target;
				return;
			case 13:
				this.CheckHttps = (Label)target;
				return;
			case 14:
				this.CheckIp = (Label)target;
				return;
			case 15:
				this.CurrentIp = (Label)target;
				return;
			case 16:
				this.CheckIp2 = (Label)target;
				return;
			case 17:
				this.GridSpeed = (Grid)target;
				return;
			case 18:
				this.CheckSpeed = (Label)target;
				return;
			case 19:
				this.CheckEncryption = (Label)target;
				return;
			case 20:
				this.CheckLogging = (Label)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;

namespace CyberGhost.Components
{
	public class ImageSlider : UserControl, IComponentConnector
	{
		public static readonly DependencyProperty SlideProperty = DependencyProperty.Register("Slides", typeof(ObservableCollection<SliderElement>), typeof(ImageSlider), new PropertyMetadata(null));

		private readonly Timer _slideTimer;

		private int _currentCtrlIndex = 1;

		private int _oldCtrlIndex = -1;

		private int _slideIndex = -1;

		public int CurrentFrame;

		internal Image Image1;

		internal Image Image2;

		internal BBCodeBlock Description;

		internal Button Prev;

		internal Button Next;

		internal StackPanel DotPanel;

		private bool _contentLoaded;

		public bool AutoPlay
		{
			get
			{
				return this._slideTimer.Enabled;
			}
			set
			{
				this._slideTimer.Enabled = value;
			}
		}

		public ObservableCollection<SliderElement> Slides
		{
			get
			{
				return (ObservableCollection<SliderElement>)base.GetValue(ImageSlider.SlideProperty);
			}
			set
			{
				base.SetValue(ImageSlider.SlideProperty, value);
			}
		}

		public ImageSlider()
		{
			this.InitializeComponent();
			this.Slides = new ObservableCollection<SliderElement>();
			this._slideTimer = new Timer();
		}

		public void HandleSliding()
		{
			Image[] expr_06 = new Image[]
			{
				this.Image1,
				this.Image2
			};
			Image containingObject = expr_06[this._oldCtrlIndex];
			Image image = expr_06[this._currentCtrlIndex];
			ImageSource image2 = this.Slides[this._slideIndex].Image;
			image.Source = image2;
			this.Description.set_BBCode(this.Slides[this._slideIndex].Description);
			this.SetDotButton(this._slideIndex);
			((Storyboard)base.Resources["FadeOut"]).Clone().Begin(containingObject);
			Storyboard expr_A9 = base.Resources["FadeIn"] as Storyboard;
			if (expr_A9 == null)
			{
				return;
			}
			expr_A9.Begin(image);
		}

		public void JumpToSlide(int position)
		{
			this._oldCtrlIndex = this._currentCtrlIndex;
			this._currentCtrlIndex = (this._currentCtrlIndex + 1) % 2;
			this._slideIndex = position % this.Slides.Count;
			this.SetDotButton(this.CurrentFrame);
			this.HandleSliding();
		}

		public void NextSlide()
		{
			if (this.Slides.Count == 0)
			{
				return;
			}
			this._oldCtrlIndex = this._currentCtrlIndex;
			this._currentCtrlIndex = (this._currentCtrlIndex + 1) % 2;
			this._slideIndex = (this._slideIndex + 1) % this.Slides.Count;
			this.SetDotButton(this.CurrentFrame);
			this.HandleSliding();
		}

		public void PreviousSlide()
		{
			if (this.Slides.Count == 0)
			{
				return;
			}
			this._oldCtrlIndex = this._currentCtrlIndex;
			this._currentCtrlIndex = (this._currentCtrlIndex + 1) % 2;
			this._slideIndex--;
			if (this._slideIndex < 0)
			{
				this._slideIndex = this.Slides.Count - 1;
			}
			this.SetDotButton(this.CurrentFrame);
			this.HandleSliding();
		}

		public void FirstSlide()
		{
			this.JumpToSlide(0);
		}

		public void SetupDots()
		{
			this.DotPanel.Children.Clear();
			for (int i = 0; i < this.Slides.Count; i++)
			{
				Button button = new Button();
				this.DotPanel.Children.Add(button);
				button.Style = (Application.Current.FindResource("DotButton") as Style);
				button.Tag = i;
				button.Click += new RoutedEventHandler(this.dot_Click);
			}
		}

		private void dot_Click(object sender, RoutedEventArgs e)
		{
			int num = (int)((Button)sender).Tag;
			this.CurrentFrame = num;
			this.JumpToSlide(num);
		}

		private void SetDotButton(int buttonId)
		{
			for (int i = 0; i < this.DotPanel.Children.Count; i++)
			{
				Button expr_1A = (Button)this.DotPanel.Children[i];
				expr_1A.Content = (((int)expr_1A.Tag == buttonId) ? "" : "");
			}
		}

		private void prev_Click(object sender, RoutedEventArgs e)
		{
			this.PreviousSlide();
			this.CurrentFrame--;
			if (this.CurrentFrame < 0)
			{
				this.CurrentFrame = this.Slides.Count - 1;
			}
		}

		private void next_Click(object sender, RoutedEventArgs e)
		{
			this.NextSlide();
			this.CurrentFrame++;
			if (this.CurrentFrame >= this.Slides.Count)
			{
				this.CurrentFrame = 0;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/imageslider.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.Image1 = (Image)target;
				return;
			case 2:
				this.Image2 = (Image)target;
				return;
			case 3:
				this.Description = (BBCodeBlock)target;
				return;
			case 4:
				this.Prev = (Button)target;
				this.Prev.Click += new RoutedEventHandler(this.prev_Click);
				return;
			case 5:
				this.Next = (Button)target;
				this.Next.Click += new RoutedEventHandler(this.next_Click);
				return;
			case 6:
				this.DotPanel = (StackPanel)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.Windows;
using System.Windows.Input;

namespace CyberGhost.Components
{
	public class ModernWindowWithMessage : ModernWindow
	{
		public static readonly DependencyProperty ContentMessageProperty = DependencyProperty.Register("ContentMessage", typeof(Uri), typeof(ModernWindow));

		public static readonly DependencyProperty ContentMessageVisibilityProperty = DependencyProperty.Register("ContentMessageVisibility", typeof(Visibility), typeof(ModernWindow));

		public static readonly DependencyProperty ContentBlockerVisibilityProperty = DependencyProperty.Register("ContentBlockerVisibility", typeof(Visibility), typeof(ModernWindow));

		public static readonly DependencyProperty HeaderLinkContentProperty = DependencyProperty.Register("HeaderLinkContent", typeof(string), typeof(ModernWindow));

		public static readonly DependencyProperty HeaderLinkCommandProperty = DependencyProperty.Register("HeaderLinkCommand", typeof(ICommand), typeof(ModernWindow));

		public static readonly DependencyProperty LoginAsVisibilityProperty = DependencyProperty.Register("LoginAsVisibility", typeof(Visibility), typeof(ModernWindow));

		public static readonly DependencyProperty LogoLinkCommandProperty = DependencyProperty.Register("LogoLinkCommand", typeof(ICommand), typeof(ModernWindow));

		public static readonly DependencyProperty PopupFrameProperty = DependencyProperty.Register("PopupFrame", typeof(object), typeof(ModernWindow));

		public static readonly DependencyProperty PopupFrameVisibilityProperty = DependencyProperty.Register("PopupFrameVisibility", typeof(Visibility), typeof(ModernWindow));

		public ModernFrame ContentFrame
		{
			get
			{
				return base.Template.FindName("ContentFrame", this) as ModernFrame;
			}
		}

		public Uri ContentMessage
		{
			get
			{
				return (Uri)base.GetValue(ModernWindowWithMessage.ContentMessageProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.ContentMessageProperty, value);
			}
		}

		public Visibility ContentMessageVisibility
		{
			get
			{
				return (Visibility)base.GetValue(ModernWindowWithMessage.ContentMessageVisibilityProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.ContentMessageVisibilityProperty, value);
			}
		}

		public Visibility ContentBlockerVisibility
		{
			get
			{
				return (Visibility)base.GetValue(ModernWindowWithMessage.ContentBlockerVisibilityProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.ContentBlockerVisibilityProperty, value);
			}
		}

		public string HeaderLinkContent
		{
			get
			{
				return (string)base.GetValue(ModernWindowWithMessage.HeaderLinkContentProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.HeaderLinkContentProperty, value);
			}
		}

		public ICommand HeaderLinkCommand
		{
			get
			{
				return (ICommand)base.GetValue(ModernWindowWithMessage.HeaderLinkCommandProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.HeaderLinkCommandProperty, value);
			}
		}

		public Visibility LoginAsVisibility
		{
			get
			{
				return (Visibility)base.GetValue(ModernWindowWithMessage.LoginAsVisibilityProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.LoginAsVisibilityProperty, value);
			}
		}

		public ICommand LogoLinkCommand
		{
			get
			{
				return (ICommand)base.GetValue(ModernWindowWithMessage.LogoLinkCommandProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.LogoLinkCommandProperty, value);
			}
		}

		public object PopupFrameContent
		{
			get
			{
				return base.GetValue(ModernWindowWithMessage.PopupFrameProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.PopupFrameProperty, value);
			}
		}

		public Visibility PopupFrameVisibility
		{
			get
			{
				return (Visibility)base.GetValue(ModernWindowWithMessage.PopupFrameVisibilityProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.PopupFrameVisibilityProperty, value);
			}
		}

		public ModernWindowWithMessage()
		{
			this.ContentMessageVisibility = Visibility.Collapsed;
			this.ContentBlockerVisibility = Visibility.Collapsed;
			this.PopupFrameVisibility = Visibility.Collapsed;
		}
	}
}

using CyberGhost.Settings.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class ProfileInfoFooter : UserControl, IComponentConnector
	{
		private CgBase _profile;

		internal Label CheckIp;

		internal Label CheckEncryption;

		internal Label CheckLogging;

		private bool _contentLoaded;

		public CgBase Profile
		{
			get
			{
				return this._profile;
			}
			set
			{
				this._profile = value;
				this.ApplyTheme();
			}
		}

		public ProfileInfoFooter()
		{
			this.InitializeComponent();
		}

		private void ApplyTheme()
		{
			Style style = base.FindResource("FeatureLittleLabelArrow") as Style;
			if (this._profile is CgProfileAnonymousBrowsing)
			{
				style = (base.FindResource("FeatureLittleLabelArrow") as Style);
			}
			else if (this._profile is CgProfileAnonymousDownloading)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Torrent") as Style);
			}
			else if (this._profile is CgProfileCustom)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Custom") as Style);
			}
			else if (this._profile is CgProfileNetwork)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Network") as Style);
			}
			else if (this._profile is CgProfileWifi)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Network") as Style);
			}
			else if (this._profile is CgProfileUnblock)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Unblock") as Style);
			}
			else if (this._profile is CgProfileUncensoring)
			{
				style = (base.FindResource("FeatureLittleLabelArrow_Uncensoring") as Style);
			}
			if (style != null)
			{
				this.CheckIp.Style = style;
				this.CheckEncryption.Style = style;
				this.CheckLogging.Style = style;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/profileinfofooter.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.CheckIp = (Label)target;
				return;
			case 2:
				this.CheckEncryption = (Label)target;
				return;
			case 3:
				this.CheckLogging = (Label)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using CyberGhost.Helpers;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace CyberGhost.Components
{
	public class ServerTreeItem : INotifyPropertyChanged
	{
		private bool _isFav;

		private bool _isSelected;

		private long _pingTime;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public string Name
		{
			get;
			set;
		}

		public string Flag
		{
			get;
			set;
		}

		public string Ip
		{
			get;
			set;
		}

		public double UserRatio
		{
			get;
			set;
		}

		public string Slotsfree
		{
			get;
			set;
		}

		public string TorrentAllowed
		{
			get;
			set;
		}

		public long PingTime
		{
			get
			{
				return this._pingTime;
			}
			set
			{
				if (value != this._pingTime)
				{
					this._pingTime = value;
					this.NotifyPropertyChanged("PingTime");
				}
			}
		}

		public DateTime LastPing
		{
			get;
			set;
		}

		public bool IsBold
		{
			get;
			set;
		}

		public bool IsFull
		{
			get;
			set;
		}

		public bool IsFree
		{
			get;
			set;
		}

		public bool IsDotVisible
		{
			get;
			set;
		}

		public string Bar
		{
			get;
			set;
		}

		public bool RealServer
		{
			get;
			set;
		}

		public bool IsSelected
		{
			get
			{
				return this._isSelected;
			}
			set
			{
				if (value != this._isSelected)
				{
					this._isSelected = value;
					this.NotifyPropertyChanged("IsSelected");
				}
			}
		}

		public bool IsExpanded
		{
			get;
			set;
		}

		public string IsFreeString
		{
			get;
			set;
		}

		public bool ServerSelectable
		{
			get;
			set;
		}

		public bool IsSpecial
		{
			get;
			set;
		}

		public string CountryCode
		{
			get;
			set;
		}

		public ObservableCollection<ServerTreeItem> ServerTreeItems
		{
			get;
			set;
		}

		public bool IsCountry
		{
			get;
			set;
		}

		public int ServerId
		{
			get;
			set;
		}

		public int Id
		{
			get;
			set;
		}

		public int ParentId
		{
			get;
			set;
		}

		public string CountryName
		{
			get;
			set;
		}

		public bool UnblockItem
		{
			get;
			set;
		}

		public bool IsFav
		{
			get
			{
				return this._isFav;
			}
			set
			{
				if (value != this._isFav)
				{
					this._isFav = value;
					this.NotifyPropertyChanged("IsFav");
					this.NotifyPropertyChanged("FavImage");
				}
			}
		}

		public ServerTreeItem()
		{
			this.ServerTreeItems = new ObservableCollection<ServerTreeItem>();
			this.PingTime = -2L;
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.Flag = Theming.GetThemedImage("Icons\\Flags\\24\\Blank.png");
		}

		public virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChangedEventHandler expr_06 = this.PropertyChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

using CyberGhost.Settings;
using FirstFloor.ModernUI.Presentation;
using MobileConcepts.Components.MCTreeList;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using System.Windows.Input;

namespace CyberGhost.Components
{
	public class ServerTreeModel : ITreeModel
	{
		[CompilerGenerated]
		private sealed class <>c__DisplayClass14_0
		{
			public ObservableCollection<ServerTreeItem> aList;

			public ServerTreeModel <>4__this;

			internal void <PingList>b__0()
			{
				using (IEnumerator<ServerTreeItem> enumerator = this.aList.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						ServerTreeModel.<>c__DisplayClass14_1 <>c__DisplayClass14_ = new ServerTreeModel.<>c__DisplayClass14_1();
						<>c__DisplayClass14_.item = enumerator.Current;
						if (<>c__DisplayClass14_.item != null && (<>c__DisplayClass14_.item.PingTime < 0L || DateTime.Now - <>c__DisplayClass14_.item.LastPing > TimeSpan.FromSeconds(90.0)))
						{
							<>c__DisplayClass14_.item.PingTime = -1L;
							HelperFunctions.GrabExceptions(this.<>4__this._pingTaskFactory.StartNew<Task>(new Func<Task>(<>c__DisplayClass14_.<PingList>b__1)));
						}
					}
				}
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass14_1
		{
			[StructLayout(LayoutKind.Auto)]
			private struct <<PingList>b__1>d : IAsyncStateMachine
			{
				public int <>1__state;

				public AsyncTaskMethodBuilder <>t__builder;

				public ServerTreeModel.<>c__DisplayClass14_1 <>4__this;

				private TaskAwaiter<long> <>u__1;

				void IAsyncStateMachine.MoveNext()
				{
					int num = this.<>1__state;
					ServerTreeModel.<>c__DisplayClass14_1 <>c__DisplayClass14_ = this.<>4__this;
					try
					{
						TaskAwaiter<long> taskAwaiter;
						if (num != 0)
						{
							if (num == 1)
							{
								taskAwaiter = this.<>u__1;
								this.<>u__1 = default(TaskAwaiter<long>);
								this.<>1__state = -1;
								goto IL_10E;
							}
							<>c__DisplayClass14_.item.LastPing = DateTime.Now;
							taskAwaiter = HelperFunctions.PingAsync(<>c__DisplayClass14_.item.Ip, 2000).GetAwaiter();
							if (!taskAwaiter.IsCompleted)
							{
								this.<>1__state = 0;
								this.<>u__1 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<long>, ServerTreeModel.<>c__DisplayClass14_1.<<PingList>b__1>d>(ref taskAwaiter, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<long>);
							this.<>1__state = -1;
						}
						long arg_B8_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<long>);
						long num2 = arg_B8_0;
						if (num2 < 9999L)
						{
							goto IL_11E;
						}
						taskAwaiter = HelperFunctions.TcpPingAsync(<>c__DisplayClass14_.item.Ip, 2000, 41200).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 1;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<long>, ServerTreeModel.<>c__DisplayClass14_1.<<PingList>b__1>d>(ref taskAwaiter, ref this);
							return;
						}
						IL_10E:
						long arg_11D_0 = taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter<long>);
						num2 = arg_11D_0;
						IL_11E:
						<>c__DisplayClass14_.item.PingTime = num2;
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

			public ServerTreeItem item;

			[AsyncStateMachine(typeof(ServerTreeModel.<>c__DisplayClass14_1.<<PingList>b__1>d))]
			internal Task <PingList>b__1()
			{
				ServerTreeModel.<>c__DisplayClass14_1.<<PingList>b__1>d <<PingList>b__1>d;
				<<PingList>b__1>d.<>4__this = this;
				<<PingList>b__1>d.<>t__builder = AsyncTaskMethodBuilder.Create();
				<<PingList>b__1>d.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <<PingList>b__1>d.<>t__builder;
				<>t__builder.Start<ServerTreeModel.<>c__DisplayClass14_1.<<PingList>b__1>d>(ref <<PingList>b__1>d);
				return <<PingList>b__1>d.<>t__builder.Task;
			}
		}

		private readonly TaskFactory _pingTaskFactory;

		private readonly ObservableCollection<ServerTreeItem> _treeData;

		private string _currentFilter = "";

		private string _sortColumn = "Name";

		private ListSortDirection _mSortDirection;

		public ICommand SortCommand
		{
			[CompilerGenerated]
			get
			{
				return this.<SortCommand>k__BackingField;
			}
		}

		public ServerTreeModel(ObservableCollection<ServerTreeItem> treeData)
		{
			this._treeData = treeData;
			this.<SortCommand>k__BackingField = new RelayCommand(new Action<object>(this.ApplySort), null);
			this._pingTaskFactory = new TaskFactory(new HelperFunctions.LimitedConcurrencyLevelTaskScheduler(5));
		}

		public IEnumerable GetChildren(object parent)
		{
			ObservableCollection<ServerTreeItem> observableCollection = new ObservableCollection<ServerTreeItem>();
			if (parent == null)
			{
				if (string.IsNullOrWhiteSpace(this._currentFilter))
				{
					return this._treeData;
				}
				foreach (ServerTreeItem current in this._treeData)
				{
					if (!IsNullOrEmptyExtension.IsNullOrEmpty(this.GetChildren(current)))
					{
						observableCollection.Add(current);
					}
				}
				return observableCollection;
			}
			else
			{
				ServerTreeItem serverTreeItem = parent as ServerTreeItem;
				if (serverTreeItem == null)
				{
					return observableCollection;
				}
				if (string.IsNullOrEmpty(this._currentFilter))
				{
					this.SortList(serverTreeItem.ServerTreeItems);
					return serverTreeItem.ServerTreeItems;
				}
				foreach (ServerTreeItem current2 in serverTreeItem.ServerTreeItems)
				{
					if (current2.Name.IndexOf(this._currentFilter, StringComparison.InvariantCultureIgnoreCase) >= 0)
					{
						observableCollection.Add(current2);
					}
				}
				this.SortList(observableCollection);
				return observableCollection;
			}
		}

		public void RenderChildren(object parent)
		{
			ServerTreeItem serverTreeItem = parent as ServerTreeItem;
			this.PingList((serverTreeItem != null) ? serverTreeItem.ServerTreeItems : null);
		}

		public bool HasChildren(object parent)
		{
			ServerTreeItem expr_06 = parent as ServerTreeItem;
			return expr_06 != null && expr_06.ServerTreeItems.Count > 0;
		}

		public void FilterChildren(string filter)
		{
			this._currentFilter = filter;
		}

		private void SortList(ObservableCollection<ServerTreeItem> aList)
		{
			if (aList != null && aList.Count > 1)
			{
				List<ServerTreeItem> arg_4A_0 = (this._mSortDirection == ListSortDirection.Ascending) ? aList.OrderBy(new Func<ServerTreeItem, object>(this.<SortList>b__13_0)).ToList<ServerTreeItem>() : aList.OrderByDescending(new Func<ServerTreeItem, object>(this.<SortList>b__13_1)).ToList<ServerTreeItem>();
				aList.Clear();
				foreach (ServerTreeItem current in arg_4A_0)
				{
					aList.Add(current);
				}
			}
		}

		private void PingList(ObservableCollection<ServerTreeItem> aList)
		{
			ServerTreeModel.<>c__DisplayClass14_0 <>c__DisplayClass14_ = new ServerTreeModel.<>c__DisplayClass14_0();
			<>c__DisplayClass14_.<>4__this = this;
			<>c__DisplayClass14_.aList = aList;
			if (<>c__DisplayClass14_.aList != null && <>c__DisplayClass14_.aList.Count > 0)
			{
				HelperFunctions.DelayExecution(TimeSpan.FromMilliseconds(50.0), new Action(<>c__DisplayClass14_.<PingList>b__0));
			}
		}

		private void ApplySort(object data)
		{
			SortEventData expr_06 = (SortEventData)data;
			TreeList treeList = (TreeList)expr_06.Sender;
			string propertyName = expr_06.PropertyName;
			if (!this._sortColumn.Equals(propertyName, StringComparison.CurrentCultureIgnoreCase))
			{
				this._mSortDirection = ListSortDirection.Ascending;
			}
			else
			{
				this._mSortDirection = ((this._mSortDirection == ListSortDirection.Ascending) ? ListSortDirection.Descending : ListSortDirection.Ascending);
			}
			this._sortColumn = propertyName;
			using (IEnumerator<TreeNode> enumerator = treeList.get_Nodes().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					ObservableCollection<ServerTreeItem> aList = (ObservableCollection<ServerTreeItem>)enumerator.Current.get_ChildrenSource();
					this.SortList(aList);
				}
			}
		}

		public void ToggleServerFav(TreeList treeView, int serverId)
		{
			ServerTreeItem serverTreeItem = null;
			List<ServerTreeItem> list = new List<ServerTreeItem>();
			List<ServerTreeItem> list2 = new List<ServerTreeItem>();
			foreach (ServerTreeItem current in this._treeData)
			{
				if (current.CountryCode.Equals("fav"))
				{
					serverTreeItem = current;
					break;
				}
			}
			ObservableCollection<ServerTreeItem> observableCollection = (serverTreeItem != null) ? serverTreeItem.ServerTreeItems : null;
			using (IEnumerator<TreeNode> enumerator2 = treeView.get_Nodes().GetEnumerator())
			{
				while (enumerator2.MoveNext())
				{
					ObservableCollection<ServerTreeItem> observableCollection2 = (ObservableCollection<ServerTreeItem>)enumerator2.Current.get_ChildrenSource();
					if (observableCollection2 != null)
					{
						foreach (ServerTreeItem current2 in observableCollection2)
						{
							if (current2.ServerId == serverId)
							{
								list.Add(current2);
							}
						}
					}
				}
			}
			foreach (ServerTreeItem current3 in list)
			{
				if (!list2.Contains(current3))
				{
					list2.Add(current3);
					if (current3.IsFav)
					{
						current3.IsFav = false;
						if (observableCollection != null)
						{
							observableCollection.Remove(current3);
						}
						SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().Remove(current3.ServerId);
					}
					else
					{
						current3.IsFav = true;
						if (observableCollection != null)
						{
							observableCollection.Add(current3);
						}
						this.SortList(observableCollection);
						if (!SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().Contains(current3.ServerId))
						{
							SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().Add(current3.ServerId);
						}
					}
				}
			}
			SettingsHolder.get_Settings().SaveSettingsAsync(false);
		}

		[CompilerGenerated]
		private object <SortList>b__13_0(ServerTreeItem o)
		{
			return o.GetType().GetProperty(this._sortColumn).GetValue(o, null);
		}

		[CompilerGenerated]
		private object <SortList>b__13_1(ServerTreeItem o)
		{
			return o.GetType().GetProperty(this._sortColumn).GetValue(o, null);
		}
	}
}

using FirstFloor.ModernUI.Presentation;
using System;
using System.Windows.Media;

namespace CyberGhost.Components
{
	public class SliderElement : NotifyPropertyChanged
	{
		private string _description;

		private ImageSource _image;

		public string Description
		{
			get
			{
				return this._description;
			}
			set
			{
				if (this._description == value)
				{
					return;
				}
				this._description = value;
				this.OnPropertyChanged("Description");
			}
		}

		public ImageSource Image
		{
			get
			{
				return this._image;
			}
			set
			{
				if (object.Equals(this._image, value))
				{
					return;
				}
				this._image = value;
				this.OnPropertyChanged("Image");
			}
		}
	}
}

using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace CyberGhost.Components
{
	public class UnblockCountries : INotifyPropertyChanged
	{
		private string _url;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public Uri CountryImage
		{
			get;
			set;
		}

		public string CountryName
		{
			get;
			set;
		}

		public string ToolTip
		{
			get;
			set;
		}

		public string UName
		{
			get;
			set;
		}

		public string UNameShort
		{
			get;
			set;
		}

		public bool Premium
		{
			get;
			set;
		}

		public string IconUrl
		{
			get;
			set;
		}

		public string Description
		{
			get;
			set;
		}

		public bool DefaultForGroup
		{
			get;
			set;
		}

		public string CountryCode
		{
			get;
			set;
		}

		public string Url
		{
			get
			{
				return this._url;
			}
			set
			{
				if (value != this._url)
				{
					this._url = value;
					this.NotifyPropertyChanged("Url");
				}
			}
		}

		protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChangedEventHandler expr_06 = this.PropertyChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class TileDialog : ModernDialog, IComponentConnector
	{
		internal TextBox ResponseTextBox;

		internal Button ButtonOk;

		private bool _contentLoaded;

		public string ResponseText
		{
			get
			{
				return this.ResponseTextBox.Text;
			}
			set
			{
				this.ResponseTextBox.Text = value;
			}
		}

		public TileDialog()
		{
			this.InitializeComponent();
			base.Width = 300.0;
			base.Height = 150.0;
		}

		private void OKButton_Click(object sender, RoutedEventArgs e)
		{
			base.DialogResult = new bool?(true);
		}

		private void ResponseTextBox_TextChanged(object sender, TextChangedEventArgs e)
		{
			this.ButtonOk.IsEnabled = Uri.IsWellFormedUriString("http://" + this.ResponseTextBox.Text, UriKind.RelativeOrAbsolute);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/tiledialog.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.ResponseTextBox = (TextBox)target;
				this.ResponseTextBox.TextChanged += new TextChangedEventHandler(this.ResponseTextBox_TextChanged);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.ButtonOk = (Button)target;
			this.ButtonOk.Click += new RoutedEventHandler(this.OKButton_Click);
		}
	}
}

using CyberGhost.Annotations;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Media;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Threading;

namespace CyberGhost.Components
{
	public class UnblockItemGrid : UserControl, IComponentConnector, IStyleConnector, INotifyPropertyChanged
	{
		public enum UnblockActiveFilter
		{
			All = 1,
			Top5,
			OwnRegion = 4,
			Default = 1
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass54_0
		{
			public CancellationToken cancellationToken;

			public string searchString;

			public UnblockItemGrid <>4__this;
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass54_1
		{
			public CgApiServerContentUrl groupedServerContentUrl;

			public UnblockItemGrid.<>c__DisplayClass54_2 CS$<>8__locals2;

			internal void <BuildUpContent>b__0()
			{
				this.CS$<>8__locals2.CS$<>8__locals1.<>4__this.CreateUnblockEntry(this.CS$<>8__locals2.CS$<>8__locals1.cancellationToken, this.groupedServerContentUrl, this.CS$<>8__locals2.CS$<>8__locals1.searchString, true, this.CS$<>8__locals2.customEntry.get_ServerIds(), "");
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass54_2
		{
			public CgProfileUnblock.UnblockCustomEntry customEntry;

			public UnblockItemGrid.<>c__DisplayClass54_0 CS$<>8__locals1;
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass54_3
		{
			public CgApiServerContentUrl groupedServerContentUrl;

			public UnblockItemGrid.<>c__DisplayClass54_0 CS$<>8__locals3;

			internal void <BuildUpContent>b__2()
			{
				this.CS$<>8__locals3.<>4__this.CreateUnblockEntry(this.CS$<>8__locals3.cancellationToken, this.groupedServerContentUrl, this.CS$<>8__locals3.searchString, false, null, "");
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass54_4
		{
			public CgApiServerContentUrl groupedServerContentUrl;

			public UnblockItemGrid.<>c__DisplayClass54_0 CS$<>8__locals4;

			internal void <BuildUpContent>b__4()
			{
				this.CS$<>8__locals4.<>4__this.CreateUnblockEntry(this.CS$<>8__locals4.cancellationToken, this.groupedServerContentUrl, this.CS$<>8__locals4.searchString, false, null, "");
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass54_5
		{
			public CgApiServerContentUrl groupedServerContentUrl;

			public UnblockItemGrid.<>c__DisplayClass54_0 CS$<>8__locals5;

			internal void <BuildUpContent>b__6()
			{
				this.CS$<>8__locals5.<>4__this.CreateUnblockEntry(this.CS$<>8__locals5.cancellationToken, this.groupedServerContentUrl, this.CS$<>8__locals5.searchString, false, null, this.CS$<>8__locals5.<>4__this.CountryCode);
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly UnblockItemGrid.<>c <>9 = new UnblockItemGrid.<>c();

			public static Func<CgApiServerContentUrl, int> <>9__54_1;

			public static Func<CgApiServerContentUrl, string> <>9__54_3;

			public static Func<CgApiServerContentUrl, string> <>9__54_5;

			internal int <BuildUpContent>b__54_1(CgApiServerContentUrl f)
			{
				return f.get_Position();
			}

			internal string <BuildUpContent>b__54_3(CgApiServerContentUrl f)
			{
				return f.get_Name();
			}

			internal string <BuildUpContent>b__54_5(CgApiServerContentUrl f)
			{
				return f.get_Name();
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <BuildUpContent>d__54 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public UnblockItemGrid <>4__this;

			public CancellationToken cancellationToken;

			public string searchString;

			private UnblockItemGrid.<>c__DisplayClass54_0 <>8__1;

			private UnblockItemGrid.<>c__DisplayClass54_1 <>8__2;

			private CgApiContentCountry <country>5__3;

			public bool justOwnRegion;

			private List<CgApiServerContentUrl> <itemCollection>5__4;

			public bool justTop5;

			private List<CgProfileUnblock.UnblockCustomEntry>.Enumerator <>7__wrap1;

			private CgApiServerContentUrl <>7__wrap2;

			private TaskAwaiter<string> <>u__1;

			private TaskAwaiter <>u__2;

			private IEnumerator<CgApiServerContentUrl> <>7__wrap3;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				UnblockItemGrid unblockItemGrid = this.<>4__this;
				try
				{
					switch (num)
					{
					case 0:
					case 1:
						break;
					case 2:
						IL_528:
						try
						{
							TaskAwaiter taskAwaiter;
							if (num == 2)
							{
								taskAwaiter = this.<>u__2;
								this.<>u__2 = default(TaskAwaiter);
								int arg_547_1 = -1;
								num = -1;
								this.<>1__state = arg_547_1;
								goto IL_5C6;
							}
							IL_595:
							while (this.<>7__wrap3.MoveNext())
							{
								UnblockItemGrid.<>c__DisplayClass54_3 <>c__DisplayClass54_ = new UnblockItemGrid.<>c__DisplayClass54_3();
								<>c__DisplayClass54_.CS$<>8__locals3 = this.<>8__1;
								<>c__DisplayClass54_.groupedServerContentUrl = this.<>7__wrap3.Current;
								if (<>c__DisplayClass54_.CS$<>8__locals3.cancellationToken.IsCancellationRequested)
								{
									IL_5FB:
									goto IL_615;
								}
								if (<>c__DisplayClass54_.groupedServerContentUrl.get_Position() != 0)
								{
									taskAwaiter = Task.Run(new Action(<>c__DisplayClass54_.<BuildUpContent>b__2)).GetAwaiter();
									if (taskAwaiter.IsCompleted)
									{
										goto IL_5C6;
									}
									int arg_5DB_1 = 2;
									num = 2;
									this.<>1__state = arg_5DB_1;
									this.<>u__2 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, UnblockItemGrid.<BuildUpContent>d__54>(ref taskAwaiter, ref this);
									return;
								}
							}
							goto IL_5FB;
							IL_5C6:
							taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter);
							goto IL_595;
						}
						finally
						{
							if (num < 0 && this.<>7__wrap3 != null)
							{
								this.<>7__wrap3.Dispose();
							}
						}
						IL_615:
						this.<>7__wrap3 = null;
						if (!this.justTop5)
						{
							IEnumerable<CgApiServerContentUrl> arg_64D_0 = this.<itemCollection>5__4;
							Func<CgApiServerContentUrl, string> arg_64D_1;
							if ((arg_64D_1 = UnblockItemGrid.<>c.<>9__54_3) == null)
							{
								arg_64D_1 = (UnblockItemGrid.<>c.<>9__54_3 = new Func<CgApiServerContentUrl, string>(UnblockItemGrid.<>c.<>9.<BuildUpContent>b__54_3));
							}
							this.<>7__wrap3 = arg_64D_0.OrderBy(arg_64D_1).GetEnumerator();
							goto IL_65C;
						}
						goto IL_84F;
					case 3:
						goto IL_65C;
					case 4:
						IL_755:
						try
						{
							TaskAwaiter taskAwaiter;
							if (num == 4)
							{
								taskAwaiter = this.<>u__2;
								this.<>u__2 = default(TaskAwaiter);
								int arg_774_1 = -1;
								num = -1;
								this.<>1__state = arg_774_1;
								goto IL_7F9;
							}
							IL_7C8:
							while (this.<>7__wrap3.MoveNext())
							{
								UnblockItemGrid.<>c__DisplayClass54_5 <>c__DisplayClass54_2 = new UnblockItemGrid.<>c__DisplayClass54_5();
								<>c__DisplayClass54_2.CS$<>8__locals5 = this.<>8__1;
								<>c__DisplayClass54_2.groupedServerContentUrl = this.<>7__wrap3.Current;
								if (<>c__DisplayClass54_2.CS$<>8__locals5.cancellationToken.IsCancellationRequested)
								{
									IL_82E:
									goto IL_848;
								}
								if (unblockItemGrid.DetermineIfServerContentUrlCountryIsInUserRegion(<>c__DisplayClass54_2.groupedServerContentUrl.get_Countries()))
								{
									taskAwaiter = Task.Run(new Action(<>c__DisplayClass54_2.<BuildUpContent>b__6)).GetAwaiter();
									if (taskAwaiter.IsCompleted)
									{
										goto IL_7F9;
									}
									int arg_80E_1 = 4;
									num = 4;
									this.<>1__state = arg_80E_1;
									this.<>u__2 = taskAwaiter;
									this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, UnblockItemGrid.<BuildUpContent>d__54>(ref taskAwaiter, ref this);
									return;
								}
							}
							goto IL_82E;
							IL_7F9:
							taskAwaiter.GetResult();
							taskAwaiter = default(TaskAwaiter);
							goto IL_7C8;
						}
						finally
						{
							if (num < 0 && this.<>7__wrap3 != null)
							{
								this.<>7__wrap3.Dispose();
							}
						}
						IL_848:
						this.<>7__wrap3 = null;
						goto IL_84F;
					default:
						this.<>8__1 = new UnblockItemGrid.<>c__DisplayClass54_0();
						this.<>8__1.<>4__this = unblockItemGrid;
						this.<>8__1.cancellationToken = this.cancellationToken;
						this.<>8__1.searchString = this.searchString;
						unblockItemGrid.UpdateCompletionSource = new TaskCompletionSource<bool>(true);
						unblockItemGrid.BuildingContent = true;
						unblockItemGrid.UnblockItems.Clear();
						this.<itemCollection>5__4 = null;
						if (unblockItemGrid.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
						{
							this.<itemCollection>5__4 = SettingsHolder.get_Settings().get_ProfileUnblock().UnblockList.get_Items();
						}
						if (unblockItemGrid.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()))
						{
							this.<itemCollection>5__4 = SettingsHolder.get_Settings().get_ProfileUncensoring().UnblockList.get_Items();
						}
						if (this.<itemCollection>5__4 == null)
						{
							goto IL_8EF;
						}
						if (!unblockItemGrid.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
						{
							goto IL_4AF;
						}
						this.<>7__wrap1 = SettingsHolder.get_Settings().get_ProfileUnblock().get_CustomEntries().GetEnumerator();
						break;
					}
					try
					{
						TaskAwaiter<string> taskAwaiter2;
						if (num == 0)
						{
							taskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<string>);
							int arg_172_1 = -1;
							num = -1;
							this.<>1__state = arg_172_1;
							goto IL_3E2;
						}
						TaskAwaiter taskAwaiter;
						if (num == 1)
						{
							taskAwaiter = this.<>u__2;
							this.<>u__2 = default(TaskAwaiter);
							int arg_153_1 = -1;
							num = -1;
							this.<>1__state = arg_153_1;
							goto IL_1BA;
						}
						IL_28C:
						while (this.<>7__wrap1.MoveNext())
						{
							UnblockItemGrid.<>c__DisplayClass54_2 <>c__DisplayClass54_3 = new UnblockItemGrid.<>c__DisplayClass54_2();
							<>c__DisplayClass54_3.CS$<>8__locals1 = this.<>8__1;
							<>c__DisplayClass54_3.customEntry = this.<>7__wrap1.Current;
							this.<>8__2 = new UnblockItemGrid.<>c__DisplayClass54_1();
							this.<>8__2.CS$<>8__locals2 = <>c__DisplayClass54_3;
							if (this.<>8__2.CS$<>8__locals2.CS$<>8__locals1.cancellationToken.IsCancellationRequested)
							{
								break;
							}
							if (!(this.<>8__2.CS$<>8__locals2.CS$<>8__locals1.searchString != "") || this.<>8__2.CS$<>8__locals2.customEntry.get_Url().ToLower().Contains(this.<>8__2.CS$<>8__locals2.CS$<>8__locals1.searchString))
							{
								string name = new UriBuilder(this.<>8__2.CS$<>8__locals2.customEntry.get_Url()).Host.ToUpper().Replace("WWW.", "");
								UnblockItemGrid.<>c__DisplayClass54_1 arg_2FE_0 = this.<>8__2;
								CgApiServerContentUrl expr_2E0 = new CgApiServerContentUrl();
								expr_2E0.set_Name(name);
								expr_2E0.set_Iconurl(unblockItemGrid._pathPlayIcon);
								expr_2E0.set_Countries(new List<CgApiContentCountry>());
								arg_2FE_0.groupedServerContentUrl = expr_2E0;
								this.<>8__2.groupedServerContentUrl.set_Name(GuiHelper.Truncate(this.<>8__2.groupedServerContentUrl.get_Name(), 14));
								CgApiContentCountry expr_330 = new CgApiContentCountry();
								expr_330.set_Url(this.<>8__2.CS$<>8__locals2.customEntry.get_Url());
								expr_330.set_Comment(this.<>8__2.CS$<>8__locals2.customEntry.get_Url());
								expr_330.set_Premium(false);
								expr_330.set_Country("");
								this.<country>5__3 = expr_330;
								this.<>7__wrap2 = this.<>8__2.groupedServerContentUrl;
								taskAwaiter2 = GuiHelper.DownloadFavIcon(this.<>8__2.CS$<>8__locals2.CS$<>8__locals1.cancellationToken, this.<>8__2.CS$<>8__locals2.customEntry.get_Url(), this.<>8__2.groupedServerContentUrl.get_Name(), "").GetAwaiter();
								if (taskAwaiter2.IsCompleted)
								{
									goto IL_3E2;
								}
								int arg_447_1 = 0;
								num = 0;
								this.<>1__state = arg_447_1;
								this.<>u__1 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, UnblockItemGrid.<BuildUpContent>d__54>(ref taskAwaiter2, ref this);
								return;
							}
						}
						goto IL_48B;
						IL_1BA:
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter);
						this.<>8__2 = null;
						this.<country>5__3 = null;
						goto IL_28C;
						IL_3E2:
						string arg_3F1_0 = taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<string>);
						string iconurl = arg_3F1_0;
						this.<>7__wrap2.set_Iconurl(iconurl);
						this.<>7__wrap2 = null;
						this.<>8__2.groupedServerContentUrl.get_Countries().Add(this.<country>5__3);
						if (!this.<>8__2.CS$<>8__locals2.CS$<>8__locals1.cancellationToken.IsCancellationRequested)
						{
							taskAwaiter = Task.Run(new Action(this.<>8__2.<BuildUpContent>b__0), this.<>8__2.CS$<>8__locals2.CS$<>8__locals1.cancellationToken).GetAwaiter();
							if (taskAwaiter.IsCompleted)
							{
								goto IL_1BA;
							}
							int arg_46B_1 = 1;
							num = 1;
							this.<>1__state = arg_46B_1;
							this.<>u__2 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, UnblockItemGrid.<BuildUpContent>d__54>(ref taskAwaiter, ref this);
							return;
						}
						IL_48B:;
					}
					finally
					{
						if (num < 0)
						{
							((IDisposable)this.<>7__wrap1).Dispose();
						}
					}
					this.<>7__wrap1 = default(List<CgProfileUnblock.UnblockCustomEntry>.Enumerator);
					IL_4AF:
					if (!this.justOwnRegion)
					{
						IEnumerable<CgApiServerContentUrl> arg_4DD_0 = this.<itemCollection>5__4;
						Func<CgApiServerContentUrl, int> arg_4DD_1;
						if ((arg_4DD_1 = UnblockItemGrid.<>c.<>9__54_1) == null)
						{
							arg_4DD_1 = (UnblockItemGrid.<>c.<>9__54_1 = new Func<CgApiServerContentUrl, int>(UnblockItemGrid.<>c.<>9.<BuildUpContent>b__54_1));
						}
						this.<>7__wrap3 = arg_4DD_0.OrderByDescending(arg_4DD_1).GetEnumerator();
						goto IL_528;
					}
					IEnumerable<CgApiServerContentUrl> arg_514_0 = this.<itemCollection>5__4;
					Func<CgApiServerContentUrl, string> arg_514_1;
					if ((arg_514_1 = UnblockItemGrid.<>c.<>9__54_5) == null)
					{
						arg_514_1 = (UnblockItemGrid.<>c.<>9__54_5 = new Func<CgApiServerContentUrl, string>(UnblockItemGrid.<>c.<>9.<BuildUpContent>b__54_5));
					}
					this.<>7__wrap3 = arg_514_0.OrderBy(arg_514_1).GetEnumerator();
					goto IL_755;
					IL_65C:
					try
					{
						TaskAwaiter taskAwaiter;
						if (num == 3)
						{
							taskAwaiter = this.<>u__2;
							this.<>u__2 = default(TaskAwaiter);
							int arg_67B_1 = -1;
							num = -1;
							this.<>1__state = arg_67B_1;
							goto IL_6FA;
						}
						IL_6C9:
						while (this.<>7__wrap3.MoveNext())
						{
							UnblockItemGrid.<>c__DisplayClass54_4 <>c__DisplayClass54_4 = new UnblockItemGrid.<>c__DisplayClass54_4();
							<>c__DisplayClass54_4.CS$<>8__locals4 = this.<>8__1;
							<>c__DisplayClass54_4.groupedServerContentUrl = this.<>7__wrap3.Current;
							if (<>c__DisplayClass54_4.CS$<>8__locals4.cancellationToken.IsCancellationRequested)
							{
								IL_72F:
								goto IL_749;
							}
							if (<>c__DisplayClass54_4.groupedServerContentUrl.get_Position() == 0)
							{
								taskAwaiter = Task.Run(new Action(<>c__DisplayClass54_4.<BuildUpContent>b__4)).GetAwaiter();
								if (taskAwaiter.IsCompleted)
								{
									goto IL_6FA;
								}
								int arg_70F_1 = 3;
								num = 3;
								this.<>1__state = arg_70F_1;
								this.<>u__2 = taskAwaiter;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, UnblockItemGrid.<BuildUpContent>d__54>(ref taskAwaiter, ref this);
								return;
							}
						}
						goto IL_72F;
						IL_6FA:
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter);
						goto IL_6C9;
					}
					finally
					{
						if (num < 0 && this.<>7__wrap3 != null)
						{
							this.<>7__wrap3.Dispose();
						}
					}
					IL_749:
					this.<>7__wrap3 = null;
					IL_84F:
					if (unblockItemGrid.InitPhase || unblockItemGrid.IsFilterChanged)
					{
						if (!this.<>8__1.cancellationToken.IsCancellationRequested)
						{
							unblockItemGrid.SetOriginalItems(true);
						}
						if (unblockItemGrid.InitPhase)
						{
							unblockItemGrid.InitPhase = false;
						}
						else
						{
							unblockItemGrid.IsFilterChanged = false;
						}
						unblockItemGrid.SearchText.IsEnabled = true;
						unblockItemGrid.SearchText.Focusable = true;
						unblockItemGrid.AdornerDecorator.IsEnabled = true;
						unblockItemGrid.AdornerDecorator.Focusable = true;
					}
					unblockItemGrid.BuildingContent = false;
					unblockItemGrid.UpdateCompletionSource.TrySetResult(false);
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				IL_8EF:
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass55_0
		{
			public CancellationToken cancellationToken;

			public UnblockItemGrid <>4__this;
		}

		[CompilerGenerated]
		private sealed class <>c__DisplayClass55_1
		{
			public UnblockItem unblockItem;

			public UnblockItemGrid.<>c__DisplayClass55_0 CS$<>8__locals1;

			internal void <CreateUnblockEntry>b__0()
			{
				if (!this.CS$<>8__locals1.cancellationToken.IsCancellationRequested)
				{
					this.CS$<>8__locals1.<>4__this.UnblockItems.Add(this.unblockItem);
					this.CS$<>8__locals1.<>4__this.UnblockDataGrid.ItemsSource = this.CS$<>8__locals1.<>4__this.UnblockItems;
				}
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <CreateUnblockEntry>d__55 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public UnblockItemGrid <>4__this;

			public CancellationToken cancellationToken;

			public string searchString;

			public CgApiServerContentUrl groupedServerContentUrl;

			public bool custom;

			private UnblockItemGrid.<>c__DisplayClass55_1 <>8__1;

			public List<int> serverIds;

			public string countrycode;

			private TaskAwaiter<string> <>u__1;

			private TaskAwaiter <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				UnblockItemGrid unblockItemGrid = this.<>4__this;
				try
				{
					UnblockItemGrid.<>c__DisplayClass55_0 <>c__DisplayClass55_;
					if (num > 1)
					{
						<>c__DisplayClass55_ = new UnblockItemGrid.<>c__DisplayClass55_0();
						<>c__DisplayClass55_.<>4__this = unblockItemGrid;
						<>c__DisplayClass55_.cancellationToken = this.cancellationToken;
					}
					try
					{
						TaskAwaiter taskAwaiter;
						string text;
						TaskAwaiter<string> taskAwaiter2;
						if (num != 0)
						{
							if (num == 1)
							{
								taskAwaiter = this.<>u__2;
								this.<>u__2 = default(TaskAwaiter);
								int arg_16F_1 = -1;
								num = -1;
								this.<>1__state = arg_16F_1;
								goto IL_469;
							}
							this.<>8__1 = new UnblockItemGrid.<>c__DisplayClass55_1();
							this.<>8__1.CS$<>8__locals1 = <>c__DisplayClass55_;
							if (this.searchString != "" && !this.groupedServerContentUrl.get_Name().ToLower().Contains(this.searchString))
							{
								goto IL_49F;
							}
							if (!this.custom && this.groupedServerContentUrl.get_Countries().Count <= 0)
							{
								goto IL_49F;
							}
							if (this.groupedServerContentUrl.get_Position() > 0 && this.groupedServerContentUrl.get_Position() > unblockItemGrid._lastposition)
							{
								unblockItemGrid._lastposition = this.groupedServerContentUrl.get_Position();
							}
							text = unblockItemGrid._pathPlayIcon;
							if (this.groupedServerContentUrl.get_Iconurl() == null)
							{
								goto IL_1A6;
							}
							taskAwaiter2 = GuiHelper.DownloadFavIcon(this.<>8__1.CS$<>8__locals1.cancellationToken, this.groupedServerContentUrl.get_Iconurl(), this.groupedServerContentUrl.get_Name(), this.groupedServerContentUrl.get_Iconurl()).GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								int arg_137_1 = 0;
								num = 0;
								this.<>1__state = arg_137_1;
								this.<>u__1 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, UnblockItemGrid.<CreateUnblockEntry>d__55>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__1;
							this.<>u__1 = default(TaskAwaiter<string>);
							int arg_191_1 = -1;
							num = -1;
							this.<>1__state = arg_191_1;
						}
						string arg_1A5_0 = taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<string>);
						text = arg_1A5_0;
						IL_1A6:
						if (this.<>8__1.CS$<>8__locals1.cancellationToken.IsCancellationRequested)
						{
							goto IL_49F;
						}
						string text2 = GuiHelper.UppercaseFirst(this.groupedServerContentUrl.get_Name());
						this.<>8__1.unblockItem = new UnblockItem
						{
							UName = text2,
							UNameShort = GuiHelper.Truncate(text2, 20),
							UnblockCountriesList = new List<UnblockCountries>(),
							IconUrl = (text ?? unblockItemGrid._pathPlayIcon),
							IsCustom = this.custom,
							ServerIds = this.serverIds
						};
						if (this.groupedServerContentUrl.get_Countries() != null)
						{
							List<CgApiContentCountry>.Enumerator enumerator = this.groupedServerContentUrl.get_Countries().GetEnumerator();
							try
							{
								while (enumerator.MoveNext())
								{
									CgApiContentCountry current = enumerator.Current;
									if (this.<>8__1.CS$<>8__locals1.cancellationToken.IsCancellationRequested)
									{
										break;
									}
									string text3 = GuiHelper.UppercaseFirst(this.<>8__1.unblockItem.UName);
									UnblockCountries unblockCountries = new UnblockCountries
									{
										CountryName = GuiHelper.FindTranslationForCountry(current.get_Country()),
										Url = current.get_Url(),
										Premium = this.<>8__1.unblockItem.Premium,
										UName = text3,
										UNameShort = GuiHelper.Truncate(text3, 20),
										Description = current.get_Comment(),
										CountryImage = new Uri(unblockItemGrid._pathPlayIcon),
										DefaultForGroup = current.get_DefaultForGroup(),
										CountryCode = current.get_Country()
									};
									if (!string.IsNullOrEmpty(current.get_Country()))
									{
										unblockCountries.CountryImage = new Uri(Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", current.get_Country()))));
									}
									if (!string.IsNullOrEmpty(this.countrycode))
									{
										if (!string.IsNullOrEmpty(current.get_Country()) && this.countrycode.Equals(current.get_Country().ToLower()))
										{
											this.<>8__1.unblockItem.UnblockCountriesList.Add(unblockCountries);
										}
									}
									else
									{
										this.<>8__1.unblockItem.UnblockCountriesList.Add(unblockCountries);
									}
									if (this.<>8__1.unblockItem.IconUrl != null)
									{
										unblockCountries.IconUrl = this.<>8__1.unblockItem.IconUrl;
									}
								}
							}
							finally
							{
								if (num < 0)
								{
									((IDisposable)enumerator).Dispose();
								}
							}
						}
						if (this.<>8__1.CS$<>8__locals1.cancellationToken.IsCancellationRequested)
						{
							goto IL_478;
						}
						taskAwaiter = unblockItemGrid.Dispatcher.BeginInvoke(DispatcherPriority.Normal, new Action(this.<>8__1.<CreateUnblockEntry>b__0)).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							int arg_44C_1 = 1;
							num = 1;
							this.<>1__state = arg_44C_1;
							this.<>u__2 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter, UnblockItemGrid.<CreateUnblockEntry>d__55>(ref taskAwaiter, ref this);
							return;
						}
						IL_469:
						taskAwaiter.GetResult();
						taskAwaiter = default(TaskAwaiter);
						IL_478:
						this.<>8__1 = null;
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
				IL_49F:
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <UpgradeButton_OnClick>d__56 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = Navigation.GoInAppPurchase(SettingsHolder.get_Settings().get_ProfileUnblock(), "button").GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, UnblockItemGrid.<UpgradeButton_OnClick>d__56>(ref taskAwaiter, ref this);
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

		private readonly string _pathPlayIcon = Theming.GetThemedImage("Icons\\Functions\\icon_play.png");

		private int _lastposition;

		private bool _searchEnabled = true;

		public bool BuildingContent;

		public string CountryCode;

		public CancellationTokenSource ListCancellationToken;

		public TaskCompletionSource<bool> UpdateCompletionSource;

		private CgBase _currentProfile;

		internal AdornerDecorator AdornerDecorator;

		internal TextBox SearchText;

		internal Grid TileGrid;

		internal ItemsControl UnblockDataGrid;

		internal ModernProgressRing LoadingRing;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public UnblockItemGrid.UnblockActiveFilter CurrentActiveFilter
		{
			get;
			set;
		}

		public bool IsFilterChanged
		{
			get;
			set;
		}

		private List<UnblockItem> OriginalItems
		{
			[CompilerGenerated]
			get
			{
				return this.<OriginalItems>k__BackingField;
			}
		}

		public ObservableCollection<UnblockItem> UnblockItems
		{
			get;
			set;
		}

		public bool InitPhase
		{
			get;
			set;
		}

		public Button UpgradeButton
		{
			get;
			set;
		}

		public Grid ConnectButton
		{
			get;
			set;
		}

		public Grid OverlayTwo
		{
			get;
			set;
		}

		public CgBase CurrentProfile
		{
			get
			{
				return this._currentProfile;
			}
			set
			{
				this._currentProfile = value;
				this.UpdateTheme();
			}
		}

		public bool SearchEnabled
		{
			get
			{
				return this._searchEnabled;
			}
			set
			{
				this._searchEnabled = value;
				if (this._searchEnabled != value)
				{
					this.OnPropertyChanged("SearchEnabled");
				}
				if (value)
				{
					this.FocusOnSearchText();
				}
			}
		}

		public UnblockItemGrid()
		{
			this.<OriginalItems>k__BackingField = new List<UnblockItem>();
			this.<UnblockItems>k__BackingField = new ObservableCollection<UnblockItem>();
			base..ctor();
			this.InitializeComponent();
			this.SearchText.DataContext = this;
			this.ListCancellationToken = new CancellationTokenSource();
			this.UpdateCompletionSource = new TaskCompletionSource<bool>(false);
		}

		private void UpdateTheme()
		{
			if (this.CurrentProfile is CgProfileUnblock)
			{
				this.SearchText.Style = (base.FindResource("TextBox_Unblock") as Style);
				return;
			}
			if (this.CurrentProfile is CgProfileUncensoring)
			{
				this.SearchText.Style = (base.FindResource("TextBox_Anticensor") as Style);
			}
		}

		public void StartingBuildupContent(string searchString = "", bool justTop5 = false, bool justOwnRegion = false)
		{
			try
			{
				this.SearchText.IsEnabled = false;
				this.SearchText.Focusable = false;
				this.AdornerDecorator.IsEnabled = false;
				this.AdornerDecorator.Focusable = false;
				this.UnblockDataGrid.Visibility = Visibility.Hidden;
				this.LoadingRing.Visibility = Visibility.Visible;
				this.SearchText.Text = string.Empty;
				this.ListCancellationToken.Cancel(false);
				this.ListCancellationToken = new CancellationTokenSource();
				this.BuildUpContent(this.ListCancellationToken.Token, searchString, justTop5, justOwnRegion);
				this.LoadingRing.Visibility = Visibility.Hidden;
				this.UnblockDataGrid.Visibility = Visibility.Visible;
				this.SearchEnabled = true;
				ObjectHolder.CustomUnblockItemUrl = null;
				ObjectHolder.CustomUnblockItemServerIds = null;
			}
			catch (Exception arg_B0_0)
			{
				HelperFunctions.DebugLine(arg_B0_0.Message);
			}
		}

		[NotifyPropertyChangedInvocator]
		protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			try
			{
				PropertyChangedEventHandler expr_06 = this.PropertyChanged;
				if (expr_06 != null)
				{
					expr_06(this, new PropertyChangedEventArgs(propertyName));
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
		}

		public void FocusOnSearchText()
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.ContextIdle, new Action(this.<FocusOnSearchText>b__53_0));
		}

		[AsyncStateMachine(typeof(UnblockItemGrid.<BuildUpContent>d__54))]
		public void BuildUpContent(CancellationToken cancellationToken, string searchString = "", bool justTop5 = false, bool justOwnRegion = false)
		{
			UnblockItemGrid.<BuildUpContent>d__54 <BuildUpContent>d__;
			<BuildUpContent>d__.<>4__this = this;
			<BuildUpContent>d__.cancellationToken = cancellationToken;
			<BuildUpContent>d__.searchString = searchString;
			<BuildUpContent>d__.justTop5 = justTop5;
			<BuildUpContent>d__.justOwnRegion = justOwnRegion;
			<BuildUpContent>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<BuildUpContent>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <BuildUpContent>d__.<>t__builder;
			<>t__builder.Start<UnblockItemGrid.<BuildUpContent>d__54>(ref <BuildUpContent>d__);
		}

		[AsyncStateMachine(typeof(UnblockItemGrid.<CreateUnblockEntry>d__55))]
		private void CreateUnblockEntry(CancellationToken cancellationToken, CgApiServerContentUrl groupedServerContentUrl, string searchString, bool custom, List<int> serverIds = null, string countrycode = "")
		{
			UnblockItemGrid.<CreateUnblockEntry>d__55 <CreateUnblockEntry>d__;
			<CreateUnblockEntry>d__.<>4__this = this;
			<CreateUnblockEntry>d__.cancellationToken = cancellationToken;
			<CreateUnblockEntry>d__.groupedServerContentUrl = groupedServerContentUrl;
			<CreateUnblockEntry>d__.searchString = searchString;
			<CreateUnblockEntry>d__.custom = custom;
			<CreateUnblockEntry>d__.serverIds = serverIds;
			<CreateUnblockEntry>d__.countrycode = countrycode;
			<CreateUnblockEntry>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<CreateUnblockEntry>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <CreateUnblockEntry>d__.<>t__builder;
			<>t__builder.Start<UnblockItemGrid.<CreateUnblockEntry>d__55>(ref <CreateUnblockEntry>d__);
		}

		[AsyncStateMachine(typeof(UnblockItemGrid.<UpgradeButton_OnClick>d__56))]
		private void UpgradeButton_OnClick(object sender, RoutedEventArgs e)
		{
			UnblockItemGrid.<UpgradeButton_OnClick>d__56 <UpgradeButton_OnClick>d__;
			<UpgradeButton_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpgradeButton_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpgradeButton_OnClick>d__.<>t__builder;
			<>t__builder.Start<UnblockItemGrid.<UpgradeButton_OnClick>d__56>(ref <UpgradeButton_OnClick>d__);
		}

		private void SearchText_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
		}

		private void SetOriginalItems(bool initialization = false)
		{
			if (initialization)
			{
				this.OriginalItems.Clear();
				using (IEnumerator<UnblockItem> enumerator = this.UnblockItems.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						UnblockItem current = enumerator.Current;
						this.OriginalItems.Add(current);
					}
					return;
				}
			}
			if (this.OriginalItems.Count > 0)
			{
				this.UnblockItems.Clear();
				foreach (UnblockItem current2 in this.OriginalItems)
				{
					this.UnblockItems.Add(current2);
				}
			}
		}

		private bool DetermineIfServerContentUrlCountryIsInUserRegion(List<CgApiContentCountry> countries)
		{
			string countryCode = this.CountryCode;
			bool result;
			using (List<CgApiContentCountry>.Enumerator enumerator = countries.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if (enumerator.Current.get_Country().ToLower().Equals(countryCode.ToLower()))
					{
						result = true;
						return result;
					}
				}
				return false;
			}
			return result;
		}

		private void BuildUpContentInCurrentFilter(string searchText)
		{
			this.ListCancellationToken.Cancel(false);
			this.ListCancellationToken = new CancellationTokenSource();
			switch (this.CurrentActiveFilter)
			{
			case (UnblockItemGrid.UnblockActiveFilter)0:
				this.BuildUpContent(this.ListCancellationToken.Token, searchText, false, false);
				break;
			case UnblockItemGrid.UnblockActiveFilter.All:
				this.BuildUpContent(this.ListCancellationToken.Token, searchText, false, false);
				return;
			case UnblockItemGrid.UnblockActiveFilter.Top5:
				this.BuildUpContent(this.ListCancellationToken.Token, searchText, true, false);
				return;
			case (UnblockItemGrid.UnblockActiveFilter)3:
				break;
			case UnblockItemGrid.UnblockActiveFilter.OwnRegion:
				this.BuildUpContent(this.ListCancellationToken.Token, searchText, false, true);
				return;
			default:
				return;
			}
		}

		private void SearchText_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			TextBox textBox = sender as TextBox;
			if (textBox == null)
			{
				return;
			}
			this.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.LoadingRing.Visibility = Visibility.Visible;
			string searchText = textBox.Text.ToLower().Trim();
			this.BuildUpContentInCurrentFilter(searchText);
			this.LoadingRing.Visibility = Visibility.Hidden;
			this.UnblockDataGrid.Visibility = Visibility.Visible;
			this.SearchEnabled = true;
		}

		private void Overlay1_MouseEnter(object sender, MouseEventArgs mouseEventArgs)
		{
			this.Overlay_MouseEnter(sender, "Overlay2");
		}

		private void Overlay2_MouseEnter(object sender, MouseEventArgs mouseEventArgs)
		{
			this.Overlay_MouseEnter(sender, "Overlay1");
		}

		private void Overlay1_OnMouseLeave(object sender, MouseEventArgs e)
		{
			this.Overlay_MouseLeave(sender, "Overlay2");
		}

		private void Overlay2_OnMouseLeave(object sender, MouseEventArgs e)
		{
			this.Overlay_MouseLeave(sender, "Overlay1");
		}

		private void EditButton_OnClick(object sender, RoutedEventArgs e)
		{
			Grid expr_15 = VisualTreeHelperEx.GetParent(VisualTreeHelperEx.GetParent(sender as Button)) as Grid;
			DockPanel expr_2B = ((expr_15 != null) ? expr_15.FindName("PlayPanel") : null) as DockPanel;
			Label label = ((expr_2B != null) ? expr_2B.FindName("Url") : null) as Label;
			if (label != null && label.Content != null)
			{
				ObjectHolder.CustomUnblockItemUrl = label.Content.ToString();
				Navigation.GoToPage("Profiles/Unblock_ServerList", null, null);
			}
		}

		private void ConnectButton_OnClick(object sender, RoutedEventArgs e)
		{
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(12))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(12);
				return;
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(14))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(14);
				return;
			}
			Button expr_60 = sender as Button;
			object arg_78_0;
			if (expr_60 == null)
			{
				arg_78_0 = null;
			}
			else
			{
				DependencyObject expr_6C = VisualTreeHelperEx.GetParent(expr_60);
				arg_78_0 = ((expr_6C != null) ? VisualTreeHelperEx.GetParent(expr_6C) : null);
			}
			Grid grid = arg_78_0 as Grid;
			if (grid != null)
			{
				DockPanel dockPanel = grid.FindName("PlayPanel") as DockPanel;
				if (dockPanel != null)
				{
					Label label = dockPanel.FindName("Url") as Label;
					if (label != null)
					{
						if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
						{
							SettingsHolder.get_Settings().get_ProfileUnblock().set_CurrentUnblockUrl(label.Content.ToString());
							SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemUrl(label.Content.ToString());
						}
						if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()))
						{
							SettingsHolder.get_Settings().get_ProfileUncensoring().set_CurrentUnblockUrl(label.Content.ToString());
							SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemUrl(label.Content.ToString());
						}
					}
					Label label2 = dockPanel.FindName("TempImage") as Label;
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && label2 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemCountryImage(label2.Content.ToString());
					}
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && label2 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemCountryImage(label2.Content.ToString());
					}
					Label label3 = dockPanel.FindName("TempCountryName") as Label;
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_ConnectWithCustomWebsite(false);
						if (label3 != null && label3.Content.Equals(""))
						{
							SettingsHolder.get_Settings().get_ProfileUnblock().set_ConnectWithCustomWebsite(true);
						}
					}
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && label3 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemCountryName(label3.Content.ToString());
					}
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && label3 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemCountryName(label3.Content.ToString());
					}
					Label label4 = dockPanel.FindName("TempCountryCode") as Label;
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && label4 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemCountryCode(label4.Content.ToString());
					}
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && label4 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemCountryCode(label4.Content.ToString());
					}
				}
				DockPanel expr_326 = grid.FindName("UnameDockPanel") as DockPanel;
				Image image = ((expr_326 != null) ? expr_326.FindName("Logo") : null) as Image;
				FrameworkElement arg_3C4_0;
				if (((image != null) ? image.Source : null) != null)
				{
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedLogo(image.Source.ToString());
						arg_3C4_0 = expr_326;
						if (expr_326 == null)
						{
							goto IL_3BB;
						}
						goto IL_3BF;
					}
					else if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()))
					{
						SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedLogo(image.Source.ToString());
						arg_3C4_0 = expr_326;
						if (expr_326 == null)
						{
							goto IL_3BB;
						}
						goto IL_3BF;
					}
				}
				arg_3C4_0 = expr_326;
				if (expr_326 != null)
				{
					goto IL_3BF;
				}
				IL_3BB:
				object arg_3C9_0 = null;
				goto IL_3C9;
				IL_3BF:
				arg_3C9_0 = arg_3C4_0.FindName("UNameLabel");
				IL_3C9:
				Label label5 = arg_3C9_0 as Label;
				if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && label5 != null)
				{
					CgProfileUnblock arg_419_0 = SettingsHolder.get_Settings().get_ProfileUnblock();
					string selectedItemName;
					SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemNameShort(selectedItemName = GuiHelper.Truncate(label5.Content.ToString(), 18));
					arg_419_0.set_SelectedItemName(selectedItemName);
				}
				if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && label5 != null)
				{
					CgProfileUncensoring arg_468_0 = SettingsHolder.get_Settings().get_ProfileUncensoring();
					string selectedItemName;
					SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemNameShort(selectedItemName = GuiHelper.Truncate(label5.Content.ToString(), 18));
					arg_468_0.set_SelectedItemName(selectedItemName);
				}
				ScrollViewer expr_47D = grid.FindName("DescriptionScrollViewer") as ScrollViewer;
				TextBlock textBlock = ((expr_47D != null) ? expr_47D.FindName("Description") : null) as TextBlock;
				if (textBlock != null)
				{
					SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemDescription(textBlock.Text);
				}
				if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
				{
					if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.HasUserAccessToFeature(12))
					{
						ObjectHolder.ConnectionType = "manual";
						ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileUnblock(), false, false, true);
					}
					else
					{
						GuiHelper.ShowUpgradeDialog(SettingsHolder.get_Settings().get_ProfileUnblock().GetBaseName());
					}
				}
				if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()))
				{
					if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.HasUserAccessToFeature(14))
					{
						ObjectHolder.ConnectionType = "manual";
						ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileUncensoring(), false, false, true);
						return;
					}
					GuiHelper.ShowUpgradeDialog(SettingsHolder.get_Settings().get_ProfileUncensoring().GetBaseName());
				}
			}
		}

		private void DeleteButton_OnClick(object sender, RoutedEventArgs e)
		{
			try
			{
				Grid expr_15 = VisualTreeHelperEx.GetParent(VisualTreeHelperEx.GetParent(sender as Button)) as Grid;
				DockPanel expr_2B = ((expr_15 != null) ? expr_15.FindName("PlayPanel") : null) as DockPanel;
				Label label = ((expr_2B != null) ? expr_2B.FindName("Url") : null) as Label;
				if (label != null)
				{
					SettingsHolder.get_Settings().get_ProfileUnblock().DeleteCustomEntry(label.Content.ToString());
					this.StartingBuildupContent("", false, false);
				}
			}
			catch (Exception)
			{
			}
		}

		private void CountryList_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			UnblockCountries unblockCountries = (UnblockCountries)((ComboBox)sender).SelectedItem;
			if (unblockCountries != null)
			{
				this.ChangeDescriptionContent(unblockCountries);
				if (!this.BuildingContent && this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
				{
					SettingsHolder.get_Settings().get_ProfileUnblock().AddSelectedCountry(unblockCountries.UName, unblockCountries.Url);
				}
			}
		}

		private void CountryList_OnInitialized(object sender, EventArgs e)
		{
			if (((ComboBox)sender).DataContext is UnblockItem)
			{
				UnblockCountries unblockCountries = (UnblockCountries)((ComboBox)sender).SelectedItem;
				if (unblockCountries != null)
				{
					this.ChangeDescriptionContent(unblockCountries);
				}
			}
		}

		private void CountryList_OnLoaded(object sender, RoutedEventArgs e)
		{
			ComboBox comboBox = (ComboBox)sender;
			int num = 0;
			CgProfileUnblock.SavedUnblockCountries savedUnblockCountries = null;
			foreach (UnblockCountries unblockCountries in comboBox.Items.SourceCollection)
			{
				savedUnblockCountries = SettingsHolder.get_Settings().get_ProfileUnblock().DetermineIfUrlIsInSelectedCountry(unblockCountries.Url);
				if (savedUnblockCountries != null)
				{
					((ComboBox)sender).SelectedItem = unblockCountries;
					break;
				}
			}
			if (savedUnblockCountries == null)
			{
				using (IEnumerator enumerator = comboBox.Items.SourceCollection.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						if (((UnblockCountries)enumerator.Current).DefaultForGroup)
						{
							((ComboBox)sender).SelectedIndex = num;
							break;
						}
						num++;
					}
				}
				if (((ComboBox)sender).SelectedIndex == -1)
				{
					((ComboBox)sender).SelectedIndex = 0;
				}
			}
		}

		private void ChangeDescriptionContent(UnblockCountries item)
		{
			foreach (object current in ((IEnumerable)this.UnblockDataGrid.Items))
			{
				ContentPresenter contentPresenter = (ContentPresenter)this.UnblockDataGrid.ItemContainerGenerator.ContainerFromItem(current);
				Grid grid = contentPresenter.ContentTemplate.FindName("BaseGrid", contentPresenter) as Grid;
				if (grid != null)
				{
					Grid grid2 = grid;
					ScrollViewer scrollViewer = grid2.FindName("DescriptionScrollViewer") as ScrollViewer;
					if (scrollViewer != null)
					{
						TextBlock textBlock = scrollViewer.FindName("Description") as TextBlock;
						DockPanel dockPanel = grid2.FindName("UnameDockPanel") as DockPanel;
						if (textBlock != null && dockPanel != null)
						{
							Label label = dockPanel.FindName("UNameLabel") as Label;
							if (label != null && label.Content != null && label.Content.Equals(item.UName))
							{
								textBlock.Text = item.Description;
								DockPanel dockPanel2 = grid2.FindName("PlayPanel") as DockPanel;
								if (dockPanel2 != null)
								{
									Label label2 = dockPanel2.FindName("Url") as Label;
									if (label2 != null)
									{
										label2.Content = item.Url;
									}
									Label label3 = dockPanel2.FindName("TempImage") as Label;
									if (label3 != null)
									{
										label3.Content = item.CountryImage;
									}
									Label label4 = dockPanel2.FindName("TempCountryName") as Label;
									if (label4 != null)
									{
										label4.Content = item.CountryName;
									}
									Label label5 = dockPanel2.FindName("TempCountryCode") as Label;
									if (label5 != null)
									{
										label5.Content = item.CountryCode;
									}
								}
								StackPanel expr_1A3 = grid2.FindName("GroupBoxPanel") as StackPanel;
								ComboBox comboBox = ((expr_1A3 != null) ? expr_1A3.FindName("CountryComboBox") : null) as ComboBox;
								if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && comboBox != null)
								{
									comboBox.Visibility = Visibility.Collapsed;
									break;
								}
								break;
							}
						}
					}
				}
			}
		}

		private void Overlay_MouseEnter(object sender, string overlayNameFromElement)
		{
			Grid grid = sender as Grid;
			if (grid == null)
			{
				return;
			}
			grid.Opacity = 1.0;
			Grid grid2 = VisualTreeHelperEx.GetParent(grid) as Grid;
			if (grid2 != null)
			{
				grid2.Background = (base.FindResource("BlurBackgroundBrush") as SolidColorBrush);
				bool flag = (bool)grid2.Tag;
				DockPanel dockPanel = grid2.FindName("UnameDockPanel") as DockPanel;
				if (dockPanel != null)
				{
					BlurEffect effect = new BlurEffect
					{
						Radius = 20.0
					};
					dockPanel.Effect = effect;
					dockPanel.Background = (base.FindResource("BlurBackgroundBrush") as SolidColorBrush);
				}
				StackPanel stackPanel = grid2.FindName("GroupBoxPanel") as StackPanel;
				if (stackPanel != null)
				{
					stackPanel.Effect = new BlurEffect();
					stackPanel.Background = (base.FindResource("BlurBackgroundBrush") as SolidColorBrush);
				}
				DockPanel dockPanel2 = grid2.FindName("PlayPanel") as DockPanel;
				if (dockPanel2 != null)
				{
					dockPanel2.Effect = new BlurEffect();
					dockPanel2.Background = (base.FindResource("BlurBackgroundBrush") as SolidColorBrush);
					if (flag)
					{
						Button button = grid.FindName("EditButton") as Button;
						if (button != null)
						{
							button.Visibility = (ObjectHolder.CurrentUser.HasUserAccessToFeature(12) ? Visibility.Visible : Visibility.Hidden);
						}
						Button button2 = grid.FindName("DeleteButton") as Button;
						if (button2 != null)
						{
							button2.Visibility = (ObjectHolder.CurrentUser.HasUserAccessToFeature(12) ? Visibility.Visible : Visibility.Hidden);
						}
					}
				}
				Grid grid3 = grid2.FindName(overlayNameFromElement) as Grid;
				if (grid3 != null)
				{
					grid3.Opacity = 1.0;
				}
			}
			Button button3 = grid.FindName("ConnectButton") as Button;
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
			{
				if (button3 != null)
				{
					button3.Visibility = (ObjectHolder.CurrentUser.HasUserAccessToFeature(12) ? Visibility.Visible : Visibility.Hidden);
				}
				Button button4 = grid.FindName("UpgradeBtn") as Button;
				if (button4 != null)
				{
					button4.Visibility = (ObjectHolder.CurrentUser.HasUserAccessToFeature(12) ? Visibility.Hidden : Visibility.Visible);
				}
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && button3 != null)
			{
				button3.Visibility = Visibility.Visible;
			}
		}

		private void Overlay_MouseLeave(object sender, string overlayNameFromElement)
		{
			Grid grid = sender as Grid;
			if (grid == null)
			{
				return;
			}
			grid.Opacity = 1.0;
			Grid grid2 = VisualTreeHelperEx.GetParent(grid) as Grid;
			if (grid2 != null)
			{
				grid2.Background = (base.FindResource("WindowBackgroundColor2Brush") as SolidColorBrush);
				DockPanel dockPanel = grid2.FindName("UnameDockPanel") as DockPanel;
				if (dockPanel != null)
				{
					dockPanel.Effect = null;
					dockPanel.Background = new SolidColorBrush(Colors.Transparent);
				}
				StackPanel stackPanel = grid2.FindName("GroupBoxPanel") as StackPanel;
				if (stackPanel != null)
				{
					stackPanel.Effect = null;
					stackPanel.Background = new SolidColorBrush(Colors.Transparent);
				}
				DockPanel dockPanel2 = grid2.FindName("PlayPanel") as DockPanel;
				if (dockPanel2 != null)
				{
					dockPanel2.Effect = null;
					dockPanel2.Background = new SolidColorBrush(Colors.Transparent);
					Button button = grid.FindName("EditButton") as Button;
					if (button != null)
					{
						button.Visibility = Visibility.Hidden;
					}
					Button button2 = grid.FindName("DeleteButton") as Button;
					if (button2 != null)
					{
						button2.Visibility = Visibility.Hidden;
					}
				}
				Grid grid3 = grid2.FindName(overlayNameFromElement) as Grid;
				if (grid3 != null)
				{
					grid3.Opacity = 1.0;
				}
			}
			Button button3;
			if ((button3 = (grid.FindName("ConnectButton") as Button)) != null)
			{
				button3.Visibility = Visibility.Hidden;
			}
			Button button4;
			if ((button4 = (grid.FindName("UpgradeBtn") as Button)) != null)
			{
				button4.Visibility = Visibility.Hidden;
			}
		}

		private void CountryList_OnIsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			if (!(bool)e.NewValue)
			{
				return;
			}
			UnblockCountries unblockCountries = (UnblockCountries)((ComboBox)sender).SelectedItem;
			if (unblockCountries != null)
			{
				((ComboBox)sender).IsEnabled = (unblockCountries.CountryName != "-");
				this.ChangeDescriptionContent(unblockCountries);
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/unblockitemgrid.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.AdornerDecorator = (AdornerDecorator)target;
				return;
			case 2:
				this.SearchText = (TextBox)target;
				this.SearchText.TextChanged += new TextChangedEventHandler(this.SearchText_OnTextChanged);
				this.SearchText.PreviewTextInput += new TextCompositionEventHandler(this.SearchText_PreviewTextInput);
				return;
			case 3:
				this.TileGrid = (Grid)target;
				return;
			case 4:
				this.UnblockDataGrid = (ItemsControl)target;
				return;
			default:
				if (connectionId != 12)
				{
					this._contentLoaded = true;
					return;
				}
				this.LoadingRing = (ModernProgressRing)target;
				return;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 5:
				((Grid)target).MouseEnter += new MouseEventHandler(this.Overlay1_MouseEnter);
				((Grid)target).MouseLeave += new MouseEventHandler(this.Overlay1_OnMouseLeave);
				return;
			case 6:
				((Button)target).Click += new RoutedEventHandler(this.EditButton_OnClick);
				return;
			case 7:
				((Button)target).Click += new RoutedEventHandler(this.ConnectButton_OnClick);
				return;
			case 8:
				((Button)target).Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			case 9:
				((Button)target).Click += new RoutedEventHandler(this.DeleteButton_OnClick);
				return;
			case 10:
				((Grid)target).MouseEnter += new MouseEventHandler(this.Overlay2_MouseEnter);
				((Grid)target).MouseLeave += new MouseEventHandler(this.Overlay2_OnMouseLeave);
				return;
			case 11:
				((ComboBox)target).Initialized += new EventHandler(this.CountryList_OnInitialized);
				((ComboBox)target).Loaded += new RoutedEventHandler(this.CountryList_OnLoaded);
				((ComboBox)target).SelectionChanged += new SelectionChangedEventHandler(this.CountryList_SelectionChanged);
				((ComboBox)target).IsVisibleChanged += new DependencyPropertyChangedEventHandler(this.CountryList_OnIsVisibleChanged);
				return;
			default:
				return;
			}
		}

		[CompilerGenerated]
		private void <FocusOnSearchText>b__53_0()
		{
			this.SearchText.Focus();
		}
	}
}

using System;
using System.Collections.Generic;

namespace CyberGhost.Components
{
	public class UnblockItem
	{
		public string UName
		{
			get;
			set;
		}

		public string UNameShort
		{
			get;
			set;
		}

		public Uri UImage
		{
			get;
			set;
		}

		public bool Premium
		{
			get;
			set;
		}

		public string IconUrl
		{
			get;
			set;
		}

		public bool IsDivider
		{
			get;
			set;
		}

		public string CountryImageForGroupBox
		{
			get;
			set;
		}

		public List<int> ServerIds
		{
			get;
			set;
		}

		public bool IsCustom
		{
			get;
			set;
		}

		public bool IsNotCustom
		{
			get
			{
				return !this.IsCustom;
			}
			set
			{
				this.IsCustom = !value;
			}
		}

		public string CountryNameForGroupBox
		{
			get;
			set;
		}

		public List<UnblockCountries> UnblockCountriesList
		{
			get;
			set;
		}
	}
}

using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class UpgradeButton : UserControl, IComponentConnector
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <UpgradeButton_OnClick>d__5 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public UpgradeButton <>4__this;

			private TaskAwaiter<bool> <>u__1;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				UpgradeButton upgradeButton = this.<>4__this;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						taskAwaiter = Navigation.GoInAppPurchase(upgradeButton.CurrentProfile, "button").GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, UpgradeButton.<UpgradeButton_OnClick>d__5>(ref taskAwaiter, ref this);
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

		internal Button UpgradeBtn;

		private bool _contentLoaded;

		public CgBase CurrentProfile
		{
			get;
			set;
		}

		public UpgradeButton()
		{
			this.InitializeComponent();
		}

		[AsyncStateMachine(typeof(UpgradeButton.<UpgradeButton_OnClick>d__5))]
		private void UpgradeButton_OnClick(object sender, RoutedEventArgs e)
		{
			UpgradeButton.<UpgradeButton_OnClick>d__5 <UpgradeButton_OnClick>d__;
			<UpgradeButton_OnClick>d__.<>4__this = this;
			<UpgradeButton_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpgradeButton_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpgradeButton_OnClick>d__.<>t__builder;
			<>t__builder.Start<UpgradeButton.<UpgradeButton_OnClick>d__5>(ref <UpgradeButton_OnClick>d__);
		}

		public void SetVisibility(Button connectButton, CgApiFeature.Feature feature)
		{
			GuiHelper.SetVisibilityUpgradeButton(this, connectButton, feature);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/upgradebutton.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.UpgradeBtn = (Button)target;
				this.UpgradeBtn.Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			}
			this._contentLoaded = true;
		}
	}
}
