using CyberGhost.RESTCommunicator.Classes;
using System;
using System.Collections.Generic;

namespace CyberGhost.Pages.Profiles
{
	public class ServerGroup
	{
		public List<CgApiServer> Servers = new List<CgApiServer>();

		public string Name
		{
			get;
			set;
		}

		public string CountryCode
		{
			get;
			set;
		}
	}
}
