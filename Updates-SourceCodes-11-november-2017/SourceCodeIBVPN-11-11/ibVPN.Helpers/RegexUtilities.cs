using System;
using System.Globalization;
using System.Text.RegularExpressions;

namespace ibVPN.Helpers
{
	public class RegexUtilities
	{
		private bool invalid;

		public bool IsValidEmail(string strIn)
		{
			this.invalid = false;
			if (string.IsNullOrEmpty(strIn))
			{
				return false;
			}
			bool result;
			try
			{
				strIn = Regex.Replace(strIn, "(@)(.+)$", new MatchEvaluator(this.DomainMapper), RegexOptions.None, TimeSpan.FromMilliseconds(200.0));
				strIn = strIn.Replace("+", "");
			}
			catch (RegexMatchTimeoutException)
			{
				result = false;
				return result;
			}
			if (this.invalid)
			{
				return false;
			}
			string pattern = "^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?\r\n\t\t\t\t[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?\r\n\t\t\t\t[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z0-9]+[\\w-]+\\.)+[a-zA-Z]{1}[a-zA-Z0-9-]{1,23})$";
			try
			{
				result = Regex.IsMatch(strIn, pattern, RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250.0));
			}
			catch (RegexMatchTimeoutException)
			{
				result = false;
			}
			return result;
		}

		private string DomainMapper(Match match)
		{
			IdnMapping idnMapping = new IdnMapping();
			string text = match.Groups[2].Value;
			try
			{
				text = idnMapping.GetAscii(text);
			}
			catch (ArgumentException)
			{
				this.invalid = true;
			}
			return match.Groups[1].Value + text;
		}
	}
}
