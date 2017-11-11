using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Method), Obsolete("Use [ContractAnnotation('=> halt')] instead")]
	public sealed class TerminatesProgramAttribute : Attribute
	{
	}
}
