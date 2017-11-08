using Catel.IoC;
using Catel.Windows;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Markup;
using VyprVPN.Properties;

namespace VyprVPN.Views.PreferencesWindow.Connection
{
	public class ConfigureKillSwitchDialogView : DataWindow, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ConfigureKillSwitchDialogView.<>c <>9 = new ConfigureKillSwitchDialogView.<>c();

			public static Func<bool> <>9__0_0;

			public static Func<bool> <>9__0_1;

			internal bool ctor>b__0_0()
			{
				return true;
			}

			internal bool ctor>b__0_1()
			{
				return true;
			}
		}

		private bool _contentLoaded;

		public ConfigureKillSwitchDialogView() : base(3, null, 0, true, 1)
		{
			string arg_3C_0 = Resources.OK;
			Action arg_3C_1 = new Action(this.CustomExecuteOk);
			Func<bool> arg_3C_2;
			if ((arg_3C_2 = ConfigureKillSwitchDialogView.<>c.<>9__0_0) == null)
			{
				arg_3C_2 = (ConfigureKillSwitchDialogView.<>c.<>9__0_0 = new Func<bool>(ConfigureKillSwitchDialogView.<>c.<>9.<.ctor>b__0_0));
			}
			base.AddCustomButton(new DataWindowButton(arg_3C_0, arg_3C_1, arg_3C_2));
			string arg_77_0 = Resources.Cancel;
			Action arg_77_1 = new Action(base.ExecuteCancel);
			Func<bool> arg_77_2;
			if ((arg_77_2 = ConfigureKillSwitchDialogView.<>c.<>9__0_1) == null)
			{
				arg_77_2 = (ConfigureKillSwitchDialogView.<>c.<>9__0_1 = new Func<bool>(ConfigureKillSwitchDialogView.<>c.<>9.<.ctor>b__0_1));
			}
			base.AddCustomButton(new DataWindowButton(arg_77_0, arg_77_1, arg_77_2));
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		private void CustomExecuteOk()
		{
			ConfigureKillSwitchDialogViewModel configureKillSwitchDialogViewModel = base.get_ViewModel() as ConfigureKillSwitchDialogViewModel;
			if (configureKillSwitchDialogViewModel != null)
			{
				configureKillSwitchDialogViewModel.ApplyChanges();
			}
			base.ExecuteClose();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/connection/configurekillswitchdialogview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			this._contentLoaded = true;
		}
	}
}

using Catel.Data;
using Catel.IoC;
using GoldenFrogVPN.Enums;
using System;
using VyprVPN.Classes;

namespace VyprVPN.Views.PreferencesWindow.Connection
{
	public class ConfigureKillSwitchDialogViewModel : VyprViewModel
	{
		public static readonly PropertyData KillSwitchModeProperty = ModelBase.RegisterProperty("KillSwitchMode", typeof(KillSwitchModeEnum), null, null, true, true, true);

		public static readonly PropertyData KillLanTrafficEnabledProperty = ModelBase.RegisterProperty("KillLanTrafficEnabled", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		public KillSwitchModeEnum KillSwitchMode
		{
			get
			{
				return base.GetValue<KillSwitchModeEnum>(ConfigureKillSwitchDialogViewModel.KillSwitchModeProperty);
			}
			set
			{
				base.SetValue(ConfigureKillSwitchDialogViewModel.KillSwitchModeProperty, value);
			}
		}

		public bool KillLanTrafficEnabled
		{
			get
			{
				return base.GetValue<bool>(ConfigureKillSwitchDialogViewModel.KillLanTrafficEnabledProperty);
			}
			set
			{
				base.SetValue(ConfigureKillSwitchDialogViewModel.KillLanTrafficEnabledProperty, value);
			}
		}

		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(ConfigureKillSwitchDialogViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(ConfigureKillSwitchDialogViewModel.PreferencesModelProperty, value);
			}
		}

		public ConfigureKillSwitchDialogViewModel()
		{
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			if (this.PreferencesModel != null)
			{
				this.KillSwitchMode = this.PreferencesModel.KillSwitchMode;
				this.KillLanTrafficEnabled = this.PreferencesModel.KillLanTrafficEnabled;
			}
		}

