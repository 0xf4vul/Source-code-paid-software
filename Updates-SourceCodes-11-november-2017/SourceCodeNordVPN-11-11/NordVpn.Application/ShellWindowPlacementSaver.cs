using NordVpn.Application.Native;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models.Settings;
using NordVpn.Core.Models.Settings.Structures;
using System;
using System.ComponentModel;
using System.Windows;

namespace NordVpn.Application
{
	public class ShellWindowPlacementSaver
	{
		private readonly IPersistedSettings _settings;

		public ShellWindowPlacementSaver(IPersistedSettings settings)
		{
			this._settings = settings;
		}

		public bool CanTrack(Window window)
		{
			return window is ShellView;
		}

		public void TrackWindowPlacement(Window window)
		{
			window.SourceInitialized += new EventHandler(this.WindowOnSourceInitialized);
			window.Closing += new CancelEventHandler(this.WindowClosing);
		}

		private void WindowClosing(object sender, CancelEventArgs e)
		{
			Window window = (Window)sender;
			PersistedSettingsExtension.Save<AppSettings>(this._settings, delegate(AppSettings s)
			{
				s.set_WindowPlacement(window.GetWindowPlacement());
			});
		}

		private void WindowOnSourceInitialized(object sender, EventArgs eventArgs)
		{
			Window window = (Window)sender;
			if (this._settings.Of<AppSettings>().get_StartMinimized())
			{
				window.WindowState = WindowState.Minimized;
				this.SetWindowPlacement(window, false);
				return;
			}
			this.SetWindowPlacement(window, true);
		}

		private void SetWindowPlacement(Window window, bool restoreFromMinimizedState)
		{
			WindowPlacement windowPlacement = this._settings.Of<AppSettings>().get_WindowPlacement();
			if (windowPlacement == null)
			{
				return;
			}
			window.SetWindowPlacement(windowPlacement, restoreFromMinimizedState);
		}
	}
}
