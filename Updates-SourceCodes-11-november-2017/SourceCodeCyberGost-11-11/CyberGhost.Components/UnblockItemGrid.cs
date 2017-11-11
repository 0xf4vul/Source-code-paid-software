using CyberGhost.Annotations;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
using CyberGhost.Settings.Settings;
using FirstFloor.ModernUI.Windows.Controls;
using FirstFloor.ModernUI.Windows.Media;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Threading;

namespace CyberGhost.Components
{
	public class UnblockItemGrid : UserControl, IComponentConnector, IStyleConnector, INotifyPropertyChanged
	{
		public enum UnblockActiveFilter
		{
			All = 1,
			Top5,
			OwnRegion = 4,
			Default = 1
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly UnblockItemGrid.<>c <>9 = new UnblockItemGrid.<>c();

			public static Func<CgApiServerContentUrl, int> <>9__54_1;

			public static Func<CgApiServerContentUrl, string> <>9__54_3;

			public static Func<CgApiServerContentUrl, string> <>9__54_5;

			internal int <BuildUpContent>b__54_1(CgApiServerContentUrl f)
			{
				return f.get_Position();
			}

			internal string <BuildUpContent>b__54_3(CgApiServerContentUrl f)
			{
				return f.get_Name();
			}

			internal string <BuildUpContent>b__54_5(CgApiServerContentUrl f)
			{
				return f.get_Name();
			}
		}

		private readonly string _pathPlayIcon = Theming.GetThemedImage("Icons\\Functions\\icon_play.png");

		private int _lastposition;

		private bool _searchEnabled = true;

		public bool BuildingContent;

		public string CountryCode;

		public CancellationTokenSource ListCancellationToken;

		public TaskCompletionSource<bool> UpdateCompletionSource;

		private CgBase _currentProfile;

		internal AdornerDecorator AdornerDecorator;

		internal TextBox SearchText;

		internal Grid TileGrid;

		internal ItemsControl UnblockDataGrid;

		internal ModernProgressRing LoadingRing;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public UnblockItemGrid.UnblockActiveFilter CurrentActiveFilter
		{
			get;
			set;
		}

		public bool IsFilterChanged
		{
			get;
			set;
		}

		private List<UnblockItem> OriginalItems
		{
			[CompilerGenerated]
			get
			{
				return this.<OriginalItems>k__BackingField;
			}
		}

		public ObservableCollection<UnblockItem> UnblockItems
		{
			get;
			set;
		}

		public bool InitPhase
		{
			get;
			set;
		}

		public Button UpgradeButton
		{
			get;
			set;
		}

		public Grid ConnectButton
		{
			get;
			set;
		}

		public Grid OverlayTwo
		{
			get;
			set;
		}

		public CgBase CurrentProfile
		{
			get
			{
				return this._currentProfile;
			}
			set
			{
				this._currentProfile = value;
				this.UpdateTheme();
			}
		}

		public bool SearchEnabled
		{
			get
			{
				return this._searchEnabled;
			}
			set
			{
				this._searchEnabled = value;
				if (this._searchEnabled != value)
				{
					this.OnPropertyChanged("SearchEnabled");
				}
				if (value)
				{
					this.FocusOnSearchText();
				}
			}
		}

		public UnblockItemGrid()
		{
			this.<OriginalItems>k__BackingField = new List<UnblockItem>();
			this.<UnblockItems>k__BackingField = new ObservableCollection<UnblockItem>();
			base..ctor();
			this.InitializeComponent();
			this.SearchText.DataContext = this;
			this.ListCancellationToken = new CancellationTokenSource();
			this.UpdateCompletionSource = new TaskCompletionSource<bool>(false);
		}

		private void UpdateTheme()
		{
			if (this.CurrentProfile is CgProfileUnblock)
			{
				this.SearchText.Style = (base.FindResource("TextBox_Unblock") as Style);
				return;
			}
			if (this.CurrentProfile is CgProfileUncensoring)
			{
				this.SearchText.Style = (base.FindResource("TextBox_Anticensor") as Style);
			}
		}

