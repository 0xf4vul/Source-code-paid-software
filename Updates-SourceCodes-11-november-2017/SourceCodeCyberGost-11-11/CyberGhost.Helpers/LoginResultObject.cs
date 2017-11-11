using CyberGhost.RESTCommunicator.Classes;
using System;
using System.Net;

namespace CyberGhost.Helpers
{
	public class LoginResultObject
	{
		public CgApiUser.CgApiOauthCredentials LoginCredentials;

		public HttpStatusCode LoginStatusCode;

		public CgApiUser User;
	}
}
