using System;
using System.Collections.ObjectModel;

namespace CyberGhost.Pages.Profiles
{
	public class ServerHeadGroup
	{
		public string Name
		{
			get;
			set;
		}

		public string Flag
		{
			get;
			set;
		}

		public int FreeServer
		{
			get;
			set;
		}

		public int PremiumServer
		{
			get;
			set;
		}

		public int PremiumUser
		{
			get;
			set;
		}

		public int OnlineUser
		{
			get;
			set;
		}

		public bool RealServer
		{
			get;
			set;
		}

		public ObservableCollection<ServerItem> Members
		{
			get;
			set;
		}

		public ObservableCollection<ServerHead> Headers
		{
			get;
			set;
		}

		public bool IsCountry
		{
			get;
			set;
		}

		public ServerHeadGroup()
		{
			this.Members = new ObservableCollection<ServerItem>();
			this.Headers = new ObservableCollection<ServerHead>();
		}
	}
}
