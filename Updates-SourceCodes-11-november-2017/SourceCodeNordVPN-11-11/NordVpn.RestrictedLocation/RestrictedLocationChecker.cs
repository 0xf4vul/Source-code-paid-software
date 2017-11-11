using NordVpn.Core.Models;
using NordVpn.Infrastructure.Location;
using NordVpn.Shared;
using System;

namespace NordVpn.RestrictedLocation
{
	public sealed class RestrictedLocationChecker
	{
		private static readonly string[] RestrictedCountries = new string[]
		{
			"CN",
			"AE"
		};

		private readonly UserRegionScanner _regionScanner;

		public RestrictedLocationChecker(UserRegionScanner regionScanner)
		{
			this._regionScanner = regionScanner;
		}

		public bool IsFromRestrictedLocation()
		{
			UserLocation userLocation = this._regionScanner.GetUserLocation();
			return RestrictedLocationChecker.RestrictedCountries.ContainsIgnoringCase(userLocation.get_CountryCode());
		}
	}
}