		public void StartingBuildupContent(string searchString = "", bool justTop5 = false, bool justOwnRegion = false)
		{
			try
			{
				this.SearchText.IsEnabled = false;
				this.SearchText.Focusable = false;
				this.AdornerDecorator.IsEnabled = false;
				this.AdornerDecorator.Focusable = false;
				this.UnblockDataGrid.Visibility = Visibility.Hidden;
				this.LoadingRing.Visibility = Visibility.Visible;
				this.SearchText.Text = string.Empty;
				this.ListCancellationToken.Cancel(false);
				this.ListCancellationToken = new CancellationTokenSource();
				this.BuildUpContent(this.ListCancellationToken.Token, searchString, justTop5, justOwnRegion);
				this.LoadingRing.Visibility = Visibility.Hidden;
				this.UnblockDataGrid.Visibility = Visibility.Visible;
				this.SearchEnabled = true;
				ObjectHolder.CustomUnblockItemUrl = null;
				ObjectHolder.CustomUnblockItemServerIds = null;
			}
			catch (Exception arg_B0_0)
			{
				HelperFunctions.DebugLine(arg_B0_0.Message);
			}
		}

		[NotifyPropertyChangedInvocator]
		protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			try
			{
				PropertyChangedEventHandler expr_06 = this.PropertyChanged;
				if (expr_06 != null)
				{
					expr_06(this, new PropertyChangedEventArgs(propertyName));
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
			}
		}

		public void FocusOnSearchText()
		{
			base.Dispatcher.BeginInvoke(DispatcherPriority.ContextIdle, new Action(delegate
			{
				this.SearchText.Focus();
			}));
		}

		[AsyncStateMachine(typeof(UnblockItemGrid.<BuildUpContent>d__54))]
		public void BuildUpContent(CancellationToken cancellationToken, string searchString = "", bool justTop5 = false, bool justOwnRegion = false)
		{
			UnblockItemGrid.<BuildUpContent>d__54 <BuildUpContent>d__;
			<BuildUpContent>d__.<>4__this = this;
			<BuildUpContent>d__.cancellationToken = cancellationToken;
			<BuildUpContent>d__.searchString = searchString;
			<BuildUpContent>d__.justTop5 = justTop5;
			<BuildUpContent>d__.justOwnRegion = justOwnRegion;
			<BuildUpContent>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<BuildUpContent>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <BuildUpContent>d__.<>t__builder;
			<>t__builder.Start<UnblockItemGrid.<BuildUpContent>d__54>(ref <BuildUpContent>d__);
		}

		[AsyncStateMachine(typeof(UnblockItemGrid.<CreateUnblockEntry>d__55))]
		private void CreateUnblockEntry(CancellationToken cancellationToken, CgApiServerContentUrl groupedServerContentUrl, string searchString, bool custom, List<int> serverIds = null, string countrycode = "")
		{
			UnblockItemGrid.<CreateUnblockEntry>d__55 <CreateUnblockEntry>d__;
			<CreateUnblockEntry>d__.<>4__this = this;
			<CreateUnblockEntry>d__.cancellationToken = cancellationToken;
			<CreateUnblockEntry>d__.groupedServerContentUrl = groupedServerContentUrl;
			<CreateUnblockEntry>d__.searchString = searchString;
			<CreateUnblockEntry>d__.custom = custom;
			<CreateUnblockEntry>d__.serverIds = serverIds;
			<CreateUnblockEntry>d__.countrycode = countrycode;
			<CreateUnblockEntry>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<CreateUnblockEntry>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <CreateUnblockEntry>d__.<>t__builder;
			<>t__builder.Start<UnblockItemGrid.<CreateUnblockEntry>d__55>(ref <CreateUnblockEntry>d__);
		}

		private async void UpgradeButton_OnClick(object sender, RoutedEventArgs e)
		{
			await Navigation.GoInAppPurchase(SettingsHolder.get_Settings().get_ProfileUnblock(), "button");
		}

		private void SearchText_PreviewTextInput(object sender, TextCompositionEventArgs e)
		{
		}

		private void SetOriginalItems(bool initialization = false)
		{
			if (initialization)
			{
				this.OriginalItems.Clear();
				using (IEnumerator<UnblockItem> enumerator = this.UnblockItems.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						UnblockItem current = enumerator.Current;
						this.OriginalItems.Add(current);
					}
					return;
				}
			}
			if (this.OriginalItems.Count > 0)
			{
				this.UnblockItems.Clear();
				foreach (UnblockItem current2 in this.OriginalItems)
				{
					this.UnblockItems.Add(current2);
				}
			}
		}

