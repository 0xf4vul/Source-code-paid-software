using NordVpn.Application;
using NordVpn.Application.Analytics;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Vpn;
using System;
using System.Reflection;
using System.Runtime.CompilerServices;

namespace NordVpn.Header.ViewModels
{
	public class ConnectButtonViewModel : AppScreen
	{
		private readonly BestVpnServerConnector _connector;

		private readonly EventFacade _eventFacade;

		private VpnState _vpnState;

		private VpnState _previousState;

		public VpnState VpnState
		{
			get
			{
				return this._vpnState;
			}
			set
			{
				this.Set<VpnState>(ref this._vpnState, value, "VpnState");
			}
		}

		public ConnectButtonViewModel(BestVpnServerConnector connector, EventFacade eventFacade)
		{
			this._connector = connector;
			this._eventFacade = eventFacade;
			connector.VpnStateChanged += new EventHandler<VpnStateChangedEventArgs>(this.OnVpnStateChanged);
		}

		[Analytics, Event("ConnectButton", "Click"), AsyncStateMachine(typeof(ConnectButtonViewModel.<Connect>d__8))]
		public void Connect()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(ConnectButtonViewModel.Connect()).MethodHandle, typeof(ConnectButtonViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			object[] args = new object[0];
			analyticsAttribute.Init(this, methodFromHandle, args);
			analyticsAttribute.OnEntry();
			try
			{
				ConnectButtonViewModel.<Connect>d__8 <Connect>d__;
				<Connect>d__.<>4__this = this;
				<Connect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
				<Connect>d__.<>1__state = -1;
				AsyncVoidMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
				<>t__builder.Start<ConnectButtonViewModel.<Connect>d__8>(ref <Connect>d__);
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		private void OnVpnStateChanged(object sender, VpnStateChangedEventArgs e)
		{
			if (e.VpnState != 1)
			{
				this.VpnState = e.VpnState;
			}
			else if (this._previousState == 3)
			{
				this.VpnState = 0;
			}
			else if (this._previousState == 2)
			{
				this.VpnState = 2;
			}
			else
			{
				this.VpnState = 0;
			}
			this._previousState = e.VpnState;
		}
	}
}
