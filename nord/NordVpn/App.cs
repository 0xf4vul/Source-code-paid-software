using System;
using System.CodeDom.Compiler;
using System.Diagnostics;
using System.Windows;

namespace NordVpn
{
	public class App : Application
	{
		private bool _contentLoaded;

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/NordVPN;component/app.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode, STAThread]
		public static void Main()
		{
			App expr_05 = new App();
			expr_05.InitializeComponent();
			expr_05.Run();
		}
	}
}
