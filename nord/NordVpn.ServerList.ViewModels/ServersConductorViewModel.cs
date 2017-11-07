using Caliburn.Micro;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using NordVpn.ServerList.Messages;
using System;

namespace NordVpn.ServerList.ViewModels
{
	public class ServersConductorViewModel : Conductor<Screen>.Collection.OneActive, IHandle<NavigateToServersGroupViewMessage<Country>>, IHandle<NavigateToServersGroupViewMessage<Category>>, IHandle<ServerlistRequestMessage>, IHandle
	{
		public ServersConductorViewModel(ServersViewModel serversViewModel, DetailedServersViewModel detailedServersViewModel)
		{
			base.get_Items().Add(serversViewModel);
			base.get_Items().Add(detailedServersViewModel);
		}

		public void Handle(ServerlistRequestMessage message)
		{
			this.ActivateItem(base.get_Items()[0]);
		}

		public void Handle(NavigateToServersGroupViewMessage<Country> message)
		{
			this.ActivateItem(base.get_Items()[1]);
		}

		public void Handle(NavigateToServersGroupViewMessage<Category> message)
		{
			this.ActivateItem(base.get_Items()[1]);
		}
	}
}
