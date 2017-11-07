using GalaSoft.MvvmLight.CommandWpf;
using NordVpn.Application;
using NordVpn.Core.Abstract;
using NordVpn.Shared;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace NordVpn.Search.ViewModels
{
	public class SearchViewModel : AppScreen
	{
		private const int MinSearchChars = 3;

		private readonly IAnalyticsManager _appEventManager;

		private string _searchValue;

		private SearchResultViewModel _focusedSearchResult;

		private bool _showSearchResults;

		private bool _searchOpened;

		private readonly ServersSearchFacade _serversSearchFacade;

		private readonly EventFacade _eventFacade;

		public ICommand SearchIcon
		{
			[CompilerGenerated]
			get
			{
				return this.<SearchIcon>k__BackingField;
			}
		}

		public ICommand SelectServer
		{
			[CompilerGenerated]
			get
			{
				return this.<SelectServer>k__BackingField;
			}
		}

		public ICommand SeachBoxLostFocus
		{
			[CompilerGenerated]
			get
			{
				return this.<SeachBoxLostFocus>k__BackingField;
			}
		}

		public ICommand KeyUp
		{
			[CompilerGenerated]
			get
			{
				return this.<KeyUp>k__BackingField;
			}
		}

		public ICommand KeyDown
		{
			[CompilerGenerated]
			get
			{
				return this.<KeyDown>k__BackingField;
			}
		}

		public ICommand OnEnterPress
		{
			[CompilerGenerated]
			get
			{
				return this.<OnEnterPress>k__BackingField;
			}
		}

		public SearchResultViewModel FocusedSearchItem
		{
			get
			{
				return this._focusedSearchResult;
			}
			set
			{
				base.Set<SearchResultViewModel>(ref this._focusedSearchResult, value, "FocusedSearchItem");
			}
		}

		public ObservableCollection<SearchResultViewModel> Items
		{
			[CompilerGenerated]
			get
			{
				return this.<Items>k__BackingField;
			}
		}

		public bool ShowSearchResults
		{
			get
			{
				return this._showSearchResults;
			}
			set
			{
				base.Set<bool>(ref this._showSearchResults, value, "ShowSearchResults");
			}
		}

		public bool SearchOpened
		{
			get
			{
				return this._searchOpened;
			}
			set
			{
				base.Set<bool>(ref this._searchOpened, value, "SearchOpened");
			}
		}

		public string SearchValue
		{
			get
			{
				return this._searchValue;
			}
			set
			{
				if (base.Set<string>(ref this._searchValue, value, "SearchValue"))
				{
					this.SearchValueChanged();
				}
			}
		}

		public SearchViewModel(IAnalyticsManager appEventManager, EventFacade eventFacade, ServersSearchFacade serversSearchFacade)
		{
			this.<Items>k__BackingField = new ObservableCollection<SearchResultViewModel>();
			base..ctor();
			this._appEventManager = appEventManager;
			this._eventFacade = eventFacade;
			this._serversSearchFacade = serversSearchFacade;
			this.<SearchIcon>k__BackingField = new RelayCommand(new Action(this.SearchIconCommand));
			this.<SelectServer>k__BackingField = new RelayCommand<SearchResultViewModel>(new Action<SearchResultViewModel>(this.SelectSearchResultCommand));
			this.<SeachBoxLostFocus>k__BackingField = new RelayCommand(new Action(this.SeachBoxLostFocusCommand));
			this.<KeyUp>k__BackingField = new RelayCommand(new Action(this.KeyUpCommand));
			this.<KeyDown>k__BackingField = new RelayCommand(new Action(this.KeyDownCommand));
			this.<OnEnterPress>k__BackingField = new RelayCommand(new Action(this.OnEnterPressCommand));
		}

		private void SearchIconCommand()
		{
			if (this.ShowSearchResults && this.SearchOpened)
			{
				return;
			}
			this.SearchOpened = true;
		}

		private void SearchValueChanged()
		{
			if (this.SearchValue.Length < 3)
			{
				this.ShowSearchResults = false;
				return;
			}
			this._appEventManager.TriggerEvent("Search", this.SearchValue);
			List<SearchResultViewModel> list = this._serversSearchFacade.FindServers(this.SearchValue).ToList<SearchResultViewModel>();
			if (list.Any<SearchResultViewModel>())
			{
				this.ShowSearchResults = true;
			}
			this.Items.Clear();
			this.Items.AddRange(list);
		}

		[AsyncStateMachine(typeof(SearchViewModel.<SelectSearchResultCommand>d__44))]
		private void SelectSearchResultCommand(SearchResultViewModel searchResult)
		{
			SearchViewModel.<SelectSearchResultCommand>d__44 <SelectSearchResultCommand>d__;
			<SelectSearchResultCommand>d__.<>4__this = this;
			<SelectSearchResultCommand>d__.searchResult = searchResult;
			<SelectSearchResultCommand>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SelectSearchResultCommand>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SelectSearchResultCommand>d__.<>t__builder;
			<>t__builder.Start<SearchViewModel.<SelectSearchResultCommand>d__44>(ref <SelectSearchResultCommand>d__);
		}

		private void KeyUpCommand()
		{
			if (this.FocusedSearchItem == null)
			{
				return;
			}
			int num = this.Items.IndexOf(this.FocusedSearchItem);
			if (num == 0)
			{
				return;
			}
			this.FocusedSearchItem = this.Items[num - 1];
		}

		private void KeyDownCommand()
		{
			if (this.FocusedSearchItem == null)
			{
				if (this.Items.Count > 0)
				{
					this.FocusedSearchItem = this.Items[0];
				}
				return;
			}
			int num = this.Items.IndexOf(this.FocusedSearchItem);
			if (num + 1 >= this.Items.Count)
			{
				return;
			}
			this.FocusedSearchItem = this.Items[num + 1];
		}

		private void OnEnterPressCommand()
		{
			if (this.FocusedSearchItem == null)
			{
				return;
			}
			this.SelectSearchResultCommand(this.FocusedSearchItem);
		}

		private void SeachBoxLostFocusCommand()
		{
			this.SearchOpened = false;
			this.SearchValue = "";
		}
	}
}
