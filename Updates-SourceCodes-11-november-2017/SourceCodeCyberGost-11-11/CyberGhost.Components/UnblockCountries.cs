using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace CyberGhost.Components
{
	public class UnblockCountries : INotifyPropertyChanged
	{
		private string _url;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public Uri CountryImage
		{
			get;
			set;
		}

		public string CountryName
		{
			get;
			set;
		}

		public string ToolTip
		{
			get;
			set;
		}

		public string UName
		{
			get;
			set;
		}

		public string UNameShort
		{
			get;
			set;
		}

		public bool Premium
		{
			get;
			set;
		}

		public string IconUrl
		{
			get;
			set;
		}

		public string Description
		{
			get;
			set;
		}

		public bool DefaultForGroup
		{
			get;
			set;
		}

		public string CountryCode
		{
			get;
			set;
		}

		public string Url
		{
			get
			{
				return this._url;
			}
			set
			{
				if (value != this._url)
				{
					this._url = value;
					this.NotifyPropertyChanged("Url");
				}
			}
		}

		protected virtual void NotifyPropertyChanged([CallerMemberName] string propertyName = null)
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
