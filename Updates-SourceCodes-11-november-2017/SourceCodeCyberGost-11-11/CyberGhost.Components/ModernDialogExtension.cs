using CyberGhost.Translations;
using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace CyberGhost.Components
{
	internal static class ModernDialogExtension
	{
		public static MessageBoxResult ShowDialogOk(string title, string content)
		{
			MessageBoxResult res = MessageBoxResult.None;
			try
			{
				if (ObjectHolder.MainContext != null)
				{
					ObjectHolder.MainContext.Send(delegate(object o)
					{
						res = ModernDialogExtension.CreateModernDialog(title, content, null, null, null, null).ShowDialogOk();
					}, null);
				}
				else
				{
					res = ModernDialogExtension.CreateModernDialog(title, content, null, null, null, null).ShowDialogOk();
				}
			}
			catch
			{
			}
			return res;
		}

		public static MessageBoxResult ShowDialogYesNo(string title, string content)
		{
			MessageBoxResult res = MessageBoxResult.None;
			try
			{
				if (ObjectHolder.MainContext != null)
				{
					ObjectHolder.MainContext.Send(delegate(object o)
					{
						res = ModernDialogExtension.CreateModernDialog(title, content, null, null, null, null).ShowDialogYesNo();
					}, null);
				}
				else
				{
					res = ModernDialogExtension.CreateModernDialog(title, content, null, null, null, null).ShowDialogYesNo();
				}
			}
			catch
			{
			}
			return res;
		}

		public static MessageBoxResult ShowDialogOkCancel(string title, string content)
		{
			MessageBoxResult res = MessageBoxResult.None;
			try
			{
				if (ObjectHolder.MainContext != null)
				{
					ObjectHolder.MainContext.Send(delegate(object o)
					{
						res = ModernDialogExtension.CreateModernDialog(title, content, null, null, null, null).ShowDialogOkCancel();
					}, null);
				}
				else
				{
					res = ModernDialogExtension.CreateModernDialog(title, content, null, null, null, null).ShowDialogOkCancel();
				}
			}
			catch
			{
			}
			return res;
		}

		public static MessageBoxResult ShowDialogOkCancel(string title, string content, string textOkButton, string textCancelButton)
		{
			MessageBoxResult res = MessageBoxResult.None;
			try
			{
				if (ObjectHolder.MainContext != null)
				{
					ObjectHolder.MainContext.Send(delegate(object o)
					{
						res = ModernDialogExtension.CreateModernDialog(title, content, null, null, textOkButton, textCancelButton).ShowDialogOkCancel();
					}, null);
				}
				else
				{
					res = ModernDialogExtension.CreateModernDialog(title, content, null, null, null, null).ShowDialogOkCancel();
				}
			}
			catch
			{
			}
			return res;
		}

		public static ModernDialog CreateModernDialog(string title, string content, string textYesButton = null, string textNoButton = null, string textOkButton = null, string textCancelButton = null)
		{
			ModernDialog expr_05 = new ModernDialog();
			expr_05.Title = title;
			BBCodeBlock expr_12 = new BBCodeBlock();
			expr_12.set_BBCode(content);
			expr_12.TextWrapping = TextWrapping.WrapWithOverflow;
			expr_05.Content = expr_12;
			ModernDialog modernDialog = expr_05;
			modernDialog.BorderBrush = (modernDialog.FindResource("YellowBaseBrush") as Brush);
			if (ObjectHolder.MainForm != null && ObjectHolder.MainForm.IsVisible)
			{
				modernDialog.Owner = ObjectHolder.MainForm;
			}
			modernDialog.get_YesButton().Content = (textYesButton ?? Components.ModernDialogExtension_CreateModernDialog_Yes);
			modernDialog.get_NoButton().Content = (textNoButton ?? Components.ModernDialogExtension_CreateModernDialog_No);
			modernDialog.get_OkButton().Content = (textOkButton ?? Components.ModernDialogExtension_CreateModernDialog_Ok);
			modernDialog.get_CancelButton().Content = (textCancelButton ?? Components.ModernDialogExtension_CreateModernDialog_Cancel);
			return modernDialog;
		}

		public static MessageBoxResult ShowDialogOk(this ModernDialog modernDialog)
		{
			modernDialog.set_Buttons(new Button[]
			{
				modernDialog.get_OkButton()
			});
			modernDialog.ShowDialog();
			return modernDialog.get_MessageBoxResult();
		}

		public static MessageBoxResult ShowDialogOkCancel(this ModernDialog modernDialog)
		{
			modernDialog.set_Buttons(new Button[]
			{
				modernDialog.get_OkButton(),
				modernDialog.get_CancelButton()
			});
			modernDialog.ShowDialog();
			return modernDialog.get_MessageBoxResult();
		}

		public static MessageBoxResult ShowDialogYesNo(this ModernDialog modernDialog)
		{
			modernDialog.set_Buttons(new Button[]
			{
				modernDialog.get_YesButton(),
				modernDialog.get_NoButton()
			});
			modernDialog.ShowDialog();
			return modernDialog.get_MessageBoxResult();
		}
	}
}
