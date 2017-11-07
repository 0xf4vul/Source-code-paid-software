using Caliburn.Micro;
using GalaSoft.MvvmLight.Command;
using NordVpn.Application;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Models;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Input;

namespace NordVpn.Map.Wizzard
{
	public class WizardViewModel : ErrorHandlingAppScreen
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

			public static Func<WizardCheckboxModel, bool> <>9__43_0;

			public static Func<WizardCheckboxModel, bool> <>9__44_0;

			public static Func<WizardCheckboxModel, WizardCategory> <>9__44_1;

			internal bool <CheckboxChanged>b__43_0(WizardCheckboxModel cb)
			{
				return cb.IsChecked;
			}

			internal bool <ResolveServer>b__44_0(WizardCheckboxModel cb)
			{
				return cb.IsChecked;
			}

			internal WizardCategory <ResolveServer>b__44_1(WizardCheckboxModel cb)
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

		public string Title
		{
			get
			{
				return this._title;
			}
			set
			{
				base.Set<string>(ref this._title, value, "Title");
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
				base.Set<string>(ref this._suggestionTitle, value, "SuggestionTitle");
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
				base.Set<string>(ref this._buttonLabel, value, "ButtonLabel");
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
				base.Set<string>(ref this._flagImage, value, "FlagImage");
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
				base.Set<Visibility>(ref this._subheadingVisibility, value, "SubheadingVisibility");
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
				base.Set<Visibility>(ref this._questionVisibility, value, "QuestionVisibility");
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
				base.Set<Visibility>(ref this._suggestionVisibility, value, "SuggestionVisibility");
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

		public ICommand WizardMainAction
		{
			[CompilerGenerated]
			get
			{
				return this.<WizardMainAction>k__BackingField;
			}
		}

		public WizardViewModel(VpnConnector connector, IEventAggregator eventAggregator, BestUserServerProvider serverRegistry) : base(eventAggregator)
		{
			this._connector = connector;
			this._serverRegistry = serverRegistry;
			this.ResolveContracted();
			this.<Checkboxes>k__BackingField = new ObservableCollection<WizardCheckboxModel>
			{
				new WizardCheckboxModel(WizardCategory.Security, new Action(this.CheckboxChanged), "Security", false),
				new WizardCheckboxModel(WizardCategory.Streaming, new Action(this.CheckboxChanged), "Streaming", false),
				new WizardCheckboxModel(WizardCategory.P2P, new Action(this.CheckboxChanged), "P2P", false),
				new WizardCheckboxModel(WizardCategory.Anonymity, new Action(this.CheckboxChanged), "Anonymity", false)
			};
			this.<WizardMainAction>k__BackingField = new RelayCommand(new Action(this.WizardMainActionCommand));
		}

		private void WizardMainActionCommand()
		{
			WizardViewModel.WizardState wizardState = this._wizardState;
			if (wizardState == WizardViewModel.WizardState.Contracted)
			{
				this.ResolveExpanded();
				return;
			}
			if (wizardState != WizardViewModel.WizardState.Expanded)
			{
				return;
			}
			this.Connect();
			this.ResolveContracted();
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

		[AsyncStateMachine(typeof(WizardViewModel.<Connect>d__42))]
		private void Connect()
		{
			WizardViewModel.<Connect>d__42 <Connect>d__;
			<Connect>d__.<>4__this = this;
			<Connect>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<Connect>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <Connect>d__.<>t__builder;
			<>t__builder.Start<WizardViewModel.<Connect>d__42>(ref <Connect>d__);
		}

		private void CheckboxChanged()
		{
			IEnumerable<WizardCheckboxModel> arg_25_0 = this.Checkboxes;
			Func<WizardCheckboxModel, bool> arg_25_1;
			if ((arg_25_1 = WizardViewModel.<>c.<>9__43_0) == null)
			{
				arg_25_1 = (WizardViewModel.<>c.<>9__43_0 = new Func<WizardCheckboxModel, bool>(WizardViewModel.<>c.<>9.<CheckboxChanged>b__43_0));
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
			WizardViewModel.<>c__DisplayClass44_0 <>c__DisplayClass44_ = new WizardViewModel.<>c__DisplayClass44_0();
			WizardViewModel.<>c__DisplayClass44_0 arg_55_0 = <>c__DisplayClass44_;
			IEnumerable<WizardCheckboxModel> arg_2C_0 = this.Checkboxes;
			Func<WizardCheckboxModel, bool> arg_2C_1;
			if ((arg_2C_1 = WizardViewModel.<>c.<>9__44_0) == null)
			{
				arg_2C_1 = (WizardViewModel.<>c.<>9__44_0 = new Func<WizardCheckboxModel, bool>(WizardViewModel.<>c.<>9.<ResolveServer>b__44_0));
			}
			IEnumerable<WizardCheckboxModel> arg_50_0 = arg_2C_0.Where(arg_2C_1);
			Func<WizardCheckboxModel, WizardCategory> arg_50_1;
			if ((arg_50_1 = WizardViewModel.<>c.<>9__44_1) == null)
			{
				arg_50_1 = (WizardViewModel.<>c.<>9__44_1 = new Func<WizardCheckboxModel, WizardCategory>(WizardViewModel.<>c.<>9.<ResolveServer>b__44_1));
			}
			arg_55_0.selectedCategories = arg_50_0.Select(arg_50_1);
			return this._serverRegistry.GetBestByKeywords((IReadOnlyCollection<string> keywords) => new WizardFilter(<>c__DisplayClass44_.selectedCategories).GetWizardCategoriesFilter(keywords));
		}
	}
}
