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

		private readonly ServerSerializer _serializer;

		private readonly ProxyContractsMapper _mapper;

		public VpnServiceManager(VpnService vpnService, ServerSerializer serverSerializer, OpenVpnOutputParser outputParser, ProxyContractsMapper mapper)
		{
			this._vpnService = vpnService;
			this._serializer = serverSerializer;
			this._outputParser = outputParser;
			this._mapper = mapper;
		}

		[AsyncStateMachine(typeof(VpnServiceManager.<Connect>d__5))]
		public Task Connect(OpenVpnConnection connection)
		{
			VpnServiceManager.<Connect>d__5 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.connection = connection;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<VpnServiceManager.<Connect>d__5>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(VpnServiceManager.<GetCurrentConnectionStatus>d__6))]
		public Task<VpnConnectionStatus> GetCurrentConnectionStatus()
		{
			VpnServiceManager.<GetCurrentConnectionStatus>d__6 <GetCurrentConnectionStatus>d__;
			<GetCurrentConnectionStatus>d__.<>4__this = this;
			<GetCurrentConnectionStatus>d__.<>t__builder = AsyncTaskMethodBuilder<VpnConnectionStatus>.Create();
			<GetCurrentConnectionStatus>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<VpnConnectionStatus> <>t__builder = <GetCurrentConnectionStatus>d__.<>t__builder;
			<>t__builder.Start<VpnServiceManager.<GetCurrentConnectionStatus>d__6>(ref <GetCurrentConnectionStatus>d__);
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
				callback(this.GetOpenVpnStateArgs(e));
			};
		}

		public void RegisterCallback(Action<OpenVpnErrorOccuredEventArgs> callback)
		{
			this._vpnService.VpnErrorOccured += delegate(object s, VpnErrorOccuredEventArgsProxy e)
			{
				callback(this.GetOpenVpnErrorArgs(e));
			};
		}

		[AsyncStateMachine(typeof(VpnServiceManager.<GetCurrentBandwidth>d__10))]
		public Task<Bandwidth> GetCurrentBandwidth()
		{
			VpnServiceManager.<GetCurrentBandwidth>d__10 <GetCurrentBandwidth>d__;
			<GetCurrentBandwidth>d__.<>4__this = this;
			<GetCurrentBandwidth>d__.<>t__builder = AsyncTaskMethodBuilder<Bandwidth>.Create();
			<GetCurrentBandwidth>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<Bandwidth> <>t__builder = <GetCurrentBandwidth>d__.<>t__builder;
			<>t__builder.Start<VpnServiceManager.<GetCurrentBandwidth>d__10>(ref <GetCurrentBandwidth>d__);
			return <GetCurrentBandwidth>d__.<>t__builder.Task;
		}

		private OpenVpnStateChangedEventArgs GetOpenVpnStateArgs(VpnStateChangedArgsProxy args)
		{
			Server server = this._serializer.Deserialize(args.get_Server());
			return new OpenVpnStateChangedEventArgs(this._mapper.Map(args.get_State()), server);
		}

		private OpenVpnErrorOccuredEventArgs GetOpenVpnErrorArgs(VpnErrorOccuredEventArgsProxy e)
		{
			OpenVpnError error = this._outputParser.Parse(e.get_ErrorMsg());
			return new OpenVpnErrorOccuredEventArgs(e.get_ErrorMsg(), error);
		}
	}
}
