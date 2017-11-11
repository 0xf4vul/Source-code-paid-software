using Autofac;
using Autofac.Builder;
using Autofac.Core;
using System;
using System.Reflection;

namespace NordVpn.Application.Ioc
{
	public static class AutofacExtensions
	{
		public static IRegistrationBuilder<TLimit, TReflectionActivatorData, TStyle> WithResolvedParameter<TLimit, TReflectionActivatorData, TStyle>(this IRegistrationBuilder<TLimit, TReflectionActivatorData, TStyle> registration, Type namedServiceType, string namedService) where TReflectionActivatorData : ReflectionActivatorData
		{
			return RegistrationExtensions.WithParameter<TLimit, TReflectionActivatorData, TStyle>(registration, new ResolvedParameter((ParameterInfo pi, IComponentContext ctx) => pi.ParameterType == namedServiceType, (ParameterInfo pi, IComponentContext ctx) => ResolutionExtensions.ResolveNamed(ctx, namedService, namedServiceType)));
		}
	}
}
