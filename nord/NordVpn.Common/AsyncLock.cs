using System;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;

namespace NordVpn.Common
{
	public class AsyncLock
	{
		private class Releaser : IDisposable
		{
			private readonly SemaphoreSlim _mutex;

			public Releaser(SemaphoreSlim mutex)
			{
				this._mutex = mutex;
			}

			public void Dispose()
			{
				this._mutex.Release();
			}
		}

		private readonly SemaphoreSlim _mutex = new SemaphoreSlim(1, 1);

		[AsyncStateMachine(typeof(AsyncLock.<LockAsync>d__1))]
		public Task<IDisposable> LockAsync()
		{
			AsyncLock.<LockAsync>d__1 <LockAsync>d__;
			<LockAsync>d__.<>4__this = this;
			<LockAsync>d__.<>t__builder = AsyncTaskMethodBuilder<IDisposable>.Create();
			<LockAsync>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<IDisposable> <>t__builder = <LockAsync>d__.<>t__builder;
			<>t__builder.Start<AsyncLock.<LockAsync>d__1>(ref <LockAsync>d__);
			return <LockAsync>d__.<>t__builder.Task;
		}
	}
}
