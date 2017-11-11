using CyberGhost.Helpers;
using CyberGhost.Settings;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
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
	public class PlanChanged : UserControl, IComponentConnector, IContent
	{
		internal Image GhostyImage;

		internal TextBlock ActivePlan;

		internal Button CmdOkLogin;

		private bool _contentLoaded;

		public PlanChanged()
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
				if (ObjectHolder.CurrentUser != null)
				{
					string text = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_DisplaynameLocalization().get_Strings()[SettingsHolder.get_Settings().get_Language()];
					if (string.IsNullOrEmpty(text))
					{
						text = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_DisplaynameLocalization().get_Strings()["en"];
					}
					if (string.IsNullOrEmpty(text))
					{
						text = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_InternalName();
					}
					this.ActivePlan.Text = text;
				}
			}
			catch (Exception)
			{
				if (ObjectHolder.CurrentUser != null)
				{
					this.ActivePlan.Text = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_InternalName();
				}
			}
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private void ok_Click(object sender, RoutedEventArgs e)
		{
			Navigation.HideMessageOverlay(true);
			Navigation.GoHome();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/alerts/planchanged.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.GhostyImage = (Image)target;
				return;
			case 2:
				this.ActivePlan = (TextBlock)target;
				return;
			case 3:
				this.CmdOkLogin = (Button)target;
				this.CmdOkLogin.Click += new RoutedEventHandler(this.ok_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
