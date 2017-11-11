using Caliburn.Micro;
using NordVpn.Core.Models.ServerCategories;
using NordVpn.ServerList.Messages;
using NordVpn.ServerList.ViewModels.Detailed;
using System;

namespace NordVpn.ServerList.ViewModels.Categories
{
	public sealed class CategoryServersGroupsToDetailedSwitchViewModel : Conductor<Screen>.Collection.OneActive, IHandle, IHandle<NavigateToServersDetailsMessage<Category>>, IHandle<NavigateToServersGroupsMessage<Category>>
	{
		private readonly CategoryServersGroupsViewModel _categoryServersViewModel;

		private readonly DetailedServersViewModel _detailedServersViewModel;

		public override string DisplayName
		{
			get;
			set;
		}

		public CategoryServersGroupsToDetailedSwitchViewModel(CategoryServersGroupsViewModel categoryServersViewModel, DetailedServersViewModel detailedServersViewModel)
		{
			this.<DisplayName>k__BackingField = "Speciality Servers";
			base..ctor();
			this._categoryServersViewModel = categoryServersViewModel;
			this._detailedServersViewModel = detailedServersViewModel;
			base.get_Items().Add(this._categoryServersViewModel);
			base.get_Items().Add(this._detailedServersViewModel);
		}

		public void Handle(NavigateToServersGroupsMessage<Category> message)
		{
			this.ActivateItem(this._categoryServersViewModel);
		}

		public void Handle(NavigateToServersDetailsMessage<Category> message)
		{
			this.ActivateItem(this._detailedServersViewModel);
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this.ActivateItem(this._categoryServersViewModel);
		}

		protected override void OnDeactivate(bool close)
		{
			base.OnDeactivate(close);
			this.ActivateItem(this._categoryServersViewModel);
		}
	}
}
