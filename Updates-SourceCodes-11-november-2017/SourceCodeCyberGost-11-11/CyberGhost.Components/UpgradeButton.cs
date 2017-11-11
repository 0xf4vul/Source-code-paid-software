using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Settings.Settings;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

namespace CyberGhost.Components
{
	public class UpgradeButton : UserControl, IComponentConnector
	{
		internal Button UpgradeBtn;

		private bool _contentLoaded;

		public CgBase CurrentProfile
		{
			get;
			set;
		}

		public UpgradeButton()
		{
			this.InitializeComponent();
		}

		[AsyncStateMachine(typeof(UpgradeButton.<UpgradeButton_OnClick>d__5))]
		private void UpgradeButton_OnClick(object sender, RoutedEventArgs e)
		{
			UpgradeButton.<UpgradeButton_OnClick>d__5 <UpgradeButton_OnClick>d__;
			<UpgradeButton_OnClick>d__.<>4__this = this;
			<UpgradeButton_OnClick>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpgradeButton_OnClick>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpgradeButton_OnClick>d__.<>t__builder;
			<>t__builder.Start<UpgradeButton.<UpgradeButton_OnClick>d__5>(ref <UpgradeButton_OnClick>d__);
		}

		public void SetVisibility(Button connectButton, CgApiFeature.Feature feature)
		{
			GuiHelper.SetVisibilityUpgradeButton(this, connectButton, feature);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/CyberGhost;component/components/upgradebutton.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			if (connectionId == 1)
			{
				this.UpgradeBtn = (Button)target;
				this.UpgradeBtn.Click += new RoutedEventHandler(this.UpgradeButton_OnClick);
				return;
			}
			this._contentLoaded = true;
		}
	}
}
