using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace CyberGhost.Components
{
	internal class ImageButton : Button
	{
		public static readonly DependencyProperty ImageProperty;

		public static readonly DependencyProperty ImageHeightProperty;

		public static readonly DependencyProperty ImageWidthProperty;

		public ImageSource Image
		{
			get
			{
				return (ImageSource)base.GetValue(ImageButton.ImageProperty);
			}
			set
			{
				base.SetValue(ImageButton.ImageProperty, value);
			}
		}

		public double ImageHeight
		{
			get
			{
				return (double)base.GetValue(ImageButton.ImageHeightProperty);
			}
			set
			{
				base.SetValue(ImageButton.ImageHeightProperty, value);
			}
		}

		public double ImageWidth
		{
			get
			{
				return (double)base.GetValue(ImageButton.ImageWidthProperty);
			}
			set
			{
				base.SetValue(ImageButton.ImageWidthProperty, value);
			}
		}

		static ImageButton()
		{
			ImageButton.ImageProperty = DependencyProperty.Register("Image", typeof(ImageSource), typeof(ImageButton), new PropertyMetadata(null));
			ImageButton.ImageHeightProperty = DependencyProperty.Register("ImageHeight", typeof(double), typeof(ImageButton), new PropertyMetadata(double.NaN));
			ImageButton.ImageWidthProperty = DependencyProperty.Register("ImageWidth", typeof(double), typeof(ImageButton), new PropertyMetadata(double.NaN));
			FrameworkElement.DefaultStyleKeyProperty.OverrideMetadata(typeof(ImageButton), new FrameworkPropertyMetadata(typeof(ImageButton)));
		}
	}
}
