using Catel.Data;
using Catel.IoC;
using GoldenFrogVPN;
using GoldenFrogVPN.Enums;
using GoldenFrogVPN.Interfaces;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Data;
using VyprVPN.Classes;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public class DesignFindFastestLocationViewModel : VyprViewModel
	{
		public static readonly PropertyData SelectedLocationProperty = ModelBase.RegisterProperty("SelectedLocation", typeof(IPingServerWrapper), null, null, true, true, true);

		public static readonly PropertyData ServerListProperty = ModelBase.RegisterProperty("ServerList", typeof(ServerList), null, null, true, true, true);

		public static readonly PropertyData ServerListViewProperty = ModelBase.RegisterProperty("ServerListView", typeof(ICollectionView), null, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData ServerListProperty;

		[CompilerGenerated]
		public static readonly PropertyData ServerListViewProperty;

		public IPingServerWrapper SelectedLocation
		{
			get
			{
				return base.GetValue<IPingServerWrapper>(ServerListWindowViewModel.SelectedLocationProperty);
			}
			set
			{
				base.SetValue(ServerListWindowViewModel.SelectedLocationProperty, value);
			}
		}

		public ServerList ServerList
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<ServerList>(DesignFindFastestLocationViewModel.ServerListProperty);
			}
			[CompilerGenerated]
			private set
			{
				base.SetValue(DesignFindFastestLocationViewModel.ServerListProperty, value);
			}
		}

		public ICollectionView ServerListView
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<ICollectionView>(DesignFindFastestLocationViewModel.ServerListViewProperty);
			}
			[CompilerGenerated]
			private set
			{
				base.SetValue(DesignFindFastestLocationViewModel.ServerListViewProperty, value);
			}
		}

		public DesignFindFastestLocationViewModel()
		{
			ServiceLocatorExtensions.RegisterInstance<IServiceEventsSource>(ObjectExtensions.GetServiceLocator(this), new VyprVPNServiceSubscriber(), null);
			ServiceLocatorExtensions.RegisterInstance<IIPCServer>(ObjectExtensions.GetServiceLocator(this), new TestIPCClient(), null);
			ServiceLocatorExtensions.RegisterInstance<IVyprVPNController>(ObjectExtensions.GetServiceLocator(this), new VyprVPNController(), null);
			List<IPingServerWrapper> expr_3E = new List<IPingServerWrapper>();
			expr_3E.Add(new PingServerWrapper(new VPNServer("test1.datafoundry.com", "test1.datafoundry.com", "10.10.10.100", "Test1", 1, "USA", "North America", new List<Protocol>
			{
				1,
				0
			})));
			VPNServer expr_B8 = new VPNServer("test1.goldenfrog.com", "test1.datafoundry.com", "10.10.10.101", "Test2", 1, "USA", "North America", new List<Protocol>
			{
				2,
				3
			});
			expr_B8.set_IsPinned(true);
			expr_3E.Add(new PingServerWrapper(expr_B8));
			expr_3E.Add(new PingServerWrapper(new VPNServer("test1.giganews.com", "test1.datafoundry.com", "10.10.10.100", "Test3", 1, "USA", "North America", new List<Protocol>
			{
				2,
				0
			})));
			List<IPingServerWrapper> designTimeServerWrappers = expr_3E;
			this.ServerList = new ServerList(designTimeServerWrappers);
			this.SelectedLocation = this.ServerList.Locations[1];
			this.ServerListView = CollectionViewSource.GetDefaultView(this.ServerList.Locations);
		}

		public void OnSelectionChanged(SelectionChangedEventArgs e)
		{
			IVPNServer vPNServer = this.SelectedLocation.VPNServer;
			base.logger.Log(0, "Setting server on selection: {0}", new object[]
			{
				vPNServer
			});
			base.VyprVPNController.VPNServer = vPNServer;
		}

		public void OnSelectionDoubleClicked(EventArgs e)
		{
			base.logger.Log(0, "Connecting on double click!");
			Task.Run(delegate
			{
				base.VyprVPNController.Connect(6);
			});
		}
	}
}

using Catel.MVVM;
using GoldenFrogVPN.Interfaces;
using System;
using System.ComponentModel;
using System.Windows.Media.Imaging;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public interface IPingServerWrapper : INotifyPropertyChanged
	{
		Command FavoriteStarClicked
		{
			get;
		}

		BitmapImage Flag
		{
			get;
			set;
		}

		string FlagPath
		{
			get;
			set;
		}

		string FQDN
		{
			get;
			set;
		}

		bool IsPingable
		{
			get;
		}

		string Location
		{
			get;
			set;
		}

		bool PingSuccess
		{
			get;
			set;
		}

		long PingTime
		{
			get;
			set;
		}

		string Region
		{
			get;
			set;
		}

		IVPNServer VPNServer
		{
			get;
		}

		IVyprVPNController VyprVPNController
		{
			get;
		}

		bool IsFastestServerStandin
		{
			get;
		}
	}
}

using GoldenFrogVPN.Interfaces;
using System;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public interface IPingServerWrapperFactory
	{
		IPingServerWrapper MakeIPingServerWrapper(IVPNServer s);
	}
}

using System;
using System.Collections.ObjectModel;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public interface IServerList : IDisposable
	{
		event PingTimeUpdatedEventHandler PingTimeUpdated;

		int ActivePingCount
		{
			get;
			set;
		}

		IPingServerWrapper FastestServer
		{
			get;
			set;
		}

		ObservableCollection<IPingServerWrapper> Locations
		{
			get;
			set;
		}

		void StartPingTest();
	}
}

