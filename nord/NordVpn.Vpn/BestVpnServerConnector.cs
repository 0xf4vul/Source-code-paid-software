using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Vpn
{
	public class BestVpnServerConnector : VpnConnector
	{
		private readonly BestUserServerProvider _userServerRegistry;

		public BestVpnServerConnector(IVpnConnectionManager connectionManager, BestUserServerProvider userServerRegistry) : base(connectionManager)
		{
			this._userServerRegistry = userServerRegistry;
		}

		[AsyncStateMachine(typeof(BestVpnServerConnector.<Connect>d__2))]
		public Task Connect(Country country)
		{
			BestVpnServerConnector.<Connect>d__2 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.country = country;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<BestVpnServerConnector.<Connect>d__2>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(BestVpnServerConnector.<Connect>d__3))]
		public Task Connect(Category category)
		{
			BestVpnServerConnector.<Connect>d__3 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.category = category;
			<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<BestVpnServerConnector.<Connect>d__3>(ref <Connect>d__);
			return <Connect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(BestVpnServerConnector.<ToggleConnect>d__4))]
		public Task ToggleConnect()
		{
			BestVpnServerConnector.<ToggleConnect>d__4 <ToggleConnect>d__;
			<ToggleConnect>d__.<>4__this = this;
			<ToggleConnect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ToggleConnect>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ToggleConnect>d__.<>t__builder;
			<>t__builder.Start<BestVpnServerConnector.<ToggleConnect>d__4>(ref <ToggleConnect>d__);
			return <ToggleConnect>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(BestVpnServerConnector.<TryConnectToBestCategoryServer>d__5<>))]
		public Task TryConnectToBestCategoryServer<TCategory>() where TCategory : Category
		{
			BestVpnServerConnector.<TryConnectToBestCategoryServer>d__5<TCategory> <TryConnectToBestCategoryServer>d__;
			<TryConnectToBestCategoryServer>d__.<>4__this = this;
			<TryConnectToBestCategoryServer>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<TryConnectToBestCategoryServer>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <TryConnectToBestCategoryServer>d__.<>t__builder;
			<>t__builder.Start<BestVpnServerConnector.<TryConnectToBestCategoryServer>d__5<TCategory>>(ref <TryConnectToBestCategoryServer>d__);
			return <TryConnectToBestCategoryServer>d__.<>t__builder.Task;
		}
	}
}
