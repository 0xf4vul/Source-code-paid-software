using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages.Profiles
{
	public class Unblock : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Unblock.<>c <>9 = new Unblock.<>c();

			public static SendOrPostCallback <>9__6_2;

			internal void <CallUnblockList>b__6_2(object o)
			{
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
				Navigation.GoHome();
			}
		}

		private static bool _navigatedToUnblock;

		internal Unblock UnblockProfile;

		internal UnblockItemGrid UnblockItemGrid;

		private bool _contentLoaded;

		public Unblock()
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.UnblockItemGrid.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUnblock();
		}

		[AsyncStateMachine(typeof(Unblock.<OnFragmentNavigation>d__2))]
		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
			Unblock.<OnFragmentNavigation>d__2 <OnFragmentNavigation>d__;
			<OnFragmentNavigation>d__.<>4__this = this;
			<OnFragmentNavigation>d__.e = e;
			<OnFragmentNavigation>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnFragmentNavigation>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnFragmentNavigation>d__.<>t__builder;
			<>t__builder.Start<Unblock.<OnFragmentNavigation>d__2>(ref <OnFragmentNavigation>d__);
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			Unblock._navigatedToUnblock = false;
			this.UnblockItemGrid.ListCancellationToken.Cancel(false);
			this.UnblockItemGrid.ListCancellationToken = new CancellationTokenSource();
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.UnblockItemGrid.InitPhase = true;
			this.UnblockItemGrid.CountryCode = HelperFunctions.GetSystemRegionCode();
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUnblock();
			if (!Unblock._navigatedToUnblock)
			{
				this.CallUnblockList(e);
			}
			else if (this.FinalizeUnblockList(e))
			{
				FragmentNavigationEventArgs expr_55 = new FragmentNavigationEventArgs();
				expr_55.set_Fragment(GuiHelper.GetFragment(e.get_Source().ToString()));
				this.OnFragmentNavigation(expr_55);
			}
			ObjectHolder.ConnectionType = "manual";
			ObjectHolder.CurrentProfileTab = "all";
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			this.UnblockItemGrid.ListCancellationToken.Cancel(false);
		}

		public void CallUnblockList(NavigationEventArgs e)
		{
			Unblock.<>c__DisplayClass6_0 expr_05 = new Unblock.<>c__DisplayClass6_0();
			expr_05.<>4__this = this;
			expr_05.e = e;
			if (SettingsHolder.get_Settings().get_ProfileUnblock().UnblockList == null)
			{
				SettingsHolder.get_Settings().get_ProfileUnblock().UnblockList = new CgApiServerContentUrlList();
			}
			Task.Run(delegate
			{
				Unblock.<>c__DisplayClass6_0.<<CallUnblockList>b__0>d <<CallUnblockList>b__0>d;
				<<CallUnblockList>b__0>d.<>4__this = expr_05;
				<<CallUnblockList>b__0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
				<<CallUnblockList>b__0>d.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <<CallUnblockList>b__0>d.<>t__builder;
				<>t__builder.Start<Unblock.<>c__DisplayClass6_0.<<CallUnblockList>b__0>d>(ref <<CallUnblockList>b__0>d);
				return <<CallUnblockList>b__0>d.<>t__builder.Task;
			});
		}

		private bool FinalizeUnblockList(NavigationEventArgs e)
		{
			Unblock._navigatedToUnblock = true;
			if (!e.get_Source().ToString().Contains("#"))
			{
				if (SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedFragment().Equals("region"))
				{
					this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.OwnRegion;
					Navigation.GoToPage("Profiles/Unblock", "region", null);
				}
				if (SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedFragment().Equals("top"))
				{
					this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.Top5;
					Navigation.GoToPage("Profiles/Unblock", "top", null);
				}
				if (SettingsHolder.get_Settings().get_ProfileUnblock().get_SelectedFragment().Equals(""))
				{
					this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.All;
					this.FilterAll();
				}
				return false;
			}
			return true;
		}

		private void FilterAll()
		{
			this.UnblockItemGrid.IsFilterChanged = (this.UnblockItemGrid.CurrentActiveFilter != UnblockItemGrid.UnblockActiveFilter.All);
			this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.All;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Visible;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Visible;
			this.UnblockItemGrid.StartingBuildupContent("", false, false);
			this.UnblockItemGrid.SearchEnabled = true;
			ObjectHolder.CurrentProfileTab = "all";
		}

		private void FilterRegion()
		{
			this.UnblockItemGrid.IsFilterChanged = (this.UnblockItemGrid.CurrentActiveFilter != UnblockItemGrid.UnblockActiveFilter.OwnRegion);
			this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.OwnRegion;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Visible;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Visible;
			this.UnblockItemGrid.StartingBuildupContent("", false, true);
			this.UnblockItemGrid.SearchEnabled = true;
			ObjectHolder.CurrentProfileTab = "own region";
		}

		private void FilterTop5()
		{
			this.UnblockItemGrid.IsFilterChanged = (this.UnblockItemGrid.CurrentActiveFilter != UnblockItemGrid.UnblockActiveFilter.Top5);
			this.UnblockItemGrid.CurrentActiveFilter = UnblockItemGrid.UnblockActiveFilter.Top5;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Visible;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Visible;
			this.UnblockItemGrid.StartingBuildupContent("", true, false);
			this.UnblockItemGrid.SearchEnabled = true;
			ObjectHolder.CurrentProfileTab = "most popular";
		}

		private void UnblockProfile_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			if ((bool)e.NewValue)
			{
				this.UnblockItemGrid.FocusOnSearchText();
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/unblock.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.UnblockProfile = (Unblock)target;
				this.UnblockProfile.IsVisibleChanged += new DependencyPropertyChangedEventHandler(this.UnblockProfile_IsVisibleChanged);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.UnblockItemGrid = (UnblockItemGrid)target;
		}
	}
}
