using System;
using System.Net.NetworkInformation;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Forms;

namespace ibVPN.NetMon
{
	internal class NetworkStatusMonitor
	{
		public enum StatusMonitorEventType
		{
			Connected,
			Disconnected,
			Changed
		}

		public class StatusMonitorEventArgs : EventArgs
		{
			public NetworkInterface Interface
			{
				get;
				set;
			}

			public OperationalStatus LastOperationalStatus
			{
				get;
				set;
			}

			public NetworkStatusMonitor.StatusMonitorEventType EventType
			{
				get;
				set;
			}
		}

		private Thread _monitorThread;

		private int _waitInterval = 100;

		private bool _run = true;

		private bool _isStarted;

		private NetworkStatus _last;

		private bool _monitorNewConnections = true;

		private bool _monitorDisconnections = true;

		private bool _monitorAnyStatusChange;

		private object _pulse = new object();

		private int _exceptionCount;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<NetworkStatusMonitor.StatusMonitorEventArgs> NetworkInterfaceConnected;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<NetworkStatusMonitor.StatusMonitorEventArgs> NetworkInterfaceDisconnected;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<NetworkStatusMonitor.StatusMonitorEventArgs> NetworkInterfaceChanged;

		public Form Parent
		{
			get;
			set;
		}

		public int PollInterval
		{
			get
			{
				return this._waitInterval;
			}
			set
			{
				this._waitInterval = value;
			}
		}

		public bool IsStarted
		{
			get
			{
				return this._isStarted;
			}
		}

		public bool MonitorNewConnections
		{
			get
			{
				return this._monitorNewConnections;
			}
			set
			{
				this._monitorNewConnections = value;
			}
		}

		public bool MonitorDisconnections
		{
			get
			{
				return this._monitorDisconnections;
			}
			set
			{
				this._monitorDisconnections = value;
			}
		}

		public bool MonitorAnyChanges
		{
			get
			{
				return this._monitorAnyStatusChange;
			}
			set
			{
				this._monitorAnyStatusChange = value;
			}
		}

		public int ExceptionCount
		{
			get
			{
				return this._exceptionCount;
			}
		}

		public NetworkStatusMonitor(int pollInterval)
		{
			this._monitorThread = new Thread(new ThreadStart(this.MonitorTask));
			try
			{
				this._monitorThread.Name = "NetMon";
			}
			catch
			{
			}
			this._waitInterval = pollInterval;
		}

		public void StartMonitoring()
		{
			if (!this._isStarted)
			{
				this._run = true;
				this._monitorThread.Start();
				this._isStarted = true;
			}
		}

		public void StopMonitoring()
		{
			if (this._isStarted)
			{
				this._run = false;
				this._monitorThread.Join();
				this._monitorThread = new Thread(new ThreadStart(this.MonitorTask));
				this._isStarted = false;
			}
		}

		public void WaitForPoll()
		{
			if (this._monitorThread == Thread.CurrentThread)
			{
				return;
			}
			if (this._run && this._isStarted)
			{
				object pulse = this._pulse;
				lock (pulse)
				{
					Monitor.Wait(this._pulse);
				}
			}
		}

		private void MonitorTask()
		{
			while (this._run)
			{
				try
				{
					if (this._last == null)
					{
						this._last = new NetworkStatus();
						Thread.Sleep(this._waitInterval);
					}
					else
					{
						NetworkStatus networkStatus = new NetworkStatus();
						if (this.NetworkInterfaceConnected != null && this._monitorNewConnections)
						{
							foreach (NetworkInterface current in networkStatus.Connected(this._last))
							{
								OperationalStatus lastOperationalStatus = OperationalStatus.NotPresent;
								if (this._last.Contains(current.Id))
								{
									lastOperationalStatus = this._last[current.Id].OperationalStatus;
								}
								this.NetworkInterfaceConnected(this, new NetworkStatusMonitor.StatusMonitorEventArgs
								{
									EventType = NetworkStatusMonitor.StatusMonitorEventType.Connected,
									Interface = current,
									LastOperationalStatus = lastOperationalStatus
								});
							}
						}
						if (this.NetworkInterfaceDisconnected != null && this._monitorDisconnections)
						{
							foreach (NetworkInterface current2 in networkStatus.Disconnected(this._last))
							{
								this.NetworkInterfaceDisconnected(this, new NetworkStatusMonitor.StatusMonitorEventArgs
								{
									EventType = NetworkStatusMonitor.StatusMonitorEventType.Disconnected,
									Interface = current2,
									LastOperationalStatus = OperationalStatus.Up
								});
							}
						}
						if (this.NetworkInterfaceChanged != null && this._monitorAnyStatusChange)
						{
							foreach (NetworkInterface current3 in networkStatus.Changed(this._last))
							{
								OperationalStatus lastOperationalStatus2 = OperationalStatus.NotPresent;
								if (this._last.Contains(current3.Id))
								{
									lastOperationalStatus2 = this._last[current3.Id].OperationalStatus;
								}
								this.NetworkInterfaceChanged(this, new NetworkStatusMonitor.StatusMonitorEventArgs
								{
									EventType = NetworkStatusMonitor.StatusMonitorEventType.Changed,
									Interface = current3,
									LastOperationalStatus = lastOperationalStatus2
								});
							}
						}
						this._last = networkStatus;
						if (this._run)
						{
							Thread.Sleep(this._waitInterval);
						}
						object pulse = this._pulse;
						lock (pulse)
						{
							Monitor.PulseAll(this._pulse);
						}
					}
				}
				catch (Exception arg_218_0)
				{
					Console.WriteLine(arg_218_0.ToString());
					Interlocked.Increment(ref this._exceptionCount);
				}
			}
		}
	}
}
