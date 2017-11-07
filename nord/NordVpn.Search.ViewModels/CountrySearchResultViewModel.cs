using NordVpn.Core.Models;
using NordVpn.Shared;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Search.ViewModels
{
	public class CountrySearchResultViewModel : SearchResultViewModel
	{
		private readonly BestVpnServerConnector _connector;

		private readonly Country _country;

		public CountrySearchResultViewModel(Country country, BestVpnServerConnector connector)
		{
			Guard.NotNull<Country>(country, "country");
			this._country = country;
			this._connector = connector;
			base.Name = country.get_Name() + " best server";
		}

		[AsyncStateMachine(typeof(CountrySearchResultViewModel.<ConnectAsync>d__3))]
		public override Task ConnectAsync()
		{
			CountrySearchResultViewModel.<ConnectAsync>d__3 <ConnectAsync>d__;
			<ConnectAsync>d__.<>4__this = this;
			<ConnectAsync>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ConnectAsync>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ConnectAsync>d__.<>t__builder;
			<>t__builder.Start<CountrySearchResultViewModel.<ConnectAsync>d__3>(ref <ConnectAsync>d__);
			return <ConnectAsync>d__.<>t__builder.Task;
		}
	}
}
