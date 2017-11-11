using NordVpn.Core.Models;
using NordVpn.Shared;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public class ServersByCountryViewModel : ServerListItem
	{
		private string _flagImage;

		public CountryIdentifier Country
		{
			[CompilerGenerated]
			get
			{
				return this.<Country>k__BackingField;
			}
		}

		public override string Name
		{
			get
			{
				return this.Country.get_Name();
			}
		}

		public override string Image
		{
			get
			{
				if (this._flagImage == null)
				{
					this._flagImage = string.Format("/NordVPN;component/Resources/Assets/Images/Flags/{0}.png", this.Country.get_Code());
				}
				return this._flagImage;
			}
		}

		public bool IconImage
		{
			get
			{
				return true;
			}
		}

		public bool IconControl
		{
			get
			{
				return false;
			}
		}

		public ServersByCountryViewModel(CountryIdentifier country, IEnumerable<ServerItemViewModel> servers)
		{
			this.<Country>k__BackingField = country;
			base.Servers.AddRange(servers);
		}
	}
}
