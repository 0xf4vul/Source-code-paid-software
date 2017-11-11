using NordVpn.Search.ViewModels;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Search
{
	public sealed class SearchResultVpnConnectionVisitor
	{
		private readonly BestVpnServerConnector _vpnConnector;

		public SearchResultVpnConnectionVisitor(BestVpnServerConnector vpnConnector)
		{
			this._vpnConnector = vpnConnector;
		}

		[AsyncStateMachine(typeof(SearchResultVpnConnectionVisitor.<Visit>d__2))]
		public Task Visit(ServerSearchResultViewModel server)
		{
			SearchResultVpnConnectionVisitor.<Visit>d__2 <Visit>d__;
			<Visit>d__.<>4__this = this;
			<Visit>d__.server = server;
			<Visit>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Visit>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Visit>d__.<>t__builder;
			<>t__builder.Start<SearchResultVpnConnectionVisitor.<Visit>d__2>(ref <Visit>d__);
			return <Visit>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(SearchResultVpnConnectionVisitor.<Visit>d__3))]
		public Task Visit(CountrySearchResultViewModel countrySearchResult)
		{
			SearchResultVpnConnectionVisitor.<Visit>d__3 <Visit>d__;
			<Visit>d__.<>4__this = this;
			<Visit>d__.countrySearchResult = countrySearchResult;
			<Visit>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Visit>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Visit>d__.<>t__builder;
			<>t__builder.Start<SearchResultVpnConnectionVisitor.<Visit>d__3>(ref <Visit>d__);
			return <Visit>d__.<>t__builder.Task;
		}
	}
}
