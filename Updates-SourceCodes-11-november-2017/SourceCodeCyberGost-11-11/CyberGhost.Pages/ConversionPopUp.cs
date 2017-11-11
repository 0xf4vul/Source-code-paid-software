using CyberGhost.Annotations;
using CyberGhost.Components.Mixpanel;
using CyberGhost.Helpers;
using CyberGhost.RESTCommunicator.Classes;
using MobileConcepts.Helpers;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace CyberGhost.Pages
{
	public class ConversionPopUp : UserControl, IComponentConnector, INotifyPropertyChanged
	{
		private string _conversionTitle = "Title here";

		private string _conversionInfo = "Info here";

		internal Grid ContentGrid;

		internal TextBlock TitleText;

		internal Image ImageText;

		internal TextBlock InfoText;

		internal Grid ButtonGrid;

		internal Button UpgradeButton;

		internal Button CancelButton;

		private bool _contentLoaded;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event PropertyChangedEventHandler PropertyChanged;

		public string ConversionTitle
		{
			get
			{
				return this._conversionTitle;
			}
			set
			{
				if (this._conversionTitle == value)
				{
					return;
				}
				this._conversionTitle = value;
				this.OnPropertyChanged("ConversionTitle");
			}
		}

		public string ConversionInfo
		{
			get
			{
				return this._conversionInfo;
			}
			set
			{
				if (this._conversionInfo == value)
				{
					return;
				}
				this._conversionInfo = value;
				this.OnPropertyChanged("ConversionInfo");
			}
		}

		public Frame ContentFrame
		{
			get;
			set;
		}

		private CgApiFeature.Feature CurrentFeature
		{
			[CompilerGenerated]
			get
			{
				return this.<CurrentFeature>k__BackingField;
			}
		}

		public ConversionPopUp(CgApiFeature.Feature feature)
		{
			this.InitializeComponent();
			base.DataContext = this;
			this.<CurrentFeature>k__BackingField = feature;
			this.InitializePopUp();
		}

		private void InitializePopUp()
		{
			ObjectHolder.MainForm.ContentBlockerVisibility = Visibility.Visible;
			string text = string.Format("PopupFeatureNotInPlan_{0}", this.CurrentFeature);
			if (ObjectHolder.CurrentProfile != null)
			{
				text += string.Format("_{0}", ObjectHolder.CurrentProfile.GetBaseName());
			}
			ConversionWindowEvent conversionWindowEvent = new ConversionWindowEvent
			{
				ConversionPoint = text
			};
			conversionWindowEvent.FireEvent();
			HelperFunctions.DebugLine(string.Format("==> ConversionWindowEvent = {0}", conversionWindowEvent.ConversionPoint));
			this.InitIcons();
			Theming.ThemeChanged += new Theming.NotifyEvent(this.InitIcons);
		}

		private void InitIcons()
		{
			this.ImageText.Source = new BitmapImage(new Uri(Theming.GetThemedImage("ConversionImages\\surfen-4.png")));
		}

		private void CancelButton_OnClick(object sender, RoutedEventArgs e)
		{
			ObjectHolder.MainContext.Post(delegate(object o)
			{
				this.CloseConversionPopUp();
			}, null);
		}

		private void CloseConversionPopUp()
		{
			ConversionPopUpHelpers.CloseConverionPopUp();
		}

		[AsyncStateMachine(typeof(ConversionPopUp.<UpgradeButton_Click>d__15))]
		private void UpgradeButton_Click(object sender, RoutedEventArgs e)
		{
			ConversionPopUp.<UpgradeButton_Click>d__15 <UpgradeButton_Click>d__;
			<UpgradeButton_Click>d__.<>4__this = this;
			<UpgradeButton_Click>d__.<>t__builder = AsyncVoidMethodBuilder.Create();
			<UpgradeButton_Click>d__.<>1__state = -1;
			AsyncVoidMethodBuilder <>t__builder = <UpgradeButton_Click>d__.<>t__builder;
			<>t__builder.Start<ConversionPopUp.<UpgradeButton_Click>d__15>(ref <UpgradeButton_Click>d__);
		}

		[NotifyPropertyChangedInvocator]
		protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			try
			{
				PropertyChangedEventHandler expr_06 = this.PropertyChanged;
				if (expr_06 != null)
				{
					expr_06(this, new PropertyChangedEventArgs(propertyName));
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("{0}::{1} {2}", base.GetType().Name, MethodBase.GetCurrentMethod().Name, ex.Message));
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
			Uri resourceLocator = new Uri("/CyberGhost;component/pages/conversionpopup.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.ContentGrid = (Grid)target;
				return;
			case 2:
				this.TitleText = (TextBlock)target;
				return;
			case 3:
				this.ImageText = (Image)target;
				return;
			case 4:
				this.InfoText = (TextBlock)target;
				return;
			case 5:
				this.ButtonGrid = (Grid)target;
				return;
			case 6:
				this.UpgradeButton = (Button)target;
				this.UpgradeButton.Click += new RoutedEventHandler(this.UpgradeButton_Click);
				return;
			case 7:
				this.CancelButton = (Button)target;
				this.CancelButton.Click += new RoutedEventHandler(this.CancelButton_OnClick);
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