		public void ApplyChanges()
		{
			if (this.PreferencesModel != null)
			{
				this.PreferencesModel.KillSwitchMode = this.KillSwitchMode;
				this.PreferencesModel.KillLanTrafficEnabled = this.KillLanTrafficEnabled;
			}
		}
	}
}

using Catel.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace VyprVPN.Views.PreferencesWindow.Connection
{
	public class ConnectionView : UserControl, IComponentConnector
	{
		internal ScrollViewer ConnectionSettingScrollViewer;

		internal Separator Separator;

		private bool _contentLoaded;

		public ConnectionView()
		{
			this.InitializeComponent();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/connection/connectionview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.ConnectionSettingScrollViewer = (ScrollViewer)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.Separator = (Separator)target;
		}
	}
}

using Catel.IoC;
using Catel.Windows;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Markup;
using VyprVPN.Properties;

namespace VyprVPN.Views.PreferencesWindow.Connection
{
	public class DefaultBehaviorChangeWarningView : DataWindow, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly DefaultBehaviorChangeWarningView.<>c <>9 = new DefaultBehaviorChangeWarningView.<>c();

			public static Func<bool> <>9__0_0;

			public static Func<bool> <>9__0_1;

			internal bool ctor>b__0_0()
			{
				return true;
			}

			internal bool ctor>b__0_1()
			{
				return true;
			}
		}

		private bool _contentLoaded;

		public DefaultBehaviorChangeWarningView() : base(3, null, 0, true, 1)
		{
			string arg_3C_0 = Resources.Yes;
			Action arg_3C_1 = new Action(base.ExecuteOk);
			Func<bool> arg_3C_2;
			if ((arg_3C_2 = DefaultBehaviorChangeWarningView.<>c.<>9__0_0) == null)
			{
				arg_3C_2 = (DefaultBehaviorChangeWarningView.<>c.<>9__0_0 = new Func<bool>(DefaultBehaviorChangeWarningView.<>c.<>9.<.ctor>b__0_0));
			}
			base.AddCustomButton(new DataWindowButton(arg_3C_0, arg_3C_1, arg_3C_2));
			string arg_77_0 = Resources.No;
			Action arg_77_1 = new Action(base.ExecuteCancel);
			Func<bool> arg_77_2;
			if ((arg_77_2 = DefaultBehaviorChangeWarningView.<>c.<>9__0_1) == null)
			{
				arg_77_2 = (DefaultBehaviorChangeWarningView.<>c.<>9__0_1 = new Func<bool>(DefaultBehaviorChangeWarningView.<>c.<>9.<.ctor>b__0_1));
			}
			base.AddCustomButton(new DataWindowButton(arg_77_0, arg_77_1, arg_77_2));
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/connection/defaultbehaviorchangewarningview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			this._contentLoaded = true;
		}
	}
}

using Catel.IoC;
using Catel.Services;
using Catel.Windows;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using VyprVPN.Converters;
using VyprVPN.Properties;

namespace VyprVPN.Views.PreferencesWindow.Connection
{
	public class ManageConnectionPerAppView : DataWindow, IComponentConnector, IStyleConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ManageConnectionPerAppView.<>c <>9 = new ManageConnectionPerAppView.<>c();

			public static Func<bool> <>9__0_0;

			public static Func<bool> <>9__0_1;

			internal bool ctor>b__0_0()
			{
				return true;
			}

