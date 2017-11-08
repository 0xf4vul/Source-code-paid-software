using Catel.IoC;
using Catel.Windows;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using VyprVPN.Properties;

namespace VyprVPN.Views.PreferencesWindow.Advanced
{
	public class AddParametersDialogView : DataWindow, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly AddParametersDialogView.<>c <>9 = new AddParametersDialogView.<>c();

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

		internal TextBox AdditionalParamsTextBox;

		private bool _contentLoaded;

		public AddParametersDialogView() : base(3, null, 0, true, 1)
		{
			string arg_3C_0 = Resources.OK;
			Action arg_3C_1 = new Action(this.CustomExecuteOk);
			Func<bool> arg_3C_2;
			if ((arg_3C_2 = AddParametersDialogView.<>c.<>9__0_0) == null)
			{
				arg_3C_2 = (AddParametersDialogView.<>c.<>9__0_0 = new Func<bool>(AddParametersDialogView.<>c.<>9.<.ctor>b__0_0));
			}
			base.AddCustomButton(new DataWindowButton(arg_3C_0, arg_3C_1, arg_3C_2));
			string arg_77_0 = Resources.Cancel;
			Action arg_77_1 = new Action(base.ExecuteCancel);
			Func<bool> arg_77_2;
			if ((arg_77_2 = AddParametersDialogView.<>c.<>9__0_1) == null)
			{
				arg_77_2 = (AddParametersDialogView.<>c.<>9__0_1 = new Func<bool>(AddParametersDialogView.<>c.<>9.<.ctor>b__0_1));
			}
			base.AddCustomButton(new DataWindowButton(arg_77_0, arg_77_1, arg_77_2));
			base.AddCustomButton(new DataWindowButton(Resources.Apply, new Action(this.CustomExecuteApply), new Func<bool>(this.CustomValidateData)));
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		private bool CustomValidateData()
		{
			bool result = false;
			AddParametersDialogViewModel addParametersDialogViewModel = base.get_ViewModel() as AddParametersDialogViewModel;
			if (addParametersDialogViewModel != null)
			{
				result = addParametersDialogViewModel.HaveParametersChanged();
			}
			return result;
		}

		private void CustomExecuteApply()
		{
			AddParametersDialogViewModel addParametersDialogViewModel = base.get_ViewModel() as AddParametersDialogViewModel;
			if (addParametersDialogViewModel != null)
			{
				addParametersDialogViewModel.ApplyChanges();
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/advanced/addparametersdialogview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.AdditionalParamsTextBox = (TextBox)target;
				return;
			}
			this._contentLoaded = true;
		}
	}
}

using Catel.Data;
using Catel.IoC;
using GoldenFrogVPN;
using System;
using VyprVPN.Classes;

namespace VyprVPN.Views.PreferencesWindow.Advanced
{
	public class AddParametersDialogViewModel : VyprViewModel
	{
		private string _dummyCommandLine = string.Empty;

		public static readonly PropertyData ParametersInputProperty = ModelBase.RegisterProperty("ParametersInput", typeof(string), null, null, true, true, true);

		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		public string ParametersInput
		{
			get
			{
				return base.GetValue<string>(AddParametersDialogViewModel.ParametersInputProperty);
			}
			set
			{
				base.SetValue(AddParametersDialogViewModel.ParametersInputProperty, value);
			}
		}

		public string CurrentCommandLine
		{
			get
			{
				return this._dummyCommandLine;
			}
		}

		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(AddParametersDialogViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(AddParametersDialogViewModel.PreferencesModelProperty, value);
			}
		}

		public AddParametersDialogViewModel()
		{
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
			if (this.PreferencesModel != null)
			{
				OpenVpnCommandLineConfig expr_30 = new OpenVpnCommandLineConfig();
				expr_30.set_SelectedMtu(this.PreferencesModel.SelectedMtu);
				expr_30.set_SelectedOpenVpnLogVerbosityLevel(this.PreferencesModel.SelectedOpenVpnLogVerbosityLevel);
				expr_30.set_SelectedRouteDelay(this.PreferencesModel.SelectedRouteDelay);
				expr_30.set_SelectedTlsTimeout(this.PreferencesModel.SelectedTlsTimeout);
				OpenVpnCommandLineConfig commandLineConfig = expr_30;
				this._dummyCommandLine = base.VyprVPNController.GetDummyOpenVpnCommandLine(this.PreferencesModel.Protocol, commandLineConfig);
				this.ParametersInput = this.PreferencesModel.AdditionalOpenVpnParameters;
			}
		}

