using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.ServiceProxy.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Vpn.OpenVPNService
{
	public class VpnServiceManager : IVpnServiceManager
	{
		private readonly VpnService _vpnService;

		private readonly OpenVpnOutputParser _outputParser;

		private readonly ServerSerializer _serverSerialzier;

		public VpnServiceManager(VpnService vpnService, ServerSerializer serverSerializer, OpenVpnOutputParser outputParser)
		{
			this._vpnService = vpnService;
			this._serverSerialzier = serverSerializer;
			this._outputParser = outputParser;
		}

		[AsyncStateMachine(typeof(VpnServiceManager.<Connect>d__4))]
		public Task Connect(OpenVpnConnection connection)
		{
			VpnServiceManager.<Connect>d__4 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.connection = connection;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<VpnServiceManager.<Connect>d__4>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnServiceManager.<GetCurrentConnectionStatus>d__5))]
		public Task<VpnConnectionStatus> GetCurrentConnectionStatus()
		{
			VpnServiceManager.<GetCurrentConnectionStatus>d__5 <GetCurrentConnectionStatus>d__;
			<GetCurrentConnectionStatus>d__.<>4__this = this;
			<GetCurrentConnectionStatus>d__.<>t__builder = AsyncTaskMethodBuilder<VpnConnectionStatus>.Create();
			<GetCurrentConnectionStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnConnectionStatus> <>t__builder = <GetCurrentConnectionStatus>d__.<>t__builder;
			<>t__builder.Start<VpnServiceManager.<GetCurrentConnectionStatus>d__5>(ref <GetCurrentConnectionStatus>d__);
			return <GetCurrentConnectionStatus>d__.<>t__builder.Task;
		}

		public Task Disconnect()
		{
			return this._vpnService.Disconnect();
		}

		public void RegisterCallback(Action<OpenVpnStateChangedEventArgs> callback)
		{
			this._vpnService.VpnStateChanged += delegate(object s, VpnStateChangedArgsProxy e)
			{
				callback(this.Map(e));
			};
		}

		public void RegisterCallback(Action<OpenVpnErrorOccuredEventArgs> callback)
		{
			this._vpnService.VpnErrorOccured += delegate(object s, VpnErrorOccuredEventArgsProxy e)
			{
				callback(this.Map(e));
			};
		}

		public Bandwidth GetCurrentBandwidth()
		{
			return VpnServiceManager.Map(this._vpnService.GetCurrentBandwidth());
		}

		private static ServerConnectionProxy Map(OpenVpnConnection connection)
		{
			ServerConnectionProxy expr_05 = new ServerConnectionProxy();
			expr_05.set_OvpnConfigPath(connection.OpenVpnConfig);
			expr_05.set_UserName(connection.Username);
			expr_05.set_Password(connection.Password);
			expr_05.set_DnsHosts(connection.DnsHosts);
			return expr_05;
		}

		private OpenVpnErrorOccuredEventArgs Map(VpnErrorOccuredEventArgsProxy e)
		{
			return new OpenVpnErrorOccuredEventArgs(e.get_ErrorMsg(), this._outputParser.Parse(e.get_ErrorMsg()));
		}

		private OpenVpnStateChangedEventArgs Map(VpnStateChangedArgsProxy args)
		{
			Server server = this._serverSerialzier.Deserialize(args.get_Server());
			VpnState state = VpnServiceManager.Map(args.get_State());
			string.IsNullOrEmpty(args.get_Message());
			return new OpenVpnStateChangedEventArgs(state, server);
		}

		private static Bandwidth Map(BandwidthProxy bandwidth)
		{
			return new Bandwidth(bandwidth.get_BytesIn(), bandwidth.get_BytesOut());
		}

		private static VpnState Map(VpnStateProxy curent)
		{
			switch (curent)
			{
			case 0:
				return 0;
			case 1:
				return 1;
			case 2:
				return 3;
			case 3:
				return 2;
			default:
				throw new NotImplementedException();
			}
		}
	}
}
