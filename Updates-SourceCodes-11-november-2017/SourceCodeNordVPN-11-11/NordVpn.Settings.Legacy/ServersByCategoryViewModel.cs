using NordVpn.Core.Models.ServerCategories;
using NordVpn.Shared;
using System;
using System.Collections.Generic;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public class ServersByCategoryViewModel : ServerListItem
	{
		private readonly CategoryIdentifier _category;

		private string _image;

		private static readonly Dictionary<string, string> _images = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase)
		{
			{
				"Favourites",
				"/NordVPN;component/Resources/Assets/Images/favourites.png"
			},
			{
				"Double VPN",
				"/NordVPN;component/Resources/Assets/Images/doublevpn.png"
			},
			{
				"Anti DDoS",
				"/NordVPN;component/Resources/Assets/Images/antiddos.png"
			},
			{
				"Onion over VPN",
				"/NordVPN;component/Resources/Assets/Images/tor.png"
			},
			{
				"Ultra fast TV",
				"/NordVPN;component/Resources/Assets/Images/ultra.png"
			},
			{
				"Standard VPN servers",
				"/NordVPN;component/Resources/Assets/Images/Category.png"
			}
		};

		public override string Name
		{
			get
			{
				return this._category.get_Name();
			}
		}

		public override string Image
		{
			get
			{
				if (this._image == null)
				{
					this._image = (ServersByCategoryViewModel._images.ContainsKey(this._category.get_Name()) ? ServersByCategoryViewModel._images[this._category.get_Name()] : "/NordVPN;component/Resources/Assets/Images/Category.png");
				}
				return this._image;
			}
		}

		public bool IconImage
		{
			get
			{
				return false;
			}
		}

		public bool IconControl
		{
			get
			{
				return true;
			}
		}

		public ServersByCategoryViewModel(CategoryIdentifier category, IEnumerable<ServerItemViewModel> servers)
		{
			this._category = category;
			base.Servers.AddRange(servers);
		}
	}
}
