using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
	public sealed class AspMvcSupressViewErrorAttribute : Attribute
	{
	}
}
