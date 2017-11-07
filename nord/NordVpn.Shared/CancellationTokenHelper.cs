using System;
using System.Threading;

namespace NordVpn.Shared
{
	internal static class CancellationTokenHelper
	{
		public static CancellationToken NewToken(int timeoutInSeconds)
		{
			return new CancellationTokenSource(TimeSpan.FromSeconds((double)timeoutInSeconds)).Token;
		}
	}
}
