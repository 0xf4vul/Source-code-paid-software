using System;
using System.Collections.Generic;

namespace CyberGhost.Components
{
	public class UnblockItem
	{
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

		public Uri UImage
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

		public bool IsDivider
		{
			get;
			set;
		}

		public string CountryImageForGroupBox
		{
			get;
			set;
		}

		public List<int> ServerIds
		{
			get;
			set;
		}

		public bool IsCustom
		{
			get;
			set;
		}

		public bool IsNotCustom
		{
			get
			{
				return !this.IsCustom;
			}
			set
			{
				this.IsCustom = !value;
			}
		}

		public string CountryNameForGroupBox
		{
			get;
			set;
		}

		public List<UnblockCountries> UnblockCountriesList
		{
			get;
			set;
		}
	}
}
