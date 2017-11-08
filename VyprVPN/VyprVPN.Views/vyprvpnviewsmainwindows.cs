using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using Catel.Windows.Controls;
using GoldenFrogUX.Controls;
using GoldenFrogVPN;
using GoldenFrogVPN.Interfaces;
using Log;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media.Imaging;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN.Views.MainWindow
{
	public class MainButtonAreaView : UserControl, IComponentConnector, IStyleConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly MainButtonAreaView.<>c <>9 = new MainButtonAreaView.<>c();

			public static Func<VPNServer, bool> <>9__14_1;

			public static Comparison<VPNServer> <>9__14_2;

			public static Action <>9__14_6;

			internal bool <PopulateServerLocations>b__14_1(VPNServer s)
			{
				return s.get_IsPinned();
			}

			internal int <PopulateServerLocations>b__14_2(VPNServer s1, VPNServer s2)
			{
				return string.Compare(s1.get_Location(), s2.get_Location(), StringComparison.OrdinalIgnoreCase);
			}

			internal void <PopulateServerLocations>b__14_6()
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowServerLocationWindow();
			}
		}

		private static readonly FileLogger logger = FileLogger.get_Instance();

		public static readonly DependencyProperty VpnControlsEnabledProperty = DependencyProperty.Register("VpnControlsEnabled", typeof(bool), typeof(MainButtonAreaView), new PropertyMetadata(true));

		private Button ConnectButton;

		private Button btnServerList;

		private ContextMenu Popup;

		private Button ConnectingButton;

		private ToggleButton btnCancelConnect;

		private bool _contentLoaded;

		private IUIHelper UIHelper
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null);
			}
		}

		public bool VpnControlsEnabled
		{
			get
			{
				return (bool)base.GetValue(MainButtonAreaView.VpnControlsEnabledProperty);
			}
			set
			{
				base.SetValue(MainButtonAreaView.VpnControlsEnabledProperty, value);
			}
		}

		protected IVyprVPNController VyprVPNController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			}
		}

		public MainButtonAreaView()
		{
			if (DesignerProperties.GetIsInDesignMode(this))
			{
				return;
			}
			this.InitializeComponent();
			MessageBase<FavoritesChangedMessage, IEnumerable<VPNServer>>.Register(this, delegate(FavoritesChangedMessage eData)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.PopulateServerLocations();
				});
			}, null);
			MessageBase<LocationChangedMessage, IVPNServer>.Register(this, delegate(LocationChangedMessage eData)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.PopulateServerLocations();
				});
			}, null);
			MessageBase<SettingsChangedMessage, AccountSettingsBag>.Register(this, delegate(SettingsChangedMessage eData)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.PopulateServerLocations();
				});
			}, null);
			this.PopulateServerLocations();
			this.Popup.Opened += new RoutedEventHandler(this.PopupOnOpened);
		}

		private void OnPopupClosed(object sender, EventArgs e)
		{
			DependencyObject parent = base.Parent;
			do
			{
				parent = LogicalTreeHelper.GetParent(parent);
			}
			while (parent.GetType().BaseType != typeof(Window));
			Window window = parent as Window;
			if (window == null)
			{
				MainButtonAreaView.logger.Log(1, "Cannot handle popup closed event on main button; parent window not found!");
				return;
			}
			window.Opacity = 0.99;
			window.Opacity = 1.0;
		}

		private void OnStarPreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
		}

		private void OnShowServersClick(object sender, RoutedEventArgs e)
		{
			this.Popup.IsOpen = false;
			ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).ActiveScreen = Screen.FindFastestLocation;
		}

		private void OnServerListClicked(object sender, RoutedEventArgs e)
		{
			if (!this.Popup.IsOpen)
			{
				this.Popup.PlacementTarget = this.btnServerList;
				this.Popup.Placement = PlacementMode.Bottom;
				this.Popup.IsOpen = true;
			}
		}

		private void PopulateServerLocations()
		{
			MainButtonAreaView.logger.Log(1, "MainButtonAreaView.xaml.cs: PopulateServerLocations called");
			if (this.VyprVPNController == null || this.VyprVPNController.AccountSettingsBag == null)
			{
				return;
			}
			IEnumerable<VPNServer> arg_16E_0 = this.VyprVPNController.AccountSettingsBag.get_Servers();
			BitmapImage star = new BitmapImage(new Uri("pack://application:,,,/images/Button-Star-Filled.png"));
			BitmapImage source = new BitmapImage(new Uri("pack://application:,,,/images/Button-Star-Hollow.png"));
			BitmapImage source2 = new BitmapImage(new Uri("pack://application:,,,/images/VyprWindows_FastestServer-Normal.png"));
			this.Popup.Items.Clear();
			IVPNServer currentLocation = this.VyprVPNController.VPNServer;
			string selectedLocation = (currentLocation != null) ? currentLocation.get_Location() : null;
			if (this.VyprVPNController.FastestServerSelected)
			{
				selectedLocation = Resources.FastestServer;
			}
			if (!string.IsNullOrEmpty(selectedLocation))
			{
				this.Popup.Items.Add(new MenuItem
				{
					Header = Resources.ConnectTo,
					IsEnabled = false
				});
				ItemCollection arg_149_0 = this.Popup.Items;
				MenuItem expr_112 = new MenuItem();
				expr_112.Header = selectedLocation;
				expr_112.IsChecked = true;
				expr_112.IsCheckable = false;
				SimpleCommand expr_132 = new SimpleCommand();
				expr_132.set_ExecuteDelegate(delegate(object o)
				{
					if (this.VyprVPNController.FastestServerSelected)
					{
						this.VyprVPNController.FindAndConnectToFastestServer(6);
						return;
					}
					this.PinnedServerSelected(currentLocation);
				});
				expr_112.Command = expr_132;
				arg_149_0.Add(expr_112);
			}
			Func<VPNServer, bool> arg_16E_1;
			if ((arg_16E_1 = MainButtonAreaView.<>c.<>9__14_1) == null)
			{
				arg_16E_1 = (MainButtonAreaView.<>c.<>9__14_1 = new Func<VPNServer, bool>(MainButtonAreaView.<>c.<>9.<PopulateServerLocations>b__14_1));
			}
			List<VPNServer> list = arg_16E_0.Where(arg_16E_1).ToList<VPNServer>();
			if (list.Count > 0)
			{
				List<VPNServer> arg_1A2_0 = list;
				Comparison<VPNServer> arg_1A2_1;
				if ((arg_1A2_1 = MainButtonAreaView.<>c.<>9__14_2) == null)
				{
					arg_1A2_1 = (MainButtonAreaView.<>c.<>9__14_2 = new Comparison<VPNServer>(MainButtonAreaView.<>c.<>9.<PopulateServerLocations>b__14_2));
				}
				arg_1A2_0.Sort(arg_1A2_1);
				list.ForEach(delegate(VPNServer s)
				{
					if (s.get_Location() != null && s.get_Location() != selectedLocation)
					{
						this.Popup.Items.Add(new MenuItem
						{
							Header = s.get_Location(),
							Command = new AsynchronousCommand(delegate
							{
								this.PinnedServerSelected(s);
							}, null, null),
							Icon = new Image
							{
								Source = star
							}
						});
					}
				});
			}
			else
			{
				this.Popup.Items.Add(new MenuItem
				{
					Header = Resources.NoFavoritedServers,
					Icon = new Image
					{
						Source = source
					}
				});
			}
			if (!this.VyprVPNController.FastestServerSelected)
			{
				ItemCollection arg_245_0 = this.Popup.Items;
				MenuItem expr_20B = new MenuItem();
				expr_20B.Header = Resources.FastestServer;
				expr_20B.Icon = new Image
				{
					Source = source2
				};
				SimpleCommand expr_22E = new SimpleCommand();
				expr_22E.set_ExecuteDelegate(delegate(object o)
				{
					if (this.VyprVPNController.IsLoggedIn)
					{
						this.VyprVPNController.FindAndConnectToFastestServer(6);
					}
				});
				expr_20B.Command = expr_22E;
				arg_245_0.Add(expr_20B);
			}
			this.Popup.Items.Add(new Separator());
			ItemCollection arg_2A8_0 = this.Popup.Items;
			MenuItem expr_271 = new MenuItem();
			expr_271.Header = Resources.ShowServers;
			Action arg_29E_0;
			if ((arg_29E_0 = MainButtonAreaView.<>c.<>9__14_6) == null)
			{
				arg_29E_0 = (MainButtonAreaView.<>c.<>9__14_6 = new Action(MainButtonAreaView.<>c.<>9.<PopulateServerLocations>b__14_6));
			}
			expr_271.Command = new Command(arg_29E_0, null, null);
			arg_2A8_0.Add(expr_271);
		}

		private void PinnedServerSelected(IVPNServer server)
		{
			if (server != null)
			{
				this.VyprVPNController.FastestServerSelected = false;
				this.VyprVPNController.VPNServer = server;
				Task.Run(delegate
				{
					this.VyprVPNController.Connect(6);
				});
			}
		}

		private void PopupOnOpened(object sender, RoutedEventArgs routedEventArgs)
		{
			this.UIHelper.LocalizeUI(this.Popup, Thread.CurrentThread, false);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/mainwindow/mainbuttonarea/mainbuttonareaview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 2:
				this.ConnectButton = (Button)target;
				return;
			case 3:
				this.btnServerList = (Button)target;
				this.btnServerList.Click += new RoutedEventHandler(this.OnServerListClicked);
				return;
			case 4:
				this.Popup = (ContextMenu)target;
				this.Popup.Closed += new RoutedEventHandler(this.OnPopupClosed);
				return;
			case 5:
				this.ConnectingButton = (Button)target;
				return;
			case 6:
				this.btnCancelConnect = (ToggleButton)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				((Image)target).PreviewMouseLeftButtonDown += new MouseButtonEventHandler(this.OnStarPreviewMouseLeftButtonDown);
			}
		}
	}
}

