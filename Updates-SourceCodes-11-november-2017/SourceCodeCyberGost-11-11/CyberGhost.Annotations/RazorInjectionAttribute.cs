using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
	public sealed class RazorInjectionAttribute : Attribute
	{
		public string Type
		{
			get;
			private set;
		}

		public string FieldName
		{
			get;
			private set;
		}

		public RazorInjectionAttribute(string type, string fieldName)
		{
			this.Type = type;
			this.FieldName = fieldName;
		}
	}
}
