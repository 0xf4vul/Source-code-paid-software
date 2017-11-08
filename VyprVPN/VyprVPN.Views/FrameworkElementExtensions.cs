using System;
using System.Windows;
using System.Windows.Media;

namespace VyprVPN.Views
{
	public static class FrameworkElementExtensions
	{
		public static void AllVisualDescendents<T>(this FrameworkElement element, Action<FrameworkElement> action) where T : FrameworkElement
		{
			for (int i = 0; i < VisualTreeHelper.GetChildrenCount(element); i++)
			{
				FrameworkElement frameworkElement = (FrameworkElement)VisualTreeHelper.GetChild(element, i);
				if (frameworkElement is T)
				{
					action(frameworkElement);
				}
				frameworkElement.AllVisualDescendents(action);
			}
		}

		public static void AllVisualDescendents<T>(this FrameworkElement element, Predicate<FrameworkElement> predicate, Action<FrameworkElement> action) where T : FrameworkElement
		{
			for (int i = 0; i < VisualTreeHelper.GetChildrenCount(element); i++)
			{
				FrameworkElement frameworkElement = (FrameworkElement)VisualTreeHelper.GetChild(element, i);
				if (frameworkElement is T && predicate(frameworkElement))
				{
					action(frameworkElement);
				}
				frameworkElement.AllVisualDescendents(action);
			}
		}
	}
}

using Catel.Windows.Controls;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Markup;
using System.Windows.Navigation;
using VyprVPN.ViewModels;

namespace VyprVPN.Views
{
	public class GeneralPreferencesView : UserControl, IComponentConnector
	{
		internal ScrollViewer GeneralSettingScrollViewer;

		private bool _contentLoaded;

		public GeneralPreferencesView()
		{
			this.InitializeComponent();
		}

		private void Hyperlink_OnViewConnectionLog(object sender, RequestNavigateEventArgs e)
		{
			GeneralPreferencesViewModel generalPreferencesViewModel = base.get_ViewModel() as GeneralPreferencesViewModel;
			if (generalPreferencesViewModel != null)
			{
				generalPreferencesViewModel.OpenConnectionLog();
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/general/generalpreferencesview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.GeneralSettingScrollViewer = (ScrollViewer)target;
				return;
			}
			if (connectionId != 2)
			{
				this._contentLoaded = true;
				return;
			}
			((Hyperlink)target).RequestNavigate += new RequestNavigateEventHandler(this.Hyperlink_OnViewConnectionLog);
		}
	}
}

using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;

namespace VyprVPN.Views
{
	public class GraphKeyToBrushConverter : IValueConverter
	{
		public const string TransmitTag = "UP";

		public const string ReceiveTag = "DOWN";

		public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
		{
			SolidColorBrush result = Brushes.Black;
			string text = value.ToString();
			if (text.EndsWith("DOWN"))
			{
				result = (Application.Current.Resources["TransmitBrush"] as SolidColorBrush);
			}
			else if (text.EndsWith("UP"))
			{
				result = (Application.Current.Resources["ReceiveBrush"] as SolidColorBrush);
			}
			return result;
		}

		public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
		{
			throw new NotImplementedException();
		}
	}
}

using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using Catel.Windows.Controls;
using GoldenFrogUX.Converters;
using GoldenFrogVPN.Enums;
using Log;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Shapes;
using VyprVPN.Classes;
using VyprVPN.Messages;
using VyprVPN.ViewModels;

namespace VyprVPN.Views
{
	public class GraphView : UserControl, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly GraphView.<>c <>9 = new GraphView.<>c();

			public static Func<ThroughputMeasurement, long> <>9__26_0;

			public static Func<ThroughputMeasurement, long> <>9__26_1;

			internal long <RenderScale>b__26_0(ThroughputMeasurement m)
			{
				return m.Snapshot.get_UpstreamBitsPerSecond();
			}

