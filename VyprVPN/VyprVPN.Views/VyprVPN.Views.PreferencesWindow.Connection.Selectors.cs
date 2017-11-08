using Catel.IoC;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Markup;
using VyprVPN.ViewModels;

namespace VyprVPN.Views.PreferencesWindow.Connection.Selectors
{
	public class WirelessNetworkSelectorWindow : Window, IComponentConnector
	{
		internal WirelessNetworkSelectorWindow WirelessSelectorWindow;

		private bool _contentLoaded;

		public WirelessNetworkSelectorWindow(WirelessNetworkSelectorWindowViewModel viewModel)
		{
			base.DataContext = viewModel;
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/preferenceswindow/connection/selectors/wirelessnetworkselectorwindow.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.WirelessSelectorWindow = (WirelessNetworkSelectorWindow)target;
				return;
			}
			this._contentLoaded = true;
		}
	}
}
