using NordVpn.Auth.ViewModels;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;

namespace NordVpn.Auth.Views
{
	public class Login : UserControl, IComponentConnector
	{
		internal Login UserControl;

		internal Grid MainGrid;

		internal TextBox LoginInput;

		internal TextBox PasswordText;

		internal PasswordBox PasswordInput;

		internal Image ImgShowHide;

		internal Button LoginButton;

		private bool _contentLoaded;

		public Login()
		{
			this.InitializeComponent();
		}

		protected override void OnRender(DrawingContext drawingContext)
		{
			base.OnRender(drawingContext);
			this.LoginInput.Focus();
		}

		private void PasswordInput_PasswordChanged(object sender, RoutedEventArgs e)
		{
			PasswordBox passwordBox = sender as PasswordBox;
			if (passwordBox != null)
			{
				passwordBox.Tag = (passwordBox.Password.Length > 0).ToString();
			}
			if (passwordBox.Password.Length > 0)
			{
				this.ImgShowHide.Visibility = Visibility.Visible;
				return;
			}
			this.ImgShowHide.Visibility = Visibility.Hidden;
		}

		private void PasswordInput_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Key != Key.Return && e.Key != Key.Return)
			{
				return;
			}
			LoginViewModel loginViewModel = (LoginViewModel)base.DataContext;
			if (loginViewModel.Login.CanExecute(this.PasswordInput))
			{
				loginViewModel.Login.Execute(this.PasswordInput);
			}
		}

		private void ShowPassword()
		{
			this.PasswordInput.Visibility = Visibility.Hidden;
			this.PasswordText.Text = this.PasswordInput.Password;
			this.PasswordText.Visibility = Visibility.Visible;
		}

		private void HidePassword()
		{
			this.PasswordInput.Visibility = Visibility.Visible;
			this.PasswordText.Visibility = Visibility.Hidden;
		}

		private void ImgShowHide_PreviewMouseDown(object sender, MouseEventArgs e)
		{
			this.ShowPassword();
		}

		private void ImgShowHide_MouseLeave(object sender, MouseEventArgs e)
		{
			this.HidePassword();
		}

		private void ImgShowHide_PreviewMouseUp(object sender, MouseEventArgs e)
		{
			this.HidePassword();
		}

		private void PasswordInput_GotFocus(object sender, RoutedEventArgs e)
		{
			PasswordBox expr_06 = sender as PasswordBox;
			if (expr_06 == null)
			{
				return;
			}
			expr_06.SelectAll();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/NordVPN;component/auth/views/login.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.UserControl = (Login)target;
				return;
			case 2:
				this.MainGrid = (Grid)target;
				return;
			case 3:
				this.LoginInput = (TextBox)target;
				return;
			case 4:
				this.PasswordText = (TextBox)target;
				return;
			case 5:
				this.PasswordInput = (PasswordBox)target;
				this.PasswordInput.PasswordChanged += new RoutedEventHandler(this.PasswordInput_PasswordChanged);
				this.PasswordInput.GotFocus += new RoutedEventHandler(this.PasswordInput_GotFocus);
				this.PasswordInput.KeyDown += new KeyEventHandler(this.PasswordInput_KeyDown);
				return;
			case 6:
				this.ImgShowHide = (Image)target;
				this.ImgShowHide.MouseLeave += new MouseEventHandler(this.ImgShowHide_MouseLeave);
				this.ImgShowHide.PreviewMouseDown += new MouseButtonEventHandler(this.ImgShowHide_PreviewMouseDown);
				this.ImgShowHide.PreviewMouseUp += new MouseButtonEventHandler(this.ImgShowHide_PreviewMouseUp);
				return;
			case 7:
				this.LoginButton = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
