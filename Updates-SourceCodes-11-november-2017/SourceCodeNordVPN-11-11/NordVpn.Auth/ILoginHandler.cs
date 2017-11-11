using NordVpn.Core.Logic.Users;
using System;
using System.Threading.Tasks;

namespace NordVpn.Auth
{
	public interface ILoginHandler
	{
		UserContext UserContext
		{
			get;
		}

		Task<AuthorizationResult> TryAuthorize(string username, string password);

		Task<AuthorizationResult> TryAuthorizeFromStorage();

		void Logout();
	}
}