			internal long <RenderScale>b__26_1(ThroughputMeasurement m)
			{
				return m.Snapshot.get_DownstreamBitsPerSecond();
			}
		}

		protected static readonly FileLogger logger = FileLogger.get_Instance();

		private const string gridLineBrushKey = "GraphGridLineBrush";

		private const double gridlinePositionIncrement = 24.0;

		private long maxThroughput;

		private DateTime LastMeasurementShown;

		private static IValueConverter throughputDisplayConverter = new GraphAxisLabelConverter();

		private const long M = 1000000L;

		private double oldActualHight = -1.0;

		internal Rectangle GridRectangle;

		internal Path UpArrowPath;

		internal Path DownArrowPath;

		internal Canvas CanvasGraph;

		internal Image TearOutIcon;

		internal Canvas YAxisLabelPanel;

		private bool _contentLoaded;

		public bool IsWindow
		{
			get;
			set;
		}

		private GraphViewModel ViewModel
		{
			get
			{
				return base.get_ViewModel() as GraphViewModel;
			}
		}

		public GraphView()
		{
			this.InitializeComponent();
			base.DataContextChanged += new DependencyPropertyChangedEventHandler(this.GraphView_DataContextChanged);
			MessageBase<ThroughputMeasuredMessage, ThroughputMeasurement>.Register(this, new Action<ThroughputMeasuredMessage>(this.ThroughputMeasuredMessageHandler), null);
		}

		private void GraphView_DataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
		{
			this.InitializeGraph();
			this.ShowHideKillSwitchSigns();
			VyprViewModel vyprViewModel = base.DataContext as VyprViewModel;
			if (!(vyprViewModel != null))
			{
				GraphView.logger.Log(1, "GraphView was unable to subscribe to KillSwitchActive property changed event.");
				return;
			}
			ViewModelBase viewModelBase = vyprViewModel.VyprVPNController as ViewModelBase;
			if (viewModelBase != null)
			{
				viewModelBase.add_PropertyChanged(delegate(object propertyChangedSender, PropertyChangedEventArgs args)
				{
					if (args != null && args.PropertyName == "KillSwitchActive")
					{
						this.ShowHideKillSwitchSigns();
					}
				});
				return;
			}
			GraphView.logger.Log(1, "GraphView was unable to subscribe to KillSwitchActive property changed event.");
		}

		private void ThroughputMeasuredMessageHandler(object message)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(delegate
			{
				this.Render();
			});
		}

		public void InitializeGraph()
		{
			this.RenderScale(null);
			this.RemoveAllMeasurements();
			this.Render();
		}

		private void RemoveAllMeasurements()
		{
			this.LastMeasurementShown = DateTime.MinValue;
			List<Rectangle> list = new List<Rectangle>();
			foreach (object current in this.CanvasGraph.Children)
			{
				if (current is Rectangle && ((Rectangle)current).Name == "")
				{
					list.Add((Rectangle)current);
				}
			}
			foreach (Rectangle current2 in list)
			{
				this.CanvasGraph.Children.Remove(current2);
			}
		}

		private void ShowHideKillSwitchSigns()
		{
			VyprViewModel vyprViewModel = base.DataContext as VyprViewModel;
			if (vyprViewModel != null && vyprViewModel.VyprVPNController != null)
			{
				if (vyprViewModel.VyprVPNController.KillSwitchActive)
				{
					this.YAxisLabelPanel.Opacity = 0.25;
					this.CanvasGraph.Opacity = 0.25;
					using (IEnumerator enumerator = this.CanvasGraph.Children.GetEnumerator())
					{
						while (enumerator.MoveNext())
						{
							object current = enumerator.Current;
							if (current is UIElement && current is Rectangle)
							{
								((UIElement)current).Visibility = Visibility.Hidden;
							}
						}
						return;
					}
				}
				this.YAxisLabelPanel.Opacity = 1.0;
				this.CanvasGraph.Opacity = 1.0;
				foreach (object current2 in this.CanvasGraph.Children)
				{
					if (current2 is UIElement && current2 is Rectangle)
					{
						((UIElement)current2).Visibility = Visibility.Visible;
					}
				}
			}
		}

		private void Render()
		{
			if (this.ViewModel == null || this.CanvasGraph.ActualHeight == 0.0)
			{
				return;
			}
			List<ThroughputMeasurement> throughputMeasurements = this.ViewModel.ThroughputMeasurements;
			if (throughputMeasurements.Count == 0)
			{
				return;
			}
			this.RenderScale(throughputMeasurements);
			this.RenderColumns(throughputMeasurements);
		}

		private void RenderColumn(int columnIndex, ThroughputMeasurement measurement, string direction)
		{
			double width = 3.0;
			double num = this.LimitValue(this.CanvasGraph.ActualHeight - 24.0, this.CanvasGraph.ActualHeight, 0.0);
			string str = (direction == "up") ? "GraphUpBrush" : "GraphDownBrush";
			double num2 = (double)((direction == "up") ? measurement.Snapshot.get_UpstreamBitsPerSecond() : measurement.Snapshot.get_DownstreamBitsPerSecond()) * num / (double)this.maxThroughput;
			Rectangle rectangle = new Rectangle
			{
				Width = width,
				Height = ((num2 > 0.0) ? num2 : 0.0)
			};
			rectangle.SetValue(Canvas.LeftProperty, this.LimitValue(this.CanvasGraph.ActualWidth - (double)(columnIndex + 1) * rectangle.Width, this.CanvasGraph.ActualWidth, 0.0));
			if (rectangle.Height < 1.0)
			{
				rectangle.Height = num;
				rectangle.SetValue(Canvas.TopProperty, 24.0);
				rectangle.Fill = Brushes.Transparent;
				rectangle.Stroke = Brushes.Transparent;
			}
			else
			{
				rectangle.SetValue(Canvas.TopProperty, this.LimitValue(num - rectangle.Height + 24.0, this.CanvasGraph.ActualHeight, 0.0));
				ConnectionStatus connectionStatus = measurement.ConnectionStatus;
				string name;
				if (connectionStatus == 4)
				{
					name = "Connected" + str;
				}
				else
				{
					name = "Disconnected" + str;
				}
				rectangle.SetResourceReference(Shape.StrokeProperty, name);
				rectangle.SetResourceReference(Shape.FillProperty, name);
			}
			rectangle.Visibility = (this.ViewModel.VyprVPNController.KillSwitchActive ? Visibility.Hidden : Visibility.Visible);
			this.CanvasGraph.Children.Add(rectangle);
		}

		private double LimitValue(double value, double maximum, double minimum = 0.0)
		{
			if (double.IsNaN(value) || double.IsInfinity(value))
			{
				value = 0.0;
			}
			value = Math.Min(value, maximum);
			value = Math.Max(value, minimum);
			return value;
		}

		private void RenderColumns(List<ThroughputMeasurement> measurements)
		{
			List<Rectangle> list = new List<Rectangle>();
			foreach (object current in this.CanvasGraph.Children)
			{
				if (current is Rectangle && ((Rectangle)current).Name == "")
				{
					list.Add((Rectangle)current);
				}
			}
			double num = (double)((int)(this.CanvasGraph.ActualWidth / 6.0) + 1);
			int num2 = 0;
			lock (measurements)
			{
				foreach (ThroughputMeasurement current2 in measurements)
				{
					if ((double)(num2 / 2) >= num)
					{
						break;
					}
					if (current2.Timestamp <= this.LastMeasurementShown)
					{
						break;
					}
					this.RenderMeasurement(num2, current2);
					num2 += 2;
				}
			}
			this.LastMeasurementShown = measurements[0].Timestamp;
			List<Rectangle> list2 = new List<Rectangle>();
			long num3 = (long)(3 * num2);
			foreach (Rectangle current3 in list)
			{
				double num4 = (double)current3.GetValue(Canvas.LeftProperty) - (double)num3;
				if (num4 <= -3.0)
				{
					list2.Add(current3);
				}
				else
				{
					current3.SetValue(Canvas.LeftProperty, num4);
				}
			}
			list2.ForEach(delegate(Rectangle remove)
			{
				this.CanvasGraph.Children.Remove(remove);
			});
		}

		private void RenderMeasurement(int columnIndex, ThroughputMeasurement measurement)
		{
			this.RenderColumn(columnIndex, measurement, "up");
			this.RenderColumn(columnIndex + 1, measurement, "down");
		}

		private string formatThroughput(long bps)
		{
			return (string)GraphView.throughputDisplayConverter.Convert(bps, typeof(string), "bps", null);
		}

		private void RenderScale(List<ThroughputMeasurement> measurements)
		{
			if (this.YAxisLabelPanel.ActualHeight == 0.0)
			{
				return;
			}
			long num;
			if (measurements == null || measurements.Count == 0)
			{
				GraphView.logger.Log(0, "No measurement or measurements is null");
				num = 1000000L;
			}
			else
			{
				int val = (int)(this.CanvasGraph.ActualWidth / 6.0) + 1;
				List<ThroughputMeasurement> expr_6F = measurements.GetRange(0, Math.Min(val, measurements.Count));
				Func<ThroughputMeasurement, long> arg_8F_1;
				if ((arg_8F_1 = GraphView.<>c.<>9__26_0) == null)
				{
					arg_8F_1 = (GraphView.<>c.<>9__26_0 = new Func<ThroughputMeasurement, long>(GraphView.<>c.<>9.<RenderScale>b__26_0));
				}
				long val2 = expr_6F.Max(arg_8F_1);
				Func<ThroughputMeasurement, long> arg_B4_1;
				if ((arg_B4_1 = GraphView.<>c.<>9__26_1) == null)
				{
					arg_B4_1 = (GraphView.<>c.<>9__26_1 = new Func<ThroughputMeasurement, long>(GraphView.<>c.<>9.<RenderScale>b__26_1));
				}
				long val3 = expr_6F.Max(arg_B4_1);
				num = (Math.Max(val2, val3) / 1000000L + 1L) * 1000000L;
			}
			if (this.maxThroughput != num || this.YAxisLabelPanel.ActualHeight != this.oldActualHight)
			{
				int num2 = (int)this.YAxisLabelPanel.ActualHeight / 50 + 1;
				if (num2 == 0)
				{
					GraphView.logger.Log(0, "Y-Axis too small for labels!!!");
					return;
				}
				if (num2 == 1)
				{
					num2 = 2;
				}
				this.maxThroughput = num;
				this.YAxisLabelPanel.Children.Clear();
				long num3 = this.maxThroughput / (long)(num2 - 1);
				double num4 = this.YAxisLabelPanel.ActualHeight / (double)(num2 - 1);
				for (long num5 = 0L; num5 < (long)num2; num5 += 1L)
				{
					TextBlock textBlock = new TextBlock
					{
						Text = this.formatThroughput(num3 * num5)
					};
					textBlock.SetValue(Canvas.BottomProperty, num4 * (double)num5);
					textBlock.SetValue(Canvas.LeftProperty, 0.0);
					this.YAxisLabelPanel.Children.Add(textBlock);
				}
				this.RemoveAllMeasurements();
			}
			this.oldActualHight = this.YAxisLabelPanel.ActualHeight;
		}

		private void OnTearOutClick(object sender, MouseButtonEventArgs e)
		{
			this.ViewModel.TearOutCommand.Execute(null);
		}

		private void OnGraphViewSizeChanged(object sender, SizeChangedEventArgs e)
		{
			this.InitializeGraph();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/graph/graphview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((Canvas)target).SizeChanged += new SizeChangedEventHandler(this.OnGraphViewSizeChanged);
				return;
			case 2:
				this.GridRectangle = (Rectangle)target;
				return;
			case 3:
				this.UpArrowPath = (Path)target;
				return;
			case 4:
				this.DownArrowPath = (Path)target;
				return;
			case 5:
				this.CanvasGraph = (Canvas)target;
				this.CanvasGraph.SizeChanged += new SizeChangedEventHandler(this.OnGraphViewSizeChanged);
				return;
			case 6:
				this.TearOutIcon = (Image)target;
				this.TearOutIcon.PreviewMouseLeftButtonDown += new MouseButtonEventHandler(this.OnTearOutClick);
				return;
			case 7:
				this.YAxisLabelPanel = (Canvas)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}

