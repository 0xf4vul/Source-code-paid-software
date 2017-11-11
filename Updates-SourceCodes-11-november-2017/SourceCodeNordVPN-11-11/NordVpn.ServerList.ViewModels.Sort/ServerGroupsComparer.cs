using NordVpn.Core.Models.ServerCategories;
using System;
using System.Collections.Generic;

namespace NordVpn.ServerList.ViewModels.Sort
{
	public class ServerGroupsComparer : Comparer<ServerGroupViewModel>
	{
		public override int Compare(ServerGroupViewModel x, ServerGroupViewModel y)
		{
			if (x.Group is FavouriteServerCategory && !(y.Group is FavouriteServerCategory))
			{
				return -1;
			}
			if (!(x.Group is FavouriteServerCategory) && y.Group is FavouriteServerCategory)
			{
				return 1;
			}
			if (x.Group is ObfuscatedServerCategory && !(y.Group is ObfuscatedServerCategory))
			{
				return -1;
			}
			if (!(x.Group is ObfuscatedServerCategory) && y.Group is ObfuscatedServerCategory)
			{
				return 1;
			}
			if (x.Group is Category && !(y.Group is Category))
			{
				return -1;
			}
			if (!(x.Group is Category) && y.Group is Category)
			{
				return 1;
			}
			return string.Compare(x.Group.get_Name(), y.Group.get_Name(), StringComparison.OrdinalIgnoreCase);
		}
	}
}
