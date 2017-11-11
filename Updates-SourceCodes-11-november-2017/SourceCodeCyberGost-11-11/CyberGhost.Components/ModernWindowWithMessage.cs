using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.Windows;
using System.Windows.Input;

namespace CyberGhost.Components
{
	public class ModernWindowWithMessage : ModernWindow
	{
		public static readonly DependencyProperty ContentMessageProperty = DependencyProperty.Register("ContentMessage", typeof(Uri), typeof(ModernWindow));

		public static readonly DependencyProperty ContentMessageVisibilityProperty = DependencyProperty.Register("ContentMessageVisibility", typeof(Visibility), typeof(ModernWindow));

		public static readonly DependencyProperty ContentBlockerVisibilityProperty = DependencyProperty.Register("ContentBlockerVisibility", typeof(Visibility), typeof(ModernWindow));

		public static readonly DependencyProperty HeaderLinkContentProperty = DependencyProperty.Register("HeaderLinkContent", typeof(string), typeof(ModernWindow));

		public static readonly DependencyProperty HeaderLinkCommandProperty = DependencyProperty.Register("HeaderLinkCommand", typeof(ICommand), typeof(ModernWindow));

		public static readonly DependencyProperty LoginAsVisibilityProperty = DependencyProperty.Register("LoginAsVisibility", typeof(Visibility), typeof(ModernWindow));

		public static readonly DependencyProperty LogoLinkCommandProperty = DependencyProperty.Register("LogoLinkCommand", typeof(ICommand), typeof(ModernWindow));

		public static readonly DependencyProperty PopupFrameProperty = DependencyProperty.Register("PopupFrame", typeof(object), typeof(ModernWindow));

		public static readonly DependencyProperty PopupFrameVisibilityProperty = DependencyProperty.Register("PopupFrameVisibility", typeof(Visibility), typeof(ModernWindow));

		public ModernFrame ContentFrame
		{
			get
			{
				return base.Template.FindName("ContentFrame", this) as ModernFrame;
			}
		}

		public Uri ContentMessage
		{
			get
			{
				return (Uri)base.GetValue(ModernWindowWithMessage.ContentMessageProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.ContentMessageProperty, value);
			}
		}

		public Visibility ContentMessageVisibility
		{
			get
			{
				return (Visibility)base.GetValue(ModernWindowWithMessage.ContentMessageVisibilityProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.ContentMessageVisibilityProperty, value);
			}
		}

		public Visibility ContentBlockerVisibility
		{
			get
			{
				return (Visibility)base.GetValue(ModernWindowWithMessage.ContentBlockerVisibilityProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.ContentBlockerVisibilityProperty, value);
			}
		}

		public string HeaderLinkContent
		{
			get
			{
				return (string)base.GetValue(ModernWindowWithMessage.HeaderLinkContentProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.HeaderLinkContentProperty, value);
			}
		}

		public ICommand HeaderLinkCommand
		{
			get
			{
				return (ICommand)base.GetValue(ModernWindowWithMessage.HeaderLinkCommandProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.HeaderLinkCommandProperty, value);
			}
		}

		public Visibility LoginAsVisibility
		{
			get
			{
				return (Visibility)base.GetValue(ModernWindowWithMessage.LoginAsVisibilityProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.LoginAsVisibilityProperty, value);
			}
		}

		public ICommand LogoLinkCommand
		{
			get
			{
				return (ICommand)base.GetValue(ModernWindowWithMessage.LogoLinkCommandProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.LogoLinkCommandProperty, value);
			}
		}

		public object PopupFrameContent
		{
			get
			{
				return base.GetValue(ModernWindowWithMessage.PopupFrameProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.PopupFrameProperty, value);
			}
		}

		public Visibility PopupFrameVisibility
		{
			get
			{
				return (Visibility)base.GetValue(ModernWindowWithMessage.PopupFrameVisibilityProperty);
			}
			set
			{
				base.SetValue(ModernWindowWithMessage.PopupFrameVisibilityProperty, value);
			}
		}

		public ModernWindowWithMessage()
		{
			this.ContentMessageVisibility = Visibility.Collapsed;
			this.ContentBlockerVisibility = Visibility.Collapsed;
			this.PopupFrameVisibility = Visibility.Collapsed;
		}
	}
}
