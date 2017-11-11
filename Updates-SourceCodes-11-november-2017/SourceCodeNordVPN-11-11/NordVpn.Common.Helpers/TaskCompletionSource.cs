using System;
using System.Threading.Tasks;

namespace NordVpn.Common.Helpers
{
	public class TaskCompletionSource : TaskCompletionSource<Void>
	{
		public void TrySetResult()
		{
			base.TrySetResult(default(Void));
		}

		public void SetResult()
		{
			base.SetResult(default(Void));
		}
	}
}
