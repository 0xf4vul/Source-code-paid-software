using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models.Settings;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;

namespace NordVpn.CyberSec
{
	public sealed class CyberSecHostsStorage
	{
		private readonly ICyberSecHostsProvider _cyberSecHostsProvider;

		private readonly IPersistedSettings _settings;

		public CyberSecHostsStorage(ICyberSecHostsProvider cyberSecHostsProvider, IPersistedSettings settings)
		{
			this._cyberSecHostsProvider = cyberSecHostsProvider;
			this._settings = settings;
		}

		[AsyncStateMachine(typeof(CyberSecHostsStorage.<GetHosts>d__3))]
		public Task<IList<string>> GetHosts(CancellationToken token)
		{
			CyberSecHostsStorage.<GetHosts>d__3 <GetHosts>d__;
			<GetHosts>d__.<>4__this = this;
			<GetHosts>d__.token = token;
			<GetHosts>d__.<>t__builder = AsyncTaskMethodBuilder<IList<string>>.Create();
			<GetHosts>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<IList<string>> <>t__builder = <GetHosts>d__.<>t__builder;
			<>t__builder.Start<CyberSecHostsStorage.<GetHosts>d__3>(ref <GetHosts>d__);
			return <GetHosts>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(CyberSecHostsStorage.<UpdateHosts>d__4))]
		public Task<IList<string>> UpdateHosts(CancellationToken token)
		{
			CyberSecHostsStorage.<UpdateHosts>d__4 <UpdateHosts>d__;
			<UpdateHosts>d__.<>4__this = this;
			<UpdateHosts>d__.token = token;
			<UpdateHosts>d__.<>t__builder = AsyncTaskMethodBuilder<IList<string>>.Create();
			<UpdateHosts>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<IList<string>> <>t__builder = <UpdateHosts>d__.<>t__builder;
			<>t__builder.Start<CyberSecHostsStorage.<UpdateHosts>d__4>(ref <UpdateHosts>d__);
			return <UpdateHosts>d__.<>t__builder.Task;
		}

		private IList<string> LoadPersistedCyberSecHosts()
		{
			return this._settings.Of<RunSettings>().get_CyberSecHosts().ToList<string>();
		}
	}
}