using Catel.IoC;
using GoldenFrogUX;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Interop;
using System.Windows.Markup;
using VyprVPN.Classes;
using VyprVPN.Properties;

namespace VyprVPN.Views.MainWindow
{
	public class MainWindowView : Window, IComponentConnector
	{
		private readonly FileLogger logger = FileLogger.get_Instance();

		internal MainWindowView MainWindow;

		internal Grid LayoutGrid;

		internal Grid NotificationGrid;

		internal ItemsControl NotificationsListView;

		internal StackPanel PrimaryViewportBorder;

		internal GraphView GraphView;

		private bool _contentLoaded;

		protected IVyprVPNController VyprVPNController
		{
			get
			{
				if (DesignerProperties.GetIsInDesignMode(this))
				{
					return new VyprVPNController();
				}
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			}
		}

		public MainWindowView()
		{
			if (DesignerProperties.GetIsInDesignMode(this))
			{
				return;
			}
			this.logger.Log(0, "Loading main window");
			try
			{
				this.InitializeComponent();
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
				Application.Current.MainWindow = this;
			}
			catch (Exception ex)
			{
				this.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				throw;
			}
		}

		private void OnLoaded(object sender, RoutedEventArgs e)
		{
			try
			{
				ISettings settings = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				WindowHelpers.RestoreWindowLocation(this, settings.MainWindowStartupLocation);
			}
			catch (Exception ex)
			{
				this.logger.Log(1, "Failed to restore main window location on load: {0}", new object[]
				{
					ex
				});
			}
		}

