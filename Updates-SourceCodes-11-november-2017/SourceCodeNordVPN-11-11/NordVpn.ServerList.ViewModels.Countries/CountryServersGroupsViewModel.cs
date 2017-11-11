using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Models;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels.Categories;
using NordVpn.ServerList.ViewModels.Sort;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels.Countries
{
	public sealed class CountryServersGroupsViewModel : AppScreen
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly CountryServersGroupsViewModel.<>c <>9 = new CountryServersGroupsViewModel.<>c();

			public static Func<ServerGroupViewModel, ServerGroupViewModel> <>9__12_0;

			internal ServerGroupViewModel <OnServersChanged>b__12_0(ServerGroupViewModel g)
			{
				return g;
			}
		}

		private readonly BestVpnServerConnector _vpnConnector;

		private readonly IServerProvider _serverProvider;

		private readonly EventFacade _eventFacade;

		private readonly ServerGroupsComparer _serverGroupComparer;

		public override string DisplayName
		{
			get;
			set;
		}

		public BindableCollection<ServerGroupViewModel> ServersGroups
		{
			[CompilerGenerated]
			get
			{
				return this.<ServersGroups>k__BackingField;
			}
		}

		public CountryServersGroupsViewModel(EventFacade eventFacade, BestVpnServerConnector vpnConnector, IServerProvider serverProvider)
		{
			this.<DisplayName>k__BackingField = "Countries";
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
			if ((arg_3C_1 = CountryServersGroupsViewModel.<>c.<>9__12_0) == null)
			{
				arg_3C_1 = (CountryServersGroupsViewModel.<>c.<>9__12_0 = new Func<ServerGroupViewModel, ServerGroupViewModel>(CountryServersGroupsViewModel.<>c.<>9.<OnServersChanged>b__12_0));
			}
			arg_41_0.AddRange(arg_3C_0.OrderBy(arg_3C_1, this._serverGroupComparer));
		}

		[IteratorStateMachine(typeof(CountryServersGroupsViewModel.<GetServerGroups>d__13))]
		private IEnumerable<ServerGroupViewModel> GetServerGroups()
		{
			CountryServersGroupsViewModel.<GetServerGroups>d__13 expr_07 = new CountryServersGroupsViewModel.<GetServerGroups>d__13(-2);
			expr_07.<>4__this = this;
			return expr_07;
		}

		private void OnShowCountryServersRequested(object sender, EventArgs e)
		{
			this._eventFacade.Publish(new NavigateToServersDetailsMessage<Country>(((CountryGroupViewModel)sender).Country));
		}

		[AsyncStateMachine(typeof(CountryServersGroupsViewModel.<OnCountryGroupDisconnectRequested>d__15))]
		private void OnCountryGroupDisconnectRequested(object sender, EventArgs e)
		{
			CountryServersGroupsViewModel.<OnCountryGroupDisconnectRequested>d__15 <OnCountryGroupDisconnectRequested>d__;
			<OnCountryGroupDisconnectRequested>d__.<>4__this = this;
			<OnCountryGroupDisconnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnCountryGroupDisconnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnCountryGroupDisconnectRequested>d__.<>t__builder;
			<>t__builder.Start<CountryServersGroupsViewModel.<OnCountryGroupDisconnectRequested>d__15>(ref <OnCountryGroupDisconnectRequested>d__);
		}

		[AsyncStateMachine(typeof(CountryServersGroupsViewModel.<OnCountryGroupConnectRequested>d__16))]
		private void OnCountryGroupConnectRequested(object sender, EventArgs e)
		{
			CountryServersGroupsViewModel.<OnCountryGroupConnectRequested>d__16 <OnCountryGroupConnectRequested>d__;
			<OnCountryGroupConnectRequested>d__.<>4__this = this;
			<OnCountryGroupConnectRequested>d__.sender = sender;
			<OnCountryGroupConnectRequested>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnCountryGroupConnectRequested>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnCountryGroupConnectRequested>d__.<>t__builder;
			<>t__builder.Start<CountryServersGroupsViewModel.<OnCountryGroupConnectRequested>d__16>(ref <OnCountryGroupConnectRequested>d__);
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