using Catel.IoC;
using Catel.Messaging;
using Catel.MVVM;
using Catel.Windows;
using GoldenFrogUX;
using Log;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using VyprVPN.Messages;
using VyprVPN.Properties;
using VyprVPN.Views.PreferencesWindow.Messages;

namespace VyprVPN.Views
{
	public class PreferencesWindowView : DataWindow, IComponentConnector
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly PreferencesWindowView.<>c <>9 = new PreferencesWindowView.<>c();

			public static Func<bool> <>9__3_0;

			public static Func<bool> <>9__3_1;

			internal bool ctor>b__3_0()
			{
				return true;
			}

			internal bool ctor>b__3_1()
			{
				return true;
			}
		}

		private static readonly FileLogger logger;

		private DataWindowButton applyButton;

		private TabItem tabConnection;

		private TabItem tabProtocol;

		private TabItem tabDNS;

		private TabItem tabGeneral;

		private TabItem tabAdvanced;

		private TabItem tabAccount;

		private bool _contentLoaded;

		static PreferencesWindowView()
		{
			PreferencesWindowView.logger = FileLogger.get_Instance();
		}

		public PreferencesWindowView() : base(3, null, 0, true, 1)
		{
			string arg_3B_0 = Resources.OK;
			Action arg_3B_1 = new Action(this.OnOkCustomExecute);
			Func<bool> arg_3B_2;
			if ((arg_3B_2 = PreferencesWindowView.<>c.<>9__3_0) == null)
			{
				arg_3B_2 = (PreferencesWindowView.<>c.<>9__3_0 = new Func<bool>(PreferencesWindowView.<>c.<>9.<.ctor>b__3_0));
			}
			DataWindowButton dataWindowButton = new DataWindowButton(arg_3B_0, arg_3B_1, arg_3B_2);
			string arg_71_0 = Resources.Cancel;
			Action arg_71_1 = new Action(base.ExecuteCancel);
			Func<bool> arg_71_2;
			if ((arg_71_2 = PreferencesWindowView.<>c.<>9__3_1) == null)
			{
				arg_71_2 = (PreferencesWindowView.<>c.<>9__3_1 = new Func<bool>(PreferencesWindowView.<>c.<>9.<.ctor>b__3_1));
			}
			DataWindowButton dataWindowButton2 = new DataWindowButton(arg_71_0, arg_71_1, arg_71_2);
			this.applyButton = new DataWindowButton(Resources.Apply, new Action(base.ExecuteApply), new Func<bool>(this.canExecuteApply));
			dataWindowButton.set_IsDefault(true);
			dataWindowButton2.set_IsCancel(true);
			base.AddCustomButton(dataWindowButton);
			base.AddCustomButton(dataWindowButton2);
			base.AddCustomButton(this.applyButton);
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			MessageBase<CloseSettingsWindowMessage, bool>.Register(this, new Action<CloseSettingsWindowMessage>(this.ProcessCloseSettingsWindowMessage), null);
			MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.Register(this, new Action<AuthenticationStateChangedMessage>(this.ProcessAuthenticationStateChangedMessage), null);
			PreferencesWindowView.logger.Log(0, "PreferencesWindowView: CloseSettingsWindowMessage registered");
			CommandManager.RequerySuggested += new EventHandler(this.RequerySuggested);
		}

		private void RequerySuggested(object sender, EventArgs e)
		{
			ICatelCommand catelCommand = this.applyButton.get_Command() as ICatelCommand;
			if (catelCommand != null)
			{
				catelCommand.RaiseCanExecuteChanged();
			}
		}

		private bool canExecuteApply()
		{
			return this.ValidateData();
		}

		protected override bool ValidateData()
		{
			return ServiceLocatorExtensions.ResolveType<IPreferencesModel>(ServiceLocator.get_Default(), null).IsDirty;
		}

		protected override void OnLoaded(EventArgs e)
		{
			switch (ServiceLocatorExtensions.ResolveType<IUIState>(ServiceLocator.get_Default(), null).ActiveScreen)
			{
			case Screen.Account:
			case Screen.AccountDetails:
				this.tabAccount.IsSelected = true;
				break;
			case Screen.GeneralPreferences:
				this.tabGeneral.IsSelected = true;
				break;
			case Screen.ConnectionPreferences:
				this.tabConnection.IsSelected = true;
				break;
			}
			try
			{
				ISettings settings = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				WindowHelpers.RestoreWindowLocation(this, settings.PreferencesWindowStartupLocation);
			}
			catch (Exception ex)
			{
				PreferencesWindowView.logger.Log(1, "Failed to restore preferences window location on load: {0}", new object[]
				{
					ex
				});
			}
		}

		private void OnClosing(object sender, CancelEventArgs e)
		{
			try
			{
				IVyprVPNController vyprVPNController = ServiceLocatorExtensions.ResolveType<IVyprVPNController>(ServiceLocator.get_Default(), null);
				if (vyprVPNController.ConnectSound && string.IsNullOrEmpty(vyprVPNController.ConnectSoundFilePath))
				{
					MessageBox.Show(Resources.ConnectFileMissing);
					e.Cancel = true;
					return;
				}
				if (vyprVPNController.DisconnectSound && string.IsNullOrEmpty(vyprVPNController.DisconnectSoundFilePath))
				{
					MessageBox.Show(Resources.DisconnectFileMissing);
					e.Cancel = true;
				}
			}
			catch (Exception ex)
			{
				PreferencesWindowView.logger.Log(4, "Exception: {0}", new object[]
				{
					ex
				});
				MessageBox.Show(ex.Message);
			}
			try
			{
				ISettings expr_96 = ServiceLocatorExtensions.ResolveType<ISettings>(ServiceLocator.get_Default(), null);
				expr_96.PreferencesWindowStartupLocation = new Point(base.Left, base.Top);
				expr_96.Save();
			}
			catch (Exception ex2)
			{
				PreferencesWindowView.logger.Log(3, "Unexpected error saving Settings UI settings: {0}", new object[]
				{
					ex2
				});
			}
		}

		protected override void OnClosed(EventArgs e)
		{
			PreferencesWindowView.logger.Log(0, "PreferencesWindowView: CloseSettingsWindowMessage being unregistered because the window is closed.");
			MessageBase<CloseSettingsWindowMessage, bool>.Unregister(this, new Action<CloseSettingsWindowMessage>(this.ProcessCloseSettingsWindowMessage), null);
			MessageBase<AuthenticationStateChangedMessage, IVyprVPNController>.Unregister(this, new Action<AuthenticationStateChangedMessage>(this.ProcessAuthenticationStateChangedMessage), null);
			base.OnClosed(e);
		}

		private void ProcessCloseSettingsWindowMessage(CloseSettingsWindowMessage e)
		{
			if (e.get_Data())
			{
				PreferencesWindowView.logger.Log(0, "PreferencesWindowView: Closing Settings window because CloseSettingsWindowMessage was received");
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(base.Close));
				return;
			}
			StackTrace stackTrace = new StackTrace();
			PreferencesWindowView.logger.Log(1, "PreferencesWindowView: CloseSettingsWindowMessage sent with false data, ignoring. This should not have happened. Stack trace: \n{0}", new object[]
			{
				stackTrace.ToString()
			});
		}

		private void ProcessAuthenticationStateChangedMessage(AuthenticationStateChangedMessage obj)
		{
			if (obj.get_Data().AuthenticationState == null)
			{
				PreferencesWindowView.logger.Log(0, "PreferencesWindowView: Closing Settings window because AuthenticationStateChangedMessage was received with NoCredentials");
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).Dispatch(new Action(base.Close));
			}
		}

		private void OnOkCustomExecute()
		{
			if (this.ValidateData())
			{
				base.ExecuteOk();
				return;
			}
			base.ExecuteClose();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/preferences/preferenceswindowview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				((PreferencesWindowView)target).Closing += new CancelEventHandler(this.OnClosing);
				return;
			case 2:
				this.tabConnection = (TabItem)target;
				return;
			case 3:
				this.tabProtocol = (TabItem)target;
				return;
			case 4:
				this.tabDNS = (TabItem)target;
				return;
			case 5:
				this.tabGeneral = (TabItem)target;
				return;
			case 6:
				this.tabAdvanced = (TabItem)target;
				return;
			case 7:
				this.tabAccount = (TabItem)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
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
using System.Windows.Markup;
using VyprVPN.Messages;

namespace VyprVPN.Views
{
	public class ServiceRepairWizardView : Window, IDisposable, IComponentConnector
	{
		private bool disposed;

		internal ServiceRepairWizardView ServiceRepairWizardViewWindow;

		private bool _contentLoaded;

		public ServiceRepairWizardView()
		{
			this.InitializeComponent();
			if (!DesignerProperties.GetIsInDesignMode(this))
			{
				ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			}
			base.Loaded += new RoutedEventHandler(this.OnLoaded);
			base.Closing += new CancelEventHandler(this.OnClosing);
			base.Closed += new EventHandler(this.OnClosed);
			MessageBase<ServiceRepairWizardViewCloseMessage, object>.Register(this, new Action<ServiceRepairWizardViewCloseMessage>(this.DispatchClose), null);
			MessageBase<ServiceRepairWizardViewSetDialogResultMessage, bool?>.Register(this, new Action<ServiceRepairWizardViewSetDialogResultMessage>(this.SetDialogResult), null);
		}

		private void DispatchClose(ServiceRepairWizardViewCloseMessage msg)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).Dispatch(new Action(base.Close));
		}

		private void SetDialogResult(ServiceRepairWizardViewSetDialogResultMessage msg)
		{
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ObjectExtensions.GetServiceLocator(this), null).Dispatch(delegate
			{
				this.DialogResult = msg.get_Data();
			});
		}

		private void OnLoaded(object sender, RoutedEventArgs e)
		{
			MessageBase<ServiceRepairWizardViewLoadedMessage, object>.SendWith(null, null);
		}

		private void OnClosing(object sender, CancelEventArgs e)
		{
			MessageBase<ServiceRepairWizardViewClosingMessage, bool?>.SendWith(null, null);
		}

		private void OnClosed(object sender, EventArgs e)
		{
			MessageBase<ServiceRepairWizardViewClosedMessage, object>.SendWith(null, null);
			this.Dispose();
		}

		public void Dispose()
		{
			if (!this.disposed)
			{
				base.Loaded -= new RoutedEventHandler(this.OnLoaded);
				base.Closing -= new CancelEventHandler(this.OnClosing);
				base.Closed -= new EventHandler(this.OnClosed);
				MessageBase<ServiceRepairWizardViewCloseMessage, object>.Unregister(this, new Action<ServiceRepairWizardViewCloseMessage>(this.DispatchClose), null);
				MessageBase<ServiceRepairWizardViewSetDialogResultMessage, bool?>.Unregister(this, new Action<ServiceRepairWizardViewSetDialogResultMessage>(this.SetDialogResult), null);
				this.disposed = true;
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
			Uri resourceLocator = new Uri("/VyprVPN;component/views/servicerepairwizard/servicerepairwiazardview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		internal Delegate _CreateDelegate(Type delegateType, string handler)
		{
			return Delegate.CreateDelegate(delegateType, this, handler);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.ServiceRepairWizardViewWindow = (ServiceRepairWizardView)target;
				return;
			}
			this._contentLoaded = true;
		}
	}
}
