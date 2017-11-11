using NordVpn.Core.Models;
using System;

namespace NordVpn.Application.Abstract
{
	public interface IApplication
	{
		event EventHandler<EventArgs<bool>> ForegoundStatusChanged;

		bool IsInForeground
		{
			get;
		}

		void Shutdown();
	}
}
