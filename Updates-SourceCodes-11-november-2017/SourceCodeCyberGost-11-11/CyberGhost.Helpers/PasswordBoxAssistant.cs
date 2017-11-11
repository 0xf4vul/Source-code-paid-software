using System;
using System.Windows;
using System.Windows.Controls;

namespace CyberGhost.Helpers
{
	public static class PasswordBoxAssistant
	{
		public static readonly DependencyProperty BoundPassword = DependencyProperty.RegisterAttached("BoundPassword", typeof(string), typeof(PasswordBoxAssistant), new PropertyMetadata(string.Empty, new PropertyChangedCallback(PasswordBoxAssistant.OnBoundPasswordChanged)));

		public static readonly DependencyProperty BindPassword = DependencyProperty.RegisterAttached("BindPassword", typeof(bool), typeof(PasswordBoxAssistant), new PropertyMetadata(false, new PropertyChangedCallback(PasswordBoxAssistant.OnBindPasswordChanged)));

		private static readonly DependencyProperty UpdatingPassword = DependencyProperty.RegisterAttached("UpdatingPassword", typeof(bool), typeof(PasswordBoxAssistant), new PropertyMetadata(false));

		private static void OnBoundPasswordChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
		{
			PasswordBox passwordBox = d as PasswordBox;
			if (d != null && PasswordBoxAssistant.GetBindPassword(d))
			{
				if (passwordBox != null)
				{
					passwordBox.PasswordChanged -= new RoutedEventHandler(PasswordBoxAssistant.HandlePasswordChanged);
					string password = (string)e.NewValue;
					if (!PasswordBoxAssistant.GetUpdatingPassword(passwordBox))
					{
						passwordBox.Password = password;
					}
					passwordBox.PasswordChanged += new RoutedEventHandler(PasswordBoxAssistant.HandlePasswordChanged);
				}
				return;
			}
		}

		private static void OnBindPasswordChanged(DependencyObject dp, DependencyPropertyChangedEventArgs e)
		{
			PasswordBox passwordBox = dp as PasswordBox;
			if (passwordBox == null)
			{
				return;
			}
			bool arg_24_0 = (bool)e.OldValue;
			bool flag = (bool)e.NewValue;
			if (arg_24_0)
			{
				passwordBox.PasswordChanged -= new RoutedEventHandler(PasswordBoxAssistant.HandlePasswordChanged);
			}
			if (flag)
			{
				passwordBox.PasswordChanged += new RoutedEventHandler(PasswordBoxAssistant.HandlePasswordChanged);
			}
		}

		private static void HandlePasswordChanged(object sender, RoutedEventArgs e)
		{
			PasswordBox passwordBox = sender as PasswordBox;
			PasswordBoxAssistant.SetUpdatingPassword(passwordBox, true);
			if (passwordBox != null)
			{
				PasswordBoxAssistant.SetBoundPassword(passwordBox, passwordBox.Password);
				PasswordBoxAssistant.SetUpdatingPassword(passwordBox, false);
			}
		}

		public static void SetBindPassword(DependencyObject dp, bool value)
		{
			dp.SetValue(PasswordBoxAssistant.BindPassword, value);
		}

		public static bool GetBindPassword(DependencyObject dp)
		{
			return (bool)dp.GetValue(PasswordBoxAssistant.BindPassword);
		}

		public static string GetBoundPassword(DependencyObject dp)
		{
			return (string)dp.GetValue(PasswordBoxAssistant.BoundPassword);
		}

		public static void SetBoundPassword(DependencyObject dp, string value)
		{
			dp.SetValue(PasswordBoxAssistant.BoundPassword, value);
		}

		private static bool GetUpdatingPassword(DependencyObject dp)
		{
			return (bool)dp.GetValue(PasswordBoxAssistant.UpdatingPassword);
		}

		private static void SetUpdatingPassword(DependencyObject dp, bool value)
		{
			dp.SetValue(PasswordBoxAssistant.UpdatingPassword, value);
		}
	}
}
