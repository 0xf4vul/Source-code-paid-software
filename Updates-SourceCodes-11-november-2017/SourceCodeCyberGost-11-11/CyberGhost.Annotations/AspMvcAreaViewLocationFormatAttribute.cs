using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class AspMvcAreaViewLocationFormatAttribute : Attribute
	{
		public string Format
		{
			get;
			private set;
		}

		public AspMvcAreaViewLocationFormatAttribute(string format)
		{
			this.Format = format;
		}
	}
}
