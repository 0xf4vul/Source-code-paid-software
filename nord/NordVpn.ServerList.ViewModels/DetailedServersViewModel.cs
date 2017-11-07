using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Common;
using NordVpn.Core.Abstract;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Geographical;
using NordVpn.Core.Models.ServerCategories;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels.Sort;
using NordVpn.Shared;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels
{
	public class DetailedServersViewModel : AppScreen, IHandle<NavigateToServersGroupViewMessage<Country>>, IHandle<NavigateToServersGroupViewMessage<Category>>, IHandle
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly DetailedServersViewModel.<>c <>9 = new DetailedServersViewModel.<>c();

			public static Func<ServerViewModel, ServerViewModel> <>9__21_0;

			public static Func<ServerViewModel, ServerViewModel> <>9__22_0;

			public static Func<ServerViewModel, ServerViewModel> <>9__29_0;

			internal ServerViewModel <Handle>b__21_0(ServerViewModel s)
			{
				return s;
			}

			internal ServerViewModel <Handle>b__22_0(ServerViewModel s)
			{
				return s;
			}

			internal ServerViewModel <ReorderItems>b__29_0(ServerViewModel c)
			{
				return c;
			}
		}

		private readonly EventFacade _eventFacade;

		private readonly VpnConnector _vpnConnector;

		private readonly UserPreferences _userPreferences;

		private readonly IUserContext _userContext;

		private readonly ServerComparerViewModel _firstComparer;

		private ServerComparerViewModel _selectedItemComparer;

		private IIdentityGroup _group;

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
				Guard.NotNull<ServerComparerViewModel>(value, "SelectedItemComparer");
				if (base.Set<ServerComparerViewModel>(ref this._selectedItemComparer, value, "SelectedItemComparer"))
				{
					this.ReorderItems(value.Comparer);
				}
			}
		}

		public IIdentityGroup Group
		{
			get
			{
				return this._group;
			}
			set
			{
				base.Set<IIdentityGroup>(ref this._group, value, "Group");
			}
		}

		public DetailedServersViewModel(EventFacade eventFacade, IUserContext userContext, UserPreferences userPreferences, IReadOnlyCollection<ServerComparerViewModel> comparers, VpnConnector vpnConnector)
		{
			this.<Items>k__BackingField = new BindableCollection<ServerViewModel>();
			this.<ItemComparers>k__BackingField = new ObservableCollection<ServerComparerViewModel>();
			base..ctor();
			Guard.NotEmpty<ServerComparerViewModel>(comparers, "comparers");
			this._eventFacade = eventFacade;
			this._userPreferences = userPreferences;
			this._userContext = userContext;
			this._vpnConnector = vpnConnector;
			this._userContext.add_UserChanged(new EventHandler<UserEventArgs>(this.UpdateDistance));
			this._userContext.add_FavouritesChanged(new EventHandler<FavouriteServersChangedEventArgs>(this.OnFavouritesChanged));
			this._userPreferences.add_DistanceUnitsChanged(new EventHandler<DistanceUnitsChangedEventArgs>(this.UpdateDistance));
			this._vpnConnector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.OnGeoServerConnectionStatusChanged);
			this._firstComparer = comparers.First<ServerComparerViewModel>();
			this._selectedItemComparer = this._firstComparer;
			this.ItemComparers.AddRange(comparers);
		}

		public void ShowServers()
		{
			this._eventFacade.Publish(new ServerlistRequestMessage());
		}

		public void Handle(NavigateToServersGroupViewMessage<Country> message)
		{
			this.SelectedItemComparer = this._firstComparer;
			this.Items.Clear();
			BindableCollection<ServerViewModel> arg_68_0 = this.Items;
			IEnumerable<ServerViewModel> arg_63_0 = message.Group.get_Servers().Select(new Func<CountryServer, ServerViewModel>(this.CreateServerViewModel));
			Func<ServerViewModel, ServerViewModel> arg_63_1;
			if ((arg_63_1 = DetailedServersViewModel.<>c.<>9__21_0) == null)
			{
				arg_63_1 = (DetailedServersViewModel.<>c.<>9__21_0 = new Func<ServerViewModel, ServerViewModel>(DetailedServersViewModel.<>c.<>9.<Handle>b__21_0));
			}
			arg_68_0.AddRange(arg_63_0.OrderBy(arg_63_1, this._selectedItemComparer.Comparer));
			this.Group = message.Group;
		}

		public void Handle(NavigateToServersGroupViewMessage<Category> message)
		{
			this.SelectedItemComparer = this._firstComparer;
			this.Items.Clear();
			BindableCollection<ServerViewModel> arg_68_0 = this.Items;
			IEnumerable<ServerViewModel> arg_63_0 = message.Group.get_Servers().Select(new Func<CategoryServer, ServerViewModel>(this.CreateServerViewModel));
			Func<ServerViewModel, ServerViewModel> arg_63_1;
			if ((arg_63_1 = DetailedServersViewModel.<>c.<>9__22_0) == null)
			{
				arg_63_1 = (DetailedServersViewModel.<>c.<>9__22_0 = new Func<ServerViewModel, ServerViewModel>(DetailedServersViewModel.<>c.<>9.<Handle>b__22_0));
			}
			arg_68_0.AddRange(arg_63_0.OrderBy(arg_63_1, this._selectedItemComparer.Comparer));
			this.Group = message.Group;
		}

		[AsyncStateMachine(typeof(DetailedServersViewModel.<OnConnectToServerRequested>d__23))]
		private void OnConnectToServerRequested(object sender, EventArgs e)
		{
			DetailedServersViewModel.<OnConnectToServerRequested>d__23 <OnConnectToServerRequested>d__;
			<OnConnectToServerRequested>d__.<>4__this = this;
			<OnConnectToServerRequested>d__.sender = sender;
			<OnConnectToServerRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnConnectToServerRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnConnectToServerRequested>d__.<>t__builder;
			<>t__builder.Start<DetailedServersViewModel.<OnConnectToServerRequested>d__23>(ref <OnConnectToServerRequested>d__);
		}

		[AsyncStateMachine(typeof(DetailedServersViewModel.<OnDisconnectRequested>d__24))]
		private void OnDisconnectRequested(object sender, EventArgs eventArgs)
		{
			DetailedServersViewModel.<OnDisconnectRequested>d__24 <OnDisconnectRequested>d__;
			<OnDisconnectRequested>d__.<>4__this = this;
			<OnDisconnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnDisconnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnDisconnectRequested>d__.<>t__builder;
			<>t__builder.Start<DetailedServersViewModel.<OnDisconnectRequested>d__24>(ref <OnDisconnectRequested>d__);
		}

		private void OnGeoServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			ServerViewModel serverViewModel = this.Items.FirstOrDefault((ServerViewModel i) => i.Server.Equals(e.Server));
			if (serverViewModel != null)
			{
				serverViewModel.VpnState = e.State;
			}
		}

		private void UpdateDistance(object sender, EventArgs e)
		{
			foreach (ServerViewModel current in this.Items)
			{
				current.Distance = this.GetDistance(current.Server);
			}
		}

		private void OnFavouriteStatusChanged(object sender, DataEventArgs<bool> e)
		{
			ServerViewModel serverViewModel = (ServerViewModel)sender;
			this._userContext.get_CurrentUser().UpdateFavourite(serverViewModel.Server, e.Data);
		}

		private void OnFavouritesChanged(object sender, FavouriteServersChangedEventArgs e)
		{
			foreach (ServerViewModel current in this.Items)
			{
				bool value = e.get_Servers().Contains(current.Server);
				current.ChangeFavouriteStatusWithoutStatusChangeNotify(value);
			}
			if (!(this.Group is FavouriteServerCategory))
			{
				return;
			}
			using (IEnumerator<CategoryServer> enumerator2 = e.get_Servers().GetEnumerator())
			{
				while (enumerator2.MoveNext())
				{
					CategoryServer server = enumerator2.Current;
					if (!this.Items.Any((ServerViewModel i) => i.Server.Equals(server)))
					{
						this.Items.Add(this.CreateServerViewModel(server));
					}
				}
			}
		}

		private void ReorderItems(IComparer<ServerViewModel> comparer)
		{
			IEnumerable<ServerViewModel> arg_26_0 = this.Items;
			Func<ServerViewModel, ServerViewModel> arg_26_1;
			if ((arg_26_1 = DetailedServersViewModel.<>c.<>9__29_0) == null)
			{
				arg_26_1 = (DetailedServersViewModel.<>c.<>9__29_0 = new Func<ServerViewModel, ServerViewModel>(DetailedServersViewModel.<>c.<>9.<ReorderItems>b__29_0));
			}
			List<ServerViewModel> list = arg_26_0.OrderBy(arg_26_1, comparer).ToList<ServerViewModel>();
			this.Items.Clear();
			this.Items.AddRange(list);
		}

		private ServerViewModel CreateServerViewModel(GeographicalServer server)
		{
			DistanceValue distance = this.GetDistance(server);
			ServerViewModel serverViewModel = new ServerViewModel(server, distance);
			serverViewModel.VpnState = this._vpnConnector.GetState(serverViewModel.Server);
			serverViewModel.IsFavourite = this._userContext.get_CurrentUser().IsFavourite(server);
			serverViewModel.ConnectRequested += new EventHandler(this.OnConnectToServerRequested);
			serverViewModel.DisconnectRequested += new EventHandler(this.OnDisconnectRequested);
			serverViewModel.FavouriteStatusChanged += new EventHandler<DataEventArgs<bool>>(this.OnFavouriteStatusChanged);
			return serverViewModel;
		}

		private DistanceValue GetDistance(GeographicalServer server)
		{
			return new DistanceValue(server.get_Coordinates().GetDistance(this._userContext.get_CurrentUser().get_Coordinates()), this._userPreferences.get_DistanceUnits());
		}
	}
}
