using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.Search.Views
{
	public class SearchView : UserControl, IComponentConnector
	{
		internal TextBox SearchInput;

		internal Image SearchImageIcon;

		internal Grid ResultsPanel;

		internal ListView ListView;

		private bool _contentLoaded;

		public SearchView()
		{
			this.InitializeComponent();
		}

		private void Selector_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			this.ListView.ScrollIntoView(this.ListView.SelectedItem);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/NordVPN;component/search/views/searchview.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.SearchInput = (TextBox)target;
				return;
			case 2:
				this.SearchImageIcon = (Image)target;
				return;
			case 3:
				this.ResultsPanel = (Grid)target;
				return;
			case 4:
				this.ListView = (ListView)target;
				this.ListView.SelectionChanged += new SelectionChangedEventHandler(this.Selector_OnSelectionChanged);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
