using Autofac;
using Caliburn.Micro;
using NordVpn.Core.Abstract.Log;
using NordVpn.Core.Abstract.Log.Logging;
using System;

namespace NordVpn.Application.Errors
{
	public class ErrorsObserver : IHandle, IHandle<ErrorMessage>, IStartable
	{
		private readonly IEventAggregator _eventAggregator;

		private readonly ILog _log = LogProvider.GetCurrentClassLogger();

		public ErrorsObserver(IEventAggregator eventAggregator)
		{
			this._eventAggregator = eventAggregator;
		}

		public void Handle(ErrorMessage message)
		{
			LogExtensions.Error(this._log, message.Exception);
		}

		public void Start()
		{
			this._eventAggregator.Subscribe(this);
		}
	}
}
