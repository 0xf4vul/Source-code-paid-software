using Caliburn.Micro;
using NordVpn.Core.Models;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels.Detailed;
using System;

namespace NordVpn.ServerList.ViewModels.Countries
{
	public sealed class CountryServersGroupsToDetailedSwitchViewModel : Conductor<Screen>.Collection.OneActive, IHandle, IHandle<NavigateToServersDetailsMessage<Country>>, IHandle<NavigateToServersGroupsMessage<Country>>
	{
		private readonly CountryServersGroupsViewModel _countryServersViewModel;

		private readonly DetailedServersViewModel _detailedServersViewModel;

		public override string DisplayName
		{
			get;
			set;
		}

		public CountryServersGroupsToDetailedSwitchViewModel(CountryServersGroupsViewModel countryServersViewModel, DetailedServersViewModel detailedServersViewModel)
		{
			this.<DisplayName>k__BackingField = "Countries";
			base..ctor();
			this._countryServersViewModel = countryServersViewModel;
			this._detailedServersViewModel = detailedServersViewModel;
			base.get_Items().Add(this._countryServersViewModel);
			base.get_Items().Add(this._detailedServersViewModel);
		}

		public void Handle(NavigateToServersGroupsMessage<Country> message)
		{
			this.ActivateItem(this._countryServersViewModel);
		}

		public void Handle(NavigateToServersDetailsMessage<Country> message)
		{
			this.ActivateItem(this._detailedServersViewModel);
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this.ActivateItem(this._countryServersViewModel);
		}

		protected override void OnDeactivate(bool close)
		{
			base.OnDeactivate(close);
			this.ActivateItem(this._countryServersViewModel);
		}
	}
}
