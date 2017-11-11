using CyberGhost.Helpers;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace CyberGhost.Components
{
	public class ServerTreeItem : INotifyPropertyChanged
	{
		private bool _isFav;

		private bool _isSelected;

		private long _pingTime;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public string Name
		{
			get;
			set;
		}

		public string Flag
		{
			get;
			set;
		}

		public string Ip
		{
			get;
			set;
		}

		public double UserRatio
		{
			get;
			set;
		}

		public string Slotsfree
		{
			get;
			set;
		}

		public string TorrentAllowed
		{
			get;
			set;
		}

		public long PingTime
		{
			get
			{
				return this._pingTime;
			}
			set
			{
				if (value != this._pingTime)
				{
					this._pingTime = value;
					this.NotifyPropertyChanged("PingTime");
				}
			}
		}

		public DateTime LastPing
		{
			get;
			set;
		}

		public bool IsBold
		{
			get;
			set;
		}

		public bool IsFull
		{
			get;
			set;
		}

		public bool IsFree
		{
			get;
			set;
		}

		public bool IsDotVisible
		{
			get;
			set;
		}

		public string Bar
		{
			get;
			set;
		}

		public bool RealServer
		{
			get;
			set;
		}

		public bool IsSelected
		{
			get
			{
				return this._isSelected;
			}
			set
			{
				if (value != this._isSelected)
				{
					this._isSelected = value;
					this.NotifyPropertyChanged("IsSelected");
				}
			}
		}

		public bool IsExpanded
		{
			get;
			set;
		}

		public string IsFreeString
		{
			get;
			set;
		}

		public bool ServerSelectable
		{
			get;
			set;
		}

		public bool IsSpecial
		{
			get;
			set;
		}

		public string CountryCode
		{
			get;
			set;
		}

		public ObservableCollection<ServerTreeItem> ServerTreeItems
		{
			get;
			set;
		}

		public bool IsCountry
		{
			get;
			set;
		}

		public int ServerId
		{
			get;
			set;
		}

		public int Id
		{
			get;
			set;
		}

		public int ParentId
		{
			get;
			set;
		}

		public string CountryName
		{
			get;
			set;
		}

		public bool UnblockItem
		{
			get;
			set;
		}

		public bool IsFav
		{
			get
			{
				return this._isFav;
			}
			set
			{
				if (value != this._isFav)
				{
					this._isFav = value;
					this.NotifyPropertyChanged("IsFav");
					this.NotifyPropertyChanged("FavImage");
				}
			}
		}

		public ServerTreeItem()
		{
			this.ServerTreeItems = new ObservableCollection<ServerTreeItem>();
			this.PingTime = -2L;
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.Flag = Theming.GetThemedImage("Icons\\Flags\\24\\Blank.png");
		}

		public virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChangedEventHandler expr_06 = this.PropertyChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