			internal bool ctor>b__0_1()
			{
				return true;
			}
		}

		private ListSortDirection _lastDirection;

		private GridViewColumnHeader _lastHeaderClicked;

		internal TextBox SearchBox;

		internal ComboBox DefaultBehaviorComboBox;

		internal GridViewColumnHeader AppNameHeader;

		internal Canvas VyprSpinnerImageClippingRect;

		internal Image VyprSpinnerImage;

		private bool _contentLoaded;

		public ManageConnectionPerAppView() : base(3, null, 0, true, 1)
		{
			string arg_3C_0 = Resources.OK;
			Action arg_3C_1 = new Action(this.CustomExecuteOk);
			Func<bool> arg_3C_2;
			if ((arg_3C_2 = ManageConnectionPerAppView.<>c.<>9__0_0) == null)
			{
				arg_3C_2 = (ManageConnectionPerAppView.<>c.<>9__0_0 = new Func<bool>(ManageConnectionPerAppView.<>c.<>9.<.ctor>b__0_0));
			}
			base.AddCustomButton(new DataWindowButton(arg_3C_0, arg_3C_1, arg_3C_2));
			string arg_77_0 = Resources.Cancel;
			Action arg_77_1 = new Action(base.ExecuteCancel);
			Func<bool> arg_77_2;
			if ((arg_77_2 = ManageConnectionPerAppView.<>c.<>9__0_1) == null)
			{
				arg_77_2 = (ManageConnectionPerAppView.<>c.<>9__0_1 = new Func<bool>(ManageConnectionPerAppView.<>c.<>9.<.ctor>b__0_1));
			}
			base.AddCustomButton(new DataWindowButton(arg_77_0, arg_77_1, arg_77_2));
			base.AddCustomButton(new DataWindowButton(Resources.Apply, new Action(this.CustomExecuteApply), new Func<bool>(this.CustomValidateData)));
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			this._lastHeaderClicked = this.AppNameHeader;
		}

		private void AppsList_ColumnHeaderClickHandler(object sender, RoutedEventArgs e)
		{
			GridViewColumnHeader gridViewColumnHeader = e.OriginalSource as GridViewColumnHeader;
			if (gridViewColumnHeader != null && gridViewColumnHeader.Role != GridViewColumnHeaderRole.Padding)
			{
				ListSortDirection listSortDirection;
				if (gridViewColumnHeader != this._lastHeaderClicked)
				{
					listSortDirection = ListSortDirection.Ascending;
				}
				else if (this._lastDirection == ListSortDirection.Ascending)
				{
					listSortDirection = ListSortDirection.Descending;
				}
				else
				{
					listSortDirection = ListSortDirection.Ascending;
				}
				string text = gridViewColumnHeader.Tag as string;
				((ManageConnectionPerAppViewModel)base.DataContext).SortList(text, listSortDirection);
				if (listSortDirection == ListSortDirection.Ascending)
				{
					if (text == "Behavior")
					{
						gridViewColumnHeader.ContentTemplate = (base.Resources["SortAscendingBehaviorHeaderTemplate"] as DataTemplate);
					}
					else
					{
						gridViewColumnHeader.ContentTemplate = (base.Resources["SortAscendingHeaderTemplate"] as DataTemplate);
					}
				}
				else if (text == "Behavior")
				{
					gridViewColumnHeader.ContentTemplate = (base.Resources["SortDescendingBehaviorHeaderTemplate"] as DataTemplate);
				}
				else
				{
					gridViewColumnHeader.ContentTemplate = (base.Resources["SortDescendingHeaderTemplate"] as DataTemplate);
				}
				if (this._lastHeaderClicked != null && this._lastHeaderClicked != gridViewColumnHeader)
				{
					if ((string)this._lastHeaderClicked.Tag == "Behavior")
					{
						this._lastHeaderClicked.ContentTemplate = (base.Resources["BehaviorColumnHeaderTemplate"] as DataTemplate);
					}
					else
					{
						this._lastHeaderClicked.ContentTemplate = null;
					}
				}
				this._lastHeaderClicked = gridViewColumnHeader;
				this._lastDirection = listSortDirection;
			}
		}

		private void DefaultBehaviorCombobox_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			ManageConnectionPerAppView.<>c__DisplayClass4_2 <>c__DisplayClass4_ = new ManageConnectionPerAppView.<>c__DisplayClass4_2();
			<>c__DisplayClass4_.<>4__this = this;
			<>c__DisplayClass4_.e = e;
			if (<>c__DisplayClass4_.e == null)
			{
				return;
			}
			if (<>c__DisplayClass4_.e.AddedItems.Count > 0 && <>c__DisplayClass4_.e.RemovedItems.Count > 0)
			{
				ManageConnectionPerAppView.<>c__DisplayClass4_0 <>c__DisplayClass4_2 = new ManageConnectionPerAppView.<>c__DisplayClass4_0();
				<>c__DisplayClass4_2.CS$<>8__locals1 = <>c__DisplayClass4_;
				<>c__DisplayClass4_2.currentSelection = <>c__DisplayClass4_2.CS$<>8__locals1.e.RemovedItems[0];
				<>c__DisplayClass4_2.newSelection = <>c__DisplayClass4_2.CS$<>8__locals1.e.AddedItems[0];
				if (<>c__DisplayClass4_2.newSelection != <>c__DisplayClass4_2.currentSelection)
				{
					ManageConnectionPerAppView.<>c__DisplayClass4_1 <>c__DisplayClass4_3 = new ManageConnectionPerAppView.<>c__DisplayClass4_1();
					<>c__DisplayClass4_3.CS$<>8__locals2 = <>c__DisplayClass4_2;
					<>c__DisplayClass4_3.warningResult = null;
					ServiceLocatorExtensions.ResolveType<UIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
					{
						DefaultBehaviorChangeWarningViewModel defaultBehaviorChangeWarningViewModel = new DefaultBehaviorChangeWarningViewModel();
						object obj = new PerAppBehaviorToFriendlyStringConverter().Convert(<>c__DisplayClass4_3.CS$<>8__locals2.newSelection, null, null, null);
						defaultBehaviorChangeWarningViewModel.NewSelection = (string)obj;
						IUIVisualizerService arg_86_0 = ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(<>c__DisplayClass4_3.CS$<>8__locals2.CS$<>8__locals1.<>4__this), null);
						ManageConnectionPerAppView.<>c__DisplayClass4_1 <>c__DisplayClass4_4 = <>c__DisplayClass4_3;
						bool? arg_7E_0 = <>c__DisplayClass4_4.warningResult;
						bool? warningResult = await arg_86_0.ShowDialog(defaultBehaviorChangeWarningViewModel, null);
						<>c__DisplayClass4_4.warningResult = warningResult;
						<>c__DisplayClass4_4 = null;
						if (<>c__DisplayClass4_3.warningResult == true)
						{
							<>c__DisplayClass4_3.CS$<>8__locals2.CS$<>8__locals1.e.Handled = false;
							if (defaultBehaviorChangeWarningViewModel.ResetAllApps)
							{
								ManageConnectionPerAppViewModel var_5_169 = <>c__DisplayClass4_3.CS$<>8__locals2.CS$<>8__locals1.<>4__this.DataContext as ManageConnectionPerAppViewModel;
								if (var_5_169 != null)
								{
									var_5_169.ResetAllAppsToDefault();
								}
							}
						}
						else
						{
							<>c__DisplayClass4_3.CS$<>8__locals2.CS$<>8__locals1.e.Handled = true;
							<>c__DisplayClass4_3.CS$<>8__locals2.CS$<>8__locals1.<>4__this.DefaultBehaviorComboBox.SelectionChanged -= new SelectionChangedEventHandler(<>c__DisplayClass4_3.CS$<>8__locals2.CS$<>8__locals1.<>4__this.DefaultBehaviorCombobox_SelectionChanged);
							<>c__DisplayClass4_3.CS$<>8__locals2.CS$<>8__locals1.<>4__this.DefaultBehaviorComboBox.SelectedItem = <>c__DisplayClass4_3.CS$<>8__locals2.currentSelection;
							<>c__DisplayClass4_3.CS$<>8__locals2.CS$<>8__locals1.<>4__this.DefaultBehaviorComboBox.SelectionChanged += new SelectionChangedEventHandler(<>c__DisplayClass4_3.CS$<>8__locals2.CS$<>8__locals1.<>4__this.DefaultBehaviorCombobox_SelectionChanged);
						}
					});
				}
			}
		}

		private void BehaviorInformation_OnMouseDown(object sender, MouseEventArgs e)
		{
			ServiceLocatorExtensions.ResolveType<UIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				StatusInformationDialogViewModel statusInformationDialogViewModel = new StatusInformationDialogViewModel();
				await ServiceLocatorExtensions.ResolveType<IUIVisualizerService>(ObjectExtensions.GetServiceLocator(this), null).ShowDialog(statusInformationDialogViewModel, null);
			});
		}

		private bool CustomValidateData()
		{
			bool result = false;
			ManageConnectionPerAppViewModel manageConnectionPerAppViewModel = base.get_ViewModel() as ManageConnectionPerAppViewModel;
			if (manageConnectionPerAppViewModel != null)
			{
				result = manageConnectionPerAppViewModel.ChangesMade;
			}
			return result;
		}

		private void CustomExecuteApply()
		{
			ManageConnectionPerAppViewModel manageConnectionPerAppViewModel = base.get_ViewModel() as ManageConnectionPerAppViewModel;
			if (manageConnectionPerAppViewModel != null)
			{
				manageConnectionPerAppViewModel.ApplyChanges();
				manageConnectionPerAppViewModel.ChangesMade = false;
			}
		}

		private void CustomExecuteOk()
		{
			this.CustomExecuteApply();
			base.ExecuteClose();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/connection/manageconnectionperappview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 4:
				this.SearchBox = (TextBox)target;
				return;
			case 5:
				this.DefaultBehaviorComboBox = (ComboBox)target;
				this.DefaultBehaviorComboBox.SelectionChanged += new SelectionChangedEventHandler(this.DefaultBehaviorCombobox_SelectionChanged);
				return;
			case 6:
				this.AppNameHeader = (GridViewColumnHeader)target;
				this.AppNameHeader.Click += new RoutedEventHandler(this.AppsList_ColumnHeaderClickHandler);
				return;
			case 7:
				((GridViewColumnHeader)target).Click += new RoutedEventHandler(this.AppsList_ColumnHeaderClickHandler);
				return;
			case 8:
				((GridViewColumnHeader)target).Click += new RoutedEventHandler(this.AppsList_ColumnHeaderClickHandler);
				return;
			case 9:
				this.VyprSpinnerImageClippingRect = (Canvas)target;
				return;
			case 10:
				this.VyprSpinnerImage = (Image)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((Image)target).MouseDown += new MouseButtonEventHandler(this.BehaviorInformation_OnMouseDown);
				return;
			case 2:
				((Image)target).MouseDown += new MouseButtonEventHandler(this.BehaviorInformation_OnMouseDown);
				return;
			case 3:
				((Image)target).MouseDown += new MouseButtonEventHandler(this.BehaviorInformation_OnMouseDown);
				return;
			default:
				return;
			}
		}
	}
}

