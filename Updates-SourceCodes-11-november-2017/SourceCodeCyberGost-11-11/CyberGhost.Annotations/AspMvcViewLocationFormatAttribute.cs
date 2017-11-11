using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcViewLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcViewLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}
