using Caliburn.Micro;
using NordVpn.Application.Native;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Native.Structures;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;

namespace NordVpn.Application
{
	public class AppWindowManager : WindowManager
	{
		private readonly UserPreferences _userPreferences;

		public AppWindowManager(UserPreferences userPreferences)
		{
			this._userPreferences = userPreferences;
		}

		[AsyncStateMachine(typeof(AppWindowManager.<ShowAsync>d__2))]
		public Task ShowAsync(object rootModel, object context = null, IDictionary<string, object> settings = null)
		{
			AppWindowManager.<ShowAsync>d__2 <ShowAsync>d__;
			<ShowAsync>d__.<>4__this = this;
			<ShowAsync>d__.rootModel = rootModel;
			<ShowAsync>d__.context = context;
			<ShowAsync>d__.settings = settings;
			<ShowAsync>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ShowAsync>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ShowAsync>d__.<>t__builder;
			<>t__builder.Start<AppWindowManager.<ShowAsync>d__2>(ref <ShowAsync>d__);
			return <ShowAsync>d__.<>t__builder.Task;
		}

		public override void ShowWindow(object rootModel, object context = null, IDictionary<string, object> settings = null)
		{
			Window window = this.CreateWindow(rootModel, false, context, settings);
			if (window is ShellView)
			{
				window.SourceInitialized += new EventHandler(this.WindowOnSourceInitialized);
				window.Closing += new CancelEventHandler(this.WindowClosing);
				window.Show();
				return;
			}
			window.Show();
		}

		private void WindowClosing(object sender, CancelEventArgs e)
		{
			Window window = (Window)sender;
			this._userPreferences.set_WindowPlacement(window.GetWindowPlacement());
		}

		private void WindowOnSourceInitialized(object sender, EventArgs eventArgs)
		{
			Window window = (Window)sender;
			if (this._userPreferences.get_StartMinimized())
			{
				window.WindowState = WindowState.Minimized;
				this.SetWindowPlacement(window, false);
				return;
			}
			this.SetWindowPlacement(window, true);
		}

		private void SetWindowPlacement(Window window, bool restoreFromMinimizedState)
		{
			WindowPlacement windowPlacement = this._userPreferences.get_WindowPlacement();
			if (windowPlacement == null)
			{
				return;
			}
			window.SetWindowPlacement(windowPlacement, restoreFromMinimizedState);
		}
	}
}
