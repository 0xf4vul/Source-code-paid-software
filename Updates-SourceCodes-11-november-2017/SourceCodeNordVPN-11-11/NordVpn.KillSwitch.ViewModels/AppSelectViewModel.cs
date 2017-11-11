using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Models.Settings;
using NordVpn.KillSwitch.Services;
using NordVpn.Shared;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;

namespace NordVpn.KillSwitch.ViewModels
{
	[Obsolete("App selection will be removed")]
	public class AppSelectViewModel : AppScreen
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly AppSelectViewModel.<>c <>9 = new AppSelectViewModel.<>c();

			public static Func<Process, string> <>9__9_0;

			public static Func<ProcessItemViewModel, bool> <>9__9_2;

			public static Func<ProcessItemViewModel, string> <>9__9_3;

			public static Func<string, <>f__AnonymousType0<string, string>> <>9__12_0;

			public static Func<ProcessItemViewModel, bool> <>9__13_0;

			internal string <GetProcesses>b__9_0(Process p)
			{
				return p.ProcessName;
			}

			internal bool <GetProcesses>b__9_2(ProcessItemViewModel p)
			{
				return p != null;
			}

			internal string <GetProcesses>b__9_3(ProcessItemViewModel p)
			{
				return p.DisplayName;
			}

			internal <>f__AnonymousType0<string, string> <OpenFileSelect>b__12_0(string p)
			{
				return new
				{
					Name = Path.GetFileNameWithoutExtension(p),
					Path = p
				};
			}

