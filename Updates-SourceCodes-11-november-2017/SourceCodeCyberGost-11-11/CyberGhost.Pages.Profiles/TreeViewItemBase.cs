using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace CyberGhost.Pages.Profiles
{
	public class TreeViewItemBase : INotifyPropertyChanged
	{
		private bool _isExpanded;

		private bool _isSelected;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

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
			get
			{
				return this._isExpanded;
			}
			set
			{
				if (value != this._isExpanded)
				{
					this._isExpanded = value;
					this.NotifyPropertyChanged("IsExpanded");
				}
			}
		}

		public void NotifyPropertyChanged(string propName)
		{
			PropertyChangedEventHandler expr_06 = this.PropertyChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new PropertyChangedEventArgs(propName));
		}
	}
}
