using NordVpn.Settings.Storage.TypeConverters;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace NordVpn.Settings.Storage
{
	[TypeConverter(typeof(KillSwitchSettingsTypeConverter))]
	public class KillSwitchSettings
	{
		public IReadOnlyCollection<KillSwitchApp> Items
		{
			get;
			set;
		}

		public KillSwitchSettings()
		{
			this.Items = new List<KillSwitchApp>();
		}

		public KillSwitchSettings(IEnumerable<KillSwitchApp> items)
		{
			this.Items = items.ToList<KillSwitchApp>();
		}
	}
}
