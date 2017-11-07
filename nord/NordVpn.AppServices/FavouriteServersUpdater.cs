using NordVpn.Core.Abstract;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;

namespace NordVpn.AppServices
{
	public class FavouriteServersUpdater
	{
		private readonly IServerProvider _serverProvider;

		private readonly IUserContext _userContext;

		private readonly IUserStore _userDataStore;

		private bool _started;

		public FavouriteServersUpdater(IServerProvider serverProvider, IUserStore userDataStore, IUserContext userContext)
		{
			this._serverProvider = serverProvider;
			this._userDataStore = userDataStore;
			this._userContext = userContext;
		}

		public void Start()
		{
			if (this._started)
			{
				return;
			}
			this._started = true;
			this._serverProvider.add_ServersChanged(new EventHandler(this.UpdateFavourites));
			this._userContext.add_CurrentUserFavouritesChanged(new EventHandler<FavouriteServersChangedEventArgs>(this.SaveFavourites));
		}

		private void SaveFavourites(object sender, FavouriteServersChangedEventArgs e)
		{
			if (this._userContext.get_Authenticated())
			{
				this._userDataStore.Save(this._userContext.get_CurrentUser());
			}
		}

		private void UpdateFavourites(object sender, EventArgs e)
		{
			IReadOnlyList<GeographicalServer> servers = this._serverProvider.GetServers();
			if (!servers.Any<GeographicalServer>())
			{
				return;
			}
			IReadOnlyList<FavouriteServer> favouriteServers = this._userContext.get_CurrentUser().get_FavouriteServers();
			List<GeographicalServer> list = servers.Intersect(favouriteServers).ToList<GeographicalServer>();
			this._userContext.get_CurrentUser().UpdateFavourite(list);
		}
	}
}