using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using GoldenFrogUT.Utilities;
using GoldenFrogVPN;
using GoldenFrogVPN.Interfaces;
using Log;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public class PingServerWrapper : IPingServerWrapper, INotifyPropertyChanged
	{
		private bool _pingSuccess;

		private long _pingTime = -1L;

		private readonly Command _favoriteStarClickedCommand;

		private static Dictionary<string, BitmapImage> flags = new Dictionary<string, BitmapImage>();

		private string _region = string.Empty;

		private string _location = string.Empty;

		private string _fqdn = string.Empty;

		private string _flagPath = string.Empty;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		private ILogger Logger
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ILogger>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		public IVyprVPNController VyprVPNController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			}
		}

		public Command FavoriteStarClicked
		{
			get
			{
				return this._favoriteStarClickedCommand;
			}
		}

		public bool PingSuccess
		{
			get
			{
				return this._pingSuccess;
			}
			set
			{
				this._pingSuccess = value;
				this.OnPropertyChanged("PingSuccess");
			}
		}

		public BitmapImage Flag
		{
			get
			{
				string flagPath = this.FlagPath;
				if (flagPath != null && PingServerWrapper.flags.ContainsKey(flagPath))
				{
					return PingServerWrapper.flags[flagPath];
				}
				return null;
			}
			set
			{
				if (this.FlagPath != null)
				{
					PingServerWrapper.flags[this.FlagPath] = value;
					this.OnPropertyChanged("Flag");
					return;
				}
				this.Logger.Log(3, "Tried to set flag image for a ping server wrapper with a null flag path. {0}({1})", new object[]
				{
					this.Location,
					this.FQDN
				});
			}
		}

		public long PingTime
		{
			get
			{
				return this._pingTime;
			}
			set
			{
				this._pingTime = value;
				this.OnPropertyChanged("PingTime");
			}
		}

		public string Region
		{
			get
			{
				return this._region;
			}
			set
			{
				this._region = value;
				this.OnPropertyChanged("Region");
			}
		}

		public string Location
		{
			get
			{
				return this._location;
			}
			set
			{
				this._location = value;
				this.OnPropertyChanged("Location");
			}
		}

		public string FQDN
		{
			get
			{
				return this._fqdn;
			}
			set
			{
				this._fqdn = value;
				this.OnPropertyChanged("FQDN");
			}
		}

		public string FlagPath
		{
			get
			{
				return this._flagPath;
			}
			set
			{
				this._flagPath = value;
				if (value != null && !PingServerWrapper.flags.ContainsKey(value))
				{
					this.LoadFlag(value);
				}
				this.OnPropertyChanged("FlagPath");
				this.OnPropertyChanged("Flag");
			}
		}

		public bool IsPingable
		{
			get
			{
				return !string.IsNullOrEmpty(this.FQDN);
			}
		}

		public bool IsFastestServerStandin
		{
			get
			{
				return this.Region == Resources.Automatic && string.IsNullOrWhiteSpace(this.FQDN) && string.IsNullOrWhiteSpace(this.Location);
			}
		}

		public IVPNServer VPNServer
		{
			get
			{
				IVyprVPNController vyprVPNController = this.VyprVPNController;
				IVPNServer iVPNServer;
				if (vyprVPNController == null)
				{
					iVPNServer = null;
				}
				else
				{
					AccountSettingsBag accountSettingsBag = vyprVPNController.AccountSettingsBag;
					if (accountSettingsBag == null)
					{
						iVPNServer = null;
					}
					else
					{
						List<VPNServer> servers = accountSettingsBag.get_Servers();
						if (servers == null)
						{
							iVPNServer = null;
						}
						else
						{
							iVPNServer = servers.FirstOrDefault((VPNServer s) => s.get_FQDN() == this.FQDN);
							this.RefreshServerObjectProperties(iVPNServer);
						}
					}
				}
				return iVPNServer;
			}
		}

		public PingServerWrapper(IVPNServer vpnServer)
		{
			this.FQDN = vpnServer.get_FQDN();
			this.Location = vpnServer.get_Location();
			this.Region = vpnServer.get_Region();
			this.FlagPath = vpnServer.get_Flag();
			this._favoriteStarClickedCommand = new Command(delegate
			{
				MessageBase<FavoritesChangedMessage, IEnumerable<GoldenFrogVPN.VPNServer>>.SendWith(null, null);
				this.VyprVPNController.SaveFavorites();
			}, null, null);
		}

		private void RefreshServerObjectProperties(IVPNServer serverToReturn)
		{
			if (serverToReturn != null)
			{
				if (this.Location != serverToReturn.get_Location())
				{
					this.Location = serverToReturn.get_Location();
				}
				if (this.Region != serverToReturn.get_Region())
				{
					this.Region = serverToReturn.get_Region();
				}
				if (this.FlagPath != serverToReturn.get_Flag())
				{
					this.FlagPath = serverToReturn.get_Flag();
				}
			}
		}

		private void LoadFlag(string path)
		{
			Task.Run(delegate
			{
				try
				{
					if (path != null && !PingServerWrapper.flags.ContainsKey(path))
					{
						BitmapImage img = ServiceLocatorExtensions.ResolveType<IImageUtilities>(ObjectExtensions.GetServiceLocator(this), null).GetBitmapImageFromFile(path);
						if (img != null)
						{
							ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
							{
								PingServerWrapper.flags[path] = img;
								this.OnPropertyChanged("Flag");
							});
						}
					}
				}
				catch (Exception ex)
				{
					this.Logger.Log(3, "Error occured while loading flag image for {0}: {1}", new object[]
					{
						this.Location,
						ex.Message
					});
				}
			});
		}

		private void OnPropertyChanged(string propName)
		{
			PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
			if (propertyChanged != null)
			{
				propertyChanged(this, new PropertyChangedEventArgs(propName));
			}
		}
	}
}

using GoldenFrogVPN;
using System;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public delegate void PingTimeUpdatedEventHandler(object server, PingEventArgs e);
}

