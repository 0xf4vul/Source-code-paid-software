using Liberation.ServiceModel.Client;
using NordVpn.Core.Abstract.Log;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.ServiceProxy.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.ServiceModel;
using System.Threading.Tasks;

namespace NordVpn.Vpn.OpenVPNService
{
	public class VpnService
	{
		private readonly InprocChannelFactory _channelFactory;

		private readonly ILogger _logger;

		private SafeChannel<IVpnConnectionManagerProxy<VpnState>> _channel;

		private readonly VpnEventsCallback _vpnEventsCallback;

		public event EventHandler<VpnStateChangedArgsProxy> VpnStateChanged
		{
			add
			{
				VpnEventsCallback expr_06 = this._vpnEventsCallback;
				expr_06.VpnStateChanged = (EventHandler<VpnStateChangedArgsProxy>)Delegate.Combine(expr_06.VpnStateChanged, value);
			}
			remove
			{
				VpnEventsCallback expr_06 = this._vpnEventsCallback;
				expr_06.VpnStateChanged = (EventHandler<VpnStateChangedArgsProxy>)Delegate.Remove(expr_06.VpnStateChanged, value);
			}
		}

		public event EventHandler<VpnErrorOccuredEventArgsProxy> VpnErrorOccured
		{
			add
			{
				VpnEventsCallback expr_06 = this._vpnEventsCallback;
				expr_06.VpnErrorOccured = (EventHandler<VpnErrorOccuredEventArgsProxy>)Delegate.Combine(expr_06.VpnErrorOccured, value);
			}
			remove
			{
				VpnEventsCallback expr_06 = this._vpnEventsCallback;
				expr_06.VpnErrorOccured = (EventHandler<VpnErrorOccuredEventArgsProxy>)Delegate.Remove(expr_06.VpnErrorOccured, value);
			}
		}

		public VpnService(InprocChannelFactory channelFactory, VpnEventsCallback vpnEventsCallback, ILogger logger)
		{
			this._channelFactory = channelFactory;
			this._logger = logger;
			this._vpnEventsCallback = vpnEventsCallback;
		}

		[AsyncStateMachine(typeof(VpnService.<ConnectAsync>d__11))]
		public Task ConnectAsync(ServerConnectionProxy serverConnection)
		{
			VpnService.<ConnectAsync>d__11 <ConnectAsync>d__;
			<ConnectAsync>d__.<>4__this = this;
			<ConnectAsync>d__.serverConnection = serverConnection;
			<ConnectAsync>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ConnectAsync>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ConnectAsync>d__.<>t__builder;
			<>t__builder.Start<VpnService.<ConnectAsync>d__11>(ref <ConnectAsync>d__);
			return <ConnectAsync>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnService.<Disconnect>d__12))]
		public Task Disconnect()
		{
			VpnService.<Disconnect>d__12 <Disconnect>d__;
			<Disconnect>d__.<>4__this = this;
			<Disconnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Disconnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Disconnect>d__.<>t__builder;
			<>t__builder.Start<VpnService.<Disconnect>d__12>(ref <Disconnect>d__);
			return <Disconnect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnService.<GetCurrentConnectionAsync>d__13))]
		public Task<VpnConnectionProxy<VpnState>> GetCurrentConnectionAsync()
		{
			VpnService.<GetCurrentConnectionAsync>d__13 <GetCurrentConnectionAsync>d__;
			<GetCurrentConnectionAsync>d__.<>4__this = this;
			<GetCurrentConnectionAsync>d__.<>t__builder = AsyncTaskMethodBuilder<VpnConnectionProxy<VpnState>>.Create();
			<GetCurrentConnectionAsync>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnConnectionProxy<VpnState>> <>t__builder = <GetCurrentConnectionAsync>d__.<>t__builder;
			<>t__builder.Start<VpnService.<GetCurrentConnectionAsync>d__13>(ref <GetCurrentConnectionAsync>d__);
			return <GetCurrentConnectionAsync>d__.<>t__builder.Task;
		}

		public BandwidthProxy GetCurrentBandwidth()
		{
			this.EnsureChannelCreated();
			BandwidthProxy currentBandwidth;
			try
			{
				currentBandwidth = this._channel.get_Proxy().GetCurrentBandwidth();
			}
			catch (CommunicationException ex)
			{
				this._logger.Error(ex);
				this.RecreateChannel();
				currentBandwidth = this._channel.get_Proxy().GetCurrentBandwidth();
			}
			return currentBandwidth;
		}

		private void EnsureChannelCreated()
		{
			if (this._channel == null)
			{
				this._channel = this._channelFactory.Create<IVpnConnectionManagerProxy<VpnState>>("nordvpn-service/ConnectionManager", this._vpnEventsCallback);
				this._channel.get_Proxy().RegisterCallback();
			}
		}

		private void RecreateChannel()
		{
			this._logger.Error("VpnService proxy faulted");
			this._channel.Dispose();
			this._channel = null;
			this.EnsureChannelCreated();
		}
	}
}
