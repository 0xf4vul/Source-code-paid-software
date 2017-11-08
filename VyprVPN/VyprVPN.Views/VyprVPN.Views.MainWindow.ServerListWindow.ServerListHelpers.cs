using System;
using System.Collections.Generic;

namespace VyprVPN.Views.MainWindow.ServerListWindow.ServerListHelpers
{
	public class CombinedFilter : ICombinedFilter
	{
		private List<Predicate<object>> _filters;

		public Predicate<object> Filter
		{
			get;
			private set;
		}

		public CombinedFilter()
		{
			this._filters = new List<Predicate<object>>();
			this.Filter = new Predicate<object>(this.InternalFilter);
		}

		private bool InternalFilter(object o)
		{
			using (List<Predicate<object>>.Enumerator enumerator = this._filters.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if (enumerator.Current(o))
					{
						return true;
					}
				}
			}
			return false;
		}

		public void AddFilter(Predicate<object> filter)
		{
			this._filters.Add(filter);
		}

		public void RemoveFilter(Predicate<object> filter)
		{
			if (this._filters.Contains(filter))
			{
				this._filters.Remove(filter);
			}
		}

		public void ClearFilters()
		{
			this._filters.Clear();
		}
	}
}

using System;
using System.Collections;
using System.ComponentModel;

namespace VyprVPN.Views.MainWindow.ServerListWindow.ServerListHelpers
{
	public class LocationComparer : IComparer
	{
		public ListSortDirection SortDirection;

		public LocationComparer(ListSortDirection direction)
		{
			this.SortDirection = direction;
		}

		public int Compare(object x, object y)
		{
			IPingServerWrapper pingServerWrapper = x as IPingServerWrapper;
			IPingServerWrapper pingServerWrapper2 = y as IPingServerWrapper;
			if (pingServerWrapper != null && pingServerWrapper.Region == "VyprVPN Server")
			{
				return -1;
			}
			if (pingServerWrapper2 != null && pingServerWrapper2.Region == "VyprVPN Server")
			{
				return 1;
			}
			if (pingServerWrapper != null && pingServerWrapper.IsFastestServerStandin)
			{
				return -1;
			}
			if (pingServerWrapper2 != null && pingServerWrapper2.IsFastestServerStandin)
			{
				return 1;
			}
			int num;
			if (pingServerWrapper == null && pingServerWrapper2 == null)
			{
				num = 0;
			}
			else if (pingServerWrapper == null)
			{
				num = -1;
			}
			else if (pingServerWrapper2 == null)
			{
				num = 1;
			}
			else
			{
				num = string.Compare(pingServerWrapper.Location, pingServerWrapper2.Location, StringComparison.InvariantCultureIgnoreCase);
			}
			num = ((num > 0) ? 1 : ((num < 0) ? -1 : 0));
			if (this.SortDirection == ListSortDirection.Descending)
			{
				num *= -1;
			}
			return num;
		}
	}
}

using System;

namespace VyprVPN.Views.MainWindow.ServerListWindow.ServerListHelpers
{
	public interface ICombinedFilter
	{
		Predicate<object> Filter
		{
			get;
		}

		void AddFilter(Predicate<object> filter);

		void RemoveFilter(Predicate<object> filter);

		void ClearFilters();
	}
}

using System;
using System.Collections;
using System.ComponentModel;

namespace VyprVPN.Views.MainWindow.ServerListWindow.ServerListHelpers
{
	public class PingTimeComparer : IComparer
	{
		public ListSortDirection SortDirection;

		public PingTimeComparer(ListSortDirection direction)
		{
			this.SortDirection = direction;
		}

		public int Compare(object x, object y)
		{
			IPingServerWrapper pingServerWrapper = x as IPingServerWrapper;
			IPingServerWrapper pingServerWrapper2 = y as IPingServerWrapper;
			if (pingServerWrapper != null && pingServerWrapper.IsFastestServerStandin)
			{
				return -1;
			}
			if (pingServerWrapper2 != null && pingServerWrapper2.IsFastestServerStandin)
			{
				return 1;
			}
			int num;
			if (pingServerWrapper == null && pingServerWrapper2 == null)
			{
				num = 0;
			}
			else if (pingServerWrapper == null)
			{
				num = -1;
			}
			else if (pingServerWrapper2 == null)
			{
				num = 1;
			}
			else if (!pingServerWrapper.PingSuccess && !pingServerWrapper2.PingSuccess)
			{
				num = 0;
			}
			else if (!pingServerWrapper.PingSuccess)
			{
				num = 1;
			}
			else if (!pingServerWrapper2.PingSuccess)
			{
				num = -1;
			}
			else
			{
				long num2 = pingServerWrapper.PingTime - pingServerWrapper2.PingTime;
				num = ((num2 > 0L) ? 1 : ((num2 == 0L) ? 0 : -1));
			}
			if (this.SortDirection == ListSortDirection.Descending)
			{
				num *= -1;
			}
			return num;
		}
	}
}

using System;
using System.Collections;
using System.ComponentModel;
using VyprVPN.Classes;

namespace VyprVPN.Views.MainWindow.ServerListWindow.ServerListHelpers
{
	public class RegionComparer : IComparer
	{
		private const string LocationConst = "Location";

		private const string PingConst = "Ping";

		public string SecondarySortHeader;

		public ListSortDirection SecondarySortDirection;

		public RegionComparer(string secondarySortHeader, ListSortDirection secondarySortDirection)
		{
			this.SecondarySortHeader = secondarySortHeader;
			this.SecondarySortDirection = secondarySortDirection;
		}

		public int Compare(object x, object y)
		{
			IPingServerWrapper pingServerWrapper = x as IPingServerWrapper;
			IPingServerWrapper pingServerWrapper2 = y as IPingServerWrapper;
			if (pingServerWrapper != null && pingServerWrapper.IsFastestServerStandin)
			{
				return -1;
			}
			if (pingServerWrapper2 != null && pingServerWrapper2.IsFastestServerStandin)
			{
				return 1;
			}
			int num;
			if (pingServerWrapper == null && pingServerWrapper2 == null)
			{
				num = 0;
			}
			else if (pingServerWrapper == null)
			{
				num = -1;
			}
			else if (pingServerWrapper2 == null)
			{
				num = 1;
			}
			else
			{
				string arg_5C_0 = ServerRegionConstants.GetLocalizedRegionString(pingServerWrapper.Region);
				string localizedRegionString = ServerRegionConstants.GetLocalizedRegionString(pingServerWrapper2.Region);
				num = string.Compare(arg_5C_0, localizedRegionString, StringComparison.CurrentCulture);
				if (num == 0)
				{
					IComparer comparer = null;
					if (this.SecondarySortHeader == "Location")
					{
						comparer = new LocationComparer(this.SecondarySortDirection);
					}
					else if (this.SecondarySortHeader == "Ping")
					{
						comparer = new PingTimeComparer(this.SecondarySortDirection);
					}
					num = ((comparer == null) ? num : comparer.Compare(x, y));
				}
			}
			return num;
		}
	}
}
