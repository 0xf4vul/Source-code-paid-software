using GalaSoft.MvvmLight.Command;
using NordVpn.Application;
using NordVpn.Common.Helpers;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models.Geographical;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public abstract class ExpandableServerListViewModel : AppScreen
	{
		private readonly List<string> _expandedFlag;

		private readonly UserPreferences _userPreferences;

		public SupressableObservableCollection<ServerListItem> Items
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
				return DistanceUnitsExtensions.ToShortRepresentation(this._userPreferences.get_DistanceUnits());
			}
		}

		public ICommand ToggleCommand
		{
			[CompilerGenerated]
			get
			{
				return this.<ToggleCommand>k__BackingField;
			}
		}

		protected ExpandableServerListViewModel(UserPreferences userPreferences)
		{
			this.<Items>k__BackingField = new SupressableObservableCollection<ServerListItem>();
			base..ctor();
			this._userPreferences = userPreferences;
			this._userPreferences.add_DistanceUnitsChanged(new EventHandler<DistanceUnitsChangedEventArgs>(this.OnDistanceUnitsChanged));
			this._expandedFlag = new List<string>();
			this.<ToggleCommand>k__BackingField = new RelayCommand<ServerListItem>(new Action<ServerListItem>(this.Toggle));
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

		private void Toggle(ServerListItem item)
		{
			if (this._expandedFlag.IndexOf(item.Name) == -1)
			{
				this.Expand(item);
				return;
			}
			this.Collapse(item);
		}

		private void OnDistanceUnitsChanged(object sender, DistanceUnitsChangedEventArgs e)
		{
			this.NotifyOfPropertyChange("DistanceUnits");
		}
	}
}
