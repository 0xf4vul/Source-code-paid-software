using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter)]
	public sealed class HtmlElementAttributesAttribute : Attribute
	{
		public string Name
		{
			get;
			private set;
		}

		public HtmlElementAttributesAttribute()
		{
		}

		public HtmlElementAttributesAttribute(string name)
		{
			this.Name = name;
		}
	}
}
