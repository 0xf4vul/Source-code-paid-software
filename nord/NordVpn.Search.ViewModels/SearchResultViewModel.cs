using Caliburn.Micro;
using NordVpn.Common.Helpers;
using System;
using System.Threading.Tasks;

namespace NordVpn.Search.ViewModels
{
	public abstract class SearchResultViewModel : PropertyChangedBase
	{
		private string _name;

		public string Name
		{
			get
			{
				return this._name;
			}
			set
			{
				this.Set(ref this._name, value, "Name");
			}
		}

		public abstract Task ConnectAsync();
	}
}
