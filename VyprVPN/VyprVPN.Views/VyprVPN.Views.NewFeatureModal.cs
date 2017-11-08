using Catel.IoC;
using Catel.Messaging;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using VyprVPN.Messages;

namespace VyprVPN.Views.NewFeatureModal
{
	public class NewFeatureModalView : Window, IDisposable, IComponentConnector
	{
		private bool isDisposed;

		internal NewFeatureModalView NewFeatureModal;

		internal Button SecondaryButton;

		internal Button PrimaryButton;

		private bool _contentLoaded;

		static NewFeatureModalView()
		{
			FrameworkElement.TagProperty.OverrideMetadata(typeof(NewFeatureModalView), new FrameworkPropertyMetadata(null, new PropertyChangedCallback(NewFeatureModalView.OnTagChanged)));
		}

		public NewFeatureModalView()
		{
			this.InitializeComponent();
			if (!DesignerProperties.GetIsInDesignMode(this))
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			}
			MessageBase<NewFeatureModalCloseWindowMessage, object>.Register(this, new Action<NewFeatureModalCloseWindowMessage>(this.DispatchClose), base.Tag);
		}

		private static void OnTagChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
		{
			if (d is NewFeatureModalView)
			{
				NewFeatureModalView newFeatureModalView = (NewFeatureModalView)d;
				MessageBase<NewFeatureModalCloseWindowMessage, object>.Unregister(newFeatureModalView, new Action<NewFeatureModalCloseWindowMessage>(newFeatureModalView.DispatchClose), e.OldValue);
				MessageBase<NewFeatureModalCloseWindowMessage, object>.Register(newFeatureModalView, new Action<NewFeatureModalCloseWindowMessage>(newFeatureModalView.DispatchClose), e.NewValue);
			}
		}

		private void DispatchClose(NewFeatureModalCloseWindowMessage msg)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).Dispatch(new Action(base.Close));
		}

		private void NewFeatureModal_Closed(object sender, EventArgs e)
		{
			MessageBase<NewFeatureModalClosedWindowMessage, object>.SendWith(this, base.Tag);
		}

		protected virtual void Dispose(bool disposing)
		{
			if (!this.isDisposed)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).Dispatch(delegate
				{
					MessageBase<NewFeatureModalCloseWindowMessage, object>.Unregister(this, new Action<NewFeatureModalCloseWindowMessage>(this.DispatchClose), base.Tag);
					MessageBase<NewFeatureModalCloseWindowMessage, object>.Unregister(this, new Action<NewFeatureModalCloseWindowMessage>(this.DispatchClose), null);
				});
				this.isDisposed = true;
			}
		}

		public void Dispose()
		{
			this.Dispose(true);
			GC.SuppressFinalize(this);
		}

		~NewFeatureModalView()
		{
			this.Dispose(false);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/newfeaturemodal/newfeaturemodalview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.NewFeatureModal = (NewFeatureModalView)target;
				this.NewFeatureModal.Closed += new EventHandler(this.NewFeatureModal_Closed);
				return;
			case 2:
				this.SecondaryButton = (Button)target;
				return;
			case 3:
				this.PrimaryButton = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
