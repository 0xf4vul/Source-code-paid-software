using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;

namespace NordVpn.ServerList.ViewModels
{
	public class ServerNameAlphaNumericComparer : IComparer<string>
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ServerNameAlphaNumericComparer.<>c <>9 = new ServerNameAlphaNumericComparer.<>c();

			public static MatchEvaluator <>9__2_0;

			internal string <PadNumbers>b__2_0(Match match)
			{
				return match.Value.PadLeft(10, '0');
			}
		}

		private readonly Regex _allNumbersRegex = new Regex("[0-9]+", RegexOptions.Compiled | RegexOptions.CultureInvariant);

		public int Compare(string x, string y)
		{
			return string.Compare(this.PadNumbers(x), this.PadNumbers(y), StringComparison.OrdinalIgnoreCase);
		}

		private string PadNumbers(string input)
		{
			Regex arg_26_0 = this._allNumbersRegex;
			MatchEvaluator arg_26_2;
			if ((arg_26_2 = ServerNameAlphaNumericComparer.<>c.<>9__2_0) == null)
			{
				arg_26_2 = (ServerNameAlphaNumericComparer.<>c.<>9__2_0 = new MatchEvaluator(ServerNameAlphaNumericComparer.<>c.<>9.<PadNumbers>b__2_0));
			}
			return arg_26_0.Replace(input, arg_26_2);
		}
	}
}
