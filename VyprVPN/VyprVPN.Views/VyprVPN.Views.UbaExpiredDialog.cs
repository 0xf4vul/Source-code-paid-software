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

namespace VyprVPN.Views.UbaExpiredDialog
{
	public class UbaExpiredDialog : Window, IComponentConnector
	{
		public static readonly DependencyProperty TotalUsageProperty = DependencyProperty.Register("TotalUsage", typeof(string), typeof(UbaExpiredDialog));

		public static readonly DependencyProperty UpgradeCommandProperty = DependencyProperty.Register("UpgradeCommand", typeof(RoutedCommand), typeof(UbaExpiredDialog), new PropertyMetadata(new RoutedCommand()));

		public static readonly DependencyProperty CloseCommandProperty = DependencyProperty.Register("CloseCommand", typeof(RoutedCommand), typeof(UbaExpiredDialog), new PropertyMetadata(new RoutedCommand()));

		internal UbaExpiredDialog UbaExpiredDialogWindow;

		internal Button UpgradeButton;

		internal Button CloseButton;

		private bool _contentLoaded;

		public string TotalUsage
		{
			get
			{
				return (string)base.GetValue(UbaExpiredDialog.TotalUsageProperty);
			}
			set
			{
				base.SetValue(UbaExpiredDialog.TotalUsageProperty, value);
			}
		}

		public RoutedCommand UpgradeCommand
		{
			get
			{
				return (RoutedCommand)base.GetValue(UbaExpiredDialog.UpgradeCommandProperty);
			}
			set
			{
				base.SetValue(UbaExpiredDialog.UpgradeCommandProperty, value);
			}
		}

		public RoutedCommand CloseCommand
		{
			get
			{
				return (RoutedCommand)base.GetValue(UbaExpiredDialog.CloseCommandProperty);
			}
			set
			{
				base.SetValue(UbaExpiredDialog.CloseCommandProperty, value);
			}
		}

		public UbaExpiredDialog()
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		public UbaExpiredDialog(ulong usageMax, string usageDataType)
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.TotalUsage = string.Concat(new object[]
			{
				usageMax,
				" ",
				usageDataType,
				". "
			});
			base.CommandBindings.Add(new CommandBinding(this.UpgradeCommand, new ExecutedRoutedEventHandler(this.UpgradeExecuted)));
			base.CommandBindings.Add(new CommandBinding(this.CloseCommand, new ExecutedRoutedEventHandler(this.CloseExecuted)));
		}

		private void CloseExecuted(object sender, ExecutedRoutedEventArgs e)
		{
			base.DialogResult = new bool?(false);
			base.Close();
		}

		private void UpgradeExecuted(object sender, ExecutedRoutedEventArgs e)
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/ubaexpireddialog/ubaexpireddialog.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.UbaExpiredDialogWindow = (UbaExpiredDialog)target;
				return;
			case 2:
				this.UpgradeButton = (Button)target;
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
