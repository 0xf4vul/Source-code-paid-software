using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.Vpn.OpenVPNService;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Vpn
{
	public class VpnConnectionManager : IVpnConnectionManager, IVpnConnectionObserver
	{
		private readonly IVpnServiceManager _serviceManager;

		private readonly CustomConfigsVpnConnector _customConfigServerConnector;

		private readonly ApiServersVpnConnector _apiServerConnector;

		private bool _statusNotified;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<VpnConnectionStatusChangeEventArgs> VpnStatusChanged;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<VpnErrorEventArgs> VpnErrorOccured;

		public VpnConnectionManager(IVpnServiceManager serviceManager, ApiServersVpnConnector apiServerConnector, CustomConfigsVpnConnector customConfigServerConnector)
		{
			this._serviceManager = serviceManager;
			this._apiServerConnector = apiServerConnector;
			this._customConfigServerConnector = customConfigServerConnector;
			this._serviceManager.RegisterCallback(new Action<OpenVpnStateChangedEventArgs>(this.OnVpnStateChanged));
			this._serviceManager.RegisterCallback(new Action<OpenVpnErrorOccuredEventArgs>(this.OnVpnErrorOccured));
		}

		[AsyncStateMachine(typeof(VpnConnectionManager.<Connect>d__11))]
		public Task Connect(Server server)
		{
			VpnConnectionManager.<Connect>d__11 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.server = server;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<VpnConnectionManager.<Connect>d__11>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnConnectionManager.<Disconnect>d__12))]
		public Task Disconnect()
		{
			VpnConnectionManager.<Disconnect>d__12 <Disconnect>d__;
			<Disconnect>d__.<>4__this = this;
			<Disconnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Disconnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Disconnect>d__.<>t__builder;
			<>t__builder.Start<VpnConnectionManager.<Disconnect>d__12>(ref <Disconnect>d__);
			return <Disconnect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnConnectionManager.<GetStatus>d__13))]
		public Task<VpnConnectionStatus> GetStatus()
		{
			VpnConnectionManager.<GetStatus>d__13 <GetStatus>d__;
			<GetStatus>d__.<>4__this = this;
			<GetStatus>d__.<>t__builder = AsyncTaskMethodBuilder<VpnConnectionStatus>.Create();
			<GetStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnConnectionStatus> <>t__builder = <GetStatus>d__.<>t__builder;
			<>t__builder.Start<VpnConnectionManager.<GetStatus>d__13>(ref <GetStatus>d__);
			return <GetStatus>d__.<>t__builder.Task;
		}

		public Bandwidth GetConnectionSpeed()
		{
			return this._serviceManager.GetCurrentBandwidth();
		}

		private void OnVpnStateChanged(OpenVpnStateChangedEventArgs e)
		{
			this.RaiseVpnStatusChanged(new OpenVpnStateChangedEventArgs(e.get_Status().get_State(), e.get_Status().get_Server()));
		}

		private void OnVpnErrorOccured(VpnErrorEventArgs e)
		{
			EventHandler<VpnErrorEventArgs> expr_06 = this.VpnErrorOccured;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, e);
		}

		private void RaiseVpnStatusChanged(VpnConnectionStatusChangeEventArgs e)
		{
			EventHandler<VpnConnectionStatusChangeEventArgs> expr_06 = this.VpnStatusChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, e);
		}
	}
}
