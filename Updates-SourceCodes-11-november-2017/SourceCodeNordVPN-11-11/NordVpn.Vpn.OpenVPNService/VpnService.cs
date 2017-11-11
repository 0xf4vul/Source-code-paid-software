using Liberation.ServiceModel.Client;
using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.ServiceProxy.Vpn;
using NordVpn.Shared;
using System;
using System.Runtime.CompilerServices;
using System.ServiceModel;
using System.Threading.Tasks;

namespace NordVpn.Vpn.OpenVPNService
{
	public class VpnService
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly VpnService.<>c <>9 = new VpnService.<>c();

			public static Func<IVpnConnectionManagerProxy, Task<Task>> <>9__12_0;

			public static Func<IVpnConnectionManagerProxy, Task<VpnConnectionProxy>> <>9__13_0;

			public static Func<IVpnConnectionManagerProxy, Task<BandwidthProxy>> <>9__14_0;

			internal Task<Task> <Disconnect>b__12_0(IVpnConnectionManagerProxy p)
			{
				return p.Disconnect().Wrap();
			}

			internal Task<VpnConnectionProxy> <GetCurrentConnectionAsync>b__13_0(IVpnConnectionManagerProxy p)
			{
				return p.GetCurrentConnection();
			}

			internal Task<BandwidthProxy> <GetCurrentBandwidth>b__14_0(IVpnConnectionManagerProxy p)
			{
				return p.GetCurrentBandwidth();
			}
		}

		private readonly InprocChannelFactory _channelFactory;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		private SafeChannel<IVpnConnectionManagerProxy> _channel;

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

		public VpnService(InprocChannelFactory channelFactory, VpnEventsCallback vpnEventsCallback)
		{
			this._channelFactory = channelFactory;
			this._vpnEventsCallback = vpnEventsCallback;
		}

		public Task ConnectAsync(ServerConnectionProxy serverConnection)
		{
			return this.Invoke<Task>((IVpnConnectionManagerProxy p) => p.Connect(serverConnection).Wrap());
		}

		public Task Disconnect()
		{
			Func<IVpnConnectionManagerProxy, Task<Task>> arg_20_1;
			if ((arg_20_1 = VpnService.<>c.<>9__12_0) == null)
			{
				arg_20_1 = (VpnService.<>c.<>9__12_0 = new Func<IVpnConnectionManagerProxy, Task<Task>>(VpnService.<>c.<>9.<Disconnect>b__12_0));
			}
			return this.Invoke<Task>(arg_20_1);
		}

		public Task<VpnConnectionProxy> GetCurrentConnectionAsync()
		{
			Func<IVpnConnectionManagerProxy, Task<VpnConnectionProxy>> arg_20_1;
			if ((arg_20_1 = VpnService.<>c.<>9__13_0) == null)
			{
				arg_20_1 = (VpnService.<>c.<>9__13_0 = new Func<IVpnConnectionManagerProxy, Task<VpnConnectionProxy>>(VpnService.<>c.<>9.<GetCurrentConnectionAsync>b__13_0));
			}
			return this.Invoke<VpnConnectionProxy>(arg_20_1);
		}

		public Task<BandwidthProxy> GetCurrentBandwidth()
		{
			Func<IVpnConnectionManagerProxy, Task<BandwidthProxy>> arg_20_1;
			if ((arg_20_1 = VpnService.<>c.<>9__14_0) == null)
			{
				arg_20_1 = (VpnService.<>c.<>9__14_0 = new Func<IVpnConnectionManagerProxy, Task<BandwidthProxy>>(VpnService.<>c.<>9.<GetCurrentBandwidth>b__14_0));
			}
			return this.Invoke<BandwidthProxy>(arg_20_1);
		}

		[AsyncStateMachine(typeof(VpnService.<Invoke>d__15<>))]
		private Task<T> Invoke<T>(Func<IVpnConnectionManagerProxy, Task<T>> serviceCall)
		{
			VpnService.<Invoke>d__15<T> <Invoke>d__;
			<Invoke>d__.<>4__this = this;
			<Invoke>d__.serviceCall = serviceCall;
			<Invoke>d__.<>t__builder = AsyncTaskMethodBuilder<T>.Create();
			<Invoke>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<T> <>t__builder = <Invoke>d__.<>t__builder;
			<>t__builder.Start<VpnService.<Invoke>d__15<T>>(ref <Invoke>d__);
			return <Invoke>d__.<>t__builder.Task;
		}

		private SafeChannel<IVpnConnectionManagerProxy> CreateChannel()
		{
			SafeChannel<IVpnConnectionManagerProxy> expr_16 = this._channelFactory.Create<IVpnConnectionManagerProxy>("nordvpn-service/ConnectionManager", this._vpnEventsCallback);
			expr_16.get_Proxy().RegisterCallback();
			return expr_16;
		}

		private static bool IsCommunicationException(Exception ex)
		{
			return ex is CommunicationException || ex is TimeoutException;
		}
	}
}
