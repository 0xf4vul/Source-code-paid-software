using NordVpn.Application.Abstract;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

namespace NordVpn.Application
{
	public class FileDialogService : IFileDialogService
	{
		[IteratorStateMachine(typeof(FileDialogService.<GetFiles>d__0))]
		public IEnumerable<string> GetFiles(string defaultExtension, string filter)
		{
			FileDialogService.<GetFiles>d__0 expr_07 = new FileDialogService.<GetFiles>d__0(-2);
			expr_07.<>3__defaultExtension = defaultExtension;
			expr_07.<>3__filter = filter;
			return expr_07;
		}
	}
}
