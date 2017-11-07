using Caliburn.Micro;
using GalaSoft.MvvmLight.Command;
using NordVpn.Application;
using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace NordVpn.Header.ViewModels
{
	public class ConnectButtonViewModel : ErrorHandlingAppScreen
	{
		private readonly BestVpnServerConnector _connector;

		private readonly IAnalyticsManager _appEventManager;

		private VpnState _previousState;

		private string _buttonImage = "../../Resources/Assets/Images/disconnected.png";

		private bool _connecting;

		private bool _connected;

		private bool _disconnected = true;

		public bool Connecting
		{
			get
			{
				return this._connecting;
			}
			set
			{
				base.Set<bool>(ref this._connecting, value, "Connecting");
			}
		}

		public bool Connected
		{
			get
			{
				return this._connected;
			}
			set
			{
				base.Set<bool>(ref this._connected, value, "Connected");
			}
		}

		public bool Disconnected
		{
			get
			{
				return this._disconnected;
			}
			set
			{
				base.Set<bool>(ref this._disconnected, value, "Disconnected");
			}
		}

		public string ButtonImage
		{
			get
			{
				return this._buttonImage;
			}
			set
			{
				base.Set<string>(ref this._buttonImage, value, "ButtonImage");
			}
		}

		public ICommand Connect
		{
			get;
			private set;
		}

		public ConnectButtonViewModel(BestVpnServerConnector connector, IEventAggregator eventAggregator, IAnalyticsManager appEventManager) : base(eventAggregator)
		{
			this._connector = connector;
			this._appEventManager = appEventManager;
			this.Connect = new RelayCommand(new Action(this.ConnectCommand));
			connector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.OnServerConnectionStatusChanged);
		}

		private void OnServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			if (e.State == null)
			{
				this.SetDisconnected();
			}
			else if (e.State == 1)
			{
				if (this._previousState == 3)
				{
					this.SetDisconnected();
				}
				else if (this._previousState == 2)
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
				this.SetConnecting();
			}
			else if (e.State == 3)
			{
				this.SetConnected();
			}
			this._previousState = e.State;
		}

		private void SetDisconnected()
		{
			this.ButtonImage = "../../Resources/Assets/Images/disconnected.png";
			this.Connecting = false;
			this.Connected = false;
			this.Disconnected = true;
		}

		private void SetConnecting()
		{
			this.ButtonImage = "../../Resources/Assets/Images/connecting.png";
			this.Connecting = true;
			this.Connected = false;
			this.Disconnected = false;
		}

		private void SetConnected()
		{
			this.ButtonImage = "../../Resources/Assets/Images/connected.png";
			this.Connecting = false;
			this.Connected = true;
			this.Disconnected = false;
		}

		[AsyncStateMachine(typeof(ConnectButtonViewModel.<ConnectCommand>d__28))]
		private void ConnectCommand()
		{
			ConnectButtonViewModel.<ConnectCommand>d__28 <ConnectCommand>d__;
			<ConnectCommand>d__.<>4__this = this;
			<ConnectCommand>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ConnectCommand>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ConnectCommand>d__.<>t__builder;
			<>t__builder.Start<ConnectButtonViewModel.<ConnectCommand>d__28>(ref <ConnectCommand>d__);
		}
	}
}
