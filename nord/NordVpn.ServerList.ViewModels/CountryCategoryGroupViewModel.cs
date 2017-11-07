using NordVpn.Core.Models;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels
{
	public class CountryCategoryGroupViewModel : ServerGroupViewModel
	{
		public Country Country
		{
			[CompilerGenerated]
			get
			{
				return this.<Country>k__BackingField;
			}
		}

		public CountryCategoryGroupViewModel(Country country) : base(country)
		{
			this.<Country>k__BackingField = country;
		}

		public override string ToString()
		{
			return this.Country.ToString();
		}
	}
}
