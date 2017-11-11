using System;
using System.ComponentModel;
using System.Threading;

namespace ibVPN.Helpers
{
	public class AbortableBackgroundWorker : BackgroundWorker
	{
		private Thread workerThread;

		protected override void OnDoWork(DoWorkEventArgs e)
		{
			this.workerThread = Thread.CurrentThread;
			try
			{
				base.OnDoWork(e);
			}
			catch (ThreadAbortException)
			{
				e.Cancel = true;
				Thread.ResetAbort();
			}
		}

		public void Abort()
		{
			if (this.workerThread != null)
			{
				this.workerThread.Abort();
				this.workerThread = null;
			}
		}
	}
}
