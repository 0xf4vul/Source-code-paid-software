using Caliburn.Micro;
using GalaSoft.MvvmLight.Command;
using NordVpn.Application;
using NordVpn.Application.Abstract;
using NordVpn.KillSwitch.Services;
using NordVpn.Settings.Storage;
using NordVpn.Shared;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace NordVpn.KillSwitch.ViewModels
{
	public class AppSelectViewModel : AppScreen
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly AppSelectViewModel.<>c <>9 = new AppSelectViewModel.<>c();

			public static Func<Process, string> <>9__22_0;

			public static Func<ProcessItemViewModel, bool> <>9__22_2;

			public static Func<ProcessItemViewModel, string> <>9__22_3;

			public static Func<string, <>f__AnonymousType0<string, string>> <>9__25_0;

			public static Func<ProcessItemViewModel, bool> <>9__26_0;

			internal string <GetProcesses>b__22_0(Process p)
			{
				return p.ProcessName;
			}

			internal bool <GetProcesses>b__22_2(ProcessItemViewModel p)
			{
				return p != null;
			}

			internal string <GetProcesses>b__22_3(ProcessItemViewModel p)
			{
				return p.DisplayName;
			}

			internal <>f__AnonymousType0<string, string> <OpenFileSelect>b__25_0(string p)
			{
				return new
				{
					Name = Path.GetFileNameWithoutExtension(p),
					Path = p
				};
			}

			internal bool <AddSelectedCommand>b__26_0(ProcessItemViewModel p)
			{
				return p.Selected;
			}
		}

		private readonly IEventAggregator _eventAggregator;

		private readonly AppSettings _appSettings;

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

		public ICommand SelectAppAction
		{
			[CompilerGenerated]
			get
			{
				return this.<SelectAppAction>k__BackingField;
			}
		}

		public ICommand FileDialogAction
		{
			[CompilerGenerated]
			get
			{
				return this.<FileDialogAction>k__BackingField;
			}
		}

		public ICommand AddSelectedAction
		{
			[CompilerGenerated]
			get
			{
				return this.<AddSelectedAction>k__BackingField;
			}
		}

		public ICommand CloseAction
		{
			[CompilerGenerated]
			get
			{
				return this.<CloseAction>k__BackingField;
			}
		}

		public AppSelectViewModel(AppSettings appSettings, ExecutableIconProvider iconProvider, IFileDialogService fileDialogService)
		{
			this.<Processes>k__BackingField = new ObservableCollection<ProcessItemViewModel>();
			base..ctor();
			this._appSettings = appSettings;
			this._iconProvider = iconProvider;
			this._fileDialogService = fileDialogService;
			this.<SelectAppAction>k__BackingField = new RelayCommand<ProcessItemViewModel>(new Action<ProcessItemViewModel>(this.SelectApp));
			this.<FileDialogAction>k__BackingField = new RelayCommand(new Action(this.OpenFileSelect));
			this.<CloseAction>k__BackingField = new RelayCommand(new Action(this.CloseCommand));
			this.<AddSelectedAction>k__BackingField = new RelayCommand(new Action(this.AddSelectedCommand));
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
			where !this._appSettings.KillSwitchApps.Items.Any((KillSwitchApp a) => a.Path.PathEquals(p.Path))
			select p).ToList<ProcessItemViewModel>();
			this.Processes.AddRange(elements);
		}

		private List<ProcessItemViewModel> GetProcesses()
		{
			IEnumerable<Process> arg_29_0 = Process.GetProcesses();
			Func<Process, string> arg_29_1;
			if ((arg_29_1 = AppSelectViewModel.<>c.<>9__22_0) == null)
			{
				arg_29_1 = (AppSelectViewModel.<>c.<>9__22_0 = new Func<Process, string>(AppSelectViewModel.<>c.<>9.<GetProcesses>b__22_0));
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
			if ((arg_68_1 = AppSelectViewModel.<>c.<>9__22_2) == null)
			{
				arg_68_1 = (AppSelectViewModel.<>c.<>9__22_2 = new Func<ProcessItemViewModel, bool>(AppSelectViewModel.<>c.<>9.<GetProcesses>b__22_2));
			}
			IEnumerable<ProcessItemViewModel> arg_91_0 = arg_68_0.Where(arg_68_1);
			Func<ProcessItemViewModel, string> arg_91_1;
			if ((arg_91_1 = AppSelectViewModel.<>c.<>9__22_3) == null)
			{
				arg_91_1 = (AppSelectViewModel.<>c.<>9__22_3 = new Func<ProcessItemViewModel, string>(AppSelectViewModel.<>c.<>9.<GetProcesses>b__22_3));
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

		private void SelectApp(ProcessItemViewModel item)
		{
			item.ToggleSelection();
		}

		private void OpenFileSelect()
		{
			List<string> list = this._fileDialogService.GetFiles(".exe", "Executables (*.exe)|*.exe").ToList<string>();
			if (!list.Any<string>())
			{
				return;
			}
			IEnumerable<string> arg_44_0 = list;
			var arg_44_1;
			if ((arg_44_1 = AppSelectViewModel.<>c.<>9__25_0) == null)
			{
				arg_44_1 = (AppSelectViewModel.<>c.<>9__25_0 = new Func<string, <>f__AnonymousType0<string, string>>(AppSelectViewModel.<>c.<>9.<OpenFileSelect>b__25_0));
			}
			IEnumerable<KillSwitchApp> items = (from o in arg_44_0.Select(arg_44_1)
			select new ProcessItemViewModel(o.Name, o.Name, o.Path, this._iconProvider.GetIcon(o.Path))).Select(new Func<ProcessItemViewModel, KillSwitchApp>(AppSelectViewModel.Map)).Concat(this._appSettings.KillSwitchApps.Items);
			this._appSettings.KillSwitchApps = new KillSwitchSettings(items);
			this.CloseCommand();
		}

		private void AddSelectedCommand()
		{
			IEnumerable<ProcessItemViewModel> arg_25_0 = this.Processes;
			Func<ProcessItemViewModel, bool> arg_25_1;
			if ((arg_25_1 = AppSelectViewModel.<>c.<>9__26_0) == null)
			{
				arg_25_1 = (AppSelectViewModel.<>c.<>9__26_0 = new Func<ProcessItemViewModel, bool>(AppSelectViewModel.<>c.<>9.<AddSelectedCommand>b__26_0));
			}
			IEnumerable<KillSwitchApp> items = arg_25_0.Where(arg_25_1).Select(new Func<ProcessItemViewModel, KillSwitchApp>(AppSelectViewModel.Map)).Concat(this._appSettings.KillSwitchApps.Items);
			this._appSettings.KillSwitchApps = new KillSwitchSettings(items);
			this.CloseCommand();
		}

		private void CloseCommand()
		{
			this.TryClose(null);
		}

		private static KillSwitchApp Map(ProcessItemViewModel viewModel)
		{
			return new KillSwitchApp
			{
				Name = viewModel.Name,
				DisplayName = viewModel.DisplayName,
				Path = viewModel.Path
			};
		}
	}
}
