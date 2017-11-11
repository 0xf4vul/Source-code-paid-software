using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Servers.Search;
using NordVpn.Core.Models;
using NordVpn.Search.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;

namespace NordVpn.Search
{
	public sealed class ServersSearchFacade
	{
		private readonly CountriesSearcher _countriesSearcher;

		private readonly ServersSearcher _serversSearcher;

		private readonly IServerProvider _serverProvider;

		public ServersSearchFacade(IServerProvider serverProvider, ServersSearcher serversSearcher, CountriesSearcher countriesSearcher)
		{
			this._serverProvider = serverProvider;
			this._serversSearcher = serversSearcher;
			this._countriesSearcher = countriesSearcher;
		}

		public IEnumerable<SearchResultViewModel> FindServers(string searchValue)
		{
			IReadOnlyList<Country> countries = this._serverProvider.GetCountries();
			IEnumerable<SearchResultViewModel> arg_56_0 = this._countriesSearcher.FindCountry(countries, searchValue).Select(new Func<Country, SearchResultViewModel>(ServersSearchFacade.Create));
			IReadOnlyList<GeographicalServer> servers = this._serverProvider.GetServers();
			IEnumerable<SearchResultViewModel> second = this._serversSearcher.FindServer(servers, searchValue).Select(new Func<GeographicalServer, SearchResultViewModel>(ServersSearchFacade.Create));
			return arg_56_0.Concat(second);
		}

		private static SearchResultViewModel Create(Country country)
		{
			return new CountrySearchResultViewModel(country);
		}

		private static SearchResultViewModel Create(GeographicalServer server)
		{
			return new ServerSearchResultViewModel(server);
		}
	}
}
