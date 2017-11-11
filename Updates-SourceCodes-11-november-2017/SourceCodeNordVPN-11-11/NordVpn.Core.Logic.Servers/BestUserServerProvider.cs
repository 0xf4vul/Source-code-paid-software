using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.Core.Logic.Servers
{
	public class BestUserServerProvider : IServerProvider
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c__12<TCategory> where TCategory : Category
		{
			public static readonly BestUserServerProvider.<>c__12<TCategory> <>9 = new BestUserServerProvider.<>c__12<TCategory>();

			public static Func<TCategory, IEnumerable<CategoryServer>> <>9__12_0;

			internal IEnumerable<CategoryServer> <GetBestByCategory>b__12_0(TCategory s)
			{
				return s.get_Servers();
			}
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly BestUserServerProvider.<>c <>9 = new BestUserServerProvider.<>c();

			public static Func<Country, IEnumerable<CountryServer>> <>9__13_0;

			public static Func<Country, IEnumerable<CountryServer>> <>9__15_0;

			public static Func<Category, IEnumerable<CategoryServer>> <>9__15_1;

			public static Func<GeographicalServer, bool> <>9__16_0;

			internal IEnumerable<CountryServer> <GetBestByKeywords>b__13_0(Country s)
			{
				return s.get_Servers();
			}

			internal IEnumerable<CountryServer> <GetBestServer>b__15_0(Country s)
			{
				return s.get_Servers();
			}

			internal IEnumerable<CategoryServer> <GetBestServer>b__15_1(Category s)
			{
				return s.get_Servers();
			}

			internal bool <InnerGetBestServer>b__16_0(GeographicalServer s)
			{
				return !s.get_IsOverloaded();
			}
		}

		private readonly ServerPicker _serverPicker;

		private readonly IServerProvider _serverProvider;

		private readonly UserContext _userContext;

		public event EventHandler ServersChanged
		{
			add
			{
				this._serverProvider.add_ServersChanged(value);
			}
			remove
			{
				this._serverProvider.remove_ServersChanged(value);
			}
		}

		public BestUserServerProvider(IServerProvider serverProvider, ServerPicker serverPicker, UserContext userContext)
		{
			this._serverProvider = serverProvider;
			this._serverPicker = serverPicker;
			this._userContext = userContext;
		}

		public IReadOnlyList<Category> GetCategories()
		{
			return this._serverProvider.GetCategories();
		}

		public IReadOnlyList<Country> GetCountries()
		{
			return this._serverProvider.GetCountries();
		}

		public IReadOnlyList<GeographicalServer> GetServers()
		{
			return this._serverProvider.GetServers();
		}

		public GeographicalServer GetBestByCountry(Country country)
		{
			return this.InnerGetBestServer(country.get_Servers());
		}

		public GeographicalServer GetBestByCategory(Category category)
		{
			return this.InnerGetBestServer(category.get_Servers());
		}

		public GeographicalServer GetBestByCategory<TCategory>() where TCategory : Category
		{
			IEnumerable<TCategory> arg_30_0 = this._serverProvider.GetCategories().OfType<TCategory>();
			Func<TCategory, IEnumerable<CategoryServer>> arg_30_1;
			if ((arg_30_1 = BestUserServerProvider.<>c__12<TCategory>.<>9__12_0) == null)
			{
				arg_30_1 = (BestUserServerProvider.<>c__12<TCategory>.<>9__12_0 = new Func<TCategory, IEnumerable<CategoryServer>>(BestUserServerProvider.<>c__12<TCategory>.<>9.<GetBestByCategory>b__12_0));
			}
			return this.InnerGetBestServer(arg_30_0.SelectMany(arg_30_1));
		}

		public GeographicalServer GetBestByKeywords(Func<IReadOnlyCollection<string>, bool> keywordsFilter)
		{
			IEnumerable<Country> arg_38_0 = this._serverProvider.GetCountries();
			Func<Country, IEnumerable<CountryServer>> arg_38_1;
			if ((arg_38_1 = BestUserServerProvider.<>c.<>9__13_0) == null)
			{
				arg_38_1 = (BestUserServerProvider.<>c.<>9__13_0 = new Func<Country, IEnumerable<CountryServer>>(BestUserServerProvider.<>c.<>9.<GetBestByKeywords>b__13_0));
			}
			return this.InnerGetBestServer(from s in arg_38_0.SelectMany(arg_38_1)
			where keywordsFilter(s.get_Keywords())
			select s);
		}

		public GeographicalServer GetBestServer(IEnumerable<GeographicalServer> servers)
		{
			return this.InnerGetBestServer(servers);
		}

		public GeographicalServer GetBestServer()
		{
			IEnumerable<Country> arg_2B_0 = this._serverProvider.GetCountries();
			Func<Country, IEnumerable<CountryServer>> arg_2B_1;
			if ((arg_2B_1 = BestUserServerProvider.<>c.<>9__15_0) == null)
			{
				arg_2B_1 = (BestUserServerProvider.<>c.<>9__15_0 = new Func<Country, IEnumerable<CountryServer>>(BestUserServerProvider.<>c.<>9.<GetBestServer>b__15_0));
			}
			GeographicalServer geographicalServer = this.InnerGetBestServer(arg_2B_0.SelectMany(arg_2B_1));
			if (geographicalServer == null)
			{
				IEnumerable<Category> arg_64_0 = this._serverProvider.GetCategories();
				Func<Category, IEnumerable<CategoryServer>> arg_64_1;
				if ((arg_64_1 = BestUserServerProvider.<>c.<>9__15_1) == null)
				{
					arg_64_1 = (BestUserServerProvider.<>c.<>9__15_1 = new Func<Category, IEnumerable<CategoryServer>>(BestUserServerProvider.<>c.<>9.<GetBestServer>b__15_1));
				}
				return this.InnerGetBestServer(arg_64_0.SelectMany(arg_64_1));
			}
			return geographicalServer;
		}

		private GeographicalServer InnerGetBestServer(IEnumerable<GeographicalServer> servers)
		{
			ServerPicker arg_4B_0 = this._serverPicker;
			Func<GeographicalServer, bool> arg_26_1;
			if ((arg_26_1 = BestUserServerProvider.<>c.<>9__16_0) == null)
			{
				arg_26_1 = (BestUserServerProvider.<>c.<>9__16_0 = new Func<GeographicalServer, bool>(BestUserServerProvider.<>c.<>9.<InnerGetBestServer>b__16_0));
			}
			return arg_4B_0.PickBestServer(servers.Where(arg_26_1), this._userContext.get_CurrentUser().get_Coordinates(), this._userContext.get_CurrentUser().get_CountryCode());
		}
	}
}
