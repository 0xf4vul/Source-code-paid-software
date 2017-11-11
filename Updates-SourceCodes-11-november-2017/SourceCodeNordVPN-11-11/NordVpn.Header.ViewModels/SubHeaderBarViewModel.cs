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
				this.Set<string>(ref this._stateMessage, value, "StateMessage");
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
				this.Set<string>(ref this._bubbleColor, value, "BubbleColor");
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
				this.Set<string>(ref this._labelForeground, value, "LabelForeground");
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
			switch (e.State)
			{
			case 0:
				this.ShowDisconnected();
				break;
			case 1:
				this.ShowDisconnecting();
				break;
			case 2:
				this.ShowConnecting(e.Server);
				break;
			case 3:
				this.ShowConnected(e.Server);
				break;
			default:
				throw new NotSupportedException();
			}
			this._currentServer = e.Server;
			this._currentState = e.State;
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

		private void ShowDisconnected()
		{
			this.StateMessage = "You are not connected";
			this.LabelForeground = "#8ba6bd";
			this.BubbleColor = "#103859";
		}

		private void ShowConnected(GeographicalServer server)
		{
			this.LabelForeground = "#8ba6bd";
			this.BubbleColor = "#73ba10";
			this.StateMessage = string.Format("You are connected to {0}.", server.GetConnectionName()) + string.Format("    {0}", SubHeaderBarViewModel.GetResolvedIpDestinationMessage(server, ""));
		}

		private void ShowConnecting(GeographicalServer server)
		{
			this.StateMessage = string.Format("Connecting to {0}", server.GetConnectionName());
			this.LabelForeground = "#8ba6bd";
			this.BubbleColor = "#b5ce92";
		}

		private void ShowDisconnecting()
		{
			if (this._currentState == 3)
			{
				this.ShowDisconnected();
				return;
			}
			if (this._currentState != 2)
			{
				this.ShowDisconnected();
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
