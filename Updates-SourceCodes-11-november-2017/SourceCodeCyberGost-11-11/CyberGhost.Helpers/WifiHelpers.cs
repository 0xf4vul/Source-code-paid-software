using CyberGhost.Components.Popups;
using CyberGhost.Settings;
using CyberGhost.Settings.SettingsItems;
using MobileConcepts.Helpers;
using System;
using System.Collections.ObjectModel;

namespace CyberGhost.Helpers
{
	public static class WifiHelpers
	{
		public static bool CheckIfKnownSsidsContainsSsid(string ssid)
		{
			try
			{
				if (SettingsHolder.get_Settings().get_KnownSsids() == null)
				{
					SettingsHolder.get_Settings().set_KnownSsids(new ObservableCollection<SsidItem>());
				}
				ObservableCollection<SsidItem> knownSsids = SettingsHolder.get_Settings().get_KnownSsids();
				lock (knownSsids)
				{
					bool result;
					foreach (SsidItem current in SettingsHolder.get_Settings().get_KnownSsids())
					{
						if (current != null && current.get_Ssid().Equals(ssid))
						{
							result = true;
							return result;
						}
					}
					result = false;
					return result;
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("Exception in CheckIfKnownSsidsContainsSsid could not get entry EX: {0}", ex.Message));
			}
			return false;
		}

		public static void MutateKnownSsid(string ssid, WifiPopup.WifiConnectionResult action)
		{
			try
			{
				if (SettingsHolder.get_Settings().get_KnownSsids() == null)
				{
					SettingsHolder.get_Settings().set_KnownSsids(new ObservableCollection<SsidItem>());
				}
				bool flag = false;
				ObservableCollection<SsidItem> knownSsids = SettingsHolder.get_Settings().get_KnownSsids();
				lock (knownSsids)
				{
					foreach (SsidItem current in SettingsHolder.get_Settings().get_KnownSsids())
					{
						if (current != null && current.get_Ssid().Equals(ssid))
						{
							if (action == WifiPopup.WifiConnectionResult.Always)
							{
								current.set_Action(2);
							}
							else if (action == WifiPopup.WifiConnectionResult.Never)
							{
								current.set_Action(0);
							}
							else
							{
								if (action != WifiPopup.WifiConnectionResult.Ask)
								{
									if (action != WifiPopup.WifiConnectionResult.Once)
									{
										if (action == WifiPopup.WifiConnectionResult.Disconnect)
										{
											current.set_Action(3);
											goto IL_9B;
										}
										goto IL_9B;
									}
								}
								current.set_Action(1);
							}
							IL_9B:
							flag = true;
						}
					}
				}
				if (!flag)
				{
					WifiHelpers.AddNewWifi(ssid, action);
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("Exception in MutateKnownSsid could not get entry EX: {0}", ex.Message));
			}
		}

		public static void AddNewWifi(string ssid, WifiPopup.WifiConnectionResult action)
		{
			try
			{
				SsidItem expr_05 = new SsidItem();
				expr_05.set_Ssid(ssid);
				SsidItem ssidItem = expr_05;
				if (!string.IsNullOrEmpty(ssid))
				{
					if (action == WifiPopup.WifiConnectionResult.Always)
					{
						ssidItem.set_Action(2);
					}
					else if (action == WifiPopup.WifiConnectionResult.Never)
					{
						ssidItem.set_Action(0);
					}
					else if (action == WifiPopup.WifiConnectionResult.Ask)
					{
						ssidItem.set_Action(1);
					}
					else if (action == WifiPopup.WifiConnectionResult.Disconnect)
					{
						ssidItem.set_Action(3);
					}
					if (SettingsHolder.get_Settings().get_KnownSsids() == null)
					{
						SettingsHolder.get_Settings().set_KnownSsids(new ObservableCollection<SsidItem>());
					}
					ObservableCollection<SsidItem> knownSsids = SettingsHolder.get_Settings().get_KnownSsids();
					lock (knownSsids)
					{
						SettingsHolder.get_Settings().get_KnownSsids().Add(ssidItem);
					}
				}
			}
			catch (Exception ex)
			{
				HelperFunctions.DebugLine(string.Format("Exception in AddNewWifi could not get entry EX: {0}", ex.Message));
			}
		}

		public static SsidAction GetSettingForSsid(string wifiSsid)
		{
			SsidAction result = 1;
			try
			{
				if (SettingsHolder.get_Settings().get_KnownSsids() != null)
				{
					ObservableCollection<SsidItem> knownSsids = SettingsHolder.get_Settings().get_KnownSsids();
					lock (knownSsids)
					{
						foreach (SsidItem current in SettingsHolder.get_Settings().get_KnownSsids())
						{
							try
							{
								if (current != null)
								{
									if (current.get_Ssid().Equals(wifiSsid))
									{
										return current.get_Action();
									}
								}
							}
							catch (Exception ex)
							{
								HelperFunctions.DebugLine(string.Format("Exception in GetSettingForSsid could not get entry EX: {0}", ex.Message));
							}
						}
					}
					string hotspotProtection = SettingsHolder.get_Settings().get_ProfileWifi().get_HotspotProtection();
					if (!(hotspotProtection == "off"))
					{
						if (!(hotspotProtection == "auto"))
						{
							if (hotspotProtection == "ask")
							{
								result = 1;
							}
						}
						else
						{
							result = 2;
						}
					}
					else
					{
						result = 0;
					}
				}
				else
				{
					SettingsHolder.get_Settings().set_KnownSsids(new ObservableCollection<SsidItem>());
				}
			}
			catch (Exception ex2)
			{
				HelperFunctions.DebugLine(string.Format("Exception in GetSettingForSsid EX: {0}", ex2.Message));
			}
			return result;
		}

		public static void SetStateForWifiOrAddNewWifi(string ssid, string action)
		{
			WifiPopup.WifiConnectionResult action2 = WifiPopup.WifiConnectionResult.Ask;
			if (!(action == "ask"))
			{
				if (!(action == "disconnect"))
				{
					if (!(action == "always"))
					{
						if (!(action == "never"))
						{
							if (action == "once")
							{
								action2 = WifiPopup.WifiConnectionResult.Once;
							}
						}
						else
						{
							action2 = WifiPopup.WifiConnectionResult.Never;
						}
					}
					else
					{
						action2 = WifiPopup.WifiConnectionResult.Always;
					}
				}
				else
				{
					action2 = WifiPopup.WifiConnectionResult.Disconnect;
				}
			}
			else
			{
				action2 = WifiPopup.WifiConnectionResult.Ask;
			}
			WifiHelpers.SetStateForWifiOrAddNewWifi(ssid, action2);
		}

		public static void SetStateForWifiOrAddNewWifi(string ssid, WifiPopup.WifiConnectionResult action)
		{
			if (WifiHelpers.CheckIfKnownSsidsContainsSsid(ssid))
			{
				WifiHelpers.MutateKnownSsid(ssid, action);
				return;
			}
			WifiHelpers.AddNewWifi(ssid, action);
		}
	}
}
