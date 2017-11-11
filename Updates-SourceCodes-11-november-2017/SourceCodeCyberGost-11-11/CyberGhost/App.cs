using BugSplat;
using Microsoft.Win32;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Markup;
using System.Windows.Threading;

namespace CyberGhost
{
	public class App : System.Windows.Application
	{
		private bool _contentLoaded;

		internal void SetCurrentLanguage(string cultureName)
		{
			CultureInfo.DefaultThreadCurrentCulture = new CultureInfo(cultureName);
			CultureInfo.DefaultThreadCurrentUICulture = new CultureInfo(cultureName);
			XmlLanguage language = XmlLanguage.GetLanguage(CultureInfo.CurrentCulture.IetfLanguageTag);
			FrameworkElement.LanguageProperty.OverrideMetadata(typeof(FrameworkElement), new FrameworkPropertyMetadata(language));
			FrameworkContentElement.LanguageProperty.OverrideMetadata(typeof(TextElement), new FrameworkPropertyMetadata(language));
		}

		private void App_DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
		{
			e.Handled = e.Exception.GetType().IsSubclassOf(typeof(ArgumentOutOfRangeException));
		}

		private void Application_Startup(object sender, StartupEventArgs e)
		{
			try
			{
				string arg = string.Format("{0}_{1}_{2}", Assembly.GetExecutingAssembly().GetName().Version.Major, Assembly.GetExecutingAssembly().GetName().Version.Minor, Assembly.GetExecutingAssembly().GetName().Version.Build);
				CrashReporter.Init(string.Format("cyberghost_{0}", arg), "CyberGhost", Assembly.GetExecutingAssembly().GetName().Version.ToString());
				CrashReporter.set_ExitOnError(false);
				CrashReporter.add_exceptionHandled(new CrashReporter.Callback(this.CrashReporter_exceptionHandled));
			}
			catch (Exception arg_98_0)
			{
				HelperFunctions.DebugLine(arg_98_0.Message);
			}
			AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(CrashReporter.AppDomainUnhandledExceptionHandler);
			System.Windows.Forms.Application.ThreadException += new ThreadExceptionEventHandler(CrashReporter.ApplicationThreadException);
			TaskScheduler.UnobservedTaskException += new EventHandler<UnobservedTaskExceptionEventArgs>(this.TaskScheduler_UnobservedTaskException);
			RegistryKey currentUser = Registry.CurrentUser;
			RegistryKey registryKey = currentUser.OpenSubKey("SOFTWARE\\CyberGhost", false);
			string currentLanguage = "en";
			if (registryKey != null)
			{
				object expr_108 = registryKey.GetValue("Language", "en");
				currentLanguage = ((expr_108 != null) ? expr_108.ToString() : null);
				registryKey.Close();
				currentUser.Close();
			}
			this.SetCurrentLanguage(currentLanguage);
		}

		private void TaskScheduler_UnobservedTaskException(object sender, UnobservedTaskExceptionEventArgs e)
		{
			string text = string.Concat(new object[]
			{
				"UnobservedTaskException: ",
				e,
				"\\r\\n",
				e.Exception.Message,
				"\\r\\n",
				e.Exception.StackTrace
			});
			if (e.Exception.InnerException != null)
			{
				text = string.Concat(new object[]
				{
					text,
					"\\r\\n---\\r\\n",
					e.Exception.InnerException,
					"\\r\\n",
					e.Exception.InnerException.Message,
					"\\r\\n",
					e.Exception.InnerException.StackTrace,
					"\\r\\n----\\r\\n"
				});
			}
			string tempFile = HelperFunctions.GetTempFile(".unobserved.txt", false);
			File.WriteAllText(tempFile, text);
			CrashReporter.get_AdditionalFiles().Add(tempFile);
			CrashReporter.TaskSchedulerUnobservedTaskExceptionHandler(sender, e);
		}

		private void CrashReporter_exceptionHandled(Exception e)
		{
			string text = string.Concat(new object[]
			{
				e,
				"\\r\\n",
				e.Message,
				"\\r\\n",
				e.StackTrace
			});
			if (e.InnerException != null)
			{
				text = string.Concat(new object[]
				{
					text,
					"\\r\\n---\\r\\n",
					e.InnerException,
					"\\r\\n",
					e.InnerException.Message,
					"\\r\\n",
					e.InnerException.StackTrace,
					"\\r\\n----\\r\\n"
				});
			}
			string tempFile = HelperFunctions.GetTempFile(".raised.txt", false);
			File.WriteAllText(tempFile, text);
			CrashReporter.get_AdditionalFiles().Add(tempFile);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			base.Startup += new StartupEventHandler(this.Application_Startup);
			base.DispatcherUnhandledException += new DispatcherUnhandledExceptionEventHandler(this.App_DispatcherUnhandledException);
			base.StartupUri = new Uri("Splash.xaml", UriKind.Relative);
			Uri resourceLocator = new Uri("/CyberGhost;component/app.xaml", UriKind.Relative);
			System.Windows.Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode, STAThread]
		public static void Main()
		{
			App expr_05 = new App();
			expr_05.InitializeComponent();
			expr_05.Run();
		}
	}
}