			internal bool <AddSelected>b__13_0(ProcessItemViewModel p)
			{
				return p.Selected;
			}
		}

		private readonly ISettings _settings;

		private readonly ExecutableIconProvider _iconProvider;

		private readonly IFileDialogService _fileDialogService;

		public ObservableCollection<ProcessItemViewModel> Processes
		{
			[CompilerGenerated]
			get
			{
				return this.<Processes>k__BackingField;
			}
		}

		public AppSelectViewModel(ISettings settings, ExecutableIconProvider iconProvider, IFileDialogService fileDialogService)
		{
			this.<Processes>k__BackingField = new ObservableCollection<ProcessItemViewModel>();
			base..ctor();
			this._settings = settings;
			this._iconProvider = iconProvider;
			this._fileDialogService = fileDialogService;
		}

		protected override void OnActivate()
		{
			base.OnActivate();
			this.LoadProcesses();
		}

		private void LoadProcesses()
		{
			this.Processes.Clear();
			List<ProcessItemViewModel> elements = (from p in this.GetProcesses()
			where !this._settings.Of<UserSettings>().get_KillSwitchApps().Any((KillSwitchApp a) => a.get_Path().PathEquals(p.Path))
			select p).ToList<ProcessItemViewModel>();
			this.Processes.AddRange(elements);
		}

		private List<ProcessItemViewModel> GetProcesses()
		{
			IEnumerable<Process> arg_29_0 = Process.GetProcesses();
			Func<Process, string> arg_29_1;
			if ((arg_29_1 = AppSelectViewModel.<>c.<>9__9_0) == null)
			{
				arg_29_1 = (AppSelectViewModel.<>c.<>9__9_0 = new Func<Process, string>(AppSelectViewModel.<>c.<>9.<GetProcesses>b__9_0));
			}
			IEnumerable<ProcessItemViewModel> arg_68_0 = arg_29_0.DistinctBy(arg_29_1, StringComparer.OrdinalIgnoreCase).AsParallel<Process>().Select(delegate(Process p)
			{
				string fileName;
				try
				{
					fileName = p.MainModule.FileName;
					if (string.IsNullOrEmpty(fileName))
					{
						ProcessItemViewModel result = null;
						return result;
					}
				}
				catch (Exception)
				{
					ProcessItemViewModel result = null;
					return result;
				}
				string processDisplayName = this.GetProcessDisplayName(p.ProcessName, fileName);
				return new ProcessItemViewModel(p.ProcessName, processDisplayName, fileName, this._iconProvider.GetIcon(fileName));
			}).AsSequential<ProcessItemViewModel>();
			Func<ProcessItemViewModel, bool> arg_68_1;
			if ((arg_68_1 = AppSelectViewModel.<>c.<>9__9_2) == null)
			{
				arg_68_1 = (AppSelectViewModel.<>c.<>9__9_2 = new Func<ProcessItemViewModel, bool>(AppSelectViewModel.<>c.<>9.<GetProcesses>b__9_2));
			}
			IEnumerable<ProcessItemViewModel> arg_91_0 = arg_68_0.Where(arg_68_1);
			Func<ProcessItemViewModel, string> arg_91_1;
			if ((arg_91_1 = AppSelectViewModel.<>c.<>9__9_3) == null)
			{
				arg_91_1 = (AppSelectViewModel.<>c.<>9__9_3 = new Func<ProcessItemViewModel, string>(AppSelectViewModel.<>c.<>9.<GetProcesses>b__9_3));
			}
			return arg_91_0.OrderBy(arg_91_1, StringComparer.CurrentCulture).ToList<ProcessItemViewModel>();
		}

		private string GetProcessDisplayName(string processName, string fileName)
		{
			if (!File.Exists(fileName))
			{
				return processName;
			}
			string text = FileVersionInfo.GetVersionInfo(fileName).FileDescription;
			if (string.IsNullOrWhiteSpace(text))
			{
				text = processName;
			}
			return text;
		}

		public void SelectApp(ProcessItemViewModel item)
		{
			item.ToggleSelection();
		}

		public void OpenFileSelect()
		{
			List<string> list = this._fileDialogService.GetFiles(".exe", "Executables (*.exe)|*.exe").ToList<string>();
			if (!list.Any<string>())
			{
				return;
			}
			UserSettings userSettings = this._settings.Of<UserSettings>();
			IEnumerable<string> arg_50_0 = list;
			var arg_50_1;
			if ((arg_50_1 = AppSelectViewModel.<>c.<>9__12_0) == null)
			{
				arg_50_1 = (AppSelectViewModel.<>c.<>9__12_0 = new Func<string, <>f__AnonymousType0<string, string>>(AppSelectViewModel.<>c.<>9.<OpenFileSelect>b__12_0));
			}
			IEnumerable<KillSwitchApp> source = (from o in arg_50_0.Select(arg_50_1)
			select new ProcessItemViewModel(o.Name, o.Name, o.Path, this._iconProvider.GetIcon(o.Path))).Select(new Func<ProcessItemViewModel, KillSwitchApp>(AppSelectViewModel.Map)).Concat(userSettings.get_KillSwitchApps());
			userSettings.set_KillSwitchApps(source.ToList<KillSwitchApp>());
			this.TryClose(null);
		}

		public void AddSelected()
		{
			UserSettings userSettings = this._settings.Of<UserSettings>();
			IEnumerable<ProcessItemViewModel> arg_31_0 = this.Processes;
			Func<ProcessItemViewModel, bool> arg_31_1;
			if ((arg_31_1 = AppSelectViewModel.<>c.<>9__13_0) == null)
			{
				arg_31_1 = (AppSelectViewModel.<>c.<>9__13_0 = new Func<ProcessItemViewModel, bool>(AppSelectViewModel.<>c.<>9.<AddSelected>b__13_0));
			}
			IEnumerable<KillSwitchApp> source = arg_31_0.Where(arg_31_1).Select(new Func<ProcessItemViewModel, KillSwitchApp>(AppSelectViewModel.Map)).Concat(userSettings.get_KillSwitchApps());
			userSettings.set_KillSwitchApps(source.ToList<KillSwitchApp>());
			this.TryClose(null);
		}

		public void Close()
		{
			this.TryClose(null);
		}

		private static KillSwitchApp Map(ProcessItemViewModel viewModel)
		{
			KillSwitchApp expr_05 = new KillSwitchApp();
			expr_05.set_Name(viewModel.Name);
			expr_05.set_DisplayName(viewModel.DisplayName);
			expr_05.set_Path(viewModel.Path);
			return expr_05;
		}
	}
}
