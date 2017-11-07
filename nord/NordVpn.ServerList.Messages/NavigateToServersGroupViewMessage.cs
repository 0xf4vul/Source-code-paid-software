using System;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.Messages
{
	public class NavigateToServersGroupViewMessage<T>
	{
		public T Group
		{
			[CompilerGenerated]
			get
			{
				return this.<Group>k__BackingField;
			}
		}

		public NavigateToServersGroupViewMessage(T group)
		{
			this.<Group>k__BackingField = group;
		}
	}
}
