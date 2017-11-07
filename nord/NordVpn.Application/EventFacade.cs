using Caliburn.Micro;
using NordVpn.Infrastructure.Api;
using System;
using System.Runtime.CompilerServices;
using System.ServiceModel;
using System.Threading.Tasks;

namespace NordVpn.Application
{
	public class EventFacade
	{
		private readonly IEventAggregator _eventAggregator;

		public EventFacade(IEventAggregator eventAggregator)
		{
			this._eventAggregator = eventAggregator;
		}

		public void Publish(object message)
		{
			EventAggregatorExtensions.PublishOnUIThread(this._eventAggregator, message);
		}

		[AsyncStateMachine(typeof(EventFacade.<PublishOnConnectionError>d__3))]
		public Task PublishOnConnectionError(Func<Task> action)
		{
			EventFacade.<PublishOnConnectionError>d__3 <PublishOnConnectionError>d__;
			<PublishOnConnectionError>d__.<>4__this = this;
			<PublishOnConnectionError>d__.action = action;
			<PublishOnConnectionError>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<PublishOnConnectionError>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <PublishOnConnectionError>d__.<>t__builder;
			<>t__builder.Start<EventFacade.<PublishOnConnectionError>d__3>(ref <PublishOnConnectionError>d__);
			return <PublishOnConnectionError>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(EventFacade.<PublishOnConnectionError>d__4<>))]
		public Task<TResult> PublishOnConnectionError<TResult>(Func<Task<TResult>> action)
		{
			EventFacade.<PublishOnConnectionError>d__4<TResult> <PublishOnConnectionError>d__;
			<PublishOnConnectionError>d__.<>4__this = this;
			<PublishOnConnectionError>d__.action = action;
			<PublishOnConnectionError>d__.<>t__builder = AsyncTaskMethodBuilder<TResult>.Create();
			<PublishOnConnectionError>d__.<>1__state = -1;
			AsyncTaskMethodBuilder<TResult> <>t__builder = <PublishOnConnectionError>d__.<>t__builder;
			<>t__builder.Start<EventFacade.<PublishOnConnectionError>d__4<TResult>>(ref <PublishOnConnectionError>d__);
			return <PublishOnConnectionError>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(EventFacade.<PublishOnError>d__5))]
		public Task PublishOnError(Func<Task> action, Func<Exception, bool> exceptionFilter)
		{
			EventFacade.<PublishOnError>d__5 <PublishOnError>d__;
			<PublishOnError>d__.<>4__this = this;
			<PublishOnError>d__.action = action;
			<PublishOnError>d__.exceptionFilter = exceptionFilter;
			<PublishOnError>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<PublishOnError>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <PublishOnError>d__.<>t__builder;
			<>t__builder.Start<EventFacade.<PublishOnError>d__5>(ref <PublishOnError>d__);
			return <PublishOnError>d__.<>t__builder.Task;
		}

		[AsyncStateMachine(typeof(EventFacade.<PublishOnException>d__6))]
		private Task PublishOnException(Func<Task> action, Func<Exception, bool> exceptionFilters)
		{
			EventFacade.<PublishOnException>d__6 <PublishOnException>d__;
			<PublishOnException>d__.<>4__this = this;
			<PublishOnException>d__.action = action;
			<PublishOnException>d__.exceptionFilters = exceptionFilters;
			<PublishOnException>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<PublishOnException>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <PublishOnException>d__.<>t__builder;
			<>t__builder.Start<EventFacade.<PublishOnException>d__6>(ref <PublishOnException>d__);
			return <PublishOnException>d__.<>t__builder.Task;
		}

		private static bool IsConnectionException(Exception ex)
		{
			return ex is CommunicationException || ex is OpenVpnConfigsStoreException || ex is OperationCanceledException || ex is TimeoutException;
		}
	}
}
