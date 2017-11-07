using Caliburn.Micro;
using GalaSoft.MvvmLight.CommandWpf;
using NordVpn.Application;
using NordVpn.Core.Abstract;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.Vpn;
using System;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace NordVpn.Map.Pins
{
	public class PinViewModel : ErrorHandlingAppScreen
	{
		private readonly BestVpnServerConnector _connector;

		private readonly IAnalyticsManager _appEventManager;

		private PinStates _state;

		private double _leftOffset;

		private double _topOffset;

		private double _width;

		private double _height;

		private double _tooltipTop;

		private double _tooltipLeft;

		public double TooltipTop
		{
			get
			{
				return this._tooltipTop;
			}
			set
			{
				base.Set<double>(ref this._tooltipTop, value, "TooltipTop");
			}
		}

		public double TooltipLeft
		{
			get
			{
				return this._tooltipLeft;
			}
			set
			{
				base.Set<double>(ref this._tooltipLeft, value, "TooltipLeft");
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
				base.Set<double>(ref this._width, value, "Width");
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

		public double LeftOffset
		{
			get
			{
				return this._leftOffset;
			}
			set
			{
				base.Set<double>(ref this._leftOffset, value, "LeftOffset");
			}
		}

		public double TopOffset
		{
			get
			{
				return this._topOffset;
			}
			set
			{
				base.Set<double>(ref this._topOffset, value, "TopOffset");
			}
		}

		public string CountryText
		{
			get
			{
				return this.Coutry.get_Name();
			}
		}

		public ICommand PinClick
		{
			get;
			private set;
		}

		public PinStates State
		{
			get
			{
				return this._state;
			}
			set
			{
				base.Set<PinStates>(ref this._state, value, "State");
			}
		}

		public Country Coutry
		{
			get;
			private set;
		}

		public PinViewModel(BestVpnServerConnector connector, IEventAggregator eventAggregator, IAnalyticsManager appEventManager, double leftOffset, double topOffset, Country country) : base(eventAggregator)
		{
			this.LeftOffset = leftOffset;
			this.TopOffset = topOffset;
			this.Coutry = country;
			this.Width = 34.0;
			this.Height = 55.0;
			this._state = PinViewModel.Map(connector.GetState(country.get_Identifier()));
			this.PinClick = new RelayCommand(new Action(this.PinClickCommand));
			this._connector = connector;
			this._appEventManager = appEventManager;
			this._connector.GeoServerConnectionStatusChanged += new ConnectionEventHandler<GeographicalServer>(this.AppStateChanged);
			this.PlaceTooltipRight();
			this.PlaceTooltipBottom();
		}

		public void PlaceTooltipLeft()
		{
			this.TooltipLeft = -5.5 * (double)this.CountryText.Length;
			this.TooltipTop = 50.0;
		}

		public void PlaceTooltipRight()
		{
			this.TooltipLeft = 18.0;
		}

		public void PlaceTooltipTop()
		{
			this.TooltipTop = -50.0;
		}

		public void PlaceTooltipBottom()
		{
			this.TooltipTop = 50.0;
		}

		private void AppStateChanged(object sender, ConnectionChangedEventArgs<GeographicalServer> e)
		{
			if (this.Coutry.get_Identifier().Equals(e.Server.get_Country()))
			{
				this.State = PinViewModel.Map(e.State);
				return;
			}
			if (e.State != null)
			{
				if (e.State != 1)
				{
					this.State = PinStates.Dimmed;
					return;
				}
			}
			this.State = PinStates.Disconnected;
		}

		[AsyncStateMachine(typeof(PinViewModel.<PinClickCommand>d__46))]
		private void PinClickCommand()
		{
			PinViewModel.<PinClickCommand>d__46 <PinClickCommand>d__;
			<PinClickCommand>d__.<>4__this = this;
			<PinClickCommand>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<PinClickCommand>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <PinClickCommand>d__.<>t__builder;
			<>t__builder.Start<PinViewModel.<PinClickCommand>d__46>(ref <PinClickCommand>d__);
		}

		private static PinStates Map(VpnState state)
		{
			switch (state)
			{
			case 0:
			case 1:
				return PinStates.Disconnected;
			case 2:
				return PinStates.Connecting;
			case 3:
				return PinStates.Connected;
			default:
				throw new NotImplementedException();
			}
		}
	}
}