		private bool DetermineIfServerContentUrlCountryIsInUserRegion(List<CgApiContentCountry> countries)
		{
			string countryCode = this.CountryCode;
			using (List<CgApiContentCountry>.Enumerator enumerator = countries.GetEnumerator())
			{
				while (enumerator.MoveNext())
				{
					if (enumerator.Current.get_Country().ToLower().Equals(countryCode.ToLower()))
					{
						return true;
					}
				}
			}
			return false;
		}

		private void BuildUpContentInCurrentFilter(string searchText)
		{
			this.ListCancellationToken.Cancel(false);
			this.ListCancellationToken = new CancellationTokenSource();
			switch (this.CurrentActiveFilter)
			{
			case (UnblockItemGrid.UnblockActiveFilter)0:
				this.BuildUpContent(this.ListCancellationToken.Token, searchText, false, false);
				break;
			case UnblockItemGrid.UnblockActiveFilter.All:
				this.BuildUpContent(this.ListCancellationToken.Token, searchText, false, false);
				return;
			case UnblockItemGrid.UnblockActiveFilter.Top5:
				this.BuildUpContent(this.ListCancellationToken.Token, searchText, true, false);
				return;
			case (UnblockItemGrid.UnblockActiveFilter)3:
				break;
			case UnblockItemGrid.UnblockActiveFilter.OwnRegion:
				this.BuildUpContent(this.ListCancellationToken.Token, searchText, false, true);
				return;
			default:
				return;
			}
		}

