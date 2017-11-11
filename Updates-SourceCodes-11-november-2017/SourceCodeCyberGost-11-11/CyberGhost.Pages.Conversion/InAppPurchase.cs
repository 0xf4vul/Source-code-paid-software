using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using MobileConcepts.Components.JsonExecutor;
using MobileConcepts.Components.MCWebBrowser;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Markup;

namespace CyberGhost.Pages.Conversion
{
	public class InAppPurchase : System.Windows.Controls.UserControl, IComponentConnector, IContent
	{
		private readonly JsonParser _jsonParser;

		private DateTime _lastInappLinkClicked = DateTime.MinValue;

		internal Grid BrowserGrid;

		internal McWebBrowser WebBrowser;

		private bool _contentLoaded;

		public InAppPurchase()
		{
			this.InitializeComponent();
			this.WebBrowser.add_OnProcessCommand(new ProcessCommandEvent(this.WebBrowser_OnProcessCommand));
			this.WebBrowser.DocumentCompleted += new WebBrowserDocumentCompletedEventHandler(this.WebBrowser_DocumentCompleted);
			this.WebBrowser.add_OnLinkClicked(new LinkClickedEvent(this.WebBrowser_OnLinkClicked));
			this.BrowserGrid.Visibility = Visibility.Hidden;
			InAppExecutor inAppExecutor = new InAppExecutor();
			this._jsonParser = new JsonParser(inAppExecutor);
			inAppExecutor.InAppReference = this;
		}

		private bool WebBrowser_OnLinkClicked(HtmlElement aLinkElement)
		{
			string attribute = aLinkElement.GetAttribute("href");
			if (!string.IsNullOrEmpty(attribute) && attribute.Contains("account.cyberghostvpn.com"))
			{
				if (DateTime.Now - this._lastInappLinkClicked > TimeSpan.FromSeconds(5.0))
				{
					this._lastInappLinkClicked = DateTime.Now;
					HelperFunctions.OpenFileInBrowser(attribute, false);
				}
				return true;
			}
			return false;
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
			this.BrowserGrid.Visibility = Visibility.Hidden;
			this.WebBrowser.Navigate("about:blank");
		}

		[AsyncStateMachine(typeof(InAppPurchase.<OnNavigatedTo>d__6))]
		public void OnNavigatedTo(NavigationEventArgs e)
		{
			InAppPurchase.<OnNavigatedTo>d__6 <OnNavigatedTo>d__;
			<OnNavigatedTo>d__.<>4__this = this;
			<OnNavigatedTo>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<OnNavigatedTo>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <OnNavigatedTo>d__.<>t__builder;
			<>t__builder.Start<InAppPurchase.<OnNavigatedTo>d__6>(ref <OnNavigatedTo>d__);
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
			this.BrowserGrid.Visibility = Visibility.Hidden;
			this.WebBrowser.Navigate("about:blank");
		}

		private void WebBrowser_DocumentCompleted(object sender, WebBrowserDocumentCompletedEventArgs e)
		{
			if (!this.WebBrowser.DocumentText.Trim().ToUpper().Replace("\0", string.Empty).Equals("<HTML></HTML>"))
			{
				this.BrowserGrid.Visibility = Visibility.Visible;
			}
		}

		private void WebBrowser_OnProcessCommand(string aCommand)
		{
			this._jsonParser.ParseAndExecuteJson(aCommand, this.WebBrowser);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/conversion/inapppurchase.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.BrowserGrid = (Grid)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.WebBrowser = (McWebBrowser)target;
		}
	}
}
