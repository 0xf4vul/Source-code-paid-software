using Autofac;
using Autofac.Core;
using Autofac.Util;
using Caliburn.Micro;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Application.Ioc.AutofacBootstrapping
{
	public sealed class EventAggregationAutoSubscriptionModule : Module
	{
		private class DisposableAction : Disposable
		{
			private Action Action
			{
				[CompilerGenerated]
				get
				{
					return this.<Action>k__BackingField;
				}
			}

			public DisposableAction(Action action)
			{
				this.<Action>k__BackingField = action;
			}

			protected override void Dispose(bool disposing)
			{
				base.Dispose(disposing);
				if (disposing)
				{
					this.Action();
				}
			}
		}

		protected override void AttachToComponentRegistration(IComponentRegistry registry, IComponentRegistration registration)
		{
			registration.add_Activated(new EventHandler<ActivatedEventArgs<object>>(EventAggregationAutoSubscriptionModule.OnComponentActivated));
		}

		private static void OnComponentActivated(object sender, ActivatedEventArgs<object> args)
		{
			if (args == null)
			{
				return;
			}
			IHandle handler;
			if ((handler = (args.get_Instance() as IHandle)) == null)
			{
				return;
			}
			ILifetimeScope lifetimeScope = ResolutionExtensions.Resolve<ILifetimeScope>(args.get_Context());
			IEventAggregator eventAggregator = ResolutionExtensions.Resolve<IEventAggregator>(lifetimeScope);
			eventAggregator.Subscribe(handler);
			EventAggregationAutoSubscriptionModule.DisposableAction disposableAction = new EventAggregationAutoSubscriptionModule.DisposableAction(delegate
			{
				eventAggregator.Unsubscribe(handler);
			});
			lifetimeScope.get_Disposer().AddInstanceForDisposal(disposableAction);
		}
	}
}
