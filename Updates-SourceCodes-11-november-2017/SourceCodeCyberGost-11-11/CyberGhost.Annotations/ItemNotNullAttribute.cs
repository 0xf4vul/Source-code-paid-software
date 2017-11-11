using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter | AttributeTargets.Delegate)]
	public sealed class ItemNotNullAttribute : Attribute
	{
	}
}
