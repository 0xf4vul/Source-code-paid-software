using Caliburn.Micro;
using NordVpn.Common.Helpers;
using System;
using System.Collections.ObjectModel;
using System.Runtime.CompilerServices;

namespace NordVpn.Settings.Legacy
{
	[Obsolete("Class will be removed when autoconnect will be redisigned")]
	public abstract class ServerListItem : PropertyChangedBase
	{
		private bool _expanded;

		public bool Expanded
		{
			get
			{
				return this._expanded;
			}
			set
			{
				this.Set(ref this._expanded, value, "Expanded");
			}
		}

		public virtual string Name
		{
			[CompilerGenerated]
			get
			{
				return this.<Name>k__BackingField;
			}
		}

		public virtual string Image
		{
			[CompilerGenerated]
			get
			{
				return this.<Image>k__BackingField;
			}
		}

		public ObservableCollection<ServerListItem> Servers
		{
			[CompilerGenerated]
			get
			{
				return this.<Servers>k__BackingField;
			}
		}

		protected ServerListItem()
		{
			this.<Servers>k__BackingField = new ObservableCollection<ServerListItem>();
			base..ctor();
		}
	}
}
