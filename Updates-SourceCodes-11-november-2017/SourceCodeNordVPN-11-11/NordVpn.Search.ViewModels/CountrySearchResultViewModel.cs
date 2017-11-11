using NordVpn.Core.Models;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Search.ViewModels
{
	public class CountrySearchResultViewModel : SearchResultViewModel
	{
		public Country Country
		{
			[CompilerGenerated]
			get
			{
				return this.<Country>k__BackingField;
			}
		}

		public CountrySearchResultViewModel(Country country) : base(string.Format("{0} best server", country.get_Name()))
		{
			this.<Country>k__BackingField = country;
		}

		public override Task Accept(SearchResultVpnConnectionVisitor visitor)
		{
			return visitor.Visit(this);
		}
	}
}
