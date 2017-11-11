using Caliburn.Micro;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Media.Imaging;

namespace NordVpn.KillSwitch.ViewModels
{
	public class ProcessItemViewModel : PropertyChangedBase
	{
		private bool _selected;

		public string Name
		{
			[CompilerGenerated]
			get
			{
				return this.<Name>k__BackingField;
			}
		}

		public string DisplayName
		{
			[CompilerGenerated]
			get
			{
				return this.<DisplayName>k__BackingField;
			}
		}

		public string Path
		{
			[CompilerGenerated]
			get
			{
				return this.<Path>k__BackingField;
			}
		}

		public BitmapFrame Icon
		{
			[CompilerGenerated]
			get
			{
				return this.<Icon>k__BackingField;
			}
		}

		public bool Selected
		{
			get
			{
				return this._selected;
			}
			set
			{
				this.Set<bool>(ref this._selected, value, "Selected");
			}
		}

		public ProcessItemViewModel(string name, string displayName, string path, BitmapFrame icon)
		{
			this.<Name>k__BackingField = name;
			this.<DisplayName>k__BackingField = displayName;
			this.<Path>k__BackingField = path;
			this.<Icon>k__BackingField = icon;
		}

		public void ToggleSelection()
		{
			this.Selected = !this.Selected;
		}
	}
}
