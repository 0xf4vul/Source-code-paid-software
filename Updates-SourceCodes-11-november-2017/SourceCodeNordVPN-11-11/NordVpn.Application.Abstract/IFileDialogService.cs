using System;
using System.Collections.Generic;

namespace NordVpn.Application.Abstract
{
	public interface IFileDialogService
	{
		IEnumerable<string> GetFiles(string defaultExtension, string filter);
	}
}
