using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Property | AttributeTargets.Parameter)]
	public sealed class AspMvcActionSelectorAttribute : Attribute
	{
	}
}
