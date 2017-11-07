using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels.Sort
{
	public class ServerComparerViewModel : PropertyChangedBase
	{
		public IComparer<ServerViewModel> Comparer
		{
			[CompilerGenerated]
			get
			{
				return this.<Comparer>k__BackingField;
			}
		}

		public string Name
		{
			[CompilerGenerated]
			get
			{
				return this.<Name>k__BackingField;
			}
		}

		public ServerComparerViewModel(IComparer<ServerViewModel> comparer, string name)
		{
			this.<Comparer>k__BackingField = comparer;
			this.<Name>k__BackingField = name;
		}

		public override string ToString()
		{
			return this.Name;
		}
	}
}
