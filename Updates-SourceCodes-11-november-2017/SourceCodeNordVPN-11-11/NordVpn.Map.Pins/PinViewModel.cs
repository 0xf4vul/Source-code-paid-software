using Caliburn.Micro;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Map.Pins
{
	public class PinViewModel : PropertyChangedBase
	{
		private PinStates _state;

		private double _leftOffset;

		private double _topOffset;

		private double _width;

		private double _height;

		private double _tooltipTop;

		private double _tooltipLeft;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<Country>> Clicked;

		public PinStates State
		{
			get
			{
				return this._state;
			}
			set
			{
				this.Set<PinStates>(ref this._state, value, "State");
			}
		}

		public Country Country
		{
			get;
			private set;
		}

		public double TooltipTop
		{
			get
			{
				return this._tooltipTop;
			}
			set
			{
				this.Set<double>(ref this._tooltipTop, value, "TooltipTop");
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
				this.Set<double>(ref this._tooltipLeft, value, "TooltipLeft");
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
				this.Set<double>(ref this._width, value, "Width");
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

		public double LeftOffset
		{
			get
			{
				return this._leftOffset;
			}
			set
			{
				this.Set<double>(ref this._leftOffset, value, "LeftOffset");
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
				this.Set<double>(ref this._topOffset, value, "TopOffset");
			}
		}

		public PinViewModel(double leftOffset, double topOffset, Country country)
		{
			this.LeftOffset = leftOffset;
			this.TopOffset = topOffset;
			this.Country = country;
			this.Width = 34.0;
			this.Height = 55.0;
			this.PlaceTooltipRight();
			this.PlaceTooltipBottom();
		}

		public void Click()
		{
			if (this.State != PinStates.Connected)
			{
				if (this.State != PinStates.Connecting)
				{
					EventHandler<EventArgs<Country>> expr_1A = this.Clicked;
					if (expr_1A == null)
					{
						return;
					}
					expr_1A(this, new EventArgs<Country>(this.Country));
					return;
				}
			}
		}

		public void SetState(VpnState state)
		{
			switch (state)
			{
			case 0:
			case 1:
				this.State = PinStates.Disconnected;
				return;
			case 2:
				this.State = PinStates.Connecting;
				return;
			case 3:
				this.State = PinStates.Connected;
				return;
			default:
				throw new NotImplementedException();
			}
		}

		public void PlaceTooltipLeft()
		{
			this.TooltipLeft = -5.5 * (double)this.Country.get_Name().Length;
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
	}
}
