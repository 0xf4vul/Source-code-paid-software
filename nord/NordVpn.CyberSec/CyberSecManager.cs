using NordVpn.Core.Abstract;
using NordVpn.Infrastructure.CDN;
using NordVpn.Settings.Storage;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.CyberSec
{
	public class CyberSecManager
	{
		private readonly AppSettings _appSettings;

		private readonly IAnalyticsManager _analyticsManager;

		private readonly CdnClient _cndClient;

		public bool IsEnabled
		{
			get
			{
				return this._appSettings.CyberSec;
			}
		}

		public CyberSecManager(AppSettings appSettings, IAnalyticsManager analyticsManager, CdnClient cndClient)
		{
			this._appSettings = appSettings;
			this._analyticsManager = analyticsManager;
			this._cndClient = cndClient;
		}

		public void Enable()
		{
			this._appSettings.CyberSec = true;
			this._appSettings.ShowCyberSecPopup = false;
			this._analyticsManager.TriggerEvent("CyberSec", "Enable");
		}

		[AsyncStateMachine(typeof(CyberSecManager.<GetHosts>d__7))]
		public Task<IList<string>> GetHosts()
		{
			CyberSecManager.<GetHosts>d__7 <GetHosts>d__;
			<GetHosts>d__.<>4__this = this;
			<GetHosts>d__.<>t__builder = AsyncTaskMethodBuilder<IList<string>>.Create();
			<GetHosts>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<IList<string>> <>t__builder = <GetHosts>d__.<>t__builder;
			<>t__builder.Start<CyberSecManager.<GetHosts>d__7>(ref <GetHosts>d__);
			return <GetHosts>d__.<>t__builder.Task;
		}

		public void Disable()
		{
			this._appSettings.CyberSec = false;
			this._analyticsManager.TriggerEvent("CyberSec", "Disable");
		}

		[AsyncStateMachine(typeof(CyberSecManager.<UpdateHosts>d__9))]
		public Task UpdateHosts()
		{
			CyberSecManager.<UpdateHosts>d__9 <UpdateHosts>d__;
			<UpdateHosts>d__.<>4__this = this;
			<UpdateHosts>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<UpdateHosts>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <UpdateHosts>d__.<>t__builder;
			<>t__builder.Start<CyberSecManager.<UpdateHosts>d__9>(ref <UpdateHosts>d__);
			return <UpdateHosts>d__.<>t__builder.Task;
		}
	}
}
