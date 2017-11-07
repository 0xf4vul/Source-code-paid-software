using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;

namespace NordVpn.Common.Helpers
{
	public class SupressableObservableCollection<T> : ObservableCollection<T>
	{
		private bool _notificationSupressed;

		private bool _supressNotification;

		public bool SupressNotification
		{
			get
			{
				return this._supressNotification;
			}
			set
			{
				this._supressNotification = value;
				if (!this._supressNotification && this._notificationSupressed)
				{
					this.OnCollectionChanged(new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Reset));
					this._notificationSupressed = false;
					return;
				}
			}
		}

		protected override void OnCollectionChanged(NotifyCollectionChangedEventArgs e)
		{
			if (this.SupressNotification)
			{
				this._notificationSupressed = true;
				return;
			}
			base.OnCollectionChanged(e);
		}
	}
}
