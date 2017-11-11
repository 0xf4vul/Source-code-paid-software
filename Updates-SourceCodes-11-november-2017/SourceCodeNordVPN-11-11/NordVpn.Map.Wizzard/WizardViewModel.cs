using NordVpn.Application;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Models;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;

namespace NordVpn.Map.Wizzard
{
	public class WizardViewModel : AppScreen
	{
		private enum WizardState
		{
			Contracted,
			Expanded
		}

		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly WizardViewModel.<>c <>9 = new WizardViewModel.<>c();

			public static Func<WizardCheckboxModel, bool> <>9__41_0;

			public static Func<WizardCheckboxModel, bool> <>9__42_0;

			public static Func<WizardCheckboxModel, WizardCategory> <>9__42_1;

			internal bool <CheckboxChanged>b__41_0(WizardCheckboxModel cb)
			{
				return cb.IsChecked;
			}

			internal bool <ResolveServer>b__42_0(WizardCheckboxModel cb)
			{
				return cb.IsChecked;
			}

			internal WizardCategory <ResolveServer>b__42_1(WizardCheckboxModel cb)
			{
				return cb.Category;
			}
		}

		private readonly VpnConnector _connector;

		private readonly BestUserServerProvider _serverRegistry;

		private WizardViewModel.WizardState _wizardState;

		private GeographicalServer _suggestedServer;

		private string _suggestionTitle;

		private string _buttonLabel;

		private string _flagImage;

		private Visibility _subheadingVisibility;

		private Visibility _questionVisibility;

		private Visibility _suggestionVisibility;

		private string _title;

		private readonly EventFacade _eventFacade;

		public string Title
		{
			get
			{
				return this._title;
			}
			set
			{
				this.Set<string>(ref this._title, value, "Title");
			}
		}

		public string SuggestionTitle
		{
			get
			{
				return this._suggestionTitle;
			}
			set
			{
				this.Set<string>(ref this._suggestionTitle, value, "SuggestionTitle");
			}
		}

		public string ButtonLabel
		{
			get
			{
				return this._buttonLabel;
			}
			set
			{
				this.Set<string>(ref this._buttonLabel, value, "ButtonLabel");
			}
		}

		public string FlagImage
		{
			get
			{
				return this._flagImage;
			}
			set
			{
				this.Set<string>(ref this._flagImage, value, "FlagImage");
			}
		}

		public Visibility SubheadingVisibility
		{
			get
			{
				return this._subheadingVisibility;
			}
			set
			{
				this.Set<Visibility>(ref this._subheadingVisibility, value, "SubheadingVisibility");
			}
		}

		public Visibility QuestionVisibility
		{
			get
			{
				return this._questionVisibility;
			}
			set
			{
				this.Set<Visibility>(ref this._questionVisibility, value, "QuestionVisibility");
			}
		}

		public Visibility SuggestionVisibility
		{
			get
			{
				return this._suggestionVisibility;
			}
			set
			{
				this.Set<Visibility>(ref this._suggestionVisibility, value, "SuggestionVisibility");
			}
		}

		public ObservableCollection<WizardCheckboxModel> Checkboxes
		{
			[CompilerGenerated]
			get
			{
				return this.<Checkboxes>k__BackingField;
			}
		}

		public WizardViewModel(VpnConnector connector, EventFacade eventFacade, BestUserServerProvider serverRegistry)
		{
			this._connector = connector;
			this._eventFacade = eventFacade;
			this._serverRegistry = serverRegistry;
			this.ResolveContracted();
			this.<Checkboxes>k__BackingField = new ObservableCollection<WizardCheckboxModel>
			{
				new WizardCheckboxModel(WizardCategory.Security, new Action(this.CheckboxChanged), "Security", false),
				new WizardCheckboxModel(WizardCategory.Streaming, new Action(this.CheckboxChanged), "Streaming", false),
				new WizardCheckboxModel(WizardCategory.P2P, new Action(this.CheckboxChanged), "P2P", false),
				new WizardCheckboxModel(WizardCategory.Anonymity, new Action(this.CheckboxChanged), "Anonymity", false)
			};
		}

		[AsyncStateMachine(typeof(WizardViewModel.<Connect>d__37))]
		public void Connect()
		{
			WizardViewModel.<Connect>d__37 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<WizardViewModel.<Connect>d__37>(ref <Connect>d__);
		}

