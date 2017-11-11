using CyberGhost.Helpers;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using CyberGhost.Translations;
using CyberGhost.VPNServices;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using WpfAnimatedGif;

namespace CyberGhost.Pages.Connected
{
	public class ConnectedUnblock : UserControl, IComponentConnector, IDisposable, IConnectionStates, IContent
	{
		internal ImageBrush GridBackground;

		internal StackPanel StackPanelHeaderName;

		internal TextBlock LblName;

		internal TextBlock LblUrl;

		internal StackPanel StackPanelTimer;

		internal Image LblImageCountry;

		internal TextBlock LblCountry;

		internal StackPanel StackPanelTracking;

		internal StackPanel FeedbackPanel;

		internal Button YesButton;

		internal Label LblYes;

		internal Button NoButton;

		internal Label LblNo;

		internal TextBlock LblFeedback;

		internal Image Unblocking;

		internal Image UnblockingAnimated;

		internal Label StatusMessage;

		internal TextBlock CancelConnection;

		internal StackPanel HintContainer;

		internal TextBlock Hint;

		internal StackPanel FeatureContainer;

		internal Grid DescriptionGrid;

		internal TextBlock DescriptionText;

		internal ModernProgressRing LoadingBar;

		internal Button ConnectBtn;

		private bool _contentLoaded;

		private bool VisitCounterIncremented
		{
			get;
			set;
		}

		private Uri StatsUnblockGhostieBackground
		{
			get;
			set;
		}

		private Uri IconPlayPath
		{
			get;
			set;
		}

		public ConnectedUnblock()
		{
			this.InitializeComponent();
			this.YesButton.DataContext = SettingsHolder.get_Settings().get_ProfileUnblock();
			this.NoButton.DataContext = SettingsHolder.get_Settings().get_ProfileUnblock();
			SettingsHolder.get_Settings().get_ProfileUnblock().add_OnDidItWorkEvent(new CgProfileUnblock.DidItWorkReplied(this.ProfileUnblock_OnDidItWorkEvent));
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.StatsUnblockGhostieBackground = new Uri(Theming.GetThemedImage("Background\\stats-unlock-ghostie.gif"));
			this.IconPlayPath = new Uri(Theming.GetThemedImage("Icons\\Functions\\icon_play.png"));
			BitmapImage bitmapImage = new BitmapImage();
			bitmapImage.BeginInit();
			bitmapImage.UriSource = this.StatsUnblockGhostieBackground;
			bitmapImage.EndInit();
			ImageBehavior.SetAnimatedSource(this.UnblockingAnimated, bitmapImage);
			this.GridBackground.ImageSource = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\unblockBack.png")));
			this.Unblocking.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\stats-unlock-ghostie.png")));
		}

		public void OnBeforeConnect(bool isReconnect, bool isAppProtection)
		{
			this.CancelConnection.Visibility = Visibility.Visible;
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.YesButton.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Hidden;
			this.NoButton.Visibility = Visibility.Hidden;
			this.LblNo.Visibility = Visibility.Hidden;
			this.HintContainer.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status._CONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Visible;
			this.UnblockingAnimated.Visibility = Visibility.Hidden;
			this.SetCountryLabel();
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode();
			this.LblCountry.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
		}

		public void OnBeforeDisconnect()
		{
			this.FeedbackPanel.Visibility = Visibility.Hidden;
			this.VisitCounterIncremented = false;
			this.LblFeedback.Visibility = Visibility.Hidden;
			this.YesButton.Visibility = Visibility.Hidden;
			this.LblYes.Visibility = Visibility.Hidden;
			this.NoButton.Visibility = Visibility.Hidden;
			this.LblNo.Visibility = Visibility.Hidden;
			this.FeatureContainer.Visibility = Visibility.Hidden;
			this.StatusMessage.Content = Status._DISCONNECTING;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Visible;
			this.UnblockingAnimated.Visibility = Visibility.Hidden;
			this.ConnectBtn.Visibility = Visibility.Hidden;
			this.LoadingBar.Visibility = Visibility.Visible;
			this.LblFeedback.Text = Profiles.DIDITWORK;
			this.LblYes.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
			ObjectHolder.CurrentConnectionTime = null;
		}

