using System;
using System.Runtime.CompilerServices;

namespace NordVpn.Common
{
	public sealed class DataEventArgs<TData> : EventArgs
	{
		public TData Data
		{
			[CompilerGenerated]
			get
			{
				return this.<Data>k__BackingField;
			}
		}

		public DataEventArgs(TData data)
		{
			this.<Data>k__BackingField = data;
		}
	}
}
