using NordVpn.Core.Abstract.Log;
using NordVpn.Core.Abstract.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Vpn.OpenVPNService
{
	public class VpnServiceManagerLoggingDecorator : IVpnServiceManager
	{
		private readonly IVpnServiceManager _decorated;

		private readonly ILogger _logger;

		private bool _decoratedVpnStateCallbackRegistered;

		private bool _decoratedVpnErrorCallbackRegistered;

		public VpnServiceManagerLoggingDecorator(IVpnServiceManager manager, ILogger logger)
		{
			this._decorated = manager;
			this._logger = logger;
		}

		[AsyncStateMachine(typeof(VpnServiceManagerLoggingDecorator.<Connect>d__5))]
		public Task Connect(OpenVpnConnection connection)
		{
			VpnServiceManagerLoggingDecorator.<Connect>d__5 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.connection = connection;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<VpnServiceManagerLoggingDecorator.<Connect>d__5>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnServiceManagerLoggingDecorator.<Disconnect>d__6))]
		public Task Disconnect()
		{
			VpnServiceManagerLoggingDecorator.<Disconnect>d__6 <Disconnect>d__;
			<Disconnect>d__.<>4__this = this;
			<Disconnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Disconnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Disconnect>d__.<>t__builder;
			<>t__builder.Start<VpnServiceManagerLoggingDecorator.<Disconnect>d__6>(ref <Disconnect>d__);
			return <Disconnect>d__.<>t__builder.Task;
		}

		public Bandwidth GetCurrentBandwidth()
		{
			return this._decorated.GetCurrentBandwidth();
		}

		[AsyncStateMachine(typeof(VpnServiceManagerLoggingDecorator.<GetCurrentConnectionStatus>d__8))]
		public Task<VpnConnectionStatus> GetCurrentConnectionStatus()
		{
			VpnServiceManagerLoggingDecorator.<GetCurrentConnectionStatus>d__8 <GetCurrentConnectionStatus>d__;
			<GetCurrentConnectionStatus>d__.<>4__this = this;
			<GetCurrentConnectionStatus>d__.<>t__builder = AsyncTaskMethodBuilder<VpnConnectionStatus>.Create();
			<GetCurrentConnectionStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnConnectionStatus> <>t__builder = <GetCurrentConnectionStatus>d__.<>t__builder;
			<>t__builder.Start<VpnServiceManagerLoggingDecorator.<GetCurrentConnectionStatus>d__8>(ref <GetCurrentConnectionStatus>d__);
			return <GetCurrentConnectionStatus>d__.<>t__builder.Task;
		}

		public void RegisterCallback(Action<OpenVpnStateChangedEventArgs> callback)
		{
			if (!this._decoratedVpnStateCallbackRegistered)
			{
				this._decorated.RegisterCallback(delegate(OpenVpnStateChangedEventArgs e)
				{
					this.DecoratedCallback(callback, e);
				});
				this._decoratedVpnStateCallbackRegistered = true;
				return;
			}
			this._decorated.RegisterCallback(callback);
		}

		public void RegisterCallback(Action<OpenVpnErrorOccuredEventArgs> callback)
		{
			if (!this._decoratedVpnErrorCallbackRegistered)
			{
				this._decorated.RegisterCallback(delegate(OpenVpnErrorOccuredEventArgs e)
				{
					this.DecoratedCallback(callback, e);
				});
				this._decoratedVpnErrorCallbackRegistered = true;
				return;
			}
			this._decorated.RegisterCallback(callback);
		}

		private void DecoratedCallback(Action<OpenVpnStateChangedEventArgs> innerCallback, OpenVpnStateChangedEventArgs e)
		{
			this._logger.Info(string.Format("State changed: {0}.", e.get_Status().get_State()));
			innerCallback(e);
		}

		private void DecoratedCallback(Action<OpenVpnErrorOccuredEventArgs> innerCallback, OpenVpnErrorOccuredEventArgs e)
		{
			if (!string.IsNullOrEmpty(e.get_ErrorMsg()))
			{
				this._logger.Info(string.Format("OpenVPN error: {0}.", e.get_ErrorMsg()));
			}
			innerCallback(e);
		}
	}
}
