using NordVpn.Common;
using System;

namespace NordVpn.Application.Abstract
{
	public interface IApplication
	{
		event EventHandler<DataEventArgs<bool>> ForegoundStatusChanged;

		bool IsInForeground
		{
			get;
		}

		void Shutdown();
	}
}
