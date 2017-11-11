using System;
using System.Diagnostics;

namespace NordVpn.Settings
{
	public class DiagnosticsLauncher
	{
		private readonly string _diagnosticsToolPath;

		public DiagnosticsLauncher(string diagnosticsToolPath)
		{
			this._diagnosticsToolPath = diagnosticsToolPath;
		}

		public void Start()
		{
			Process.Start(this._diagnosticsToolPath);
		}
	}
}
