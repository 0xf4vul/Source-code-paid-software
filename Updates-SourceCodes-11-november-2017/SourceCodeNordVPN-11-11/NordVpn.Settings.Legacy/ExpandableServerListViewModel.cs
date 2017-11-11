using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models.Geographical;
using NordVpn.Core.Models.Settings;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public abstract class ExpandableServerListViewModel : AppScreen
	{
		private readonly List<string> _expandedFlag;

		private readonly ISettings _settings;

		public BindableCollection<ServerListItem> Items
		{
			[CompilerGenerated]
			get
			{
				return this.<Items>k__BackingField;
			}
		}

		public string DistanceUnits
		{
			get
			{
				return DistanceUnitsExtensions.ToShortRepresentation(this._settings.Of<UserSettings>().get_DistanceUnits());
			}
		}

		protected ExpandableServerListViewModel(ISettings settings)
		{
			this.<Items>k__BackingField = new BindableCollection<ServerListItem>();
			base..ctor();
			this._settings = settings;
			this._settings.Observe<UserSettings, DistanceUnits>((UserSettings p) => p.DistanceUnits, delegate(DistanceUnits d)
			{
				this.NotifyOfPropertyChange("DistanceUnits");
			});
			this._expandedFlag = new List<string>();
		}

		public void Toggle(ServerListItem item)
		{
			if (item == null)
			{
				return;
			}
			if (this._expandedFlag.IndexOf(item.Name) == -1)
			{
				this.Expand(item);
				return;
			}
			this.Collapse(item);
		}

		protected void Expand(ServerListItem item)
		{
			if (this._expandedFlag.IndexOf(item.Name) > -1)
			{
				return;
			}
			int index = this.Items.IndexOf(item) + 1;
			this._expandedFlag.Add(item.Name);
			item.Expanded = true;
			foreach (ServerListItem current in item.Servers)
			{
				this.Items.Insert(index, current);
			}
		}

		protected void Collapse(ServerListItem item)
		{
			if (this._expandedFlag.IndexOf(item.Name) == -1)
			{
				return;
			}
			int index = this.Items.IndexOf(item) + 1;
			for (int i = 0; i < item.Servers.Count; i++)
			{
				try
				{
					this.Items.RemoveAt(index);
				}
				catch (ArgumentOutOfRangeException)
				{
				}
			}
			this._expandedFlag.Remove(item.Name);
			item.Expanded = false;
		}
	}
}
