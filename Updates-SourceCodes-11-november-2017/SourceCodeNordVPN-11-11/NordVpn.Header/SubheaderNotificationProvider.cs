using NordVpn.Application.Abstract;
using NordVpn.Header.ViewModels;
using System;
using System.Threading.Tasks;

namespace NordVpn.Header
{
	public class SubheaderNotificationProvider : INotificationProvider
	{
		private readonly SubHeaderBarViewModel _viewModel;

		public SubheaderNotificationProvider(SubHeaderBarViewModel viewModel)
		{
			this._viewModel = viewModel;
		}

		public void Notify(string message)
		{
			this._viewModel.StateMessage = message;
			this._viewModel.LabelForeground = "#8ba6bd";
			this._viewModel.BubbleColor = "#103859";
		}

		public void NotifyError(string message)
		{
			this._viewModel.StateMessage = message;
			this._viewModel.LabelForeground = "#FF0000";
			this._viewModel.BubbleColor = "#FF0000";
		}

		public void NotifyError(string message, TimeSpan expirationTime, string messageAfterExpiration)
		{
			this.NotifyError(message);
			Task.Delay(expirationTime).ContinueWith(delegate(Task t)
			{
				this.Notify(messageAfterExpiration);
			}, TaskScheduler.FromCurrentSynchronizationContext());
		}
	}
}
