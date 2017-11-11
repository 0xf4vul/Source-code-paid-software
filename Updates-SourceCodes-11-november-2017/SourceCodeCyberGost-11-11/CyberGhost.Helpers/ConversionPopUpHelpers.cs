using CyberGhost.Pages;
using CyberGhost.RESTCommunicator.Classes;
using CyberGhost.Translations;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace CyberGhost.Helpers
{
	public class ConversionPopUpHelpers
	{
		public static void CloseConverionPopUp()
		{
			((Frame)ObjectHolder.MainForm.Template.FindName("ConversionFrame", ObjectHolder.MainForm)).Visibility = Visibility.Hidden;
			ObjectHolder.MainForm.ContentBlockerVisibility = Visibility.Hidden;
			CommandManager.InvalidateRequerySuggested();
		}

		public static void ShowConversionPopUp(CgApiFeature.Feature aFeature)
		{
			string conversionInfo;
			string conversionTitle;
			switch (aFeature)
			{
			case 1:
				conversionInfo = Conversion.ConversionAdblockMessage;
				conversionTitle = Profiles.ads_head;
				goto IL_13F;
			case 2:
				conversionInfo = Conversion.ConversionMalwareMessage;
				conversionTitle = Profiles.malware_head;
				goto IL_13F;
			case 3:
				conversionInfo = Conversion.ConversionZipMessage;
				conversionTitle = Profiles.compression_head;
				goto IL_13F;
			case 4:
				conversionInfo = Conversion.ConversionTrackingMessage;
				conversionTitle = Profiles.tracking_head;
				goto IL_13F;
			case 8:
				conversionInfo = Conversion.ConversionHttpsEverywhereMessage;
				conversionTitle = Profiles.https_everywhere;
				goto IL_13F;
			case 9:
				conversionInfo = Conversion.ConversionExtraSpeedMessage;
				conversionTitle = Profiles.speed_head;
				goto IL_13F;
			case 11:
				conversionInfo = Conversion.ConversionConnectNetworkMessage;
				conversionTitle = Conversion.ConversionConnectWifiTitle;
				goto IL_13F;
			case 12:
				conversionInfo = Conversion.ConversionConnectUnblockMessage;
				conversionTitle = Conversion.ConversionConnectUnblockTitle;
				goto IL_13F;
			case 13:
				conversionInfo = Conversion.ConversionConnectSurfMessage;
				conversionTitle = Conversion.ConversionConnectSurfTitle;
				goto IL_13F;
			case 14:
				conversionInfo = Conversion.ConversionConnectUnblockMessage;
				conversionTitle = Conversion.ConversionConnectUnblockTitle;
				goto IL_13F;
			case 16:
				conversionInfo = Conversion.ConversionConnectCustomMessage;
				conversionTitle = Conversion.ConversionConnectCustomTitle;
				goto IL_13F;
			case 17:
				conversionInfo = Conversion.ConversionConnectNetworkMessage;
				conversionTitle = Conversion.ConversionConnectNetworkTitle;
				goto IL_13F;
			case 18:
				conversionInfo = Conversion.ConversionConnectDownloadMessage;
				conversionTitle = Conversion.ConversionConnectDownloadTitle;
				goto IL_13F;
			case 19:
				conversionInfo = Conversion.ConversionCountrySelectionMessage;
				conversionTitle = Conversion.ConversionCountrySelectionTitle;
				goto IL_13F;
			}
			throw new ArgumentOutOfRangeException("aFeature", aFeature, null);
			IL_13F:
			Frame frame = (Frame)ObjectHolder.MainForm.Template.FindName("ConversionFrame", ObjectHolder.MainForm);
			frame.Visibility = Visibility.Visible;
			ObjectHolder.MainForm.ContentBlockerVisibility = Visibility.Visible;
			ConversionPopUp conversionPopUp = new ConversionPopUp(aFeature)
			{
				ConversionTitle = conversionTitle,
				ConversionInfo = conversionInfo,
				ContentFrame = frame
			};
			conversionPopUp.ContentFrame.Navigate(conversionPopUp);
			ObjectHolder.MainForm.ShowMe();
		}
	}
}
