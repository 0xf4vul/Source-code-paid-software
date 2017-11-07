using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Core.Abstract;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels.Sort;
using NordVpn.Shared;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels
{
	public class ServersViewModel : AppScreen
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ServersViewModel.<>c <>9 = new ServersViewModel.<>c();

			public static Func<ServerGroupViewModel, ServerGroupViewModel> <>9__9_0;

			internal ServerGroupViewModel <OnServersChanged>b__9_0(ServerGroupViewModel g)
			{
				return g;
			}
		}

		private readonly BestVpnServerConnector _vpnConnector;

		private readonly IServerProvider _serverProvider;

		private readonly EventFacade _eventFacade;

		private readonly IUserContext _userContext;

		private readonly ServerGroupsComparer _serverGroupComparer;

		public BindableCollection<ServerGroupViewModel> ServersGroups
		{
			[CompilerGenerated]
			get
			{
				return this.<ServersGroups>k__BackingField;
			}
		}

		public ServersViewModel(EventFacade eventFacade, BestVpnServerConnector vpnConnector, IServerProvider serverProvider, IUserContext userContext)
		{
			this.<ServersGroups>k__BackingField = new BindableCollection<ServerGroupViewModel>();
			base..ctor();
			this._eventFacade = eventFacade;
			this._vpnConnector = vpnConnector;
			this._serverProvider = serverProvider;
			this._userContext = userContext;
			this._serverGroupComparer = new ServerGroupsComparer();
			this._serverProvider.add_ServersChanged(new EventHandler(this.OnServersChanged));
			this._vpnConnector.CategoryServerConnectionStatusChanged += new ConnectionEventHandler<CategoryServer>(this.OnCategoryServerConnectionStatusChanged);
			this._vpnConnector.CountryServerConnectionStatusChanged += new ConnectionEventHandler<CountryServer>(this.OnCountryServerConnectionStatusChanged);
			this._userContext.add_FavouritesChanged(new EventHandler<FavouriteServersChangedEventArgs>(this.OnFavouritesChanged));
		}

		private void OnServersChanged(object sender, EventArgs e)
		{
			this.ServersGroups.Clear();
			BindableCollection<ServerGroupViewModel> arg_41_0 = this.ServersGroups;
			IEnumerable<ServerGroupViewModel> arg_3C_0 = this.GetServerGroups();
			Func<ServerGroupViewModel, ServerGroupViewModel> arg_3C_1;
			if ((arg_3C_1 = ServersViewModel.<>c.<>9__9_0) == null)
			{
				arg_3C_1 = (ServersViewModel.<>c.<>9__9_0 = new Func<ServerGroupViewModel, ServerGroupViewModel>(ServersViewModel.<>c.<>9.<OnServersChanged>b__9_0));
			}
			arg_41_0.AddRange(arg_3C_0.OrderBy(arg_3C_1, this._serverGroupComparer));
		}

		[IteratorStateMachine(typeof(ServersViewModel.<GetServerGroups>d__10))]
		private IEnumerable<ServerGroupViewModel> GetServerGroups()
		{
			ServersViewModel.<GetServerGroups>d__10 expr_07 = new ServersViewModel.<GetServerGroups>d__10(-2);
			expr_07.<>4__this = this;
			return expr_07;
		}

		private void OnShowCountryServersRequested(object sender, EventArgs e)
		{
			this._eventFacade.Publish(new NavigateToServersGroupViewMessage<Country>(((CountryCategoryGroupViewModel)sender).Country));
		}

		private void OnShowCategoryServersRequested(object sender, EventArgs e)
		{
			this._eventFacade.Publish(new NavigateToServersGroupViewMessage<Category>(((ServerCategoryGroupViewModel)sender).Category));
		}

		[AsyncStateMachine(typeof(ServersViewModel.<OnCategoryGroupDisconnectRequested>d__13))]
		private void OnCategoryGroupDisconnectRequested(object sender, EventArgs e)
		{
			ServersViewModel.<OnCategoryGroupDisconnectRequested>d__13 <OnCategoryGroupDisconnectRequested>d__;
			<OnCategoryGroupDisconnectRequested>d__.<>4__this = this;
			<OnCategoryGroupDisconnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnCategoryGroupDisconnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnCategoryGroupDisconnectRequested>d__.<>t__builder;
			<>t__builder.Start<ServersViewModel.<OnCategoryGroupDisconnectRequested>d__13>(ref <OnCategoryGroupDisconnectRequested>d__);
		}

		[AsyncStateMachine(typeof(ServersViewModel.<OnCountryGroupDisconnectRequested>d__14))]
		private void OnCountryGroupDisconnectRequested(object sender, EventArgs e)
		{
			ServersViewModel.<OnCountryGroupDisconnectRequested>d__14 <OnCountryGroupDisconnectRequested>d__;
			<OnCountryGroupDisconnectRequested>d__.<>4__this = this;
			<OnCountryGroupDisconnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnCountryGroupDisconnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnCountryGroupDisconnectRequested>d__.<>t__builder;
			<>t__builder.Start<ServersViewModel.<OnCountryGroupDisconnectRequested>d__14>(ref <OnCountryGroupDisconnectRequested>d__);
		}

		[AsyncStateMachine(typeof(ServersViewModel.<OnCategoryGroupConnectRequested>d__15))]
		private void OnCategoryGroupConnectRequested(object sender, EventArgs e)
		{
			ServersViewModel.<OnCategoryGroupConnectRequested>d__15 <OnCategoryGroupConnectRequested>d__;
			<OnCategoryGroupConnectRequested>d__.<>4__this = this;
			<OnCategoryGroupConnectRequested>d__.sender = sender;
			<OnCategoryGroupConnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnCategoryGroupConnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnCategoryGroupConnectRequested>d__.<>t__builder;
			<>t__builder.Start<ServersViewModel.<OnCategoryGroupConnectRequested>d__15>(ref <OnCategoryGroupConnectRequested>d__);
		}

		[AsyncStateMachine(typeof(ServersViewModel.<OnCountryGroupConnectRequested>d__16))]
		private void OnCountryGroupConnectRequested(object sender, EventArgs e)
		{
			ServersViewModel.<OnCountryGroupConnectRequested>d__16 <OnCountryGroupConnectRequested>d__;
			<OnCountryGroupConnectRequested>d__.<>4__this = this;
			<OnCountryGroupConnectRequested>d__.sender = sender;
			<OnCountryGroupConnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnCountryGroupConnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnCountryGroupConnectRequested>d__.<>t__builder;
			<>t__builder.Start<ServersViewModel.<OnCountryGroupConnectRequested>d__16>(ref <OnCountryGroupConnectRequested>d__);
		}

		private void OnCategoryServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<CategoryServer> e)
		{
			ServerCategoryGroupViewModel serverCategoryGroupViewModel = this.ServersGroups.OfType<ServerCategoryGroupViewModel>().FirstOrDefault((ServerCategoryGroupViewModel g) => g.Category.get_Identifier().Equals(e.Server.get_Category()));
			if (serverCategoryGroupViewModel != null)
			{
				serverCategoryGroupViewModel.VpnState = e.State;
			}
		}

		private void OnCountryServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<CountryServer> e)
		{
			CountryCategoryGroupViewModel countryCategoryGroupViewModel = this.ServersGroups.OfType<CountryCategoryGroupViewModel>().FirstOrDefault((CountryCategoryGroupViewModel g) => g.Country.get_Identifier().Equals(e.Server.get_Country()));
			if (countryCategoryGroupViewModel != null)
			{
				countryCategoryGroupViewModel.VpnState = e.State;
			}
		}

		private void OnFavouritesChanged(object sender, FavouriteServersChangedEventArgs e)
		{
			if (e.get_Servers().Any<CategoryServer>())
			{
				FavouriteCategoryGroupViewModel favouriteCategoryGroupViewModel = this.ServersGroups.FirstOrDefaultOfType<FavouriteCategoryGroupViewModel>();
				if (favouriteCategoryGroupViewModel == null)
				{
					favouriteCategoryGroupViewModel = this.CreateFavouritesGroup();
					this.ServersGroups.Insert(0, favouriteCategoryGroupViewModel);
					return;
				}
				favouriteCategoryGroupViewModel.Category.UpdateServers(e.get_Servers());
				return;
			}
			else
			{
				FavouriteCategoryGroupViewModel favouriteCategoryGroupViewModel2 = this.ServersGroups.FirstOrDefaultOfType<FavouriteCategoryGroupViewModel>();
				if (favouriteCategoryGroupViewModel2 == null)
				{
					return;
				}
				this.ServersGroups.Remove(favouriteCategoryGroupViewModel2);
				return;
			}
		}

		private FavouriteCategoryGroupViewModel CreateFavouritesGroup()
		{
			FavouriteServerCategory expr_05 = new FavouriteServerCategory();
			expr_05.UpdateServers(this._userContext.get_CurrentUser().get_FavouriteServers());
			FavouriteCategoryGroupViewModel favouriteCategoryGroupViewModel = new FavouriteCategoryGroupViewModel(expr_05);
			favouriteCategoryGroupViewModel.ShowServersRequested += new EventHandler(this.OnShowCategoryServersRequested);
			favouriteCategoryGroupViewModel.ConnectRequested += new EventHandler(this.OnCategoryGroupConnectRequested);
			favouriteCategoryGroupViewModel.DisconnectRequested += new EventHandler(this.OnCategoryGroupDisconnectRequested);
			favouriteCategoryGroupViewModel.VpnState = this._vpnConnector.GetState(favouriteCategoryGroupViewModel.Category.get_Identifier());
			return favouriteCategoryGroupViewModel;
		}
	}
}
