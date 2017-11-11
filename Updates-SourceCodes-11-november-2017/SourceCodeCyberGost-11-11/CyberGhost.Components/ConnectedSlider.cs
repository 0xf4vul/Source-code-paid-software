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
			ObjectHolder.MainContext.Post(delegate(object o)
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
			}, null);
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
			ObjectHolder.MainContext.Post(delegate(object o)
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
			}, null);
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
				ObjectHolder.MainContext.Post(delegate(object o)
				{
					this._stopWatch.Start();
					this._generalDispatcherTimer.Start();
				}, null);
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

		public static async Task FadeElementsIn(TextBlock lblUpLeftFirstLine, TextBlock lblUpLeftSecondLine, Image lblImageCountry, TextBlock lblDownLeftSecondLine, TextBlock lblDownLeftFirstLine, TextBlock lblUpRightFirstLine, TextBlock lblUpRightSecondLine, Image imageUpLeft, Image imageDownLeft, Image imageUpRight)
		{
			for (int i = 0; i <= 10; i++)
			{
				double opacity = 0.0;
				if (i == 10)
				{
					opacity = 1.0;
				}
				else if (i != 10)
				{
					opacity = (double)i / 10.0;
				}
				TaskAwaiter var_1 = Task.Delay(20).GetAwaiter();
				if (!var_1.IsCompleted)
				{
					await var_1;
					TaskAwaiter taskAwaiter;
					var_1 = taskAwaiter;
					taskAwaiter = default(TaskAwaiter);
				}
				var_1.GetResult();
				var_1 = default(TaskAwaiter);
				lblUpLeftFirstLine.Opacity = opacity;
				lblUpLeftSecondLine.Opacity = opacity;
				lblImageCountry.Opacity = opacity;
				lblDownLeftSecondLine.Opacity = opacity;
				lblDownLeftFirstLine.Opacity = opacity;
				lblUpRightFirstLine.Opacity = opacity;
				lblUpRightSecondLine.Opacity = opacity;
				imageUpLeft.Opacity = opacity;
				imageDownLeft.Opacity = opacity;
				imageUpRight.Opacity = opacity;
			}
		}

		public static async Task FadeElementsOut(TextBlock lblUpLeftFirstLine, TextBlock lblUpLeftSecondLine, Image lblImageCountry, TextBlock lblDownLeftSecondLine, TextBlock lblDownLeftFirstLine, TextBlock lblUpRightFirstLine, TextBlock lblUpRightSecondLine, Image imageUpLeft, Image imageDownLeft, Image imageUpRight)
		{
			for (int i = 10; i >= 0; i--)
			{
				double opacity = 0.0;
				if (i == 10)
				{
					opacity = 1.0;
				}
				else if (i != 10)
				{
					opacity = (double)i / 10.0;
				}
				TaskAwaiter var_1 = Task.Delay(20).GetAwaiter();
				if (!var_1.IsCompleted)
				{
					await var_1;
					TaskAwaiter taskAwaiter;
					var_1 = taskAwaiter;
					taskAwaiter = default(TaskAwaiter);
				}
				var_1.GetResult();
				var_1 = default(TaskAwaiter);
				lblUpLeftFirstLine.Opacity = opacity;
				lblUpLeftSecondLine.Opacity = opacity;
				lblImageCountry.Opacity = opacity;
				lblDownLeftSecondLine.Opacity = opacity;
				lblDownLeftFirstLine.Opacity = opacity;
				lblUpRightFirstLine.Opacity = opacity;
				lblUpRightSecondLine.Opacity = opacity;
				imageUpLeft.Opacity = opacity;
				imageDownLeft.Opacity = opacity;
				imageUpRight.Opacity = opacity;
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
	}
}
