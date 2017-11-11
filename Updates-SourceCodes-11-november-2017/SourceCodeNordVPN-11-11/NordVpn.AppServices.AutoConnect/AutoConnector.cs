using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Models;
using NordVpn.Shared;
using NordVpn.Vpn;
using System;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.AppServices.AutoConnect
{
	public class AutoConnector
	{
		private readonly BestVpnServerConnector _connector;

		private readonly IServerProvider _serverProvider;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		public event EventHandler ServersChanged
		{
			add
			{
				this._serverProvider.add_ServersChanged(value);
			}
			remove
			{
				this._serverProvider.remove_ServersChanged(value);
			}
		}

		public AutoConnector(BestVpnServerConnector connector, IServerProvider serverProvider)
		{
			this._connector = connector;
			this._serverProvider = serverProvider;
		}

		[AsyncStateMachine(typeof(AutoConnector.<AutoConnect>d__7))]
		public Task AutoConnect(string mode, string target)
		{
			AutoConnector.<AutoConnect>d__7 <AutoConnect>d__;
			<AutoConnect>d__.<>4__this = this;
			<AutoConnect>d__.mode = mode;
			<AutoConnect>d__.target = target;
			<AutoConnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<AutoConnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <AutoConnect>d__.<>t__builder;
			<>t__builder.Start<AutoConnector.<AutoConnect>d__7>(ref <AutoConnect>d__);
			return <AutoConnect>d__.<>t__builder.Task;
		}

		public string GetAutoConnectDestination(string mode, string target)
		{
			if (AutoConnector.IsCountryMode(mode))
			{
				Country expr_0F = this.GetCountryByCode(target);
				string arg_24_0;
				if (expr_0F != null)
				{
					if ((arg_24_0 = expr_0F.get_Name()) != null)
					{
						return arg_24_0;
					}
				}
				arg_24_0 = "";
				return arg_24_0;
			}
			if (AutoConnector.IsServerMode(mode))
			{
				GeographicalServer expr_34 = this.GetServerById(target);
				string arg_49_0;
				if (expr_34 != null)
				{
					if ((arg_49_0 = expr_34.get_Name()) != null)
					{
						return arg_49_0;
					}
				}
				arg_49_0 = "";
				return arg_49_0;
			}
			return "";
		}

		[AsyncStateMachine(typeof(AutoConnector.<ConnectToCountry>d__9))]
		private Task ConnectToCountry(string target)
		{
			AutoConnector.<ConnectToCountry>d__9 <ConnectToCountry>d__;
			<ConnectToCountry>d__.<>4__this = this;
			<ConnectToCountry>d__.target = target;
			<ConnectToCountry>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ConnectToCountry>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ConnectToCountry>d__.<>t__builder;
			<>t__builder.Start<AutoConnector.<ConnectToCountry>d__9>(ref <ConnectToCountry>d__);
			return <ConnectToCountry>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(AutoConnector.<ConnectToServer>d__10))]
		private Task ConnectToServer(string target)
		{
			AutoConnector.<ConnectToServer>d__10 <ConnectToServer>d__;
			<ConnectToServer>d__.<>4__this = this;
			<ConnectToServer>d__.target = target;
			<ConnectToServer>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ConnectToServer>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ConnectToServer>d__.<>t__builder;
			<>t__builder.Start<AutoConnector.<ConnectToServer>d__10>(ref <ConnectToServer>d__);
			return <ConnectToServer>d__.<>t__builder.Task;
		}

		private static bool IsServerMode(string mode)
		{
			return mode == "server";
		}

		private static bool IsCountryMode(string mode)
		{
			return mode == "country";
		}

		private Country GetCountryByCode(string code)
		{
			return this._serverProvider.GetCountries().FirstOrDefault((Country c) => c.get_Code().EqualsIgnoringCase(code));
		}

		private GeographicalServer GetServerById(string id)
		{
			return this._serverProvider.GetServers().FirstOrDefault((GeographicalServer s) => s.get_Id() == int.Parse(id));
		}

		private static bool ConnectedToCountry(string target, VpnConnectionStatus status, GeographicalServer server)
		{
			return status.get_State() == 3 && ((server != null) ? server.get_Country().get_Code() : null) == target;
		}

		private static bool ConnectedToServer(string target, VpnConnectionStatus status, GeographicalServer server)
		{
			return status.get_State() == 3 && ((server != null) ? new int?(server.get_Id()) : null) == int.Parse(target);
		}
	}
}
