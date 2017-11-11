using System;
using System.Collections.Generic;

namespace NordVpn.ServerList.ViewModels.Sort
{
	public class ServerComparerByDistance : Comparer<ServerViewModel>
	{
		public override int Compare(ServerViewModel x, ServerViewModel y)
		{
			return x.Distance.CompareTo(y.Distance);
		}
	}
}
