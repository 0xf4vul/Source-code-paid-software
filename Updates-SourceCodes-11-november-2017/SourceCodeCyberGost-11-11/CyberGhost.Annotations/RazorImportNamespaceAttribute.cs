using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class RazorImportNamespaceAttribute : Attribute
	{
		public string Name
		{
			get;
			private set;
		}

		public RazorImportNamespaceAttribute(string name)
		{
			this.Name = name;
		}
	}
}
