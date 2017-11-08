using Catel.IoC;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Markup;
using VyprVPN.Properties;

namespace VyprVPN.Views.QuitDialog
{
	public class QuitDialog : Window, IComponentConnector
	{
		public static readonly DependencyProperty MessageProperty = DependencyProperty.Register("Message", typeof(string), typeof(QuitDialog));

		public static readonly DependencyProperty QuestionProperty = DependencyProperty.Register("Question", typeof(string), typeof(QuitDialog));

		public static readonly DependencyProperty CheckboxTextProperty = DependencyProperty.Register("CheckBoxText", typeof(string), typeof(QuitDialog));

		public static readonly DependencyProperty CheckBoxEnabledProperty = DependencyProperty.Register("CheckBoxEnabled", typeof(bool), typeof(QuitDialog));

		public static readonly DependencyProperty IsCheckBoxVisibileProperty = DependencyProperty.Register("IsCheckBoxVisibile", typeof(bool), typeof(QuitDialog));

		public static readonly DependencyProperty CheckBoxCheckedProperty = DependencyProperty.Register("CheckBoxCheckedProperty", typeof(bool), typeof(QuitDialog));

		public static readonly DependencyProperty AffirmativeTextProperty = DependencyProperty.Register("AffirmativeText", typeof(string), typeof(QuitDialog));

		public static readonly DependencyProperty NegativeTextProperty = DependencyProperty.Register("NegativeText", typeof(string), typeof(QuitDialog));

		public static readonly DependencyProperty YesCommandProperty = DependencyProperty.Register("YesCommand", typeof(RoutedCommand), typeof(QuitDialog), new PropertyMetadata(new RoutedCommand()));

		public static readonly DependencyProperty NoCommandProperty = DependencyProperty.Register("NoCommand", typeof(RoutedCommand), typeof(QuitDialog), new PropertyMetadata(new RoutedCommand()));

		internal QuitDialog FeedbackWindowDialog;

		internal StackPanel ButtonsPanel;

		internal CheckBox CheckBox;

		internal Button YesButton;

		internal Button NoButton;

		private bool _contentLoaded;

		public string Message
		{
			get
			{
				return (string)base.GetValue(QuitDialog.MessageProperty);
			}
			set
			{
				base.SetValue(QuitDialog.MessageProperty, value);
			}
		}

		public string Question
		{
			get
			{
				return (string)base.GetValue(QuitDialog.QuestionProperty);
			}
			set
			{
				base.SetValue(QuitDialog.QuestionProperty, value);
			}
		}

		public string CheckBoxText
		{
			get
			{
				return (string)base.GetValue(QuitDialog.CheckboxTextProperty);
			}
			set
			{
				base.SetValue(QuitDialog.CheckboxTextProperty, value);
			}
		}

		public bool CheckBoxEnabled
		{
			get
			{
				return (bool)base.GetValue(QuitDialog.CheckBoxEnabledProperty);
			}
			set
			{
				base.SetValue(QuitDialog.CheckBoxEnabledProperty, value);
			}
		}

		public bool IsCheckBoxVisibile
		{
			get
			{
				return (bool)base.GetValue(QuitDialog.IsCheckBoxVisibileProperty);
			}
			set
			{
				base.SetValue(QuitDialog.IsCheckBoxVisibileProperty, value);
			}
		}

		public bool CheckBoxChecked
		{
			get
			{
				return (bool)base.GetValue(QuitDialog.CheckBoxCheckedProperty);
			}
			set
			{
				base.SetValue(QuitDialog.CheckBoxCheckedProperty, value);
			}
		}

		public string AffirmativeText
		{
			get
			{
				return (string)base.GetValue(QuitDialog.AffirmativeTextProperty);
			}
			set
			{
				base.SetValue(QuitDialog.AffirmativeTextProperty, value);
			}
		}

		public string NegativeText
		{
			get
			{
				return (string)base.GetValue(QuitDialog.NegativeTextProperty);
			}
			set
			{
				base.SetValue(QuitDialog.NegativeTextProperty, value);
			}
		}

		public RoutedCommand YesCommand
		{
			get
			{
				return (RoutedCommand)base.GetValue(QuitDialog.YesCommandProperty);
			}
			set
			{
				base.SetValue(QuitDialog.YesCommandProperty, value);
			}
		}

		public RoutedCommand NoCommand
		{
			get
			{
				return (RoutedCommand)base.GetValue(QuitDialog.NoCommandProperty);
			}
			set
			{
				base.SetValue(QuitDialog.NoCommandProperty, value);
			}
		}

		public QuitDialog()
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
		}

		public QuitDialog(string title, string message, string question, string affirmativeText = "", string negativeText = "", string checkBoxText = "", bool isCheckBoxVisibile = false, bool checkBoxEnabled = true, bool checkBoxChecked = false)
		{
			this.InitializeComponent();
			ServiceLocatorExtensions.ResolveType<IUIHelper>(ServiceLocator.get_Default(), null).LocalizeUI(this, Thread.CurrentThread, false);
			if (string.IsNullOrEmpty(affirmativeText))
			{
				affirmativeText = VyprVPN.Properties.Resources.Yes;
			}
			if (string.IsNullOrEmpty(negativeText))
			{
				negativeText = VyprVPN.Properties.Resources.No;
			}
			base.DataContext = this;
			base.Title = title;
			this.Message = message;
			this.Question = question;
			this.AffirmativeText = affirmativeText;
			this.NegativeText = negativeText;
			this.CheckBoxText = checkBoxText;
			this.IsCheckBoxVisibile = isCheckBoxVisibile;
			this.CheckBoxEnabled = checkBoxEnabled;
			this.CheckBoxChecked = checkBoxChecked;
			base.CommandBindings.Add(new CommandBinding(this.YesCommand, new ExecutedRoutedEventHandler(this.YesExecuted)));
			base.CommandBindings.Add(new CommandBinding(this.NoCommand, new ExecutedRoutedEventHandler(this.NoExecuted)));
		}

		private void NoExecuted(object sender, ExecutedRoutedEventArgs e)
		{
			base.DialogResult = new bool?(false);
			base.Close();
		}

		private void YesExecuted(object sender, ExecutedRoutedEventArgs e)
		{
			base.DialogResult = new bool?(true);
			base.Close();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/VyprVPN;component/views/quitdialog/quitdialog.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.FeedbackWindowDialog = (QuitDialog)target;
				return;
			case 2:
				this.ButtonsPanel = (StackPanel)target;
				return;
			case 3:
				this.CheckBox = (CheckBox)target;
				return;
			case 4:
				this.YesButton = (Button)target;
				return;
			case 5:
				this.NoButton = (Button)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
