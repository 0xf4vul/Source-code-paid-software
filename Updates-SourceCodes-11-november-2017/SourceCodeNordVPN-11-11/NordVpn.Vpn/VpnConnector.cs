using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Vpn
{
	public class VpnConnector
	{
		private readonly IVpnConnectionManager _connectionManager;

		private VpnConnectionStatus _status = new VpnConnectionStatus(0);

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event ConnectionEventHandler<GeographicalServer> GeoServerConnectionStatusChanged;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event ConnectionEventHandler<CountryServer> CountryServerConnectionStatusChanged;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event ConnectionEventHandler<CategoryServer> CategoryServerConnectionStatusChanged;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<VpnStateChangedEventArgs> VpnStateChanged;

		public VpnConnectionStatus Status
		{
			get
			{
				return this._status;
			}
		}

		public VpnState State
		{
			get
			{
				return this._status.get_State();
			}
		}

		public VpnConnector(IVpnConnectionManager connectionManager)
		{
			this._connectionManager = connectionManager;
			connectionManager.add_VpnStatusChanged(new EventHandler<VpnConnectionStatusChangeEventArgs>(this.OnVpnStatusChanged));
		}

		[AsyncStateMachine(typeof(VpnConnector.<GetVpnConnectionStatus>d__19))]
		public Task<VpnConnectionStatus> GetVpnConnectionStatus()
		{
			VpnConnector.<GetVpnConnectionStatus>d__19 <GetVpnConnectionStatus>d__;
			<GetVpnConnectionStatus>d__.<>4__this = this;
			<GetVpnConnectionStatus>d__.<>t__builder = AsyncTaskMethodBuilder<VpnConnectionStatus>.Create();
			<GetVpnConnectionStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnConnectionStatus> <>t__builder = <GetVpnConnectionStatus>d__.<>t__builder;
			<>t__builder.Start<VpnConnector.<GetVpnConnectionStatus>d__19>(ref <GetVpnConnectionStatus>d__);
			return <GetVpnConnectionStatus>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnConnector.<Connect>d__20))]
		public Task Connect(GeographicalServer server)
		{
			VpnConnector.<Connect>d__20 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.server = server;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<VpnConnector.<Connect>d__20>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnConnector.<Disconnect>d__21))]
		public Task Disconnect()
		{
			VpnConnector.<Disconnect>d__21 <Disconnect>d__;
			<Disconnect>d__.<>4__this = this;
			<Disconnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Disconnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Disconnect>d__.<>t__builder;
			<>t__builder.Start<VpnConnector.<Disconnect>d__21>(ref <Disconnect>d__);
			return <Disconnect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnConnector.<ToggleConnect>d__22))]
		public Task ToggleConnect(GeographicalServer server)
		{
			VpnConnector.<ToggleConnect>d__22 <ToggleConnect>d__;
			<ToggleConnect>d__.<>4__this = this;
			<ToggleConnect>d__.server = server;
			<ToggleConnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ToggleConnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ToggleConnect>d__.<>t__builder;
			<>t__builder.Start<VpnConnector.<ToggleConnect>d__22>(ref <ToggleConnect>d__);
			return <ToggleConnect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnConnector.<Reconnect>d__23))]
		public Task Reconnect()
		{
			VpnConnector.<Reconnect>d__23 <Reconnect>d__;
			<Reconnect>d__.<>4__this = this;
			<Reconnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Reconnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Reconnect>d__.<>t__builder;
			<>t__builder.Start<VpnConnector.<Reconnect>d__23>(ref <Reconnect>d__);
			return <Reconnect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnConnector.<TryConnectToServer>d__24))]
		public Task TryConnectToServer(GeographicalServer server)
		{
			VpnConnector.<TryConnectToServer>d__24 <TryConnectToServer>d__;
			<TryConnectToServer>d__.<>4__this = this;
			<TryConnectToServer>d__.server = server;
			<TryConnectToServer>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<TryConnectToServer>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <TryConnectToServer>d__.<>t__builder;
			<>t__builder.Start<VpnConnector.<TryConnectToServer>d__24>(ref <TryConnectToServer>d__);
			return <TryConnectToServer>d__.<>t__builder.Task;
		}

		public VpnState GetState(CountryIdentifier identifier)
		{
			if (this._status.IsNeverConnected())
			{
				return 0;
			}
			GeographicalServer geographicalServer;
			if ((geographicalServer = (this._status.get_Server() as GeographicalServer)) == null)
			{
				return 0;
			}
			if (!geographicalServer.get_Country().Equals(identifier))
			{
				return 0;
			}
			return this._status.get_State();
		}

		public VpnState GetState(CategoryIdentifier identifier)
		{
			if (this._status.IsNeverConnected())
			{
				return 0;
			}
			GeographicalServer geographicalServer;
			if ((geographicalServer = (this._status.get_Server() as GeographicalServer)) == null)
			{
				return 0;
			}
			if (!geographicalServer.get_Category().Equals(identifier))
			{
				return 0;
			}
			return this._status.get_State();
		}

		public VpnState GetState(Server server)
		{
			if (this._status.IsNeverConnected())
			{
				return 0;
			}
			if (!this._status.get_Server().Equals(server))
			{
				return 0;
			}
			return this._status.get_State();
		}

		protected virtual void RaiseGeoServerConnectionStatusChanged(GeographicalServer server, VpnState state)
		{
			ConnectionEventHandler<GeographicalServer> expr_06 = this.GeoServerConnectionStatusChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new ConnectionChangedEventArgs<GeographicalServer>(server, state));
		}

		protected virtual void RaiseCountryServerConnectionStatusChanged(CountryServer server, VpnState state)
		{
			ConnectionEventHandler<CountryServer> expr_06 = this.CountryServerConnectionStatusChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new ConnectionChangedEventArgs<CountryServer>(server, state));
		}

		protected virtual void RaiseCategoryServerConnectionStatusChanged(CategoryServer server, VpnState state)
		{
			ConnectionEventHandler<CategoryServer> expr_06 = this.CategoryServerConnectionStatusChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new ConnectionChangedEventArgs<CategoryServer>(server, state));
		}

		protected virtual void RaiseVpnStateChanged(VpnState state)
		{
			EventHandler<VpnStateChangedEventArgs> expr_06 = this.VpnStateChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new VpnStateChangedEventArgs(state));
		}

		private void OnVpnStatusChanged(object sender, VpnConnectionStatusChangeEventArgs e)
		{
			this._status = e.get_Status();
			this.RaiseVpnStateChanged(this._status.get_State());
			CountryServer server;
			if ((server = (e.get_Status().get_Server() as CountryServer)) != null)
			{
				this.RaiseCountryServerConnectionStatusChanged(server, this._status.get_State());
				this.RaiseGeoServerConnectionStatusChanged(server, this._status.get_State());
				return;
			}
			CategoryServer server2;
			if ((server2 = (e.get_Status().get_Server() as CategoryServer)) != null)
			{
				this.RaiseCategoryServerConnectionStatusChanged(server2, this._status.get_State());
				this.RaiseGeoServerConnectionStatusChanged(server2, this._status.get_State());
				return;
			}
			GeographicalServer server3;
			if ((server3 = (e.get_Status().get_Server() as GeographicalServer)) != null)
			{
				this.RaiseGeoServerConnectionStatusChanged(server3, this._status.get_State());
			}
		}
	}
}
