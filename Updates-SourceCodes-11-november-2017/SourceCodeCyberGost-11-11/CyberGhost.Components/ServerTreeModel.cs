using CyberGhost.Settings;
using FirstFloor.ModernUI.Presentation;
using MobileConcepts.Components.MCTreeList;
using MobileConcepts.Extensions;
using MobileConcepts.Helpers;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;

namespace CyberGhost.Components
{
	public class ServerTreeModel : ITreeModel
	{
		private readonly TaskFactory _pingTaskFactory;

		private readonly ObservableCollection<ServerTreeItem> _treeData;

		private string _currentFilter = "";

		private string _sortColumn = "Name";

		private ListSortDirection _mSortDirection;

		public ICommand SortCommand
		{
			[CompilerGenerated]
			get
			{
				return this.<SortCommand>k__BackingField;
			}
		}

		public ServerTreeModel(ObservableCollection<ServerTreeItem> treeData)
		{
			this._treeData = treeData;
			this.<SortCommand>k__BackingField = new RelayCommand(new Action<object>(this.ApplySort), null);
			this._pingTaskFactory = new TaskFactory(new HelperFunctions.LimitedConcurrencyLevelTaskScheduler(5));
		}

		public IEnumerable GetChildren(object parent)
		{
			ObservableCollection<ServerTreeItem> observableCollection = new ObservableCollection<ServerTreeItem>();
			if (parent == null)
			{
				if (string.IsNullOrWhiteSpace(this._currentFilter))
				{
					return this._treeData;
				}
				foreach (ServerTreeItem current in this._treeData)
				{
					if (!IsNullOrEmptyExtension.IsNullOrEmpty(this.GetChildren(current)))
					{
						observableCollection.Add(current);
					}
				}
				return observableCollection;
			}
			else
			{
				ServerTreeItem serverTreeItem = parent as ServerTreeItem;
				if (serverTreeItem == null)
				{
					return observableCollection;
				}
				if (string.IsNullOrEmpty(this._currentFilter))
				{
					this.SortList(serverTreeItem.ServerTreeItems);
					return serverTreeItem.ServerTreeItems;
				}
				foreach (ServerTreeItem current2 in serverTreeItem.ServerTreeItems)
				{
					if (current2.Name.IndexOf(this._currentFilter, StringComparison.InvariantCultureIgnoreCase) >= 0)
					{
						observableCollection.Add(current2);
					}
				}
				this.SortList(observableCollection);
				return observableCollection;
			}
		}

		public void RenderChildren(object parent)
		{
			ServerTreeItem serverTreeItem = parent as ServerTreeItem;
			this.PingList((serverTreeItem != null) ? serverTreeItem.ServerTreeItems : null);
		}

		public bool HasChildren(object parent)
		{
			ServerTreeItem expr_06 = parent as ServerTreeItem;
			return expr_06 != null && expr_06.ServerTreeItems.Count > 0;
		}

		public void FilterChildren(string filter)
		{
			this._currentFilter = filter;
		}

		private void SortList(ObservableCollection<ServerTreeItem> aList)
		{
			if (aList != null && aList.Count > 1)
			{
				List<ServerTreeItem> arg_4A_0 = (this._mSortDirection == ListSortDirection.Ascending) ? (from o in aList
				orderby o.GetType().GetProperty(this._sortColumn).GetValue(o, null)
				select o).ToList<ServerTreeItem>() : (from o in aList
				orderby o.GetType().GetProperty(this._sortColumn).GetValue(o, null) descending
				select o).ToList<ServerTreeItem>();
				aList.Clear();
				foreach (ServerTreeItem current in arg_4A_0)
				{
					aList.Add(current);
				}
			}
		}

