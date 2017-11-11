using Liberation.OS.Crypto;
using NordVpn.Core.Abstract.Log;
using NordVpn.Core.Abstract.Log.Logging;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models.Settings;
using NordVpn.Shared;
using System;
using System.Security.Cryptography;

namespace NordVpn.Settings.Storage
{
	public class EncryptedCredentialsStore
	{
		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		private readonly IPersistedSettings _settings;

		public EncryptedCredentialsStore(IPersistedSettings settings)
		{
			this._settings = settings;
		}

		public void Save(string username, string password)
		{
			this.Store(MachineProtectedData.Encrypt(username), MachineProtectedData.Encrypt(password));
		}

		public void Reset()
		{
			this.Store("", "");
		}

		public bool TryDecrypt(out string username, out string password)
		{
			RunSettings runSettings = this._settings.Of<RunSettings>();
			username = runSettings.get_Username();
			password = runSettings.get_Password();
			if (!username.IsNullOrEmpty() && !password.IsNullOrEmpty())
			{
				bool result;
				try
				{
					username = MachineProtectedData.Decrypt(username);
					password = MachineProtectedData.Decrypt(password);
					goto IL_56;
				}
				catch (CryptographicException ex)
				{
					LogExtensions.Error(this._log, ex);
					result = false;
				}
				return result;
				IL_56:
				return !username.IsNullOrEmpty() && !password.IsNullOrEmpty();
			}
			return false;
		}

		private void Store(string username, string password)
		{
			PersistedSettingsExtension.Save<RunSettings>(this._settings, delegate(RunSettings s)
			{
				s.set_Username(username);
				s.set_Password(password);
			});
		}
	}
}
