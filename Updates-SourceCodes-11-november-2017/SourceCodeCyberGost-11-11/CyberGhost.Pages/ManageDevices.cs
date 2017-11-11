using CyberGhost.Annotations;
using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.MCTile;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;

namespace CyberGhost.Pages
{
	public class ManageDevices : UserControl, IComponentConnector, INotifyPropertyChanged, IContent
	{
		private string _headingText;

		internal Grid ManageDevicesGrid;

		internal Grid GridHeadLine;

		internal TextBlock HeadingTextBlock;

		internal TextBlock LogoutTextBlock;

		internal TileContainer DeviceTileControl;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		private Uri _iosLogoUri
		{
			get;
			set;
		}

		private Uri _macosLogoUri
		{
			get;
			set;
		}

		private Uri _windowsLogoUri
		{
			get;
			set;
		}

		private Uri _androidLogoUri
		{
			get;
			set;
		}

		private Uri _otherLogoUri
		{
			get;
			set;
		}

		public string HeadingText
		{
			get
			{
				return this._headingText;
			}
			set
			{
				if (string.Compare(this._headingText, value, StringComparison.OrdinalIgnoreCase) == 0)
				{
					return;
				}
				this._headingText = value;
				this.OnPropertyChanged("HeadingText");
			}
		}

		public ManageDevices()
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.InitIcons();
		}

		private void InitIcons()
		{
			this._iosLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\ios.png"));
			this._macosLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\macos.png"));
			this._windowsLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\windows.png"));
			this._androidLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\android.png"));
			this._otherLogoUri = new Uri(Theming.GetThemedImage("Icons\\DeviceTabs\\custom.png"));
		}

		private void CreateTiles()
		{
			this.DeviceTileControl.TileButtons.Clear();
			if (ObjectHolder.CurrentUser == null)
			{
				return;
			}
			TileButton expr_1D = new TileButton();
			expr_1D.Tag = "ios";
			expr_1D.Content = CyberGhost.Translations.Home.HeadlineManageDevicesIos;
			expr_1D.set_TileDescription(CyberGhost.Translations.Home.ContentManageDevicesIos);
			expr_1D.set_TileImageSource(this._iosLogoUri);
			expr_1D.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_1D.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_1D.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton = expr_1D;
			tileButton.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton);
			TileButton expr_B5 = new TileButton();
			expr_B5.Tag = "macos";
			expr_B5.Content = CyberGhost.Translations.Home.HeadlineManageDeviceMacOs;
			expr_B5.set_TileDescription(CyberGhost.Translations.Home.ContentManageDeviceMacOs);
			expr_B5.set_TileImageSource(this._macosLogoUri);
			expr_B5.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_B5.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_B5.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton2 = expr_B5;
			tileButton2.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton2);
			TileButton expr_14D = new TileButton();
			expr_14D.Tag = "windows";
			expr_14D.Content = CyberGhost.Translations.Home.HeadlineManageDeviceWin;
			expr_14D.set_TileDescription(CyberGhost.Translations.Home.ContentManageDeviceWin);
			expr_14D.set_TileImageSource(this._windowsLogoUri);
			expr_14D.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_14D.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_14D.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton3 = expr_14D;
			tileButton3.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton3);
			TileButton expr_1E5 = new TileButton();
			expr_1E5.Tag = "android";
			expr_1E5.Content = CyberGhost.Translations.Home.HeadlineManageDeviceAndroid;
			expr_1E5.set_TileDescription(CyberGhost.Translations.Home.ContentManageDeviceAndroid);
			expr_1E5.set_TileImageSource(this._androidLogoUri);
			expr_1E5.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_1E5.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_1E5.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton4 = expr_1E5;
			tileButton4.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton4);
			TileButton expr_27D = new TileButton();
			expr_27D.Tag = "custom";
			expr_27D.Content = CyberGhost.Translations.Home.HeadlineManageDeviceLinux;
			expr_27D.set_TileDescription(CyberGhost.Translations.Home.ContentManageDeviceLinux);
			expr_27D.set_TileImageSource(this._otherLogoUri);
			expr_27D.set_TileBaseColor((Color)base.FindResource("DeviceTileBackgroundColor"));
			expr_27D.set_TileGradientColor((Color)base.FindResource("DeviceTileBackgroundGradient"));
			expr_27D.set_ImageStyle(base.FindResource("DeviceTileImage") as Style);
			TileButton tileButton5 = expr_27D;
			tileButton5.Click += new RoutedEventHandler(this.OsTile_Click);
			this.DeviceTileControl.TileButtons.Add(tileButton5);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			int maxDevices = ObjectHolder.CurrentUser.get_Subscription().get_Product().get_Plan().get_MaxDevices();
			int activatedDevices = ObjectHolder.CurrentUser.get_ActivatedDevices();
			this.HeadingText = string.Format(CyberGhost.Translations.Home.ManageDevices_Info_Subscription_And_Activated_Devices, maxDevices, activatedDevices);
			if (maxDevices > activatedDevices)
			{
				this.HeadingText += Environment.NewLine;
				this.HeadingText += CyberGhost.Translations.Home.ManageDevices_Query_DeviceTypeActivation;
			}
			this.CreateTiles();
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		private async void OsTile_Click(object sender, RoutedEventArgs e)
		{
			string arg = ((TileButton)sender).Tag.ToString();
			await Helper.OpenAuthLink(string.Format("go_account_add_devices_{0}", arg), false, null, false, null);
		}

		private async void LogoutTextBlock_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
		{
			await ObjectHolder.MainForm.OpenLogin();
		}

		[NotifyPropertyChangedInvocator]
		protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChangedEventHandler expr_06 = this.PropertyChanged;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, new PropertyChangedEventArgs(propertyName));
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/managedevices.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ManageDevicesGrid = (Grid)target;
				return;
			case 2:
				this.GridHeadLine = (Grid)target;
				return;
			case 3:
				this.HeadingTextBlock = (TextBlock)target;
				return;
			case 4:
				this.LogoutTextBlock = (TextBlock)target;
				this.LogoutTextBlock.MouseLeftButtonDown += new MouseButtonEventHandler(this.LogoutTextBlock_MouseLeftButtonDown);
				return;
			case 5:
				this.DeviceTileControl = (TileContainer)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
