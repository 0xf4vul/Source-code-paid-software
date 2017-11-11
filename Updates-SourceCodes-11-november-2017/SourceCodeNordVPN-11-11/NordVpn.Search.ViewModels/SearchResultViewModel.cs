using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Search.ViewModels
{
	public abstract class SearchResultViewModel
	{
		public string Name
		{
			[CompilerGenerated]
			get
			{
				return this.<Name>k__BackingField;
			}
		}

		protected SearchResultViewModel(string name)
		{
			this.<Name>k__BackingField = name;
		}

		public abstract Task Accept(SearchResultVpnConnectionVisitor visitor);
	}
}
