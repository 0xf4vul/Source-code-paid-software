using Caliburn.Micro;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels
{
	[DebuggerDisplay("{Group}")]
	public abstract class ServerGroupViewModel : PropertyChangedBase
	{
		private VpnState _vpnState;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler ConnectRequested;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler DisconnectRequested;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler ShowServersRequested;

		public INamedGroup Group
		{
			[CompilerGenerated]
			get
			{
				return this.<Group>k__BackingField;
			}
		}

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

		protected ServerGroupViewModel(INamedGroup group)
		{
			if (group == null)
			{
				throw new ArgumentNullException("group");
			}
			this.<Group>k__BackingField = group;
		}

		public void ShowServers()
		{
			EventHandler expr_06 = this.ShowServersRequested;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}

		public void Connect()
		{
			VpnState vpnState = this.VpnState;
			if (vpnState != null)
			{
				if (vpnState - 2 <= 1)
				{
					this.RaiseDisconnectRequested();
					return;
				}
			}
			else
			{
				this.RaiseConnectRequested();
			}
		}

		protected void RaiseDisconnectRequested()
		{
			EventHandler expr_06 = this.DisconnectRequested;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}

		protected void RaiseConnectRequested()
		{
			EventHandler expr_06 = this.ConnectRequested;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, EventArgs.Empty);
		}

		public override string ToString()
		{
			return this.Group.get_Name();
		}
	}
}
