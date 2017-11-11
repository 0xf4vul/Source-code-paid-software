using NordVpn.Application;
using NordVpn.AppServices;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using NordVpn.ServerList.ViewModels.Sort;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Windows.Threading;

namespace NordVpn.ServerList.ViewModels.Detailed
{
	public sealed class DetailedFavouriteServersViewModel : DetailedServersViewModel
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly DetailedFavouriteServersViewModel.<>c <>9 = new DetailedFavouriteServersViewModel.<>c();

			public static Func<ServerViewModel, bool> <>9__11_0;

			internal bool <RemoveUnfavouritedServers>b__11_0(ServerViewModel server)
			{
				return !server.IsFavourite;
			}
		}

		private readonly DispatcherTimer _unfavouritedServersRemovalTimer;

		public override string DisplayName
		{
			get;
			set;
		}

		public override INamedGroup Group
		{
			get
			{
				return new FavouriteServerCategory();
			}
		}

		public DetailedFavouriteServersViewModel(EventFacade eventFacade, BestVpnServerConnector vpnConnector, ISettings settings, IReadOnlyCollection<ServerComparerViewModel> comparers, IServerProvider serverProvider, UserContext userContext, FavouritesManager favouritesManager)
		{
			this.<DisplayName>k__BackingField = "My Favourites";
			base..ctor(eventFacade, userContext, favouritesManager, settings, comparers, serverProvider, vpnConnector);
			this._unfavouritedServersRemovalTimer = new DispatcherTimer
			{
				Interval = TimeSpan.FromSeconds(3.0)
			};
			this._unfavouritedServersRemovalTimer.Tick += new EventHandler(this.RemoveUnfavouritedServers);
		}

		protected override void UpdateServers()
		{
		}

		protected override void OnServerFavouriteStatusChangedManually(GeographicalServer server, bool isFavourite)
		{
			if (isFavourite)
			{
				base.OnServerFavouriteStatusChangedManually(server, true);
				return;
			}
			this._unfavouritedServersRemovalTimer.Start();
		}

		protected override void OnFavouritesChanged(IReadOnlyCollection<CategoryServer> servers)
		{
			base.OnFavouritesChanged(servers);
			base.Items.Clear();
			base.Items.AddRange(servers.Select(new Func<CategoryServer, ServerViewModel>(this.CreateServerViewModel)));
		}

		private void RemoveUnfavouritedServers(object sender, EventArgs e)
		{
			IEnumerable<ServerViewModel> arg_25_0 = base.Items;
			Func<ServerViewModel, bool> arg_25_1;
			if ((arg_25_1 = DetailedFavouriteServersViewModel.<>c.<>9__11_0) == null)
			{
				arg_25_1 = (DetailedFavouriteServersViewModel.<>c.<>9__11_0 = new Func<ServerViewModel, bool>(DetailedFavouriteServersViewModel.<>c.<>9.<RemoveUnfavouritedServers>b__11_0));
			}
			foreach (ServerViewModel current in arg_25_0.Where(arg_25_1).ToList<ServerViewModel>())
			{
				base.OnServerFavouriteStatusChangedManually(current.Server, false);
			}
			this._unfavouritedServersRemovalTimer.Stop();
		}
	}
}
