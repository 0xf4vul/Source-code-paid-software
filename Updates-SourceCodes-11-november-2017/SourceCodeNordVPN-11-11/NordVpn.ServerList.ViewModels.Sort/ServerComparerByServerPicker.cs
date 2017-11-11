using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using System;
using System.Collections.Generic;

namespace NordVpn.ServerList.ViewModels.Sort
{
	public class ServerComparerByServerPicker : Comparer<ServerViewModel>
	{
		private readonly ServerPicker _serverPicker;

		private readonly UserContext _userContext;

		public ServerComparerByServerPicker(ServerPicker serverPicker, UserContext userContext)
		{
			this._serverPicker = serverPicker;
			this._userContext = userContext;
		}

		public override int Compare(ServerViewModel x, ServerViewModel y)
		{
			return -this._serverPicker.Compare(x.Server, y.Server, this._userContext.get_CurrentUser().get_Coordinates(), this._userContext.get_CurrentUser().get_CountryCode());
		}
	}
}