		public void OnAfterConnected(bool isReconnect, bool isAppProtection)
		{
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode();
			this.LblCountry.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			SettingsHolder.get_Settings().get_ProfileUnblock().set_DidItWorkDisabled(false);
			if (!this.VisitCounterIncremented)
			{
				GuiHelper.SetLastUsedProfile(ObjectHolder.CurrentProfile.GetBaseName());
				this.VisitCounterIncremented = true;
			}
			this.CancelConnection.Visibility = Visibility.Hidden;
			if (SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage() != null && !SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage().Contains("24/.png"))
			{
				this.LblImageCountry.Source = new BitmapImage(new Uri(SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryImage()));
			}
			this.DescriptionText.Text = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemDescription();
			this.DescriptionText.Visibility = Visibility.Hidden;
			this.DescriptionGrid.Visibility = Visibility.Hidden;
			this.HintContainer.Visibility = Visibility.Hidden;
			this.FeatureContainer.Visibility = Visibility.Visible;
			this.StatusMessage.Content = string.Format("{0} {1}", Status._YOU_ARE_CURRENTLY_UNBLOCKING_, SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemName());
			this.LoadingBar.Visibility = Visibility.Hidden;
			this.Unblocking.Visibility = Visibility.Hidden;
			this.UnblockingAnimated.Visibility = Visibility.Visible;
			this.FeatureContainer.Visibility = Visibility.Visible;
			this.ConnectBtn.Visibility = Visibility.Visible;
			if (ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				if (ObjectHolder.CurrentProfile != null)
				{
					McProfileLogItem expr_173 = new McProfileLogItem();
					expr_173.set_FeatureAdBlock(ObjectHolder.CurrentProfile.get_FeatureAdBlock());
					expr_173.set_FeatureApp(ObjectHolder.CurrentProfile.get_FeatureApp());
					expr_173.set_FeatureBrowserAgent(ObjectHolder.CurrentProfile.get_FeatureBrowserAgent());
					expr_173.set_FeatureBrowserLanguage(ObjectHolder.CurrentProfile.get_FeatureBrowserLanguage());
					expr_173.set_FeatureHttps(ObjectHolder.CurrentProfile.get_FeatureHttps());
					expr_173.set_FeatureMalware(ObjectHolder.CurrentProfile.get_FeatureMalware());
					expr_173.set_FeatureScout(ObjectHolder.CurrentProfile.get_FeatureScout());
					expr_173.set_FeatureTracking(ObjectHolder.CurrentProfile.get_FeatureTracking());
					expr_173.set_FeatureZip(ObjectHolder.CurrentProfile.get_FeatureZip());
					expr_173.set_ProfileName(ObjectHolder.CurrentProfile.get_ProfileName());
					McProfileLogItem aEvent = expr_173;
					ObjectHolder.EventLogger.LogLocalEvent(aEvent);
				}
				ObjectHolder.FirstTimeVisitedConnectedScreen = false;
			}
		}

		public void OnAfterDisconnected()
		{
		}

