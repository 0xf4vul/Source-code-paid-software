using Autofac;
using Autofac.Builder;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Servers.Search;
using NordVpn.Core.Logic.Users.Preferences;
using NordVpn.Core.Models;
using NordVpn.Core.Models.ServerCategories;
using System;

namespace NordVpn.Application.Ioc
{
	public class CoreModule : Module
	{
		protected override void Load(ContainerBuilder builder)
		{
			base.Load(builder);
			RegistrationExtensions.RegisterType<ServerPicker>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<CategoryFactory>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<UserPreferences>(builder).SingleInstance();
			RegistrationExtensions.RegisterType<CountryFactory>(builder);
			RegistrationExtensions.RegisterType<CountriesSearcher>(builder);
			RegistrationExtensions.RegisterType<ServersSearcher>(builder);
			RegistrationExtensions.RegisterType<UserPreferedVpnProtocolServerProvider>(builder).WithResolvedParameter(typeof(IServerProvider), "ApiServerProvider").Named<IServerProvider>("UserPreferedVpnProtocolServerProvider").SingleInstance();
			RegistrationExtensions.RegisterType<BestUserServerProvider>(builder).WithResolvedParameter(typeof(IServerProvider), "UserPreferedVpnProtocolServerProvider").SingleInstance();
		}
	}
}
