using Autofac;
using Caliburn.Micro;
using System;
using System.Collections.Generic;

namespace NordVpn.Application.Ioc.AutofacBootstrapping
{
	public class AutofacBootstrapper : BootstrapperBase
	{
		protected IContainer Container
		{
			get;
			private set;
		}

		protected sealed override void Configure()
		{
			ContainerBuilder containerBuilder = new ContainerBuilder();
			RegistrationExtensions.RegisterType<WindowManager>(containerBuilder).As<IWindowManager>().SingleInstance();
			RegistrationExtensions.RegisterType<EventAggregator>(containerBuilder).As<IEventAggregator>().SingleInstance();
			ModuleRegistrationExtensions.RegisterModule<EventAggregationAutoSubscriptionModule>(containerBuilder);
			this.ConfigureContainer(containerBuilder);
			this.Container = containerBuilder.Build(0);
		}

		protected sealed override object GetInstance(Type service, string key)
		{
			if (key != null)
			{
				return ResolutionExtensions.ResolveNamed(this.Container, key, service);
			}
			return ResolutionExtensions.Resolve(this.Container, service);
		}

		protected sealed override IEnumerable<object> GetAllInstances(Type service)
		{
			return ResolutionExtensions.Resolve(this.Container, typeof(IEnumerable<>).MakeGenericType(new Type[]
			{
				service
			})) as IEnumerable<object>;
		}

		protected sealed override void BuildUp(object instance)
		{
			ResolutionExtensions.InjectProperties<object>(this.Container, instance);
		}

		protected virtual void ConfigureContainer(ContainerBuilder builder)
		{
		}

		protected override void OnExit(object sender, EventArgs e)
		{
			this.Container.Dispose();
		}

		protected T Resolve<T>()
		{
			return ResolutionExtensions.Resolve<T>(this.Container);
		}

		protected T Resolve<T>(string name)
		{
			return ResolutionExtensions.ResolveNamed<T>(this.Container, name);
		}

		public AutofacBootstrapper() : base(true)
		{
		}
	}
}
