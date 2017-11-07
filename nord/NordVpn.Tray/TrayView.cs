using Caliburn.Micro;
using Hardcodet.Wpf.TaskbarNotification;
using NordVpn.Expiration;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Markup;

namespace NordVpn.Tray
{
	public class TrayView : TaskbarIcon, IComponentConnector
	{
		private bool _contentLoaded;

		public TrayView()
		{
			base.DataContext = ViewModelLocator.LocateForView(this);
			this.InitializeComponent();
			base.Loaded += new RoutedEventHandler(this.OnLoaded);
		}

		private void OnLoaded(object sender, RoutedEventArgs e)
		{
			TrayViewModel viewModel = (TrayViewModel)base.DataContext;
			viewModel.TrayNotificationRequested += new EventHandler<TrayNotificationEventArgs>(this.OnTrayNotificationRequested);
			viewModel.PopupNotificationRequested += new EventHandler(this.OnPopupNotificationRequested);
			viewModel.PopupCloseRequested += new EventHandler(this.OnPopupCloseRequested);
			base.add_TrayBalloonTipClicked(delegate(object o, RoutedEventArgs args)
			{
				viewModel.ActivateApp();
			});
			base.Loaded -= new RoutedEventHandler(this.OnLoaded);
		}

		private void OnTrayNotificationRequested(object sender, TrayNotificationEventArgs e)
		{
			base.ShowBalloonTip(e.Title, e.Message, 1);
		}

		private void OnPopupNotificationRequested(object sender, EventArgs e)
		{
			ExpiredMembershipTrayNotificationView expiredMembershipTrayNotificationView = new ExpiredMembershipTrayNotificationView();
			IScreen screen = (IScreen)ViewModelLocator.LocateForView(expiredMembershipTrayNotificationView);
			expiredMembershipTrayNotificationView.DataContext = screen;
			screen.Activate();
			base.ShowCustomBalloon(expiredMembershipTrayNotificationView, PopupAnimation.Fade, null);
		}

		private void OnPopupCloseRequested(object sender, EventArgs e)
		{
			base.CloseBalloon();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/NordVPN;component/tray/trayview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			this._contentLoaded = true;
		}
	}
}
