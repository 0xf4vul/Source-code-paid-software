using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels.Countries;
using NordVpn.ServerList.ViewModels.Sort;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels.Categories
{
	public sealed class CategoryServersGroupsViewModel : AppScreen
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly CategoryServersGroupsViewModel.<>c <>9 = new CategoryServersGroupsViewModel.<>c();

			public static Func<ServerGroupViewModel, ServerGroupViewModel> <>9__8_0;

			internal ServerGroupViewModel <OnServersChanged>b__8_0(ServerGroupViewModel g)
			{
				return g;
			}
		}

		private readonly BestVpnServerConnector _vpnConnector;

		private readonly IServerProvider _serverProvider;

		private readonly EventFacade _eventFacade;

		private readonly ServerGroupsComparer _serverGroupComparer;

		public BindableCollection<ServerGroupViewModel> ServersGroups
		{
			[CompilerGenerated]
			get
			{
				return this.<ServersGroups>k__BackingField;
			}
		}

		public CategoryServersGroupsViewModel(EventFacade eventFacade, BestVpnServerConnector vpnConnector, IServerProvider serverProvider)
		{
			this.<ServersGroups>k__BackingField = new BindableCollection<ServerGroupViewModel>();
			base..ctor();
			this._eventFacade = eventFacade;
			this._vpnConnector = vpnConnector;
			this._serverProvider = serverProvider;
			this._serverGroupComparer = new ServerGroupsComparer();
			this._serverProvider.add_ServersChanged(new EventHandler(this.OnServersChanged));
			this._vpnConnector.CategoryServerConnectionStatusChanged += new ConnectionEventHandler<CategoryServer>(this.OnCategoryServerConnectionStatusChanged);
			this._vpnConnector.CountryServerConnectionStatusChanged += new ConnectionEventHandler<CountryServer>(this.OnCountryServerConnectionStatusChanged);
		}

		private void OnServersChanged(object sender, EventArgs e)
		{
			this.ServersGroups.Clear();
			BindableCollection<ServerGroupViewModel> arg_41_0 = this.ServersGroups;
			IEnumerable<ServerGroupViewModel> arg_3C_0 = this.GetServerGroups();
			Func<ServerGroupViewModel, ServerGroupViewModel> arg_3C_1;
			if ((arg_3C_1 = CategoryServersGroupsViewModel.<>c.<>9__8_0) == null)
			{
				arg_3C_1 = (CategoryServersGroupsViewModel.<>c.<>9__8_0 = new Func<ServerGroupViewModel, ServerGroupViewModel>(CategoryServersGroupsViewModel.<>c.<>9.<OnServersChanged>b__8_0));
			}
			arg_41_0.AddRange(arg_3C_0.OrderBy(arg_3C_1, this._serverGroupComparer));
		}

		[IteratorStateMachine(typeof(CategoryServersGroupsViewModel.<GetServerGroups>d__9))]
		private IEnumerable<ServerGroupViewModel> GetServerGroups()
		{
			CategoryServersGroupsViewModel.<GetServerGroups>d__9 expr_07 = new CategoryServersGroupsViewModel.<GetServerGroups>d__9(-2);
			expr_07.<>4__this = this;
			return expr_07;
		}

		private void OnShowCategoryServersRequested(object sender, EventArgs e)
		{
			this._eventFacade.Publish(new NavigateToServersDetailsMessage<Category>(((CategoryGroupViewModel)sender).Category));
		}

		[AsyncStateMachine(typeof(CategoryServersGroupsViewModel.<OnCategoryGroupDisconnectRequested>d__11))]
		private void OnCategoryGroupDisconnectRequested(object sender, EventArgs e)
		{
			CategoryServersGroupsViewModel.<OnCategoryGroupDisconnectRequested>d__11 <OnCategoryGroupDisconnectRequested>d__;
			<OnCategoryGroupDisconnectRequested>d__.<>4__this = this;
			<OnCategoryGroupDisconnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnCategoryGroupDisconnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnCategoryGroupDisconnectRequested>d__.<>t__builder;
			<>t__builder.Start<CategoryServersGroupsViewModel.<OnCategoryGroupDisconnectRequested>d__11>(ref <OnCategoryGroupDisconnectRequested>d__);
		}

		[AsyncStateMachine(typeof(CategoryServersGroupsViewModel.<OnCategoryGroupConnectRequested>d__12))]
		private void OnCategoryGroupConnectRequested(object sender, EventArgs e)
		{
			CategoryServersGroupsViewModel.<OnCategoryGroupConnectRequested>d__12 <OnCategoryGroupConnectRequested>d__;
			<OnCategoryGroupConnectRequested>d__.<>4__this = this;
			<OnCategoryGroupConnectRequested>d__.sender = sender;
			<OnCategoryGroupConnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnCategoryGroupConnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnCategoryGroupConnectRequested>d__.<>t__builder;
			<>t__builder.Start<CategoryServersGroupsViewModel.<OnCategoryGroupConnectRequested>d__12>(ref <OnCategoryGroupConnectRequested>d__);
		}

		private void OnCategoryServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<CategoryServer> e)
		{
			CategoryGroupViewModel categoryGroupViewModel = this.ServersGroups.OfType<CategoryGroupViewModel>().FirstOrDefault((CategoryGroupViewModel g) => g.Category.get_Identifier().Equals(e.Server.get_Category()));
			if (categoryGroupViewModel != null)
			{
				categoryGroupViewModel.VpnState = e.State;
			}
		}

		private void OnCountryServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<CountryServer> e)
		{
			CountryGroupViewModel countryGroupViewModel = this.ServersGroups.OfType<CountryGroupViewModel>().FirstOrDefault((CountryGroupViewModel g) => g.Country.get_Identifier().Equals(e.Server.get_Country()));
			if (countryGroupViewModel != null)
			{
				countryGroupViewModel.VpnState = e.State;
			}
		}
	}
}
