using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.AppServices;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Geographical;
using NordVpn.Core.Models.ServerCategories;
using NordVpn.Core.Models.Settings;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels.Sort;
using NordVpn.Shared;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels.Detailed
{
	public class DetailedServersViewModel : AppScreen, IHandle, IHandle<NavigateToServersDetailsMessage<Country>>, IHandle<NavigateToServersDetailsMessage<Category>>
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly DetailedServersViewModel.<>c <>9 = new DetailedServersViewModel.<>c();

			public static Func<ServerViewModel, ServerViewModel> <>9__36_0;

			public static Func<Country, IEnumerable<CountryServer>> <>9__38_1;

			public static Func<ServerViewModel, ServerViewModel> <>9__38_2;

			public static Func<Category, IEnumerable<CategoryServer>> <>9__38_4;

			public static Func<ServerViewModel, ServerViewModel> <>9__38_5;

			internal ServerViewModel <ReorderItems>b__36_0(ServerViewModel c)
			{
				return c;
			}

			internal IEnumerable<CountryServer> <CreateServerViewModels>b__38_1(Country c)
			{
				return c.get_Servers();
			}

			internal ServerViewModel <CreateServerViewModels>b__38_2(ServerViewModel s)
			{
				return s;
			}

			internal IEnumerable<CategoryServer> <CreateServerViewModels>b__38_4(Category c)
			{
				return c.get_Servers();
			}

			internal ServerViewModel <CreateServerViewModels>b__38_5(ServerViewModel s)
			{
				return s;
			}
		}

		private readonly EventFacade _eventFacade;

		private readonly VpnConnector _vpnConnector;

		private readonly ISettings _settings;

		private readonly UserContext _userContext;

		private readonly ServerComparerViewModel _firstComparer;

		private ServerComparerViewModel _selectedItemComparer;

		private INamedGroup _group;

		private readonly IServerProvider _serverProvider;

		private readonly FavouritesManager _favouritesManager;

		public BindableCollection<ServerViewModel> Items
		{
			[CompilerGenerated]
			get
			{
				return this.<Items>k__BackingField;
			}
		}

		public ObservableCollection<ServerComparerViewModel> ItemComparers
		{
			[CompilerGenerated]
			get
			{
				return this.<ItemComparers>k__BackingField;
			}
		}

		public ServerComparerViewModel SelectedItemComparer
		{
			get
			{
				return this._selectedItemComparer;
			}
			set
			{
				ServerComparerViewModel serverComparerViewModel = value ?? this._firstComparer;
				if (this.Set<ServerComparerViewModel>(ref this._selectedItemComparer, serverComparerViewModel, "SelectedItemComparer"))
				{
					this.ReorderItems(serverComparerViewModel.Comparer);
				}
			}
		}

		public virtual INamedGroup Group
		{
			get
			{
				return this._group;
			}
			set
			{
				this.Set<INamedGroup>(ref this._group, value, "Group");
			}
		}

		public DetailedServersViewModel(EventFacade eventFacade, UserContext userContext, FavouritesManager favouritesManager, ISettings settings, IReadOnlyCollection<ServerComparerViewModel> comparers, IServerProvider serverProvider, VpnConnector vpnConnector)
		{
			this.<Items>k__BackingField = new BindableCollection<ServerViewModel>();
			this.<ItemComparers>k__BackingField = new ObservableCollection<ServerComparerViewModel>();
			base..ctor();
			Guard.NotEmpty<ServerComparerViewModel>(comparers, "comparers");
			this._eventFacade = eventFacade;
			this._userContext = userContext;
			this._favouritesManager = favouritesManager;
			this._settings = settings;
			this._serverProvider = serverProvider;
			this._serverProvider.add_ServersChanged(delegate(object s, EventArgs e)
			{
				this.UpdateServers();
			});
			this._vpnConnector = vpnConnector;
			this._userContext.add_UserChanged(delegate(object s, UserEventArgs e)
			{
				this.UpdateDistance();
			});
			this._favouritesManager.FavouriteServersChanged += new EventHandler<FavouriteServersChangedEventArgs>(this.OnFavouritesChanged);
			this._settings.Observe<UserSettings, DistanceUnits>((UserSettings d) => d.DistanceUnits, delegate(DistanceUnits d)
			{
				this.UpdateDistance();
			});
			this._vpnConnector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.OnGeoServerConnectionStatusChanged);
			this._firstComparer = comparers.First<ServerComparerViewModel>();
			this._selectedItemComparer = this._firstComparer;
			this.ItemComparers.AddRange(comparers);
		}

		protected sealed override void OnActivate()
		{
			base.OnActivate();
			this.SelectedItemComparer = this._firstComparer;
			this.UpdateServers();
		}

		void IHandle<NavigateToServersDetailsMessage<Country>>.Handle(NavigateToServersDetailsMessage<Country> message)
		{
			this.Group = message.Group;
		}

		void IHandle<NavigateToServersDetailsMessage<Category>>.Handle(NavigateToServersDetailsMessage<Category> message)
		{
			this.Group = message.Group;
		}

		public void ShowServers()
		{
			INamedGroup group = this.Group;
			if (group != null)
			{
				if (group is Country)
				{
					this._eventFacade.Publish(new NavigateToServersGroupsMessage<Country>());
					return;
				}
				if (group is Category)
				{
					this._eventFacade.Publish(new NavigateToServersGroupsMessage<Category>());
					return;
				}
			}
			throw new NotSupportedException();
		}

		protected virtual void OnFavouritesChanged(IReadOnlyCollection<CategoryServer> servers)
		{
			foreach (ServerViewModel current in this.Items)
			{
				bool value = servers.Contains(current.Server);
				current.ChangeFavouriteStatusWithoutStatusChangeNotify(value);
			}
		}

		protected virtual void OnServerFavouriteStatusChangedManually(GeographicalServer server, bool isFavourite)
		{
			this._favouritesManager.SaveFavourite(server, isFavourite);
		}

		protected virtual ServerViewModel CreateServerViewModel(GeographicalServer server)
		{
			DistanceValue distance = this.GetDistance(server);
			ServerViewModel serverViewModel = new ServerViewModel(server, distance);
			serverViewModel.VpnState = this._vpnConnector.GetState(serverViewModel.Server);
			serverViewModel.IsFavourite = this._userContext.get_CurrentUser().IsFavourite(server);
			serverViewModel.ConnectRequested += new EventHandler(this.OnConnectToServerRequested);
			serverViewModel.DisconnectRequested += new EventHandler(this.OnDisconnectRequested);
			serverViewModel.FavouriteStatusChanged += new EventHandler<EventArgs<bool>>(this.UpdateUserFavourites);
			return serverViewModel;
		}

		protected virtual void UpdateServers()
		{
			if (this.Group == null)
			{
				return;
			}
			this.Items.Clear();
			this.Items.AddRange(this.CreateServerViewModels(this.Group));
		}

		[AsyncStateMachine(typeof(DetailedServersViewModel.<OnConnectToServerRequested>d__30))]
		private void OnConnectToServerRequested(object sender, EventArgs e)
		{
			DetailedServersViewModel.<OnConnectToServerRequested>d__30 <OnConnectToServerRequested>d__;
			<OnConnectToServerRequested>d__.<>4__this = this;
			<OnConnectToServerRequested>d__.sender = sender;
			<OnConnectToServerRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnConnectToServerRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnConnectToServerRequested>d__.<>t__builder;
			<>t__builder.Start<DetailedServersViewModel.<OnConnectToServerRequested>d__30>(ref <OnConnectToServerRequested>d__);
		}

		[AsyncStateMachine(typeof(DetailedServersViewModel.<OnDisconnectRequested>d__31))]
		private void OnDisconnectRequested(object sender, EventArgs eventArgs)
		{
			DetailedServersViewModel.<OnDisconnectRequested>d__31 <OnDisconnectRequested>d__;
			<OnDisconnectRequested>d__.<>4__this = this;
			<OnDisconnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnDisconnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnDisconnectRequested>d__.<>t__builder;
			<>t__builder.Start<DetailedServersViewModel.<OnDisconnectRequested>d__31>(ref <OnDisconnectRequested>d__);
		}

		private void OnGeoServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			ServerViewModel serverViewModel = this.Items.FirstOrDefault((ServerViewModel i) => i.Server.Equals(e.Server));
			if (serverViewModel != null)
			{
				serverViewModel.VpnState = e.State;
			}
		}

		private void UpdateDistance()
		{
			foreach (ServerViewModel current in this.Items)
			{
				current.Distance = this.GetDistance(current.Server);
			}
		}

		private void UpdateUserFavourites(object sender, EventArgs<bool> e)
		{
			ServerViewModel serverViewModel = (ServerViewModel)sender;
			this.OnServerFavouriteStatusChangedManually(serverViewModel.Server, e.get_Data());
		}

		private void OnFavouritesChanged(object sender, FavouriteServersChangedEventArgs e)
		{
			this.OnFavouritesChanged(e.get_Servers());
		}

		private void ReorderItems(IComparer<ServerViewModel> comparer)
		{
			IEnumerable<ServerViewModel> arg_26_0 = this.Items;
			Func<ServerViewModel, ServerViewModel> arg_26_1;
			if ((arg_26_1 = DetailedServersViewModel.<>c.<>9__36_0) == null)
			{
				arg_26_1 = (DetailedServersViewModel.<>c.<>9__36_0 = new Func<ServerViewModel, ServerViewModel>(DetailedServersViewModel.<>c.<>9.<ReorderItems>b__36_0));
			}
			List<ServerViewModel> list = arg_26_0.OrderBy(arg_26_1, comparer).ToList<ServerViewModel>();
			this.Items.Clear();
			this.Items.AddRange(list);
		}

		private DistanceValue GetDistance(GeographicalServer server)
		{
			return new DistanceValue(server.get_Coordinates().GetDistance(this._userContext.get_CurrentUser().get_Coordinates()), this._settings.Of<UserSettings>().get_DistanceUnits());
		}

		private IEnumerable<ServerViewModel> CreateServerViewModels(INamedGroup group)
		{
			Country country;
			if ((country = (group as Country)) != null)
			{
				IEnumerable<Country> arg_55_0 = from c in this._serverProvider.GetCountries()
				where c.get_Identifier().Equals(country.get_Identifier())
				select c;
				Func<Country, IEnumerable<CountryServer>> arg_55_1;
				if ((arg_55_1 = DetailedServersViewModel.<>c.<>9__38_1) == null)
				{
					arg_55_1 = (DetailedServersViewModel.<>c.<>9__38_1 = new Func<Country, IEnumerable<CountryServer>>(DetailedServersViewModel.<>c.<>9.<CreateServerViewModels>b__38_1));
				}
				IEnumerable<ServerViewModel> arg_96_0 = arg_55_0.SelectMany(arg_55_1).Select(new Func<CountryServer, ServerViewModel>(this.CreateServerViewModel));
				Func<ServerViewModel, ServerViewModel> arg_96_1;
				if ((arg_96_1 = DetailedServersViewModel.<>c.<>9__38_2) == null)
				{
					arg_96_1 = (DetailedServersViewModel.<>c.<>9__38_2 = new Func<ServerViewModel, ServerViewModel>(DetailedServersViewModel.<>c.<>9.<CreateServerViewModels>b__38_2));
				}
				return arg_96_0.OrderBy(arg_96_1, this.SelectedItemComparer.Comparer);
			}
			Category category;
			if ((category = (group as Category)) != null)
			{
				IEnumerable<Category> arg_EE_0 = from c in this._serverProvider.GetCategories()
				where c.get_Identifier().Equals(category.get_Identifier())
				select c;
				Func<Category, IEnumerable<CategoryServer>> arg_EE_1;
				if ((arg_EE_1 = DetailedServersViewModel.<>c.<>9__38_4) == null)
				{
					arg_EE_1 = (DetailedServersViewModel.<>c.<>9__38_4 = new Func<Category, IEnumerable<CategoryServer>>(DetailedServersViewModel.<>c.<>9.<CreateServerViewModels>b__38_4));
				}
				IEnumerable<ServerViewModel> arg_137_0 = arg_EE_0.SelectMany(arg_EE_1).Select(new Func<CategoryServer, ServerViewModel>(this.CreateServerViewModel));
				Func<ServerViewModel, ServerViewModel> arg_137_1;
				if ((arg_137_1 = DetailedServersViewModel.<>c.<>9__38_5) == null)
				{
					arg_137_1 = (DetailedServersViewModel.<>c.<>9__38_5 = new Func<ServerViewModel, ServerViewModel>(DetailedServersViewModel.<>c.<>9.<CreateServerViewModels>b__38_5));
				}
				return arg_137_0.OrderBy(arg_137_1, this.SelectedItemComparer.Comparer);
			}
			throw new NotSupportedException();
		}
	}
}
