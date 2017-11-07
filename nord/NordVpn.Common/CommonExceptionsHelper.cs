using Newtonsoft.Json;
using System;
using System.Net.Http;
using System.Net.Sockets;

namespace NordVpn.Common
{
	public static class CommonExceptionsHelper
	{
		public static bool IsApiCommunicationException(this Exception ex)
		{
			return ex is HttpRequestException || ex is JsonException || ex is OperationCanceledException || ex is SocketException;
		}
	}
}