		private void SearchText_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			TextBox textBox = sender as TextBox;
			if (textBox == null)
			{
				return;
			}
			this.UnblockDataGrid.Visibility = Visibility.Hidden;
			this.LoadingRing.Visibility = Visibility.Visible;
			string searchText = textBox.Text.ToLower().Trim();
			this.BuildUpContentInCurrentFilter(searchText);
			this.LoadingRing.Visibility = Visibility.Hidden;
			this.UnblockDataGrid.Visibility = Visibility.Visible;
			this.SearchEnabled = true;
		}

		private void Overlay1_MouseEnter(object sender, MouseEventArgs mouseEventArgs)
		{
			this.Overlay_MouseEnter(sender, "Overlay2");
		}

		private void Overlay2_MouseEnter(object sender, MouseEventArgs mouseEventArgs)
		{
			this.Overlay_MouseEnter(sender, "Overlay1");
		}

		private void Overlay1_OnMouseLeave(object sender, MouseEventArgs e)
		{
			this.Overlay_MouseLeave(sender, "Overlay2");
		}

		private void Overlay2_OnMouseLeave(object sender, MouseEventArgs e)
		{
			this.Overlay_MouseLeave(sender, "Overlay1");
		}

		private void EditButton_OnClick(object sender, RoutedEventArgs e)
		{
			Grid expr_15 = VisualTreeHelperEx.GetParent(VisualTreeHelperEx.GetParent(sender as Button)) as Grid;
			DockPanel expr_2B = ((expr_15 != null) ? expr_15.FindName("PlayPanel") : null) as DockPanel;
			Label label = ((expr_2B != null) ? expr_2B.FindName("Url") : null) as Label;
			if (label != null && label.Content != null)
			{
				ObjectHolder.CustomUnblockItemUrl = label.Content.ToString();
				Navigation.GoToPage("Profiles/Unblock_ServerList", null, null);
			}
		}

		private void ConnectButton_OnClick(object sender, RoutedEventArgs e)
		{
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(12))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(12);
				return;
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && !ObjectHolder.CurrentUser.HasUserAccessToFeature(14))
			{
				ConversionPopUpHelpers.ShowConversionPopUp(14);
				return;
			}
			Button expr_60 = sender as Button;
			object arg_78_0;
			if (expr_60 == null)
			{
				arg_78_0 = null;
			}
			else
			{
				DependencyObject expr_6C = VisualTreeHelperEx.GetParent(expr_60);
				arg_78_0 = ((expr_6C != null) ? VisualTreeHelperEx.GetParent(expr_6C) : null);
			}
			Grid grid = arg_78_0 as Grid;
			if (grid != null)
			{
				DockPanel dockPanel = grid.FindName("PlayPanel") as DockPanel;
				if (dockPanel != null)
				{
					Label label = dockPanel.FindName("Url") as Label;
					if (label != null)
					{
						if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
						{
							SettingsHolder.get_Settings().get_ProfileUnblock().set_CurrentUnblockUrl(label.Content.ToString());
							SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemUrl(label.Content.ToString());
						}
						if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()))
						{
							SettingsHolder.get_Settings().get_ProfileUncensoring().set_CurrentUnblockUrl(label.Content.ToString());
							SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemUrl(label.Content.ToString());
						}
					}
					Label label2 = dockPanel.FindName("TempImage") as Label;
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && label2 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemCountryImage(label2.Content.ToString());
					}
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && label2 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemCountryImage(label2.Content.ToString());
					}
					Label label3 = dockPanel.FindName("TempCountryName") as Label;
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_ConnectWithCustomWebsite(false);
						if (label3 != null && label3.Content.Equals(""))
						{
							SettingsHolder.get_Settings().get_ProfileUnblock().set_ConnectWithCustomWebsite(true);
						}
					}
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && label3 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemCountryName(label3.Content.ToString());
					}
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && label3 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemCountryName(label3.Content.ToString());
					}
					Label label4 = dockPanel.FindName("TempCountryCode") as Label;
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && label4 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemCountryCode(label4.Content.ToString());
					}
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && label4 != null)
					{
						SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemCountryCode(label4.Content.ToString());
					}
				}
				DockPanel expr_326 = grid.FindName("UnameDockPanel") as DockPanel;
				Image image = ((expr_326 != null) ? expr_326.FindName("Logo") : null) as Image;
				FrameworkElement arg_3C4_0;
				if (((image != null) ? image.Source : null) != null)
				{
					if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
					{
						SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedLogo(image.Source.ToString());
						arg_3C4_0 = expr_326;
						if (expr_326 == null)
						{
							goto IL_3BB;
						}
						goto IL_3BF;
					}
					else if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()))
					{
						SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedLogo(image.Source.ToString());
						arg_3C4_0 = expr_326;
						if (expr_326 == null)
						{
							goto IL_3BB;
						}
						goto IL_3BF;
					}
				}
				arg_3C4_0 = expr_326;
				if (expr_326 != null)
				{
					goto IL_3BF;
				}
				IL_3BB:
				object arg_3C9_0 = null;
				goto IL_3C9;
				IL_3BF:
				arg_3C9_0 = arg_3C4_0.FindName("UNameLabel");
				IL_3C9:
				Label label5 = arg_3C9_0 as Label;
				if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()) && label5 != null)
				{
					CgProfileUnblock arg_419_0 = SettingsHolder.get_Settings().get_ProfileUnblock();
					string selectedItemName;
					SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemNameShort(selectedItemName = GuiHelper.Truncate(label5.Content.ToString(), 18));
					arg_419_0.set_SelectedItemName(selectedItemName);
				}
				if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && label5 != null)
				{
					CgProfileUncensoring arg_468_0 = SettingsHolder.get_Settings().get_ProfileUncensoring();
					string selectedItemName;
					SettingsHolder.get_Settings().get_ProfileUncensoring().set_SelectedItemNameShort(selectedItemName = GuiHelper.Truncate(label5.Content.ToString(), 18));
					arg_468_0.set_SelectedItemName(selectedItemName);
				}
				ScrollViewer expr_47D = grid.FindName("DescriptionScrollViewer") as ScrollViewer;
				TextBlock textBlock = ((expr_47D != null) ? expr_47D.FindName("Description") : null) as TextBlock;
				if (textBlock != null)
				{
					SettingsHolder.get_Settings().get_ProfileUnblock().set_SelectedItemDescription(textBlock.Text);
				}
				if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
				{
					if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.HasUserAccessToFeature(12))
					{
						ObjectHolder.ConnectionType = "manual";
						ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileUnblock(), false, false, true);
					}
					else
					{
						GuiHelper.ShowUpgradeDialog(SettingsHolder.get_Settings().get_ProfileUnblock().GetBaseName());
					}
				}
				if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()))
				{
					if (ObjectHolder.CurrentUser != null && ObjectHolder.CurrentUser.HasUserAccessToFeature(14))
					{
						ObjectHolder.ConnectionType = "manual";
						ObjectHolder.MainForm.ConnectWithProfile(SettingsHolder.get_Settings().get_ProfileUncensoring(), false, false, true);
						return;
					}
					GuiHelper.ShowUpgradeDialog(SettingsHolder.get_Settings().get_ProfileUncensoring().GetBaseName());
				}
			}
		}

		private void DeleteButton_OnClick(object sender, RoutedEventArgs e)
		{
			try
			{
				Grid expr_15 = VisualTreeHelperEx.GetParent(VisualTreeHelperEx.GetParent(sender as Button)) as Grid;
				DockPanel expr_2B = ((expr_15 != null) ? expr_15.FindName("PlayPanel") : null) as DockPanel;
				Label label = ((expr_2B != null) ? expr_2B.FindName("Url") : null) as Label;
				if (label != null)
				{
					SettingsHolder.get_Settings().get_ProfileUnblock().DeleteCustomEntry(label.Content.ToString());
					this.StartingBuildupContent("", false, false);
				}
			}
			catch (Exception)
			{
			}
		}

		private void CountryList_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			UnblockCountries unblockCountries = (UnblockCountries)((ComboBox)sender).SelectedItem;
			if (unblockCountries != null)
			{
				this.ChangeDescriptionContent(unblockCountries);
				if (!this.BuildingContent && this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
				{
					SettingsHolder.get_Settings().get_ProfileUnblock().AddSelectedCountry(unblockCountries.UName, unblockCountries.Url);
				}
			}
		}

		private void CountryList_OnInitialized(object sender, EventArgs e)
		{
			if (((ComboBox)sender).DataContext is UnblockItem)
			{
				UnblockCountries unblockCountries = (UnblockCountries)((ComboBox)sender).SelectedItem;
				if (unblockCountries != null)
				{
					this.ChangeDescriptionContent(unblockCountries);
				}
			}
		}

		private void CountryList_OnLoaded(object sender, RoutedEventArgs e)
		{
			ComboBox comboBox = (ComboBox)sender;
			int num = 0;
			CgProfileUnblock.SavedUnblockCountries savedUnblockCountries = null;
			foreach (UnblockCountries unblockCountries in comboBox.Items.SourceCollection)
			{
				savedUnblockCountries = SettingsHolder.get_Settings().get_ProfileUnblock().DetermineIfUrlIsInSelectedCountry(unblockCountries.Url);
				if (savedUnblockCountries != null)
				{
					((ComboBox)sender).SelectedItem = unblockCountries;
					break;
				}
			}
			if (savedUnblockCountries == null)
			{
				using (IEnumerator enumerator = comboBox.Items.SourceCollection.GetEnumerator())
				{
					while (enumerator.MoveNext())
					{
						if (((UnblockCountries)enumerator.Current).DefaultForGroup)
						{
							((ComboBox)sender).SelectedIndex = num;
							break;
						}
						num++;
					}
				}
				if (((ComboBox)sender).SelectedIndex == -1)
				{
					((ComboBox)sender).SelectedIndex = 0;
				}
			}
		}

		private void ChangeDescriptionContent(UnblockCountries item)
		{
			foreach (object current in ((IEnumerable)this.UnblockDataGrid.Items))
			{
				ContentPresenter contentPresenter = (ContentPresenter)this.UnblockDataGrid.ItemContainerGenerator.ContainerFromItem(current);
				Grid grid = contentPresenter.ContentTemplate.FindName("BaseGrid", contentPresenter) as Grid;
				if (grid != null)
				{
					Grid grid2 = grid;
					ScrollViewer scrollViewer = grid2.FindName("DescriptionScrollViewer") as ScrollViewer;
					if (scrollViewer != null)
					{
						TextBlock textBlock = scrollViewer.FindName("Description") as TextBlock;
						DockPanel dockPanel = grid2.FindName("UnameDockPanel") as DockPanel;
						if (textBlock != null && dockPanel != null)
						{
							Label label = dockPanel.FindName("UNameLabel") as Label;
							if (label != null && label.Content != null && label.Content.Equals(item.UName))
							{
								textBlock.Text = item.Description;
								DockPanel dockPanel2 = grid2.FindName("PlayPanel") as DockPanel;
								if (dockPanel2 != null)
								{
									Label label2 = dockPanel2.FindName("Url") as Label;
									if (label2 != null)
									{
										label2.Content = item.Url;
									}
									Label label3 = dockPanel2.FindName("TempImage") as Label;
									if (label3 != null)
									{
										label3.Content = item.CountryImage;
									}
									Label label4 = dockPanel2.FindName("TempCountryName") as Label;
									if (label4 != null)
									{
										label4.Content = item.CountryName;
									}
									Label label5 = dockPanel2.FindName("TempCountryCode") as Label;
									if (label5 != null)
									{
										label5.Content = item.CountryCode;
									}
								}
								StackPanel expr_1A3 = grid2.FindName("GroupBoxPanel") as StackPanel;
								ComboBox comboBox = ((expr_1A3 != null) ? expr_1A3.FindName("CountryComboBox") : null) as ComboBox;
								if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && comboBox != null)
								{
									comboBox.Visibility = Visibility.Collapsed;
									break;
								}
								break;
							}
						}
					}
				}
			}
		}

		private void Overlay_MouseEnter(object sender, string overlayNameFromElement)
		{
			Grid grid = sender as Grid;
			if (grid == null)
			{
				return;
			}
			grid.Opacity = 1.0;
			Grid grid2 = VisualTreeHelperEx.GetParent(grid) as Grid;
			if (grid2 != null)
			{
				grid2.Background = (base.FindResource("BlurBackgroundBrush") as SolidColorBrush);
				bool flag = (bool)grid2.Tag;
				DockPanel dockPanel = grid2.FindName("UnameDockPanel") as DockPanel;
				if (dockPanel != null)
				{
					BlurEffect effect = new BlurEffect
					{
						Radius = 20.0
					};
					dockPanel.Effect = effect;
					dockPanel.Background = (base.FindResource("BlurBackgroundBrush") as SolidColorBrush);
				}
				StackPanel stackPanel = grid2.FindName("GroupBoxPanel") as StackPanel;
				if (stackPanel != null)
				{
					stackPanel.Effect = new BlurEffect();
					stackPanel.Background = (base.FindResource("BlurBackgroundBrush") as SolidColorBrush);
				}
				DockPanel dockPanel2 = grid2.FindName("PlayPanel") as DockPanel;
				if (dockPanel2 != null)
				{
					dockPanel2.Effect = new BlurEffect();
					dockPanel2.Background = (base.FindResource("BlurBackgroundBrush") as SolidColorBrush);
					if (flag)
					{
						Button button = grid.FindName("EditButton") as Button;
						if (button != null)
						{
							button.Visibility = (ObjectHolder.CurrentUser.HasUserAccessToFeature(12) ? Visibility.Visible : Visibility.Hidden);
						}
						Button button2 = grid.FindName("DeleteButton") as Button;
						if (button2 != null)
						{
							button2.Visibility = (ObjectHolder.CurrentUser.HasUserAccessToFeature(12) ? Visibility.Visible : Visibility.Hidden);
						}
					}
				}
				Grid grid3 = grid2.FindName(overlayNameFromElement) as Grid;
				if (grid3 != null)
				{
					grid3.Opacity = 1.0;
				}
			}
			Button button3 = grid.FindName("ConnectButton") as Button;
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUnblock()))
			{
				if (button3 != null)
				{
					button3.Visibility = (ObjectHolder.CurrentUser.HasUserAccessToFeature(12) ? Visibility.Visible : Visibility.Hidden);
				}
				Button button4 = grid.FindName("UpgradeBtn") as Button;
				if (button4 != null)
				{
					button4.Visibility = (ObjectHolder.CurrentUser.HasUserAccessToFeature(12) ? Visibility.Hidden : Visibility.Visible);
				}
			}
			if (this.CurrentProfile.Equals(SettingsHolder.get_Settings().get_ProfileUncensoring()) && button3 != null)
			{
				button3.Visibility = Visibility.Visible;
			}
		}

		private void Overlay_MouseLeave(object sender, string overlayNameFromElement)
		{
			Grid grid = sender as Grid;
			if (grid == null)
			{
				return;
			}
			grid.Opacity = 1.0;
			Grid grid2 = VisualTreeHelperEx.GetParent(grid) as Grid;
			if (grid2 != null)
			{
				grid2.Background = (base.FindResource("WindowBackgroundColor2Brush") as SolidColorBrush);
				DockPanel dockPanel = grid2.FindName("UnameDockPanel") as DockPanel;
				if (dockPanel != null)
				{
					dockPanel.Effect = null;
					dockPanel.Background = new SolidColorBrush(Colors.Transparent);
				}
				StackPanel stackPanel = grid2.FindName("GroupBoxPanel") as StackPanel;
				if (stackPanel != null)
				{
					stackPanel.Effect = null;
					stackPanel.Background = new SolidColorBrush(Colors.Transparent);
				}
				DockPanel dockPanel2 = grid2.FindName("PlayPanel") as DockPanel;
				if (dockPanel2 != null)
				{
					dockPanel2.Effect = null;
					dockPanel2.Background = new SolidColorBrush(Colors.Transparent);
					Button button = grid.FindName("EditButton") as Button;
					if (button != null)
					{
						button.Visibility = Visibility.Hidden;
					}
					Button button2 = grid.FindName("DeleteButton") as Button;
					if (button2 != null)
					{
						button2.Visibility = Visibility.Hidden;
					}
				}
				Grid grid3 = grid2.FindName(overlayNameFromElement) as Grid;
				if (grid3 != null)
				{
					grid3.Opacity = 1.0;
				}
			}
			Button button3;
			if ((button3 = (grid.FindName("ConnectButton") as Button)) != null)
			{
				button3.Visibility = Visibility.Hidden;
			}
			Button button4;
			if ((button4 = (grid.FindName("UpgradeBtn") as Button)) != null)
			{
				button4.Visibility = Visibility.Hidden;
			}
		}

		private void CountryList_OnIsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			if (!(bool)e.NewValue)
			{
				return;
			}
			UnblockCountries unblockCountries = (UnblockCountries)((ComboBox)sender).SelectedItem;
			if (unblockCountries != null)
			{
				((ComboBox)sender).IsEnabled = (unblockCountries.CountryName != "-");
				this.ChangeDescriptionContent(unblockCountries);
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
			Uri resourceLocator = new Uri("/CyberGhost;component/components/unblockitemgrid.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.AdornerDecorator = (AdornerDecorator)target;
				return;
			case 2:
				this.SearchText = (TextBox)target;
				this.SearchText.TextChanged += new TextChangedEventHandler(this.SearchText_OnTextChanged);
				this.SearchText.PreviewTextInput += new TextCompositionEventHandler(this.SearchText_PreviewTextInput);
				return;
			case 3:
				this.TileGrid = (Grid)target;
				return;
			case 4:
				this.UnblockDataGrid = (ItemsControl)target;
				return;
			default:
				if (connectionId != 12)
				{
					this._contentLoaded = true;
					return;
				}
				this.LoadingRing = (ModernProgressRing)target;
				return;
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IStyleConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 5:
				((Grid)target).MouseEnter += new MouseEventHandler(this.Overlay1_MouseEnter);
				((Grid)target).MouseLeave += new MouseEventHandler(this.Overlay1_OnMouseLeave);
				return;
			case 6:
				((Button)target).Click += new RoutedEventHandler(this.EditButton_OnClick);
				return;
			case 7:
				((Button)target).Click += new RoutedEventHandler(this.ConnectButton_OnClick);
				return;
			case 8:
				((Button)target).Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			case 9:
				((Button)target).Click += new RoutedEventHandler(this.DeleteButton_OnClick);
				return;
			case 10:
				((Grid)target).MouseEnter += new MouseEventHandler(this.Overlay2_MouseEnter);
				((Grid)target).MouseLeave += new MouseEventHandler(this.Overlay2_OnMouseLeave);
				return;
			case 11:
				((ComboBox)target).Initialized += new EventHandler(this.CountryList_OnInitialized);
				((ComboBox)target).Loaded += new RoutedEventHandler(this.CountryList_OnLoaded);
				((ComboBox)target).SelectionChanged += new SelectionChangedEventHandler(this.CountryList_SelectionChanged);
				((ComboBox)target).IsVisibleChanged += new DependencyPropertyChangedEventHandler(this.CountryList_OnIsVisibleChanged);
				return;
			default:
				return;
			}
		}
	}
}
