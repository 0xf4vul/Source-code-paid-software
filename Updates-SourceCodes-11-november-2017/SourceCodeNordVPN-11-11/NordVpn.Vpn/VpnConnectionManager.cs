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

		private readonly ApiServersVpnConnector _apiServerConnector;

		private bool _statusNotified;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<VpnConnectionStatusChangeEventArgs> VpnStatusChanged;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<VpnErrorEventArgs> VpnErrorOccured;

		public VpnConnectionManager(IVpnServiceManager serviceManager, ApiServersVpnConnector apiServerConnector)
		{
			this._serviceManager = serviceManager;
			this._apiServerConnector = apiServerConnector;
			this._serviceManager.RegisterCallback(new Action<OpenVpnErrorOccuredEventArgs>(this.OnOpenVpnErrorOccured));
			this._serviceManager.RegisterCallback(new Action<OpenVpnStateChangedEventArgs>(this.OnOpenVpnStateChanged));
		}

		[AsyncStateMachine(typeof(VpnConnectionManager.<Connect>d__10))]
		public Task Connect(Server server)
		{
			VpnConnectionManager.<Connect>d__10 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.server = server;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<VpnConnectionManager.<Connect>d__10>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		public Task Disconnect()
		{
			return this._serviceManager.Disconnect();
		}

		[AsyncStateMachine(typeof(VpnConnectionManager.<GetStatus>d__12))]
		public Task<VpnConnectionStatus> GetStatus()
		{
			VpnConnectionManager.<GetStatus>d__12 <GetStatus>d__;
			<GetStatus>d__.<>4__this = this;
			<GetStatus>d__.<>t__builder = AsyncTaskMethodBuilder<VpnConnectionStatus>.Create();
			<GetStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnConnectionStatus> <>t__builder = <GetStatus>d__.<>t__builder;
			<>t__builder.Start<VpnConnectionManager.<GetStatus>d__12>(ref <GetStatus>d__);
			return <GetStatus>d__.<>t__builder.Task;
		}

		public Task<Bandwidth> GetConnectionSpeed()
		{
			return this._serviceManager.GetCurrentBandwidth();
		}

		private void OnOpenVpnErrorOccured(OpenVpnErrorOccuredEventArgs e)
		{
			this.RaiseVpnErrorOccured(new VpnErrorEventArgs(e.Message, VpnConnectionManager.IsAuthorizationError(e)));
		}

		private void OnOpenVpnStateChanged(OpenVpnStateChangedEventArgs e)
		{
			this.RaiseVpnStatusChanged(new VpnConnectionStatusChangeEventArgs(e.VpnState, e.Server));
		}

		private void RaiseVpnErrorOccured(VpnErrorEventArgs e)
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

		private static bool IsAuthorizationError(OpenVpnErrorOccuredEventArgs e)
		{
			return e.Error == OpenVpnError.AuthorizationError;
		}
	}
}
