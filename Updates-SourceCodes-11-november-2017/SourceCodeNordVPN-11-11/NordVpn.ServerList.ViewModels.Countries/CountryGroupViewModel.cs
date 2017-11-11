using NordVpn.Core.Models;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels.Countries
{
	public class CountryGroupViewModel : ServerGroupViewModel
	{
		public Country Country
		{
			[CompilerGenerated]
			get
			{
				return this.<Country>k__BackingField;
			}
		}

		public CountryGroupViewModel(Country country) : base(country)
		{
			if (country == null)
			{
				throw new ArgumentNullException("country");
			}
			this.<Country>k__BackingField = country;
		}

		public override string ToString()
		{
			return this.Country.ToString();
		}
	}
}
