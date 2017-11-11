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
	public class DebugCommentDialog : ModernDialog, IComponentConnector
	{
		public bool SendLog;

		internal TextBox ResponseTextBox;

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

		public DebugCommentDialog()
		{
			this.InitializeComponent();
			base.Width = 300.0;
			base.Height = 150.0;
		}

		private void OKButton_Click(object sender, RoutedEventArgs e)
		{
			this.SendLog = true;
			base.DialogResult = new bool?(true);
		}

		private void Close_Click(object sender, RoutedEventArgs e)
		{
			this.SendLog = false;
			base.Close();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/debugcommentdialog.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ResponseTextBox = (TextBox)target;
				return;
			case 2:
				((Button)target).Click += new RoutedEventHandler(this.OKButton_Click);
				return;
			case 3:
				((Button)target).Click += new RoutedEventHandler(this.Close_Click);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
