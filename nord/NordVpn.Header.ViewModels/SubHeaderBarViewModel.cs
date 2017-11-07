using NordVpn.Application;
using NordVpn.AppServices;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.Vpn;
using System;

namespace NordVpn.Header.ViewModels
{
	public class SubHeaderBarViewModel : AppScreen
	{
		private string _stateMessage;

		private string _bubbleColor;

		private string _labelForeground;

		private VpnState _currentState;

		private GeographicalServer _currentServer;

		public string StateMessage
		{
			get
			{
				return this._stateMessage;
			}
			set
			{
				base.Set<string>(ref this._stateMessage, value, "StateMessage");
			}
		}

		public string BubbleColor
		{
			get
			{
				return this._bubbleColor;
			}
			set
			{
				base.Set<string>(ref this._bubbleColor, value, "BubbleColor");
			}
		}

		public string LabelForeground
		{
			get
			{
				return this._labelForeground;
			}
			set
			{
				base.Set<string>(ref this._labelForeground, value, "LabelForeground");
			}
		}

		public SubHeaderBarViewModel(VpnConnector vpnConnector, CurrentIpObserver currentIpObserver)
		{
			this._labelForeground = "#8ba6bd";
			this._stateMessage = "You are not connected";
			this._bubbleColor = "#103859";
			vpnConnector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.OnGeoServerConnectionStatusChanged);
			currentIpObserver.ExternalIpResolved += new EventHandler<IpResolvedEventArgs>(this.OnIpResolved);
			currentIpObserver.ExternalIpResolveFailed += new EventHandler(this.OnIpResolveFailed);
		}

		private void OnGeoServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			if (e.State == null)
			{
				this.SetDisconnected();
			}
			else if (e.State == 1)
			{
				if (this._currentState == 3)
				{
					this.SetDisconnected();
				}
				else if (this._currentState == 2)
				{
					this.SetConnecting();
				}
				else
				{
					this.SetDisconnected();
				}
			}
			else if (e.State == 2)
			{
				this.SetConnecting(e.Server);
			}
			else if (e.State == 3)
			{
				this.SetConnected(e.Server);
			}
			this._currentServer = e.Server;
			this._currentState = e.State;
		}

		private void SetDisconnected()
		{
			this.StateMessage = "You are not connected";
			this.LabelForeground = "#8ba6bd";
			this.BubbleColor = "#103859";
		}

		private void SetConnected(GeographicalServer server)
		{
			this.LabelForeground = "#8ba6bd";
			this.BubbleColor = "#73ba10";
			this.StateMessage = string.Format("You are connected to {0}.", server.GetConnectionName()) + string.Format("    {0}", SubHeaderBarViewModel.GetResolvedIpDestinationMessage(server, ""));
		}

		private void SetConnecting(GeographicalServer server)
		{
			this.StateMessage = string.Format("Connecting to {0}", server.GetConnectionName());
			this.LabelForeground = "#8ba6bd";
			this.BubbleColor = "#b5ce92";
		}

		private void SetConnecting()
		{
			this.StateMessage = "Connecting...";
			this.LabelForeground = "#8ba6bd";
			this.BubbleColor = "#b5ce92";
		}

		private void OnIpResolved(object sender, IpResolvedEventArgs e)
		{
			if (this._currentServer != null)
			{
				if (this._currentState == 3)
				{
					this.StateMessage = string.Format("You are connected to {0}.", this._currentServer.GetConnectionName()) + string.Format("    {0}", SubHeaderBarViewModel.GetResolvedIpDestinationMessage(this._currentServer, e.Ip));
					return;
				}
			}
		}

		private void OnIpResolveFailed(object sender, EventArgs e)
		{
			if (this._currentServer != null)
			{
				if (this._currentState == 3)
				{
					this.StateMessage = string.Format("You are connected to {0}.", this._currentServer.GetConnectionName()) + string.Format("{0}", SubHeaderBarViewModel.GetFailedIpResolveIpDestinationMessage(this._currentServer));
					return;
				}
			}
		}

		private static string GetResolvedIpDestinationMessage(GeographicalServer server, string ip = "")
		{
			string result = string.IsNullOrEmpty(ip) ? "Resolving your new IP address..." : string.Format("Your new IP is {0}", ip);
			if (!server.get_IsOnionServer())
			{
				return result;
			}
			return "Your traffic is forwarded to the Onion network";
		}

		private static string GetFailedIpResolveIpDestinationMessage(GeographicalServer server)
		{
			if (!server.get_IsOnionServer())
			{
				return "";
			}
			return "    Your traffic is forwarded to the Onion network";
		}
	}
}