using Catel.Collections;
using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using GoldenFrogVPN;
using GoldenFrogVPN.Enums;
using GoldenFrogVPN.Interfaces;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public class ServerList : VyprViewModel, IServerList, IDisposable
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ServerList.<>c <>9 = new ServerList.<>c();

			public static Func<IVPNServer, string> <>9__0_0;

			public static Func<IPingServerWrapper, VPNServer> <>9__21_1;

			internal string ctor>b__0_0(IVPNServer server)
			{
				return server.get_Location();
			}

			internal VPNServer <PingSelectedServers>b__21_1(IPingServerWrapper p)
			{
				return (VPNServer)p.VPNServer;
			}
		}

		public static readonly PropertyData LocationsProperty = ModelBase.RegisterProperty("Locations", typeof(ObservableCollection<IPingServerWrapper>), null, null, true, true, true);

		public static readonly PropertyData FastestServerProperty = ModelBase.RegisterProperty("FastestServer", typeof(IPingServerWrapper), null, null, true, true, true);

		public static readonly PropertyData ActivePingCountProperty = ModelBase.RegisterProperty("ActivePingCount", typeof(int), null, null, true, true, true);

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PingTimeUpdatedEventHandler PingTimeUpdated;

		private IServiceEventsSource VpnServiceSubscriber
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

		public ObservableCollection<IPingServerWrapper> Locations
		{
			get
			{
				return base.GetValue<ObservableCollection<IPingServerWrapper>>(ServerList.LocationsProperty);
			}
			set
			{
				base.SetValue(ServerList.LocationsProperty, value);
			}
		}

		public IPingServerWrapper FastestServer
		{
			get
			{
				return base.GetValue<IPingServerWrapper>(ServerList.FastestServerProperty);
			}
			set
			{
				base.SetValue(ServerList.FastestServerProperty, value);
			}
		}

		public int ActivePingCount
		{
			get
			{
				return base.GetValue<int>(ServerList.ActivePingCountProperty);
			}
			set
			{
				base.SetValue(ServerList.ActivePingCountProperty, value);
			}
		}

		public ServerList()
		{
			this.VpnServiceSubscriber.PingCompletedEvent += new PingCompletedEventHandler(this.VpnServiceSubscriberOnPingCompletedEvent);
			IEnumerable<IVPNServer> arg_47_0 = base.VyprVPNController.Servers;
			Func<IVPNServer, string> arg_47_1;
			if ((arg_47_1 = ServerList.<>c.<>9__0_0) == null)
			{
				arg_47_1 = (ServerList.<>c.<>9__0_0 = new Func<IVPNServer, string>(ServerList.<>c.<>9.<.ctor>b__0_0));
			}
			IEnumerable<IPingServerWrapper> collection = from s in arg_47_0.OrderBy(arg_47_1)
			select ServiceLocatorExtensions.ResolveType<IPingServerWrapperFactory>(ObjectExtensions.GetServiceLocator(this), null).MakeIPingServerWrapper(s);
			this.Locations = new ObservableCollection<IPingServerWrapper>(collection);
			this.FastestServer = ServiceLocatorExtensions.ResolveType<IPingServerWrapperFactory>(ObjectExtensions.GetServiceLocator(this), null).MakeIPingServerWrapper(new VPNServer(string.Empty, string.Empty, string.Empty, string.Empty, -1, string.Empty, Resources.Automatic, new List<Protocol>()));
			this.Locations.Add(this.FastestServer);
			MessageBase<SettingsChangedMessage, AccountSettingsBag>.Register(this, new Action<SettingsChangedMessage>(this.OnAccountSettingsUpdated), null);
			base.VyprVPNController.RefreshAccountSettings(true);
		}

		public ServerList(List<IPingServerWrapper> designTimeServerWrappers)
		{
			this.Locations = new ObservableCollection<IPingServerWrapper>(designTimeServerWrappers);
		}

		~ServerList()
		{
			MessageBase<SettingsChangedMessage, AccountSettingsBag>.Unregister(this, new Action<SettingsChangedMessage>(this.OnAccountSettingsUpdated), null);
		}

		public void StartPingTest()
		{
			base.logger.Log(0, "Pinging servers");
			List<IPingServerWrapper> servers = this.Locations.ToList<IPingServerWrapper>();
			this.PingSelectedServers(servers);
		}

		private void PingSelectedServers(List<IPingServerWrapper> servers)
		{
			ServerList.<>c__DisplayClass21_0 <>c__DisplayClass21_ = new ServerList.<>c__DisplayClass21_0();
			<>c__DisplayClass21_.<>4__this = this;
			this.ActivePingCount = servers.Count<IPingServerWrapper>();
			servers.ForEach(delegate(IPingServerWrapper s)
			{
				if (s.IsPingable)
				{
					s.PingTime = 0L;
					s.PingSuccess = false;
					return;
				}
				int activePingCount = this.ActivePingCount;
				this.ActivePingCount = activePingCount - 1;
			});
			base.logger.Log(0, "Server count: {0}", new object[]
			{
				base.VyprVPNController.Servers.Count
			});
			ServerList.<>c__DisplayClass21_0 arg_80_0 = <>c__DisplayClass21_;
			Func<IPingServerWrapper, VPNServer> arg_7B_1;
			if ((arg_7B_1 = ServerList.<>c.<>9__21_1) == null)
			{
				arg_7B_1 = (ServerList.<>c.<>9__21_1 = new Func<IPingServerWrapper, VPNServer>(ServerList.<>c.<>9.<PingSelectedServers>b__21_1));
			}
			arg_80_0.vpnServers = servers.Select(arg_7B_1);
			Task.Run(delegate
			{
				<>c__DisplayClass21_.<>4__this.VyprVPNController.PingServers(<>c__DisplayClass21_.vpnServers.ToList<VPNServer>());
			});
		}

		private void OnAccountSettingsUpdated(SettingsChangedMessage obj)
		{
			List<IVPNServer> servers = base.VyprVPNController.Servers;
			ArrayList arrayList = new ArrayList();
			for (int i = 0; i < this.Locations.Count; i++)
			{
				IVPNServer vpnServer = this.Locations[i].VPNServer;
				if (vpnServer == null)
				{
					if (!this.Locations[i].IsFastestServerStandin)
					{
						arrayList.Add(this.Locations[i]);
					}
				}
				else
				{
					IVPNServer iVPNServer = servers.FirstOrDefault((IVPNServer s) => s.get_FQDN() == vpnServer.get_FQDN());
					if (iVPNServer != null)
					{
						servers.Remove(iVPNServer);
					}
				}
			}
			foreach (object current in arrayList)
			{
				this.Locations.Remove((IPingServerWrapper)current);
			}
			if (servers.Count != 0)
			{
				IEnumerable<IPingServerWrapper> enumerable = from s in servers
				select ServiceLocatorExtensions.ResolveType<IPingServerWrapperFactory>(ObjectExtensions.GetServiceLocator(this), null).MakeIPingServerWrapper(s);
				CollectionExtensions.AddRange<IPingServerWrapper>(this.Locations, enumerable);
				this.PingSelectedServers(enumerable.ToList<IPingServerWrapper>());
			}
		}

		private void VpnServiceSubscriberOnPingCompletedEvent(IVPNServer server, PingEventArgs pingEventArgs)
		{
			base.logger.Log(2, "Received ping information from service for server {0}", new object[]
			{
				server
			});
			IPingServerWrapper pingServerWrapper = this.Locations.FirstOrDefault((IPingServerWrapper psw) => psw.Location == server.get_Location());
			if (pingServerWrapper != null)
			{
				base.logger.Log(2, "Updating ping time and status for ping server wrapper");
				if (pingEventArgs != null)
				{
					base.logger.Log(0, "Ping {0} - Success: {1} - {2}ms", new object[]
					{
						server.get_Location(),
						pingEventArgs.get_Success(),
						pingEventArgs.get_RoundTripTime()
					});
					pingServerWrapper.PingTime = pingEventArgs.get_RoundTripTime();
					pingServerWrapper.PingSuccess = pingEventArgs.get_Success();
				}
				else
				{
					base.logger.Log(0, "Ping of {0} incomplete (may have been cancelled)", new object[]
					{
						server.get_Location()
					});
					pingServerWrapper.PingSuccess = false;
				}
				PingTimeUpdatedEventHandler pingTimeUpdated = this.PingTimeUpdated;
				if (pingTimeUpdated != null)
				{
					pingTimeUpdated(pingServerWrapper, pingEventArgs);
				}
			}
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.ActivePingCount--;
				base.RaisePropertyChanged<ObservableCollection<IPingServerWrapper>>(() => this.Locations);
			});
		}

		public void Dispose()
		{
			IServiceEventsSource vpnServiceSubscriber = this.VpnServiceSubscriber;
			if (vpnServiceSubscriber != null)
			{
				vpnServiceSubscriber.PingCompletedEvent -= new PingCompletedEventHandler(this.VpnServiceSubscriberOnPingCompletedEvent);
			}
		}
	}
}

