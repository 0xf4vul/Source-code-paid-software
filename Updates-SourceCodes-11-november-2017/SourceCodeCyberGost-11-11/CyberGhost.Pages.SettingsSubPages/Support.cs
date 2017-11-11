using CyberGhost.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Pages.SettingsSubPages
{
	public class Support : UserControl, IComponentConnector
	{
		internal TextBox FragmentSize;

		internal Label FragmentHint;

		private bool _contentLoaded;

		public Support()
		{
			this.InitializeComponent();
			base.DataContext = SettingsHolder.get_Settings();
			this.FragmentHint.Visibility = Visibility.Hidden;
		}

		private void FragmentSize_Textchanged(object sender, TextChangedEventArgs textChangedEventArgs)
		{
			try
			{
				if (this.FragmentSize.Text != string.Empty && (int.Parse(this.FragmentSize.Text) < 500 || int.Parse(this.FragmentSize.Text) > 1500))
				{
					this.FragmentHint.Visibility = Visibility.Visible;
				}
				else
				{
					this.FragmentHint.Visibility = Visibility.Hidden;
				}
			}
			catch (System.Exception)
			{
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/settingssubpages/support.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.FragmentSize = (TextBox)target;
				this.FragmentSize.TextChanged += new TextChangedEventHandler(this.FragmentSize_Textchanged);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.FragmentHint = (Label)target;
		}
	}
}
