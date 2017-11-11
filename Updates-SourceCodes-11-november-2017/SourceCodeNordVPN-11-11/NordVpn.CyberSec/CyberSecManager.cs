using NordVpn.Application.Analytics;
using NordVpn.Core.Abstract.Settings;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Settings;
using NordVpn.Vpn;
using System;
using System.Reflection;
using System.Runtime.CompilerServices;

namespace NordVpn.CyberSec
{
	public class CyberSecManager
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly CyberSecManager.<>c <>9 = new CyberSecManager.<>c();

			public static Action<UserSettings> <>9__8_0;

			public static Action<RunSettings> <>9__8_1;

			public static Action<UserSettings> <>9__9_0;

			internal void <Enable>b__8_0(UserSettings s)
			{
				s.set_CyberSec(true);
			}

			internal void <Enable>b__8_1(RunSettings s)
			{
				s.set_ShowCyberSecPopup(false);
			}

			internal void <Disable>b__9_0(UserSettings s)
			{
				s.set_CyberSec(false);
			}
		}

		private readonly IPersistedSettings _settings;

		private readonly VpnConnector _vpnConnector;

		[method: CompilerGenerated]
		[CompilerGenerated]
		public event EventHandler<EventArgs<bool>> VpnReconnectionNeeded;

		public bool IsEnabled
		{
			get
			{
				return this._settings.Of<UserSettings>().get_CyberSec();
			}
		}

		public CyberSecManager(IPersistedSettings settings, VpnConnector vpnConnector)
		{
			this._settings = settings;
			this._vpnConnector = vpnConnector;
			this._vpnConnector.VpnStateChanged += new EventHandler<VpnStateChangedEventArgs>(this.OnVpnStateChanged);
		}

		[Analytics, Event("CyberSec", "Enable")]
		public void Enable()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(CyberSecManager.Enable()).MethodHandle, typeof(CyberSecManager).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			object[] args = new object[0];
			analyticsAttribute.Init(this, methodFromHandle, args);
			analyticsAttribute.OnEntry();
			try
			{
				IPersistedSettings arg_94_0 = this._settings;
				Action<UserSettings> arg_94_1;
				if ((arg_94_1 = CyberSecManager.<>c.<>9__8_0) == null)
				{
					arg_94_1 = (CyberSecManager.<>c.<>9__8_0 = new Action<UserSettings>(CyberSecManager.<>c.<>9.<Enable>b__8_0));
				}
				Action<RunSettings> arg_94_2;
				if ((arg_94_2 = CyberSecManager.<>c.<>9__8_1) == null)
				{
					arg_94_2 = (CyberSecManager.<>c.<>9__8_1 = new Action<RunSettings>(CyberSecManager.<>c.<>9.<Enable>b__8_1));
				}
				PersistedSettingsExtension.Save<UserSettings, RunSettings>(arg_94_0, arg_94_1, arg_94_2);
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		[Analytics, Event("CyberSec", "Disable")]
		public void Disable()
		{
			MethodBase methodFromHandle = MethodBase.GetMethodFromHandle(methodof(CyberSecManager.Disable()).MethodHandle, typeof(CyberSecManager).TypeHandle);
			AnalyticsAttribute analyticsAttribute = (AnalyticsAttribute)Activator.CreateInstance(typeof(AnalyticsAttribute));
			object[] args = new object[0];
			analyticsAttribute.Init(this, methodFromHandle, args);
			analyticsAttribute.OnEntry();
			try
			{
				IPersistedSettings arg_75_0 = this._settings;
				Action<UserSettings> arg_75_1;
				if ((arg_75_1 = CyberSecManager.<>c.<>9__9_0) == null)
				{
					arg_75_1 = (CyberSecManager.<>c.<>9__9_0 = new Action<UserSettings>(CyberSecManager.<>c.<>9.<Disable>b__9_0));
				}
				PersistedSettingsExtension.Save<UserSettings>(arg_75_0, arg_75_1);
				analyticsAttribute.OnExit();
			}
			catch (Exception exception)
			{
				analyticsAttribute.OnException(exception);
				throw;
			}
		}

		public bool TryEnable()
		{
			if (this._vpnConnector.State == null)
			{
				this.Enable();
				this.RaiseReconnectionNeededStatus(this._vpnConnector.State);
				return true;
			}
			return false;
		}

		public bool TryDisable()
		{
			if (this._vpnConnector.State == null)
			{
				this.Disable();
				this.RaiseReconnectionNeededStatus(this._vpnConnector.State);
				return true;
			}
			return false;
		}

		private void RaiseReconnectionNeededStatus(VpnState state)
		{
			if (state == null && this.IsEnabled)
			{
				EventHandler<EventArgs<bool>> expr_11 = this.VpnReconnectionNeeded;
				if (expr_11 == null)
				{
					return;
				}
				expr_11(this, new EventArgs<bool>(true));
				return;
			}
			else
			{
				EventHandler<EventArgs<bool>> expr_29 = this.VpnReconnectionNeeded;
				if (expr_29 == null)
				{
					return;
				}
				expr_29(this, new EventArgs<bool>(false));
				return;
			}
		}

		private void OnVpnStateChanged(object sender, VpnStateChangedEventArgs e)
		{
			this.RaiseReconnectionNeededStatus(e.VpnState);
		}
	}
}
