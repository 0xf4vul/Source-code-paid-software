using NordVpn.Shared;
using System;
using System.Collections.Generic;
using System.Linq;

namespace NordVpn.Map.Wizzard
{
	public class WizardFilter
	{
		private List<WizardCategory> _categories;

		public WizardFilter(IEnumerable<WizardCategory> categories)
		{
			this._categories = categories.ToList<WizardCategory>();
		}

		public bool GetWizardCategoriesFilter(IReadOnlyCollection<string> keywords)
		{
			bool result = true;
			foreach (WizardCategory expr_18 in this._categories)
			{
				if (expr_18 == WizardCategory.P2P && !keywords.ContainsIgnoringCase("P2P"))
				{
					result = false;
				}
				if (expr_18 == WizardCategory.Streaming && !keywords.ContainsIgnoringCase("Netflix"))
				{
					result = false;
				}
			}
			return result;
		}
	}
}