using Catel.Data;
using System;
using VyprVPN.Classes;
using VyprVPN.Properties;

namespace VyprVPN.Views.PreferencesWindow.Connection
{
	public class DefaultBehaviorChangeWarningViewModel : VyprViewModel
	{
		public static readonly PropertyData ResetAllAppsProperty = ModelBase.RegisterProperty("ResetAllApps", typeof(bool), null, null, true, true, true);

		public string NewSelection;

		public bool ResetAllApps
		{
			get
			{
				return base.GetValue<bool>(DefaultBehaviorChangeWarningViewModel.ResetAllAppsProperty);
			}
			set
			{
				base.SetValue(DefaultBehaviorChangeWarningViewModel.ResetAllAppsProperty, value);
			}
		}

		public string WarningText
		{
			get
			{
				return string.Format(Resources.ChangeDefaultBehaviorWarning, this.NewSelection);
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.MVVM;
using GoldenFrogUT.Utilities;
using GoldenFrogVPN.Classes;
using GoldenFrogVPN.Enums;
using GoldenFrogVPN.Interfaces;
using Microsoft.Win32;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Views.PreferencesWindow.Connection.Comparers;

namespace VyprVPN.Views.PreferencesWindow.Connection
{
	public class ManageConnectionPerAppViewModel : VyprViewModel
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ManageConnectionPerAppViewModel.<>c <>9 = new ManageConnectionPerAppViewModel.<>c();

			internal void cctor>b__55_0(object sender, AdvancedPropertyChangedEventArgs args)
			{
				if (sender is ManageConnectionPerAppViewModel)
				{
					((ManageConnectionPerAppViewModel)sender).SearchStringSet = !string.IsNullOrEmpty(args.get_NewValue() as string);
				}
			}
		}

		private ICollectionView _applicationListView;

		private bool _changesMade;

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		public static readonly PropertyData ApplicationSearchStringProperty = ModelBase.RegisterProperty<string>("ApplicationSearchString", typeof(string), "", new EventHandler<AdvancedPropertyChangedEventArgs>(ManageConnectionPerAppViewModel.<>c.<>9.<.cctor>b__55_0), true, true, true);

		public static readonly PropertyData SearchStringSetProperty = ModelBase.RegisterProperty<bool>("SearchStringSet", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData DataReceivedProperty = ModelBase.RegisterProperty<bool>("DataReceived", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData IsLoadingProperty = ModelBase.RegisterProperty<bool>("IsLoading", typeof(bool), false, null, true, true, true);

		public static readonly PropertyData GlobalBehaviorSettingProperty = ModelBase.RegisterProperty<PerAppBehavior>("GlobalBehaviorSetting", typeof(PerAppBehavior), 2, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData ApplicationListProperty = ModelBase.RegisterProperty("ApplicationList", typeof(ObservableCollection<IApplicationItem>), null, null, true, true, true);

		private IImageUtilities ImageUtilities
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IImageUtilities>(ServiceLocator.get_Default(), null);
			}
		}

		public bool ChangesMade
		{
			get
			{
				return this._changesMade;
			}
			set
			{
				this._changesMade = value;
				base.RaisePropertyChanged<bool>(() => this.ChangesMade);
			}
		}

		public ICommand AddAdditionalAppsCommand
		{
			get;
			private set;
		}

		public PerAppBehavior[] IndividualBehaviorList
		{
			get
			{
				PerAppBehavior[] expr_06 = new PerAppBehavior[4];
				RuntimeHelpers.InitializeArray(expr_06, fieldof(<PrivateImplementationDetails>.AF9F5B0B7D0743A729568484249258A298E51303).FieldHandle);
				return expr_06;
			}
		}

		public PerAppBehavior[] GlobalBehaviorList
		{
			get
			{
				PerAppBehavior[] expr_06 = new PerAppBehavior[3];
				RuntimeHelpers.InitializeArray(expr_06, fieldof(<PrivateImplementationDetails>.09A9B6283B547FA3EB4254AAFA5CD16F2B30D70D).FieldHandle);
				return expr_06;
			}
		}

		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(ManageConnectionPerAppViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(ManageConnectionPerAppViewModel.PreferencesModelProperty, value);
			}
		}

		public string ApplicationSearchString
		{
			get
			{
				return (string)base.GetValue(ManageConnectionPerAppViewModel.ApplicationSearchStringProperty);
			}
			set
			{
				base.SetValue(ManageConnectionPerAppViewModel.ApplicationSearchStringProperty, value);
				this.ApplicationListView.Refresh();
			}
		}

		public bool SearchStringSet
		{
			get
			{
				return base.GetValue<bool>(ManageConnectionPerAppViewModel.SearchStringSetProperty);
			}
			set
			{
				base.SetValue(ManageConnectionPerAppViewModel.SearchStringSetProperty, value);
			}
		}

		public bool DataReceived
		{
			get
			{
				return base.GetValue<bool>(ManageConnectionPerAppViewModel.DataReceivedProperty);
			}
			set
			{
				base.SetValue(ManageConnectionPerAppViewModel.DataReceivedProperty, value);
			}
		}

		public bool IsLoading
		{
			get
			{
				return base.GetValue<bool>(ManageConnectionPerAppViewModel.IsLoadingProperty);
			}
			set
			{
				base.SetValue(ManageConnectionPerAppViewModel.IsLoadingProperty, value);
			}
		}

		public ObservableCollection<IApplicationItem> ApplicationList
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<ObservableCollection<IApplicationItem>>(ManageConnectionPerAppViewModel.ApplicationListProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(ManageConnectionPerAppViewModel.ApplicationListProperty, value);
			}
		}

		public ICollectionView ApplicationListView
		{
			get
			{
				return this._applicationListView;
			}
		}

		public PerAppBehavior GlobalBehaviorSetting
		{
			get
			{
				return base.GetValue<PerAppBehavior>(ManageConnectionPerAppViewModel.GlobalBehaviorSettingProperty);
			}
			set
			{
				base.SetValue(ManageConnectionPerAppViewModel.GlobalBehaviorSettingProperty, value);
				this.ChangesMade = true;
			}
		}

		public ManageConnectionPerAppViewModel()
		{
			this.IsLoading = true;
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			this.AddAdditionalAppsCommand = new AsynchronousCommand(new Action(this.LaunchAdditionalAppsBrowser), null, null);
			this.GlobalBehaviorSetting = this.PreferencesModel.PerAppInitialState;
			List<ApplicationItem> appsList = new List<ApplicationItem>();
			string[] dirtyProperties = this.PreferencesModel.GetDirtyProperties();
			if (dirtyProperties != null && dirtyProperties.Contains("ApplicationList"))
			{
				try
				{
					appsList = this.PreferencesModel.ApplicationList.Cast<ApplicationItem>().ToList<ApplicationItem>();
					this.IsLoading = false;
					this.DataReceived = true;
					this.SetupApplicationList(appsList);
					goto IL_C4;
				}
				catch (Exception ex)
				{
					base.logger.Log(3, "There was an error while attempting to retrieve previously-changed application list. Getting new application list from service instead. Exception {0}", new object[]
					{
						ex
					});
					this.GetUpdatedListOfApplications(appsList);
					goto IL_C4;
				}
			}
			this.GetUpdatedListOfApplications(appsList);
			IL_C4:
			this.ChangesMade = false;
		}

		public ManageConnectionPerAppViewModel(List<ApplicationItem> appsList)
		{
			this.IsLoading = true;
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			this.ApplicationList = new ObservableCollection<IApplicationItem>(appsList);
			this._applicationListView = CollectionViewSource.GetDefaultView(this.ApplicationList);
		}

		private void GetUpdatedListOfApplications(List<ApplicationItem> appsList)
		{
			UpdateAppsListFromFileSystemCompletedEventHandler <>9__1;
			Task.Run(delegate
			{
				IVyprVPNController arg_3B_0 = this.VyprVPNController;
				UpdateAppsListFromFileSystemCompletedEventHandler arg_3B_1;
				if ((arg_3B_1 = <>9__1) == null)
				{
					arg_3B_1 = (<>9__1 = delegate(object sender, UpdateAppsListFromFileSystemCompletedEventArgs e)
					{
						ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
						{
							appsList = e.get_UpdatedAppList();
							this.SetupApplicationList(appsList);
							this.IsLoading = false;
							this.DataReceived = true;
						});
					});
				}
				arg_3B_0.UpdateAppsListFromFileSystem(arg_3B_1, new UpdateAppsListFromFileSystemErrorEventHandler(this.<GetUpdatedListOfApplications>b__47_3));
			});
		}

