using NordVpn.Shared;
using System;
using System.Collections.Generic;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public class FavouriteServersViewModel : ServerListItem
	{
		public bool IconImage
		{
			get
			{
				return true;
			}
		}

		public bool IconControl
		{
			get
			{
				return false;
			}
		}

		public override string Name
		{
			get
			{
				return "My Favourite Servers";
			}
		}

		public override string Image
		{
			get
			{
				return "/NordVPN;component/Resources/Assets/Images/favourites.png";
			}
		}

		public FavouriteServersViewModel(IEnumerable<ServerItemViewModel> servers)
		{
			base.Servers.AddRange(servers);
		}
	}
}
