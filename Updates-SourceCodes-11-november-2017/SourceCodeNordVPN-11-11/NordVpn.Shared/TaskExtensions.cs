using System;
using System.Threading.Tasks;

namespace NordVpn.Shared
{
	internal static class TaskExtensions
	{
		public static Task CompletedTask
		{
			get
			{
				return Task.FromResult<bool>(true);
			}
		}

		public static Task<Task> Wrap(this Task task)
		{
			return Task.FromResult<Task>(task);
		}

		public static Task<T> AsTask<T>(this T value)
		{
			return Task.FromResult<T>(value);
		}
	}
}
