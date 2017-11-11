using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Settings;
using System;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public class ServerItemViewModel : ServerListItem
	{
		private readonly ISettings _settings;

		private readonly UserContext _userManager;

		private readonly GeographicalServer _server;

		private bool _selected;

		private string _flagImage;

		public bool Selected
		{
			get
			{
				return this._selected;
			}
			set
			{
				this.Set<bool>(ref this._selected, value, "Selected");
			}
		}

		public GeographicalServer Server
		{
			get
			{
				return this._server;
			}
		}

		public string Distance
		{
			get
			{
				if (this._settings.Of<UserSettings>().get_DistanceUnits() == null)
				{
					return ((int)this.Server.get_Coordinates().GetDistance(this._userManager.get_CurrentUser().get_Coordinates()).ConvertTo(0)).ToString();
				}
				return ((int)this.Server.get_Coordinates().GetDistance(this._userManager.get_CurrentUser().get_Coordinates()).ConvertTo(1)).ToString();
			}
		}

		public string Load
		{
			get
			{
				return this.Server.get_Load().ToString();
			}
		}

		public string FlagImage
		{
			get
			{
				if (this._flagImage == null)
				{
					this._flagImage = string.Format("/NordVPN;component/Resources/Assets/Images/Flags/{0}.png", this.Server.get_Country().get_Code());
				}
				return this._flagImage;
			}
		}

		public ServerItemViewModel(GeographicalServer server, UserContext userManager, ISettings settings)
		{
			this._server = server;
			this._userManager = userManager;
			this._settings = settings;
		}
	}
}