using Catel.IoC;
using Catel.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using VyprVPN.Controls;
using VyprVPN.Properties;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public class ServerListWindowView : UserControl, IComponentConnector, IStyleConnector
	{
		internal AutomationVisibleTabControl TabControl;

		private bool _contentLoaded;

		private IVyprVPNController VyprVPNController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			}
		}

		public ServerListWindowView()
		{
			this.InitializeComponent();
		}

		private void LocationList_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			if (e.AddedItems == null || e.AddedItems.Count == 0)
			{
				return;
			}
			IPingServerWrapper server = e.AddedItems[0] as IPingServerWrapper;
			((ServerListWindowViewModel)base.DataContext).OnSelectionChanged(server);
		}

		private void ListBoxItem_MouseDoubleClick(object sender, EventArgs e)
		{
			((ServerListWindowViewModel)base.DataContext).OnSelectionDoubleClicked(e);
		}

		private void Ping_Click(object sender, RoutedEventArgs e)
		{
			ServerListWindowViewModel serverListWindowViewModel = base.get_ViewModel() as ServerListWindowViewModel;
			if (serverListWindowViewModel != null)
			{
				serverListWindowViewModel.ServerList.StartPingTest();
			}
		}

		private void TabControl_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			TabControl tabControl = e.Source as TabControl;
			if (tabControl != null)
			{
				TabItem tabItem = tabControl.SelectedItem as TabItem;
				if (tabItem == null)
				{
					return;
				}
				string a = tabItem.Header as string;
				if (a == Resources.All)
				{
					((ServerListWindowViewModel)base.DataContext).OnAllSelected();
					return;
				}
				if (a == Resources.ByRegion)
				{
					((ServerListWindowViewModel)base.DataContext).OnByRegionSelected();
					return;
				}
				if (a == Resources.Favorites)
				{
					((ServerListWindowViewModel)base.DataContext).OnFavoriteSelected();
					return;
				}
				if (a == Resources.Search)
				{
					((ServerListWindowViewModel)base.DataContext).OnSearchSelected();
				}
			}
		}

		private void LocationList_ColumnHeaderClickHandler(object sender, RoutedEventArgs e)
		{
			GridViewColumnHeader gridViewColumnHeader = e.OriginalSource as GridViewColumnHeader;
			if (gridViewColumnHeader != null && gridViewColumnHeader.Column.Header != null && gridViewColumnHeader.Role != GridViewColumnHeaderRole.Padding)
			{
				ISettings settings = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				ListSortDirection direction;
				if ((string)gridViewColumnHeader.Tag != settings.ServerSelectionWindowColumnSort)
				{
					direction = ListSortDirection.Ascending;
				}
				else if (settings.ServerSelectionWindowColumnSortOrder == ListSortDirection.Ascending)
				{
					direction = ListSortDirection.Descending;
				}
				else
				{
					direction = ListSortDirection.Ascending;
				}
				string sortBy = gridViewColumnHeader.Tag as string;
				((ServerListWindowViewModel)base.DataContext).SortList(sortBy, direction);
			}
		}

		protected override void OnUnloaded(EventArgs e)
		{
			if (base.DataContext is IDisposable)
			{
				((IDisposable)base.DataContext).Dispose();
			}
			base.OnUnloaded(e);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/mainwindow/serverlistwindow/serverlistwindowview.xaml", UriKind.Relative);
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
			if (connectionId == 6)
			{
				this.TabControl = (AutomationVisibleTabControl)target;
				return;
			}
			this._contentLoaded = true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
			{
				EventSetter eventSetter = new EventSetter();
				eventSetter.Event = Control.MouseDoubleClickEvent;
				eventSetter.Handler = new MouseButtonEventHandler(this.ListBoxItem_MouseDoubleClick);
				((Style)target).Setters.Add(eventSetter);
				return;
			}
			case 2:
				((ListView)target).SelectionChanged += new SelectionChangedEventHandler(this.LocationList_SelectionChanged);
				return;
			case 3:
				((GridViewColumnHeader)target).Click += new RoutedEventHandler(this.LocationList_ColumnHeaderClickHandler);
				return;
			case 4:
				((GridViewColumnHeader)target).Click += new RoutedEventHandler(this.LocationList_ColumnHeaderClickHandler);
				return;
			case 5:
				((Button)target).Click += new RoutedEventHandler(this.Ping_Click);
				return;
			default:
				return;
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using GoldenFrogVPN;
using GoldenFrogVPN.Interfaces;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Data;
using VyprVPN.Classes;
using VyprVPN.Converters;
using VyprVPN.Messages;
using VyprVPN.Properties;
using VyprVPN.Views.MainWindow.ServerListWindow.ServerListHelpers;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public class ServerListWindowViewModel : VyprViewModel, IDisposable
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ServerListWindowViewModel.<>c <>9 = new ServerListWindowViewModel.<>c();

			public static Func<IPingServerWrapper, int> <>9__7_0;

			internal int ctor>b__7_0(IPingServerWrapper s)
			{
				return s.VPNServer.get_Rank();
			}

			internal void cctor>b__74_0(object sender, AdvancedPropertyChangedEventArgs args)
			{
				if (sender != null && sender as ServerListWindowViewModel != null)
				{
					(sender as ServerListWindowViewModel).SearchStringSet = !string.IsNullOrEmpty(args.get_NewValue() as string);
				}
			}
		}

		private IServerList serverList;

		private ICollectionView serverListView;

		private const string LocationConst = "Location";

		private const string RegionConst = "Region";

		private const string PingConst = "Ping";

		public static readonly PropertyData SelectedLocationProperty = ModelBase.RegisterProperty("SelectedLocation", typeof(IPingServerWrapper), null, null, true, true, true);

		public static readonly PropertyData ServerSearchStringProperty = ModelBase.RegisterProperty<string>("ServerSearchString", typeof(string), "", new EventHandler<AdvancedPropertyChangedEventArgs>(ServerListWindowViewModel.<>c.<>9.<.cctor>b__74_0), true, true, true);

		public static readonly PropertyData SearchStringSetProperty = ModelBase.RegisterProperty<bool>("SearchStringSet", typeof(bool), false, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData RegionGroupFilterProperty = ModelBase.RegisterProperty("RegionGroupFilter", typeof(ICombinedFilter), null, null, true, true, true);

		private ISettings UISettings
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
			}
		}

		public IPingServerWrapper SelectedLocation
		{
			get
			{
				return base.GetValue<IPingServerWrapper>(ServerListWindowViewModel.SelectedLocationProperty);
			}
			set
			{
				base.SetValue(ServerListWindowViewModel.SelectedLocationProperty, value);
			}
		}

		public string ServerSearchString
		{
			get
			{
				return (string)base.GetValue(ServerListWindowViewModel.ServerSearchStringProperty);
			}
			set
			{
				base.SetValue(ServerListWindowViewModel.ServerSearchStringProperty, value);
				this.ServerListView.Refresh();
			}
		}

		public bool SearchStringSet
		{
			get
			{
				return base.GetValue<bool>(ServerListWindowViewModel.SearchStringSetProperty);
			}
			set
			{
				base.SetValue(ServerListWindowViewModel.SearchStringSetProperty, value);
			}
		}

		public IServerList ServerList
		{
			get
			{
				return this.serverList;
			}
		}

		public ICollectionView ServerListView
		{
			get
			{
				return this.serverListView;
			}
		}

		public ICombinedFilter RegionGroupFilter
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<ICombinedFilter>(ServerListWindowViewModel.RegionGroupFilterProperty);
			}
			[CompilerGenerated]
			private set
			{
				base.SetValue(ServerListWindowViewModel.RegionGroupFilterProperty, value);
			}
		}

		public bool ServerRegionNorthAmericaChecked
		{
			get
			{
				return this.UISettings.ServerSelectionWindowRegionNorthAmerica;
			}
			set
			{
				this.UISettings.ServerSelectionWindowRegionNorthAmerica = value;
				this.UpdateRegionFilter(value, new Predicate<object>(this.NorthAmericaRegionFilter));
			}
		}

		public bool ServerRegionSouthAmericaChecked
		{
			get
			{
				return this.UISettings.ServerSelectionWindowRegionSouthAmerica;
			}
			set
			{
				this.UISettings.ServerSelectionWindowRegionSouthAmerica = value;
				this.UpdateRegionFilter(value, new Predicate<object>(this.SouthAmericaRegionFilter));
			}
		}

		public bool ServerRegionEuropeChecked
		{
			get
			{
				return this.UISettings.ServerSelectionWindowRegionEurope;
			}
			set
			{
				this.UISettings.ServerSelectionWindowRegionEurope = value;
				this.UpdateRegionFilter(value, new Predicate<object>(this.EuropeRegionFilter));
			}
		}

		public bool ServerRegionAsiaChecked
		{
			get
			{
				return this.UISettings.ServerSelectionWindowRegionAsia;
			}
			set
			{
				this.UISettings.ServerSelectionWindowRegionAsia = value;
				this.UpdateRegionFilter(value, new Predicate<object>(this.AsiaRegionFilter));
			}
		}

		public bool ServerRegionAfricaChecked
		{
			get
			{
				return this.UISettings.ServerSelectionWindowRegionAfrica;
			}
			set
			{
				this.UISettings.ServerSelectionWindowRegionAfrica = value;
				this.UpdateRegionFilter(value, new Predicate<object>(this.AfricaRegionFilter));
			}
		}

		public bool ServerRegionOceaniaChecked
		{
			get
			{
				return this.UISettings.ServerSelectionWindowRegionOceania;
			}
			set
			{
				this.UISettings.ServerSelectionWindowRegionOceania = value;
				this.UpdateRegionFilter(value, new Predicate<object>(this.OceaniaRegionFilter));
			}
		}

		public bool ServerRegionAutomaticChecked
		{
			get
			{
				return this.UISettings.ServerSelectionWindowRegionAutomatic;
			}
			set
			{
				this.UISettings.ServerSelectionWindowRegionAutomatic = value;
				this.UpdateRegionFilter(value, new Predicate<object>(this.AutomaticRegionFilter));
			}
		}

		public bool ServerRegionVyprVpnServerChecked
		{
			get
			{
				return this.UISettings.ServerSelectionWindowRegionVyprVpnServer;
			}
			set
			{
				this.UISettings.ServerSelectionWindowRegionVyprVpnServer = value;
				this.UpdateRegionFilter(value, new Predicate<object>(this.VyprVpnServerRegionFilter));
			}
		}

		public ServerListWindowViewModel()
		{
			base.logger.Log(0, "ServerListWindowViewModel instantiated");
			this.serverList = ServiceLocatorExtensions.ResolveType<IServerList>(ServiceLocator.get_Default(), null);
			this.RegionGroupFilter = ServiceLocatorExtensions.ResolveType<ICombinedFilter>(ServiceLocator.get_Default(), null);
			this.serverList.PingTimeUpdated += new PingTimeUpdatedEventHandler(this.OnPingCompleted);
			this.serverList.StartPingTest();
			this.serverListView = CollectionViewSource.GetDefaultView(this.serverList.Locations);
			if (this.UISettings.ServerSelectionWindowColumnSort == "Location")
			{
				this.SortList(this.UISettings.ServerSelectionWindowColumnSort, this.UISettings.ServerSelectionWindowColumnSortOrder);
			}
			try
			{
				if (base.VyprVPNController.VPNServer != null)
				{
					this.SelectedLocation = this.GetPingServerWrapperForVPNServer();
				}
				else
				{
					IEnumerable<IPingServerWrapper> arg_F0_0 = this.serverList.Locations.ToList<IPingServerWrapper>();
					Func<IPingServerWrapper, int> arg_F0_1;
					if ((arg_F0_1 = ServerListWindowViewModel.<>c.<>9__7_0) == null)
					{
						arg_F0_1 = (ServerListWindowViewModel.<>c.<>9__7_0 = new Func<IPingServerWrapper, int>(ServerListWindowViewModel.<>c.<>9.<.ctor>b__7_0));
					}
					this.SelectedLocation = arg_F0_0.OrderBy(arg_F0_1).First<IPingServerWrapper>();
				}
			}
			catch (Exception ex)
			{
				base.logger.Log(3, "Unexpected error while attempting to set selected location: {0}", new object[]
				{
					ex
				});
			}
			try
			{
				MessageBase<LocationChangedMessage, IVPNServer>.Register(this, delegate(LocationChangedMessage e)
				{
					this.SelectedLocation = this.GetPingServerWrapperForVPNServer();
				}, null);
			}
			catch (Exception ex2)
			{
				base.logger.Log(1, "Unable to register LocationChangedMessage handler: {0}", new object[]
				{
					ex2
				});
			}
		}

		protected override void Finalize()
		{
			try
			{
				IServerList serverList = this.serverList;
				if (serverList != null)
				{
					serverList.PingTimeUpdated -= new PingTimeUpdatedEventHandler(this.OnPingCompleted);
				}
			}
			finally
			{
				base.Finalize();
			}
		}

		protected void OnPingCompleted(object o, PingEventArgs e)
		{
			if (this.UISettings.ServerSelectionWindowColumnSort == "Ping")
			{
				this.SortList(this.UISettings.ServerSelectionWindowColumnSort, this.UISettings.ServerSelectionWindowColumnSortOrder);
			}
		}

		public void OnSelectionChanged(IPingServerWrapper server)
		{
			base.VyprVPNController.FastestServerSelected = (server != null && server.IsFastestServerStandin);
			this.SelectedLocation = server;
			base.logger.Log(0, "Setting server on selection: {0}", new object[]
			{
				this.SelectedLocation.Location
			});
			base.VyprVPNController.VPNServer = this.SelectedLocation.VPNServer;
		}

		public void OnSelectionDoubleClicked(EventArgs e)
		{
			base.logger.Log(0, "Connecting on double click!");
			if (base.VyprVPNController.FastestServerSelected)
			{
				base.VyprVPNController.FindAndConnectToFastestServer(6);
				return;
			}
			Task.Run(delegate
			{
				base.VyprVPNController.Connect(6);
			});
		}

		public void OnAllSelected()
		{
			this.ServerListView.Filter = null;
			this.ServerListView.GroupDescriptions.Clear();
			MessageBase<FavoritesChangedMessage, IEnumerable<VPNServer>>.Unregister(this, delegate(FavoritesChangedMessage eData)
			{
				this.ServerListView.Refresh();
			}, null);
			ListCollectionView listCollectionView = this.ServerListView as ListCollectionView;
			if (listCollectionView != null && listCollectionView.CustomSort is RegionComparer)
			{
				RegionComparer expr_56 = listCollectionView.CustomSort as RegionComparer;
				string secondarySortHeader = expr_56.SecondarySortHeader;
				ListSortDirection secondarySortDirection = expr_56.SecondarySortDirection;
				listCollectionView.CustomSort = null;
				this.SortList(secondarySortHeader, secondarySortDirection);
			}
		}

		public void OnByRegionSelected()
		{
			this.ServerListView.Filter = null;
			this.ServerListView.GroupDescriptions.Clear();
			MessageBase<FavoritesChangedMessage, IEnumerable<VPNServer>>.Unregister(this, delegate(FavoritesChangedMessage eData)
			{
				this.ServerListView.Refresh();
			}, null);
			this.ServerListView.GroupDescriptions.Add(new PropertyGroupDescription("Region", new RegionTitleValueConverter()));
			this.RegionGroupFilter.ClearFilters();
			this.ServerRegionNorthAmericaChecked = this.UISettings.ServerSelectionWindowRegionNorthAmerica;
			this.ServerRegionSouthAmericaChecked = this.UISettings.ServerSelectionWindowRegionSouthAmerica;
			this.ServerRegionEuropeChecked = this.UISettings.ServerSelectionWindowRegionEurope;
			this.ServerRegionAsiaChecked = this.UISettings.ServerSelectionWindowRegionAsia;
			this.ServerRegionOceaniaChecked = this.UISettings.ServerSelectionWindowRegionOceania;
			this.ServerRegionAfricaChecked = this.UISettings.ServerSelectionWindowRegionAfrica;
			this.ServerRegionAutomaticChecked = this.UISettings.ServerSelectionWindowRegionAutomatic;
			this.ServerRegionVyprVpnServerChecked = this.UISettings.ServerSelectionWindowRegionVyprVpnServer;
			this.SortList("Region", ListSortDirection.Ascending);
			this.serverListView.Filter = this.RegionGroupFilter.Filter;
		}

		public void OnFavoriteSelected()
		{
			this.ServerListView.Filter = null;
			this.ServerListView.GroupDescriptions.Clear();
			ListCollectionView listCollectionView = this.ServerListView as ListCollectionView;
			if (listCollectionView != null && listCollectionView.CustomSort is RegionComparer)
			{
				RegionComparer expr_43 = listCollectionView.CustomSort as RegionComparer;
				string secondarySortHeader = expr_43.SecondarySortHeader;
				ListSortDirection secondarySortDirection = expr_43.SecondarySortDirection;
				listCollectionView.CustomSort = null;
				this.SortList(secondarySortHeader, secondarySortDirection);
			}
			MessageBase<FavoritesChangedMessage, IEnumerable<VPNServer>>.Register(this, delegate(FavoritesChangedMessage eData)
			{
				this.ServerListView.Refresh();
			}, null);
			this.ServerListView.Filter = new Predicate<object>(this.FavoriteFilter);
		}

		public void OnSearchSelected()
		{
			this.ServerListView.Filter = null;
			this.ServerListView.GroupDescriptions.Clear();
			MessageBase<FavoritesChangedMessage, IEnumerable<VPNServer>>.Unregister(this, delegate(FavoritesChangedMessage eData)
			{
				this.ServerListView.Refresh();
			}, null);
			ListCollectionView listCollectionView = this.ServerListView as ListCollectionView;
			if (listCollectionView != null && listCollectionView.CustomSort is RegionComparer)
			{
				RegionComparer expr_56 = listCollectionView.CustomSort as RegionComparer;
				string secondarySortHeader = expr_56.SecondarySortHeader;
				ListSortDirection secondarySortDirection = expr_56.SecondarySortDirection;
				listCollectionView.CustomSort = null;
				this.SortList(secondarySortHeader, secondarySortDirection);
			}
			this.ServerListView.Filter = new Predicate<object>(this.SearchFilter);
		}

		public bool NorthAmericaRegionFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && pingServerWrapper.Region != null && (pingServerWrapper.Region.ToLower().Contains(ServerRegionConstants.GetLocalizedRegionString("North America").ToLower()) || pingServerWrapper.Region.ToLower().Contains("North America".ToLower()));
		}

		public bool SouthAmericaRegionFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && pingServerWrapper.Region != null && (pingServerWrapper.Region.ToLower().Contains(ServerRegionConstants.GetLocalizedRegionString("South America").ToLower()) || pingServerWrapper.Region.ToLower().Contains("South America".ToLower()));
		}

		public bool EuropeRegionFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && pingServerWrapper.Region != null && (pingServerWrapper.Region.ToLower().Contains(ServerRegionConstants.GetLocalizedRegionString("Europe").ToLower()) || pingServerWrapper.Region.ToLower().Contains("Europe".ToLower()));
		}

		public bool AsiaRegionFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && pingServerWrapper.Region != null && (pingServerWrapper.Region.ToLower().Contains(ServerRegionConstants.GetLocalizedRegionString("Asia").ToLower()) || pingServerWrapper.Region.ToLower().Contains("Asia".ToLower()));
		}

		public bool OceaniaRegionFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && pingServerWrapper.Region != null && (pingServerWrapper.Region.ToLower().Contains(ServerRegionConstants.GetLocalizedRegionString("Oceania").ToLower()) || pingServerWrapper.Region.ToLower().Contains("Oceania".ToLower()));
		}

		public bool AfricaRegionFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && pingServerWrapper.Region != null && (pingServerWrapper.Region.ToLower().Contains(ServerRegionConstants.GetLocalizedRegionString("Africa").ToLower()) || pingServerWrapper.Region.ToLower().Contains("Africa".ToLower()));
		}

		public bool AutomaticRegionFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && pingServerWrapper.Region != null && (pingServerWrapper.Region.ToLower().Contains(ServerRegionConstants.GetLocalizedRegionString("Automatic").ToLower()) || pingServerWrapper.Region.ToLower().Contains("Automatic".ToLower()));
		}

		public bool VyprVpnServerRegionFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && pingServerWrapper.Region != null && (pingServerWrapper.Region.ToLower().Contains(ServerRegionConstants.GetLocalizedRegionString("VyprVPN Server").ToLower()) || pingServerWrapper.Region.ToLower().Contains("VyprVPN Server".ToLower()));
		}

		private bool FavoriteFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && pingServerWrapper.VPNServer != null && pingServerWrapper.VPNServer.get_IsPinned();
		}

		private bool SearchFilter(object item)
		{
			IPingServerWrapper pingServerWrapper = item as IPingServerWrapper;
			return pingServerWrapper != null && !string.IsNullOrEmpty(this.ServerSearchString) && !string.IsNullOrEmpty(pingServerWrapper.Location) && pingServerWrapper.Location.ToLower().Contains(this.ServerSearchString.ToLower());
		}

		public void SortList(string sortBy, ListSortDirection direction)
		{
			ListCollectionView listCollectionView = this.ServerListView as ListCollectionView;
			if (listCollectionView != null)
			{
				if (sortBy == "Region" || listCollectionView.CustomSort is RegionComparer)
				{
					IComparer customSort = listCollectionView.CustomSort;
					if (customSort is LocationComparer)
					{
						listCollectionView.CustomSort = new RegionComparer("Location", (customSort as LocationComparer).SortDirection);
						this.UISettings.ServerSelectionWindowColumnSort = "Location";
						this.UISettings.ServerSelectionWindowColumnSortOrder = (customSort as LocationComparer).SortDirection;
					}
					else if (customSort is PingTimeComparer)
					{
						listCollectionView.CustomSort = new RegionComparer("Ping", (customSort as PingTimeComparer).SortDirection);
						this.UISettings.ServerSelectionWindowColumnSort = "Ping";
						this.UISettings.ServerSelectionWindowColumnSortOrder = (customSort as PingTimeComparer).SortDirection;
					}
					else
					{
						if (sortBy == "Region")
						{
							sortBy = this.UISettings.ServerSelectionWindowColumnSort;
						}
						listCollectionView.CustomSort = new RegionComparer(sortBy, direction);
						this.UISettings.ServerSelectionWindowColumnSort = sortBy;
						this.UISettings.ServerSelectionWindowColumnSortOrder = direction;
					}
				}
				else
				{
					if (sortBy == "Location")
					{
						listCollectionView.CustomSort = new LocationComparer(direction);
					}
					else if (sortBy == "Ping")
					{
						listCollectionView.CustomSort = new PingTimeComparer(direction);
					}
					this.UISettings.ServerSelectionWindowColumnSort = sortBy;
					this.UISettings.ServerSelectionWindowColumnSortOrder = direction;
				}
				this.UISettings.Save();
			}
		}

		public void Dispose()
		{
			IServerList serverList = this.serverList;
			if (serverList != null)
			{
				serverList.PingTimeUpdated -= new PingTimeUpdatedEventHandler(this.OnPingCompleted);
				serverList.Dispose();
			}
		}

		private void UpdateRegionFilter(bool addFilter, Predicate<object> filter)
		{
			ICombinedFilter regionGroupFilter = this.RegionGroupFilter;
			if (regionGroupFilter != null)
			{
				if (addFilter)
				{
					regionGroupFilter.AddFilter(filter);
				}
				else
				{
					regionGroupFilter.RemoveFilter(filter);
				}
				this.ServerListView.Refresh();
			}
		}

		private IPingServerWrapper GetPingServerWrapperForVPNServer()
		{
			IVPNServer vpnServer = base.VyprVPNController.VPNServer;
			if (vpnServer == null)
			{
				return null;
			}
			return this.serverList.Locations.ToList<IPingServerWrapper>().FirstOrDefault((IPingServerWrapper s) => s.FQDN == vpnServer.get_FQDN());
		}

		protected override void OnPropertyChanged(AdvancedPropertyChangedEventArgs e)
		{
			base.OnPropertyChanged(e);
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("ServerRegionNorthAmericaChecked");
			}
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("ServerRegionSouthAmericaChecked");
			}
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("ServerRegionEuropeChecked");
			}
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("ServerRegionAsiaChecked");
			}
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("ServerRegionAfricaChecked");
			}
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("ServerRegionOceaniaChecked");
			}
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("ServerRegionAutomaticChecked");
			}
			if (e.PropertyName.Equals("UISettings"))
			{
				base.RaisePropertyChanged("ServerRegionVyprVpnServerChecked");
			}
		}
	}
}

