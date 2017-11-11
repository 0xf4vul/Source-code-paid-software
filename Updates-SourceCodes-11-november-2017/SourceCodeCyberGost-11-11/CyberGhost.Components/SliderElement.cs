using FirstFloor.ModernUI.Presentation;
using System;
using System.Windows.Media;

namespace CyberGhost.Components
{
	public class SliderElement : NotifyPropertyChanged
	{
		private string _description;

		private ImageSource _image;

		public string Description
		{
			get
			{
				return this._description;
			}
			set
			{
				if (this._description == value)
				{
					return;
				}
				this._description = value;
				this.OnPropertyChanged("Description");
			}
		}

		public ImageSource Image
		{
			get
			{
				return this._image;
			}
			set
			{
				if (object.Equals(this._image, value))
				{
					return;
				}
				this._image = value;
				this.OnPropertyChanged("Image");
			}
		}
	}
}
