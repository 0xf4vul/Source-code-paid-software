using NordVpn.Application.Abstract;
using NordVpn.Common;
using System;
using System.Runtime.CompilerServices;
using System.Windows;

namespace NordVpn.Application
{
	public class WpfApplication : IApplication
	{
		private readonly Application _application;

		private bool _isActivated;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<DataEventArgs<bool>> ForegoundStatusChanged;

		public bool IsInForeground
		{
			get
			{
				return this._application.MainWindow != null && this._application.MainWindow.WindowState != WindowState.Minimized;
			}
		}

		public WpfApplication(Application application)
		{
			this._application = application;
			this._application.Activated += new EventHandler(this.ApplicationOnActivated);
		}

		public void Shutdown()
		{
			this._application.Shutdown();
		}

		private void ApplicationOnActivated(object sender, EventArgs e)
		{
			if (this._isActivated)
			{
				return;
			}
			this._isActivated = true;
			this._application.MainWindow.StateChanged += delegate(object s, EventArgs _)
			{
				EventHandler<DataEventArgs<bool>> expr_06 = this.ForegoundStatusChanged;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, new DataEventArgs<bool>(this.IsInForeground));
			};
		}
	}
}
