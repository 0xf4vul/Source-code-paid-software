using System;
using System.Collections.Generic;

namespace NordVpn.ServerList.ViewModels.Sort
{
	public class ServerComparerByLoad : Comparer<ServerViewModel>
	{
		public override int Compare(ServerViewModel x, ServerViewModel y)
		{
			return x.Load.CompareTo(y.Load);
		}
	}
}
