using GalaSoft.MvvmLight.CommandWpf;
using NordVpn.Application;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace NordVpn.Auth.ViewModels
{
	public class AuthViewModel : AppScreen
	{
		private bool _loaded;

		public LoginViewModel LoginViewModel
		{
			[CompilerGenerated]
			get
			{
				return this.<LoginViewModel>k__BackingField;
			}
		}

		public RegisterViewModel RegisterViewModel
		{
			[CompilerGenerated]
			get
			{
				return this.<RegisterViewModel>k__BackingField;
			}
		}

		public bool Loaded
		{
			get
			{
				return this._loaded;
			}
			set
			{
				base.Set<bool>(ref this._loaded, value, "Loaded");
			}
		}

		public ICommand ToggleView
		{
			[CompilerGenerated]
			get
			{
				return this.<ToggleView>k__BackingField;
			}
		}

		public AuthViewModel(LoginViewModel loginViewModel, RegisterViewModel registerViewModel)
		{
			this.<LoginViewModel>k__BackingField = loginViewModel;
			this.<RegisterViewModel>k__BackingField = registerViewModel;
			this.<ToggleView>k__BackingField = new RelayCommand(new Action(this.ToggleBetweenLoginAndRegistration));
		}

		public void InitializeLoginView()
		{
			this.Loaded = true;
			this.LoginViewModel.Show = true;
			this.RegisterViewModel.Show = false;
		}

		private void ToggleBetweenLoginAndRegistration()
		{
			this.LoginViewModel.Show = !this.LoginViewModel.Show;
			this.RegisterViewModel.Show = !this.RegisterViewModel.Show;
		}
	}
}
