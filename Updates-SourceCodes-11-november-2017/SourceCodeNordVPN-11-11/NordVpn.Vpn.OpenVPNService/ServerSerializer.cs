using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using NordVpn.Core.Abstract.Vpn;
using NordVpn.Core.Models;
using NordVpn.Core.Models.Geographical;
using NordVpn.Core.Models.ServerCategories;
using System;
using System.Collections.Generic;

namespace NordVpn.Vpn.OpenVPNService
{
	public class ServerSerializer
	{
		private class FavouriteServerJsonConverter : JsonConverter
		{
			private class SerializedGeographicalServer : GeographicalServer
			{
				public SerializedGeographicalServer(JObject jObject) : base((string)jObject.get_Item("Name"), (string)jObject.get_Item("Ip"), (int)jObject.get_Item("Id"), (string)jObject.get_Item("Domain"), jObject.get_Item("SupportedProtocols").ToObject<IReadOnlyCollection<VpnProtocol>>(), jObject.get_Item("Country").ToObject<CountryIdentifier>(), jObject.get_Item("Category").ToObject<CategoryIdentifier>(), jObject.get_Item("Coordinates").ToObject<Coordinates>())
				{
					base.set_Load((int)jObject.get_Item("Load"));
					base.set_Keywords(jObject.get_Item("Keywords").ToObject<IReadOnlyList<string>>());
					base.set_IsOnionServer((bool)jObject.get_Item("IsOnionServer"));
				}
			}

			public override bool CanWrite
			{
				get
				{
					return false;
				}
			}

			public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer)
			{
				JObject jObject = JObject.Load(reader);
				if (jObject.get_Item("$type").ToObject<Type>() == typeof(FavouriteServer))
				{
					return new FavouriteServer(new ServerSerializer.FavouriteServerJsonConverter.SerializedGeographicalServer(jObject));
				}
				return serializer.Deserialize(jObject.CreateReader());
			}

			public override bool CanConvert(Type objectType)
			{
				return typeof(Server).IsAssignableFrom(objectType);
			}

			public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
			{
				throw new NotSupportedException();
			}
		}

		private static readonly JsonSerializerSettings Settings;

		static ServerSerializer()
		{
			JsonSerializerSettings expr_05 = new JsonSerializerSettings();
			expr_05.set_TypeNameHandling(3);
			ServerSerializer.Settings = expr_05;
			ServerSerializer.Settings.get_Converters().Add(new ServerSerializer.FavouriteServerJsonConverter());
		}

		public Server Deserialize(string serializedValue)
		{
			return JsonConvert.DeserializeObject<Server>(serializedValue, ServerSerializer.Settings);
		}

		public string Serialize(Server server)
		{
			return JsonConvert.SerializeObject(server, ServerSerializer.Settings);
		}
	}
}
