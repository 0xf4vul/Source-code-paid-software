using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcPartialViewLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcPartialViewLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}
