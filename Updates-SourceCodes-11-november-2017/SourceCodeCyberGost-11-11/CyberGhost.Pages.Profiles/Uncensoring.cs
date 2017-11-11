using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using System;
using System.CodeDom.Compiler;
using System.Collections.ObjectModel;
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
	public class Uncensoring : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Uncensoring.<>c <>9 = new Uncensoring.<>c();

			public static SendOrPostCallback <>9__10_2;

			internal void <CallUnblockList>b__10_2(object o)
			{
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.MainWindow.ServiceNotAvailable_Service_not_reachable, CyberGhost.Translations.MainWindow.Please_ensure_you_ve_a_working_internet_connection_and_retr);
				Navigation.GoHome();
			}
		}

		internal UnblockItemGrid UnblockItemGrid;

		private bool _contentLoaded;

		public ObservableCollection<UnblockItem> UnblockItems
		{
			get;
			set;
		}

		public Uncensoring()
		{
			this.InitializeComponent();
			this.UnblockItemGrid.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUncensoring();
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.ListCancellationToken = new CancellationTokenSource();
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			this.UnblockItemGrid.InitPhase = true;
			ObjectHolder.MainForm.set_IsNavigationVisible(true);
			ObjectHolder.CurrentProfile = SettingsHolder.get_Settings().get_ProfileUncensoring();
			this.CallUnblockList();
			ObjectHolder.ConnectionType = "manual";
			ObjectHolder.CurrentProfileTab = "none";
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			this.UnblockItemGrid.ListCancellationToken.Cancel(false);
		}

		private void FilterAll()
		{
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Visible;
			this.UnblockItemGrid.StartingBuildupContent("", false, false);
			this.UnblockItemGrid.LoadingRing.Visibility = Visibility.Hidden;
			this.UnblockItemGrid.SearchText.IsEnabled = true;
			this.UnblockItemGrid.UnblockDataGrid.Visibility = Visibility.Visible;
		}

		private void CallUnblockList()
		{
			if (SettingsHolder.get_Settings().get_ProfileUncensoring().UnblockList == null)
			{
				SettingsHolder.get_Settings().get_ProfileUncensoring().UnblockList = new CgApiServerContentUrlList();
			}
			Task.Run(delegate
			{
				Uncensoring.<<CallUnblockList>b__10_0>d <<CallUnblockList>b__10_0>d;
				<<CallUnblockList>b__10_0>d.<>4__this = this;
				<<CallUnblockList>b__10_0>d.<>t__builder = AsyncTaskMethodBuilder.Create();
				<<CallUnblockList>b__10_0>d.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <<CallUnblockList>b__10_0>d.<>t__builder;
				<>t__builder.Start<Uncensoring.<<CallUnblockList>b__10_0>d>(ref <<CallUnblockList>b__10_0>d);
				return <<CallUnblockList>b__10_0>d.<>t__builder.Task;
			});
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/uncensoring.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.UnblockItemGrid = (UnblockItemGrid)target;
				return;
			}
			this._contentLoaded = true;
		}
	}
}
