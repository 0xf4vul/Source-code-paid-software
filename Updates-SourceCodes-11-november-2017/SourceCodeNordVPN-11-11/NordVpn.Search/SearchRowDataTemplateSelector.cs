using NordVpn.Search.ViewModels;
using System;
using System.Windows;
using System.Windows.Controls;

namespace NordVpn.Search
{
	public class SearchRowDataTemplateSelector : DataTemplateSelector
	{
		public DataTemplate ServerRowTemplate
		{
			get;
			set;
		}

		public DataTemplate OverloadedServerRowTemplate
		{
			get;
			set;
		}

		public override DataTemplate SelectTemplate(object item, DependencyObject container)
		{
			ServerSearchResultViewModel serverSearchResultViewModel = item as ServerSearchResultViewModel;
			if (serverSearchResultViewModel == null)
			{
				return base.SelectTemplate(item, container);
			}
			if (!serverSearchResultViewModel.IsOverloaded)
			{
				return this.ServerRowTemplate;
			}
			return this.OverloadedServerRowTemplate;
		}
	}
}
