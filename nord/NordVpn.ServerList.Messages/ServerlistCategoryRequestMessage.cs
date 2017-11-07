using NordVpn.Core.Models.ServerCategories;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.Messages
{
	public sealed class ServerlistCategoryRequestMessage
	{
		public Category Category
		{
			[CompilerGenerated]
			get
			{
				return this.<Category>k__BackingField;
			}
		}

		public ServerlistCategoryRequestMessage(Category category)
		{
			this.<Category>k__BackingField = category;
		}
	}
}
