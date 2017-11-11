using NordVpn.Shared;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Auth
{
	public class AuthorizationResult
	{
		public bool IsAuthorized
		{
			[CompilerGenerated]
			get
			{
				return this.<IsAuthorized>k__BackingField;
			}
		}

		public bool IsBlocked
		{
			[CompilerGenerated]
			get
			{
				return this.<IsBlocked>k__BackingField;
			}
		}

		public bool IsCredentialsMissing
		{
			[CompilerGenerated]
			get
			{
				return this.<IsCredentialsMissing>k__BackingField;
			}
		}

		public string Message
		{
			[CompilerGenerated]
			get
			{
				return this.<Message>k__BackingField;
			}
		}

		public static AuthorizationResult Succeeded()
		{
			return new AuthorizationResult(false, true, false, "");
		}

		public static AuthorizationResult Blocked(string message)
		{
			return new AuthorizationResult(true, false, false, message);
		}

		public static AuthorizationResult Failed(string message)
		{
			return new AuthorizationResult(false, false, false, message);
		}

		public static AuthorizationResult CredentialsMissing()
		{
			return new AuthorizationResult(false, false, true, "");
		}

		private AuthorizationResult(bool isBlocked, bool isAuthorized, bool isCredentialsMissing, string message)
		{
			Guard.IsFalse(isBlocked & isAuthorized, "Authorization result can't be blocked & authorized");
			this.<IsBlocked>k__BackingField = isBlocked;
			this.<IsAuthorized>k__BackingField = isAuthorized;
			this.<IsCredentialsMissing>k__BackingField = isCredentialsMissing;
			this.<Message>k__BackingField = (message ?? "");
		}

		public bool FailedToLogin()
		{
			return (!this.IsAuthorized && !this.IsBlocked) || this.IsCredentialsMissing;
		}
	}
}
