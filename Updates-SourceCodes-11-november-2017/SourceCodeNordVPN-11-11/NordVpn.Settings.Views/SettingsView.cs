using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;

namespace NordVpn.Settings.Views
{
	public class SettingsView : UserControl, IComponentConnector, IStyleConnector
	{
		internal Button CheckForUpdate;

		internal Button OpenServerPicker;

		internal Button OpenAppSelect;

		internal Button ConfirmShowAdvancedSettings;

		internal Button CancelShowAdvancedSettings;

		internal ItemsControl DnsHosts;

		internal Button AddDnsHost;

		internal Button RunDiagnostics;

		private bool _contentLoaded;

		public SettingsView()
		{
			this.InitializeComponent();
		}

		private void TextBox_GotFocus(object sender, RoutedEventArgs e)
		{
			TextBox textBox = sender as TextBox;
			if (textBox != null)
			{
				textBox.Select(0, textBox.Text.Length);
			}
		}

		private void TextBox_MouseDown(object sender, MouseButtonEventArgs e)
		{
			TextBox expr_06 = sender as TextBox;
			if (expr_06 != null)
			{
				expr_06.Focus();
			}
			e.Handled = true;
		}

		private void TextBox_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Key == Key.Return || e.Key == Key.Return)
			{
				Keyboard.ClearFocus();
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
			Uri resourceLocator = new Uri("/NordVPN;component/settings/views/settingsview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.CheckForUpdate = (Button)target;
				return;
			case 2:
				this.OpenServerPicker = (Button)target;
				return;
			case 3:
				this.OpenAppSelect = (Button)target;
				return;
			case 4:
				this.ConfirmShowAdvancedSettings = (Button)target;
				return;
			case 5:
				this.CancelShowAdvancedSettings = (Button)target;
				return;
			case 6:
				this.DnsHosts = (ItemsControl)target;
				return;
			case 8:
				this.AddDnsHost = (Button)target;
				return;
			case 9:
				this.RunDiagnostics = (Button)target;
				return;
			}
			this._contentLoaded = true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 7)
			{
				((TextBox)target).GotFocus += new RoutedEventHandler(this.TextBox_GotFocus);
				((TextBox)target).PreviewMouseDown += new MouseButtonEventHandler(this.TextBox_MouseDown);
				((TextBox)target).KeyDown += new KeyEventHandler(this.TextBox_KeyDown);
			}
		}
	}
}