		public bool HaveParametersChanged()
		{
			bool result = false;
			if (this.PreferencesModel != null && this.ParametersInput != this.PreferencesModel.AdditionalOpenVpnParameters)
			{
				result = true;
			}
			return result;
		}

		public void ApplyChanges()
		{
			if (this.PreferencesModel != null)
			{
				this.PreferencesModel.AdditionalOpenVpnParameters = this.ParametersInput;
			}
		}
	}
}

using Catel.IoC;
using Catel.Windows.Controls;
using GoldenFrogUT.Utilities;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Text.RegularExpressions;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Navigation;

namespace VyprVPN.Views.PreferencesWindow.Advanced
{
	public class AdvancedView : UserControl, IComponentConnector
	{
		internal ScrollViewer GeneralSettingScrollViewer;

		internal TextBox RouteDelayTextBox;

		private bool _contentLoaded;

		public AdvancedView()
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, true);
		}

		private void Hyperlink_OnRequestNavigate(object sender, RequestNavigateEventArgs e)
		{
			string absoluteUri = e.Uri.AbsoluteUri;
			ServiceLocatorExtensions.ResolveType<IGeneralUtilities>(ServiceLocator.get_Default(), null).StartWebUri(absoluteUri);
		}

		private void TextBox_OnPreviewTextInput(object sender, TextCompositionEventArgs e)
		{
			e.Handled = !Regex.IsMatch(e.Text, "^\\d+$");
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/advanced/advancedview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.GeneralSettingScrollViewer = (ScrollViewer)target;
				return;
			case 2:
				this.RouteDelayTextBox = (TextBox)target;
				this.RouteDelayTextBox.PreviewTextInput += new TextCompositionEventHandler(this.TextBox_OnPreviewTextInput);
				return;
			case 3:
				((Hyperlink)target).RequestNavigate += new RequestNavigateEventHandler(this.Hyperlink_OnRequestNavigate);
				return;
			case 4:
				((Hyperlink)target).RequestNavigate += new RequestNavigateEventHandler(this.Hyperlink_OnRequestNavigate);
				return;
			case 5:
				((TextBox)target).PreviewTextInput += new TextCompositionEventHandler(this.TextBox_OnPreviewTextInput);
				return;
			case 6:
				((TextBox)target).PreviewTextInput += new TextCompositionEventHandler(this.TextBox_OnPreviewTextInput);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

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

namespace VyprVPN.Views.PreferencesWindow.Advanced
{
	public class OptimizeMtuDialogView : Window, IComponentConnector
	{
		internal ContentControl MainContentControl;

		internal Button CancelButton;

		internal Button ContinueButton;

		internal Button OkButton;

		internal Button RetryButton;

		private bool _contentLoaded;

		public OptimizeMtuDialogView()
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, true);
			MessageBase<CloseOptimizeMtuWindowMessage, bool>.Register(this, delegate(CloseOptimizeMtuWindowMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(base.Close));
			}, null);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/advanced/optimizemtudialogview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.MainContentControl = (ContentControl)target;
				return;
			case 2:
				this.CancelButton = (Button)target;
				return;
			case 3:
				this.ContinueButton = (Button)target;
				return;
			case 4:
				this.OkButton = (Button)target;
				return;
			case 5:
				this.RetryButton = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using GoldenFrogVPN.Classes;
using System;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN.Views.PreferencesWindow.Advanced
{
	public class OptimizeMtuDialogViewModel : VyprViewModel
	{
		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		public static readonly PropertyData OptimizeDialogStateProperty = ModelBase.RegisterProperty("OptimizeDialogState", typeof(OptimizeMtuDialogState), null, null, true, true, true);

		public static readonly PropertyData DialogTitleProperty = ModelBase.RegisterProperty<string>("DialogTitle", typeof(string), Resources.OptimizeMTU, null, true, true, true);

		[CompilerGenerated]
		public static readonly PropertyData SelectedMtuProperty = ModelBase.RegisterProperty("SelectedMtu", typeof(int), null, null, true, true, true);

		[Model]
		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(OptimizeMtuDialogViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(OptimizeMtuDialogViewModel.PreferencesModelProperty, value);
			}
		}

		public OptimizeMtuDialogState OptimizeDialogState
		{
			get
			{
				return base.GetValue<OptimizeMtuDialogState>(OptimizeMtuDialogViewModel.OptimizeDialogStateProperty);
			}
			set
			{
				base.SetValue(OptimizeMtuDialogViewModel.OptimizeDialogStateProperty, value);
			}
		}

		public string DialogTitle
		{
			get
			{
				return base.GetValue<string>(OptimizeMtuDialogViewModel.DialogTitleProperty);
			}
			set
			{
				base.SetValue(OptimizeMtuDialogViewModel.DialogTitleProperty, value);
			}
		}

		public ICommand CancelCommand
		{
			get;
			private set;
		}

		public ICommand ContinueCommand
		{
			get;
			private set;
		}

		public ICommand OkCommand
		{
			get;
			private set;
		}

		public ICommand RetryCommand
		{
			get;
			private set;
		}

		[ViewModelToModel("PreferencesModel", "SelectedMtu"), CompilerGenerated]
		public int SelectedMtu
		{
			[CompilerGenerated]
			get
			{
				return base.GetValue<int>(OptimizeMtuDialogViewModel.SelectedMtuProperty);
			}
			[CompilerGenerated]
			set
			{
				base.SetValue(OptimizeMtuDialogViewModel.SelectedMtuProperty, value);
			}
		}

		public OptimizeMtuDialogViewModel()
		{
			this.OptimizeDialogState = OptimizeMtuDialogState.PromptingToOptimize;
			this.CancelCommand = new Command(delegate
			{
				this.CancelAction();
			}, () => this.OptimizeDialogState != OptimizeMtuDialogState.OptimizeSuccess, null);
			this.ContinueCommand = new Command(new Action(this.BeginOptimizingMtu), () => this.OptimizeDialogState == OptimizeMtuDialogState.PromptingToOptimize, null);
			this.OkCommand = new Command(delegate
			{
				this.CloseAction();
			}, () => this.OptimizeDialogState == OptimizeMtuDialogState.OptimizeSuccess, null);
			this.RetryCommand = new Command(new Action(this.BeginOptimizingMtu), () => this.OptimizeDialogState == OptimizeMtuDialogState.OptimizeFailed, null);
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
		}

		private void BeginOptimizingMtu()
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.DialogTitle = Resources.OptimizeMTUProgressHeader;
			});
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.OptimizeDialogState = OptimizeMtuDialogState.Optimizing;
			});
			Task.Run(delegate
			{
				base.VyprVPNController.GetOptimizedMtu(delegate(object sender, GetOptimizedMtuCompletedEventArgs e)
				{
					this.PreferencesModel.SelectedMtu = e.get_OptimizedMtu();
					ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
					{
						this.DialogTitle = Resources.MTUOptimized;
					});
					ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
					{
						this.OptimizeDialogState = OptimizeMtuDialogState.OptimizeSuccess;
					});
				}, delegate(object sender, GetOptimizedMtuErrorEventArgs e)
				{
					ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
					{
						this.DialogTitle = Resources.MTUOptimizationError;
					});
					ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
					{
						this.OptimizeDialogState = OptimizeMtuDialogState.OptimizeFailed;
					});
				});
			});
		}

		private void CancelOptimizing()
		{
			base.VyprVPNController.CancelOptimizeMtuTest();
		}

		private void CancelAction()
		{
			if (this.OptimizeDialogState == OptimizeMtuDialogState.Optimizing)
			{
				this.CancelOptimizing();
			}
			this.CloseAction();
		}

		private void CloseAction()
		{
			MessageBase<CloseOptimizeMtuWindowMessage, bool>.SendWith(true, null);
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

namespace VyprVPN.Views.PreferencesWindow.Advanced
{
	public class SettingsRestoreDialogView : DataWindow, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly SettingsRestoreDialogView.<>c <>9 = new SettingsRestoreDialogView.<>c();

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

		public SettingsRestoreDialogView() : base(3, null, 0, true, 1)
		{
			string arg_3C_0 = Resources.Continue;
			Action arg_3C_1 = new Action(this.CustomExecuteContinue);
			Func<bool> arg_3C_2;
			if ((arg_3C_2 = SettingsRestoreDialogView.<>c.<>9__0_0) == null)
			{
				arg_3C_2 = (SettingsRestoreDialogView.<>c.<>9__0_0 = new Func<bool>(SettingsRestoreDialogView.<>c.<>9.<.ctor>b__0_0));
			}
			base.AddCustomButton(new DataWindowButton(arg_3C_0, arg_3C_1, arg_3C_2));
			string arg_77_0 = Resources.Cancel;
			Action arg_77_1 = new Action(base.ExecuteCancel);
			Func<bool> arg_77_2;
			if ((arg_77_2 = SettingsRestoreDialogView.<>c.<>9__0_1) == null)
			{
				arg_77_2 = (SettingsRestoreDialogView.<>c.<>9__0_1 = new Func<bool>(SettingsRestoreDialogView.<>c.<>9.<.ctor>b__0_1));
			}
			base.AddCustomButton(new DataWindowButton(arg_77_0, arg_77_1, arg_77_2));
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		private void CustomExecuteContinue()
		{
			SettingsRestoreDialogViewModel settingsRestoreDialogViewModel = base.get_ViewModel() as SettingsRestoreDialogViewModel;
			if (settingsRestoreDialogViewModel != null)
			{
				settingsRestoreDialogViewModel.RestoreDefaultSettings();
			}
			base.ExecuteOk();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/advanced/settingsrestoredialogview.xaml", UriKind.Relative);
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
using Catel.MVVM;
using GoldenFrogVPN;
using System;
using VyprVPN.Classes;

namespace VyprVPN.Views.PreferencesWindow.Advanced
{
	public class SettingsRestoreDialogViewModel : VyprViewModel
	{
		public static readonly PropertyData PreferencesModelProperty = ModelBase.RegisterProperty("PreferencesModel", typeof(IPreferencesModel), null, null, true, true, true);

		[Model]
		public IPreferencesModel PreferencesModel
		{
			get
			{
				return base.GetValue<IPreferencesModel>(SettingsRestoreDialogViewModel.PreferencesModelProperty);
			}
			set
			{
				base.SetValue(SettingsRestoreDialogViewModel.PreferencesModelProperty, value);
			}
		}

		public SettingsRestoreDialogViewModel()
		{
			this.PreferencesModel = ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ObjectExtensions.GetServiceLocator(this), null);
		}

		public void RestoreDefaultSettings()
		{
			IOpenVpnCommandLineConfig expr_0B = ServiceLocatorExtensions.ResolveType<IOpenVpnCommandLineConfig>(ServiceLocator.get_Default(), null);
			int selectedRouteDelay = expr_0B.get_SelectedRouteDelay();
			int selectedTlsTimeout = expr_0B.get_SelectedTlsTimeout();
			int selectedOpenVpnLogVerbosityLevel = expr_0B.get_SelectedOpenVpnLogVerbosityLevel();
			int selectedMtu = expr_0B.get_SelectedMtu();
			string additionalOpenVpnParameters = expr_0B.get_AdditionalOpenVpnParameters();
			bool flag = false;
			if (this.PreferencesModel.SelectedRouteDelay != selectedRouteDelay)
			{
				this.PreferencesModel.SelectedRouteDelay = selectedRouteDelay;
				flag = true;
			}
			if (this.PreferencesModel.SelectedTlsTimeout != selectedTlsTimeout)
			{
				this.PreferencesModel.SelectedTlsTimeout = selectedTlsTimeout;
				flag = true;
			}
			if (this.PreferencesModel.SelectedOpenVpnLogVerbosityLevel != selectedOpenVpnLogVerbosityLevel)
			{
				this.PreferencesModel.SelectedOpenVpnLogVerbosityLevel = selectedOpenVpnLogVerbosityLevel;
				flag = true;
			}
			if (this.PreferencesModel.SelectedMtu != selectedMtu)
			{
				this.PreferencesModel.SelectedMtu = selectedMtu;
				flag = true;
			}
			if (!string.IsNullOrWhiteSpace(this.PreferencesModel.AdditionalOpenVpnParameters))
			{
				this.PreferencesModel.AdditionalOpenVpnParameters = additionalOpenVpnParameters;
				flag = true;
			}
			if (flag)
			{
				base.VyprVPNController.IncrementSettingsRestoredCount();
			}
		}
	}
}
