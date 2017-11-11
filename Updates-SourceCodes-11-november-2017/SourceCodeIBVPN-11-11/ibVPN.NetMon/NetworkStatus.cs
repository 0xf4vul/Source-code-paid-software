using System;
using System.Collections;
using System.Collections.Generic;
using System.Net.NetworkInformation;
using System.Runtime.CompilerServices;

namespace ibVPN.NetMon
{
	internal class NetworkStatus : IEnumerable<NetworkInterface>, IEnumerable
	{
		public class NiStatusRecord
		{
			public NetworkInterface Interface
			{
				get;
				set;
			}

			public OperationalStatus OperationalStatus
			{
				get;
				set;
			}

			public NetworkInterfaceType Type
			{
				get;
				set;
			}

			public long Speed
			{
				get;
				set;
			}

			public NiStatusRecord(NetworkInterface ni)
			{
				this.Interface = ni;
				this.OperationalStatus = ni.OperationalStatus;
				this.Type = ni.NetworkInterfaceType;
				this.Speed = ni.Speed;
			}
		}

		private Dictionary<string, NetworkStatus.NiStatusRecord> _status = new Dictionary<string, NetworkStatus.NiStatusRecord>();

		public NetworkInterface this[string id]
		{
			get
			{
				return this._status[id].Interface;
			}
			set
			{
				this._status[id].Interface = value;
			}
		}

		public NetworkStatus()
		{
			NetworkInterface[] allNetworkInterfaces = NetworkInterface.GetAllNetworkInterfaces();
			for (int i = 0; i < allNetworkInterfaces.Length; i++)
			{
				NetworkInterface networkInterface = allNetworkInterfaces[i];
				this._status.Add(networkInterface.Id, new NetworkStatus.NiStatusRecord(networkInterface));
			}
		}

		public bool Contains(string id)
		{
			return this._status.ContainsKey(id);
		}

		[IteratorStateMachine(typeof(NetworkStatus.<Slower>d__7))]
		public IEnumerable<NetworkInterface> Slower(NetworkStatus lastStatus)
		{
			NetworkStatus.<Slower>d__7 expr_07 = new NetworkStatus.<Slower>d__7(-2);
			expr_07.<>4__this = this;
			expr_07.<>3__lastStatus = lastStatus;
			return expr_07;
		}

		[IteratorStateMachine(typeof(NetworkStatus.<Faster>d__8))]
		public IEnumerable<NetworkInterface> Faster(NetworkStatus lastStatus)
		{
			NetworkStatus.<Faster>d__8 expr_07 = new NetworkStatus.<Faster>d__8(-2);
			expr_07.<>4__this = this;
			expr_07.<>3__lastStatus = lastStatus;
			return expr_07;
		}

		[IteratorStateMachine(typeof(NetworkStatus.<Changed>d__9))]
		public IEnumerable<NetworkInterface> Changed(NetworkStatus lastStatus)
		{
			NetworkStatus.<Changed>d__9 expr_07 = new NetworkStatus.<Changed>d__9(-2);
			expr_07.<>4__this = this;
			expr_07.<>3__lastStatus = lastStatus;
			return expr_07;
		}

		[IteratorStateMachine(typeof(NetworkStatus.<Connected>d__10))]
		public IEnumerable<NetworkInterface> Connected(NetworkStatus lastStatus)
		{
			NetworkStatus.<Connected>d__10 expr_07 = new NetworkStatus.<Connected>d__10(-2);
			expr_07.<>4__this = this;
			expr_07.<>3__lastStatus = lastStatus;
			return expr_07;
		}

		[IteratorStateMachine(typeof(NetworkStatus.<Disconnected>d__11))]
		public IEnumerable<NetworkInterface> Disconnected(NetworkStatus lastStatus)
		{
			NetworkStatus.<Disconnected>d__11 expr_07 = new NetworkStatus.<Disconnected>d__11(-2);
			expr_07.<>4__this = this;
			expr_07.<>3__lastStatus = lastStatus;
			return expr_07;
		}

		[IteratorStateMachine(typeof(NetworkStatus.<GetEnumerator>d__12))]
		public IEnumerator<NetworkInterface> GetEnumerator()
		{
			NetworkStatus.<GetEnumerator>d__12 expr_06 = new NetworkStatus.<GetEnumerator>d__12(0);
			expr_06.<>4__this = this;
			return expr_06;
		}

		[IteratorStateMachine(typeof(NetworkStatus.<System-Collections-IEnumerable-GetEnumerator>d__13))]
		IEnumerator IEnumerable.GetEnumerator()
		{
			NetworkStatus.<System-Collections-IEnumerable-GetEnumerator>d__13 expr_06 = new NetworkStatus.<System-Collections-IEnumerable-GetEnumerator>d__13(0);
			expr_06.<>4__this = this;
			return expr_06;
		}
	}
}
