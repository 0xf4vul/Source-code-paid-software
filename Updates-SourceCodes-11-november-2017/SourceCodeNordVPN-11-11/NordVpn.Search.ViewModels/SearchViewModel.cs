using NordVpn.Application;
using NordVpn.Application.Analytics;
using NordVpn.Shared;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace NordVpn.Search.ViewModels
{
	public class SearchViewModel : AppScreen
	{
		private const int MinSearchChars = 3;

		private string _searchValue;

		private SearchResultViewModel _focusedSearchResult;

		private bool _showSearchResults;

		private bool _searchOpened;

		private readonly SearchResultVpnConnectionVisitor _vpnConnectionVisitor;

		private readonly ServersSearchFacade _serversSearchFacade;

		private readonly EventFacade _eventFacade;

		public SearchResultViewModel FocusedSearchItem
		{
			get
			{
				return this._focusedSearchResult;
			}
			set
			{
				this.Set<SearchResultViewModel>(ref this._focusedSearchResult, value, "FocusedSearchItem");
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
				this.Set<bool>(ref this._showSearchResults, value, "ShowSearchResults");
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
				this.Set<bool>(ref this._searchOpened, value, "SearchOpened");
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
				if (this.Set<string>(ref this._searchValue, value, "SearchValue"))
				{
					this.SearchValueChanged(value);
				}
			}
		}

		public SearchViewModel(EventFacade eventFacade, SearchResultVpnConnectionVisitor vpnConnectionVisitor, ServersSearchFacade serversSearchFacade)
		{
			this.<Items>k__BackingField = new ObservableCollection<SearchResultViewModel>();
			base..ctor();
			this._eventFacade = eventFacade;
			this._vpnConnectionVisitor = vpnConnectionVisitor;
			this._serversSearchFacade = serversSearchFacade;
		}

		public void OpenSearch()
		{
			if (this.ShowSearchResults && this.SearchOpened)
			{
				return;
			}
			this.SearchOpened = true;
		}

		public void CloseSearch()
		{
			this.SearchOpened = false;
			this.SearchValue = "";
		}

		public void SelectUpperItem()
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

		public void SelectLowerItem()
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

		public void SelectFocusedItem()
		{
			if (this.FocusedSearchItem == null)
			{
				return;
			}
			this.SelectSearchResult(this.FocusedSearchItem);
		}

		[AsyncStateMachine(typeof(SearchViewModel.<SelectSearchResult>d__29))]
		public void SelectSearchResult(SearchResultViewModel searchResult)
		{
			SearchViewModel.<SelectSearchResult>d__29 <SelectSearchResult>d__;
			<SelectSearchResult>d__.<>4__this = this;
			<SelectSearchResult>d__.searchResult = searchResult;
			<SelectSearchResult>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SelectSearchResult>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SelectSearchResult>d__.<>t__builder;
			<>t__builder.Start<SearchViewModel.<SelectSearchResult>d__29>(ref <SelectSearchResult>d__);
		}

		private void SearchValueChanged(string searchValue)
		{
			if (searchValue.Length < 3)
			{
				this.ShowSearchResults = false;
				return;
			}
			List<SearchResultViewModel> searchResults = this.GetSearchResults(searchValue);
			if (searchResults.Any<SearchResultViewModel>())
			{
				this.ShowSearchResults = true;
			}
			this.Items.Clear();
			this.Items.AddRange(searchResults);
		}

		[Analytics, Event("Search")]
		private List<SearchResultViewModel> GetSearchResults(string searchValue)
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(SearchViewModel.GetSearchResults(string)).MethodHandle, typeof(SearchViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			analyticsAttribute.Init(this, methodFromHandle, new object[]
			{
				searchValue
			});
			analyticsAttribute.OnEntry();
			List<SearchResultViewModel> result;
			try
			{
				result = this._serversSearchFacade.FindServers(searchValue).ToList<SearchResultViewModel>();
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
			return result;
		}

		[Analytics, Event("Search"), AsyncStateMachine(typeof(SearchViewModel.<Connect>d__32))]
		private Task Connect(string searchResultAction, SearchResultViewModel searchResult)
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(SearchViewModel.Connect(string, SearchResultViewModel)).MethodHandle, typeof(SearchViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			analyticsAttribute.Init(this, methodFromHandle, new object[]
			{
				searchResultAction,
				searchResult
			});
			analyticsAttribute.OnEntry();
			Task task;
			try
			{
				SearchViewModel.<Connect>d__32 <Connect>d__;
				<Connect>d__.<>4__this = this;
				<Connect>d__.searchResult = searchResult;
				<Connect>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
				<Connect>d__.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
				<>t__builder.Start<SearchViewModel.<Connect>d__32>(ref <Connect>d__);
				task = <Connect>d__.<>t__builder.Task;
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
			return task;
		}
	}
}
