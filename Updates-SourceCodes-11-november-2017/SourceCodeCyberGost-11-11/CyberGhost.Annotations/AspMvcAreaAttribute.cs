using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class AspMvcAreaAttribute : Attribute
	{
		public string AnonymousProperty
		{
			get;
			private set;
		}

		public AspMvcAreaAttribute()
		{
		}

		public AspMvcAreaAttribute(string anonymousProperty)
		{
			this.AnonymousProperty = anonymousProperty;
		}
	}
}
