using System;

namespace CyberGhost.Annotations
{
	[AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
	public sealed class AspChildControlTypeAttribute : Attribute
	{
		public string TagName
		{
			get;
			private set;
		}

		public Type ControlType
		{
			get;
			private set;
		}

		public AspChildControlTypeAttribute(string tagName, Type controlType)
		{
			this.TagName = tagName;
			this.ControlType = controlType;
		}
	}
}
