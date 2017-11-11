using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.MCTreeList;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Threading;

namespace CyberGhost.Pages.Profiles
{
	public class UnblockServerList : UserControl, IComponentConnector, IStyleConnector, IContent
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly UnblockServerList.<>c <>9 = new UnblockServerList.<>c();

			public static Comparison<CgApiServer> <>9__29_0;

			public static Comparison<CgApiServer> <>9__30_0;

			internal int <PrepareServerList>b__29_0(CgApiServer x, CgApiServer y)
			{
				return string.CompareOrdinal(x.get_Location().get_CountryName(), y.get_Location().get_CountryName());
			}

			internal int <SortServerList>b__30_0(CgApiServer x, CgApiServer y)
			{
				return string.CompareOrdinal(x.get_Name(), y.get_Name());
			}
		}

		private IDictionary<string, ServerGroup> _serverGroups = new Dictionary<string, ServerGroup>();

		private CgApiServerList _serverlist = new CgApiServerList();

		private ObservableCollection<ServerTreeItem> _stuff = new ObservableCollection<ServerTreeItem>();

		private Timer _delaySearchTimer;

		internal TextBox SearchText;

		internal TextBox InputUrl;

		internal DockPanel DockForPremium;

		internal ModernProgressRing LoadingRing;

		internal TreeList ServerTree;

		internal Button Cancel;

		internal Button SaveCustomWebsiteBtn;

		private bool _contentLoaded;

		public bool CanConnect
		{
			get;
			set;
		}

		public string ProposedWebsite
		{
			get;
			set;
		}

		public List<int> SelectedServerIds
		{
			get;
			set;
		}

		public UnblockServerList()
		{
			this.<SelectedServerIds>k__BackingField = new List<int>();
			base..ctor();
			this.InitializeComponent();
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
			if (string.IsNullOrEmpty(ObjectHolder.CustomUnblockItemUrl))
			{
				this.InputUrl.Text = string.Empty;
				if (ObjectHolder.CustomUnblockItemServerIds != null)
				{
					ObjectHolder.CustomUnblockItemServerIds.Clear();
				}
				this.SelectedServerIds = new List<int>();
			}
			else
			{
				this.InputUrl.Text = ObjectHolder.CustomUnblockItemUrl;
				ObjectHolder.CustomUnblockItemServerIds = SettingsHolder.get_Settings().get_ProfileUnblock().GetServerIdsFromCustomUrl(ObjectHolder.CustomUnblockItemUrl);
				this.SelectedServerIds = ObjectHolder.CustomUnblockItemServerIds;
			}
			this.LoadingRing.Visibility = Visibility.Visible;
			this.ServerTree.Visibility = Visibility.Hidden;
			this.InitializeServerlist();
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		public bool DetermineIfServerIdIsInCustomUnblockItemServerIds(int id)
		{
			if (ObjectHolder.CustomUnblockItemServerIds == null)
			{
				return false;
			}
			using (List<int>.Enumerator enumerator = this.SelectedServerIds.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if (enumerator.Current == id)
					{
						return true;
					}
				}
			}
			return false;
		}

		private void Cancel_OnClick(object sender, RoutedEventArgs e)
		{
			Navigation.GoToPage("Profiles/Unblock", null, null);
		}

		private void SearchForServer(object sender, TextChangedEventArgs e)
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.Input, new Action(delegate
			{
				HelperFunctions.CancelExecutiion(this._delaySearchTimer);
				this._delaySearchTimer = HelperFunctions.DelayExecution(TimeSpan.FromMilliseconds(500.0), new Action(this.UpdateServerFilter));
			}));
		}

		private void UpdateServerFilter()
		{
			ITreeModel expr_0B = this.ServerTree.get_Model();
			if (expr_0B != null)
			{
				expr_0B.FilterChildren(this.SearchText.Text.Trim());
			}
			this.ServerTree.Refresh();
			if (!string.IsNullOrWhiteSpace(this.SearchText.Text))
			{
				this.ServerTree.SetExpandState(true);
			}
		}

		private void ToggleButton_OnChecked(object sender, RoutedEventArgs e)
		{
			CheckBox checkBox = (CheckBox)sender;
			int item = (int)checkBox.Tag;
			if (checkBox.IsChecked.HasValue)
			{
				if (checkBox.IsChecked.Value)
				{
					if (!this.SelectedServerIds.Contains(item))
					{
						this.SelectedServerIds.Add(item);
					}
				}
				else
				{
					this.SelectedServerIds.Remove(item);
				}
			}
			this.CanConnect = (this.SelectedServerIds.Count > 0);
		}

		[AsyncStateMachine(typeof(UnblockServerList.<InputUrl_TextChanged>d__26))]
		private void InputUrl_TextChanged(object sender, TextChangedEventArgs e)
		{
			UnblockServerList.<InputUrl_TextChanged>d__26 <InputUrl_TextChanged>d__;
			<InputUrl_TextChanged>d__.<>4__this = this;
			<InputUrl_TextChanged>d__.sender = sender;
			<InputUrl_TextChanged>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<InputUrl_TextChanged>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <InputUrl_TextChanged>d__.<>t__builder;
			<>t__builder.Start<UnblockServerList.<InputUrl_TextChanged>d__26>(ref <InputUrl_TextChanged>d__);
		}

		private void SaveCustomWebsiteBtn_Click(object sender, RoutedEventArgs e)
		{
			if (this.SelectedServerIds.Count == 0)
			{
				ModernDialogExtension.ShowDialogOk(Profiles.Unblock_ServerList_SaveCustomWebsiteBtn_Click_No_servers_selected, Profiles.Unblock_ServerList_SaveCustomWebsiteBtn_Click_Please_select_one_or_more_servers);
				return;
			}
			if (this.ProposedWebsite == null)
			{
				string text = string.Format("Invalid URL {0}", this.InputUrl.Text);
				this.InputUrl.Text = text;
				Keyboard.Focus(this.InputUrl);
			}
			if (SettingsHolder.get_Settings().get_ProfileUnblock().CeckIfUrlIsInCustomEntry(this.ProposedWebsite))
			{
				SettingsHolder.get_Settings().get_ProfileUnblock().EditCustomEntry(this.ProposedWebsite, this.SelectedServerIds);
			}
			else
			{
				SettingsHolder.get_Settings().get_ProfileUnblock().AddCustomEntry(this.ProposedWebsite, this.SelectedServerIds);
			}
			if (ModernDialogExtension.ShowDialogYesNo(Profiles.Unblock_ServerList_SaveCustomWebsiteBtn_Click_Help_us_to_improve_our_service, Profiles.Unblock_ServerList_SaveCustomWebsiteBtn_Click_Would_you_like_to_submit_your_settings_to_us__In_order_to_provide_further_websites_to_all_of_our_customers_we_will_store_and_review_you_propse_anonymously_) == MessageBoxResult.Yes)
			{
				try
				{
					CgApiServerContentUrl serverContentUrl = new CgApiServerContentUrl();
					Task.Run(delegate
					{
						serverContentUrl.PostPropose(this.ProposedWebsite, this.SelectedServerIds);
					});
				}
				catch (Exception)
				{
					HelperFunctions.DebugLine("COULD NOT PROPSE WEBSITE");
				}
			}
			Navigation.GoToPage("Profiles/Unblock", null, null);
		}

		[AsyncStateMachine(typeof(UnblockServerList.<InitializeServerlist>d__28))]
		private void InitializeServerlist()
		{
			UnblockServerList.<InitializeServerlist>d__28 <InitializeServerlist>d__;
			<InitializeServerlist>d__.<>4__this = this;
			<InitializeServerlist>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<InitializeServerlist>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <InitializeServerlist>d__.<>t__builder;
			<>t__builder.Start<UnblockServerList.<InitializeServerlist>d__28>(ref <InitializeServerlist>d__);
		}

		private void PrepareServerList(CgApiServerList serverlist)
		{
			if (serverlist.get_Items().Count == 0)
			{
				return;
			}
			List<CgApiServer> arg_38_0 = this._serverlist.get_Items();
			Comparison<CgApiServer> arg_38_1;
			if ((arg_38_1 = UnblockServerList.<>c.<>9__29_0) == null)
			{
				arg_38_1 = (UnblockServerList.<>c.<>9__29_0 = new Comparison<CgApiServer>(UnblockServerList.<>c.<>9.<PrepareServerList>b__29_0));
			}
			arg_38_0.Sort(arg_38_1);
			ServerGroup serverGroup = null;
			foreach (CgApiServer current in serverlist.get_Items())
			{
				string countryName = current.get_Location().get_CountryName();
				if (serverGroup != null && serverGroup.Name.Equals(countryName))
				{
					serverGroup.Servers.Add(current);
				}
				else
				{
					serverGroup = new ServerGroup
					{
						CountryCode = current.get_Location().get_CountryCode(),
						Name = current.get_Location().get_CountryName()
					};
					this._serverGroups[current.get_Location().get_CountryName()] = serverGroup;
					serverGroup.Servers.Add(current);
				}
			}
		}

		private void SortServerList()
		{
			foreach (KeyValuePair<string, ServerGroup> current in this._serverGroups)
			{
				List<CgApiServer> arg_41_0 = current.Value.Servers;
				Comparison<CgApiServer> arg_41_1;
				if ((arg_41_1 = UnblockServerList.<>c.<>9__30_0) == null)
				{
					arg_41_1 = (UnblockServerList.<>c.<>9__30_0 = new Comparison<CgApiServer>(UnblockServerList.<>c.<>9.<SortServerList>b__30_0));
				}
				arg_41_0.Sort(arg_41_1);
			}
		}

		private void FillTreeViewWithServers(IDictionary<string, ServerGroup> serverGroupsFiltered)
		{
			int num = 0;
			foreach (KeyValuePair<string, ServerGroup> current in serverGroupsFiltered)
			{
				int parentId = num;
				string themedImage = Theming.GetThemedImage(Path.Combine("Icons\\Flags\\24", string.Format("{0}.png", current.Value.CountryCode)));
				ServerTreeItem serverTreeItem = new ServerTreeItem
				{
					CountryCode = current.Value.CountryCode,
					ServerId = -1,
					CountryName = current.Value.Name,
					Name = current.Value.Name,
					RealServer = false,
					IsCountry = true,
					Flag = themedImage,
					Id = num,
					ParentId = num,
					ServerSelectable = true,
					IsFreeString = ""
				};
				foreach (CgApiServer current2 in current.Value.Servers)
				{
					if (current2.get_Enabled() && current2.get_Online())
					{
						if (current2.get_AvailableForFree())
						{
							continue;
						}
						double num2 = 0.0;
						if (current2.get_TotalUsers() != null && current2.get_MaxUsers() != null)
						{
							num2 = (double)((int)(double.Parse(current2.get_TotalUsers()) / double.Parse(current2.get_MaxUsers()) * 100.0));
						}
						if (num2 > 100.0)
						{
							num2 = 100.0;
						}
						if (current2.get_Enabled() && current2.get_Online())
						{
							ServerTreeItem item = new ServerTreeItem
							{
								CountryCode = current2.get_Location().get_CountryCode(),
								ServerId = current2.get_Id(),
								ParentId = parentId,
								Id = num,
								CountryName = serverTreeItem.Name,
								Name = current2.get_Name(),
								RealServer = true,
								Ip = current2.get_Ip(),
								UserRatio = num2,
								Slotsfree = string.Format("{0:0}", num2) + " % ",
								TorrentAllowed = (current2.get_TorrentBlocked() ? "" : ""),
								Flag = themedImage,
								IsBold = false,
								IsFull = current2.get_Full(),
								IsFree = current2.get_AvailableForFree(),
								IsDotVisible = true,
								IsSelected = this.DetermineIfServerIdIsInCustomUnblockItemServerIds(current2.get_Id()),
								Bar = "",
								ServerSelectable = !current2.get_HideIfNotInPlan(),
								IsFreeString = (current2.get_AvailableForFree() ? Profiles.ServerLists_FillTreeViewWithServers_Free : Profiles.ServerLists_FillTreeViewWithServers_Premium)
							};
							if (ObjectHolder.CurrentUser.IsFreeUser())
							{
								serverTreeItem.ServerTreeItems.Add(item);
							}
							else if (!current2.get_AvailableForFree() && !ObjectHolder.CurrentUser.IsFreeUser())
							{
								serverTreeItem.ServerTreeItems.Add(item);
							}
						}
					}
					num++;
				}
				this._stuff.Add(serverTreeItem);
			}
			ServerTreeModel serverTreeModel = new ServerTreeModel(this._stuff);
			this.ServerTree.DataContext = serverTreeModel;
			this.ServerTree.set_Model(serverTreeModel);
			this.LoadingRing.Visibility = Visibility.Hidden;
			this.ServerTree.Visibility = Visibility.Visible;
			if (!string.IsNullOrEmpty(this.SearchText.Text))
			{
				this.UpdateServerFilter();
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/profiles/unblock_serverlist.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.SearchText = (TextBox)target;
				this.SearchText.TextChanged += new TextChangedEventHandler(this.SearchForServer);
				return;
			case 2:
				this.InputUrl = (TextBox)target;
				this.InputUrl.TextChanged += new TextChangedEventHandler(this.InputUrl_TextChanged);
				return;
			case 3:
				this.DockForPremium = (DockPanel)target;
				return;
			case 4:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			case 5:
				this.ServerTree = (TreeList)target;
				return;
			case 7:
				this.Cancel = (Button)target;
				this.Cancel.Click += new RoutedEventHandler(this.Cancel_OnClick);
				return;
			case 8:
				this.SaveCustomWebsiteBtn = (Button)target;
				this.SaveCustomWebsiteBtn.Click += new RoutedEventHandler(this.SaveCustomWebsiteBtn_Click);
				return;
			}
			this._contentLoaded = true;
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 6)
			{
				((CheckBox)target).Checked += new RoutedEventHandler(this.ToggleButton_OnChecked);
				((CheckBox)target).Unchecked += new RoutedEventHandler(this.ToggleButton_OnChecked);
			}
		}
	}
}
