using NordVpn.Core.Models.ServerCategories;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels
{
	public class ServerCategoryGroupViewModel : ServerGroupViewModel
	{
		public Category Category
		{
			[CompilerGenerated]
			get
			{
				return this.<Category>k__BackingField;
			}
		}

		public ServerCategoryGroupViewModel(Category category) : base(category)
		{
			this.<Category>k__BackingField = category;
		}

		public override string ToString()
		{
			return this.Category.ToString();
		}
	}
}
