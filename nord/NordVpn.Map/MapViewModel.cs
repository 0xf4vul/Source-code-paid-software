using GalaSoft.MvvmLight.CommandWpf;
using NordVpn.Application;
using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Servers;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Map.Pins;
using NordVpn.Map.Wizzard;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace NordVpn.Map
{
	public class MapViewModel : AppScreen
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly MapViewModel.<>c <>9 = new MapViewModel.<>c();

			public static Func<Country, bool> <>9__80_0;

			public static Action<Task> <>9__85_0;

			internal bool <OnServersChanged>b__80_0(Country c)
			{
				return c.get_Servers().Any<CountryServer>();
			}

			internal void <QueWizard>b__85_0(Task task)
			{
			}
		}

		private const double DefaultViewportWidth = 785.6;

		private const double DefaultViewportHeight = 452.4;

		private const double InitialWidth = 640.0;

		private const double InitialHeight = 400.0;

		private const double DefaultWidth = 2560.0;

		private readonly double _pinIncreaseOnBigMap = 1.4;

		private double _width;

		private double _height;

		private double _offsetX;

		private double _offsetY;

		private double _viewportWidth;

		private double _viewportHeight;

		private double _animateX;

		private double _animateY;

		private double _animateWidth;

		private Visibility _wizardVisibility = Visibility.Collapsed;

		private Visibility _inactiveAccountVisibility = Visibility.Collapsed;

		private Visibility _pricingVisibility = Visibility.Collapsed;

		private CancellationTokenSource _cancellationToken = new CancellationTokenSource();

		private readonly PinFactory _pinFactory;

		private readonly IUserContext _userContext;

		private readonly IServerProvider _serverProvider;

		public IAnalyticsManager AnalyticsManager
		{
			[CompilerGenerated]
			get
			{
				return this.<AnalyticsManager>k__BackingField;
			}
		}

		public WizardViewModel Wizard
		{
			[CompilerGenerated]
			get
			{
				return this.<Wizard>k__BackingField;
			}
		}

		public InactiveAccountViewModel InactiveAccount
		{
			[CompilerGenerated]
			get
			{
				return this.<InactiveAccount>k__BackingField;
			}
		}

		public double AnimateWidth
		{
			get
			{
				return this._animateWidth;
			}
			set
			{
				base.Set<double>(ref this._animateWidth, value, "AnimateWidth");
			}
		}

		public double AnimateY
		{
			get
			{
				return this._animateY;
			}
			set
			{
				base.Set<double>(ref this._animateY, value, "AnimateY");
			}
		}

		public double AnimateX
		{
			get
			{
				return this._animateX;
			}
			set
			{
				base.Set<double>(ref this._animateX, value, "AnimateX");
			}
		}

		public double ViewportWidth
		{
			get
			{
				return this._viewportWidth;
			}
			set
			{
				if (value > 0.0)
				{
					base.Set<double>(ref this._viewportWidth, value, "ViewportWidth");
				}
			}
		}

		public double ViewportHeight
		{
			get
			{
				return this._viewportHeight;
			}
			set
			{
				if (value > 0.0)
				{
					base.Set<double>(ref this._viewportHeight, value, "ViewportHeight");
				}
			}
		}

		public double OffsetX
		{
			get
			{
				return this._offsetX;
			}
			set
			{
				this.ResetAnimatingOffsets();
				this._offsetX = value;
				this.NotifyOfPropertyChange("OffsetX");
			}
		}

		public double OffsetY
		{
			get
			{
				return this._offsetY;
			}
			set
			{
				this.ResetAnimatingOffsets();
				this._offsetY = value;
				this.NotifyOfPropertyChange("OffsetY");
			}
		}

		public double Width
		{
			get
			{
				return this._width;
			}
			set
			{
				this.ResetAnimatingOffsets();
				this._width = value;
				this.Height = value * 0.625;
				this.NotifyOfPropertyChange("Width");
			}
		}

		public double Height
		{
			get
			{
				return this._height;
			}
			set
			{
				base.Set<double>(ref this._height, value, "Height");
			}
		}

		public Visibility WizardVisibility
		{
			get
			{
				return this._wizardVisibility;
			}
			set
			{
				base.Set<Visibility>(ref this._wizardVisibility, value, "WizardVisibility");
			}
		}

		public Visibility InactiveAccountVisibility
		{
			get
			{
				return this._inactiveAccountVisibility;
			}
			set
			{
				base.Set<Visibility>(ref this._inactiveAccountVisibility, value, "InactiveAccountVisibility");
			}
		}

		public Visibility PricingVisibility
		{
			get
			{
				return this._pricingVisibility;
			}
			set
			{
				base.Set<Visibility>(ref this._pricingVisibility, value, "PricingVisibility");
			}
		}

		public ICommand ResizePins
		{
			[CompilerGenerated]
			get
			{
				return this.<ResizePins>k__BackingField;
			}
		}

		public Dictionary<string, PinViewModel> Pins
		{
			get;
			private set;
		}

		public List<PinViewModel> PinsList
		{
			get
			{
				return this.Pins.Values.ToList<PinViewModel>();
			}
		}

		public MapViewModel(PinFactory pinFactory, IServerProvider serverProvider, IVpnConnectionManager vpnConnectionManager, IAnalyticsManager analyticsManager, IUserContext userContext, WizardViewModel wizardViewModel, InactiveAccountViewModel inactiveAccountViewModel)
		{
			this.<Pins>k__BackingField = new Dictionary<string, PinViewModel>();
			base..ctor();
			this.<AnalyticsManager>k__BackingField = analyticsManager;
			this._serverProvider = serverProvider;
			this._pinFactory = pinFactory;
			this.Width = 2560.0;
			this._viewportWidth = 785.6;
			this._viewportHeight = 452.4;
			this._userContext = userContext;
			this.<ResizePins>k__BackingField = new RelayCommand<SizeChangedEventArgs>(new Action<SizeChangedEventArgs>(this.ResizePinsCommand));
			vpnConnectionManager.add_VpnStatusChanged(new EventHandler<VpnConnectionStatusChangeEventArgs>(this.ScrollToPin));
			vpnConnectionManager.add_VpnStatusChanged(new EventHandler<VpnConnectionStatusChangeEventArgs>(this.CancelWizardPopupTask));
			userContext.add_UserAuthenticated(new EventHandler<UserEventArgs>(this.OnUserAuthenticated));
			this._serverProvider.add_ServersChanged(new EventHandler(this.OnServersChanged));
			this.<Wizard>k__BackingField = wizardViewModel;
			this.<InactiveAccount>k__BackingField = inactiveAccountViewModel;
		}

		protected override void OnViewLoaded(object view)
		{
			base.OnViewLoaded(view);
			this.SetInitialPosition(this._userContext.get_CurrentUser());
		}

		public void ShowPricing()
		{
			this.PricingVisibility = Visibility.Visible;
			this.InactiveAccountVisibility = Visibility.Collapsed;
		}

		public void HidePricing()
		{
			this.PricingVisibility = Visibility.Collapsed;
			this.ShowInactiveSubscription(this._userContext.get_CurrentUser());
		}

		private void OnServersChanged(object sender, EventArgs e)
		{
			IEnumerable<Country> arg_2A_0 = this._serverProvider.GetCountries();
			Func<Country, bool> arg_2A_1;
			if ((arg_2A_1 = MapViewModel.<>c.<>9__80_0) == null)
			{
				arg_2A_1 = (MapViewModel.<>c.<>9__80_0 = new Func<Country, bool>(MapViewModel.<>c.<>9.<OnServersChanged>b__80_0));
			}
			IEnumerable<Country> countries = arg_2A_0.Where(arg_2A_1);
			this.Pins = this._pinFactory.BuildPins(countries);
			this.NotifyOfPropertyChange("PinsList");
			this.ResizeAllPins(this.Width, this.Height);
		}

		private void OnUserAuthenticated(object sender, UserEventArgs e)
		{
			this.ShowInactiveSubscription(this._userContext.get_CurrentUser());
			this.HideWizard();
			this.QueWizard();
		}

		private void SetInitialPosition(User user)
		{
			double num = 0.0;
			double num2 = 0.0;
			switch (user.get_Coordinates().get_Continent())
			{
			case 0:
				num = 200.0;
				num2 = 180.0;
				break;
			case 1:
				num = 250.0;
				num2 = 290.0;
				break;
			case 2:
				num = 360.0;
				num2 = 160.0;
				break;
			case 3:
				num = 370.0;
				num2 = 300.0;
				break;
			case 4:
				num = 450.0;
				num2 = 190.0;
				break;
			case 5:
				num = 546.0;
				num2 = 278.0;
				break;
			}
			double offsetX = num * (this.Width / 640.0) - this.ViewportWidth / 2.0;
			double offsetY = num2 * (this.Height / 400.0) - this.ViewportHeight / 2.0;
			this.OffsetX = offsetX;
			this.OffsetY = offsetY;
		}

		private void ShowInactiveSubscription(User user)
		{
			if (user.get_IsSubscriptionActive())
			{
				this.QueWizard();
				this.InactiveAccountVisibility = Visibility.Collapsed;
				return;
			}
			this.HideWizard();
			this.InactiveAccountVisibility = Visibility.Visible;
		}

		private void CancelWizardPopupTask(object sender, VpnConnectionStatusChangeEventArgs e)
		{
			this._cancellationToken.Cancel();
			this.HideWizard();
		}

		[AsyncStateMachine(typeof(MapViewModel.<QueWizard>d__85))]
		private void QueWizard()
		{
			MapViewModel.<QueWizard>d__85 <QueWizard>d__;
			<QueWizard>d__.<>4__this = this;
			<QueWizard>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<QueWizard>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <QueWizard>d__.<>t__builder;
			<>t__builder.Start<MapViewModel.<QueWizard>d__85>(ref <QueWizard>d__);
		}

		private void HideWizard()
		{
			this.WizardVisibility = Visibility.Collapsed;
		}

		private void ShowWizard()
		{
			this.WizardVisibility = Visibility.Visible;
		}

		private void ResizePinsCommand(SizeChangedEventArgs e)
		{
			this.ResizeAllPins(e.NewSize.Width, e.NewSize.Height);
		}

		private void ResizeAllPins(double newWidth, double newHeight)
		{
			foreach (PinViewModel current in this.PinsList)
			{
				double num = 34.0 / (newWidth / 670.0);
				double num2 = 55.0 / (newHeight / 480.0);
				if (newWidth >= 7500.0)
				{
					num *= this._pinIncreaseOnBigMap;
					num2 *= this._pinIncreaseOnBigMap;
				}
				double topOffset = current.TopOffset + (current.Height - num2) * 0.882;
				double leftOffset = current.LeftOffset + (current.Width - num) * 0.493;
				current.LeftOffset = leftOffset;
				current.TopOffset = topOffset;
				current.Width = num;
				current.Height = num2;
			}
		}

		private void ScrollToPin(object sender, VpnConnectionStatusChangeEventArgs e)
		{
			GeographicalServer geographicalServer = e.get_Status().get_Server() as GeographicalServer;
			if (geographicalServer == null)
			{
				return;
			}
			if (e.get_Status().get_State() == 2)
			{
				if (!this.Pins.ContainsKey(geographicalServer.get_Country().get_Code()))
				{
					return;
				}
				PinViewModel pinViewModel = this.Pins[geographicalServer.get_Country().get_Code()];
				this.AnimateX = pinViewModel.LeftOffset * (this.Width / 640.0) - this.ViewportWidth / 2.0;
				this.AnimateY = pinViewModel.TopOffset * (this.Height / 400.0) - this.ViewportHeight / 2.0;
				this._offsetX = this.AnimateX;
				this._offsetY = this.AnimateY;
			}
		}

		private void ResetAnimatingOffsets()
		{
			this.AnimateX = 0.0;
			this.AnimateY = 0.0;
		}
	}
}