		public void ResetAllAppsToDefault()
		{
			using (IEnumerator<IApplicationItem> enumerator = this.ApplicationList.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					enumerator.Current.set_ConnectionBehavior(0);
				}
			}
			this.ApplicationListView.Refresh();
		}

		public void SortList(string sortBy, ListSortDirection direction)
		{
			ListCollectionView listCollectionView = this.ApplicationListView as ListCollectionView;
			if (listCollectionView != null)
			{
				if (sortBy == "AppName")
				{
					listCollectionView.CustomSort = new AppNameComparer(direction);
					return;
				}
				if (sortBy == "AutoConnect")
				{
					listCollectionView.CustomSort = new AppAutoConnectComparer(direction);
					return;
				}
				if (sortBy == "Behavior")
				{
					listCollectionView.CustomSort = new AppBehaviorComparer(direction);
				}
			}
		}

		public void ApplyChanges()
		{
			if (this.PreferencesModel != null)
			{
				if (this.PreferencesModel.PerAppInitialState != this.GlobalBehaviorSetting)
				{
					this.PreferencesModel.PerAppInitialState = this.GlobalBehaviorSetting;
				}
				if (this.PreferencesModel.ApplicationList == null || !this.PreferencesModel.ApplicationList.SequenceEqual(this.ApplicationList))
				{
					this.PreferencesModel.ApplicationList = this.ApplicationList;
				}
			}
		}