		private void OnUnloaded(object sender, RoutedEventArgs e)
		{
			this.UpdateStartupLocation();
		}

		private void OnIsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			this.UpdateStartupLocation();
		}

		private void UpdateStartupLocation()
		{
			try
			{
				if (base.IsLoaded)
				{
					ISettings expr_13 = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
					expr_13.MainWindowStartupLocation = new Point(base.Left, base.Top);
					expr_13.Save();
				}
			}
			catch (Exception ex)
			{
				this.logger.Log(3, "Unexpected error saving Main Window UI settings: {0}", new object[]
				{
					ex
				});
			}
		}

		protected override void OnSourceInitialized(EventArgs e)
		{
			base.OnSourceInitialized(e);
			HwndSource hwndSource = HwndSource.FromHwnd(new WindowInteropHelper(this).Handle);
			if (hwndSource != null)
			{
				hwndSource.AddHook(new HwndSourceHook(this.WndProc));
			}
		}

		private IntPtr WndProc(IntPtr hwnd, int msg, IntPtr wParam, IntPtr lParam, ref bool handled)
		{
			if (msg == NativeMethods.WM_SHOWMAINWINDOW)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).ShowApplicationWindow();
			}
			return IntPtr.Zero;
		}

		protected override void OnPropertyChanged(DependencyPropertyChangedEventArgs e)
		{
			if (e.Property == UIElement.VisibilityProperty && e.NewValue != e.OldValue && e.NewValue is Visibility)
			{
				if ((Visibility)e.NewValue == Visibility.Visible)
				{
					try
					{
						ISettings settings = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
						WindowHelpers.RestoreWindowLocation(this, settings.MainWindowStartupLocation);
						goto IL_C3;
					}
					catch (Exception ex)
					{
						this.logger.Log(1, "Failed to restore main window location on visibilty changed: {0}", new object[]
						{
							ex
						});
						goto IL_C3;
					}
				}
				try
				{
					ISettings expr_87 = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
					expr_87.MainWindowStartupLocation = new Point(base.Left, base.Top);
					expr_87.Save();
				}
				catch (Exception ex2)
				{
					this.logger.Log(3, "Failed to save main window location on visibilty changed: {0}", new object[]
					{
						ex2
					});
				}
			}
			IL_C3:
			base.OnPropertyChanged(e);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/mainwindow/mainwindowview.xaml", UriKind.Relative);
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
				this.MainWindow = (MainWindowView)target;
				this.MainWindow.IsVisibleChanged += new DependencyPropertyChangedEventHandler(this.OnIsVisibleChanged);
				this.MainWindow.Loaded += new RoutedEventHandler(this.OnLoaded);
				this.MainWindow.Unloaded += new RoutedEventHandler(this.OnUnloaded);
				return;
			case 2:
				this.LayoutGrid = (Grid)target;
				return;
			case 3:
				this.NotificationGrid = (Grid)target;
				return;
			case 4:
				this.NotificationsListView = (ItemsControl)target;
				return;
			case 5:
				this.PrimaryViewportBorder = (StackPanel)target;
				return;
			case 6:
				this.GraphView = (GraphView)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using System;
using System.Windows;
using System.Windows.Controls;
using VyprVPN.Classes.Notifications;

namespace VyprVPN.Views.MainWindow
{
	public class NotificationTemplateSelector : DataTemplateSelector
	{
		public DataTemplate FreeTrialNotificationTemplate
		{
			get;
			set;
		}

		public DataTemplate UpgradeNotificationTemplate
		{
			get;
			set;
		}

		public DataTemplate AccountStateNotificationTemplate
		{
			get;
			set;
		}

		public DataTemplate NotificationTemplate
		{
			get;
			set;
		}

		public DataTemplate UBAUsageNotificationTemplate
		{
			get;
			set;
		}

		public DataTemplate InAppExpiryNotificationTemplate
		{
			get;
			set;
		}

		public override DataTemplate SelectTemplate(object item, DependencyObject container)
		{
			if (item is UpgradeNotification)
			{
				return this.UpgradeNotificationTemplate;
			}
			if (item is AccountStateNotification)
			{
				return this.AccountStateNotificationTemplate;
			}
			if (item is FreeTrialNotification)
			{
				return this.FreeTrialNotificationTemplate;
			}
			if (item is UBAUsageNotification)
			{
				return this.UBAUsageNotificationTemplate;
			}
			if (item is InAppPurchaseExpiryNotification)
			{
				return this.InAppExpiryNotificationTemplate;
			}
			return this.NotificationTemplate;
		}
	}
}

using Catel.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Markup;
using System.Windows.Shapes;

namespace VyprVPN.Views.MainWindow
{
	public class StatusbarView : UserControl, IComponentConnector
	{
		internal Path DownArrowPath;

		internal Path UpArrowPath;

		private bool _contentLoaded;

		public StatusbarView()
		{
			this.InitializeComponent();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/mainwindow/statusbar/statusbarview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.DownArrowPath = (Path)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.UpArrowPath = (Path)target;
		}
	}
}

using Catel.Windows.Controls;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace VyprVPN.Views.MainWindow
{
	public class TitlebarView : UserControl, IComponentConnector
	{
		private static readonly FileLogger logger = FileLogger.get_Instance();

		public static readonly DependencyProperty ParentWindowProperty = DependencyProperty.Register("ParentWindow", typeof(Window), typeof(TitlebarView), new PropertyMetadata(null));

		private bool _contentLoaded;

		public Window ParentWindow
		{
			private get
			{
				return (Window)base.GetValue(TitlebarView.ParentWindowProperty);
			}
			set
			{
				base.SetValue(TitlebarView.ParentWindowProperty, value);
			}
		}

		public TitlebarView()
		{
			try
			{
				this.InitializeComponent();
			}
			catch (Exception ex)
			{
				TitlebarView.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				throw;
			}
		}

		private void OnTitlebarMouseDown(object sender, MouseButtonEventArgs e)
		{
			Window parentWindow = this.ParentWindow;
			if (parentWindow == null)
			{
				TitlebarView.logger.Log(1, "Cannot drag window; parent window not found!");
				return;
			}
			parentWindow.DragMove();
		}

		private void OnMinimizeClick(object sender, RoutedEventArgs e)
		{
			Window parentWindow = this.ParentWindow;
			if (parentWindow == null)
			{
				TitlebarView.logger.Log(1, "Cannot minimize window; parent window not found!");
				return;
			}
			parentWindow.WindowState = WindowState.Minimized;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/mainwindow/titlebar/titlebarview.xaml", UriKind.Relative);
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
			if (connectionId == 1)
			{
				((Border)target).MouseLeftButtonDown += new MouseButtonEventHandler(this.OnTitlebarMouseDown);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			((Button)target).Click += new RoutedEventHandler(this.OnMinimizeClick);
		}
	}
}
