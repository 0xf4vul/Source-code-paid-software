using Catel.Data;
using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using GoldenFrogUT.GoldenFrog;
using GoldenFrogVPN;
using GoldenFrogVPN.Classes;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.Properties;

namespace VyprVPN.Views.UpdateInformationWindow
{
	public class UpdateInformationViewModel : VyprViewModel
	{
		public static readonly PropertyData IsBetaProperty = ModelBase.RegisterProperty("IsBeta", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData ReleaseSpecProperty = ModelBase.RegisterProperty("ReleaseSpec", typeof(SerializableReleaseSpec), null, null, true, true, true);

		public static readonly PropertyData TargetVersionProperty = ModelBase.RegisterProperty("TargetVersion", typeof(Version), null, null, true, true, true);

		public static readonly PropertyData ReleaseNotesUrlProperty = ModelBase.RegisterProperty("ReleaseNotesUrl", typeof(Uri), null, null, true, true, true);

		public static readonly PropertyData DownloadProgressProperty = ModelBase.RegisterProperty("DownloadProgress", typeof(double), null, null, true, true, true);

		public static readonly PropertyData DownloadStartedProperty = ModelBase.RegisterProperty("DownloadStarted", typeof(bool), null, null, true, true, true);

		public static readonly PropertyData DownloadStateProperty = ModelBase.RegisterProperty("DownloadState", typeof(UpdateDownloadState), null, null, true, true, true);

		public static readonly PropertyData SkipThisVersionCommandProperty = ModelBase.RegisterProperty("SkipThisVersionCommand", typeof(ICommand), null, null, true, true, true);

		public static readonly PropertyData InstallUpdateCommandProperty = ModelBase.RegisterProperty("InstallUpdateCommand", typeof(ICommand), null, null, true, true, true);

		private IServiceEventsSource _serviceSubscriber
		{
			get
			{
				return ServiceLocatorExtensions.ResolveType<IServiceEventsSource>(ObjectExtensions.GetServiceLocator(this), null);
			}
		}

		public override string Title
		{
			get
			{
				return Resources.VyprVpnUpdateWindowTitle;
			}
		}

		public bool IsBeta
		{
			get
			{
				return base.GetValue<bool>(UpdateInformationViewModel.IsBetaProperty);
			}
			set
			{
				base.SetValue(UpdateInformationViewModel.IsBetaProperty, value);
			}
		}

		public SerializableReleaseSpec ReleaseSpec
		{
			get
			{
				return base.GetValue<SerializableReleaseSpec>(UpdateInformationViewModel.ReleaseSpecProperty);
			}
			set
			{
				base.SetValue(UpdateInformationViewModel.ReleaseSpecProperty, value);
			}
		}

		public Version TargetVersion
		{
			get
			{
				return base.GetValue<Version>(UpdateInformationViewModel.TargetVersionProperty);
			}
			set
			{
				base.SetValue(UpdateInformationViewModel.TargetVersionProperty, value);
			}
		}

		public Uri ReleaseNotesUrl
		{
			get
			{
				return base.GetValue<Uri>(UpdateInformationViewModel.ReleaseNotesUrlProperty);
			}
			set
			{
				base.SetValue(UpdateInformationViewModel.ReleaseNotesUrlProperty, value);
				MessageBase<SetUpdateChangeLogMessage, Uri>.SendWith(value, null);
			}
		}

		public double DownloadProgress
		{
			get
			{
				return base.GetValue<double>(UpdateInformationViewModel.DownloadProgressProperty);
			}
			set
			{
				base.SetValue(UpdateInformationViewModel.DownloadProgressProperty, value);
			}
		}

		public bool DownloadStarted
		{
			get
			{
				return base.GetValue<bool>(UpdateInformationViewModel.DownloadStartedProperty);
			}
			set
			{
				base.SetValue(UpdateInformationViewModel.DownloadStartedProperty, value);
			}
		}

		public ICommand SkipThisVersionCommand
		{
			get
			{
				return base.GetValue<ICommand>(UpdateInformationViewModel.SkipThisVersionCommandProperty);
			}
			set
			{
				base.SetValue(UpdateInformationViewModel.SkipThisVersionCommandProperty, value);
			}
		}

		public UpdateDownloadState DownloadState
		{
			get
			{
				return base.GetValue<UpdateDownloadState>(UpdateInformationViewModel.DownloadStateProperty);
			}
			set
			{
				base.SetValue(UpdateInformationViewModel.DownloadStateProperty, value);
			}
		}

		public ICommand InstallUpdateCommand
		{
			get
			{
				return base.GetValue<ICommand>(UpdateInformationViewModel.InstallUpdateCommandProperty);
			}
			set
			{
				base.SetValue(UpdateInformationViewModel.InstallUpdateCommandProperty, value);
			}
		}

		public UpdateInformationViewModel()
		{
		}

		public UpdateInformationViewModel(SerializableReleaseSpec releaseSpec)
		{
			this.ReleaseSpec = releaseSpec;
			this.IsBeta = (releaseSpec.get_ReleaseMode() == 1);
			this.TargetVersion = releaseSpec.get_Version();
			if (releaseSpec.get_ReleaseNotesUrl() != null)
			{
				this.ReleaseNotesUrl = releaseSpec.get_ReleaseNotesUrl();
			}
			else if (this.IsBeta)
			{
				this.ReleaseNotesUrl = new Uri("https://www.goldenfrog.com/downloads/vyprvpn/desktop/windows/beta/WinReleaseNotes.html");
			}
			else
			{
				this.ReleaseNotesUrl = new Uri("https://www.goldenfrog.com/vyprvpn/changelog/windows");
			}
			this.SkipThisVersionCommand = new AsynchronousCommand(new Action(this.ignoreThisVersion), null, null);
			this.InstallUpdateCommand = new AsynchronousCommand(new Action(this.InstallUpdate), null, null);
			this.DownloadState = UpdateDownloadState.Prompt;
		}

		private void InstallUpdate()
		{
			base.VyprVPNController.DownloadUpgrade(this.ReleaseSpec);
			this.DownloadStarted = true;
			this.DownloadState = UpdateDownloadState.Downloading;
			this._serviceSubscriber.UpdateDownloadProgressChangedEvent += new UpdateDownloadProgressChangedEventHandler(this.serviceSubscriber_UpdateDownloadProgressChangedEvent);
			this._serviceSubscriber.UpdateDownloadCompletedEvent += new UpdateDownloadCompletedEventHandler(this.serviceSubscriber_UpdateDownloadCompletedEvent);
		}

		protected override async Task Initialize()
		{
			MessageBase<SetUpdateChangeLogMessage, Uri>.SendWith(this.ReleaseNotesUrl, null);
			await this.<>n__0();
		}

		private void serviceSubscriber_UpdateDownloadProgressChangedEvent(object sender, UpdateDownloadProgressChangedEventArgs e)
		{
			if (e.get_TargetVersion() != this.TargetVersion)
			{
				return;
			}
			if (e.get_PercentComplete() > this.DownloadProgress)
			{
				this.DownloadProgress = e.get_PercentComplete();
			}
		}

		private void serviceSubscriber_UpdateDownloadCompletedEvent(object sender, UpdateDownloadCompletedEventArgs e)
		{
			if (e.get_TargetVersion() != this.TargetVersion)
			{
				return;
			}
			this.CleanupEventSubscriptions();
			this.DownloadProgress = 1.0;
			if (e.get_Success())
			{
				base.VyprVPNController.InstallUpgrade(new UpgradeAvailableEventArgs(e.get_TargetVersion().ToString(), e.get_LocalPath()));
				return;
			}
			this.DownloadState = UpdateDownloadState.Error;
		}

		private void CleanupEventSubscriptions()
		{
			try
			{
				this._serviceSubscriber.UpdateDownloadProgressChangedEvent -= new UpdateDownloadProgressChangedEventHandler(this.serviceSubscriber_UpdateDownloadProgressChangedEvent);
				this._serviceSubscriber.UpdateDownloadCompletedEvent -= new UpdateDownloadCompletedEventHandler(this.serviceSubscriber_UpdateDownloadCompletedEvent);
			}
			catch
			{
			}
		}

		private void ignoreThisVersion()
		{
			base.VyprVPNController.IgnoreVersionsUpTo(this.TargetVersion);
			MessageBase<CloseUpdatesWindowMessage, bool>.SendWith(true, null);
		}

		protected override void OnClosing()
		{
			this.CleanupEventSubscriptions();
			base.OnClosing();
		}
	}
}

using Catel.IoC;
using Catel.Messaging;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using VyprVPN.Messages;

namespace VyprVPN.Views.UpdateInformationWindow
{
	public class UpdateInformationWindow : Window, IComponentConnector
	{
		private UpdateInformationViewModel vm;

