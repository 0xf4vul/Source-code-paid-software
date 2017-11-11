using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
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
	public class AutoConnectServersProvider
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly AutoConnectServersProvider.<>c <>9 = new AutoConnectServersProvider.<>c();

			public static Func<Category, bool> <>9__8_1;

			public static Func<Category, string> <>9__8_2;

			public static Func<ServerItemViewModel, string> <>9__8_4;

			public static Func<Country, bool> <>9__8_5;

			public static Func<Country, string> <>9__8_6;

			public static Func<ServerItemViewModel, string> <>9__8_8;

			internal bool <BuildServerList>b__8_1(Category c)
			{
				return c.get_Servers().Any<CategoryServer>();
			}

			internal string <BuildServerList>b__8_2(Category s)
			{
				return s.get_Name();
			}

			internal string <BuildServerList>b__8_4(ServerItemViewModel s)
			{
				return s.Server.get_Name();
			}

			internal bool <BuildServerList>b__8_5(Country c)
			{
				return c.get_Servers().Any<CountryServer>();
			}

			internal string <BuildServerList>b__8_6(Country s)
			{
				return s.get_Name();
			}

			internal string <BuildServerList>b__8_8(ServerItemViewModel s)
			{
				return s.Server.get_Name();
			}
		}

		private readonly UserContext _userContext;

		private readonly ISettings _settings;

		private readonly ServerNameAlphaNumericComparer _alphaNumericComparer;

		private readonly IServerProvider _serverProvider;

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

		public AutoConnectServersProvider(UserContext userContext, ISettings settings, ServerNameAlphaNumericComparer alphaNumericComparer, IServerProvider serverProvider)
		{
			this._userContext = userContext;
			this._settings = settings;
			this._alphaNumericComparer = alphaNumericComparer;
			this._serverProvider = serverProvider;
		}

		[IteratorStateMachine(typeof(AutoConnectServersProvider.<BuildServerList>d__8))]
		public IEnumerable<ServerListItem> BuildServerList()
		{
			AutoConnectServersProvider.<BuildServerList>d__8 expr_07 = new AutoConnectServersProvider.<BuildServerList>d__8(-2);
			expr_07.<>4__this = this;
			return expr_07;
		}
	}
}