		private void ResolveContracted()
		{
			this._wizardState = WizardViewModel.WizardState.Contracted;
			this.QuestionVisibility = Visibility.Collapsed;
			this.SubheadingVisibility = Visibility.Visible;
			this.SuggestionVisibility = Visibility.Collapsed;
			this.Title = "Can't decide where to Connect?";
			this.ButtonLabel = "Connection wizard";
		}

		private void ResolveExpanded()
		{
			this._wizardState = WizardViewModel.WizardState.Expanded;
			this.QuestionVisibility = Visibility.Visible;
			this.SubheadingVisibility = Visibility.Collapsed;
			this.SuggestionVisibility = Visibility.Hidden;
			this.Title = "I will use Nord for:";
			this.ButtonLabel = "Connect";
		}

		[AsyncStateMachine(typeof(WizardViewModel.<ConnectToServer>d__40))]
		private Task ConnectToServer()
		{
			WizardViewModel.<ConnectToServer>d__40 <ConnectToServer>d__;
			<ConnectToServer>d__.<>4__this = this;
			<ConnectToServer>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<ConnectToServer>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <ConnectToServer>d__.<>t__builder;
			<>t__builder.Start<WizardViewModel.<ConnectToServer>d__40>(ref <ConnectToServer>d__);
			return <ConnectToServer>d__.<>t__builder.Task;
		}

		private void CheckboxChanged()
		{
			IEnumerable<WizardCheckboxModel> arg_25_0 = this.Checkboxes;
			Func<WizardCheckboxModel, bool> arg_25_1;
			if ((arg_25_1 = WizardViewModel.<>c.<>9__41_0) == null)
			{
				arg_25_1 = (WizardViewModel.<>c.<>9__41_0 = new Func<WizardCheckboxModel, bool>(WizardViewModel.<>c.<>9.<CheckboxChanged>b__41_0));
			}
			if (!arg_25_0.Any(arg_25_1))
			{
				this.SuggestionVisibility = Visibility.Hidden;
				return;
			}
			GeographicalServer geographicalServer = this.ResolveServer() ?? this._suggestedServer;
			CountryIdentifier country = geographicalServer.get_Country();
			this.SuggestionVisibility = Visibility.Visible;
			this.FlagImage = string.Format("/NordVPN;component/Resources/Assets/Images/Flags/{0}.png", country.get_Code());
			this._suggestedServer = geographicalServer;
			this.SuggestionTitle = string.Format("{0} seems best for you", country.get_Name());
		}

		private GeographicalServer ResolveServer()
		{
			WizardViewModel.<>c__DisplayClass42_0 <>c__DisplayClass42_ = new WizardViewModel.<>c__DisplayClass42_0();
			WizardViewModel.<>c__DisplayClass42_0 arg_55_0 = <>c__DisplayClass42_;
			IEnumerable<WizardCheckboxModel> arg_2C_0 = this.Checkboxes;
			Func<WizardCheckboxModel, bool> arg_2C_1;
			if ((arg_2C_1 = WizardViewModel.<>c.<>9__42_0) == null)
			{
				arg_2C_1 = (WizardViewModel.<>c.<>9__42_0 = new Func<WizardCheckboxModel, bool>(WizardViewModel.<>c.<>9.<ResolveServer>b__42_0));
			}
			IEnumerable<WizardCheckboxModel> arg_50_0 = arg_2C_0.Where(arg_2C_1);
			Func<WizardCheckboxModel, WizardCategory> arg_50_1;
			if ((arg_50_1 = WizardViewModel.<>c.<>9__42_1) == null)
			{
				arg_50_1 = (WizardViewModel.<>c.<>9__42_1 = new Func<WizardCheckboxModel, WizardCategory>(WizardViewModel.<>c.<>9.<ResolveServer>b__42_1));
			}
			arg_55_0.selectedCategories = arg_50_0.Select(arg_50_1);
			return this._serverRegistry.GetBestByKeywords((IReadOnlyCollection<string> keywords) => new WizardFilter(<>c__DisplayClass42_.selectedCategories).GetWizardCategoriesFilter(keywords));
		}
	}
}
