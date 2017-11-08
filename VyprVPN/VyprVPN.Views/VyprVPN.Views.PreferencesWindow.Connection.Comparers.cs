using GoldenFrogVPN.Classes;
using System;
using System.Collections;
using System.ComponentModel;

namespace VyprVPN.Views.PreferencesWindow.Connection.Comparers
{
	public class AppAutoConnectComparer : IComparer
	{
		public ListSortDirection SortDirection;

		public AppAutoConnectComparer(ListSortDirection direction)
		{
			this.SortDirection = direction;
		}

		public int Compare(object x, object y)
		{
			ApplicationItem applicationItem = x as ApplicationItem;
			ApplicationItem applicationItem2 = y as ApplicationItem;
			int num = 0;
			if (applicationItem == null && applicationItem2 == null)
			{
				num = 0;
			}
			else if (applicationItem == null)
			{
				num = -1;
			}
			else if (applicationItem2 == null)
			{
				num = 1;
			}
			else if ((applicationItem.get_ShouldAutomaticallyConnect() && applicationItem2.get_ShouldAutomaticallyConnect()) || (!applicationItem.get_ShouldAutomaticallyConnect() && !applicationItem2.get_ShouldAutomaticallyConnect()))
			{
				num = string.Compare(applicationItem.get_ApplicationName(), applicationItem2.get_ApplicationName(), StringComparison.InvariantCultureIgnoreCase);
			}
			else if (applicationItem.get_ShouldAutomaticallyConnect() && !applicationItem2.get_ShouldAutomaticallyConnect())
			{
				num = -1;
				if (this.SortDirection == ListSortDirection.Descending)
				{
					num *= -1;
				}
			}
			else if (!applicationItem.get_ShouldAutomaticallyConnect() && applicationItem2.get_ShouldAutomaticallyConnect())
			{
				num = 1;
				if (this.SortDirection == ListSortDirection.Descending)
				{
					num *= -1;
				}
			}
			return num;
		}
	}
}

using GoldenFrogVPN.Classes;
using System;
using System.Collections;
using System.ComponentModel;

namespace VyprVPN.Views.PreferencesWindow.Connection.Comparers
{
	public class AppNameComparer : IComparer
	{
		public ListSortDirection SortDirection;

		public AppNameComparer(ListSortDirection direction)
		{
			this.SortDirection = direction;
		}

		public int Compare(object x, object y)
		{
			ApplicationItem applicationItem = x as ApplicationItem;
			ApplicationItem applicationItem2 = y as ApplicationItem;
			int num;
			if (applicationItem == null && applicationItem2 == null)
			{
				num = 0;
			}
			else if (applicationItem == null)
			{
				num = -1;
			}
			else if (applicationItem2 == null)
			{
				num = 1;
			}
			else
			{
				num = string.Compare(applicationItem.get_ApplicationName(), applicationItem2.get_ApplicationName(), StringComparison.InvariantCultureIgnoreCase);
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

using GoldenFrogVPN.Classes;
using System;
using System.Collections;
using System.ComponentModel;
using VyprVPN.Converters;

namespace VyprVPN.Views.PreferencesWindow.Connection.Comparers
{
	public class AppBehaviorComparer : IComparer
	{
		public ListSortDirection SortDirection;

		public AppBehaviorComparer(ListSortDirection direction)
		{
			this.SortDirection = direction;
		}

		public int Compare(object x, object y)
		{
			ApplicationItem applicationItem = x as ApplicationItem;
			ApplicationItem applicationItem2 = y as ApplicationItem;
			int num = 0;
			if (applicationItem == null && applicationItem2 == null)
			{
				num = 0;
			}
			else if (applicationItem == null)
			{
				num = -1;
				if (this.SortDirection == ListSortDirection.Descending)
				{
					num *= -1;
				}
			}
			else if (applicationItem2 == null)
			{
				num = 1;
				if (this.SortDirection == ListSortDirection.Descending)
				{
					num *= -1;
				}
			}
			else
			{
				PerAppBehaviorToFriendlyStringConverter perAppBehaviorToFriendlyStringConverter = new PerAppBehaviorToFriendlyStringConverter();
				if (perAppBehaviorToFriendlyStringConverter != null)
				{
					string arg_88_0 = perAppBehaviorToFriendlyStringConverter.Convert(applicationItem.get_ConnectionBehavior(), null, null, null) as string;
					string strB = perAppBehaviorToFriendlyStringConverter.Convert(applicationItem2.get_ConnectionBehavior(), null, null, null) as string;
					num = string.Compare(arg_88_0, strB, StringComparison.InvariantCultureIgnoreCase);
					if (num == 0)
					{
						num = string.Compare(applicationItem.get_ApplicationName(), applicationItem2.get_ApplicationName(), StringComparison.InvariantCultureIgnoreCase);
					}
					else if (this.SortDirection == ListSortDirection.Descending)
					{
						num *= -1;
					}
				}
			}
			return (num > 0) ? 1 : ((num < 0) ? -1 : 0);
		}
	}
}
