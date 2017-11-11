using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class TileDialog : ModernDialog, IComponentConnector
	{
		internal TextBox ResponseTextBox;

		internal Button ButtonOk;

		private bool _contentLoaded;

		public string ResponseText
		{
			get
			{
				return this.ResponseTextBox.Text;
			}
			set
			{
				this.ResponseTextBox.Text = value;
			}
		}

		public TileDialog()
		{
			this.InitializeComponent();
			base.Width = 300.0;
			base.Height = 150.0;
		}

		private void OKButton_Click(object sender, RoutedEventArgs e)
		{
			base.DialogResult = new bool?(true);
		}

		private void ResponseTextBox_TextChanged(object sender, TextChangedEventArgs e)
		{
			this.ButtonOk.IsEnabled = Uri.IsWellFormedUriString("http://" + this.ResponseTextBox.Text, UriKind.RelativeOrAbsolute);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/tiledialog.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.ResponseTextBox = (TextBox)target;
				this.ResponseTextBox.TextChanged += new TextChangedEventHandler(this.ResponseTextBox_TextChanged);
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.ButtonOk = (Button)target;
			this.ButtonOk.Click += new RoutedEventHandler(this.OKButton_Click);
		}
	}
}
