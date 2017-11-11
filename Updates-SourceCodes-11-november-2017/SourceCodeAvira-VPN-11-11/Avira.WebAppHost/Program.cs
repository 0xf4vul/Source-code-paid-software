using Avira.Core;
using Avira.Messaging;
using Avira.VPN.Core;
using Avira.WebAppHost.Properties;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.ServiceProcess;
using System.Threading;
using System.Windows.Forms;

namespace Avira.WebAppHost
{
	public class Program
	{
		private static Mutex guardMutex;

		static Program()
		{
			AppDomain.CurrentDomain.AssemblyResolve += new ResolveEventHandler(Program.CurrentDomain_AssemblyResolve);
		}

		[STAThread]
		public static int Main(string[] args)
		{
			Log.set_TraceLevel(TraceLevel.Verbose);
			Application.ThreadException += new ThreadExceptionEventHandler(Program.ApplicationOnThreadException);
			if (Program.StartForServiceRestart(args))
			{
				return Program.RestartService();
			}
			if (Program.MigrateSettings(args))
			{
				Program.ExecuteSettingsMigration();
				return 0;
			}
			if (Program.UpdateLicense(args))
			{
				Program.SendUpdateLicenseMessageToService();
				return 0;
			}
			Process[] array = Program.FindRunningInstances();
			GlobalWindow globalWindow = new GlobalWindow();
			Process process = globalWindow.FindInstance(array);
			if (process != null)
			{
				if (Program.StartMinimized(args))
				{
					return 0;
				}
				Log.Debug("Activate user instance");
				globalWindow.Activate(process);
				return 0;
			}
			else
			{
				if (Program.IsAnotherInstanceRunningForCurrentUser())
				{
					Log.Debug("Another instance running for user is detected. Exit.");
					return 0;
				}
				Application.EnableVisualStyles();
				Application.SetCompatibleTextRenderingDefault(false);
				Application.Run(new VpnGuiForm(Program.StartMinimized(args)));
				return 0;
			}
		}

		private static Assembly CurrentDomain_AssemblyResolve(object sender, ResolveEventArgs args)
		{
			if (args.Name.StartsWith("Avira.WebAppHost.resources"))
			{
				return null;
			}
			if (args.Name.StartsWith("Avira."))
			{
				int num = args.Name.IndexOf(',');
				string path = args.Name.Substring("Avira.".Length, num - "Avira.".Length) + ".dll";
				return Assembly.LoadFile(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, path));
			}
			return null;
		}

		private static void ExecuteSettingsMigration()
		{
			try
			{
				ProductSettings.UpgradeSettings();
				ProductSettings.set_WindowLocation(Settings.Default.WindowLocation);
				ProductSettings.set_UiSettings(Settings.Default.UiSettings);
			}
			catch (Exception arg)
			{
				Log.Error(string.Format("Failed to migrate Avira.WebAppHost settings. {0}", arg));
			}
			ProductSettings.DeleteUserSettingsFolder();
		}

		private static bool IsAnotherInstanceRunningForCurrentUser()
		{
			bool flag = false;
			Program.guardMutex = new Mutex(true, ProductSettings.get_WebAppHostMutex(), out flag);
			return !flag;
		}

		private static bool MigrateSettings(string[] args)
		{
			return args.Contains("/migrateSettings");
		}

		private static bool StartMinimized(IEnumerable<string> args)
		{
			return args.Contains("/hide");
		}

		private static bool StartForServiceRestart(IEnumerable<string> args)
		{
			return args.Contains("/service");
		}

		private static bool UpdateLicense(IEnumerable<string> args)
		{
			return args.Contains("/updateLicense");
		}

		public static bool WaitUntil(Func<bool> condition, int timeout = 4000)
		{
			int tickCount = Environment.TickCount;
			while (Environment.TickCount - tickCount < timeout)
			{
				if (condition())
				{
					return true;
				}
				Thread.Sleep(5);
			}
			return false;
		}

		private static void SendUpdateLicenseMessageToService()
		{
			try
			{
				Log.Information("VpnGui: sending update license to service.");
				PipeChannelFactory pipeChannelFactory = new PipeChannelFactory();
				IService arg_49_0 = new ServiceInterfaceFactory(new ServiceLocator(), pipeChannelFactory).CreateServiceInterface("VPN");
				bool responceReceived = false;
				arg_49_0.Request(Message.CreateRequest("license/update"), delegate(Message m)
				{
					responceReceived = true;
				}, null);
				Program.WaitUntil(() => responceReceived, 4000);
				pipeChannelFactory.Dispose();
			}
			catch (Exception arg)
			{
				Log.Warning(string.Format("Error on creating communication chanel with service:{0}", arg));
			}
		}

		private static void ApplicationOnThreadException(object sender, ThreadExceptionEventArgs threadExceptionEventArgs)
		{
			Log.Error("Unhandled exception:", threadExceptionEventArgs.Exception);
		}

		private static Process[] FindRunningInstances()
		{
			return Process.GetProcessesByName(Path.GetFileNameWithoutExtension(typeof(Program).Assembly.Location));
		}

		private static int RestartService()
		{
			int result = 0;
			ServiceController serviceController = new ServiceController
			{
				ServiceName = ProductSettings.get_ServiceName()
			};
			if (serviceController.Status != ServiceControllerStatus.Stopped)
			{
				return result;
			}
			Log.Debug(string.Format("Starting {0} service ...", ProductSettings.get_ServiceName()));
			try
			{
				TimeSpan timeout = new TimeSpan(0, 0, 5);
				serviceController.Start();
				serviceController.WaitForStatus(ServiceControllerStatus.Running, timeout);
				Log.Debug(string.Format("{0} service is started", ProductSettings.get_ServiceName()));
			}
			catch
			{
				Log.Error(string.Format("Can't start {0}", ProductSettings.get_ServiceName()));
				result = -1;
			}
			return result;
		}
	}
}
