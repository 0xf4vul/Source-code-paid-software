using Caliburn.Micro;
using NordVpn.Application;
using NordVpn.Application.Analytics;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Logic.Users;
using NordVpn.Core.Models;
using NordVpn.Map.Pins;
using NordVpn.Map.Wizzard;
using NordVpn.Vpn;
using System;
using System.Collections.Generic;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows;

namespace NordVpn.Map
{
	public class MapViewModel : AppScreen
	{
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

		private readonly UserContext _userContext;

		private readonly BestVpnServerConnector _vpnConnector;

		private readonly EventFacade _eventFacade;

		private readonly PinProvider _pinsProvider;

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
				this.Set<double>(ref this._animateWidth, value, "AnimateWidth");
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
				this.Set<double>(ref this._animateY, value, "AnimateY");
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
				this.Set<double>(ref this._animateX, value, "AnimateX");
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
					this.Set<double>(ref this._viewportWidth, value, "ViewportWidth");
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
					this.Set<double>(ref this._viewportHeight, value, "ViewportHeight");
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
				this.Set<double>(ref this._height, value, "Height");
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
				this.Set<Visibility>(ref this._wizardVisibility, value, "WizardVisibility");
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
				this.Set<Visibility>(ref this._inactiveAccountVisibility, value, "InactiveAccountVisibility");
			}
		}

		public BindableCollection<PinViewModel> Pins
		{
			[CompilerGenerated]
			get
			{
				return this.<Pins>k__BackingField;
			}
		}

		public MapViewModel(PinProvider pinsProvider, EventFacade eventFacade, BestVpnServerConnector vpnConnector, UserContext userContext, WizardViewModel wizardViewModel, InactiveAccountViewModel inactiveAccountViewModel)
		{
			this.<Pins>k__BackingField = new BindableCollection<PinViewModel>();
			base..ctor();
			this._pinsProvider = pinsProvider;
			this._eventFacade = eventFacade;
			this._vpnConnector = vpnConnector;
			this._userContext = userContext;
			this.<Wizard>k__BackingField = wizardViewModel;
			this.<InactiveAccount>k__BackingField = inactiveAccountViewModel;
			this.Width = 2560.0;
			this._viewportWidth = 785.6;
			this._viewportHeight = 452.4;
			this._vpnConnector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.OnGeoServerConnectionStatusChanged);
			this._vpnConnector.VpnStateChanged += new EventHandler<VpnStateChangedEventArgs>(this.HideWizard);
			PinProvider expr_BC = this._pinsProvider;
			expr_BC.PinsChanged = (EventHandler)Delegate.Combine(expr_BC.PinsChanged, new EventHandler(this.UpdatePins));
			userContext.add_UserAuthenticated(new EventHandler<UserEventArgs>(this.OnUserAuthenticated));
		}

		public void ResizePins(SizeChangedEventArgs e)
		{
			this.ResizeAllPins(e.NewSize.Width, e.NewSize.Height);
		}

		protected override void OnViewLoaded(object view)
		{
			base.OnViewLoaded(view);
			this.<OnViewLoaded>g__SetInitialPosition65_0(this._userContext.get_CurrentUser());
		}

		private void UpdatePins(object sender, EventArgs e)
		{
			this.Pins.Clear();
			IList<PinViewModel> list = this.<UpdatePins>g__BuildPins66_0();
			this.UpdatePinsStates(list);
			this.Pins.AddRange(list);
			this.ResizeAllPins(this.Width, this.Height);
		}

		[AsyncStateMachine(typeof(MapViewModel.<ConnectToPinCountry>d__67))]
		private void ConnectToPinCountry(object sender, EventArgs e)
		{
			MapViewModel.<ConnectToPinCountry>d__67 <ConnectToPinCountry>d__;
			<ConnectToPinCountry>d__.<>4__this = this;
			<ConnectToPinCountry>d__.sender = sender;
			<ConnectToPinCountry>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<ConnectToPinCountry>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <ConnectToPinCountry>d__.<>t__builder;
			<>t__builder.Start<MapViewModel.<ConnectToPinCountry>d__67>(ref <ConnectToPinCountry>d__);
		}

		[Analytics, Event("Pin"), AsyncStateMachine(typeof(MapViewModel.<ConnectToBestCountryServer>d__68))]
		private Task ConnectToBestCountryServer(string countryName, Country country)
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(MapViewModel.ConnectToBestCountryServer(string, Country)).MethodHandle, typeof(MapViewModel).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			analyticsAttribute.Init(this, methodFromHandle, new object[]
			{
				countryName,
				country
			});
			analyticsAttribute.OnEntry();
			Task task;
			try
			{
				MapViewModel.<ConnectToBestCountryServer>d__68 <ConnectToBestCountryServer>d__;
				<ConnectToBestCountryServer>d__.<>4__this = this;
				<ConnectToBestCountryServer>d__.country = country;
				<ConnectToBestCountryServer>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
				<ConnectToBestCountryServer>d__.<>1__state = -1;
				AsyncTaskMethodBuilder <>t__builder = <ConnectToBestCountryServer>d__.<>t__builder;
				<>t__builder.Start<MapViewModel.<ConnectToBestCountryServer>d__68>(ref <ConnectToBestCountryServer>d__);
				task = <ConnectToBestCountryServer>d__.<>t__builder.Task;
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
			return task;
		}

		[AsyncStateMachine(typeof(MapViewModel.<OnUserAuthenticated>d__69))]
		private void OnUserAuthenticated(object sender, UserEventArgs e)
		{
			MapViewModel.<OnUserAuthenticated>d__69 <OnUserAuthenticated>d__;
			<OnUserAuthenticated>d__.<>4__this = this;
			<OnUserAuthenticated>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnUserAuthenticated>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnUserAuthenticated>d__.<>t__builder;
			<>t__builder.Start<MapViewModel.<OnUserAuthenticated>d__69>(ref <OnUserAuthenticated>d__);
		}

		private void OnGeoServerConnectionStatusChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			if (e.State == 2)
			{
				this.<OnGeoServerConnectionStatusChanged>g__ScrollToCountryPin70_0(e.Server.get_Country());
			}
			this.UpdatePinsStates(this.Pins);
		}

		private void HideWizard(object sender, VpnStateChangedEventArgs e)
		{
			this.HideWizard();
		}

		[AsyncStateMachine(typeof(MapViewModel.<QueWizard>d__72))]
		private Task QueWizard()
		{
			MapViewModel.<QueWizard>d__72 <QueWizard>d__;
			<QueWizard>d__.<>4__this = this;
			<QueWizard>d__.<>t__builder = AsyncTaskMethodBuilder.Create();
			<QueWizard>d__.<>1__state = -1;
			AsyncTaskMethodBuilder <>t__builder = <QueWizard>d__.<>t__builder;
			<>t__builder.Start<MapViewModel.<QueWizard>d__72>(ref <QueWizard>d__);
			return <QueWizard>d__.<>t__builder.Task;
		}

		private void HideWizard()
		{
			this.WizardVisibility = Visibility.Collapsed;
		}

		private void ShowWizard()
		{
			this.WizardVisibility = Visibility.Visible;
		}

		private void ResizeAllPins(double newWidth, double newHeight)
		{
			foreach (PinViewModel current in this.Pins)
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

		private void ResetAnimatingOffsets()
		{
			this.AnimateX = 0.0;
			this.AnimateY = 0.0;
		}

		private void UpdatePinsStates(IList<PinViewModel> pins)
		{
			foreach (PinViewModel current in pins)
			{
				VpnState state = this._vpnConnector.GetState(current.Country.get_Identifier());
				if (VpnStateExtensions.IsUnderConnection(this._vpnConnector.State) && VpnStateExtensions.IsUnderConnection(state))
				{
					current.SetState(state);
				}
				else if (VpnStateExtensions.IsUnderConnection(this._vpnConnector.State) && !VpnStateExtensions.IsUnderConnection(state))
				{
					current.State = PinStates.Dimmed;
				}
				else if (!VpnStateExtensions.IsUnderConnection(this._vpnConnector.State) && VpnStateExtensions.IsUnderConnection(state))
				{
					current.SetState(state);
				}
				else
				{
					current.State = PinStates.Disconnected;
				}
			}
		}
	}
}
