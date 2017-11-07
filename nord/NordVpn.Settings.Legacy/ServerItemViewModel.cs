using NordVpn.Common.Helpers;
using NordVpn.Core.Abstract;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models;
using System;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public class ServerItemViewModel : ServerListItem
	{
		private readonly UserPreferences _userPreferences;

		private readonly IUserContext _userManager;

		private readonly GeographicalServer _server;

		private bool _showDetails;

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
				this.Set(ref this._selected, value, "Selected");
			}
		}

		public bool ShowDetails
		{
			get
			{
				return this._showDetails;
			}
			set
			{
				this.Set(ref this._showDetails, value, "ShowDetails");
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
				if (this._userPreferences.get_DistanceUnits() == null)
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

		public ServerItemViewModel(GeographicalServer server, IUserContext userManager, UserPreferences userPreferences)
		{
			this._server = server;
			this._userManager = userManager;
			this._userPreferences = userPreferences;
			this._showDetails = true;
		}
	}
}
