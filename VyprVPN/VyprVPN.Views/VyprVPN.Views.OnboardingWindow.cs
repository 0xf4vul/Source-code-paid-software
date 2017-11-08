using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using System;
using VyprVPN.Classes;
using VyprVPN.Messages;

namespace VyprVPN.Views.OnboardingWindow
{
	public class BaseOnboardingSubViewModel : VyprViewModel
	{
		public static readonly PropertyData ActiveOnboardingViewProperty = ModelBase.RegisterProperty<OnboardingViews>("ActiveOnboardingView", typeof(OnboardingViews), OnboardingViews.CreateAccount, null, true, true, true);

		public OnboardingViews ActiveOnboardingView
		{
			get
			{
				return base.GetValue<OnboardingViews>(BaseOnboardingSubViewModel.ActiveOnboardingViewProperty);
			}
			set
			{
				base.SetValue(BaseOnboardingSubViewModel.ActiveOnboardingViewProperty, value);
			}
		}

		public BaseOnboardingSubViewModel()
		{
			MessageBase<UIStateChangedMessage, IUIState>.Register(this, new Action<UIStateChangedMessage>(this.OnUIStateChanged), null);
			this.ActiveOnboardingView = ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).OnboardingViewState;
		}

		private void OnUIStateChanged(UIStateChangedMessage obj)
		{
			this.ActiveOnboardingView = obj.get_Data().OnboardingViewState;
		}
	}
}

using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Media;

namespace VyprVPN.Views.OnboardingWindow
{
	public class CardViewModel : INotifyPropertyChanged
	{
		private ImageSource _ImageSource;

		private string _Title;

		private string _Text;

		private bool _FadingIn;

		private bool _FadingOut;

		private bool _Inactive;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public ImageSource ImageSource
		{
			get
			{
				return this._ImageSource;
			}
			set
			{
				this._ImageSource = value;
				this.OnPropertyChanged("ImageSource");
			}
		}

		public string Title
		{
			get
			{
				return this._Title;
			}
			set
			{
				this._Title = value;
				this.OnPropertyChanged("Title");
			}
		}

		public string Text
		{
			get
			{
				return this._Text;
			}
			set
			{
				this._Text = value;
				this.OnPropertyChanged("Text");
			}
		}

		public bool FadingIn
		{
			get
			{
				return this._FadingIn;
			}
			set
			{
				this._FadingIn = value;
				this.OnPropertyChanged("FadingIn");
			}
		}

		public bool FadingOut
		{
			get
			{
				return this._FadingOut;
			}
			set
			{
				this._FadingOut = value;
				this.OnPropertyChanged("FadingOut");
			}
		}

		public bool Inactive
		{
			get
			{
				return this._Inactive;
			}
			set
			{
				this._Inactive = value;
				this.OnPropertyChanged("Inactive");
			}
		}

		protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
			if (propertyChanged != null)
			{
				propertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}

using Catel.IoC;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace VyprVPN.Views.OnboardingWindow
{
	public class CarouselControl : UserControl, IComponentConnector
	{
		public static readonly DependencyProperty SlideStartPositionProperty = DependencyProperty.Register("SlideStartPosition", typeof(double), typeof(CarouselControl), new PropertyMetadata(32.0));

		public static readonly DependencyProperty SlideStopPositionProperty = DependencyProperty.Register("SlideStopPosition", typeof(double), typeof(CarouselControl), new PropertyMetadata(32.0));

		internal CarouselControl carousel;

		internal Border backgroundTransparencyLayer;

		internal Border foregroundTransparencyLayer;

		internal Canvas CardCanvas;

		internal ListBox CardBox;

		internal ListBox FadeInOverlay;

		internal ListBox FadeOutOverlay;

		internal ListBox StaticOverlay;

		internal ListBox NavBox;

		internal Button BackButton;

		internal Button NextButton;

		internal Canvas AnimatedOverlayCanvas;

		private bool _contentLoaded;

		private ILogger Logger
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<ILogger>(ServiceLocator.get_Default(), null);
			}
		}

		public double SlideStartPosition
		{
			get
			{
				return (double)base.GetValue(CarouselControl.SlideStartPositionProperty);
			}
			set
			{
				base.SetValue(CarouselControl.SlideStartPositionProperty, value);
			}
		}

		public double SlideStopPosition
		{
			get
			{
				return (double)base.GetValue(CarouselControl.SlideStopPositionProperty);
			}
			set
			{
				base.SetValue(CarouselControl.SlideStopPositionProperty, value);
			}
		}

