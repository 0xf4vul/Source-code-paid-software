using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcAreaPartialViewLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcAreaPartialViewLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}
