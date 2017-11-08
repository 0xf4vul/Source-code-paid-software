using Catel.IoC;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace VyprVPN.Views.PaymentMethodExpiredDialog
{
	public class PaymentMethodExpiredDialog : Window, IComponentConnector
	{
		public static readonly DependencyProperty ManageAccountCommandProperty = DependencyProperty.Register("ManageAccountCommand", typeof(RoutedCommand), typeof(PaymentMethodExpiredDialog), new PropertyMetadata(new RoutedCommand()));

		public static readonly DependencyProperty CloseCommandProperty = DependencyProperty.Register("CloseCommand", typeof(RoutedCommand), typeof(PaymentMethodExpiredDialog), new PropertyMetadata(new RoutedCommand()));

		internal PaymentMethodExpiredDialog PaymentMethodExpiredDialogWindow;

		internal Button ManageAccountButton;

		internal Button CloseButton;

		private bool _contentLoaded;

		public RoutedCommand ManageAccountCommand
		{
			get
			{
				return (RoutedCommand)base.GetValue(PaymentMethodExpiredDialog.ManageAccountCommandProperty);
			}
			set
			{
				base.SetValue(PaymentMethodExpiredDialog.ManageAccountCommandProperty, value);
			}
		}

		public RoutedCommand CloseCommand
		{
			get
			{
				return (RoutedCommand)base.GetValue(PaymentMethodExpiredDialog.CloseCommandProperty);
			}
			set
			{
				base.SetValue(PaymentMethodExpiredDialog.CloseCommandProperty, value);
			}
		}

		public PaymentMethodExpiredDialog()
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			base.DataContext = this;
			base.CommandBindings.Add(new CommandBinding(this.ManageAccountCommand, new ExecutedRoutedEventHandler(this.ManageAccountExecuted)));
			base.CommandBindings.Add(new CommandBinding(this.CloseCommand, new ExecutedRoutedEventHandler(this.CloseExecuted)));
		}

		private void CloseExecuted(object sender, ExecutedRoutedEventArgs e)
		{
			base.DialogResult = new bool?(false);
			base.Close();
		}

		private void ManageAccountExecuted(object sender, ExecutedRoutedEventArgs e)
		{
			base.DialogResult = new bool?(true);
			base.Close();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/paymentmethodexpireddialog/paymentmethodexpireddialog.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.PaymentMethodExpiredDialogWindow = (PaymentMethodExpiredDialog)target;
				return;
			case 2:
				this.ManageAccountButton = (Button)target;
				return;
			case 3:
				this.CloseButton = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
