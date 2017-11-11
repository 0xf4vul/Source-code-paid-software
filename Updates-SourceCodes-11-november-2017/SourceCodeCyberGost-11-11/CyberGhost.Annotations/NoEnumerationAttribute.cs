using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Parameter)]
	public sealed class NoEnumerationAttribute : Attribute
	{
	}
}