		public CarouselControl()
		{
			this.InitializeComponent();
			base.DataContextChanged += new DependencyPropertyChangedEventHandler(this.bindToDataContext);
		}

		protected override void OnInitialized(EventArgs e)
		{
			if (ServiceLocatorExtensions.IsTypeRegistered<IUIHelper>(ServiceLocator.get_Default(), null))
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).BeginStoryboard(this, "SlideToCardStoryboard");
			}
			else if (ServiceLocatorExtensions.IsTypeRegistered<ILogger>(ServiceLocator.get_Default(), null))
			{
				this.Logger.Log(1, "CarouselControl: IUIHelper is not registered with IoC");
			}
			base.OnInitialized(e);
		}

		private void bindToDataContext(object sender, DependencyPropertyChangedEventArgs e)
		{
			if (base.DataContext == null)
			{
				this.Logger.Log(1, "CarouselControl.bindToDataContext: DataContext is null");
				return;
			}
			CarouselViewModel carouselViewModel = base.DataContext as CarouselViewModel;
			if (carouselViewModel != null)
			{
				carouselViewModel.PropertyChanged += new PropertyChangedEventHandler(this.vmPropertyChnged);
				this.SetupOverlays(carouselViewModel.SelectedIndex, carouselViewModel.SelectedIndex);
				return;
			}
			this.Logger.Log(1, "CarouselControl.bindToDataContext: DataContext is not a CarouselViewModel");
		}

		private void AnimateToIndex(int index)
		{
			this.SlideStartPosition = Canvas.GetLeft(this.CardBox);
			this.SlideStopPosition = this.getCardboxLeftForIndex(index);
			int indexFromPosition = this.GetIndexFromPosition(this.SlideStartPosition);
			this.SetupOverlays(indexFromPosition, index);
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).BeginStoryboard(this, "SlideToCardStoryboard");
		}

		private void SetupOverlays(int startIndex, int endIndex)
		{
			int num = 0;
			CarouselViewModel carouselViewModel = base.DataContext as CarouselViewModel;
			if (carouselViewModel != null)
			{
				num = carouselViewModel.Count;
			}
			for (int i = 0; i < num; i++)
			{
				carouselViewModel[i].FadingIn = (i != startIndex && i == endIndex);
				carouselViewModel[i].FadingOut = (i == startIndex && i != endIndex);
				carouselViewModel[i].Inactive = (i != startIndex && i != endIndex);
			}
		}

		private int GetIndexFromPosition(double position)
		{
			double num = 0.0 - position;
			double num2 = 0.0;
			int num3 = -1;
			ListBoxItem listBoxItem;
			do
			{
				num3++;
				listBoxItem = (this.CardBox.ItemContainerGenerator.ContainerFromIndex(num3) as ListBoxItem);
				if (listBoxItem != null)
				{
					num2 += listBoxItem.ActualWidth;
				}
			}
			while (num >= num2 && listBoxItem != null);
			return num3;
		}

		private double getCardboxLeftForIndex(int index)
		{
			double num = 0.0;
			for (int i = 0; i < index; i++)
			{
				ListBoxItem listBoxItem = this.CardBox.ItemContainerGenerator.ContainerFromIndex(i) as ListBoxItem;
				if (listBoxItem != null)
				{
					num += listBoxItem.ActualWidth;
				}
				else
				{
					this.Logger.Log(1, "CarouselControl.getCardboxLeftForIndex: Cardbox has a child that is not a ListBoxItem at index {0}", new object[]
					{
						i
					});
				}
			}
			return 0.0 - num;
		}

		public void vmPropertyChnged(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "SelectedIndex")
			{
				CarouselViewModel carouselViewModel = sender as CarouselViewModel;
				if (carouselViewModel != null)
				{
					this.AnimateToIndex(carouselViewModel.SelectedIndex);
					return;
				}
				this.Logger.Log(1, "CarouselControl.vmPropertyChnged: sender is not a CarouselViewModel");
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/onboardingwindow/carousel/carouselcontrol.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.carousel = (CarouselControl)target;
				return;
			case 2:
				this.backgroundTransparencyLayer = (Border)target;
				return;
			case 3:
				this.foregroundTransparencyLayer = (Border)target;
				return;
			case 4:
				this.CardCanvas = (Canvas)target;
				return;
			case 5:
				this.CardBox = (ListBox)target;
				return;
			case 6:
				this.FadeInOverlay = (ListBox)target;
				return;
			case 7:
				this.FadeOutOverlay = (ListBox)target;
				return;
			case 8:
				this.StaticOverlay = (ListBox)target;
				return;
			case 9:
				this.NavBox = (ListBox)target;
				return;
			case 10:
				this.BackButton = (Button)target;
				return;
			case 11:
				this.NextButton = (Button)target;
				return;
			case 12:
				this.AnimatedOverlayCanvas = (Canvas)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using Catel.IoC;
using Catel.MVVM;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace VyprVPN.Views.OnboardingWindow
{
	public class CarouselViewModel : ObservableCollection<CardViewModel>, INotifyPropertyChanged
	{
		private int _SelectedIndex;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public new event PropertyChangedEventHandler PropertyChanged;

		public int SelectedIndex
		{
			get
			{
				return this._SelectedIndex;
			}
			set
			{
				if (value < 0 || base.Count == 0)
				{
					this._SelectedIndex = 0;
				}
				else
				{
					this._SelectedIndex = value % base.Count;
				}
				this.OnPropertyChanged(new PropertyChangedEventArgs("SelectedIndex"));
				this.OnPropertyChanged(new PropertyChangedEventArgs("ThereIsANextItem"));
				this.OnPropertyChanged(new PropertyChangedEventArgs("ThereIsAPreviousItem"));
			}
		}

		public bool ThereIsANextItem
		{
			get
			{
				return this.IndexExists(this.SelectedIndex + 1);
			}
		}

		public bool ThereIsAPreviousItem
		{
			get
			{
				return this.IndexExists(this.SelectedIndex - 1);
			}
		}

		public Command PreviousCardCommand
		{
			get;
			private set;
		}

		public Command NextCardCommand
		{
			get;
			private set;
		}

		public CarouselViewModel()
		{
			this.SelectedIndex = 0;
			this.PreviousCardCommand = new Command(new Action(this.PreviousCardCommandExecuted), null, null);
			this.NextCardCommand = new Command(new Action(this.NextCardCommandExecuted), null, null);
		}

		private bool IndexExists(int index)
		{
			return index >= 0 && index < base.Count;
		}

		private void PreviousCardCommandExecuted()
		{
			this.SelectedIndex--;
			ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).SendViewedCarouselAnalyticsEvent();
		}

		private void NextCardCommandExecuted()
		{
			this.SelectedIndex++;
			ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).SendViewedCarouselAnalyticsEvent();
		}

		protected override void OnPropertyChanged(PropertyChangedEventArgs e)
		{
			PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
			if (propertyChanged != null)
			{
				propertyChanged(this, e);
			}
			base.OnPropertyChanged(e);
		}
	}
}

