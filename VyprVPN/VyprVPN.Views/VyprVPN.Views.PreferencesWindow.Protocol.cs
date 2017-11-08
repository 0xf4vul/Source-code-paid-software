using Catel.IoC;
using Catel.Windows;
using Log;
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
using VyprVPN.ViewModels;

namespace VyprVPN.Views.PreferencesWindow.Protocol
{
	public class ConfigureProtocolView : DataWindow, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ConfigureProtocolView.<>c <>9 = new ConfigureProtocolView.<>c();

			public static Func<bool> <>9__1_0;

			internal bool ctor>b__1_0()
			{
				return true;
			}
		}

		private static readonly FileLogger logger = FileLogger.get_Instance();

		internal StackPanel EncryptionLevel;

		internal StackPanel PortSettings;

		internal RadioButton ManualRadioButton;

		private bool _contentLoaded;

		public ConfigureProtocolView() : base(3, null, 0, true, 1)
		{
			string arg_3C_0 = Resources.Cancel;
			Action arg_3C_1 = new Action(base.ExecuteCancel);
			Func<bool> arg_3C_2;
			if ((arg_3C_2 = ConfigureProtocolView.<>c.<>9__1_0) == null)
			{
				arg_3C_2 = (ConfigureProtocolView.<>c.<>9__1_0 = new Func<bool>(ConfigureProtocolView.<>c.<>9.<.ctor>b__1_0));
			}
			base.AddCustomButton(new DataWindowButton(arg_3C_0, arg_3C_1, arg_3C_2));
			base.AddCustomButton(new DataWindowButton(Resources.Apply, new Action(this.OnCustomExecuteApply), new Func<bool>(this.ValidateData)));
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		protected override bool ValidateData()
		{
			bool result = false;
			ConfigureProtocolViewModel configureProtocolViewModel = base.get_ViewModel() as ConfigureProtocolViewModel;
			if (configureProtocolViewModel != null)
			{
				result = configureProtocolViewModel.ChangesMade;
			}
			return result;
		}

		private void OnCustomExecuteApply()
		{
			if (this.ValidateData())
			{
				ConfigureProtocolViewModel configureProtocolViewModel = base.get_ViewModel() as ConfigureProtocolViewModel;
				if (configureProtocolViewModel != null)
				{
					if (configureProtocolViewModel.ValidateEnteredData())
					{
						configureProtocolViewModel.SaveChanges();
						base.ExecuteOk();
						return;
					}
				}
				else
				{
					base.ExecuteClose();
				}
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/protocol/configureprotocolview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.EncryptionLevel = (StackPanel)target;
				return;
			case 2:
				this.PortSettings = (StackPanel)target;
				return;
			case 3:
				this.ManualRadioButton = (RadioButton)target;
				return;
			default:
				this._contentLoaded = true;
				return;
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
using System.Windows.Markup;

namespace VyprVPN.Views.PreferencesWindow.Protocol
{
	public class ProtocolView : UserControl, IComponentConnector
	{
		private bool _contentLoaded;

		public ProtocolView()
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/protocol/protocolview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			this._contentLoaded = true;
		}
	}
}