		public void OnConnectionStatusChanged(ConnectionStatus connectionStatus)
		{
			if (connectionStatus != null && connectionStatus != 20)
			{
				this.CancelConnection.Visibility = Visibility.Visible;
			}
			if (connectionStatus != null)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.DataBind, new Action(delegate
				{
					this.ConnectBtn.Visibility = Visibility.Hidden;
					this.LoadingBar.Visibility = Visibility.Visible;
					if (connectionStatus == 10000)
					{
						this.StatusMessage.Content = Status._CONNECTING;
						return;
					}
					if (connectionStatus == 20)
					{
						this.StatusMessage.Content = Status._DISCONNECTING;
					}
				}));
				return;
			}
			if (!ObjectHolder.FirstTimeVisitedConnectedScreen)
			{
				base.Dispatcher.BeginInvoke(DispatcherPriority.Send, new Action(delegate
				{
					this.OnAfterConnected(false, false);
				}));
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			GuiHelper.SetRandomHint(this.Hint, "unblock");
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUnblock();
			GuiHelper.StopInactivityCheck();
			ObjectHolder.CurrentConnectingScreen = this;
			ConnectionStatus connectionStatus = ObjectHolder.ConnectionStatus;
			if (connectionStatus != null)
			{
				if (connectionStatus == 10)
				{
					this.OnBeforeConnect(false, false);
				}
			}
			else
			{
				this.OnAfterConnected(false, false);
			}
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Status.Stop_Ghost_Streaming : string.Format("{0} {1}", Profiles.STOP, SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemNameShort()));
			this.LblName.Text = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemNameShort();
			this.LblUrl.Text = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemUrl();
			string selectedItemCountryCode = SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode();
			this.LblCountry.Text = GuiHelper.FindTranslationForCountry(selectedItemCountryCode);
			this.LblImageCountry.Source = new BitmapImage(this.IconPlayPath);
			this.SetCountryLabel();
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.MainForm.set_IsSubNavigationVisible(false);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			ObjectHolder.MainForm.set_IsSubNavigationVisible(true);
		}

		public void Dispose()
		{
			if (SettingsHolder.get_Settings().get_ProfileUnblock() == null)
			{
				return;
			}
			SettingsHolder.get_Settings().get_ProfileUnblock().remove_OnDidItWorkEvent(new CgProfileUnblock.DidItWorkReplied(this.ProfileUnblock_OnDidItWorkEvent));
		}

		private void SetCountryLabel()
		{
			try
			{
				if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode()))
				{
					this.LblImageCountry.Source = new BitmapImage(new Uri(Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedItemCountryCode())))));
				}
			}
			catch (Exception)
			{
			}
		}

		private void DoDisconnect(object sender, RoutedEventArgs e)
		{
			this.OnBeforeDisconnect();
			ObjectHolder.MainForm.Disconnect();
		}

		private void NoButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.SetFeedbackContent(false);
		}

		private void YesButton_OnClick(object sender, RoutedEventArgs e)
		{
			this.SetFeedbackContent(true);
		}

		[AsyncStateMachine(typeof(ConnectedUnblock.<SetFeedbackContent>d__28))]
		private void SetFeedbackContent(bool rating)
		{
			ConnectedUnblock.<SetFeedbackContent>d__28 <SetFeedbackContent>d__;
			<SetFeedbackContent>d__.<>4__this = this;
			<SetFeedbackContent>d__.rating = rating;
			<SetFeedbackContent>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SetFeedbackContent>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SetFeedbackContent>d__.<>t__builder;
			<>t__builder.Start<ConnectedUnblock.<SetFeedbackContent>d__28>(ref <SetFeedbackContent>d__);
		}

		private void CancelConnection_OnMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
		{
			ObjectHolder.MainForm.Disconnect();
			this.CancelConnection.Visibility = Visibility.Hidden;
		}

		private void ProfileUnblock_OnDidItWorkEvent(object sender, DidItWorkEventArgs args)
		{
			if (sender == null || args == null)
			{
				return;
			}
			if (args.get_HasBeenReplied())
			{
				this.LblFeedback.Text = Profiles.Thank_you_for_your_feedback;
				this.FeedbackPanel.Visibility = Visibility.Visible;
				this.LblFeedback.Visibility = Visibility.Visible;
				this.YesButton.Visibility = Visibility.Hidden;
				this.LblYes.Visibility = Visibility.Hidden;
				this.NoButton.Visibility = Visibility.Hidden;
				this.LblNo.Visibility = Visibility.Hidden;
				return;
			}
			this.LblFeedback.Text = Profiles.DIDITWORK;
			this.FeedbackPanel.Visibility = Visibility.Visible;
			this.LblFeedback.Visibility = Visibility.Visible;
			this.YesButton.Visibility = Visibility.Visible;
			this.LblYes.Visibility = Visibility.Visible;
			this.NoButton.Visibility = Visibility.Visible;
			this.LblNo.Visibility = Visibility.Visible;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/connected/connectedunblock.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.GridBackground = (ImageBrush)target;
				return;
			case 2:
				this.StackPanelHeaderName = (StackPanel)target;
				return;
			case 3:
				this.LblName = (TextBlock)target;
				return;
			case 4:
				this.LblUrl = (TextBlock)target;
				return;
			case 5:
				this.StackPanelTimer = (StackPanel)target;
				return;
			case 6:
				this.LblImageCountry = (Image)target;
				return;
			case 7:
				this.LblCountry = (TextBlock)target;
				return;
			case 8:
				this.StackPanelTracking = (StackPanel)target;
				return;
			case 9:
				this.FeedbackPanel = (StackPanel)target;
				return;
			case 10:
				this.YesButton = (Button)target;
				this.YesButton.Click += new RoutedEventHandler(this.YesButton_OnClick);
				return;
			case 11:
				this.LblYes = (Label)target;
				this.LblYes.MouseLeftButtonUp += new MouseButtonEventHandler(this.YesButton_OnClick);
				return;
			case 12:
				this.NoButton = (Button)target;
				this.NoButton.Click += new RoutedEventHandler(this.NoButton_OnClick);
				return;
			case 13:
				this.LblNo = (Label)target;
				this.LblNo.MouseLeftButtonUp += new MouseButtonEventHandler(this.NoButton_OnClick);
				return;
			case 14:
				this.LblFeedback = (TextBlock)target;
				return;
			case 15:
				this.Unblocking = (Image)target;
				return;
			case 16:
				this.UnblockingAnimated = (Image)target;
				return;
			case 17:
				this.StatusMessage = (Label)target;
				return;
			case 18:
				this.CancelConnection = (TextBlock)target;
				this.CancelConnection.MouseLeftButtonUp += new MouseButtonEventHandler(this.CancelConnection_OnMouseLeftButtonUp);
				return;
			case 19:
				this.HintContainer = (StackPanel)target;
				return;
			case 20:
				this.Hint = (TextBlock)target;
				return;
			case 21:
				this.FeatureContainer = (StackPanel)target;
				return;
			case 22:
				this.DescriptionGrid = (Grid)target;
				return;
			case 23:
				this.DescriptionText = (TextBlock)target;
				return;
			case 24:
				this.LoadingBar = (ModernProgressRing)target;
				return;
			case 25:
				this.ConnectBtn = (Button)target;
				this.ConnectBtn.Click += new RoutedEventHandler(this.DoDisconnect);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
