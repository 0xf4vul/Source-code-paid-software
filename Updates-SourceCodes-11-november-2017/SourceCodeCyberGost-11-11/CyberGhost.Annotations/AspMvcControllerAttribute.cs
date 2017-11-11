using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Parameter)]
	public sealed class AspMvcControllerAttribute : Attribute
	{
		public string AnonymousProperty
		{
			get;
			private set;
		}

		public AspMvcControllerAttribute()
		{
		}

		public AspMvcControllerAttribute(string anonymousProperty)
		{
			this.AnonymousProperty = anonymousProperty;
		}
	}
}
