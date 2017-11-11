using Caliburn.Micro;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Geographical;
using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels
{
	[DebuggerDisplay("{Server}")]
	public class ServerViewModel : PropertyChangedBase
	{
		private DistanceValue _distance;

		private bool _isFavourite;

		private VpnState _vpnState;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<bool>> FavouriteStatusChanged;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler ConnectRequested;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler DisconnectRequested;

		public VpnState VpnState
		{
			get
			{
				return this._vpnState;
			}
			set
			{
				this.Set<VpnState>(ref this._vpnState, value, "VpnState");
			}
		}

		public int Load
		{
			get
			{
				return this.Server.get_Load();
			}
		}

		public bool IsOverloaded
		{
			get
			{
				return this.Server.get_IsOverloaded();
			}
		}

		public string Name
		{
			get
			{
				return this.Server.get_Name();
			}
		}

		public DistanceValue Distance
		{
			get
			{
				return this._distance;
			}
			set
			{
				this.Set<DistanceValue>(ref this._distance, value, "Distance");
			}
		}

		public bool IsFavourite
		{
			get
			{
				return this._isFavourite;
			}
			set
			{
				if (this.Set<bool>(ref this._isFavourite, value, "IsFavourite"))
				{
					this.RaiseFavouriteStatusChanged(value);
				}
			}
		}

		public GeographicalServer Server
		{
			[CompilerGenerated]
			get
			{
				return this.<Server>k__BackingField;
			}
		}

		public ServerViewModel(GeographicalServer server, DistanceValue distance)
		{
			if (server == null)
			{
				throw new ArgumentNullException("server");
			}
			this.<Server>k__BackingField = server;
			this._distance = distance;
		}

		public void Connect()
		{
			switch (this.VpnState)
			{
			case 0:
				this.VpnState = 2;
				this.RaiseConnectRequested();
				break;
			case 1:
				break;
			case 2:
				this.VpnState = 0;
				this.RaiseDisconnectRequested();
				return;
			case 3:
				this.VpnState = 0;
				this.RaiseDisconnectRequested();
				return;
			default:
				return;
			}
		}

		public void ChangeFavouriteStatus()
		{
			this.IsFavourite = !this.IsFavourite;
		}

		public void ChangeFavouriteStatusWithoutStatusChangeNotify(bool value)
		{
			this._isFavourite = value;
			this.NotifyOfPropertyChange("IsFavourite");
		}

		protected virtual void RaiseConnectRequested()
		{
			EventHandler expr_06 = this.ConnectRequested;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}

		protected virtual void RaiseDisconnectRequested()
		{
			EventHandler expr_06 = this.DisconnectRequested;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}

		protected virtual void RaiseFavouriteStatusChanged(bool value)
		{
			EventHandler<EventArgs<bool>> expr_06 = this.FavouriteStatusChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new EventArgs<bool>(value));
		}
	}
}
