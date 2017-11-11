using NordVpn.Application.Analytics;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Vpn
{
	public sealed class TrackedVpnConnectionManagerDecorator : IVpnConnectionManager
	{
		private readonly VpnConnectionManager _decorated;

		private bool _userDisconnected;

		private Server _server;

		private VpnState _vpnState;

		public event EventHandler<VpnConnectionStatusChangeEventArgs> VpnStatusChanged
		{
			add
			{
				this._decorated.VpnStatusChanged += value;
			}
			remove
			{
				this._decorated.VpnStatusChanged -= value;
			}
		}

		public event EventHandler<VpnErrorEventArgs> VpnErrorOccured
		{
			add
			{
				this._decorated.VpnErrorOccured += value;
			}
			remove
			{
				this._decorated.VpnErrorOccured -= value;
			}
		}

		public TrackedVpnConnectionManagerDecorator(VpnConnectionManager vpnConnectionManager)
		{
			this._decorated = vpnConnectionManager;
			this._decorated.VpnStatusChanged += new EventHandler<VpnConnectionStatusChangeEventArgs>(this.OnStatusChanged);
		}

		[AsyncStateMachine(typeof(TrackedVpnConnectionManagerDecorator.<Connect>d__5))]
		public Task Connect(Server server)
		{
			TrackedVpnConnectionManagerDecorator.<Connect>d__5 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.server = server;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<TrackedVpnConnectionManagerDecorator.<Connect>d__5>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(TrackedVpnConnectionManagerDecorator.<Disconnect>d__6))]
		public Task Disconnect()
		{
			TrackedVpnConnectionManagerDecorator.<Disconnect>d__6 <Disconnect>d__;
			<Disconnect>d__.<>4__this = this;
			<Disconnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Disconnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Disconnect>d__.<>t__builder;
			<>t__builder.Start<TrackedVpnConnectionManagerDecorator.<Disconnect>d__6>(ref <Disconnect>d__);
			return <Disconnect>d__.<>t__builder.Task;
		}

		public Task<VpnConnectionStatus> GetStatus()
		{
			return this._decorated.GetStatus();
		}

		private void OnStatusChanged(object sender, VpnConnectionStatusChangeEventArgs e)
		{
			if (e.get_Status().get_Server() != null)
			{
				this.Report(e.get_Status().get_State(), e.get_Status().get_Server());
			}
			this._vpnState = e.get_Status().get_State();
			this._server = e.get_Status().get_Server();
		}

		private void Report(VpnState newState, Server newServer)
		{
			if (this.WasConnectingToThisServerPreviously(newServer))
			{
				if (newState == 3)
				{
					TrackedVpnConnectionManagerDecorator.ReportSuccess(newServer.get_Name());
					return;
				}
				if (newState == null)
				{
					TrackedVpnConnectionManagerDecorator.ReportFailure(newServer.get_Name());
					return;
				}
			}
			else if (this.WasConnectedToThisServerPreviously(newServer) && !this._userDisconnected)
			{
				TrackedVpnConnectionManagerDecorator.ReportConnectionDrop(newServer.get_Name());
			}
		}

		private bool WasConnectingToThisServerPreviously(Server newServer)
		{
			return this._vpnState == 2 && newServer.Equals(this._server);
		}

		private bool WasConnectedToThisServerPreviously(Server newServer)
		{
			return this._vpnState == 3 && newServer.Equals(this._server);
		}

		[Analytics, Event("connect_success")]
		private static void ReportSuccess(string serverName)
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(TrackedVpnConnectionManagerDecorator.ReportSuccess(string)).MethodHandle, typeof(TrackedVpnConnectionManagerDecorator).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			analyticsAttribute.Init(null, methodFromHandle, new object[]
			{
				serverName
			});
			analyticsAttribute.OnEntry();
			try
			{
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		[Analytics, Event("connect_failure")]
		private static void ReportFailure(string serverName)
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(TrackedVpnConnectionManagerDecorator.ReportFailure(string)).MethodHandle, typeof(TrackedVpnConnectionManagerDecorator).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			analyticsAttribute.Init(null, methodFromHandle, new object[]
			{
				serverName
			});
			analyticsAttribute.OnEntry();
			try
			{
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		[Analytics, Event("connection_drop")]
		private static void ReportConnectionDrop(string serverName)
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(TrackedVpnConnectionManagerDecorator.ReportConnectionDrop(string)).MethodHandle, typeof(TrackedVpnConnectionManagerDecorator).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			analyticsAttribute.Init(null, methodFromHandle, new object[]
			{
				serverName
			});
			analyticsAttribute.OnEntry();
			try
			{
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}
	}
}
