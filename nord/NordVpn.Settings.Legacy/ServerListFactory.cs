using NordVpn.Core.Abstract;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using NordVpn.ServerList.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public class ServerListFactory
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ServerListFactory.<>c <>9 = new ServerListFactory.<>c();

			public static Func<Category, bool> <>9__5_1;

			public static Func<Category, string> <>9__5_2;

			public static Func<ServerItemViewModel, string> <>9__5_4;

			public static Func<Country, bool> <>9__5_5;

			public static Func<Country, string> <>9__5_6;

			public static Func<ServerItemViewModel, string> <>9__5_8;

			internal bool <BuildServerList>b__5_1(Category c)
			{
				return c.get_Servers().Any<CategoryServer>();
			}

			internal string <BuildServerList>b__5_2(Category s)
			{
				return s.get_Name();
			}

			internal string <BuildServerList>b__5_4(ServerItemViewModel s)
			{
				return s.Server.get_Name();
			}

			internal bool <BuildServerList>b__5_5(Country c)
			{
				return c.get_Servers().Any<CountryServer>();
			}

			internal string <BuildServerList>b__5_6(Country s)
			{
				return s.get_Name();
			}

			internal string <BuildServerList>b__5_8(ServerItemViewModel s)
			{
				return s.Server.get_Name();
			}
		}

		private readonly UserPreferences _userPreferences;

		private readonly IUserContext _userManager;

		private readonly ServerNameAlphaNumericComparer _alphaNumericComparer;

		private readonly IServerProvider _serverProvider;

		public ServerListFactory(IUserContext userManager, UserPreferences userPreferences, ServerNameAlphaNumericComparer alphaNumericComparer, IServerProvider serverProvider)
		{
			this._userManager = userManager;
			this._userPreferences = userPreferences;
			this._alphaNumericComparer = alphaNumericComparer;
			this._serverProvider = serverProvider;
		}

		[IteratorStateMachine(typeof(ServerListFactory.<BuildServerList>d__5))]
		public IEnumerable<ServerListItem> BuildServerList()
		{
			ServerListFactory.<BuildServerList>d__5 expr_07 = new ServerListFactory.<BuildServerList>d__5(-2);
			expr_07.<>4__this = this;
			return expr_07;
		}
	}
}
