using CyberGhost.Helpers;
using MobileConcepts.Components.JsonExecutor;
using System;

namespace CyberGhost.Pages.Conversion
{
	internal class InAppExecutor : JsonExecuter
	{
		public InAppPurchase InAppReference
		{
			get;
			set;
		}

		public void CancelPurchase()
		{
			Navigation.GoHome();
		}

		public void CancelPurchase(string reason)
		{
			Navigation.GoHome();
		}

		public async void PurchaseDone()
		{
			if (!(await ObjectHolder.MainForm.UpdateLoggedInUser(false, true)))
			{
				Navigation.GoHome();
			}
		}

		public async void PaymentSuccessful()
		{
			if (!(await ObjectHolder.MainForm.UpdateLoggedInUser(false, true)))
			{
				Navigation.GoHome();
			}
		}
	}
}