using Catel.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace VyprVPN.Views.OnboardingWindow
{
	public class CreateAccountView : UserControl, IComponentConnector
	{
		internal TextBox UsernameTextBox;

		internal PasswordBox PasswordTextBox;

		internal TextBox PasswordVisibleTextBox;

		internal Canvas VyprSpinnerImageClippingRect;

		internal Image VyprSpinnerImage;

		private bool _contentLoaded;

		public CreateAccountView()
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/onboardingwindow/createaccount/createaccountview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.UsernameTextBox = (TextBox)target;
				return;
			case 2:
				this.PasswordTextBox = (PasswordBox)target;
				return;
			case 3:
				this.PasswordVisibleTextBox = (TextBox)target;
				return;
			case 4:
				this.VyprSpinnerImageClippingRect = (Canvas)target;
				return;
			case 5:
				this.VyprSpinnerImage = (Image)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
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

namespace VyprVPN.Views.OnboardingWindow
{
	public class EmailConfirmationView : UserControl, IComponentConnector
	{
		internal Button CloseButton;

		internal TextBox UsernameTextBox;

		internal Canvas VyprSpinnerImageClippingRect;

		internal Image VyprSpinnerImage;

		private bool _contentLoaded;

		public EmailConfirmationView()
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/onboardingwindow/emailconfirmationview/emailconfirmationview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.CloseButton = (Button)target;
				return;
			case 2:
				this.UsernameTextBox = (TextBox)target;
				return;
			case 3:
				this.VyprSpinnerImageClippingRect = (Canvas)target;
				return;
			case 4:
				this.VyprSpinnerImage = (Image)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
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

namespace VyprVPN.Views.OnboardingWindow
{
	public class ForgotPasswordView : UserControl, IComponentConnector
	{
		internal Button CloseButton;

		internal TextBlock TitleTextBlock;

		internal TextBlock BodyTextBlock;

		internal TextBox UsernameTextBox;

		private bool _contentLoaded;

		public ForgotPasswordView()
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/onboardingwindow/forgotpassword/forgotpasswordview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.CloseButton = (Button)target;
				return;
			case 2:
				this.TitleTextBlock = (TextBlock)target;
				return;
			case 3:
				this.BodyTextBlock = (TextBlock)target;
				return;
			case 4:
				this.UsernameTextBox = (TextBox)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using Catel.Data;
using Catel.Messaging;
using Catel.MVVM;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using VyprVPN.Messages;

namespace VyprVPN.Views.OnboardingWindow
{
	public class ForgotPasswordViewModel : GenericOverlayViewModel
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ForgotPasswordViewModel.<>c <>9 = new ForgotPasswordViewModel.<>c();

			internal void cctor>b__19_0(object sender, AdvancedPropertyChangedEventArgs args)
			{
				ForgotPasswordViewModel forgotPasswordViewModel = sender as ForgotPasswordViewModel;
				if (forgotPasswordViewModel != null)
				{
					forgotPasswordViewModel.UsernameHintVisible = string.IsNullOrEmpty(args.get_NewValue() as string);
				}
			}
		}

		public static readonly PropertyData UsernameProperty = ModelBase.RegisterProperty<string>("Username", typeof(string), "", new EventHandler<AdvancedPropertyChangedEventArgs>(ForgotPasswordViewModel.<>c.<>9.<.cctor>b__19_0), true, true, true);

		public static readonly PropertyData UsernameHintVisibleProperty = ModelBase.RegisterProperty<bool>("UsernameHintVisible", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData IsSendingProperty = ModelBase.RegisterProperty<bool>("IsSending", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ShowErrorProperty = ModelBase.RegisterProperty<bool>("ShowError", typeof(bool), false, null, true, true, true);

		public string Username
		{
			get
			{
				return base.GetValue<string>(ForgotPasswordViewModel.UsernameProperty);
			}
			set
			{
				base.SetValue(ForgotPasswordViewModel.UsernameProperty, value);
			}
		}

		public bool UsernameHintVisible
		{
			get
			{
				return base.GetValue<bool>(ForgotPasswordViewModel.UsernameHintVisibleProperty);
			}
			set
			{
				base.SetValue(ForgotPasswordViewModel.UsernameHintVisibleProperty, value);
			}
		}

		public bool IsSending
		{
			get
			{
				return base.GetValue<bool>(ForgotPasswordViewModel.IsSendingProperty);
			}
			set
			{
				base.SetValue(ForgotPasswordViewModel.IsSendingProperty, value);
			}
		}

		public ICommand ResetPasswordCommand
		{
			get;
			private set;
		}

		public ForgotPasswordViewModel(Action closeAction) : base(closeAction)
		{
			this.ResetPasswordCommand = new Command(new Action(this.ResetPassword), null, null);
		}

		private async void ResetPassword()
		{
			this.IsSending = true;
			bool flag = false;
			MessageBase<ResetPasswordEmailSentMessage, string>.SendWith(null, null);
			try
			{
				bool flag2 = await this.VyprVPNController.ResetPasswordAsync(this.Username.Trim());
				flag = flag2;
			}
			catch (Exception var_3_AF)
			{
				this.logger.Log(4, "ResetPassword Exception: {0}", new object[]
				{
					var_3_AF
				});
			}
			if (!flag)
			{
				this.logger.Log(1, "Reset Password api didn't succeed but the ui will pretend it did, because that is the design.");
			}
			this.IsSending = false;
		}
	}
}

using Catel.Data;
using Catel.MVVM;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace VyprVPN.Views.OnboardingWindow
{
	public class GenericOverlayViewModel : BaseOnboardingSubViewModel
	{
		[CompilerGenerated]
		public static readonly PropertyData CloseActionProperty = ModelBase.RegisterProperty("CloseAction", typeof(Action), null, null, true, true, true);

		public Action CloseAction
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<Action>(GenericOverlayViewModel.CloseActionProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(GenericOverlayViewModel.CloseActionProperty, value);
			}
		}

		public ICommand ClosePopupCommand
		{
			get;
			private set;
		}

		public GenericOverlayViewModel(Action closeAction)
		{
			this.ClosePopupCommand = new Command(new Action(this.ClosePopup), null, null);
			this.CloseAction = closeAction;
		}

		protected virtual void ClosePopup()
		{
			if (this.CloseAction != null)
			{
				this.CloseAction();
			}
		}
	}
}

using Catel.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace VyprVPN.Views.OnboardingWindow
{
	public class LoginView : UserControl, IComponentConnector
	{
		internal TextBox UsernameTextBox;

		internal PasswordBox PasswordTextBox;

		internal TextBox PasswordVisibleTextBox;

		internal Canvas VyprSpinnerImageClippingRect;

		internal Image VyprSpinnerImage;

		private bool _contentLoaded;

		public LoginView()
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/onboardingwindow/login/loginview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.UsernameTextBox = (TextBox)target;
				return;
			case 2:
				this.PasswordTextBox = (PasswordBox)target;
				return;
			case 3:
				this.PasswordVisibleTextBox = (TextBox)target;
				return;
			case 4:
				this.VyprSpinnerImageClippingRect = (Canvas)target;
				return;
			case 5:
				this.VyprSpinnerImage = (Image)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using Catel.Data;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace VyprVPN.Views.OnboardingWindow
{
	public class OnboardingAccountPaneViewModel : BaseOnboardingSubViewModel
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly OnboardingAccountPaneViewModel.<>c <>9 = new OnboardingAccountPaneViewModel.<>c();

			internal void cctor>b__37_0(object sender, AdvancedPropertyChangedEventArgs args)
			{
				OnboardingAccountPaneViewModel onboardingAccountPaneViewModel = sender as OnboardingAccountPaneViewModel;
				if (onboardingAccountPaneViewModel != null)
				{
					onboardingAccountPaneViewModel.UsernameHintVisible = string.IsNullOrEmpty(args.get_NewValue() as string);
				}
			}

			internal void cctor>b__37_1(object sender, AdvancedPropertyChangedEventArgs args)
			{
				OnboardingAccountPaneViewModel onboardingAccountPaneViewModel = sender as OnboardingAccountPaneViewModel;
				if (onboardingAccountPaneViewModel != null)
				{
					onboardingAccountPaneViewModel.PasswordHintVisible = string.IsNullOrEmpty(args.get_NewValue() as string);
				}
			}
		}

		public static readonly PropertyData UsernameProperty = ModelBase.RegisterProperty<string>("Username", typeof(string), "", new EventHandler<AdvancedPropertyChangedEventArgs>(OnboardingAccountPaneViewModel.<>c.<>9.<.cctor>b__37_0), true, true, true);

		public static readonly PropertyData UsernameHintVisibleProperty = ModelBase.RegisterProperty<bool>("UsernameHintVisible", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData PasswordProperty = ModelBase.RegisterProperty<string>("Password", typeof(string), "", new EventHandler<AdvancedPropertyChangedEventArgs>(OnboardingAccountPaneViewModel.<>c.<>9.<.cctor>b__37_1), true, true, true);

		public static readonly PropertyData PasswordHintVisibleProperty = ModelBase.RegisterProperty<bool>("PasswordHintVisible", typeof(bool), true, null, true, true, true);

		public static readonly PropertyData ShowInvalidCredentialsErrorProperty = ModelBase.RegisterProperty<bool>("ShowInvalidCredentialsError", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData ShowPasswordProperty = ModelBase.RegisterProperty<bool>("ShowPassword", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData InvalidCredentialsErrorMessageProperty = ModelBase.RegisterProperty("InvalidCredentialsErrorMessage", typeof(string), null, null, true, true, true);

		public ICommand ContactSupportCommand
		{
			get;
			set;
		}

		public ICommand ChangePasswordVisibilityCommand
		{
			get;
			set;
		}

		public string Username
		{
			get
			{
				return base.GetValue<string>(OnboardingAccountPaneViewModel.UsernameProperty);
			}
			set
			{
				base.SetValue(OnboardingAccountPaneViewModel.UsernameProperty, value);
			}
		}

		public bool UsernameHintVisible
		{
			get
			{
				return base.GetValue<bool>(OnboardingAccountPaneViewModel.UsernameHintVisibleProperty);
			}
			set
			{
				base.SetValue(OnboardingAccountPaneViewModel.UsernameHintVisibleProperty, value);
			}
		}

		public string Password
		{
			get
			{
				return base.GetValue<string>(OnboardingAccountPaneViewModel.PasswordProperty);
			}
			set
			{
				base.SetValue(OnboardingAccountPaneViewModel.PasswordProperty, value);
			}
		}

		public bool PasswordHintVisible
		{
			get
			{
				return base.GetValue<bool>(OnboardingAccountPaneViewModel.PasswordHintVisibleProperty);
			}
			set
			{
				base.SetValue(OnboardingAccountPaneViewModel.PasswordHintVisibleProperty, value);
			}
		}

		public bool ShowPassword
		{
			get
			{
				return base.GetValue<bool>(OnboardingAccountPaneViewModel.ShowPasswordProperty);
			}
			set
			{
				base.SetValue(OnboardingAccountPaneViewModel.ShowPasswordProperty, value);
			}
		}

		public bool ShowInvalidCredentialsError
		{
			get
			{
				return base.GetValue<bool>(OnboardingAccountPaneViewModel.ShowInvalidCredentialsErrorProperty);
			}
			set
			{
				base.SetValue(OnboardingAccountPaneViewModel.ShowInvalidCredentialsErrorProperty, value);
				if (!value)
				{
					this.InvalidCredentialsErrorMessage = string.Empty;
				}
			}
		}

		public string InvalidCredentialsErrorMessage
		{
			get
			{
				return base.GetValue<string>(OnboardingAccountPaneViewModel.InvalidCredentialsErrorMessageProperty);
			}
			set
			{
				base.SetValue(OnboardingAccountPaneViewModel.InvalidCredentialsErrorMessageProperty, value);
			}
		}
	}
}

using Catel.IoC;
using GoldenFrogUX;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Markup;
using VyprVPN.Properties;

namespace VyprVPN.Views.OnboardingWindow
{
	public class OnboardingWindowView : Window, IComponentConnector
	{
		private readonly FileLogger logger = FileLogger.get_Instance();

		private bool positionSaved;

		internal CarouselControl CarouselControl;

		internal LoginView LoginView;

		internal CreateAccountView CreateAccountView;

		internal EmailConfirmationView EmailConfirmationOverlay;

		internal ResetPasswordEmailSentView ResetPasswordEmailSentOverlay;

		internal ForgotPasswordView ForgotPasswordOverlay;

		private bool _contentLoaded;

		public OnboardingWindowView()
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		private void OnLoaded(object sender, RoutedEventArgs e)
		{
			try
			{
				this.positionSaved = false;
				ISettings settings = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				WindowHelpers.RestoreWindowLocation(this, settings.MainWindowStartupLocation);
			}
			catch (Exception ex)
			{
				this.logger.Log(1, "Failed to restore Onboarding window location on load: {0}", new object[]
				{
					ex
				});
			}
		}

		private void OnUnloaded(object sender, RoutedEventArgs e)
		{
			try
			{
				ISettings expr_0B = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				expr_0B.MainWindowStartupLocation = new Point(base.Left, base.Top);
				expr_0B.Save();
			}
			catch (Exception ex)
			{
				this.logger.Log(3, "Unexpected error saving Onboarding window location on unload: {0}", new object[]
				{
					ex
				});
			}
		}

		protected override void OnClosing(CancelEventArgs e)
		{
			if (ServiceLocatorExtensions.IsTypeRegistered<IVyprVPNController>(ServiceLocator.get_Default(), null))
			{
				ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null).OnboardingFunnelComplete();
			}
			if (!this.positionSaved)
			{
				try
				{
					ISettings expr_30 = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
					expr_30.MainWindowStartupLocation = new Point(base.Left, base.Top);
					expr_30.Save();
					this.positionSaved = true;
				}
				catch (Exception ex)
				{
					this.logger.Log(3, "Unexpected error saving Onboarding Window UI settings: {0}", new object[]
					{
						ex
					});
				}
			}
			base.OnClosing(e);
		}

		protected override void OnPropertyChanged(DependencyPropertyChangedEventArgs e)
		{
			if (e.Property == UIElement.VisibilityProperty && e.NewValue != e.OldValue && e.NewValue is Visibility)
			{
				if ((Visibility)e.NewValue == Visibility.Visible)
				{
					try
					{
						ISettings settings = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
						WindowHelpers.RestoreWindowLocation(this, settings.MainWindowStartupLocation);
						goto IL_C3;
					}
					catch (Exception ex)
					{
						this.logger.Log(1, "Failed to restore Onboarding Window location on visibilty changed: {0}", new object[]
						{
							ex
						});
						goto IL_C3;
					}
				}
				try
				{
					ISettings expr_87 = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
					expr_87.MainWindowStartupLocation = new Point(base.Left, base.Top);
					expr_87.Save();
				}
				catch (Exception ex2)
				{
					this.logger.Log(3, "Failed to save Onboarding Window location on visibilty changed: {0}", new object[]
					{
						ex2
					});
				}
			}
			IL_C3:
			base.OnPropertyChanged(e);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/onboardingwindow/onboardingwindowview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		internal Delegate _CreateDelegate(Type delegateType, string handler)
		{
			return Delegate.CreateDelegate(delegateType, this, handler);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((OnboardingWindowView)target).Loaded += new RoutedEventHandler(this.OnLoaded);
				((OnboardingWindowView)target).Unloaded += new RoutedEventHandler(this.OnUnloaded);
				return;
			case 2:
				this.CarouselControl = (CarouselControl)target;
				return;
			case 3:
				this.LoginView = (LoginView)target;
				return;
			case 4:
				this.CreateAccountView = (CreateAccountView)target;
				return;
			case 5:
				this.EmailConfirmationOverlay = (EmailConfirmationView)target;
				return;
			case 6:
				this.ResetPasswordEmailSentOverlay = (ResetPasswordEmailSentView)target;
				return;
			case 7:
				this.ForgotPasswordOverlay = (ForgotPasswordView)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using GoldenFrogUT.Utilities;
using System;
using System.Net;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Properties;
using VyprVPN.Viewmodels;

namespace VyprVPN.Views.OnboardingWindow
{
	public class OnboardingWindowViewModel : VyprViewModel
	{
		public static readonly PropertyData CarouselViewModelProperty = ModelBase.RegisterProperty("CarouselViewModel", typeof(CarouselViewModel), null, null, true, true, true);

		public static readonly PropertyData WindowTitleProperty = ModelBase.RegisterProperty("WindowTitle", typeof(string), null, null, true, true, true);

		public static readonly PropertyData ShowLoginViewProperty = ModelBase.RegisterProperty<bool>("ShowLoginView", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData EmailConfirmationOverlayViewModelProperty = ModelBase.RegisterProperty("EmailConfirmationOverlayViewModel", typeof(EmailConfirmationViewModel), null, null, true, true, true);

		public static readonly PropertyData ForgotPasswordOverlayViewModelProperty = ModelBase.RegisterProperty("ForgotPasswordOverlayViewModel", typeof(ForgotPasswordViewModel), null, null, true, true, true);

		public static readonly PropertyData ResetPasswordEmailSentOverlayViewModelProperty = ModelBase.RegisterProperty("ResetPasswordEmailSentOverlayViewModel", typeof(GenericOverlayViewModel), null, null, true, true, true);

		public static readonly PropertyData ActiveOnboardingViewProperty = ModelBase.RegisterProperty<OnboardingViews>("ActiveOnboardingView", typeof(OnboardingViews), OnboardingViews.CreateAccount, null, true, true, true);

		private IFraudAbuseManager FraudAbuse
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IFraudAbuseManager>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		public CarouselViewModel CarouselViewModel
		{
			get
			{
				return base.GetValue<CarouselViewModel>(OnboardingWindowViewModel.CarouselViewModelProperty);
			}
			set
			{
				base.SetValue(OnboardingWindowViewModel.CarouselViewModelProperty, value);
			}
		}

		public string WindowTitle
		{
			get
			{
				return base.GetValue<string>(OnboardingWindowViewModel.WindowTitleProperty);
			}
			set
			{
				base.SetValue(OnboardingWindowViewModel.WindowTitleProperty, value);
			}
		}

		public bool ShowLoginView
		{
			get
			{
				return base.GetValue<bool>(OnboardingWindowViewModel.ShowLoginViewProperty);
			}
			set
			{
				base.SetValue(OnboardingWindowViewModel.ShowLoginViewProperty, value);
			}
		}

		public EmailConfirmationViewModel EmailConfirmationOverlayViewModel
		{
			get
			{
				return base.GetValue<EmailConfirmationViewModel>(OnboardingWindowViewModel.EmailConfirmationOverlayViewModelProperty);
			}
			set
			{
				base.SetValue(OnboardingWindowViewModel.EmailConfirmationOverlayViewModelProperty, value);
			}
		}

		public ForgotPasswordViewModel ForgotPasswordOverlayViewModel
		{
			get
			{
				return base.GetValue<ForgotPasswordViewModel>(OnboardingWindowViewModel.ForgotPasswordOverlayViewModelProperty);
			}
			set
			{
				base.SetValue(OnboardingWindowViewModel.ForgotPasswordOverlayViewModelProperty, value);
			}
		}

		public GenericOverlayViewModel ResetPasswordEmailSentOverlayViewModel
		{
			get
			{
				return base.GetValue<GenericOverlayViewModel>(OnboardingWindowViewModel.ResetPasswordEmailSentOverlayViewModelProperty);
			}
			set
			{
				base.SetValue(OnboardingWindowViewModel.ResetPasswordEmailSentOverlayViewModelProperty, value);
			}
		}

		public OnboardingViews ActiveOnboardingView
		{
			get
			{
				return base.GetValue<OnboardingViews>(OnboardingWindowViewModel.ActiveOnboardingViewProperty);
			}
			set
			{
				base.SetValue(OnboardingWindowViewModel.ActiveOnboardingViewProperty, value);
			}
		}

		public OnboardingWindowViewModel()
		{
			MessageBase<UIStateChangedMessage, IUIState>.Register(this, new Action<UIStateChangedMessage>(this.OnUIStateChanged), null);
			MessageBase<AccountCreatedMessage, NetworkCredential>.Register(this, new Action<AccountCreatedMessage>(this.OnAccountCreated), null);
			MessageBase<ForgotPasswordLinkMessage, string>.Register(this, new Action<ForgotPasswordLinkMessage>(this.OnForgotPassword), null);
			MessageBase<ResetPasswordEmailSentMessage, string>.Register(this, new Action<ResetPasswordEmailSentMessage>(this.OnResetPasswordEmailSent), null);
			MessageBase<UsernameChangedMessage, string>.Register(this, new Action<UsernameChangedMessage>(this.OnLogin), null);
			this.CarouselViewModel = new CarouselViewModel();
			this.ShowLoginView = (base.VyprVPNController.IsInitialLoginCompleted || this.FraudAbuse.IsFraudAbuseMarkerSet());
			this.WindowTitle = (this.ShowLoginView ? Resources.LoginToVyprVpn : Resources.SignUpForVyprVpn);
			this.resetOnboardingViewState();
		}

		private void OnUIStateChanged(UIStateChangedMessage obj)
		{
			if (obj.get_Data().ActiveScreen == Screen.Login)
			{
				this.ShowLoginView = true;
			}
			else if (obj.get_Data().ActiveScreen == Screen.CreateAccount)
			{
				this.ShowLoginView = false;
			}
			else
			{
				this.ShowLoginView |= ServiceLocatorExtensions.ResolveType<IFraudAbuseManager>(ObjectExtensions.GetServiceLocator(this), null).IsFraudAbuseMarkerSet();
			}
			this.ActiveOnboardingView = obj.get_Data().OnboardingViewState;
		}

		private void OnAccountCreated(AccountCreatedMessage obj)
		{
			this.EmailConfirmationOverlayViewModel = new EmailConfirmationViewModel(obj.get_Data(), new Action(this.resetOnboardingViewState), true);
			ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).OnboardingViewState = OnboardingViews.Confirm;
		}

		private void OnForgotPassword(ForgotPasswordLinkMessage msg)
		{
			this.ForgotPasswordOverlayViewModel = new ForgotPasswordViewModel(new Action(this.resetOnboardingViewState));
			ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).OnboardingViewState = OnboardingViews.ForgotPassword;
		}

		private void OnResetPasswordEmailSent(ResetPasswordEmailSentMessage obj)
		{
			this.ResetPasswordEmailSentOverlayViewModel = new GenericOverlayViewModel(new Action(this.resetOnboardingViewState));
			ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).OnboardingViewState = OnboardingViews.ForgotPasswordSent;
		}

		private void resetOnboardingViewState()
		{
			ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).OnboardingViewState = (this.ShowLoginView ? OnboardingViews.Login : OnboardingViews.CreateAccount);
		}

		private void OnLogin(UsernameChangedMessage msg)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).Dispatch(delegate
			{
				this.ShowLoginView |= this.FraudAbuse.IsFraudAbuseMarkerSet();
				this.resetOnboardingViewState();
			});
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

namespace VyprVPN.Views.OnboardingWindow
{
	public class ResetPasswordEmailSentView : UserControl, IComponentConnector
	{
		internal Button CloseButton;

		internal TextBlock TitleTextBlock;

		internal TextBlock BodyTextBlock;

		private bool _contentLoaded;

		public ResetPasswordEmailSentView()
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/onboardingwindow/forgotpassword/resetpasswordemailsentview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.CloseButton = (Button)target;
				return;
			case 2:
				this.TitleTextBlock = (TextBlock)target;
				return;
			case 3:
				this.BodyTextBlock = (TextBlock)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