		private void PingList(ObservableCollection<ServerTreeItem> aList)
		{
			if (aList != null && aList.Count > 0)
			{
				HelperFunctions.DelayExecution(TimeSpan.FromMilliseconds(50.0), delegate
				{
					using (IEnumerator<ServerTreeItem> enumerator = aList.GetEnumerator())
					{
						while (enumerator.MoveNext())
						{
							ServerTreeModel.<>c__DisplayClass14_1 <>c__DisplayClass14_2 = new ServerTreeModel.<>c__DisplayClass14_1();
							<>c__DisplayClass14_2.item = enumerator.Current;
							if (<>c__DisplayClass14_2.item != null && (<>c__DisplayClass14_2.item.PingTime < 0L || DateTime.Now - <>c__DisplayClass14_2.item.LastPing > TimeSpan.FromSeconds(90.0)))
							{
								<>c__DisplayClass14_2.item.PingTime = -1L;
								HelperFunctions.GrabExceptions(this._pingTaskFactory.StartNew<Task>(delegate
								{
									ServerTreeModel.<>c__DisplayClass14_1.<<PingList>b__1>d <<PingList>b__1>d;
									<<PingList>b__1>d.<>4__this = <>c__DisplayClass14_2;
									<<PingList>b__1>d.<>t__builder = AsyncTaskMethodBuilder.Create();
									<<PingList>b__1>d.<>1__state = -1;
									AsyncTaskMethodBuilder <>t__builder = <<PingList>b__1>d.<>t__builder;
									<>t__builder.Start<ServerTreeModel.<>c__DisplayClass14_1.<<PingList>b__1>d>(ref <<PingList>b__1>d);
									return <<PingList>b__1>d.<>t__builder.Task;
								}));
							}
						}
					}
				});
			}
		}

		private void ApplySort(object data)
		{
			SortEventData expr_06 = (SortEventData)data;
			TreeList treeList = (TreeList)expr_06.Sender;
			string propertyName = expr_06.PropertyName;
			if (!this._sortColumn.Equals(propertyName, StringComparison.CurrentCultureIgnoreCase))
			{
				this._mSortDirection = ListSortDirection.Ascending;
			}
			else
			{
				this._mSortDirection = ((this._mSortDirection == ListSortDirection.Ascending) ? ListSortDirection.Descending : ListSortDirection.Ascending);
			}
			this._sortColumn = propertyName;
			using (IEnumerator<TreeNode> enumerator = treeList.get_Nodes().GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					ObservableCollection<ServerTreeItem> aList = (ObservableCollection<ServerTreeItem>)enumerator.Current.get_ChildrenSource();
					this.SortList(aList);
				}
			}
		}

		public void ToggleServerFav(TreeList treeView, int serverId)
		{
			ServerTreeItem serverTreeItem = null;
			List<ServerTreeItem> list = new List<ServerTreeItem>();
			List<ServerTreeItem> list2 = new List<ServerTreeItem>();
			foreach (ServerTreeItem current in this._treeData)
			{
				if (current.CountryCode.Equals("fav"))
				{
					serverTreeItem = current;
					break;
				}
			}
			ObservableCollection<ServerTreeItem> observableCollection = (serverTreeItem != null) ? serverTreeItem.ServerTreeItems : null;
			using (IEnumerator<TreeNode> enumerator2 = treeView.get_Nodes().GetEnumerator())
			{
				while (enumerator2.MoveNext())
				{
					ObservableCollection<ServerTreeItem> observableCollection2 = (ObservableCollection<ServerTreeItem>)enumerator2.Current.get_ChildrenSource();
					if (observableCollection2 != null)
					{
						foreach (ServerTreeItem current2 in observableCollection2)
						{
							if (current2.ServerId == serverId)
							{
								list.Add(current2);
							}
						}
					}
				}
			}
			foreach (ServerTreeItem current3 in list)
			{
				if (!list2.Contains(current3))
				{
					list2.Add(current3);
					if (current3.IsFav)
					{
						current3.IsFav = false;
						if (observableCollection != null)
						{
							observableCollection.Remove(current3);
						}
						SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().Remove(current3.ServerId);
					}
					else
					{
						current3.IsFav = true;
						if (observableCollection != null)
						{
							observableCollection.Add(current3);
						}
						this.SortList(observableCollection);
						if (!SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().Contains(current3.ServerId))
						{
							SettingsHolder.get_Settings().get_ProfileCustom().get_FavServers().Add(current3.ServerId);
						}
					}
				}
			}
			SettingsHolder.get_Settings().SaveSettingsAsync(false);
		}
	}
}
