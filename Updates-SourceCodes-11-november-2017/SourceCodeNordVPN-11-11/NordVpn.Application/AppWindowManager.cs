using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;

namespace NordVpn.Application
{
	public class AppWindowManager : WindowManager
	{
		private readonly ShellWindowPlacementSaver _windowPlacementSaver;

		public AppWindowManager(ShellWindowPlacementSaver windowPlacementSaver)
		{
			this._windowPlacementSaver = windowPlacementSaver;
		}

		[AsyncStateMachine(typeof(AppWindowManager.<ShowAsync>d__2))]
		public Task ShowAsync(object viewModel)
		{
			AppWindowManager.<ShowAsync>d__2 <ShowAsync>d__;
			<ShowAsync>d__.<>4__this = this;
			<ShowAsync>d__.viewModel = viewModel;
			<ShowAsync>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ShowAsync>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ShowAsync>d__.<>t__builder;
			<>t__builder.Start<AppWindowManager.<ShowAsync>d__2>(ref <ShowAsync>d__);
			return <ShowAsync>d__.<>t__builder.Task;
		}

		public override void ShowWindow(object rootModel, object context = null, IDictionary<string, object> settings = null)
		{
			Window window = this.CreateWindow(rootModel, false, context, settings);
			if (this._windowPlacementSaver.CanTrack(window))
			{
				this._windowPlacementSaver.TrackWindowPlacement(window);
			}
			window.Show();
		}
	}
}
