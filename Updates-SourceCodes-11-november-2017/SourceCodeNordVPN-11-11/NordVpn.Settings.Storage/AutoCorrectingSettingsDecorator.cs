using Liberation.OS;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Infrastructure.Settings;
using System;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Linq.Expressions;
using System.Windows;

namespace NordVpn.Settings.Storage
{
	public class AutoCorrectingSettingsDecorator : IPersistedSettings, ISettings
	{
		private readonly ApplicationSettingsStorage _decorated;

		public AutoCorrectingSettingsDecorator(ApplicationSettingsStorage settings)
		{
			this._decorated = settings;
		}

		public void Load()
		{
			try
			{
				this._decorated.Load();
			}
			catch (ConfigurationException arg_0D_0)
			{
				ConfigurationErrorsException ex;
				if ((ex = (arg_0D_0.InnerException as ConfigurationErrorsException)) == null || string.IsNullOrEmpty(ex.Filename))
				{
					throw;
				}
				File.Delete(ex.Filename);
				SingleInstanceHelper.ReleaseSingleInstanceLock();
				Process.Start(Application.ResourceAssembly.Location);
				Environment.Exit(0);
			}
		}

		public ISettings Observe<T, TProperty>(Expression<Func<T, TProperty>> propertySelector, Action<TProperty> propertyChangeAction)
		{
			return this._decorated.Observe<T, TProperty>(propertySelector, propertyChangeAction);
		}

		public void Save()
		{
			this._decorated.Save();
		}

		public T Of<T>() where T : new()
		{
			return this._decorated.Of<T>();
		}
	}
}
