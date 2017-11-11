using Caliburn.Micro;
using System;
using System.ComponentModel;
using System.Net;

namespace NordVpn.Settings.ViewModels
{
	public sealed class DnsHostViewModel : PropertyChangedBase
	{
		private int _key;

		private string _host;

		public bool IsValid
		{
			get
			{
				return this.ValidateHost(this._host);
			}
		}

		public int Key
		{
			get
			{
				return this._key;
			}
			set
			{
				this.Set<int>(ref this._key, value, "Key");
			}
		}

		public string Host
		{
			get
			{
				return this._host;
			}
			set
			{
				this.Set<string>(ref this._host, value, "Host");
			}
		}

		public DnsHostViewModel(int key, string host)
		{
			this.Key = key;
			this.Host = host;
			this.add_PropertyChanged(new PropertyChangedEventHandler(this.HostChanged));
		}

		public void RaiseIsValidPropertyChange()
		{
			this.NotifyOfPropertyChange("IsValid");
		}

		private void HostChanged(object sender, PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "Host")
			{
				this.NotifyOfPropertyChange("IsValid");
			}
		}

		private bool ValidateHost(string value)
		{
			IPAddress iPAddress;
			return !string.IsNullOrWhiteSpace(value) && !(value == "0.0.0.0") && IPAddress.TryParse(value, out iPAddress);
		}
	}
}
