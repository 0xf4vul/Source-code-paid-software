using Autofac;
using Autofac.Builder;
using NordVpn.Application.Ioc;
using NordVpn.Core.Logic.Servers;
using System;

namespace NordVpn.Settings.Legacy
{
	public class LegacyModule : Module
	{
		protected override void Load(ContainerBuilder builder)
		{
			base.Load(builder);
			RegistrationExtensions.RegisterType<AutoConnectServersProvider>(builder).WithResolvedParameter(typeof(IServerProvider), "UserPreferedVpnProtocolServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<SelectAutoConnectViewModel>(builder).WithResolvedParameter(typeof(IServerProvider), "UserPreferedVpnProtocolServerProvider").SingleInstance();
		}
	}
}
