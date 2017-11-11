using FirstFloor.ModernUI.Windows.Controls;
using System;
using System.Windows.Controls;

namespace CyberGhost.Themes
{
	public class ModernWindowNoNavigation : ModernDialog
	{
		public ModernWindowNoNavigation()
		{
			base.set_Buttons(new Button[]
			{
				base.get_OkButton(),
				base.get_CancelButton()
			});
		}
	}
}
