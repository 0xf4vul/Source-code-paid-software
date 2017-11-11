using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;

namespace CyberGhost.Components
{
	public class ImageSlider : UserControl, IComponentConnector
	{
		public static readonly DependencyProperty SlideProperty = DependencyProperty.Register("Slides", typeof(ObservableCollection<SliderElement>), typeof(ImageSlider), new PropertyMetadata(null));

		private readonly Timer _slideTimer;

		private int _currentCtrlIndex = 1;

		private int _oldCtrlIndex = -1;

		private int _slideIndex = -1;

		public int CurrentFrame;

		internal Image Image1;

		internal Image Image2;

		internal BBCodeBlock Description;

		internal Button Prev;

		internal Button Next;

		internal StackPanel DotPanel;

		private bool _contentLoaded;

		public bool AutoPlay
		{
			get
			{
				return this._slideTimer.Enabled;
			}
			set
			{
				this._slideTimer.Enabled = value;
			}
		}

		public ObservableCollection<SliderElement> Slides
		{
			get
			{
				return (ObservableCollection<SliderElement>)base.GetValue(ImageSlider.SlideProperty);
			}
			set
			{
				base.SetValue(ImageSlider.SlideProperty, value);
			}
		}

		public ImageSlider()
		{
			this.InitializeComponent();
			this.Slides = new ObservableCollection<SliderElement>();
			this._slideTimer = new Timer();
		}

		public void HandleSliding()
		{
			Image[] expr_06 = new Image[]
			{
				this.Image1,
				this.Image2
			};
			Image containingObject = expr_06[this._oldCtrlIndex];
			Image image = expr_06[this._currentCtrlIndex];
			ImageSource image2 = this.Slides[this._slideIndex].Image;
			image.Source = image2;
			this.Description.set_BBCode(this.Slides[this._slideIndex].Description);
			this.SetDotButton(this._slideIndex);
			((Storyboard)base.Resources["FadeOut"]).Clone().Begin(containingObject);
			Storyboard expr_A9 = base.Resources["FadeIn"] as Storyboard;
			if (expr_A9 == null)
			{
				return;
			}
			expr_A9.Begin(image);
		}

		public void JumpToSlide(int position)
		{
			this._oldCtrlIndex = this._currentCtrlIndex;
			this._currentCtrlIndex = (this._currentCtrlIndex + 1) % 2;
			this._slideIndex = position % this.Slides.Count;
			this.SetDotButton(this.CurrentFrame);
			this.HandleSliding();
		}

		public void NextSlide()
		{
			if (this.Slides.Count == 0)
			{
				return;
			}
			this._oldCtrlIndex = this._currentCtrlIndex;
			this._currentCtrlIndex = (this._currentCtrlIndex + 1) % 2;
			this._slideIndex = (this._slideIndex + 1) % this.Slides.Count;
			this.SetDotButton(this.CurrentFrame);
			this.HandleSliding();
		}

		public void PreviousSlide()
		{
			if (this.Slides.Count == 0)
			{
				return;
			}
			this._oldCtrlIndex = this._currentCtrlIndex;
			this._currentCtrlIndex = (this._currentCtrlIndex + 1) % 2;
			this._slideIndex--;
			if (this._slideIndex < 0)
			{
				this._slideIndex = this.Slides.Count - 1;
			}
			this.SetDotButton(this.CurrentFrame);
			this.HandleSliding();
		}

		public void FirstSlide()
		{
			this.JumpToSlide(0);
		}

		public void SetupDots()
		{
			this.DotPanel.Children.Clear();
			for (int i = 0; i < this.Slides.Count; i++)
			{
				Button button = new Button();
				this.DotPanel.Children.Add(button);
				button.Style = (Application.Current.FindResource("DotButton") as Style);
				button.Tag = i;
				button.Click += new RoutedEventHandler(this.dot_Click);
			}
		}

		private void dot_Click(object sender, RoutedEventArgs e)
		{
			int num = (int)((Button)sender).Tag;
			this.CurrentFrame = num;
			this.JumpToSlide(num);
		}

		private void SetDotButton(int buttonId)
		{
			for (int i = 0; i < this.DotPanel.Children.Count; i++)
			{
				Button expr_1A = (Button)this.DotPanel.Children[i];
				expr_1A.Content = (((int)expr_1A.Tag == buttonId) ? "" : "");
			}
		}

		private void prev_Click(object sender, RoutedEventArgs e)
		{
			this.PreviousSlide();
			this.CurrentFrame--;
			if (this.CurrentFrame < 0)
			{
				this.CurrentFrame = this.Slides.Count - 1;
			}
		}

		private void next_Click(object sender, RoutedEventArgs e)
		{
			this.NextSlide();
			this.CurrentFrame++;
			if (this.CurrentFrame >= this.Slides.Count)
			{
				this.CurrentFrame = 0;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/imageslider.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.Image1 = (Image)target;
				return;
			case 2:
				this.Image2 = (Image)target;
				return;
			case 3:
				this.Description = (BBCodeBlock)target;
				return;
			case 4:
				this.Prev = (Button)target;
				this.Prev.Click += new RoutedEventHandler(this.prev_Click);
				return;
			case 5:
				this.Next = (Button)target;
				this.Next.Click += new RoutedEventHandler(this.next_Click);
				return;
			case 6:
				this.DotPanel = (StackPanel)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
