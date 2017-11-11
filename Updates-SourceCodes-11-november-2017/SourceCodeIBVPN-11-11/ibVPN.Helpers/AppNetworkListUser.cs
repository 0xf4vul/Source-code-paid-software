using NETWORKLIST;
using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.InteropServices.ComTypes;

namespace ibVPN.Helpers
{
	public class AppNetworkListUser : INetworkListManagerEvents
	{
		private int m_cookie;

		private IConnectionPoint m_icp;

		private INetworkListManager m_nlm;

		public string connectivity;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public string Connectivity
		{
			get
			{
				return this.connectivity;
			}
			set
			{
				this.connectivity = value;
				this.OnPropertyChanged("Connectivity");
			}
		}

		public INetworkListManager NLM
		{
			get
			{
				return this.m_nlm;
			}
		}

		public void OnPropertyChanged(string propertyName)
		{
			if (this.PropertyChanged != null)
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}

		public AppNetworkListUser()
		{
			this.m_nlm = (NetworkListManager)Activator.CreateInstance(Marshal.GetTypeFromCLSID(new Guid("DCB00C01-570F-4A9B-8D69-199FDBA5723B")));
		}

		public void ConnectivityChanged(NLM_CONNECTIVITY newConnectivity)
		{
			this.Connectivity = DateTime.Now.ToLongTimeString();
			if ((newConnectivity & NLM_CONNECTIVITY.NLM_CONNECTIVITY_IPV4_INTERNET) != NLM_CONNECTIVITY.NLM_CONNECTIVITY_DISCONNECTED)
			{
			}
		}

		public void AdviseforNetworklistManager()
		{
			IConnectionPointContainer arg_23_0 = (IConnectionPointContainer)this.m_nlm;
			Guid gUID = typeof(INetworkListManagerEvents).GUID;
			arg_23_0.FindConnectionPoint(ref gUID, out this.m_icp);
			this.m_icp.Advise(this, out this.m_cookie);
		}

		public void UnAdviseforNetworklistManager()
		{
			this.m_icp.Unadvise(this.m_cookie);
		}
	}
}
