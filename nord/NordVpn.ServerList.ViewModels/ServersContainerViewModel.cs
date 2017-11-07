using Caliburn.Micro;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.ServerList.ViewModels
{
	public class ServersContainerViewModel : Conductor<Screen>.Collection.AllActive
	{
		public ServersConductorViewModel Servers
		{
			[CompilerGenerated]
			get
			{
				return this.<Servers>k__BackingField;
			}
		}

		public ServerSidePanelViewModel ServerSidePanel
		{
			[CompilerGenerated]
			get
			{
				return this.<ServerSidePanel>k__BackingField;
			}
		}

		public ServersContainerViewModel(ServersConductorViewModel servers, ServerSidePanelViewModel serversSidePanel)
		{
			this.<Servers>k__BackingField = servers;
			this.<ServerSidePanel>k__BackingField = serversSidePanel;
			base.get_Items().Add(servers);
			base.get_Items().Add(serversSidePanel);
		}
	}
}
