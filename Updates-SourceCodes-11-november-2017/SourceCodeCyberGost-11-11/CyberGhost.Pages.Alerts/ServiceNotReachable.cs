using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using netoaster;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages.Alerts
{
	public class ServiceNotReachable : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		private bool _contentLoaded;

		public ServiceNotReachable()
		{
			this.InitializeComponent();
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.GhostyImage.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Background\\medic.png")));
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			try
			{
				Toaster.ShowError(ObjectHolder.MainForm, Status.Status_Head_CyberGhost_6, General.Splash_InitTheInit_Service_not_reachable, 1, 0, 10.0);
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void retry_Click(object sender, RoutedEventArgs e)
		{
			Navigation.HideMessageOverlay(true);
			ObjectHolder.MainForm.Disconnect();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/servicenotreachable.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GhostyImage = (Image)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			((Button)target).Click += new RoutedEventHandler(this.retry_Click);
		}
	}
}
