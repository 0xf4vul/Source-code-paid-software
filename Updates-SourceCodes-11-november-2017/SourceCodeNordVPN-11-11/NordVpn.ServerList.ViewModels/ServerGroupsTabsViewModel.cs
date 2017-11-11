using Caliburn.Micro;
using NordVpn.Application.Analytics;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels.Categories;
using NordVpn.ServerList.ViewModels.Countries;
using NordVpn.ServerList.ViewModels.Detailed;
using System;
using System.Reflection;

namespace NordVpn.ServerList.ViewModels
{
	public sealed class ServerGroupsTabsViewModel : Conductor<Screen>.Collection.OneActive, IHandle, IHandle<NavigateToCategoryServersGroupMessage>
	{
		private readonly CountryServersGroupsToDetailedSwitchViewModel _countryServersViewModel;

		private readonly DetailedFavouriteServersViewModel _favouriteServersViewModel;

		private readonly CategoryServersGroupsToDetailedSwitchViewModel _categoryServersViewModel;

		private int _selectedIndex;

		public int SelectedIndex
		{
			get
			{
				return this._selectedIndex;
			}
			set
			{
				if (this.Set<int>(ref this._selectedIndex, value, "SelectedIndex"))
				{
					this.SendSelectionChange(value);
				}
			}
		}

		public ServerGroupsTabsViewModel(CountryServersGroupsToDetailedSwitchViewModel countryServersViewModel, DetailedFavouriteServersViewModel favouriteServersViewModel, CategoryServersGroupsToDetailedSwitchViewModel categoryServersViewModel)
		{
			this._countryServersViewModel = countryServersViewModel;
			this._favouriteServersViewModel = favouriteServersViewModel;
			this._categoryServersViewModel = categoryServersViewModel;
			base.get_Items().Add(countryServersViewModel);
			base.get_Items().Add(favouriteServersViewModel);
			base.get_Items().Add(categoryServersViewModel);
		}

		public void Handle(NavigateToCategoryServersGroupMessage message)
		{
			this.ActivateItem(this._categoryServersViewModel);
		}

		private void SendSelectionChange(int index)
		{
			if (index == base.get_Items().IndexOf(this._countryServersViewModel))
			{
				ServerGroupsTabsViewModel.SendEvent("countries_click");
				return;
			}
			if (index == base.get_Items().IndexOf(this._favouriteServersViewModel))
			{
				ServerGroupsTabsViewModel.SendEvent("my_favourites_click");
				return;
			}
			if (index == base.get_Items().IndexOf(this._categoryServersViewModel))
			{
				ServerGroupsTabsViewModel.SendEvent("speciality_servers_click");
			}
		}

		[Analytics, Event("serverlist")]
		private static void SendEvent(string action)
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(ServerGroupsTabsViewModel.SendEvent(string)).MethodHandle, typeof(ServerGroupsTabsViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			analyticsAttribute.Init(null, methodFromHandle, new object[]
			{
				action
			});
			analyticsAttribute.OnEntry();
			try
			{
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}
	}
}
