using System;
using System.Drawing;
using System.Text.RegularExpressions;

namespace ibVPN.Helpers
{
	public static class ColorFromHex
	{
		private static Regex _hexColorMatchRegex = new Regex("^#?(?<a>[a-z0-9][a-z0-9])?(?<r>[a-z0-9][a-z0-9])(?<g>[a-z0-9][a-z0-9])(?<b>[a-z0-9][a-z0-9])$", RegexOptions.IgnoreCase | RegexOptions.Compiled);

		public static Color GetColorFromHex(string hexColorString)
		{
			if (hexColorString == null)
			{
				throw new NullReferenceException("Hex string can't be null.");
			}
			Match match = ColorFromHex._hexColorMatchRegex.Match(hexColorString);
			if (!match.Success)
			{
				throw new InvalidCastException(string.Format("Can't convert string \"{0}\" to argb or rgb color. Needs to be 6 (rgb) or 8 (argb) hex characters long. It can optionally start with a #.", hexColorString));
			}
			byte alpha = 255;
			if (match.Groups["a"].Success)
			{
				alpha = Convert.ToByte(match.Groups["a"].Value, 16);
			}
			byte red = Convert.ToByte(match.Groups["r"].Value, 16);
			byte blue = Convert.ToByte(match.Groups["b"].Value, 16);
			byte green = Convert.ToByte(match.Groups["g"].Value, 16);
			return Color.FromArgb((int)alpha, (int)red, (int)green, (int)blue);
		}
	}
}