		internal UpdateInformationWindow Window;

		internal WebBrowser ReleaseNotesWebBrowser;

		private bool _contentLoaded;

		public UpdateInformationWindow()
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			base.Loaded += delegate(object s, RoutedEventArgs e)
			{
				this.setupBrowser();
			};
			base.DataContextChanged += delegate(object s, DependencyPropertyChangedEventArgs e)
			{
				this.setupBrowser();
			};
			MessageBase<CloseUpdatesWindowMessage, bool>.Register(this, delegate(CloseUpdatesWindowMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(base.Close));
			}, null);
			MessageBase<SetUpdateChangeLogMessage, Uri>.Register(this, delegate(SetUpdateChangeLogMessage e)
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
				{
					this.ReleaseNotesWebBrowser.Navigate(e.get_Data());
				});
			}, null);
		}

		private void setupBrowser()
		{
			object dataContext = base.DataContext;
			if (this.vm == null && dataContext != null && dataContext is UpdateInformationViewModel)
			{
				this.vm = (dataContext as UpdateInformationViewModel);
				if (this.vm.ReleaseNotesUrl != null)
				{
					this.ReleaseNotesWebBrowser.Navigate(this.vm.ReleaseNotesUrl);
				}
			}
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/updateinformationwindow/updateinformationwindow.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.Window = (UpdateInformationWindow)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			this.ReleaseNotesWebBrowser = (WebBrowser)target;
		}
	}
}
