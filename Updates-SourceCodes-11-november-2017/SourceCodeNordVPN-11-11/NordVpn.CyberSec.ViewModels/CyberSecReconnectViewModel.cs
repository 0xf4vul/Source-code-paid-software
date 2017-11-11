using NordVpn.Application;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.CyberSec.ViewModels
{
	public sealed class CyberSecReconnectViewModel : AppScreen
	{
		private readonly VpnConnector _vpnConnector;

		private readonly EventFacade _eventFacade;

		private readonly CyberSecManager _cyberSecManager;

		public bool DesiredCyberSecState
		{
			get;
			set;
		}

		public override string DisplayName
		{
			get;
			set;
		}

		public CyberSecReconnectViewModel(VpnConnector vpnConnector, EventFacade eventFacade, CyberSecManager cyberSecManager)
		{
			this.<DisplayName>k__BackingField = "Warning";
			base..ctor();
			this._vpnConnector = vpnConnector;
			this._eventFacade = eventFacade;
			this._cyberSecManager = cyberSecManager;
		}

		[AsyncStateMachine(typeof(CyberSecReconnectViewModel.<Reconnect>d__12))]
		public void Reconnect()
		{
			CyberSecReconnectViewModel.<Reconnect>d__12 <Reconnect>d__;
			<Reconnect>d__.<>4__this = this;
			<Reconnect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Reconnect>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Reconnect>d__.<>t__builder;
			<>t__builder.Start<CyberSecReconnectViewModel.<Reconnect>d__12>(ref <Reconnect>d__);
		}

		[AsyncStateMachine(typeof(CyberSecReconnectViewModel.<InnerReconnect>d__13))]
		private Task InnerReconnect()
		{
			CyberSecReconnectViewModel.<InnerReconnect>d__13 <InnerReconnect>d__;
			<InnerReconnect>d__.<>4__this = this;
			<InnerReconnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<InnerReconnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <InnerReconnect>d__.<>t__builder;
			<>t__builder.Start<CyberSecReconnectViewModel.<InnerReconnect>d__13>(ref <InnerReconnect>d__);
			return <InnerReconnect>d__.<>t__builder.Task;
		}
	}
}
