using NordVpn.Core.Models.ServerCategories;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels.Categories
{
	public class CategoryGroupViewModel : ServerGroupViewModel
	{
		public Category Category
		{
			[CompilerGenerated]
			get
			{
				return this.<Category>k__BackingField;
			}
		}

		public CategoryGroupViewModel(Category category) : base(category)
		{
			if (category == null)
			{
				throw new ArgumentNullException("category");
			}
			this.<Category>k__BackingField = category;
		}

		public override string ToString()
		{
			return this.Category.ToString();
		}
	}
}
