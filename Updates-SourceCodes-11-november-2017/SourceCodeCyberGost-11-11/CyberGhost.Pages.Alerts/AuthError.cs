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
	public class AuthError : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		internal Button CmdOkLogin;

		private bool _contentLoaded;

		public AuthError()
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
				Toaster.ShowError(ObjectHolder.MainForm, Status.Status_Head_CyberGhost_6, Status.status_seems, 1, 0, 10.0);
			}
			catch (Exception ex)
			{
				LogHelper.LogMessage(string.Format("COULD NOT SHOW TOASTER {0}", ex.Message));
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void ok_Click(object sender, RoutedEventArgs e)
		{
			ObjectHolder.MainForm.Disconnect();
			Navigation.HideMessageOverlay(true);
			Navigation.GoHome();
			Theming.CurrentThemeSet = Theming.ThemeSet.Regular;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/autherror.xaml", UriKind.Relative);
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
			this.CmdOkLogin = (Button)target;
			this.CmdOkLogin.Click += new RoutedEventHandler(this.ok_Click);
		}
	}
}
