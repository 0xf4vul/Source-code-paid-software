using CyberGhost.Components.Mixpanel;
using CyberGhost.Settings;
using FirstFloor.ModernUI.Windows;
using FirstFloor.ModernUI.Windows.Navigation;
using Microsoft.CSharp.RuntimeBinder;
using MobileConcepts.Components.JsonExecutor;
using MobileConcepts.Components.MCWebBrowser;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq.Expressions;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Markup;

namespace CyberGhost.Pages
{
	public class PopUp : System.Windows.Controls.UserControl, IComponentConnector, IContent
	{
		public delegate void HidePopUpDelegate(object sender, string reason);

		public delegate void SetCloseableDelegate(object sender, bool canClose);

		public delegate void SetSizeDelegate(object sender, int width, int height);

		public delegate void SetTitleDelegate(object sender, string title);

		public delegate void SetWindowPositionDelegate(object sender, string position);

		public delegate void ShowPopUpDelegate(object sender, int widht, int height, string bannerName);

		[CompilerGenerated]
		private static class <>o__46
		{
			public static CallSite<Func<CallSite, object, object, object>> <>p__0;

			public static CallSite<Func<CallSite, object, bool>> <>p__1;

			public static CallSite<Func<CallSite, object, object>> <>p__2;

			public static CallSite<Func<CallSite, Type, object, object>> <>p__3;

			public static CallSite<Func<CallSite, object, object>> <>p__4;

			public static CallSite<Func<CallSite, object, bool>> <>p__5;

			public static CallSite<Action<CallSite, PopUp, object>> <>p__6;
		}

		private static int _timedInterval;

		private CancellationToken _cancellationToken;

		private System.Timers.Timer _cancelTimer;

		private bool _canClose = true;

		private JsonParser _mJsonParser;

		internal string BannerName;

		internal PopUpZone PopUpZone;

		internal System.Windows.Controls.Label TitleLabel;

		internal System.Windows.Controls.Button CloseButton;

		internal McWebBrowser WebBrowser;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.SetTitleDelegate SetTitle;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.ShowPopUpDelegate ShowPopUp;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.HidePopUpDelegate HidePopUp;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.SetCloseableDelegate SetCloseable;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.SetSizeDelegate SetSize;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PopUp.SetWindowPositionDelegate SetPosition;

		public bool ShowCloseIcon
		{
			get
			{
				return this.CloseButton.Visibility == Visibility.Visible;
			}
			set
			{
				if (!value)
				{
					this.CloseButton.Visibility = Visibility.Collapsed;
					this.TitleLabel.Visibility = Visibility.Collapsed;
					return;
				}
				this.CloseButton.Visibility = (this._canClose ? Visibility.Visible : Visibility.Collapsed);
				this.TitleLabel.Visibility = Visibility.Visible;
			}
		}

		public bool ForcePopup
		{
			get;
			set;
		}

		public PopUp()
		{
			this.InitializeComponent();
			this.ShowCloseIcon = false;
		}

		public void OnFragmentNavigation(FragmentNavigationEventArgs e)
		{
		}

		public void OnNavigatedFrom(NavigationEventArgs e)
		{
		}

		public void OnNavigatedTo(NavigationEventArgs e)
		{
		}

		public void OnNavigatingFrom(NavigatingCancelEventArgs e)
		{
		}

