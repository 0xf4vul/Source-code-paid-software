using NordVpn.Core.Models;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Search.ViewModels
{
	public class ServerSearchResultViewModel : SearchResultViewModel
	{
		public bool IsOverloaded
		{
			get
			{
				return this.Server.get_IsOverloaded();
			}
		}

		public GeographicalServer Server
		{
			[CompilerGenerated]
			get
			{
				return this.<Server>k__BackingField;
			}
		}

		public ServerSearchResultViewModel(GeographicalServer server) : base(server.get_Name())
		{
			this.<Server>k__BackingField = server;
		}

		public override Task Accept(SearchResultVpnConnectionVisitor visitor)
		{
			return visitor.Visit(this);
		}
	}
}
