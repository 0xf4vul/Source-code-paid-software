using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Utilities;
using NordVpn.Infrastructure.Api;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Threading;

namespace NordVpn.AppServices
{
	public class ServersUpdateTimer
	{
		private static readonly AsyncLock _lock = new AsyncLock();

		private readonly DispatcherTimer _timer;

		private readonly ApiCachedServerStore _serverStore;

		private readonly ApiServerProvider _serverProvider;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		public ServersUpdateTimer(ApiCachedServerStore serverStore, ApiServerProvider serverProvider)
		{
			this._serverStore = serverStore;
			this._serverProvider = serverProvider;
			this._timer = new DispatcherTimer();
			this._timer.Tick += new EventHandler(this.OnTick);
		}

		[AsyncStateMachine(typeof(ServersUpdateTimer.<Start>d__6))]
		public Task Start(TimeSpan interval)
		{
			ServersUpdateTimer.<Start>d__6 <Start>d__;
			<Start>d__.<>4__this = this;
			<Start>d__.interval = interval;
			<Start>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Start>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Start>d__.<>t__builder;
			<>t__builder.Start<ServersUpdateTimer.<Start>d__6>(ref <Start>d__);
			return <Start>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(ServersUpdateTimer.<UpdateServers>d__7))]
		public Task UpdateServers()
		{
			ServersUpdateTimer.<UpdateServers>d__7 <UpdateServers>d__;
			<UpdateServers>d__.<>4__this = this;
			<UpdateServers>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<UpdateServers>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <UpdateServers>d__.<>t__builder;
			<>t__builder.Start<ServersUpdateTimer.<UpdateServers>d__7>(ref <UpdateServers>d__);
			return <UpdateServers>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(ServersUpdateTimer.<OnTick>d__8))]
		private void OnTick(object sender, EventArgs eventArgs)
		{
			ServersUpdateTimer.<OnTick>d__8 <OnTick>d__;
			<OnTick>d__.<>4__this = this;
			<OnTick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnTick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnTick>d__.<>t__builder;
			<>t__builder.Start<ServersUpdateTimer.<OnTick>d__8>(ref <OnTick>d__);
		}
	}
}
