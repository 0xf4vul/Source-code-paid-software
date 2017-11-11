using Caliburn.Micro;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models.Settings;
using NordVpn.RestrictedLocation;
using NordVpn.RestrictedLocation.Messages;
using NordVpn.RestrictedLocation.ViewModels;
using System;

namespace NordVpn.Header.ViewModels
{
	public sealed class SubHeaderStripViewModel : Conductor<Screen>.Collection.OneActive, IHandle, IHandle<RestrictedLocationStripCloseMessage>
	{
		private readonly SubHeaderBarViewModel _subHeaderBarViewModel;

		private readonly RestrictedLocationContainerViewModel _restrictedLocationViewModel;

		private readonly UserContext _userContext;

		private readonly IPersistedSettings _settings;

		private readonly RestrictedLocationChecker _restrictedLocationChecker;

		public SubHeaderStripViewModel(SubHeaderBarViewModel subHeaderBarViewModel, RestrictedLocationContainerViewModel restrictedLocationViewModel, UserContext userContext, IPersistedSettings settings, RestrictedLocationChecker restrictedLocationChecker)
		{
			this._subHeaderBarViewModel = subHeaderBarViewModel;
			this._restrictedLocationViewModel = restrictedLocationViewModel;
			this._restrictedLocationChecker = restrictedLocationChecker;
			this._userContext = userContext;
			this._settings = settings;
			this._userContext.add_UserLoggedIn(new EventHandler<UserEventArgs>(this.OnUserLoggedIn));
			base.get_Items().Add(subHeaderBarViewModel);
			base.get_Items().Add(restrictedLocationViewModel);
		}

		protected override void OnInitialize()
		{
			base.OnInitialize();
			this.ActivateItem(this._subHeaderBarViewModel);
		}

		public void Handle(RestrictedLocationStripCloseMessage message)
		{
			this.ActivateItem(this._subHeaderBarViewModel);
		}

		private void OnUserLoggedIn(object sender, UserEventArgs e)
		{
			UserSettings userSettings = this._settings.Of<UserSettings>();
			if (this.IsFromRestrictedLocation() && !userSettings.IsObfuscationProtocolEnabled())
			{
				this.ActivateItem(this._restrictedLocationViewModel);
			}
		}

		private bool IsFromRestrictedLocation()
		{
			return !this._userContext.get_Authenticated() || this._restrictedLocationChecker.IsFromRestrictedLocation();
		}
	}
}
