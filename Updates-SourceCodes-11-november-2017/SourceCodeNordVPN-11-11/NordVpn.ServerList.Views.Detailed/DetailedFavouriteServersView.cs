using System;
using System.Windows;

namespace NordVpn.ServerList.Views.Detailed
{
	public sealed class DetailedFavouriteServersView : DetailedServersView
	{
		public DetailedFavouriteServersView()
		{
			this.ShowServers.Visibility = Visibility.Hidden;
		}
	}
}
