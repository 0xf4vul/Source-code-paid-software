using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;

namespace VyprVPN.Views.FeedbackDialog
{
	public class FeedbackFailureControl : UserControl, IComponentConnector
	{
		private static readonly DependencyProperty DialogImageProperty = DependencyProperty.Register("DialogImage", typeof(ImageSource), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty HeadingTextProperty = DependencyProperty.Register("HeadingText", typeof(string), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty DescriptionTextProperty = DependencyProperty.Register("DescriptionText", typeof(string), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty CloseButtonTextProperty = DependencyProperty.Register("CloseButtonText", typeof(string), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty CloseButtonCommandProperty = DependencyProperty.Register("CloseButtonCommand", typeof(ICommand), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty CloseButtonCommandParameterProperty = DependencyProperty.Register("CloseButtonCommandParameter", typeof(object), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty ResendButtonTextProperty = DependencyProperty.Register("ResendButtonText", typeof(string), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty ResendButtonCommandProperty = DependencyProperty.Register("ResendButtonCommand", typeof(ICommand), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty ResendButtonCommandParameterProperty = DependencyProperty.Register("ResendButtonCommandParameter", typeof(object), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty BackButtonTextProperty = DependencyProperty.Register("BackButtonText", typeof(string), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty BackButtonCommandProperty = DependencyProperty.Register("BackButtonCommand", typeof(ICommand), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty BackButtonCommandParameterProperty = DependencyProperty.Register("BackButtonCommandParameter", typeof(object), typeof(FeedbackFailureControl), new FrameworkPropertyMetadata(null));

		private bool _contentLoaded;

		public ImageSource DialogImage
		{
			get
			{
				return (ImageSource)base.GetValue(FeedbackFailureControl.DialogImageProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.DialogImageProperty, value);
			}
		}

		public string HeadingText
		{
			get
			{
				return (string)base.GetValue(FeedbackFailureControl.HeadingTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.HeadingTextProperty, value);
			}
		}

		public string DescriptionText
		{
			get
			{
				return (string)base.GetValue(FeedbackFailureControl.DescriptionTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.DescriptionTextProperty, value);
			}
		}

		public string CloseButtonText
		{
			get
			{
				return (string)base.GetValue(FeedbackFailureControl.CloseButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.CloseButtonTextProperty, value);
			}
		}

		public ICommand CloseButtonCommand
		{
			get
			{
				return (ICommand)base.GetValue(FeedbackFailureControl.CloseButtonCommandProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.CloseButtonCommandProperty, value);
			}
		}

		public object CloseButtonCommandParameter
		{
			get
			{
				return base.GetValue(FeedbackFailureControl.CloseButtonCommandParameterProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.CloseButtonCommandParameterProperty, value);
			}
		}

		public string ResendButtonText
		{
			get
			{
				return (string)base.GetValue(FeedbackFailureControl.ResendButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.ResendButtonTextProperty, value);
			}
		}

		public ICommand ResendButtonCommand
		{
			get
			{
				return (ICommand)base.GetValue(FeedbackFailureControl.ResendButtonCommandProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.ResendButtonCommandProperty, value);
			}
		}

		public object ResendButtonCommandParameter
		{
			get
			{
				return base.GetValue(FeedbackFailureControl.ResendButtonCommandParameterProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.ResendButtonCommandParameterProperty, value);
			}
		}

		public string BackButtonText
		{
			get
			{
				return (string)base.GetValue(FeedbackFailureControl.BackButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.BackButtonTextProperty, value);
			}
		}

		public ICommand BackButtonCommand
		{
			get
			{
				return (ICommand)base.GetValue(FeedbackFailureControl.BackButtonCommandProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.BackButtonCommandProperty, value);
			}
		}

		public object BackButtonCommandParameter
		{
			get
			{
				return base.GetValue(FeedbackFailureControl.BackButtonCommandParameterProperty);
			}
			set
			{
				base.SetValue(FeedbackFailureControl.BackButtonCommandParameterProperty, value);
			}
		}

		public FeedbackFailureControl()
		{
			this.InitializeComponent();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/feedbackdialog/controls/feedbackfailurecontrol.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			this._contentLoaded = true;
		}
	}
}

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;

namespace VyprVPN.Views.FeedbackDialog
{
	public class FeedbackFormControl : UserControl, IComponentConnector
	{
		private static readonly DependencyProperty DialogImageProperty = DependencyProperty.Register("DialogImage", typeof(ImageSource), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty DescriptionTextProperty = DependencyProperty.Register("DescriptionText", typeof(string), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty FeedbackHintTextProperty = DependencyProperty.Register("FeedbackHintText", typeof(string), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty FeedbackTextProperty = DependencyProperty.Register("FeedbackText", typeof(string), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty IncludeLogsTextProperty = DependencyProperty.Register("IncludeLogsText", typeof(string), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty EmailFieldHeadingTextProperty = DependencyProperty.Register("EmailFieldHeadingText", typeof(string), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty EmailHintTextProperty = DependencyProperty.Register("EmailHintText", typeof(string), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty EmailFieldTextProperty = DependencyProperty.Register("EmailFieldText", typeof(string), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty IncludeLogsProperty = DependencyProperty.Register("IncludeLogs", typeof(bool), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(false));

		private static readonly DependencyProperty ShowIncludeLogsProperty = DependencyProperty.Register("ShowIncludeLogs", typeof(bool), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(false));

		private static readonly DependencyProperty SubmitButtonTextProperty = DependencyProperty.Register("SubmitButtonText", typeof(string), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty SubmitButtonCommandProperty = DependencyProperty.Register("SubmitButtonCommand", typeof(ICommand), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty SubmitButtonCommandParameterProperty = DependencyProperty.Register("SubmitButtonCommandParameter", typeof(object), typeof(FeedbackFormControl), new FrameworkPropertyMetadata(null));

		internal TextBox FeedbackTextBox;

		internal TextBox EmailTextBox;

		private bool _contentLoaded;

		public ImageSource DialogImage
		{
			get
			{
				return (ImageSource)base.GetValue(FeedbackFormControl.DialogImageProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.DialogImageProperty, value);
			}
		}

		public string DescriptionText
		{
			get
			{
				return (string)base.GetValue(FeedbackFormControl.DescriptionTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.DescriptionTextProperty, value);
			}
		}

		public string FeedbackHintText
		{
			get
			{
				return (string)base.GetValue(FeedbackFormControl.FeedbackHintTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.FeedbackHintTextProperty, value);
			}
		}

		public string FeedbackText
		{
			get
			{
				return (string)base.GetValue(FeedbackFormControl.FeedbackTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.FeedbackTextProperty, value);
			}
		}

		public string IncludeLogsText
		{
			get
			{
				return (string)base.GetValue(FeedbackFormControl.IncludeLogsTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.IncludeLogsTextProperty, value);
			}
		}

		public string EmailFieldHeadingText
		{
			get
			{
				return (string)base.GetValue(FeedbackFormControl.EmailFieldHeadingTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.EmailFieldHeadingTextProperty, value);
			}
		}

		public string EmailHintText
		{
			get
			{
				return (string)base.GetValue(FeedbackFormControl.EmailHintTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.EmailHintTextProperty, value);
			}
		}

		public string EmailFieldText
		{
			get
			{
				return (string)base.GetValue(FeedbackFormControl.EmailFieldTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.EmailFieldTextProperty, value);
			}
		}

		public bool IncludeLogs
		{
			get
			{
				return (bool)base.GetValue(FeedbackFormControl.IncludeLogsProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.IncludeLogsProperty, value);
			}
		}

		public bool ShowIncludeLogs
		{
			get
			{
				return (bool)base.GetValue(FeedbackFormControl.ShowIncludeLogsProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.ShowIncludeLogsProperty, value);
			}
		}

		public string SubmitButtonText
		{
			get
			{
				return (string)base.GetValue(FeedbackFormControl.SubmitButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.SubmitButtonTextProperty, value);
			}
		}

		public ICommand SubmitButtonCommand
		{
			get
			{
				return (ICommand)base.GetValue(FeedbackFormControl.SubmitButtonCommandProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.SubmitButtonCommandProperty, value);
			}
		}

		public object SubmitButtonCommandParameter
		{
			get
			{
				return base.GetValue(FeedbackFormControl.SubmitButtonCommandParameterProperty);
			}
			set
			{
				base.SetValue(FeedbackFormControl.SubmitButtonCommandParameterProperty, value);
			}
		}

		public FeedbackFormControl()
		{
			this.InitializeComponent();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/feedbackdialog/controls/feedbackformcontrol.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.FeedbackTextBox = (TextBox)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.EmailTextBox = (TextBox)target;
		}
	}
}

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;

namespace VyprVPN.Views.FeedbackDialog
{
	public class FeedbackProgressControl : UserControl, IComponentConnector
	{
		private static readonly DependencyProperty DialogImageProperty = DependencyProperty.Register("DialogImage", typeof(ImageSource), typeof(FeedbackProgressControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty DescriptionTextProperty = DependencyProperty.Register("DescriptionText", typeof(string), typeof(FeedbackProgressControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty ProgressHeadingTextProperty = DependencyProperty.Register("ProgressHeadingText", typeof(string), typeof(FeedbackProgressControl), new FrameworkPropertyMetadata(string.Empty));

		private bool _contentLoaded;

		public ImageSource DialogImage
		{
			get
			{
				return (ImageSource)base.GetValue(FeedbackProgressControl.DialogImageProperty);
			}
			set
			{
				base.SetValue(FeedbackProgressControl.DialogImageProperty, value);
			}
		}

		public string DescriptionText
		{
			get
			{
				return (string)base.GetValue(FeedbackProgressControl.DescriptionTextProperty);
			}
			set
			{
				base.SetValue(FeedbackProgressControl.DescriptionTextProperty, value);
			}
		}

		public string ProgressHeadingText
		{
			get
			{
				return (string)base.GetValue(FeedbackProgressControl.ProgressHeadingTextProperty);
			}
			set
			{
				base.SetValue(FeedbackProgressControl.ProgressHeadingTextProperty, value);
			}
		}

		public FeedbackProgressControl()
		{
			this.InitializeComponent();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/feedbackdialog/controls/feedbackprogresscontrol.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			this._contentLoaded = true;
		}
	}
}

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;

namespace VyprVPN.Views.FeedbackDialog
{
	public class FeedbackSuccessControl : UserControl, IComponentConnector
	{
		private static readonly DependencyProperty DialogImageProperty = DependencyProperty.Register("DialogImage", typeof(ImageSource), typeof(FeedbackSuccessControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty HeadingTextProperty = DependencyProperty.Register("HeadingText", typeof(string), typeof(FeedbackSuccessControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty DescriptionTextProperty = DependencyProperty.Register("DescriptionText", typeof(string), typeof(FeedbackSuccessControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty CloseButtonTextProperty = DependencyProperty.Register("CloseButtonText", typeof(string), typeof(FeedbackSuccessControl), new FrameworkPropertyMetadata(string.Empty));

		private static readonly DependencyProperty CloseButtonCommandProperty = DependencyProperty.Register("CloseButtonCommand", typeof(ICommand), typeof(FeedbackSuccessControl), new FrameworkPropertyMetadata(null));

		private static readonly DependencyProperty CloseButtonCommandParameterProperty = DependencyProperty.Register("CloseButtonCommandParameter", typeof(object), typeof(FeedbackSuccessControl), new FrameworkPropertyMetadata(null));

		private bool _contentLoaded;

		public ImageSource DialogImage
		{
			get
			{
				return (ImageSource)base.GetValue(FeedbackSuccessControl.DialogImageProperty);
			}
			set
			{
				base.SetValue(FeedbackSuccessControl.DialogImageProperty, value);
			}
		}

		public string HeadingText
		{
			get
			{
				return (string)base.GetValue(FeedbackSuccessControl.HeadingTextProperty);
			}
			set
			{
				base.SetValue(FeedbackSuccessControl.HeadingTextProperty, value);
			}
		}

		public string DescriptionText
		{
			get
			{
				return (string)base.GetValue(FeedbackSuccessControl.DescriptionTextProperty);
			}
			set
			{
				base.SetValue(FeedbackSuccessControl.DescriptionTextProperty, value);
			}
		}

		public string CloseButtonText
		{
			get
			{
				return (string)base.GetValue(FeedbackSuccessControl.CloseButtonTextProperty);
			}
			set
			{
				base.SetValue(FeedbackSuccessControl.CloseButtonTextProperty, value);
			}
		}

		public ICommand CloseButtonCommand
		{
			get
			{
				return (ICommand)base.GetValue(FeedbackSuccessControl.CloseButtonCommandProperty);
			}
			set
			{
				base.SetValue(FeedbackSuccessControl.CloseButtonCommandProperty, value);
			}
		}

		public object CloseButtonCommandParameter
		{
			get
			{
				return base.GetValue(FeedbackSuccessControl.CloseButtonCommandParameterProperty);
			}
			set
			{
				base.SetValue(FeedbackSuccessControl.CloseButtonCommandParameterProperty, value);
			}
		}

		public FeedbackSuccessControl()
		{
			this.InitializeComponent();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/feedbackdialog/controls/feedbacksuccesscontrol.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			this._contentLoaded = true;
		}
	}
}
