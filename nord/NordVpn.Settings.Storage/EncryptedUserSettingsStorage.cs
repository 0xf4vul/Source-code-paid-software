using Liberation.OS.Crypto;
using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Log;
using NordVpn.Shared;
using System;
using System.Security.Cryptography;

namespace NordVpn.Settings.Storage
{
	public class EncryptedUserSettingsStorage
	{
		private readonly ILogger _logger;

		private readonly ISettingsStorage _storage;

		public EncryptedUserSettingsStorage(ILogger logger, ISettingsStorage storage)
		{
			this._logger = logger;
			this._storage = storage;
		}

		public void Save(string username, string password)
		{
			this._storage.Set<string>("Username", MachineProtectedData.Encrypt(username));
			this._storage.Set<string>("Password", MachineProtectedData.Encrypt(password));
		}

		public bool TryGet(out string username, out string password)
		{
			username = this._storage.Get<string>("Username");
			password = this._storage.Get<string>("Password");
			if (!username.NullOrEmpty() && !password.NullOrEmpty())
			{
				bool result;
				try
				{
					username = MachineProtectedData.Decrypt(username);
					password = MachineProtectedData.Decrypt(password);
					goto IL_5E;
				}
				catch (CryptographicException ex)
				{
					this._logger.Error(ex);
					result = false;
				}
				return result;
				IL_5E:
				return !username.NullOrEmpty() && !password.NullOrEmpty();
			}
			return false;
		}

		public void Clear()
		{
			this._storage.Set<string>("Username", "");
			this._storage.Set<string>("Password", "");
		}
	}
}
