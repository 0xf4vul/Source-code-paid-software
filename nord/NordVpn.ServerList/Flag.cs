using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace NordVpn.ServerList
{
	public class Flag : UserControl, IComponentConnector
	{
		public static readonly DependencyProperty CountryCodeProperty = DependencyProperty.Register("CountryCode", typeof(string), typeof(Flag), new PropertyMetadata());

		internal Flag Root;

		private bool _contentLoaded;

		public string CountryCode
		{
			get
			{
				return (string)base.GetValue(Flag.CountryCodeProperty);
			}
			set
			{
				base.SetValue(Flag.CountryCodeProperty, value);
			}
		}

		public Flag()
		{
			this.InitializeComponent();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/NordVPN;component/serverlist/flag.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.Root = (Flag)target;
				return;
			}
			this._contentLoaded = true;
		}
	}
}
