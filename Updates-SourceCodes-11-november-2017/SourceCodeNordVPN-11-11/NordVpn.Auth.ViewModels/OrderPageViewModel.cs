using NordVpn.Application;
using NordVpn.Auth.Messages;
using NordVpn.Shared;
using System;
using System.Windows.Navigation;

namespace NordVpn.Auth.ViewModels
{
	public class OrderPageViewModel : AppScreen
	{
		private readonly EventFacade _eventFacade;

		private readonly Uri _orderPageUrl;

		private readonly Uri _orderPageProfileUrl;

		private Uri _pageUrl;

		private bool _orderPageIsLoaded;

		public Uri PageUrl
		{
			get
			{
				return this._pageUrl;
			}
			private set
			{
				this.Set<Uri>(ref this._pageUrl, value, "PageUrl");
			}
		}

		public bool OrderPageIsLoaded
		{
			get
			{
				return this._orderPageIsLoaded;
			}
			private set
			{
				this.Set<bool>(ref this._orderPageIsLoaded, value, "OrderPageIsLoaded");
			}
		}

		public OrderPageViewModel(EventFacade eventFacade, Uri orderPageUrl, Uri orderPageProfileUrl)
		{
			this._eventFacade = eventFacade;
			this._orderPageUrl = orderPageUrl;
			this._orderPageProfileUrl = orderPageProfileUrl;
		}

		public void Navigate(Uri uri)
		{
			if (OrderPageViewModel.UriEquals(uri, "/order/success/", this._orderPageUrl.Authority))
			{
				this.ResetPage();
				this._eventFacade.Publish(new ShowRegistrationSuccessScreenMessage());
				return;
			}
			if (OrderPageViewModel.UriEquals(uri, "/order/error/", this._orderPageUrl.Authority))
			{
				this.ResetPage();
				this._eventFacade.Publish(new ShowRegistrationFailureScreenMessage());
			}
		}

		public void Navigate(Uri uri, ref bool cancel)
		{
			if (OrderPageViewModel.UriEquals(uri, "/profile/", this._orderPageProfileUrl.Authority))
			{
				cancel = true;
				this.ResetPage();
				this._eventFacade.Publish(new ShowLoginScreenMessage());
			}
		}

		public void CompleteLoad(Uri uri)
		{
			if (this._orderPageUrl.Equals(uri))
			{
				this.OrderPageIsLoaded = true;
			}
		}

		public void OnNavigated(NavigationEventArgs e)
		{
			this.Navigate(e.Uri);
		}

		public void OnNavigating(NavigatingCancelEventArgs e)
		{
			bool cancel = e.Cancel;
			this.Navigate(e.Uri, ref cancel);
			e.Cancel = cancel;
		}

		public void OnLoadCompleted(NavigationEventArgs e)
		{
			this.CompleteLoad(e.Uri);
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this.PageUrl = this._orderPageUrl;
		}

		protected override void OnDeactivate(bool close)
		{
			base.OnDeactivate(close);
			this.ResetPage();
		}

		private void ResetPage()
		{
			this.PageUrl = new Uri("about:blank");
			this.OrderPageIsLoaded = false;
		}

		private static bool UriEquals(Uri uri, string otherUriPart, string authority)
		{
			return !(uri == null) && uri.Authority.EqualsIgnoringCase(authority) && uri.AbsolutePath.TrimEnd(new char[]
			{
				'/'
			}).EqualsIgnoringCase(otherUriPart.TrimEnd(new char[]
			{
				'/'
			}));
		}
	}
}
