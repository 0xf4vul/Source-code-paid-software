using Caliburn.Micro;
using NordVpn.Infrastructure.Api;
using System;
using System.Runtime.CompilerServices;
using System.ServiceModel;
using System.Threading.Tasks;

namespace NordVpn.Application
{
	[Obsolete("Inheritance should not be used here. Because some classes, Conductors, PropertyChangedBase cannot derive from this class. Use EventsFacade")]
	public abstract class ErrorHandlingAppScreen : AppScreen
	{
		protected readonly IEventAggregator EventAggregator;

		protected ErrorHandlingAppScreen(IEventAggregator eventAggregator)
		{
			this.EventAggregator = eventAggregator;
		}

		[AsyncStateMachine(typeof(ErrorHandlingAppScreen.<NotifyOnException>d__2))]
		protected Task NotifyOnException(Func<Task> action, Func<Exception, bool> exceptionsFilter)
		{
			ErrorHandlingAppScreen.<NotifyOnException>d__2 <NotifyOnException>d__;
			<NotifyOnException>d__.<>4__this = this;
			<NotifyOnException>d__.action = action;
			<NotifyOnException>d__.exceptionsFilter = exceptionsFilter;
			<NotifyOnException>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<NotifyOnException>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <NotifyOnException>d__.<>t__builder;
			<>t__builder.Start<ErrorHandlingAppScreen.<NotifyOnException>d__2>(ref <NotifyOnException>d__);
			return <NotifyOnException>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(ErrorHandlingAppScreen.<NotifyOnConnectionException>d__3))]
		protected Task NotifyOnConnectionException(Func<Task> action)
		{
			ErrorHandlingAppScreen.<NotifyOnConnectionException>d__3 <NotifyOnConnectionException>d__;
			<NotifyOnConnectionException>d__.<>4__this = this;
			<NotifyOnConnectionException>d__.action = action;
			<NotifyOnConnectionException>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<NotifyOnConnectionException>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <NotifyOnConnectionException>d__.<>t__builder;
			<>t__builder.Start<ErrorHandlingAppScreen.<NotifyOnConnectionException>d__3>(ref <NotifyOnConnectionException>d__);
			return <NotifyOnConnectionException>d__.<>t__builder.Task;
		}

		private static bool IsConnectionException(Exception ex)
		{
			return ex is CommunicationException || ex is OpenVpnConfigsStoreException || ex is OperationCanceledException || ex is TimeoutException;
		}
	}
}
