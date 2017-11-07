using NordVpn.ServerList.ViewModels;
using System;
using System.Windows;
using System.Windows.Controls;

namespace NordVpn.ServerList
{
	public class ServerListRowDataTemplateSelector : DataTemplateSelector
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
			ServerViewModel serverViewModel = item as ServerViewModel;
			if (serverViewModel == null)
			{
				return base.SelectTemplate(item, container);
			}
			if (!serverViewModel.IsOverloaded)
			{
				return this.ServerRowTemplate;
			}
			return this.OverloadedServerRowTemplate;
		}
	}
}
