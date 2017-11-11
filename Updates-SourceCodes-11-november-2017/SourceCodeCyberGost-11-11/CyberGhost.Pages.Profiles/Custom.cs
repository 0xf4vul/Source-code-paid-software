using CyberGhost.Annotations;
using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.MCTreeList;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Threading;

namespace CyberGhost.Pages.Profiles
{
	public class Custom : UserControl, IComponentConnector, IStyleConnector, INotifyPropertyChanged, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Custom.<>c <>9 = new Custom.<>c();

			public static SendOrPostCallback <>9__26_2;

			public static Comparison<CgApiServer> <>9__28_0;

			public static Func<KeyValuePair<CgApiServer, double>, double> <>9__34_2;

			internal void <InitializeServerlist>b__26_2(object o)
			{
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
				Navigation.GoHome();
			}

			internal int <PrepareServerList>b__28_0(CgApiServer x, CgApiServer y)
			{
				return string.CompareOrdinal(x.get_Location().get_CountryName(), y.get_Location().get_CountryName());
			}

			internal double <FillTreeViewWithServers>b__34_2(KeyValuePair<CgApiServer, double> n)
			{
				return n.Value;
			}
		}

		private static bool _wasOnHome = true;

		public static CgApiServerList Serverlist = new CgApiServerList();

		private readonly TaskFactory _mPingTaskFactory;

		private bool _canConnect;

		private System.Timers.Timer _delaySearchTimer;

		private IDictionary<string, ServerGroup> _serverGroups = new Dictionary<string, ServerGroup>();

		private ObservableCollection<ServerTreeItem> _serverTreeItemCollection = new ObservableCollection<ServerTreeItem>();

		private bool _treeIsRebuilding;

		private CancellationTokenSource _updateCancellationToken;

		internal Custom CustomProfile;

		internal Grid SearchGrid;

		internal TextBox SearchText;

		internal ModernProgressRing LoadingRing;

		internal Label ServerForPing;

		internal TreeList ServerTree;

		internal Button ConnectBtn;

		internal UpgradeButton UpgradeBtn;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public ServerTreeItem FavNode
		{
			get;
			set;
		}

		public ServerTreeItem LastUsedNode
		{
			get;
			set;
		}

		public ICommand SortCommand
		{
			get;
			set;
		}

		public Custom()
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.ConnectBtn.Command = new AsyncDelegateCommand(new Func<Task>(this.ConnectToServer), new Func<bool>(this.CanExecute));
			this._mPingTaskFactory = new TaskFactory(new HelperFunctions.LimitedConcurrencyLevelTaskScheduler(5));
			this._updateCancellationToken = new CancellationTokenSource();
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
			this.Filter(e.get_Fragment() ?? "serverlist");
			this.CustomProfile_IsVisibleChanged(this, default(DependencyPropertyChangedEventArgs));
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			this._updateCancellationToken.Cancel(false);
			((HelperFunctions.LimitedConcurrencyLevelTaskScheduler)this._mPingTaskFactory.Scheduler).ClearQueue();
			if (!e.get_Source().ToString().Contains("Custom_Settings"))
			{
				Custom._wasOnHome = true;
			}
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.UpgradeBtn.CurrentProfile = SettingsHolder.get_Settings().get_ProfileCustom();
			this.UpgradeBtn.SetVisibility(this.ConnectBtn, 16);
			this.ConnectBtn.Content = ((Theming.CurrentTheme == Theming.Theme.Pro) ? Profiles.Start_Ghost_Pro : Profiles.CustomConnect);
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileCustom();
			this._canConnect = false;
			SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerId(0);
			SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedCountry(string.Empty);
			this.InitializeServerlist();
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void InitializeServerlist()
		{
			if (DateTime.Now - Custom.Serverlist.LastItemFetch < TimeSpan.FromMinutes(2.0) && Custom.Serverlist.get_Items().Count != 0)
			{
				this.FinalizeInit();
				return;
			}
			this.LoadingRing.Visibility = Visibility.Visible;
			this.ServerTree.Visibility = Visibility.Hidden;
			Custom.Serverlist = new CgApiServerList();
			this._serverGroups = new Dictionary<string, ServerGroup>();
			this._serverTreeItemCollection = new ObservableCollection<ServerTreeItem>();
			Task.Run(delegate
			{
				Custom.<<InitializeServerlist>b__26_0>d <<InitializeServerlist>b__26_0>d;
				<<InitializeServerlist>b__26_0>d.<>4__this = this;
				<<InitializeServerlist>b__26_0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
				<<InitializeServerlist>b__26_0>d.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <<InitializeServerlist>b__26_0>d.<>t__builder;
				<>t__builder.Start<Custom.<<InitializeServerlist>b__26_0>d>(ref <<InitializeServerlist>b__26_0>d);
				return <<InitializeServerlist>b__26_0>d.<>t__builder.Task;
			});
		}

		private void FinalizeInit()
		{
			if (Custom._wasOnHome)
			{
				if (!SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedFragment().Equals("serverlist"))
				{
					Navigation.GoToPage("Profiles/Custom", SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedFragment(), null);
				}
				else
				{
					this.Filter("serverlist");
				}
				Custom._wasOnHome = false;
			}
			else
			{
				this.Filter("serverlist");
			}
			if (!string.IsNullOrWhiteSpace(this.SearchText.Text))
			{
				this.UpdateSearchFilter();
			}
		}

		private void PrepareServerList(CgApiServerList serverlist)
		{
			if (serverlist.get_Items().Count == 0)
			{
				return;
			}
			List<CgApiServer> arg_37_0 = Custom.Serverlist.get_Items();
			Comparison<CgApiServer> arg_37_1;
			if ((arg_37_1 = Custom.<>c.<>9__28_0) == null)
			{
				arg_37_1 = (Custom.<>c.<>9__28_0 = new Comparison<CgApiServer>(Custom.<>c.<>9.<PrepareServerList>b__28_0));
			}
			arg_37_0.Sort(arg_37_1);
			ServerGroup serverGroup = null;
			foreach (CgApiServer current in serverlist.get_Items())
			{
				string countryName = current.get_Location().get_CountryName();
				if (serverGroup != null && serverGroup.Name.Equals(countryName))
				{
					serverGroup.Servers.Add(current);
				}
				else
				{
					serverGroup = new ServerGroup
					{
						CountryCode = current.get_Location().get_CountryCode(),
						Name = current.get_Location().get_CountryName()
					};
					this._serverGroups[current.get_Location().get_CountryName()] = serverGroup;
					serverGroup.Servers.Add(current);
				}
			}
		}

		private void FillTreeViewWithFavourites()
		{
			this.FavNode = new ServerTreeItem
			{
				CountryCode = "fav",
				ServerId = -1,
				CountryName = Profiles.Custom_HandleSelectedServerItem_Favourites,
				Name = Profiles.Custom_HandleSelectedServerItem_Favourites,
				RealServer = false,
				IsCountry = true,
				Id = 9999,
				ParentId = 0,
				ServerSelectable = true,
				IsFreeString = "",
				IsFav = false,
				IsSpecial = true
			};
		}

		private void FillTreeViewWithLastUsed()
		{
			this.LastUsedNode = new ServerTreeItem
			{
				CountryCode = "last",
				ServerId = -1,
				CountryName = Status.Custom_FillTreeViewWithLastUsed_Last_used,
				Name = Status.Custom_FillTreeViewWithLastUsed_Last_used,
				RealServer = false,
				IsCountry = true,
				Id = 9999,
				ParentId = 0,
				ServerSelectable = true,
				IsFreeString = "",
				IsFav = false,
				IsSpecial = true
			};
		}

		private double GetUserRatio(string totalUsers, string maxUsers)
		{
			double num = 0.0;
			if (totalUsers != null && maxUsers != null)
			{
				num = (double)((int)(double.Parse(totalUsers) / double.Parse(maxUsers) * 100.0));
			}
			if (num > 100.0)
			{
				num = 100.0;
			}
			return num;
		}

		private double GetUserRatioForCountry(List<CgApiServer> serverItems)
		{
			double num = 0.0;
			foreach (CgApiServer current in serverItems)
			{
				num += this.GetUserRatio(current.get_TotalUsers(), current.get_MaxUsers());
			}
			num /= (double)serverItems.Count;
			return num;
		}

		private string GetTorrentStateForCountry(List<CgApiServer> serverItems, string filter)
		{
			if (filter.Equals("torrent"))
			{
				return "";
			}
			using (List<CgApiServer>.Enumerator enumerator = serverItems.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if (enumerator.Current.get_TorrentBlocked())
					{
						return "";
					}
				}
			}
			return "";
		}

		[AsyncStateMachine(typeof(Custom.<FillTreeViewWithServers>d__34))]
		private void FillTreeViewWithServers(IDictionary<string, ServerGroup> serverGroupsFiltered, string filter, CancellationToken cancelToken)
		{
			Custom.<FillTreeViewWithServers>d__34 <FillTreeViewWithServers>d__;
			<FillTreeViewWithServers>d__.<>4__this = this;
			<FillTreeViewWithServers>d__.serverGroupsFiltered = serverGroupsFiltered;
			<FillTreeViewWithServers>d__.filter = filter;
			<FillTreeViewWithServers>d__.cancelToken = cancelToken;
			<FillTreeViewWithServers>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<FillTreeViewWithServers>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <FillTreeViewWithServers>d__.<>t__builder;
			<>t__builder.Start<Custom.<FillTreeViewWithServers>d__34>(ref <FillTreeViewWithServers>d__);
		}

		private bool DetermineIfIsLastUsed(ServerTreeItem item)
		{
			return SettingsHolder.get_Settings().get_ProfileCustom().get_LastUsedServers().Any((int id) => id == item.ServerId);
		}

		private bool DetermineIfIsInFavs(ServerTreeItem item)
		{
			return SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().Any((int favServerId) => favServerId == item.ServerId);
		}

		private void TreeListSelect(bool directConnect, bool selectedByCode = false)
		{
			if (this.ServerTree.get_SelectedNode() == null)
			{
				return;
			}
			SettingsHolder.get_Settings().get_ProfileCustom().Type = "custom";
			try
			{
				ServerTreeItem serverTreeItem = this.ServerTree.get_SelectedNode().get_Tag() as ServerTreeItem;
				if (serverTreeItem != null)
				{
					this.ClearAllPreviousSelection();
					if (selectedByCode)
					{
						serverTreeItem.IsSelected = true;
					}
					SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerDisplayName(serverTreeItem.Name);
					SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedCountryDisplay(serverTreeItem.CountryCode);
					SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerIndexId(serverTreeItem.Id);
					if (serverTreeItem.CountryCode.Equals("last") && serverTreeItem.ServerTreeItems.Count > 0)
					{
						SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerDisplayName("");
						SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedCountryDisplay("");
						SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerIndexId(SettingsHolder.get_Settings().get_ProfileCustom().get_LastUsedServers()[0]);
					}
					if ((serverTreeItem.CountryCode.Equals("fav") && serverTreeItem.ServerTreeItems.Count == 0) || (serverTreeItem.CountryCode.Equals("last") && serverTreeItem.ServerTreeItems.Count == 0))
					{
						this._canConnect = false;
					}
					else if (directConnect)
					{
						if (serverTreeItem.ServerId != -1 && serverTreeItem.RealServer)
						{
							if (serverTreeItem.IsFull)
							{
								ModernDialogExtension.ShowDialogOk(General.ServerList_HandleSelectedServerItem_Server_full, General.ServerList_HandleSelectedServerItem_Server_is_already_full);
							}
							else
							{
								this._canConnect = true;
								this.ConnectToServer();
							}
						}
						else
						{
							SettingsHolder.get_Settings().get_ProfileCustom().set_IsFav(false);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerId(-1);
							if (serverTreeItem.CountryCode == "fav")
							{
								SettingsHolder.get_Settings().get_ProfileCustom().set_IsFav(true);
							}
							this.ConnectToServer();
						}
					}
					else
					{
						if (!serverTreeItem.CountryCode.Equals("last"))
						{
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedCountry(serverTreeItem.CountryCode);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerName(serverTreeItem.CountryName);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerIp("");
						}
						if (serverTreeItem.ServerId != -1 && serverTreeItem.RealServer)
						{
							this._canConnect = true;
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerId(serverTreeItem.ServerId);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerName(serverTreeItem.Name);
						}
						else
						{
							SettingsHolder.get_Settings().get_ProfileCustom().set_IsFav(false);
							SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedServerId(-1);
							if (serverTreeItem.CountryCode == "fav")
							{
								SettingsHolder.get_Settings().get_ProfileCustom().set_IsFav(true);
								SettingsHolder.get_Settings().get_ProfileCustom().set_FastestFavServer(this.GetFastestFromFavorite());
							}
							this._canConnect = true;
						}
					}
				}
			}
			catch (Exception arg_2CC_0)
			{
				HelperFunctions.DebugLine(arg_2CC_0.Message);
			}
		}

		private void ClearAllPreviousSelection()
		{
			foreach (ServerTreeItem current in this._serverTreeItemCollection)
			{
				current.IsSelected = false;
				if (current.ServerTreeItems.Count > 0)
				{
					using (IEnumerator<ServerTreeItem> enumerator2 = current.ServerTreeItems.GetEnumerator())
					{
						while (enumerator2.MoveNext())
						{
							enumerator2.Current.IsSelected = false;
						}
					}
				}
			}
		}

		private int GetFastestFromFavorite()
		{
			int num = 0;
			long num2 = 9223372036854775807L;
			using (List<int>.Enumerator enumerator = SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					int serverId = enumerator.Current;
					ServerTreeItem serverTreeItem = this.FavNode.ServerTreeItems.SingleOrDefault((ServerTreeItem x) => x.ServerId == serverId);
					if (serverTreeItem != null)
					{
						if (serverTreeItem.PingTime < 0L)
						{
							long num3 = HelperFunctions.Ping((serverTreeItem != null) ? serverTreeItem.Ip : null, 500);
							if (num3 >= 9999L)
							{
								num3 = HelperFunctions.TcpPing((serverTreeItem != null) ? serverTreeItem.Ip : null, 500, 41200);
							}
							serverTreeItem.PingTime = num3;
						}
						if (serverTreeItem.PingTime > 0L && serverTreeItem.PingTime < num2)
						{
							num2 = serverTreeItem.PingTime;
							num = serverId;
						}
					}
				}
			}
			if (num <= 0)
			{
				return SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers()[0];
			}
			return num;
		}

		private void UpdateSearchFilter()
		{
			((HelperFunctions.LimitedConcurrencyLevelTaskScheduler)this._mPingTaskFactory.Scheduler).ClearQueue();
			ITreeModel expr_21 = this.ServerTree.get_Model();
			if (expr_21 != null)
			{
				expr_21.FilterChildren(this.SearchText.Text.Trim());
			}
			this.ServerTree.Refresh();
			if (!string.IsNullOrWhiteSpace(this.SearchText.Text))
			{
				this.ServerTree.SetExpandState(true);
			}
		}

		private void SearchForServer(object sender, TextChangedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(delegate
			{
				HelperFunctions.CancelExecutiion(this._delaySearchTimer);
				this._delaySearchTimer = HelperFunctions.DelayExecution(TimeSpan.FromMilliseconds(500.0), new Action(this.UpdateSearchFilter));
			}));
		}

		private Task ConnectToServer()
		{
			if (!ObjectHolder.CurrentUser.HasUserAccessToFeature(16))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(16);
				return null;
			}
			ObjectHolder.ConnectionType = "automatic";
			if (SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedServerId() > 0)
			{
				ObjectHolder.ConnectionType = "specific server";
			}
			if (!string.IsNullOrEmpty(SettingsHolder.get_Settings().get_ProfileCustom().get_SelectedCountry()))
			{
				ObjectHolder.ConnectionType = "specific country";
			}
			return ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileCustom(), false, false, true);
		}

		private bool CanExecute()
		{
			return this._canConnect && !this._treeIsRebuilding;
		}

		private void ServerTree_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			this.TreeListSelect(false, false);
		}

		private void ServerTree_OnMouseDoubleClick(object sender, MouseButtonEventArgs e)
		{
			this.TreeListSelect(true, false);
		}

		private void Filter(string fragment)
		{
			this._updateCancellationToken.Cancel(false);
			SettingsHolder.get_Settings().get_ProfileCustom().set_SelectedFragment(fragment);
			SettingsHolder.get_Settings().get_ProfileCustom().Type = fragment;
			ObjectHolder.ConnectionType = "custom";
			if (!(fragment == "serverlist"))
			{
				if (!(fragment == "minimum"))
				{
					if (!(fragment == "maximum"))
					{
						if (!(fragment == "bestping"))
						{
							if (!(fragment == "nospy"))
							{
								if (!(fragment == "torrent"))
								{
									ObjectHolder.CurrentProfileTab = fragment;
								}
								else
								{
									ObjectHolder.CurrentProfileTab = "torrent";
								}
							}
							else
							{
								ObjectHolder.CurrentProfileTab = "nospy servers";
							}
						}
						else
						{
							ObjectHolder.CurrentProfileTab = "fastest servers";
						}
					}
					else
					{
						ObjectHolder.CurrentProfileTab = "most users";
					}
				}
				else
				{
					ObjectHolder.CurrentProfileTab = "fewest servers";
				}
			}
			else
			{
				ObjectHolder.CurrentProfileTab = "all servers";
			}
			this._updateCancellationToken = new CancellationTokenSource();
			this.FillTreeViewWithServers(this._serverGroups, fragment, this._updateCancellationToken.Token);
		}

		private void AddToFavouritesClick(object sender, RoutedEventArgs e)
		{
			int serverId = (int)((Button)sender).Tag;
			((ServerTreeModel)this.ServerTree.get_Model()).ToggleServerFav(this.ServerTree, serverId);
		}

		private void CustomProfile_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(delegate
			{
				this.CustomProfile.Focus();
			}));
		}

		private void CustomProfile_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(delegate
			{
				if (!this.SearchText.IsFocused)
				{
					int num;
					bool flag = int.TryParse(e.Text, out num);
					if (e.Text.Length <= 0)
					{
						return;
					}
					if (!flag && (e.Text[0] < 'a' || e.Text[0] > 'z') && (e.Text[0] < 'A' || e.Text[0] > 'Z'))
					{
						e.Handled = true;
						return;
					}
					this.SearchText.Text = e.Text;
					this.SearchText.Focus();
				}
			}));
		}

		private void SearchText_GotFocus(object sender, RoutedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(delegate
			{
				this.SearchText.SelectionStart = Math.Max(0, this.SearchText.Text.Length);
				this.SearchText.SelectionLength = 0;
				this.CustomProfile.PreviewTextInput -= new TextCompositionEventHandler(this.CustomProfile_PreviewTextInput);
			}));
		}

		private void SearchText_LostFocus(object sender, RoutedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(delegate
			{
				this.CustomProfile.PreviewTextInput += new TextCompositionEventHandler(this.CustomProfile_PreviewTextInput);
			}));
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

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/custom.xaml", UriKind.Relative);
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
				this.CustomProfile = (Custom)target;
				this.CustomProfile.IsVisibleChanged += new DependencyPropertyChangedEventHandler(this.CustomProfile_IsVisibleChanged);
				this.CustomProfile.PreviewTextInput += new TextCompositionEventHandler(this.CustomProfile_PreviewTextInput);
				return;
			case 2:
				this.SearchGrid = (Grid)target;
				return;
			case 3:
				this.SearchText = (TextBox)target;
				this.SearchText.TextChanged += new TextChangedEventHandler(this.SearchForServer);
				this.SearchText.GotFocus += new RoutedEventHandler(this.SearchText_GotFocus);
				this.SearchText.LostFocus += new RoutedEventHandler(this.SearchText_LostFocus);
				return;
			case 4:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			case 5:
				this.ServerForPing = (Label)target;
				return;
			case 6:
				this.ServerTree = (TreeList)target;
				this.ServerTree.SelectionChanged += new SelectionChangedEventHandler(this.ServerTree_OnSelectionChanged);
				this.ServerTree.MouseDoubleClick += new MouseButtonEventHandler(this.ServerTree_OnMouseDoubleClick);
				return;
			case 8:
				this.ConnectBtn = (Button)target;
				return;
			case 9:
				this.UpgradeBtn = (UpgradeButton)target;
				return;
			}
			this._contentLoaded = true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 7)
			{
				((Button)target).Click += new RoutedEventHandler(this.AddToFavouritesClick);
			}
		}
	}
}