		public void InitializePopUp(PopUpZone zone, CancellationToken cancellationToken)
		{
			this.WebBrowser.add_OnProcessCommand(new ProcessCommandEvent(this.Browser_OnProcessCommand));
			this.WebBrowser.DocumentCompleted += new WebBrowserDocumentCompletedEventHandler(this.WebBrowser_DocumentCompleted);
			this.WebBrowser.ScriptErrorsSuppressed = true;
			this.PopUpZone = zone;
			this._cancellationToken = cancellationToken;
			this._mJsonParser = new JsonParser(new PopUpExecutor(this));
			this._cancellationToken.Register(delegate
			{
				this.DoHide("CANCEL");
			}, true);
			string text = string.Format("{0}", MixpanelEventSender.GetEventAsQueryString<BaseMixpanelEvent>(true, null));
			text += string.Format("&{0}", SettingsHolder.get_Settings().get_BannerSettings().GetSettingsAsQueryString());
			if (SettingsHolder.get_Settings().get_InstallationDate().HasValue)
			{
				text += string.Format("&InstallationDate={0}", SettingsHolder.get_Settings().get_InstallationDate().Value.ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ"));
			}
			if (zone == PopUpZone.Timed)
			{
				PopUp._timedInterval++;
				text += string.Format("&Interval={0}", PopUp._timedInterval);
			}
			if (!string.IsNullOrEmpty(ObjectHolder.ConnectionSource))
			{
				text += string.Format("&Connection%20source={0}", ObjectHolder.ConnectionSource);
			}
			if (!string.IsNullOrEmpty(ObjectHolder.ResumePurchaseUrl))
			{
				text += "&ResumeablePurchase=true";
			}
			string arg = Convert.ToBase64String(Encoding.UTF8.GetBytes(text));
			string urlString = string.Format("https://cg6-content.cyberghostvpn.com/html/popup.html?zoneid={0}&params={1}", this.GetZoneId(zone), arg);
			this.WebBrowser.Navigate(urlString);
			try
			{
				this._cancelTimer = new System.Timers.Timer
				{
					Interval = 10000.0
				};
				this._cancelTimer.Elapsed += new ElapsedEventHandler(this._cancelTimer_Tick);
				this._cancelTimer.Enabled = true;
			}
			catch
			{
			}
		}

		private void _cancelTimer_Tick(object sender, EventArgs e)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				PopUp.HidePopUpDelegate expr_06 = this.HidePopUp;
				if (expr_06 == null)
				{
					return;
				}
				expr_06(this, "TIMEOUT");
			}, null);
		}

		private int GetZoneId(PopUpZone zone)
		{
			string text = string.IsNullOrEmpty(SettingsHolder.get_Settings().get_LoginServer()) ? "rest.cyberghostvpn.com" : SettingsHolder.get_Settings().get_LoginServer();
			if (text.Contains("dev-api"))
			{
				switch (zone)
				{
				case PopUpZone.StartUp:
					return 298;
				case PopUpZone.Disconnected:
					return 300;
				case PopUpZone.Connected:
					return 299;
				case PopUpZone.Connecting:
					return 301;
				case PopUpZone.Timed:
					return 310;
				case PopUpZone.ForcedDisconnect:
					return 313;
				default:
					throw new ArgumentOutOfRangeException("zone", zone, null);
				}
			}
			else if (text.Contains("beta-api"))
			{
				switch (zone)
				{
				case PopUpZone.StartUp:
					return 305;
				case PopUpZone.Disconnected:
					return 303;
				case PopUpZone.Connected:
					return 302;
				case PopUpZone.Connecting:
					return 304;
				case PopUpZone.Timed:
					return 311;
				case PopUpZone.ForcedDisconnect:
					return 314;
				default:
					throw new ArgumentOutOfRangeException("zone", zone, null);
				}
			}
			else
			{
				switch (zone)
				{
				case PopUpZone.StartUp:
					return 309;
				case PopUpZone.Disconnected:
					return 307;
				case PopUpZone.Connected:
					return 306;
				case PopUpZone.Connecting:
					return 308;
				case PopUpZone.Timed:
					return 312;
				case PopUpZone.ForcedDisconnect:
					return 315;
				default:
					throw new ArgumentOutOfRangeException("zone", zone, null);
				}
			}
		}

		private void WebBrowser_DocumentCompleted(object sender, WebBrowserDocumentCompletedEventArgs e)
		{
			this._cancelTimer.Enabled = false;
			object document = this.WebBrowser.Document;
			try
			{
				if (PopUp.<>o__46.<>p__1 == null)
				{
					PopUp.<>o__46.<>p__1 = CallSite<Func<CallSite, object, bool>>.Create(Binder.UnaryOperation(CSharpBinderFlags.None, ExpressionType.IsTrue, typeof(PopUp), new CSharpArgumentInfo[]
					{
						CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
					}));
				}
				Func<CallSite, object, bool> arg_AD_0 = PopUp.<>o__46.<>p__1.Target;
				CallSite arg_AD_1 = PopUp.<>o__46.<>p__1;
				if (PopUp.<>o__46.<>p__0 == null)
				{
					PopUp.<>o__46.<>p__0 = CallSite<Func<CallSite, object, object, object>>.Create(Binder.BinaryOperation(CSharpBinderFlags.None, ExpressionType.NotEqual, typeof(PopUp), new CSharpArgumentInfo[]
					{
						CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null),
						CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.Constant, null)
					}));
				}
				if (arg_AD_0(arg_AD_1, PopUp.<>o__46.<>p__0.Target(PopUp.<>o__46.<>p__0, document, null)))
				{
					if (PopUp.<>o__46.<>p__2 == null)
					{
						PopUp.<>o__46.<>p__2 = CallSite<Func<CallSite, object, object>>.Create(Binder.GetMember(CSharpBinderFlags.None, "Title", typeof(PopUp), new CSharpArgumentInfo[]
						{
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
						}));
					}
					object arg = PopUp.<>o__46.<>p__2.Target(PopUp.<>o__46.<>p__2, document);
					if (PopUp.<>o__46.<>p__5 == null)
					{
						PopUp.<>o__46.<>p__5 = CallSite<Func<CallSite, object, bool>>.Create(Binder.UnaryOperation(CSharpBinderFlags.None, ExpressionType.IsTrue, typeof(PopUp), new CSharpArgumentInfo[]
						{
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
						}));
					}
					Func<CallSite, object, bool> arg_1ED_0 = PopUp.<>o__46.<>p__5.Target;
					CallSite arg_1ED_1 = PopUp.<>o__46.<>p__5;
					if (PopUp.<>o__46.<>p__4 == null)
					{
						PopUp.<>o__46.<>p__4 = CallSite<Func<CallSite, object, object>>.Create(Binder.UnaryOperation(CSharpBinderFlags.None, ExpressionType.Not, typeof(PopUp), new CSharpArgumentInfo[]
						{
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
						}));
					}
					Func<CallSite, object, object> arg_1E8_0 = PopUp.<>o__46.<>p__4.Target;
					CallSite arg_1E8_1 = PopUp.<>o__46.<>p__4;
					if (PopUp.<>o__46.<>p__3 == null)
					{
						PopUp.<>o__46.<>p__3 = CallSite<Func<CallSite, Type, object, object>>.Create(Binder.InvokeMember(CSharpBinderFlags.None, "IsNullOrEmpty", null, typeof(PopUp), new CSharpArgumentInfo[]
						{
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType | CSharpArgumentInfoFlags.IsStaticType, null),
							CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
						}));
					}
					if (arg_1ED_0(arg_1ED_1, arg_1E8_0(arg_1E8_1, PopUp.<>o__46.<>p__3.Target(PopUp.<>o__46.<>p__3, typeof(string), arg))))
					{
						if (PopUp.<>o__46.<>p__6 == null)
						{
							PopUp.<>o__46.<>p__6 = CallSite<Action<CallSite, PopUp, object>>.Create(Binder.InvokeMember(CSharpBinderFlags.InvokeSimpleName | CSharpBinderFlags.ResultDiscarded, "SetPopUpTitle", null, typeof(PopUp), new CSharpArgumentInfo[]
							{
								CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.UseCompileTimeType, null),
								CSharpArgumentInfo.Create(CSharpArgumentInfoFlags.None, null)
							}));
						}
						PopUp.<>o__46.<>p__6.Target(PopUp.<>o__46.<>p__6, this, arg);
					}
				}
			}
			catch (Exception)
			{
			}
		}

		public void SetPopUpTitle(string title)
		{
			PopUp.SetTitleDelegate expr_06 = this.SetTitle;
			if (expr_06 != null)
			{
				expr_06(this, title);
			}
			this.TitleLabel.Content = title;
		}

		public void SetCanClose(bool isCloseable)
		{
			PopUp.SetCloseableDelegate expr_06 = this.SetCloseable;
			if (expr_06 != null)
			{
				expr_06(this, isCloseable);
			}
			if (this.TitleLabel.Visibility == Visibility.Visible)
			{
				this.CloseButton.Visibility = (isCloseable ? Visibility.Visible : Visibility.Collapsed);
			}
			this._canClose = isCloseable;
		}

		public void SetWindowSize(int width, int height)
		{
			PopUp.SetSizeDelegate expr_06 = this.SetSize;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, width, height);
		}

		private void Browser_OnProcessCommand(string aCommand)
		{
			this._mJsonParser.ParseAndExecuteJson(aCommand, this.WebBrowser);
		}

		public void DoShow(int width, int height, string bannerName)
		{
			this.BannerName = bannerName;
			PopUp.ShowPopUpDelegate expr_0D = this.ShowPopUp;
			if (expr_0D == null)
			{
				return;
			}
			expr_0D(this, width, height, bannerName);
		}

		public void DoHide(string result)
		{
			PopUp.HidePopUpDelegate expr_06 = this.HidePopUp;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, result);
		}

		private void CloseButton_OnClick(object sender, RoutedEventArgs e)
		{
			PopUp.HidePopUpDelegate expr_06 = this.HidePopUp;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, "CANCEL");
		}

		public void SetWindowPosition(string position)
		{
			PopUp.SetWindowPositionDelegate expr_06 = this.SetPosition;
			if (expr_06 == null)
			{
				return;
			}
			expr_06(this, position);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/popup.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.TitleLabel = (System.Windows.Controls.Label)target;
				return;
			case 2:
				this.CloseButton = (System.Windows.Controls.Button)target;
				this.CloseButton.Click += new RoutedEventHandler(this.CloseButton_OnClick);
				return;
			case 3:
				this.WebBrowser = (McWebBrowser)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
