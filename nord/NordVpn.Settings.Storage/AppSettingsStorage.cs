using NordVpn.Core.Abstract;
using System;
using System.Timers;
using WindowsApp.Properties;

namespace NordVpn.Settings.Storage
{
	internal class AppSettingsStorage : ISettingsStorage
	{
		private readonly Timer _timer;

		private readonly object _locker = new object();

		private bool _dirty;

		public AppSettingsStorage()
		{
			this._timer = new Timer(60000.0);
			this._timer.AutoReset = true;
			this._timer.Elapsed += new ElapsedEventHandler(this.OnElapsed);
		}

		public void InitializePeriodicUpdates()
		{
			if (!this._timer.Enabled)
			{
				this._timer.Start();
			}
		}

		public T Get<T>(string key)
		{
			return (T)((object)Settings.Default[key]);
		}

		public void Set<T>(string key, T value)
		{
			object locker = this._locker;
			lock (locker)
			{
				Settings.Default[key] = value;
				this._dirty = true;
			}
		}

		public void Save()
		{
			object locker = this._locker;
			lock (locker)
			{
				if (this._dirty)
				{
					Settings.Default.Save();
					this._dirty = false;
				}
			}
		}

		private void OnElapsed(object sender, ElapsedEventArgs args)
		{
			this.Save();
		}
	}
}
