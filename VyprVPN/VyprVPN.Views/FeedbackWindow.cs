using Catel.IoC;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Markup;
using VyprVPN.ViewModels;

namespace VyprVPN.Views.FeedbackDialogs
{
	public class FeedbackWindow : Window, IComponentConnector
	{
		internal FeedbackWindow FeedbackWindowDialog;

		private bool _contentLoaded;

		public FeedbackWindow()
		{
			try
			{
				this.InitializeComponent();
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			}
			catch (InvalidOperationException)
			{
				FileLogger.get_Instance().Log(3, "Failed to initialize FeedbackWindow");
			}
		}

		public FeedbackWindow(FeedbackViewModel vm)
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			base.DataContext = vm;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/feedbackdialog/feedbackwindow.xaml", UriKind.Relative);
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
			if (connectionId == 1)
			{
				this.FeedbackWindowDialog = (FeedbackWindow)target;
				return;
			}
			this._contentLoaded = true;
		}
	}
}