using Catel.IoC;
using Catel.Messaging;
using GoldenFrogUX;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Markup;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN.Views.MainWindow.ServerListWindow
{
	public class ServerSelectionWindowView : Window, IComponentConnector
	{
		private readonly FileLogger logger = FileLogger.get_Instance();

		internal ServerListWindowView ServerListWindow;

		private bool _contentLoaded;

		protected IVyprVPNController VyprVPNController
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
			}
		}

		public ServerSelectionWindowView()
		{
			this.InitializeComponent();
			if (this.VyprVPNController.ConnectionStatus != null)
			{
				base.Close();
				return;
			}
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			MessageBase<VyprVPNStateChangedMessage, IVyprVPNController>.Register(this, delegate(VyprVPNStateChangedMessage e)
			{
				if (this.VyprVPNController.ConnectionStatus != null)
				{
					base.Close();
				}
			}, null);
		}

		private void OnLoaded(object sender, RoutedEventArgs e)
		{
			try
			{
				ISettings settings = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				WindowHelpers.RestoreWindowLocation(this, settings.ServerSelectionWindowStartupLocation);
			}
			catch (Exception ex)
			{
				FileLogger.get_Instance().Log(1, "Failed to restore server selection window location on load: {0}", new object[]
				{
					ex
				});
			}
		}

		private void OnUnloaded(object sender, RoutedEventArgs e)
		{
			try
			{
				ISettings expr_0B = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				expr_0B.ServerSelectionWindowStartupLocation = new Rect(base.Left, base.Top, base.Width, base.Height);
				expr_0B.Save();
			}
			catch (Exception ex)
			{
				this.logger.Log(3, "Unexpected error saving Server Selection UI settings: {0}", new object[]
				{
					ex
				});
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/mainwindow/serverlistwindow/serverselectionwindowview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				((ServerSelectionWindowView)target).Loaded += new RoutedEventHandler(this.OnLoaded);
				((ServerSelectionWindowView)target).Unloaded += new RoutedEventHandler(this.OnUnloaded);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.ServerListWindow = (ServerListWindowView)target;
		}
	}
}
