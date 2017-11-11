using CyberGhost.Components;
using CyberGhost.Helpers;
using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost
{
	public class Support : ModernWindow, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly Support.<>c <>9 = new Support.<>c();

			public static SendOrPostCallback <>9__27_5;

			public static SendOrPostCallback <>9__27_7;

			internal void <SendFeedback>b__27_5(object o)
			{
				ModernDialogExtension.ShowDialogOk(Status.Support_SendFeedback_Ticket_was_send, Status.Support_SendFeedback_Thank_you_for_your_request__One_of_our_employees_will_contact_you_);
			}

			internal void <SendFeedback>b__27_7(object o)
			{
				ModernDialogExtension.ShowDialogOk(Status.Support_SendFeedback_Ticket_was_not_send, Status.Support_SendFeedback_Please_check_your_internet_connection_or_try_again_later_);
			}
		}

		private const long FieldIdOperatingSystem = 30617265L;

		private const long FieldIdFirewall = 30726749L;

		private const long FieldIdAntiSpyWare = 30726769L;

		private const long FieldIdAntiVirus = 30846385L;

		private const long FieldIdProductVersion = 30726789L;

		private const long FieldIdProductName = 30846405L;

		private const long FieldIdUsername = 30726829L;

		private const long FieldIdUserId = 30846585L;

		private const long FieldIdIpconfig = 30728009L;

		private const long FieldIdRoutingTable = 30847745L;

		private const long FieldIdCpu = 39721349L;

		private readonly SynchronizationContext _context;

		private DebugWindow _debugWindow;

		public string ScreenShotPath = "";

		private bool _addScreenshot = true;

		internal System.Windows.Controls.Image Screenshot;

		internal System.Windows.Controls.Image DeleteScreenshot;

		internal TextBox UserName;

		internal Label NameLabel;

		internal TextBox EMail;

		internal Label EMailLabel;

		internal TextBox Subject;

		internal Label SubjectLabel;

		internal TextBox Message;

		internal Label MessageLabel;

		internal Button SendFeedbackButton;

		internal ModernProgressRing LoadingRing;

		private bool _contentLoaded;

		public Support()
		{
			this.InitializeComponent();
			this._context = SynchronizationContext.Current;
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.DeleteScreenshot.Source = new BitmapImage(new Uri(Theming.GetThemedImage("Icons\\Functions\\delete.PNG")));
		}

		private void Name_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.NameLabel.Visibility = Visibility.Hidden;
		}

		private void Name_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.UserName.Text.Length == 0)
			{
				this.NameLabel.Visibility = Visibility.Visible;
			}
		}

		private void Email_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.EMailLabel.Visibility = Visibility.Hidden;
		}

		private void Email_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.EMail.Text.Length == 0)
			{
				this.EMailLabel.Visibility = Visibility.Visible;
			}
		}

		private void Subject_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.SubjectLabel.Visibility = Visibility.Hidden;
		}

		private void Subject_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.Subject.Text.Length == 0)
			{
				this.SubjectLabel.Visibility = Visibility.Visible;
			}
		}

		private void Message_OnGotFocus(object sender, RoutedEventArgs e)
		{
			this.MessageLabel.Visibility = Visibility.Hidden;
		}

		private void Message_OnLostFocus(object sender, RoutedEventArgs e)
		{
			if (this.Message.Text.Length == 0)
			{
				this.MessageLabel.Visibility = Visibility.Visible;
			}
		}

		private void SaveDebugLog(string filename)
		{
			this._debugWindow.SaveSilent(filename);
		}

		private string CreateRandomString()
		{
			string arg_18_0 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
			Random random = new Random();
			return new string((from s in Enumerable.Repeat<string>(arg_18_0, 12)
			select s[random.Next(s.Length)]).ToArray<char>());
		}

		[AsyncStateMachine(typeof(Support.<SendFeedback>d__27))]
		private void SendFeedback(object sender, RoutedEventArgs e)
		{
			Support.<SendFeedback>d__27 <SendFeedback>d__;
			<SendFeedback>d__.<>4__this = this;
			<SendFeedback>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<SendFeedback>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <SendFeedback>d__.<>t__builder;
			<>t__builder.Start<Support.<SendFeedback>d__27>(ref <SendFeedback>d__);
		}

		private byte[] ImageToByteArray(System.Drawing.Image imageIn)
		{
			MemoryStream memoryStream = new MemoryStream();
			imageIn.Save(memoryStream, ImageFormat.Png);
			return memoryStream.ToArray();
		}

		private void Support_OnLoaded(object sender, RoutedEventArgs e)
		{
			if (File.Exists(this.ScreenShotPath))
			{
				this.Screenshot.Source = new BitmapImage(new Uri(this.ScreenShotPath));
			}
		}

		private void DeleteScreenshot_OnClick(object sender, RoutedEventArgs e)
		{
			string themedImage = Theming.GetThemedImage("Icons\\Flags\\24\\blank.png");
			if (File.Exists(themedImage))
			{
				this.Screenshot.Source = new BitmapImage(new Uri(themedImage));
			}
			this.DeleteScreenshot.Visibility = Visibility.Hidden;
			this._addScreenshot = false;
		}

		private void Screenshot_OnLoaded(object sender, RoutedEventArgs e)
		{
			if (File.Exists(this.ScreenShotPath))
			{
				this.Screenshot.Source = new BitmapImage(new Uri(this.ScreenShotPath));
			}
			this._debugWindow = new DebugWindow();
			this.SendFeedbackButton.Visibility = Visibility.Visible;
			this.LoadingRing.Visibility = Visibility.Hidden;
		}

		private void Name_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.CheckIfButtonCanBeEnabled();
		}

		private void EMail_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.CheckIfButtonCanBeEnabled();
		}

		private void Subject_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.CheckIfButtonCanBeEnabled();
		}

		private void Message_OnTextChanged(object sender, TextChangedEventArgs e)
		{
			this.CheckIfButtonCanBeEnabled();
		}

		private void CheckIfButtonCanBeEnabled()
		{
			this.SendFeedbackButton.IsEnabled = (this.EMail.Text != "" && this.EMail.Text.Contains("@") && this.Subject.Text != "" && this.Message.Text != "");
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/support.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((Support)target).Loaded += new RoutedEventHandler(this.Support_OnLoaded);
				return;
			case 2:
				this.Screenshot = (System.Windows.Controls.Image)target;
				this.Screenshot.Loaded += new RoutedEventHandler(this.Screenshot_OnLoaded);
				return;
			case 3:
				this.DeleteScreenshot = (System.Windows.Controls.Image)target;
				this.DeleteScreenshot.MouseLeftButtonUp += new MouseButtonEventHandler(this.DeleteScreenshot_OnClick);
				return;
			case 4:
				this.UserName = (TextBox)target;
				this.UserName.GotFocus += new RoutedEventHandler(this.Name_OnGotFocus);
				this.UserName.TextChanged += new TextChangedEventHandler(this.Name_OnTextChanged);
				this.UserName.LostFocus += new RoutedEventHandler(this.Name_OnLostFocus);
				return;
			case 5:
				this.NameLabel = (Label)target;
				return;
			case 6:
				this.EMail = (TextBox)target;
				this.EMail.GotFocus += new RoutedEventHandler(this.Email_OnGotFocus);
				this.EMail.TextChanged += new TextChangedEventHandler(this.EMail_OnTextChanged);
				this.EMail.LostFocus += new RoutedEventHandler(this.Email_OnLostFocus);
				return;
			case 7:
				this.EMailLabel = (Label)target;
				return;
			case 8:
				this.Subject = (TextBox)target;
				this.Subject.GotFocus += new RoutedEventHandler(this.Subject_OnGotFocus);
				this.Subject.TextChanged += new TextChangedEventHandler(this.Subject_OnTextChanged);
				this.Subject.LostFocus += new RoutedEventHandler(this.Subject_OnLostFocus);
				return;
			case 9:
				this.SubjectLabel = (Label)target;
				return;
			case 10:
				this.Message = (TextBox)target;
				this.Message.GotFocus += new RoutedEventHandler(this.Message_OnGotFocus);
				this.Message.LostFocus += new RoutedEventHandler(this.Message_OnLostFocus);
				this.Message.TextChanged += new TextChangedEventHandler(this.Message_OnTextChanged);
				return;
			case 11:
				this.MessageLabel = (Label)target;
				return;
			case 12:
				this.SendFeedbackButton = (Button)target;
				this.SendFeedbackButton.Click += new RoutedEventHandler(this.SendFeedback);
				return;
			case 13:
				this.LoadingRing = (ModernProgressRing)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
