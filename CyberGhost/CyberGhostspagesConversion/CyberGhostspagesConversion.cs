using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings;
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
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Markup;

namespace CyberGhost.Pages.Conversion
{
	public class InAppPurchase : System.Windows.Controls.UserControl, IComponentConnector, IContent
	{
		[CompilerGenerated]
		[StructLayout(LayoutKind.Auto)]
		private struct <OnNavigatedTo>d__6 : IAsyncStateMachine
		{
			public int <>1__state;

			public AsyncVoidMethodBuilder <>t__builder;

			public InAppPurchase <>4__this;

			private CgApiPurchaseLink <link>5__1;

			private string <upgradeChannel>5__2;

			private TaskAwaiter<bool> <>u__1;

			private TaskAwaiter<Uri> <>u__2;

			void IAsyncStateMachine.MoveNext()
			{
				int num = this.<>1__state;
				InAppPurchase inAppPurchase = this.<>4__this;
				try
				{
					TaskAwaiter<bool> taskAwaiter;
					if (num != 0)
					{
						if (num == 1)
						{
							goto IL_1C8;
						}
						ObjectHolder.MainForm.set_IsNavigationVisible(false);
						inAppPurchase.BrowserGrid.Visibility = Visibility.Hidden;
						this.<upgradeChannel>5__2 = "client";
						if (DateTime.Now - Constants.get_AffiliateCooldown() <= TimeSpan.FromDays(30.0))
						{
							this.<upgradeChannel>5__2 = "affiliatecenter";
						}
						this.<link>5__1 = new CgApiPurchaseLink();
						taskAwaiter = this.<link>5__1.Fetch(ObjectHolder.LastConversionPoint, string.Format("channel={0}&country={1}&language={2}&{3}&{4}", new object[]
						{
							this.<upgradeChannel>5__2,
							ObjectHolder.CurrentUser.get_Location().get_CountryCode().ToLower(),
							SettingsHolder.get_Settings().get_Language(),
							MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, null),
							SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString()
						}) + (string.IsNullOrEmpty(Navigation.AdditionalParams) ? "" : string.Format("&{0}", Navigation.AdditionalParams)), BaseMixpanelEvent.GetKvStoreAsJson()).GetAwaiter();
						if (!taskAwaiter.IsCompleted)
						{
							this.<>1__state = 0;
							this.<>u__1 = taskAwaiter;
							this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<bool>, InAppPurchase.<OnNavigatedTo>d__6>(ref taskAwaiter, ref this);
							return;
						}
					}
					else
					{
						taskAwaiter = this.<>u__1;
						this.<>u__1 = default(TaskAwaiter<bool>);
						int arg_155_1 = -1;
						num = -1;
						this.<>1__state = arg_155_1;
					}
					bool arg_169_0 = taskAwaiter.GetResult();
					taskAwaiter = default(TaskAwaiter<bool>);
					if (arg_169_0)
					{
						ConversionPopUpHelpers.CloseConverionPopUp();
						if (this.<link>5__1.get_OpenInBrowser())
						{
							HelperFunctions.OpenFileInBrowser(this.<link>5__1.get_Url(), false);
							Navigation.GoHome();
							goto IL_2F0;
						}
						inAppPurchase.WebBrowser.Navigate(string.IsNullOrEmpty(ObjectHolder.ResumePurchaseUrl) ? this.<link>5__1.get_Url() : ObjectHolder.ResumePurchaseUrl);
						goto IL_2F0;
					}
					IL_1C8:
					Uri uri;
					try
					{
						TaskAwaiter<Uri> taskAwaiter2;
						if (num != 1)
						{
							taskAwaiter2 = Helper.GetAuthLink("go_upgrade", null).GetAwaiter();
							if (!taskAwaiter2.IsCompleted)
							{
								this.<>1__state = 1;
								this.<>u__2 = taskAwaiter2;
								this.<>t__builder.AwaitUnsafeOnCompleted<TaskAwaiter<Uri>, InAppPurchase.<OnNavigatedTo>d__6>(ref taskAwaiter2, ref this);
								return;
							}
						}
						else
						{
							taskAwaiter2 = this.<>u__2;
							this.<>u__2 = default(TaskAwaiter<Uri>);
							this.<>1__state = -1;
						}
						Uri arg_238_0 = taskAwaiter2.GetResult();
						taskAwaiter2 = default(TaskAwaiter<Uri>);
						uri = arg_238_0;
					}
					catch (Exception)
					{
						uri = null;
					}
					if (uri != null)
					{
						HelperFunctions.OpenFileInBrowser(uri + string.Format("&channel={0}&conversionpoint={1}&language={2}&country={3}&{4}&{5}", new object[]
						{
							this.<upgradeChannel>5__2,
							ObjectHolder.LastConversionPoint,
							SettingsHolder.get_Settings().get_Language(),
							ObjectHolder.CurrentUser.get_Location().get_CountryCode().ToLower(),
							MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, null),
							SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString()
						}) + (string.IsNullOrEmpty(Navigation.AdditionalParams) ? "" : string.Format("&{0}", Navigation.AdditionalParams)), false);
					}
					else
					{
						HelperFunctions.OpenFileInBrowser("https://account.cyberghostvpn.com/#upgrade", false);
					}
					Navigation.GoHome();
					IL_2F0:;
				}
				catch (Exception exception)
				{
					this.<>1__state = -2;
					this.<>t__builder.SetException(exception);
					return;
				}
				this.<>1__state = -2;
				this.<>t__builder.SetResult();
			}

			[DebuggerHidden]
			void IAsyncStateMachine.SetStateMachine(IAsyncStateMachine stateMachine)
			{
				this.<>t__builder.SetStateMachine(stateMachine);
			}
		}

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