		private bool SearchFilter(object item)
		{
			IApplicationItem applicationItem = item as IApplicationItem;
			return (applicationItem == null || !applicationItem.get_Removed()) && (string.IsNullOrWhiteSpace(this.ApplicationSearchString) || (applicationItem != null && !string.IsNullOrEmpty(applicationItem.get_ApplicationName()) && applicationItem.get_ApplicationName().ToLower().Contains(this.ApplicationSearchString.ToLower())));
		}

		private void LaunchAdditionalAppsBrowser()
		{
			ServiceLocatorExtensions.ResolveType<UIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				OpenFileDialog openFileDialog = new OpenFileDialog();
				openFileDialog.Multiselect = true;
				openFileDialog.DefaultExt = ".exe";
				openFileDialog.Filter = "Executable Files (*.exe)|*.exe";
				if (openFileDialog.ShowDialog() == true)
				{
					string[] fileNames = openFileDialog.FileNames;
					for (int i = 0; i < fileNames.Length; i++)
					{
						string text = fileNames[i];
						if (!text.Contains("VyprVPN\\VyprVPN.exe") && !text.Contains("VyprVPN\\OpenVPN\\bin\\openvpn-VyprVPN.exe") && !text.Contains("VyprVPN\\VyprVPNService.exe") && !text.Contains("VyprVPN\\Chameleon.exe"))
						{
							bool flag = false;
							foreach (IApplicationItem current in this.ApplicationList)
							{
								if (flag)
								{
									break;
								}
								using (List<string>.Enumerator enumerator2 = current.get_ApplicationExecutablePathList().GetEnumerator())
								{
									while (enumerator2.MoveNext())
									{
										if (enumerator2.Current == text)
										{
											flag = true;
											break;
										}
									}
								}
							}
							if (!flag)
							{
								ApplicationItem applicationItem = new ApplicationItem();
								applicationItem.set_ApplicationExecutablePathList(new List<string>());
								applicationItem.get_ApplicationExecutablePathList().Add(text);
								applicationItem.set_ApplicationName(text.Substring(text.LastIndexOf('\\') + 1));
								applicationItem.set_UserAdded(true);
								applicationItem.set_AppIcon(this.ImageUtilities.GetIconFromFile(text));
								this.ApplicationList.Add(applicationItem);
								this.ChangesMade = true;
							}
						}
					}
				}
			});
		}

		private void ApplicationItem_PropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			this.ChangesMade = true;
		}

		private void SetupApplicationList(List<ApplicationItem> appsList)
		{
			foreach (ApplicationItem current in appsList)
			{
				if (current.get_IconBitmap() != null)
				{
					current.set_AppIcon(this.ImageUtilities.ConvertByteArrayToBitmapImage(current.get_IconBitmap()));
				}
				else if (!string.IsNullOrWhiteSpace(current.get_IconExePath()))
				{
					string text = current.get_IconExePath();
					if (text == "msiexec.exe")
					{
						text = Environment.SystemDirectory + "\\msiexec.exe";
					}
					current.set_AppIcon(this.ImageUtilities.GetIconFromFile(text));
				}
				else
				{
					current.set_AppIcon(this.ImageUtilities.GetIconFromFile(current.get_ApplicationExecutablePathList().FirstOrDefault<string>()));
				}
			}
			this.ApplicationList = new ObservableCollection<IApplicationItem>();
			this.ApplicationList.CollectionChanged += delegate(object sender, NotifyCollectionChangedEventArgs args)
			{
				if (args != null)
				{
					if (args.OldItems != null)
					{
						using (IEnumerator enumerator2 = args.OldItems.GetEnumerator())
						{
							while (enumerator2.MoveNext())
							{
								((INotifyPropertyChanged)enumerator2.Current).PropertyChanged -= new System.ComponentModel.PropertyChangedEventHandler(this.ApplicationItem_PropertyChanged);
							}
						}
						this.ChangesMade = true;
					}
					if (args.NewItems != null)
					{
						using (IEnumerator enumerator2 = args.NewItems.GetEnumerator())
						{
							while (enumerator2.MoveNext())
							{
								((INotifyPropertyChanged)enumerator2.Current).PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(this.ApplicationItem_PropertyChanged);
							}
						}
						this.ChangesMade = true;
					}
				}
			};
			foreach (ApplicationItem current2 in appsList)
			{
				this.ApplicationList.Add(current2);
			}
			this._applicationListView = CollectionViewSource.GetDefaultView(this.ApplicationList);
			this.ApplicationListView.Filter = new Predicate<object>(this.SearchFilter);
			this.SortList("AppName", ListSortDirection.Ascending);
			base.RaisePropertyChanged<ICollectionView>(() => this.ApplicationListView);
			this.ChangesMade = false;
		}
	}
}

using System;
using VyprVPN.Classes;

namespace VyprVPN.Views.PreferencesWindow.Connection
{
	public class StatusInformationDialogViewModel : VyprViewModel
	{
	}
}

using Catel.IoC;
using Catel.Windows;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Markup;

namespace VyprVPN.Views.PreferencesWindow.Connection
{
	public class StatusInformationDialogView : DataWindow, IComponentConnector
	{
		private bool _contentLoaded;

		public StatusInformationDialogView() : base(3, null, 0, true, 1)
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/connection/statusinformationdialogview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			this._contentLoaded = true;
		}
	}
}
