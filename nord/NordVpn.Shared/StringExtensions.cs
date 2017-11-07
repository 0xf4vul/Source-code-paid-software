using System;
using System.Collections.Generic;
using System.Linq;

namespace NordVpn.Shared
{
	internal static class StringExtensions
	{
		public static bool NotNullOrEmpty(this string value)
		{
			return !string.IsNullOrEmpty(value);
		}

		public static bool NullOrEmpty(this string value)
		{
			return string.IsNullOrEmpty(value);
		}

		public static bool EqualsIgnoringCase(this string value, string other)
		{
			return value.Equals(other, StringComparison.OrdinalIgnoreCase);
		}

		public static bool CultureEqualsIgnoringCase(this string value, string other)
		{
			return value.Equals(other, StringComparison.CurrentCultureIgnoreCase);
		}

		public static bool ContainsIgnoringCase(this string value, string other)
		{
			return value.IndexOf(other, StringComparison.OrdinalIgnoreCase) >= 0;
		}

		public static bool ContainsIgnoringCase(this IEnumerable<string> collection, string value)
		{
			return collection.Any((string e) => e.Equals(value, StringComparison.OrdinalIgnoreCase));
		}

		public static bool StartsWithIgnoringCase(this string value, string other)
		{
			return value.StartsWith(other, StringComparison.OrdinalIgnoreCase);
		}
	}
}
