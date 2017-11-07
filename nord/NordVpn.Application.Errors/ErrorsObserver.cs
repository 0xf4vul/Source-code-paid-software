using Autofac;
using Caliburn.Micro;
using NordVpn.Core.Abstract.Log;
using System;

namespace NordVpn.Application.Errors
{
	public class ErrorsObserver : IHandle<ErrorMessage>, IHandle, IStartable
	{
		private readonly ILogger _logger;

		private readonly IEventAggregator _eventAggregator;

		public ErrorsObserver(IEventAggregator eventAggregator, ILogger logger)
		{
			this._eventAggregator = eventAggregator;
			this._logger = logger;
		}

		public void Handle(ErrorMessage message)
		{
			this._logger.Error(message.Exception);
		}

		public void Start()
		{
			this._eventAggregator.Subscribe(this);
		}
	}
}
