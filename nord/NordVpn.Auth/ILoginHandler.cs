using System;
using System.Threading.Tasks;

namespace NordVpn.Auth
{
	public interface ILoginHandler
	{
		Task<AuthorizationResult> TryAuthorizeAsNewUser(string username, string password);

		Task<AuthorizationResult> TryAuthorize(string username, string password);

		Task<AuthorizationResult> TryAuthorizeFromStorage();

		void Logout();
	}
}
