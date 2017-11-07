using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;

namespace NordVpn.ServerList.ViewModels.Sort
{
	public class ServerComparerByName : Comparer<ServerViewModel>
	{
		[CompilerGenerated]
		[Serializable]
		private sealed class <>c
		{
			public static readonly ServerComparerByName.<>c <>9 = new ServerComparerByName.<>c();

			public static MatchEvaluator <>9__2_0;

			internal string <PadNumbers>b__2_0(Match match)
			{
				return match.Value.PadLeft(10, '0');
			}
		}

		private static readonly Regex _allNumbersRegex = new Regex("[0-9]+", RegexOptions.Compiled | RegexOptions.CultureInvariant);

		public override int Compare(ServerViewModel x, ServerViewModel y)
		{
			return string.Compare(ServerComparerByName.PadNumbers(x.Server.get_Name()), ServerComparerByName.PadNumbers(y.Server.get_Name()), StringComparison.OrdinalIgnoreCase);
		}

		private static string PadNumbers(string input)
		{
			Regex arg_25_0 = ServerComparerByName._allNumbersRegex;
			MatchEvaluator arg_25_2;
			if ((arg_25_2 = ServerComparerByName.<>c.<>9__2_0) == null)
			{
				arg_25_2 = (ServerComparerByName.<>c.<>9__2_0 = new MatchEvaluator(ServerComparerByName.<>c.<>9.<PadNumbers>b__2_0));
			}
			return arg_25_0.Replace(input, arg_25_2);
		}
	}
}
