using System;

namespace NordVpn.Map.Wizzard
{
	public class WizardCheckboxModel
	{
		public WizardCategory Category;

		private Action _checkBoxChangeDelegate;

		private bool _isChecked;

		public string Label
		{
			get;
			set;
		}

		public bool IsChecked
		{
			get
			{
				return this._isChecked;
			}
			set
			{
				this._isChecked = value;
				Action expr_0D = this._checkBoxChangeDelegate;
				if (expr_0D == null)
				{
					return;
				}
				expr_0D();
			}
		}

		public WizardCheckboxModel(WizardCategory category, Action checkBoxChangeDelegate, string label = "?", bool isChecked = false)
		{
			this.Category = category;
			this.Label = label;
			this.IsChecked = isChecked;
			this._checkBoxChangeDelegate = checkBoxChangeDelegate;
		}
	}
}
