using CyberGhost.Components;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Helpers;
using MobileConcepts.Settings;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Exception : UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Exception.<>c <>9 = new Exception.<>c();

			public static Action <>9__8_1;

			public static SendOrPostCallback <>9__8_0;

			public static SendOrPostCallback <>9__9_0;

			internal void <OnNavigatedFrom>b__8_0(object state)
			{
				RegistrySettingsStorage arg_24_0 = SettingsHolder.get_Settings();
				Action arg_24_1;
				if ((arg_24_1 = Exception.<>c.<>9__8_1) == null)
				{
					arg_24_1 = (Exception.<>c.<>9__8_1 = new Action(Exception.<>c.<>9.<OnNavigatedFrom>b__8_1));
				}
				arg_24_0.IfHasChanges(arg_24_1);
			}

			internal void <OnNavigatedFrom>b__8_1()
			{
				SettingsHolder.get_Settings().SaveSettingsAsync(false);
				new SettingsChangedEvent
				{
					SettingsTab = "exceptions"
				}.FireEvent();
			}

			internal void <OnNavigatedTo>b__9_0(object state)
			{
				new SettingsTabClickedEvent
				{
					SettingsTab = "exceptions"
				}.FireEvent();
			}
		}

		internal TextBox ExceptionName;

		internal Button AddException;

		internal Button RemoveSelected;

		internal ListBox LbExceptions;

		internal Button AutodetectEmailSettings;

		private bool _contentLoaded;

		public Exception()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings();
		}

		private void autodetectEmailSettings_Click(object sender, RoutedEventArgs e)
		{
			List<string> list = new List<string>();
			list.AddRange(HelperFunctions.GetSystemSmtpServers().ToList<string>());
			if (HelperFunctions.get_SmtpSettingFoundCount() < 1)
			{
				ModernDialogExtension.ShowDialogOk(CyberGhost.Translations.General.Exception_AutodetectEmailSettings_CantDetectSmtpServerAutomatically, CyberGhost.Translations.General.Exception_AutodetectEmailSettings_PleaseAddYourSmtpServerInExceptionManually);
				return;
			}
			using (List<string>.Enumerator enumerator = list.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					string item = enumerator.Current.ToLower().Trim();
					if (!SettingsHolder.get_Settings().get_ExceptionList().Contains(item))
					{
						SettingsHolder.get_Settings().get_ExceptionList().Add(item);
					}
					base.DataContext = SettingsHolder.get_Settings();
				}
			}
		}

		private void removeSelected_Click(object sender, RoutedEventArgs e)
		{
			if (this.LbExceptions.SelectedItem != null)
			{
				SettingsHolder.get_Settings().get_ExceptionList().Remove(this.LbExceptions.SelectedItem.ToString());
			}
		}

		[AsyncStateMachine(typeof(Exception.<addException_Click>d__3))]
		private void addException_Click(object sender, RoutedEventArgs e)
		{
			Exception.<addException_Click>d__3 <addException_Click>d__;
			<addException_Click>d__.<>4__this = this;
			<addException_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<addException_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <addException_Click>d__.<>t__builder;
			<>t__builder.Start<Exception.<addException_Click>d__3>(ref <addException_Click>d__);
		}

		private void ExceptionName_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.AddException.IsEnabled = (this.ExceptionName.Text.Length > 0);
		}

		private void LbExceptions_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			IList addedItems = e.AddedItems;
			this.RemoveSelected.IsEnabled = (addedItems.Count > 0);
		}

		private void ExceptionName_OnKeyUp(object sender, KeyEventArgs e)
		{
			if (e.Key == Key.Return)
			{
				this.addException_Click(null, null);
			}
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Exception.<>c.<>9__8_0) == null)
			{
				arg_25_1 = (Exception.<>c.<>9__8_0 = new SendOrPostCallback(Exception.<>c.<>9.<OnNavigatedFrom>b__8_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			SynchronizationContext arg_25_0 = ObjectHolder.MainContext;
			SendOrPostCallback arg_25_1;
			if ((arg_25_1 = Exception.<>c.<>9__9_0) == null)
			{
				arg_25_1 = (Exception.<>c.<>9__9_0 = new SendOrPostCallback(Exception.<>c.<>9.<OnNavigatedTo>b__9_0));
			}
			arg_25_0.Post(arg_25_1, null);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/exception.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ExceptionName = (TextBox)target;
				this.ExceptionName.TextChanged += new TextChangedEventHandler(this.ExceptionName_OnTextChanged);
				this.ExceptionName.KeyUp += new KeyEventHandler(this.ExceptionName_OnKeyUp);
				return;
			case 2:
				this.AddException = (Button)target;
				this.AddException.Click += new RoutedEventHandler(this.addException_Click);
				return;
			case 3:
				this.RemoveSelected = (Button)target;
				this.RemoveSelected.Click += new RoutedEventHandler(this.removeSelected_Click);
				return;
			case 4:
				this.LbExceptions = (ListBox)target;
				this.LbExceptions.SelectionChanged += new SelectionChangedEventHandler(this.LbExceptions_OnSelectionChanged);
				return;
			case 5:
				this.AutodetectEmailSettings = (Button)target;
				this.AutodetectEmailSettings.Click += new RoutedEventHandler(this.autodetectEmailSettings_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
