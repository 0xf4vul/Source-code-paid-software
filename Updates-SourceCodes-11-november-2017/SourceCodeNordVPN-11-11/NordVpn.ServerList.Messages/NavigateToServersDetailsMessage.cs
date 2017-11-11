using System;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.Messages
{
	public class NavigateToServersDetailsMessage<T> where T : class
	{
		public T Group
		{
			[CompilerGenerated]
			get
			{
				return this.<Group>k__BackingField;
			}
		}

		public NavigateToServersDetailsMessage(T group)
		{
			if (group == null)
			{
				throw new ArgumentNullException("group");
			}
			this.<Group>k__BackingField = group;
		}
	}
}
