using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;

namespace NordVpn.Settings.Storage.TypeConverters
{
	public class KillSwitchSettingsTypeConverter : TypeConverter
	{
		public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
		{
			return destinationType == typeof(KillSwitchSettings) || base.CanConvertTo(context, destinationType);
		}

		public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
		{
			return sourceType == typeof(string) || base.CanConvertFrom(context, sourceType);
		}

		public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
		{
			KillSwitchSettings killSwitchSettings = value as KillSwitchSettings;
			if (killSwitchSettings == null)
			{
				return "";
			}
			return JsonConvert.SerializeObject(killSwitchSettings.Items);
		}

		public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
		{
			KillSwitchSettings killSwitchSettings = new KillSwitchSettings();
			string text = value as string;
			if (string.IsNullOrEmpty(text))
			{
				return killSwitchSettings;
			}
			killSwitchSettings.Items = JsonConvert.DeserializeObject<List<KillSwitchApp>>(text);
			return killSwitchSettings;
		}
	}
}
