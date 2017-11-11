using NordVpn.Core.Abstract;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.AppServices
{
	public class FavouritesManager
	{
		private readonly IServerProvider _serverProvider;

		private readonly UserContext _userContext;

		private readonly IUserStore _userStore;

		private bool _started;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<FavouriteServersChangedEventArgs> FavouriteServersChanged;

		private User CurrentUser
		{
			get
			{
				return this._userContext.get_CurrentUser();
			}
		}

		public FavouritesManager(IServerProvider serverProvider, IUserStore userStore, UserContext userContext)
		{
			this._serverProvider = serverProvider;
			this._userStore = userStore;
			this._userContext = userContext;
		}

		public void Start()
		{
			if (this._started)
			{
				return;
			}
			this._started = true;
			this._userContext.add_UserChanged(delegate(object s, UserEventArgs e)
			{
				this.RaiseFavouritesChanged();
			});
			this._serverProvider.add_ServersChanged(new EventHandler(this.RefreshFavourites));
		}

		public void SaveFavourite(GeographicalServer server, bool isFavourite)
		{
			this.UpdateCurrentUserFavourite(server, isFavourite);
			this.SaveCurrentUserFavourites();
		}

		private void RefreshFavourites(object sender, EventArgs e)
		{
			IReadOnlyList<GeographicalServer> servers = this._serverProvider.GetServers();
			if (!servers.Any<GeographicalServer>())
			{
				return;
			}
			this.RefreshCurrentUserFavourites(servers);
		}

		private void UpdateCurrentUserFavourite(GeographicalServer server, bool isNew)
		{
			if (isNew)
			{
				this.CurrentUser.AddFavourite(server);
			}
			else
			{
				this.CurrentUser.RemoveFavourite(server);
			}
			this.RaiseFavouritesChanged();
		}

		private void RefreshCurrentUserFavourites(IReadOnlyList<GeographicalServer> availableServers)
		{
			IReadOnlyList<CategoryServer> favourites = this.CurrentUser.GetFavourites();
			List<GeographicalServer> list = availableServers.Intersect(favourites).ToList<GeographicalServer>();
			this.CurrentUser.UpdateFavourites(list);
			this.RaiseFavouritesChanged();
		}

		private void SaveCurrentUserFavourites()
		{
			if (this._userContext.get_Authenticated())
			{
				this._userStore.Save(this._userContext.get_CurrentUser());
			}
		}

		private void RaiseFavouritesChanged()
		{
			EventHandler<FavouriteServersChangedEventArgs> expr_06 = this.FavouriteServersChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new FavouriteServersChangedEventArgs(this.CurrentUser.GetFavourites()));
		}
	}
}
